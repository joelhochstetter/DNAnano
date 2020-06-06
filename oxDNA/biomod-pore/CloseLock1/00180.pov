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
	<24.078712, 34.803379, 35.081184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122581, 35.161655, 34.908810>,  <24.148903, 35.376621, 34.805386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122581, 35.161655, 34.908810>,  <24.078712, 34.803379, 35.081184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.122581, 35.161655, 34.908810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989467, -0.057174, 0.132986,
		0.094476, -0.440981, -0.892530,
		0.109674, 0.895693, -0.430935,
		24.155483, 35.430363, 34.779530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631945, 35.232109, 34.741894>,  <24.078712, 34.803379, 35.081184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631945, 35.232109, 34.741894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950035, 35.240307, 34.499508>,  <25.140888, 35.245228, 34.354076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950035, 35.240307, 34.499508>,  <24.631945, 35.232109, 34.741894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.950035, 35.240307, 34.499508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403435, 0.728183, 0.554067,
		0.452613, -0.685077, 0.570799,
		0.795224, 0.020498, -0.605969,
		25.188602, 35.246456, 34.317719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102119, 35.568226, 35.041801>,  <24.631945, 35.232109, 34.741894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102119, 35.568226, 35.041801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290571, 35.552570, 34.689323>,  <25.403643, 35.543179, 34.477837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290571, 35.552570, 34.689323>,  <25.102119, 35.568226, 35.041801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290571, 35.552570, 34.689323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574823, 0.771370, 0.273069,
		0.669041, -0.635183, 0.385911,
		0.471129, -0.039136, -0.881196,
		25.431910, 35.540829, 34.424965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944557, 35.551834, 35.078194>,  <25.102119, 35.568226, 35.041801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944557, 35.551834, 35.078194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802803, 35.740471, 34.755207>,  <25.717751, 35.853653, 34.561413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802803, 35.740471, 34.755207>,  <25.944557, 35.551834, 35.078194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802803, 35.740471, 34.755207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558139, 0.799502, 0.221986,
		0.750263, -0.372012, -0.546546,
		-0.354383, 0.471597, -0.807471,
		25.696487, 35.881950, 34.512966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544161, 35.776985, 34.604816>,  <25.944557, 35.551834, 35.078194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544161, 35.776985, 34.604816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219536, 36.008343, 34.571770>,  <26.024761, 36.147160, 34.551941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219536, 36.008343, 34.571770>,  <26.544161, 35.776985, 34.604816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219536, 36.008343, 34.571770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575641, 0.815754, 0.056413,
		0.100027, -0.001777, -0.994983,
		-0.811561, 0.578396, -0.082620,
		25.976067, 36.181862, 34.546982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643297, 36.271118, 34.050480>,  <26.544161, 35.776985, 34.604816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643297, 36.271118, 34.050480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419054, 36.381706, 34.362705>,  <26.284508, 36.448059, 34.550041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419054, 36.381706, 34.362705>,  <26.643297, 36.271118, 34.050480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419054, 36.381706, 34.362705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751013, 0.566854, 0.338610,
		-0.348851, 0.776042, -0.525416,
		-0.560609, 0.276470, 0.780565,
		26.250872, 36.464645, 34.596874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589184, 37.026737, 34.072800>,  <26.643297, 36.271118, 34.050480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589184, 37.026737, 34.072800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563511, 36.864914, 34.437702>,  <26.548107, 36.767822, 34.656643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563511, 36.864914, 34.437702>,  <26.589184, 37.026737, 34.072800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563511, 36.864914, 34.437702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809448, 0.513559, 0.284693,
		-0.583673, 0.756699, 0.294504,
		-0.064182, -0.404554, 0.912259,
		26.544256, 36.743549, 34.711380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499445, 37.460392, 34.673420>,  <26.589184, 37.026737, 34.072800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499445, 37.460392, 34.673420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740513, 37.151413, 34.753525>,  <26.885155, 36.966026, 34.801590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740513, 37.151413, 34.753525>,  <26.499445, 37.460392, 34.673420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740513, 37.151413, 34.753525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736940, 0.635023, 0.231657,
		-0.306118, 0.007971, 0.951960,
		0.602670, -0.772452, 0.200266,
		26.921314, 36.919678, 34.813606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687202, 37.306652, 35.466103>,  <26.499445, 37.460392, 34.673420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687202, 37.306652, 35.466103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922684, 37.244122, 35.148865>,  <27.063972, 37.206604, 34.958523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922684, 37.244122, 35.148865>,  <26.687202, 37.306652, 35.466103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922684, 37.244122, 35.148865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574399, 0.771230, 0.274353,
		0.568768, -0.617063, 0.543817,
		0.588701, -0.156325, -0.793091,
		27.099295, 37.197224, 34.910938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406092, 37.380245, 35.624500>,  <26.687202, 37.306652, 35.466103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406092, 37.380245, 35.624500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425140, 37.433369, 35.228500>,  <27.436569, 37.465240, 34.990902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425140, 37.433369, 35.228500>,  <27.406092, 37.380245, 35.624500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425140, 37.433369, 35.228500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638756, 0.757932, 0.132400,
		0.767935, -0.638671, -0.048739,
		0.047620, 0.132807, -0.989997,
		27.439426, 37.473209, 34.931499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105539, 37.475044, 35.502239>,  <27.406092, 37.380245, 35.624500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105539, 37.475044, 35.502239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932947, 37.623535, 35.173359>,  <27.829391, 37.712631, 34.976032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932947, 37.623535, 35.173359>,  <28.105539, 37.475044, 35.502239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932947, 37.623535, 35.173359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595227, 0.802016, 0.049750,
		0.677887, -0.467929, -0.567021,
		-0.431480, 0.371231, -0.822200,
		27.803503, 37.734905, 34.926701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637039, 37.805046, 35.115921>,  <28.105539, 37.475044, 35.502239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637039, 37.805046, 35.115921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294031, 37.963516, 34.984646>,  <28.088226, 38.058598, 34.905880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294031, 37.963516, 34.984646>,  <28.637039, 37.805046, 35.115921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294031, 37.963516, 34.984646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387087, 0.917069, 0.095641,
		0.338860, -0.045023, -0.939759,
		-0.857518, 0.396177, -0.328186,
		28.036776, 38.082371, 34.886189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850634, 38.226154, 34.582970>,  <28.637039, 37.805046, 35.115921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850634, 38.226154, 34.582970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494757, 38.365616, 34.700878>,  <28.281231, 38.449291, 34.771626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494757, 38.365616, 34.700878>,  <28.850634, 38.226154, 34.582970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494757, 38.365616, 34.700878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372470, 0.927652, 0.026984,
		-0.264040, 0.133802, -0.955186,
		-0.889690, 0.348653, 0.294774,
		28.227850, 38.470211, 34.789310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835182, 38.817314, 34.347691>,  <28.850634, 38.226154, 34.582970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835182, 38.817314, 34.347691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545116, 38.835472, 34.622520>,  <28.371077, 38.846367, 34.787418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545116, 38.835472, 34.622520>,  <28.835182, 38.817314, 34.347691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545116, 38.835472, 34.622520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321450, 0.904740, 0.279491,
		-0.608938, 0.423538, -0.670679,
		-0.725165, 0.045397, 0.687077,
		28.327566, 38.849091, 34.828644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445826, 39.423077, 34.193222>,  <28.835182, 38.817314, 34.347691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445826, 39.423077, 34.193222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372837, 39.333954, 34.576275>,  <28.329044, 39.280479, 34.806107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372837, 39.333954, 34.576275>,  <28.445826, 39.423077, 34.193222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372837, 39.333954, 34.576275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410788, 0.867626, 0.280141,
		-0.893284, 0.444502, -0.066791,
		-0.182473, -0.222809, 0.957632,
		28.318094, 39.267113, 34.863564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120651, 39.968117, 34.559910>,  <28.445826, 39.423077, 34.193222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120651, 39.968117, 34.559910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235853, 39.805355, 34.906662>,  <28.304976, 39.707699, 35.114712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235853, 39.805355, 34.906662>,  <28.120651, 39.968117, 34.559910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235853, 39.805355, 34.906662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427131, 0.864786, 0.264016,
		-0.857094, 0.294233, 0.422867,
		0.288007, -0.406906, 0.866879,
		28.322256, 39.683285, 35.166725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051275, 40.425274, 35.134441>,  <28.120651, 39.968117, 34.559910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051275, 40.425274, 35.134441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328409, 40.175354, 35.278442>,  <28.494690, 40.025402, 35.364845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328409, 40.175354, 35.278442>,  <28.051275, 40.425274, 35.134441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328409, 40.175354, 35.278442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570867, 0.780267, 0.255528,
		-0.440555, 0.028477, 0.897274,
		0.692837, -0.624798, 0.360007,
		28.536261, 39.987915, 35.386444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156796, 40.759644, 35.722923>,  <28.051275, 40.425274, 35.134441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156796, 40.759644, 35.722923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465048, 40.507984, 35.682339>,  <28.650000, 40.356987, 35.657986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465048, 40.507984, 35.682339>,  <28.156796, 40.759644, 35.722923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465048, 40.507984, 35.682339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612707, 0.687683, 0.389465,
		-0.175256, -0.362303, 0.915435,
		0.770633, -0.629150, -0.101465,
		28.696238, 40.319241, 35.651897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578024, 40.608269, 36.380192>,  <28.156796, 40.759644, 35.722923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578024, 40.608269, 36.380192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848577, 40.507812, 36.103226>,  <29.010910, 40.447540, 35.937046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848577, 40.507812, 36.103226>,  <28.578024, 40.608269, 36.380192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848577, 40.507812, 36.103226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647596, 0.650624, 0.396621,
		0.350892, -0.716671, 0.602709,
		0.676383, -0.251141, -0.692411,
		29.051493, 40.432472, 35.895504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287895, 40.698944, 36.742760>,  <28.578024, 40.608269, 36.380192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287895, 40.698944, 36.742760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383947, 40.700573, 36.354465>,  <29.441578, 40.701550, 36.121490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383947, 40.700573, 36.354465>,  <29.287895, 40.698944, 36.742760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383947, 40.700573, 36.354465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795784, 0.571864, 0.199248,
		0.555937, -0.820339, 0.134084,
		0.240129, 0.004067, -0.970733,
		29.455986, 40.701794, 36.063244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978554, 40.462696, 36.650333>,  <29.287895, 40.698944, 36.742760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978554, 40.462696, 36.650333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899332, 40.703506, 36.340923>,  <29.851799, 40.847992, 36.155277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899332, 40.703506, 36.340923>,  <29.978554, 40.462696, 36.650333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899332, 40.703506, 36.340923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728087, 0.618706, 0.295114,
		0.656250, -0.504742, -0.560867,
		-0.198055, 0.602028, -0.773522,
		29.839916, 40.884113, 36.108868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610813, 40.629364, 36.440426>,  <29.978554, 40.462696, 36.650333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610813, 40.629364, 36.440426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363098, 40.900578, 36.282059>,  <30.214470, 41.063305, 36.187038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363098, 40.900578, 36.282059>,  <30.610813, 40.629364, 36.440426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363098, 40.900578, 36.282059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686225, 0.712438, 0.146725,
		0.381549, -0.180821, -0.906490,
		-0.619287, 0.678038, -0.395914,
		30.177313, 41.103989, 36.163284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023561, 41.059601, 36.156235>,  <30.610813, 40.629364, 36.440426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023561, 41.059601, 36.156235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677811, 41.258286, 36.187561>,  <30.470360, 41.377495, 36.206356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677811, 41.258286, 36.187561>,  <31.023561, 41.059601, 36.156235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677811, 41.258286, 36.187561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493841, 0.809206, 0.318287,
		0.094724, 0.313795, -0.944754,
		-0.864378, 0.496707, 0.078314,
		30.418497, 41.407299, 36.211056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138149, 41.663750, 35.833035>,  <31.023561, 41.059601, 36.156235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138149, 41.663750, 35.833035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823078, 41.740154, 36.067326>,  <30.634035, 41.785999, 36.207901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823078, 41.740154, 36.067326>,  <31.138149, 41.663750, 35.833035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823078, 41.740154, 36.067326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455782, 0.820342, 0.345401,
		-0.414520, 0.539028, -0.733227,
		-0.787678, 0.191016, 0.585727,
		30.586775, 41.797459, 36.243042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974533, 42.382236, 35.724731>,  <31.138149, 41.663750, 35.833035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974533, 42.382236, 35.724731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816410, 42.276405, 36.076580>,  <30.721537, 42.212906, 36.287689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816410, 42.276405, 36.076580>,  <30.974533, 42.382236, 35.724731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816410, 42.276405, 36.076580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580607, 0.670079, 0.462481,
		-0.711778, 0.693535, -0.111269,
		-0.395306, -0.264581, 0.879619,
		30.697819, 42.197033, 36.340466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652071, 42.947891, 36.090775>,  <30.974533, 42.382236, 35.724731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652071, 42.947891, 36.090775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771402, 42.663857, 36.345890>,  <30.843000, 42.493435, 36.498959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771402, 42.663857, 36.345890>,  <30.652071, 42.947891, 36.090775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771402, 42.663857, 36.345890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667704, 0.632758, 0.392158,
		-0.682034, 0.308865, 0.662896,
		0.298329, -0.710084, 0.637793,
		30.860901, 42.450832, 36.537228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680653, 43.098358, 36.888191>,  <30.652071, 42.947891, 36.090775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680653, 43.098358, 36.888191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005333, 42.941193, 36.715328>,  <31.200142, 42.846893, 36.611610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005333, 42.941193, 36.715328>,  <30.680653, 43.098358, 36.888191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005333, 42.941193, 36.715328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551795, 0.758430, 0.346852,
		0.191479, -0.520002, 0.832426,
		0.811701, -0.392914, -0.432158,
		31.248844, 42.823318, 36.585682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458361, 43.826756, 36.968941>,  <30.680653, 43.098358, 36.888191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458361, 43.826756, 36.968941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845446, 43.927055, 36.979214>,  <31.077696, 43.987236, 36.985378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845446, 43.927055, 36.979214>,  <30.458361, 43.826756, 36.968941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845446, 43.927055, 36.979214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246152, 0.962040, -0.117849,
		-0.054259, 0.107722, 0.992699,
		0.967711, 0.250750, 0.025683,
		31.135759, 44.002281, 36.986919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403801, 44.413200, 37.266994>,  <30.458361, 43.826756, 36.968941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403801, 44.413200, 37.266994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365774, 44.300758, 37.648975>,  <30.342958, 44.233292, 37.878166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365774, 44.300758, 37.648975>,  <30.403801, 44.413200, 37.266994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365774, 44.300758, 37.648975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721540, -0.641438, -0.260647,
		0.685815, -0.713819, -0.141849,
		-0.095068, -0.281105, 0.954957,
		30.337254, 44.216427, 37.935463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149101, 44.405334, 37.355877>,  <30.403801, 44.413200, 37.266994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149101, 44.405334, 37.355877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903681, 44.110500, 37.469193>,  <30.756428, 43.933598, 37.537182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903681, 44.110500, 37.469193>,  <31.149101, 44.405334, 37.355877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903681, 44.110500, 37.469193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203852, 0.198748, 0.958615,
		-0.762889, 0.645910, 0.028315,
		-0.613551, -0.737089, 0.283293,
		30.719616, 43.889374, 37.554180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815245, 44.634888, 37.948189>,  <31.149101, 44.405334, 37.355877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815245, 44.634888, 37.948189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849154, 44.236485, 37.937008>,  <30.869499, 43.997444, 37.930298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849154, 44.236485, 37.937008>,  <30.815245, 44.634888, 37.948189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849154, 44.236485, 37.937008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347763, 0.003288, 0.937577,
		-0.933742, -0.089202, 0.346653,
		0.084773, -0.996008, -0.027951,
		30.874586, 43.937683, 37.928623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388147, 44.264790, 38.551937>,  <30.815245, 44.634888, 37.948189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388147, 44.264790, 38.551937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694010, 44.050297, 38.408966>,  <30.877527, 43.921600, 38.323185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694010, 44.050297, 38.408966>,  <30.388147, 44.264790, 38.551937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694010, 44.050297, 38.408966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401880, -0.036789, 0.914953,
		-0.503776, -0.843269, 0.187370,
		0.764658, -0.536231, -0.357426,
		30.923407, 43.889427, 38.301739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471428, 43.684299, 39.044758>,  <30.388147, 44.264790, 38.551937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471428, 43.684299, 39.044758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811312, 43.744049, 38.842499>,  <31.015242, 43.779900, 38.721142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811312, 43.744049, 38.842499>,  <30.471428, 43.684299, 39.044758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811312, 43.744049, 38.842499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510491, 0.006799, 0.859856,
		0.131878, -0.988757, -0.070476,
		0.849710, 0.149374, -0.505648,
		31.066225, 43.788860, 38.690804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972832, 43.094765, 39.065674>,  <30.471428, 43.684299, 39.044758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972832, 43.094765, 39.065674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128311, 43.463268, 39.071358>,  <31.221600, 43.684368, 39.074768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128311, 43.463268, 39.071358>,  <30.972832, 43.094765, 39.065674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128311, 43.463268, 39.071358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157230, -0.081522, 0.984192,
		0.907850, -0.380319, -0.176537,
		0.388699, 0.921255, 0.014213,
		31.244921, 43.739643, 39.075623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535337, 43.096485, 39.578766>,  <30.972832, 43.094765, 39.065674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535337, 43.096485, 39.578766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372261, 43.458897, 39.533344>,  <31.274416, 43.676346, 39.506092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372261, 43.458897, 39.533344>,  <31.535337, 43.096485, 39.578766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372261, 43.458897, 39.533344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080429, 0.088244, 0.992846,
		0.909571, 0.413908, 0.036895,
		-0.407692, 0.906031, -0.113554,
		31.249954, 43.730705, 39.499279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786007, 42.714996, 40.079277>,  <31.535337, 43.096485, 39.578766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786007, 42.714996, 40.079277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689463, 42.520367, 40.415131>,  <31.631536, 42.403591, 40.616642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689463, 42.520367, 40.415131>,  <31.786007, 42.714996, 40.079277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689463, 42.520367, 40.415131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145106, -0.837395, -0.526985,
		0.959525, -0.249031, 0.131511,
		-0.241362, -0.486572, 0.839638,
		31.617054, 42.374393, 40.667023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102989, 42.122826, 40.091846>,  <31.786007, 42.714996, 40.079277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102989, 42.122826, 40.091846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811937, 42.047283, 40.355633>,  <31.637308, 42.001957, 40.513905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811937, 42.047283, 40.355633>,  <32.102989, 42.122826, 40.091846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811937, 42.047283, 40.355633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210074, -0.853816, -0.476306,
		0.653016, -0.485109, 0.581583,
		-0.727625, -0.188860, 0.659465,
		31.593649, 41.990623, 40.553471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167999, 41.457153, 40.264164>,  <32.102989, 42.122826, 40.091846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167999, 41.457153, 40.264164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776121, 41.500519, 40.331615>,  <31.540993, 41.526539, 40.372086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776121, 41.500519, 40.331615>,  <32.167999, 41.457153, 40.264164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776121, 41.500519, 40.331615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190046, -0.769984, -0.609103,
		0.063807, -0.628786, 0.774957,
		-0.979700, 0.108413, 0.168629,
		31.482212, 41.533043, 40.382202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020164, 40.813759, 40.501797>,  <32.167999, 41.457153, 40.264164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020164, 40.813759, 40.501797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672348, 40.987869, 40.408474>,  <31.463659, 41.092335, 40.352478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672348, 40.987869, 40.408474>,  <32.020164, 40.813759, 40.501797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672348, 40.987869, 40.408474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208377, -0.751671, -0.625756,
		-0.447750, -0.495503, 0.744309,
		-0.869539, 0.435279, -0.233310,
		31.411486, 41.118454, 40.338482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555157, 40.309635, 40.458336>,  <32.020164, 40.813759, 40.501797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555157, 40.309635, 40.458336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370150, 40.589485, 40.240494>,  <31.259146, 40.757397, 40.109787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370150, 40.589485, 40.240494>,  <31.555157, 40.309635, 40.458336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370150, 40.589485, 40.240494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227283, -0.687296, -0.689904,
		-0.856984, -0.195312, 0.476899,
		-0.462517, 0.699627, -0.544610,
		31.231394, 40.799374, 40.077110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868240, 40.074535, 40.166145>,  <31.555157, 40.309635, 40.458336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868240, 40.074535, 40.166145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974388, 40.368984, 39.917080>,  <31.038076, 40.545654, 39.767643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974388, 40.368984, 39.917080>,  <30.868240, 40.074535, 40.166145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974388, 40.368984, 39.917080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208804, -0.586610, -0.782489,
		-0.941265, 0.337662, -0.001963,
		0.265369, 0.736120, -0.622661,
		31.053999, 40.589821, 39.730282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368807, 40.065708, 39.668999>,  <30.868240, 40.074535, 40.166145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368807, 40.065708, 39.668999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669579, 40.267830, 39.499638>,  <30.850042, 40.389103, 39.398022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669579, 40.267830, 39.499638>,  <30.368807, 40.065708, 39.668999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669579, 40.267830, 39.499638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206840, -0.428989, -0.879310,
		-0.625955, 0.748755, -0.218052,
		0.751929, 0.505306, -0.423400,
		30.895157, 40.419422, 39.372616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078831, 40.240513, 39.084457>,  <30.368807, 40.065708, 39.668999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078831, 40.240513, 39.084457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474113, 40.272671, 39.032326>,  <30.711283, 40.291965, 39.001045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474113, 40.272671, 39.032326>,  <30.078831, 40.240513, 39.084457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474113, 40.272671, 39.032326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110950, -0.210705, -0.971233,
		-0.105539, 0.974239, -0.199300,
		0.988206, 0.080391, -0.130330,
		30.770575, 40.296787, 38.993225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194469, 40.655003, 38.485603>,  <30.078831, 40.240513, 39.084457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194469, 40.655003, 38.485603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520519, 40.430305, 38.542206>,  <30.716148, 40.295486, 38.576168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520519, 40.430305, 38.542206>,  <30.194469, 40.655003, 38.485603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520519, 40.430305, 38.542206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060976, -0.326115, -0.943361,
		0.576069, 0.760328, -0.300077,
		0.815123, -0.561739, 0.141503,
		30.765057, 40.261784, 38.584656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549284, 40.652042, 37.782230>,  <30.194469, 40.655003, 38.485603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549284, 40.652042, 37.782230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688576, 40.346062, 37.998966>,  <30.772150, 40.162476, 38.129009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688576, 40.346062, 37.998966>,  <30.549284, 40.652042, 37.782230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688576, 40.346062, 37.998966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319668, -0.446469, -0.835750,
		0.881220, 0.464242, 0.089056,
		0.348229, -0.764948, 0.541840,
		30.793045, 40.116577, 38.161518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166868, 40.569805, 37.515213>,  <30.549284, 40.652042, 37.782230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166868, 40.569805, 37.515213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038990, 40.229839, 37.682755>,  <30.962263, 40.025860, 37.783279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038990, 40.229839, 37.682755>,  <31.166868, 40.569805, 37.515213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038990, 40.229839, 37.682755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269792, -0.505407, -0.819619,
		0.908298, -0.149026, 0.390877,
		-0.319697, -0.849915, 0.418854,
		30.943081, 39.974865, 37.808411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684202, 39.971581, 37.335209>,  <31.166868, 40.569805, 37.515213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684202, 39.971581, 37.335209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353430, 39.786987, 37.463718>,  <31.154966, 39.676231, 37.540825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353430, 39.786987, 37.463718>,  <31.684202, 39.971581, 37.335209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353430, 39.786987, 37.463718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174749, -0.753970, -0.633239,
		0.534461, -0.467503, 0.704125,
		-0.826931, -0.461487, 0.321272,
		31.105350, 39.648540, 37.560101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948973, 39.223011, 37.459541>,  <31.684202, 39.971581, 37.335209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948973, 39.223011, 37.459541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553526, 39.257889, 37.410492>,  <31.316257, 39.278816, 37.381062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553526, 39.257889, 37.410492>,  <31.948973, 39.223011, 37.459541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553526, 39.257889, 37.410492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008522, -0.781217, -0.624201,
		-0.150227, -0.618139, 0.771580,
		-0.988615, 0.087196, -0.122628,
		31.256941, 39.284046, 37.373703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697327, 38.577122, 37.511520>,  <31.948973, 39.223011, 37.459541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697327, 38.577122, 37.511520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406443, 38.772587, 37.318699>,  <31.231913, 38.889866, 37.203007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406443, 38.772587, 37.318699>,  <31.697327, 38.577122, 37.511520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406443, 38.772587, 37.318699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199379, -0.822372, -0.532873,
		-0.656822, -0.291399, 0.695465,
		-0.727209, 0.488664, -0.482053,
		31.188280, 38.919186, 37.174084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105095, 38.112137, 37.612492>,  <31.697327, 38.577122, 37.511520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105095, 38.112137, 37.612492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010674, 38.366383, 37.318478>,  <30.954021, 38.518929, 37.142071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010674, 38.366383, 37.318478>,  <31.105095, 38.112137, 37.612492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010674, 38.366383, 37.318478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409379, -0.751055, -0.518001,
		-0.881299, 0.178632, 0.437495,
		-0.236052, 0.635615, -0.735033,
		30.939857, 38.557068, 37.097969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495371, 38.004684, 37.446213>,  <31.105095, 38.112137, 37.612492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495371, 38.004684, 37.446213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597239, 38.204838, 37.115211>,  <30.658360, 38.324928, 36.916611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597239, 38.204838, 37.115211>,  <30.495371, 38.004684, 37.446213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597239, 38.204838, 37.115211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468857, -0.684519, -0.558217,
		-0.845763, 0.530142, 0.060281,
		0.254671, 0.500383, -0.827502,
		30.673639, 38.354954, 36.866962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871124, 38.071400, 37.027088>,  <30.495371, 38.004684, 37.446213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871124, 38.071400, 37.027088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182245, 38.093071, 36.776623>,  <30.368917, 38.106075, 36.626343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182245, 38.093071, 36.776623>,  <29.871124, 38.071400, 37.027088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182245, 38.093071, 36.776623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449541, -0.648307, -0.614501,
		-0.439243, 0.759449, -0.479899,
		0.777804, 0.054181, -0.626168,
		30.415586, 38.109325, 36.588772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589933, 38.264591, 36.411167>,  <29.871124, 38.071400, 37.027088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589933, 38.264591, 36.411167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941130, 38.100777, 36.312042>,  <30.151848, 38.002487, 36.252567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941130, 38.100777, 36.312042>,  <29.589933, 38.264591, 36.411167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941130, 38.100777, 36.312042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475349, -0.685013, -0.552088,
		0.056348, 0.602525, -0.796108,
		0.877991, -0.409538, -0.247811,
		30.204527, 37.977917, 36.237698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664612, 38.327576, 35.707920>,  <29.589933, 38.264591, 36.411167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664612, 38.327576, 35.707920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866793, 38.003105, 35.825573>,  <29.988102, 37.808422, 35.896164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866793, 38.003105, 35.825573>,  <29.664612, 38.327576, 35.707920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866793, 38.003105, 35.825573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500645, -0.553347, -0.665704,
		0.702761, 0.189223, -0.685800,
		0.505452, -0.811173, 0.294137,
		30.018429, 37.759754, 35.913815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588583, 38.002098, 35.143726>,  <29.664612, 38.327576, 35.707920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588583, 38.002098, 35.143726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765045, 37.718323, 35.363571>,  <29.870922, 37.548058, 35.495480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765045, 37.718323, 35.363571>,  <29.588583, 38.002098, 35.143726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765045, 37.718323, 35.363571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379867, -0.702476, -0.601854,
		0.813071, 0.056731, -0.579394,
		0.441154, -0.709442, 0.549613,
		29.897392, 37.505489, 35.528454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947351, 37.550121, 34.712196>,  <29.588583, 38.002098, 35.143726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947351, 37.550121, 34.712196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901318, 37.328613, 35.042068>,  <29.873697, 37.195709, 35.239990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901318, 37.328613, 35.042068>,  <29.947351, 37.550121, 34.712196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901318, 37.328613, 35.042068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375369, -0.744399, -0.552239,
		0.919703, -0.373113, -0.122198,
		-0.115083, -0.553766, 0.824682,
		29.866793, 37.162483, 35.289474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265804, 36.933617, 34.639637>,  <29.947351, 37.550121, 34.712196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265804, 36.933617, 34.639637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995747, 36.853821, 34.923717>,  <29.833712, 36.805943, 35.094166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995747, 36.853821, 34.923717>,  <30.265804, 36.933617, 34.639637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995747, 36.853821, 34.923717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282973, -0.819057, -0.499071,
		0.681253, -0.537912, 0.496533,
		-0.675145, -0.199488, 0.710200,
		29.793203, 36.793976, 35.136776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264553, 36.218987, 34.641338>,  <30.265804, 36.933617, 34.639637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264553, 36.218987, 34.641338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916639, 36.322563, 34.809349>,  <29.707891, 36.384708, 34.910156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916639, 36.322563, 34.809349>,  <30.264553, 36.218987, 34.641338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916639, 36.322563, 34.809349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399899, -0.868590, -0.292632,
		0.289059, -0.422496, 0.859036,
		-0.869785, 0.258940, 0.420030,
		29.655704, 36.400246, 34.935356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536768, 36.016239, 34.374432>,  <30.264553, 36.218987, 34.641338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536768, 36.016239, 34.374432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378315, 35.665390, 34.265816>,  <29.283243, 35.454880, 34.200645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378315, 35.665390, 34.265816>,  <29.536768, 36.016239, 34.374432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378315, 35.665390, 34.265816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495778, 0.044597, -0.867303,
		0.772841, -0.478192, 0.417192,
		-0.396132, -0.877122, -0.271543,
		29.259476, 35.402252, 34.184353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746342, 35.398979, 34.150078>,  <29.536768, 36.016239, 34.374432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746342, 35.398979, 34.150078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964615, 35.117252, 33.968452>,  <30.095579, 34.948215, 33.859478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964615, 35.117252, 33.968452>,  <29.746342, 35.398979, 34.150078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964615, 35.117252, 33.968452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089036, 0.587509, -0.804304,
		0.833247, 0.398469, 0.383304,
		0.545684, -0.704313, -0.454062,
		30.128321, 34.905960, 33.832233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466543, 35.631680, 33.819378>,  <29.746342, 35.398979, 34.150078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466543, 35.631680, 33.819378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362209, 35.296387, 33.627823>,  <30.299610, 35.095211, 33.512890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362209, 35.296387, 33.627823>,  <30.466543, 35.631680, 33.819378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362209, 35.296387, 33.627823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082851, 0.513665, -0.853981,
		0.961822, -0.183070, -0.203430,
		-0.260833, -0.838232, -0.478887,
		30.283958, 35.044918, 33.484158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191183, 35.418430, 34.063847>,  <30.466543, 35.631680, 33.819378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191183, 35.418430, 34.063847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375896, 35.272293, 33.740543>,  <31.486725, 35.184612, 33.546562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375896, 35.272293, 33.740543>,  <31.191183, 35.418430, 34.063847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375896, 35.272293, 33.740543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001124, -0.910991, 0.412424,
		-0.886990, -0.191360, -0.420273,
		0.461787, -0.365344, -0.808256,
		31.514433, 35.162689, 33.498066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440937, 35.995975, 34.515072>,  <31.191183, 35.418430, 34.063847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440937, 35.995975, 34.515072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395454, 35.601528, 34.563484>,  <31.368166, 35.364861, 34.592533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395454, 35.601528, 34.563484>,  <31.440937, 35.995975, 34.515072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395454, 35.601528, 34.563484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035475, 0.117716, 0.992413,
		-0.992881, 0.117137, 0.021598,
		-0.113706, -0.986115, 0.121034,
		31.361343, 35.305695, 34.599792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781677, 35.673061, 35.035652>,  <31.440937, 35.995975, 34.515072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781677, 35.673061, 35.035652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104248, 35.437454, 35.014740>,  <31.297791, 35.296089, 35.002193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104248, 35.437454, 35.014740>,  <30.781677, 35.673061, 35.035652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104248, 35.437454, 35.014740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017760, -0.112493, 0.993494,
		-0.591069, -0.800250, -0.101178,
		0.806425, -0.589020, -0.052279,
		31.346176, 35.260750, 34.999058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659393, 34.965191, 35.476166>,  <30.781677, 35.673061, 35.035652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659393, 34.965191, 35.476166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057026, 34.979244, 35.435040>,  <31.295605, 34.987675, 35.410362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057026, 34.979244, 35.435040>,  <30.659393, 34.965191, 35.476166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057026, 34.979244, 35.435040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108631, -0.302299, 0.947003,
		0.002192, -0.952565, -0.304326,
		0.994080, 0.035135, -0.102815,
		31.355249, 34.989784, 35.404194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833599, 34.388504, 35.855656>,  <30.659393, 34.965191, 35.476166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833599, 34.388504, 35.855656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182627, 34.581059, 35.822456>,  <31.392044, 34.696590, 35.802536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182627, 34.581059, 35.822456>,  <30.833599, 34.388504, 35.855656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182627, 34.581059, 35.822456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214001, -0.223961, 0.950813,
		0.439120, -0.847412, -0.298439,
		0.872569, 0.481387, -0.083001,
		31.444397, 34.725475, 35.797558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270914, 34.011745, 36.195156>,  <30.833599, 34.388504, 35.855656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270914, 34.011745, 36.195156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499920, 34.338623, 36.168579>,  <31.637323, 34.534752, 36.152634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499920, 34.338623, 36.168579>,  <31.270914, 34.011745, 36.195156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499920, 34.338623, 36.168579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384685, -0.196171, 0.901962,
		0.724047, -0.541946, -0.426674,
		0.572515, 0.817197, -0.066442,
		31.671675, 34.583782, 36.148647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954775, 33.852757, 36.149719>,  <31.270914, 34.011745, 36.195156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954775, 33.852757, 36.149719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914757, 34.218552, 36.306541>,  <31.890745, 34.438026, 36.400635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914757, 34.218552, 36.306541>,  <31.954775, 33.852757, 36.149719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914757, 34.218552, 36.306541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369626, -0.331676, 0.867968,
		0.923779, 0.231751, -0.304834,
		-0.100046, 0.914485, 0.392056,
		31.884743, 34.492897, 36.424160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524693, 33.939770, 36.611572>,  <31.954775, 33.852757, 36.149719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524693, 33.939770, 36.611572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248707, 34.207878, 36.720886>,  <32.083115, 34.368744, 36.786476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248707, 34.207878, 36.720886>,  <32.524693, 33.939770, 36.611572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248707, 34.207878, 36.720886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323652, -0.052036, 0.944744,
		0.647456, 0.740289, -0.181032,
		-0.689964, 0.670272, 0.273287,
		32.041718, 34.408958, 36.802872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820213, 34.157558, 37.227119>,  <32.524693, 33.939770, 36.611572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820213, 34.157558, 37.227119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470795, 34.351646, 37.242481>,  <32.261143, 34.468102, 37.251698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470795, 34.351646, 37.242481>,  <32.820213, 34.157558, 37.227119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470795, 34.351646, 37.242481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115406, 0.129814, 0.984799,
		0.472863, 0.864700, -0.169396,
		-0.873546, 0.485224, 0.038407,
		32.208733, 34.497215, 37.254002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894230, 34.763191, 37.631966>,  <32.820213, 34.157558, 37.227119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894230, 34.763191, 37.631966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503338, 34.678333, 37.630405>,  <32.268803, 34.627419, 37.629471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503338, 34.678333, 37.630405>,  <32.894230, 34.763191, 37.631966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503338, 34.678333, 37.630405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052774, 0.225236, 0.972874,
		-0.205509, 0.950929, -0.231303,
		-0.977231, -0.212141, -0.003897,
		32.210167, 34.614693, 37.629238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640228, 35.311817, 38.073128>,  <32.894230, 34.763191, 37.631966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640228, 35.311817, 38.073128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377003, 35.013794, 38.029606>,  <32.219067, 34.834980, 38.003490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377003, 35.013794, 38.029606>,  <32.640228, 35.311817, 38.073128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377003, 35.013794, 38.029606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208579, 0.041528, 0.977123,
		-0.723492, 0.665709, -0.182732,
		-0.658068, -0.745055, -0.108808,
		32.179581, 34.790276, 37.996964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041298, 35.591831, 38.369514>,  <32.640228, 35.311817, 38.073128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041298, 35.591831, 38.369514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016308, 35.192657, 38.375416>,  <32.001312, 34.953152, 38.378956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016308, 35.192657, 38.375416>,  <32.041298, 35.591831, 38.369514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016308, 35.192657, 38.375416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173097, 0.025389, 0.984578,
		-0.982921, 0.058961, -0.174326,
		-0.062478, -0.997938, 0.014749,
		31.997564, 34.893276, 38.379841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391462, 35.485920, 38.814106>,  <32.041298, 35.591831, 38.369514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391462, 35.485920, 38.814106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605410, 35.147972, 38.818306>,  <31.733778, 34.945202, 38.820824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605410, 35.147972, 38.818306>,  <31.391462, 35.485920, 38.814106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605410, 35.147972, 38.818306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209946, -0.120858, 0.970214,
		-0.818437, -0.521141, -0.242021,
		0.534868, -0.844870, 0.010497,
		31.765871, 34.894512, 38.821457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907217, 34.944672, 39.087559>,  <31.391462, 35.485920, 38.814106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907217, 34.944672, 39.087559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276623, 34.808674, 39.158573>,  <31.498266, 34.727074, 39.201183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276623, 34.808674, 39.158573>,  <30.907217, 34.944672, 39.087559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276623, 34.808674, 39.158573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299573, -0.350310, 0.887434,
		-0.239532, -0.872745, -0.425371,
		0.923515, -0.339998, 0.177540,
		31.553677, 34.706673, 39.211834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817616, 34.299339, 39.449062>,  <30.907217, 34.944672, 39.087559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817616, 34.299339, 39.449062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203737, 34.363796, 39.531250>,  <31.435411, 34.402470, 39.580563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203737, 34.363796, 39.531250>,  <30.817616, 34.299339, 39.449062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203737, 34.363796, 39.531250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102995, -0.488124, 0.866676,
		0.239952, -0.857770, -0.454593,
		0.965306, 0.161140, 0.205472,
		31.493328, 34.412140, 39.592892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065720, 33.768246, 39.783112>,  <30.817616, 34.299339, 39.449062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065720, 33.768246, 39.783112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321321, 34.047863, 39.911495>,  <31.474682, 34.215633, 39.988525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321321, 34.047863, 39.911495>,  <31.065720, 33.768246, 39.783112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321321, 34.047863, 39.911495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016463, -0.404732, 0.914287,
		0.769028, -0.589517, -0.247117,
		0.639004, 0.699044, 0.320955,
		31.513023, 34.257576, 40.007782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541666, 33.479759, 40.228359>,  <31.065720, 33.768246, 39.783112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541666, 33.479759, 40.228359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587784, 33.862469, 40.335163>,  <31.615454, 34.092094, 40.399246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587784, 33.862469, 40.335163>,  <31.541666, 33.479759, 40.228359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587784, 33.862469, 40.335163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177466, -0.284313, 0.942163,
		0.977350, -0.061242, -0.202574,
		0.115294, 0.956773, 0.267005,
		31.622372, 34.149502, 40.415264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079964, 33.466675, 40.800056>,  <31.541666, 33.479759, 40.228359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079964, 33.466675, 40.800056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912392, 33.826981, 40.845871>,  <31.811850, 34.043163, 40.873360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912392, 33.826981, 40.845871>,  <32.079964, 33.466675, 40.800056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912392, 33.826981, 40.845871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053282, -0.101537, 0.993404,
		0.906454, 0.422268, -0.005458,
		-0.418929, 0.900766, 0.114538,
		31.786713, 34.097210, 40.880234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346054, 33.671902, 41.455711>,  <32.079964, 33.466675, 40.800056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346054, 33.671902, 41.455711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011436, 33.878044, 41.381302>,  <31.810667, 34.001732, 41.336658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011436, 33.878044, 41.381302>,  <32.346054, 33.671902, 41.455711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011436, 33.878044, 41.381302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264902, -0.083236, 0.960676,
		0.479609, 0.852923, 0.206150,
		-0.836542, 0.515359, -0.186020,
		31.760473, 34.032650, 41.325497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307095, 34.241936, 41.985542>,  <32.346054, 33.671902, 41.455711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307095, 34.241936, 41.985542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931326, 34.206245, 41.853168>,  <31.705864, 34.184834, 41.773743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931326, 34.206245, 41.853168>,  <32.307095, 34.241936, 41.985542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931326, 34.206245, 41.853168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334110, 0.022918, 0.942255,
		-0.076485, 0.995748, -0.051340,
		-0.939426, -0.089221, -0.330936,
		31.649498, 34.179478, 41.753887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922426, 34.724934, 42.383415>,  <32.307095, 34.241936, 41.985542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922426, 34.724934, 42.383415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650232, 34.459049, 42.260067>,  <31.486916, 34.299519, 42.186058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650232, 34.459049, 42.260067>,  <31.922426, 34.724934, 42.383415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650232, 34.459049, 42.260067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447160, 0.043303, 0.893405,
		-0.580506, 0.745841, -0.326701,
		-0.680486, -0.664715, -0.308372,
		31.446087, 34.259636, 42.167557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380814, 34.836540, 42.839420>,  <31.922426, 34.724934, 42.383415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380814, 34.836540, 42.839420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286953, 34.478764, 42.687153>,  <31.230637, 34.264099, 42.595791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286953, 34.478764, 42.687153>,  <31.380814, 34.836540, 42.839420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286953, 34.478764, 42.687153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478094, -0.234776, 0.846349,
		-0.846383, 0.380595, -0.372536,
		-0.234654, -0.894443, -0.380671,
		31.216557, 34.210430, 42.572952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680651, 34.740894, 43.010361>,  <31.380814, 34.836540, 42.839420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680651, 34.740894, 43.010361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821098, 34.371700, 42.947361>,  <30.905367, 34.150185, 42.909561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821098, 34.371700, 42.947361>,  <30.680651, 34.740894, 43.010361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821098, 34.371700, 42.947361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513671, -0.330515, 0.791772,
		-0.782852, -0.197106, -0.590163,
		0.351120, -0.922990, -0.157497,
		30.926434, 34.094803, 42.900112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165438, 34.317127, 43.197968>,  <30.680651, 34.740894, 43.010361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165438, 34.317127, 43.197968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490395, 34.084232, 43.210758>,  <30.685369, 33.944496, 43.218433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490395, 34.084232, 43.210758>,  <30.165438, 34.317127, 43.197968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490395, 34.084232, 43.210758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328333, -0.411435, 0.850246,
		-0.481890, -0.701230, -0.525413,
		0.812391, -0.582236, 0.031971,
		30.734112, 33.909561, 43.220352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980183, 33.739300, 43.479343>,  <30.165438, 34.317127, 43.197968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980183, 33.739300, 43.479343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372068, 33.666111, 43.512032>,  <30.607201, 33.622200, 43.531643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372068, 33.666111, 43.512032>,  <29.980183, 33.739300, 43.479343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372068, 33.666111, 43.512032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162883, -0.489567, 0.856617,
		-0.116726, -0.852553, -0.509439,
		0.979716, -0.182968, 0.081721,
		30.665983, 33.611221, 43.536549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071503, 33.015453, 43.586235>,  <29.980183, 33.739300, 43.479343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071503, 33.015453, 43.586235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389793, 33.192314, 43.751801>,  <30.580767, 33.298431, 43.851139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389793, 33.192314, 43.751801>,  <30.071503, 33.015453, 43.586235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389793, 33.192314, 43.751801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181494, -0.477932, 0.859442,
		0.577825, -0.759003, -0.300055,
		0.795725, 0.442149, 0.413916,
		30.628511, 33.324959, 43.875977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376747, 32.497532, 43.997051>,  <30.071503, 33.015453, 43.586235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376747, 32.497532, 43.997051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510656, 32.854183, 44.118988>,  <30.591002, 33.068172, 44.192150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510656, 32.854183, 44.118988>,  <30.376747, 32.497532, 43.997051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510656, 32.854183, 44.118988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272801, -0.217946, 0.937059,
		0.901946, -0.396864, 0.170274,
		0.334774, 0.891627, 0.304840,
		30.611088, 33.121670, 44.210442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685226, 32.293888, 44.561249>,  <30.376747, 32.497532, 43.997051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685226, 32.293888, 44.561249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638111, 32.687347, 44.615734>,  <30.609842, 32.923424, 44.648426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638111, 32.687347, 44.615734>,  <30.685226, 32.293888, 44.561249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638111, 32.687347, 44.615734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151002, -0.153316, 0.976572,
		0.981491, 0.094460, 0.166593,
		-0.117788, 0.983652, 0.136214,
		30.602776, 32.982445, 44.656597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095301, 32.473900, 45.229740>,  <30.685226, 32.293888, 44.561249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095301, 32.473900, 45.229740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843309, 32.775616, 45.155792>,  <30.692114, 32.956646, 45.111423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843309, 32.775616, 45.155792>,  <31.095301, 32.473900, 45.229740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843309, 32.775616, 45.155792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129743, 0.132478, 0.982658,
		0.765698, 0.643039, 0.014405,
		-0.629979, 0.754288, -0.184868,
		30.654316, 33.001904, 45.100330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353792, 32.945900, 45.651806>,  <31.095301, 32.473900, 45.229740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353792, 32.945900, 45.651806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969572, 33.029705, 45.578651>,  <30.739040, 33.079987, 45.534760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969572, 33.029705, 45.578651>,  <31.353792, 32.945900, 45.651806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969572, 33.029705, 45.578651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148708, 0.168776, 0.974372,
		0.235006, 0.963131, -0.130963,
		-0.960551, 0.209508, -0.182888,
		30.681406, 33.092556, 45.523785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162836, 33.626804, 45.946342>,  <31.353792, 32.945900, 45.651806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162836, 33.626804, 45.946342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821194, 33.424000, 45.899956>,  <30.616209, 33.302319, 45.872124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821194, 33.424000, 45.899956>,  <31.162836, 33.626804, 45.946342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821194, 33.424000, 45.899956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267008, 0.236085, 0.934329,
		-0.446333, 0.828979, -0.337016,
		-0.854104, -0.507008, -0.115971,
		30.564962, 33.271896, 45.865166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724566, 34.031101, 46.469254>,  <31.162836, 33.626804, 45.946342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724566, 34.031101, 46.469254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543600, 33.688404, 46.370201>,  <30.435020, 33.482788, 46.310768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543600, 33.688404, 46.370201>,  <30.724566, 34.031101, 46.469254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543600, 33.688404, 46.370201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392680, -0.057933, 0.917849,
		-0.800703, 0.512485, -0.310215,
		-0.452412, -0.856740, -0.247630,
		30.407877, 33.431381, 46.295914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016327, 34.024616, 46.762676>,  <30.724566, 34.031101, 46.469254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016327, 34.024616, 46.762676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092556, 33.638302, 46.692314>,  <30.138292, 33.406513, 46.650097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092556, 33.638302, 46.692314>,  <30.016327, 34.024616, 46.762676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092556, 33.638302, 46.692314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085818, -0.194889, 0.977064,
		-0.977915, -0.171104, -0.120022,
		0.190570, -0.965786, -0.175901,
		30.149727, 33.348568, 46.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545630, 33.671494, 47.171425>,  <30.016327, 34.024616, 46.762676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545630, 33.671494, 47.171425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835714, 33.416405, 47.067600>,  <30.009766, 33.263351, 47.005306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835714, 33.416405, 47.067600>,  <29.545630, 33.671494, 47.171425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835714, 33.416405, 47.067600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015554, -0.361708, 0.932162,
		-0.688348, -0.680054, -0.252396,
		0.725214, -0.637726, -0.259558,
		30.053278, 33.225086, 46.989731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337215, 32.984516, 47.402855>,  <29.545630, 33.671494, 47.171425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337215, 32.984516, 47.402855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735025, 33.013947, 47.373158>,  <29.973711, 33.031605, 47.355339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735025, 33.013947, 47.373158>,  <29.337215, 32.984516, 47.402855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735025, 33.013947, 47.373158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096946, -0.383857, 0.918289,
		0.039065, -0.920457, -0.388887,
		0.994523, 0.073574, -0.074240,
		30.033382, 33.036018, 47.350887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583801, 32.323456, 47.727177>,  <29.337215, 32.984516, 47.402855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583801, 32.323456, 47.727177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897747, 32.570484, 47.706799>,  <30.086115, 32.718700, 47.694572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897747, 32.570484, 47.706799>,  <29.583801, 32.323456, 47.727177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897747, 32.570484, 47.706799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302590, -0.310208, 0.901227,
		0.540768, -0.722756, -0.430342,
		0.784863, 0.617572, -0.050948,
		30.133205, 32.755756, 47.691513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136560, 31.986830, 47.958141>,  <29.583801, 32.323456, 47.727177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136560, 31.986830, 47.958141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269543, 32.361095, 48.005486>,  <30.349331, 32.585655, 48.033894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269543, 32.361095, 48.005486>,  <30.136560, 31.986830, 47.958141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269543, 32.361095, 48.005486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175297, -0.184619, 0.967051,
		0.926685, -0.300751, -0.225396,
		0.332454, 0.935663, 0.118363,
		30.369278, 32.641796, 48.040993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762320, 31.997324, 48.360840>,  <30.136560, 31.986830, 47.958141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762320, 31.997324, 48.360840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552906, 32.335762, 48.400906>,  <30.427258, 32.538826, 48.424946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552906, 32.335762, 48.400906>,  <30.762320, 31.997324, 48.360840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552906, 32.335762, 48.400906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184704, -0.002057, 0.982792,
		0.831742, 0.533027, -0.155200,
		-0.523536, 0.846095, 0.100163,
		30.395845, 32.589592, 48.430954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083979, 32.362507, 48.895878>,  <30.762320, 31.997324, 48.360840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083979, 32.362507, 48.895878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698515, 32.464870, 48.865234>,  <30.467236, 32.526287, 48.846848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698515, 32.464870, 48.865234>,  <31.083979, 32.362507, 48.895878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698515, 32.464870, 48.865234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156027, -0.306435, 0.939017,
		0.216827, 0.916847, 0.335227,
		-0.963660, 0.255909, -0.076610,
		30.409416, 32.541641, 48.842251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904398, 32.578972, 49.566036>,  <31.083979, 32.362507, 48.895878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904398, 32.578972, 49.566036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566393, 32.489136, 49.371918>,  <30.363590, 32.435234, 49.255447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566393, 32.489136, 49.371918>,  <30.904398, 32.578972, 49.566036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566393, 32.489136, 49.371918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306526, -0.540203, 0.783723,
		-0.438176, 0.811012, 0.387636,
		-0.845011, -0.224588, -0.485300,
		30.312889, 32.421761, 49.226326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482914, 32.592663, 50.135769>,  <30.904398, 32.578972, 49.566036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482914, 32.592663, 50.135769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280939, 32.405766, 49.845467>,  <30.159754, 32.293629, 49.671284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280939, 32.405766, 49.845467>,  <30.482914, 32.592663, 50.135769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280939, 32.405766, 49.845467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355407, -0.653690, 0.668113,
		-0.786591, 0.595294, 0.164010,
		-0.504936, -0.467241, -0.725759,
		30.129457, 32.265594, 49.627739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810549, 32.456974, 50.441017>,  <30.482914, 32.592663, 50.135769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810549, 32.456974, 50.441017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834652, 32.197693, 50.137386>,  <29.849113, 32.042122, 49.955208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834652, 32.197693, 50.137386>,  <29.810549, 32.456974, 50.441017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834652, 32.197693, 50.137386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297581, -0.737546, 0.606195,
		-0.952793, 0.189360, -0.237335,
		0.060257, -0.648205, -0.759078,
		29.852730, 32.003231, 49.909664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187136, 31.990686, 50.633385>,  <29.810549, 32.456974, 50.441017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187136, 31.990686, 50.633385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440475, 31.809307, 50.382545>,  <29.592480, 31.700480, 50.232040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440475, 31.809307, 50.382545>,  <29.187136, 31.990686, 50.633385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440475, 31.809307, 50.382545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058792, -0.836198, 0.545268,
		-0.771629, -0.308477, -0.556265,
		0.633349, -0.453449, -0.627099,
		29.630480, 31.673273, 50.194416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013609, 31.218824, 50.533627>,  <29.187136, 31.990686, 50.633385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013609, 31.218824, 50.533627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406872, 31.269997, 50.481422>,  <29.642830, 31.300701, 50.450100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406872, 31.269997, 50.481422>,  <29.013609, 31.218824, 50.533627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406872, 31.269997, 50.481422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170443, -0.899545, 0.402204,
		-0.065945, -0.417674, -0.906200,
		0.983159, 0.127932, -0.130510,
		29.701818, 31.308376, 50.442268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984299, 30.585211, 50.142353>,  <29.013609, 31.218824, 50.533627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984299, 30.585211, 50.142353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164282, 30.228855, 50.117523>,  <29.272272, 30.015041, 50.102627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164282, 30.228855, 50.117523>,  <28.984299, 30.585211, 50.142353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164282, 30.228855, 50.117523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312084, -0.221988, 0.923756,
		-0.836744, -0.396280, -0.377918,
		0.449959, -0.890889, -0.062074,
		29.299271, 29.961588, 50.098900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424036, 30.190758, 50.235977>,  <28.984299, 30.585211, 50.142353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424036, 30.190758, 50.235977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757257, 29.987671, 50.323833>,  <28.957190, 29.865818, 50.376549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757257, 29.987671, 50.323833>,  <28.424036, 30.190758, 50.235977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757257, 29.987671, 50.323833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384901, -0.246798, 0.889349,
		-0.397333, -0.825416, -0.401018,
		0.833054, -0.507720, 0.219642,
		29.007174, 29.835356, 50.389725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108448, 29.746151, 50.613659>,  <28.424036, 30.190758, 50.235977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108448, 29.746151, 50.613659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497908, 29.732533, 50.703857>,  <28.731583, 29.724361, 50.757977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497908, 29.732533, 50.703857>,  <28.108448, 29.746151, 50.613659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497908, 29.732533, 50.703857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224788, -0.310066, 0.923758,
		0.038469, -0.950105, -0.309549,
		0.973648, -0.034047, 0.225500,
		28.790003, 29.722319, 50.771507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774853, 29.451105, 51.213612>,  <28.108448, 29.746151, 50.613659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774853, 29.451105, 51.213612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617208, 29.754669, 51.006256>,  <27.522621, 29.936808, 50.881844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617208, 29.754669, 51.006256>,  <27.774853, 29.451105, 51.213612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617208, 29.754669, 51.006256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004905, 0.565772, 0.824547,
		0.919050, 0.322421, -0.226699,
		-0.394111, 0.758912, -0.518391,
		27.498976, 29.982344, 50.850739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200350, 29.933186, 51.435066>,  <27.774853, 29.451105, 51.213612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200350, 29.933186, 51.435066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857304, 30.108280, 51.327076>,  <27.651476, 30.213337, 51.262283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857304, 30.108280, 51.327076>,  <28.200350, 29.933186, 51.435066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857304, 30.108280, 51.327076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131561, 0.694201, 0.707656,
		0.497180, 0.571379, -0.652946,
		-0.857615, 0.437734, -0.269972,
		27.600019, 30.239601, 51.246086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966124, 30.198378, 51.535248>,  <28.200350, 29.933186, 51.435066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966124, 30.198378, 51.535248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215776, 29.897533, 51.619896>,  <29.365568, 29.717026, 51.670685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215776, 29.897533, 51.619896>,  <28.966124, 30.198378, 51.535248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215776, 29.897533, 51.619896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142969, -0.156343, -0.977301,
		0.768125, 0.640222, 0.009950,
		0.624134, -0.752112, 0.211623,
		29.403017, 29.671900, 51.683384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600683, 30.194548, 51.106697>,  <28.966124, 30.198378, 51.535248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600683, 30.194548, 51.106697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487188, 29.823130, 51.202446>,  <29.419092, 29.600279, 51.259895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487188, 29.823130, 51.202446>,  <29.600683, 30.194548, 51.106697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487188, 29.823130, 51.202446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071122, -0.228566, -0.970927,
		0.956262, -0.292511, -0.001187,
		-0.283735, -0.928545, 0.239373,
		29.402067, 29.544567, 51.274258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121016, 29.670631, 50.872833>,  <29.600683, 30.194548, 51.106697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121016, 29.670631, 50.872833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729174, 29.591141, 50.884739>,  <29.494068, 29.543446, 50.891884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729174, 29.591141, 50.884739>,  <30.121016, 29.670631, 50.872833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729174, 29.591141, 50.884739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001162, -0.153725, -0.988113,
		0.200941, -0.967923, 0.150821,
		-0.979603, -0.198728, 0.029765,
		29.435293, 29.531523, 50.893669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004618, 29.121021, 50.585888>,  <30.121016, 29.670631, 50.872833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004618, 29.121021, 50.585888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646534, 29.292892, 50.538597>,  <29.431684, 29.396015, 50.510223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646534, 29.292892, 50.538597>,  <30.004618, 29.121021, 50.585888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646534, 29.292892, 50.538597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136870, 0.012609, -0.990509,
		-0.424109, -0.902894, -0.070098,
		-0.895209, 0.429678, -0.118231,
		29.377972, 29.421795, 50.503128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805859, 28.706930, 50.091610>,  <30.004618, 29.121021, 50.585888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805859, 28.706930, 50.091610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615299, 29.058180, 50.073982>,  <29.500963, 29.268930, 50.063404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615299, 29.058180, 50.073982>,  <29.805859, 28.706930, 50.091610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615299, 29.058180, 50.073982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097011, 0.002682, -0.995280,
		-0.873862, -0.478423, -0.086465,
		-0.476397, 0.878125, -0.044069,
		29.472380, 29.321617, 50.060760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184683, 28.673397, 49.582031>,  <29.805859, 28.706930, 50.091610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184683, 28.673397, 49.582031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337442, 29.040817, 49.622868>,  <29.429098, 29.261269, 49.647369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337442, 29.040817, 49.622868>,  <29.184683, 28.673397, 49.582031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337442, 29.040817, 49.622868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078861, 0.077678, -0.993855,
		-0.920834, 0.387601, -0.042773,
		0.381897, 0.918549, 0.102095,
		29.452011, 29.316381, 49.653496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041599, 29.095051, 48.963848>,  <29.184683, 28.673397, 49.582031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041599, 29.095051, 48.963848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342672, 29.296793, 49.133125>,  <29.523315, 29.417839, 49.234692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342672, 29.296793, 49.133125>,  <29.041599, 29.095051, 48.963848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342672, 29.296793, 49.133125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258416, 0.364885, -0.894472,
		-0.605549, 0.782614, 0.144310,
		0.752683, 0.504355, 0.423196,
		29.568478, 29.448099, 49.260082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025694, 29.801998, 48.589760>,  <29.041599, 29.095051, 48.963848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025694, 29.801998, 48.589760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391157, 29.774055, 48.749935>,  <29.610435, 29.757290, 48.846039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391157, 29.774055, 48.749935>,  <29.025694, 29.801998, 48.589760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391157, 29.774055, 48.749935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388513, 0.439753, -0.809737,
		-0.119529, 0.895398, 0.428924,
		0.913657, -0.069856, 0.400437,
		29.665255, 29.753099, 48.870068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475956, 30.326630, 48.326088>,  <29.025694, 29.801998, 48.589760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475956, 30.326630, 48.326088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745174, 30.081511, 48.491730>,  <29.906706, 29.934439, 48.591114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745174, 30.081511, 48.491730>,  <29.475956, 30.326630, 48.326088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745174, 30.081511, 48.491730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655956, 0.235938, -0.716976,
		0.341659, 0.754194, 0.560767,
		0.673046, -0.612800, 0.414108,
		29.947088, 29.897671, 48.615963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082291, 30.709999, 48.271671>,  <29.475956, 30.326630, 48.326088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082291, 30.709999, 48.271671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195425, 30.326633, 48.286873>,  <30.263306, 30.096615, 48.295994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195425, 30.326633, 48.286873>,  <30.082291, 30.709999, 48.271671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195425, 30.326633, 48.286873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581590, 0.139853, -0.801371,
		0.762729, 0.248763, 0.596960,
		0.282838, -0.958414, 0.038009,
		30.280277, 30.039108, 48.298275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919170, 30.668678, 48.278866>,  <30.082291, 30.709999, 48.271671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919170, 30.668678, 48.278866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783751, 30.322542, 48.131046>,  <30.702497, 30.114861, 48.042355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783751, 30.322542, 48.131046>,  <30.919170, 30.668678, 48.278866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783751, 30.322542, 48.131046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649316, 0.069398, -0.757346,
		0.681008, -0.496357, 0.538385,
		-0.338551, -0.865340, -0.369553,
		30.682186, 30.062941, 48.020180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544870, 30.223778, 48.122437>,  <30.919170, 30.668678, 48.278866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544870, 30.223778, 48.122437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241821, 30.095713, 47.894928>,  <31.059992, 30.018873, 47.758423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241821, 30.095713, 47.894928>,  <31.544870, 30.223778, 48.122437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241821, 30.095713, 47.894928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628732, -0.124037, -0.767666,
		0.175231, -0.939206, 0.295271,
		-0.757621, -0.320166, -0.568774,
		31.014534, 29.999662, 47.724297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854788, 29.884979, 47.703545>,  <31.544870, 30.223778, 48.122437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854788, 29.884979, 47.703545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495764, 29.857031, 47.529419>,  <31.280350, 29.840261, 47.424942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495764, 29.857031, 47.529419>,  <31.854788, 29.884979, 47.703545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495764, 29.857031, 47.529419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440000, -0.204649, -0.874367,
		-0.027993, -0.976338, 0.214429,
		-0.897561, -0.069873, -0.435318,
		31.226496, 29.836069, 47.398823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933239, 29.217140, 47.175156>,  <31.854788, 29.884979, 47.703545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933239, 29.217140, 47.175156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634686, 29.467688, 47.085197>,  <31.455553, 29.618015, 47.031223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634686, 29.467688, 47.085197>,  <31.933239, 29.217140, 47.175156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634686, 29.467688, 47.085197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381431, 0.125698, -0.915811,
		-0.545367, -0.769326, -0.332735,
		-0.746382, 0.626368, -0.224894,
		31.410770, 29.655598, 47.017731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646019, 28.940378, 46.506359>,  <31.933239, 29.217140, 47.175156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646019, 28.940378, 46.506359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570484, 29.332672, 46.526352>,  <31.525164, 29.568048, 46.538349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570484, 29.332672, 46.526352>,  <31.646019, 28.940378, 46.506359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570484, 29.332672, 46.526352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235162, 0.094582, -0.967344,
		-0.953436, -0.170914, -0.248492,
		-0.188835, 0.980736, 0.049985,
		31.513834, 29.626892, 46.541348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254396, 29.054386, 45.965755>,  <31.646019, 28.940378, 46.506359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254396, 29.054386, 45.965755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383280, 29.426188, 46.037537>,  <31.460609, 29.649269, 46.080605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383280, 29.426188, 46.037537>,  <31.254396, 29.054386, 45.965755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383280, 29.426188, 46.037537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158107, 0.134060, -0.978279,
		-0.933372, 0.343584, -0.103766,
		0.322210, 0.929504, 0.179451,
		31.479942, 29.705038, 46.091373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961767, 29.482895, 45.514870>,  <31.254396, 29.054386, 45.965755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961767, 29.482895, 45.514870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262495, 29.719748, 45.630898>,  <31.442932, 29.861860, 45.700516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262495, 29.719748, 45.630898>,  <30.961767, 29.482895, 45.514870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262495, 29.719748, 45.630898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198874, 0.215804, -0.955970,
		-0.628661, 0.776407, 0.044486,
		0.751821, 0.592133, 0.290074,
		31.488041, 29.897388, 45.717918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876791, 30.138924, 45.163441>,  <30.961767, 29.482895, 45.514870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876791, 30.138924, 45.163441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257620, 30.138575, 45.285789>,  <31.486116, 30.138365, 45.359200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257620, 30.138575, 45.285789>,  <30.876791, 30.138924, 45.163441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257620, 30.138575, 45.285789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291709, 0.303366, -0.907124,
		-0.091999, 0.952874, 0.289081,
		0.952072, -0.000873, 0.305871,
		31.543242, 30.138313, 45.377552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150097, 30.778263, 44.889023>,  <30.876791, 30.138924, 45.163441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150097, 30.778263, 44.889023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463118, 30.545444, 44.977417>,  <31.650930, 30.405752, 45.030453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463118, 30.545444, 44.977417>,  <31.150097, 30.778263, 44.889023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463118, 30.545444, 44.977417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521785, 0.419509, -0.742801,
		0.339641, 0.696585, 0.631991,
		0.782550, -0.582049, 0.220985,
		31.697882, 30.370831, 45.043713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704361, 31.253809, 44.795044>,  <31.150097, 30.778263, 44.889023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704361, 31.253809, 44.795044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811510, 30.869997, 44.760288>,  <31.875799, 30.639709, 44.739433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811510, 30.869997, 44.760288>,  <31.704361, 31.253809, 44.795044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811510, 30.869997, 44.760288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561271, 0.228719, -0.795401,
		0.783083, 0.164299, 0.599823,
		0.267874, -0.959528, -0.086890,
		31.891872, 30.582138, 44.734222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313801, 31.377995, 44.647747>,  <31.704361, 31.253809, 44.795044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313801, 31.377995, 44.647747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283165, 30.994604, 44.537868>,  <32.264782, 30.764570, 44.471943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283165, 30.994604, 44.537868>,  <32.313801, 31.377995, 44.647747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283165, 30.994604, 44.537868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532217, 0.193670, -0.824158,
		0.843136, -0.209323, 0.495284,
		-0.076594, -0.958476, -0.274695,
		32.260185, 30.707062, 44.455460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069016, 31.038622, 44.348778>,  <32.313801, 31.377995, 44.647747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069016, 31.038622, 44.348778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736435, 30.871225, 44.202602>,  <32.536884, 30.770786, 44.114895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736435, 30.871225, 44.202602>,  <33.069016, 31.038622, 44.348778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736435, 30.871225, 44.202602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356551, 0.102525, -0.928633,
		0.426094, -0.902415, 0.063970,
		-0.831454, -0.418493, -0.365442,
		32.487000, 30.745678, 44.092968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368626, 30.672264, 43.871052>,  <33.069016, 31.038622, 44.348778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368626, 30.672264, 43.871052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979561, 30.671373, 43.778164>,  <32.746120, 30.670839, 43.722431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979561, 30.671373, 43.778164>,  <33.368626, 30.672264, 43.871052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979561, 30.671373, 43.778164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227691, 0.187584, -0.955494,
		0.045689, -0.982246, -0.181949,
		-0.972661, -0.002227, -0.232219,
		32.687763, 30.670706, 43.708500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239231, 30.184521, 43.325104>,  <33.368626, 30.672264, 43.871052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239231, 30.184521, 43.325104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939381, 30.446682, 43.288219>,  <32.759468, 30.603979, 43.266090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939381, 30.446682, 43.288219>,  <33.239231, 30.184521, 43.325104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939381, 30.446682, 43.288219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106059, -0.018570, -0.994186,
		-0.653304, -0.755052, -0.055591,
		-0.749630, 0.655402, -0.092212,
		32.714493, 30.643303, 43.260555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817467, 29.873741, 42.862137>,  <33.239231, 30.184521, 43.325104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817467, 29.873741, 42.862137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702618, 30.256861, 42.856747>,  <32.633709, 30.486732, 42.853512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702618, 30.256861, 42.856747>,  <32.817467, 29.873741, 42.862137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702618, 30.256861, 42.856747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141647, 0.028536, -0.989506,
		-0.947364, -0.286015, -0.143863,
		-0.287119, 0.957800, -0.013479,
		32.616482, 30.544201, 42.852703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300819, 29.891706, 42.340755>,  <32.817467, 29.873741, 42.862137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300819, 29.891706, 42.340755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340103, 30.283190, 42.412853>,  <32.363674, 30.518080, 42.456112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340103, 30.283190, 42.412853>,  <32.300819, 29.891706, 42.340755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340103, 30.283190, 42.412853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173913, 0.195208, -0.965219,
		-0.979851, 0.063450, 0.189382,
		0.098212, 0.978707, 0.180240,
		32.369568, 30.576801, 42.466927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698635, 30.165264, 41.955803>,  <32.300819, 29.891706, 42.340755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698635, 30.165264, 41.955803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990160, 30.432083, 42.017616>,  <32.165073, 30.592175, 42.054703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990160, 30.432083, 42.017616>,  <31.698635, 30.165264, 41.955803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990160, 30.432083, 42.017616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042221, 0.181473, -0.982489,
		-0.683412, 0.722573, 0.104096,
		0.728811, 0.667050, 0.154529,
		32.208805, 30.632198, 42.063976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549307, 30.724072, 41.610081>,  <31.698635, 30.165264, 41.955803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549307, 30.724072, 41.610081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945051, 30.755320, 41.659172>,  <32.182499, 30.774069, 41.688625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945051, 30.755320, 41.659172>,  <31.549307, 30.724072, 41.610081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945051, 30.755320, 41.659172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107414, 0.176713, -0.978384,
		-0.098118, 0.981157, 0.166442,
		0.989361, 0.078119, 0.122729,
		32.241859, 30.778755, 41.695992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794056, 31.444139, 41.310116>,  <31.549307, 30.724072, 41.610081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794056, 31.444139, 41.310116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085903, 31.171110, 41.326859>,  <32.261009, 31.007292, 41.336903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085903, 31.171110, 41.326859>,  <31.794056, 31.444139, 41.310116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085903, 31.171110, 41.326859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343089, 0.312417, -0.885825,
		0.591566, 0.660672, 0.462128,
		0.729616, -0.682575, 0.041854,
		32.304787, 30.966337, 41.339417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386810, 31.793947, 41.124413>,  <31.794056, 31.444139, 41.310116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386810, 31.793947, 41.124413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451008, 31.405506, 41.053757>,  <32.489529, 31.172441, 41.011364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451008, 31.405506, 41.053757>,  <32.386810, 31.793947, 41.124413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451008, 31.405506, 41.053757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343565, 0.222732, -0.912334,
		0.925313, 0.085740, 0.369385,
		0.160497, -0.971102, -0.176640,
		32.499157, 31.114176, 41.000763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966297, 31.808449, 40.765717>,  <32.386810, 31.793947, 41.124413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966297, 31.808449, 40.765717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849224, 31.437584, 40.672153>,  <32.778980, 31.215065, 40.616016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849224, 31.437584, 40.672153>,  <32.966297, 31.808449, 40.765717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849224, 31.437584, 40.672153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284679, 0.149034, -0.946967,
		0.912850, -0.343747, 0.220324,
		-0.292681, -0.927161, -0.233904,
		32.761421, 31.159435, 40.601982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354820, 31.679260, 40.167152>,  <32.966297, 31.808449, 40.765717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354820, 31.679260, 40.167152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102764, 31.368746, 40.160198>,  <32.951530, 31.182436, 40.156025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102764, 31.368746, 40.160198>,  <33.354820, 31.679260, 40.167152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102764, 31.368746, 40.160198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022641, 0.040745, -0.998913,
		0.776153, -0.629060, -0.043251,
		-0.630138, -0.776289, -0.017382,
		32.913723, 31.135859, 40.154984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590031, 31.277721, 39.653046>,  <33.354820, 31.679260, 40.167152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590031, 31.277721, 39.653046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210320, 31.156742, 39.687454>,  <32.982494, 31.084154, 39.708099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210320, 31.156742, 39.687454>,  <33.590031, 31.277721, 39.653046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210320, 31.156742, 39.687454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065478, -0.077446, -0.994844,
		0.307551, -0.950014, 0.053714,
		-0.949276, -0.302449, 0.086024,
		32.925537, 31.066008, 39.713261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476429, 30.873390, 39.092823>,  <33.590031, 31.277721, 39.653046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476429, 30.873390, 39.092823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096886, 30.942232, 39.198689>,  <32.869160, 30.983538, 39.262207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096886, 30.942232, 39.198689>,  <33.476429, 30.873390, 39.092823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096886, 30.942232, 39.198689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267315, 0.008027, -0.963576,
		-0.167962, -0.985046, 0.038390,
		-0.948858, 0.172106, 0.264665,
		32.812229, 30.993864, 39.278088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085915, 30.382292, 38.552429>,  <33.476429, 30.873390, 39.092823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085915, 30.382292, 38.552429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862232, 30.678986, 38.700546>,  <32.728024, 30.857002, 38.789417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862232, 30.678986, 38.700546>,  <33.085915, 30.382292, 38.552429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862232, 30.678986, 38.700546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191536, 0.318985, -0.928204,
		-0.806600, -0.589981, -0.036309,
		-0.559205, 0.741735, 0.370296,
		32.694469, 30.901506, 38.811634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376556, 30.408312, 38.182091>,  <33.085915, 30.382292, 38.552429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376556, 30.408312, 38.182091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452400, 30.770067, 38.334999>,  <32.497906, 30.987122, 38.426743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452400, 30.770067, 38.334999>,  <32.376556, 30.408312, 38.182091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452400, 30.770067, 38.334999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119945, 0.407748, -0.905182,
		-0.974506, 0.125780, 0.185789,
		0.189609, 0.904390, 0.382267,
		32.509281, 31.041384, 38.449680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903725, 30.820724, 37.888638>,  <32.376556, 30.408312, 38.182091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903725, 30.820724, 37.888638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198673, 31.059879, 38.014378>,  <32.375641, 31.203373, 38.089821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198673, 31.059879, 38.014378>,  <31.903725, 30.820724, 37.888638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198673, 31.059879, 38.014378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130083, 0.330975, -0.934630,
		-0.662846, 0.730060, 0.166276,
		0.737369, 0.597886, 0.314354,
		32.419884, 31.239244, 38.108685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749767, 31.527426, 37.792557>,  <31.903725, 30.820724, 37.888638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749767, 31.527426, 37.792557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138683, 31.598005, 37.853905>,  <32.372032, 31.640352, 37.890713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138683, 31.598005, 37.853905>,  <31.749767, 31.527426, 37.792557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138683, 31.598005, 37.853905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070969, 0.402299, -0.912753,
		-0.222755, 0.898343, 0.378628,
		0.972288, 0.176449, 0.153369,
		32.430370, 31.650940, 37.899914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864494, 32.241756, 37.577976>,  <31.749767, 31.527426, 37.792557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864494, 32.241756, 37.577976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209259, 32.039703, 37.560322>,  <32.416119, 31.918470, 37.549728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209259, 32.039703, 37.560322>,  <31.864494, 32.241756, 37.577976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209259, 32.039703, 37.560322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163099, 0.358603, -0.919132,
		0.480113, 0.785011, 0.391470,
		0.861911, -0.505135, -0.044135,
		32.467831, 31.888163, 37.547081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376091, 32.738014, 37.169277>,  <31.864494, 32.241756, 37.577976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376091, 32.738014, 37.169277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500603, 32.359909, 37.130142>,  <32.575310, 32.133045, 37.106659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500603, 32.359909, 37.130142>,  <32.376091, 32.738014, 37.169277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500603, 32.359909, 37.130142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291519, 0.192974, -0.936898,
		0.904500, 0.263117, 0.335633,
		0.311282, -0.945268, -0.097841,
		32.593987, 32.076328, 37.100788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070591, 32.887272, 37.040356>,  <32.376091, 32.738014, 37.169277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070591, 32.887272, 37.040356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978535, 32.514130, 36.929497>,  <32.923302, 32.290245, 36.862984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978535, 32.514130, 36.929497>,  <33.070591, 32.887272, 37.040356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978535, 32.514130, 36.929497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436078, 0.155737, -0.886331,
		0.869983, -0.324839, 0.370958,
		-0.230143, -0.932859, -0.277143,
		32.909492, 32.234272, 36.846355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714783, 32.663456, 36.680603>,  <33.070591, 32.887272, 37.040356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714783, 32.663456, 36.680603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415142, 32.432281, 36.551094>,  <33.235355, 32.293575, 36.473389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415142, 32.432281, 36.551094>,  <33.714783, 32.663456, 36.680603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415142, 32.432281, 36.551094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278062, 0.169286, -0.945528,
		0.601268, -0.798328, 0.033890,
		-0.749105, -0.577940, -0.323771,
		33.190411, 32.258900, 36.453964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952648, 32.348610, 36.092216>,  <33.714783, 32.663456, 36.680603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952648, 32.348610, 36.092216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557377, 32.306061, 36.048069>,  <33.320213, 32.280533, 36.021580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557377, 32.306061, 36.048069>,  <33.952648, 32.348610, 36.092216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557377, 32.306061, 36.048069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101464, 0.085774, -0.991135,
		0.114902, -0.990619, -0.073967,
		-0.988182, -0.106378, -0.110368,
		33.260921, 32.274151, 36.014957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838959, 31.780882, 35.508389>,  <33.952648, 32.348610, 36.092216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838959, 31.780882, 35.508389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507885, 32.004932, 35.522251>,  <33.309242, 32.139362, 35.530571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507885, 32.004932, 35.522251>,  <33.838959, 31.780882, 35.508389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507885, 32.004932, 35.522251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053592, -0.017414, -0.998411,
		-0.558635, -0.828223, 0.044431,
		-0.827681, 0.560128, 0.034658,
		33.259583, 32.172970, 35.532650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372765, 31.490313, 35.051601>,  <33.838959, 31.780882, 35.508389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372765, 31.490313, 35.051601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243019, 31.868544, 35.061962>,  <33.165173, 32.095482, 35.068176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243019, 31.868544, 35.061962>,  <33.372765, 31.490313, 35.051601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243019, 31.868544, 35.061962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370590, -0.101838, -0.923197,
		-0.870318, -0.309047, 0.383454,
		-0.324361, 0.945579, 0.025898,
		33.145710, 32.152218, 35.069733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831665, 30.897226, 35.449951>,  <33.372765, 31.490313, 35.051601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831665, 30.897226, 35.449951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222988, 30.862865, 35.374542>,  <34.457783, 30.842249, 35.329296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222988, 30.862865, 35.374542>,  <33.831665, 30.897226, 35.449951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222988, 30.862865, 35.374542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132048, -0.442645, 0.886921,
		-0.159640, -0.892572, -0.421698,
		0.978304, -0.085903, -0.188527,
		34.516479, 30.837095, 35.317986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076679, 30.168793, 35.536594>,  <33.831665, 30.897226, 35.449951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076679, 30.168793, 35.536594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400063, 30.400997, 35.575378>,  <34.594093, 30.540319, 35.598648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400063, 30.400997, 35.575378>,  <34.076679, 30.168793, 35.536594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400063, 30.400997, 35.575378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348804, -0.605276, 0.715525,
		0.474057, -0.544653, -0.691826,
		0.808459, 0.580511, 0.096958,
		34.642601, 30.575150, 35.604465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611420, 29.683336, 35.620098>,  <34.076679, 30.168793, 35.536594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611420, 29.683336, 35.620098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750999, 30.038771, 35.739193>,  <34.834747, 30.252031, 35.810650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750999, 30.038771, 35.739193>,  <34.611420, 29.683336, 35.620098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750999, 30.038771, 35.739193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507601, -0.446283, 0.737003,
		0.787767, -0.106042, -0.606777,
		0.348948, 0.888587, 0.297740,
		34.855682, 30.305347, 35.828514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330795, 29.513275, 35.796558>,  <34.611420, 29.683336, 35.620098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330795, 29.513275, 35.796558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217171, 29.838751, 35.999424>,  <35.148994, 30.034037, 36.121143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217171, 29.838751, 35.999424>,  <35.330795, 29.513275, 35.796558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217171, 29.838751, 35.999424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418165, -0.370862, 0.829216,
		0.862813, 0.447629, -0.234908,
		-0.284063, 0.813689, 0.507167,
		35.131950, 30.082857, 36.151573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847946, 29.637980, 36.286266>,  <35.330795, 29.513275, 35.796558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847946, 29.637980, 36.286266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561359, 29.866642, 36.446209>,  <35.389408, 30.003839, 36.542175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561359, 29.866642, 36.446209>,  <35.847946, 29.637980, 36.286266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561359, 29.866642, 36.446209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335566, -0.220106, 0.915942,
		0.611614, 0.790419, -0.034130,
		-0.716466, 0.571656, 0.399858,
		35.346420, 30.038139, 36.566166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175140, 29.994331, 36.890079>,  <35.847946, 29.637980, 36.286266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175140, 29.994331, 36.890079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782646, 30.009804, 36.965630>,  <35.547150, 30.019087, 37.010960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782646, 30.009804, 36.965630>,  <36.175140, 29.994331, 36.890079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782646, 30.009804, 36.965630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180480, -0.160207, 0.970443,
		0.067799, 0.986325, 0.150220,
		-0.981239, 0.038683, 0.188874,
		35.488274, 30.021408, 37.022293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097370, 30.492804, 37.399334>,  <36.175140, 29.994331, 36.890079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097370, 30.492804, 37.399334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774052, 30.257296, 37.399658>,  <35.580059, 30.115990, 37.399853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774052, 30.257296, 37.399658>,  <36.097370, 30.492804, 37.399334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774052, 30.257296, 37.399658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130528, -0.177856, 0.975361,
		-0.574121, 0.788490, 0.220612,
		-0.808299, -0.588771, 0.000809,
		35.531563, 30.080664, 37.399902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603065, 30.745203, 37.923626>,  <36.097370, 30.492804, 37.399334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603065, 30.745203, 37.923626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530556, 30.356882, 37.860783>,  <35.487049, 30.123890, 37.823078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530556, 30.356882, 37.860783>,  <35.603065, 30.745203, 37.923626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530556, 30.356882, 37.860783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047354, -0.150949, 0.987407,
		-0.982292, 0.186428, -0.018609,
		-0.181271, -0.970803, -0.157104,
		35.476173, 30.065641, 37.813652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976601, 30.670835, 38.294231>,  <35.603065, 30.745203, 37.923626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976601, 30.670835, 38.294231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155369, 30.316504, 38.244328>,  <35.262630, 30.103905, 38.214386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155369, 30.316504, 38.244328>,  <34.976601, 30.670835, 38.294231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155369, 30.316504, 38.244328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100579, -0.188339, 0.976940,
		-0.888901, -0.424066, -0.173268,
		0.446921, -0.885831, -0.124762,
		35.289444, 30.050755, 38.206898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617321, 30.262302, 38.639595>,  <34.976601, 30.670835, 38.294231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617321, 30.262302, 38.639595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953236, 30.047880, 38.605186>,  <35.154785, 29.919228, 38.584541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953236, 30.047880, 38.605186>,  <34.617321, 30.262302, 38.639595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953236, 30.047880, 38.605186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089019, -0.292265, 0.952185,
		-0.535565, -0.791976, -0.293160,
		0.839789, -0.536054, -0.086026,
		35.205173, 29.887064, 38.579380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443142, 29.559235, 38.799294>,  <34.617321, 30.262302, 38.639595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443142, 29.559235, 38.799294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834976, 29.583597, 38.875927>,  <35.070076, 29.598215, 38.921909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834976, 29.583597, 38.875927>,  <34.443142, 29.559235, 38.799294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834976, 29.583597, 38.875927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154728, -0.380021, 0.911945,
		0.128350, -0.922970, -0.362838,
		0.979584, 0.060907, 0.191586,
		35.128853, 29.601870, 38.933403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582291, 28.922722, 39.109272>,  <34.443142, 29.559235, 38.799294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582291, 28.922722, 39.109272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895260, 29.154593, 39.200302>,  <35.083042, 29.293715, 39.254921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895260, 29.154593, 39.200302>,  <34.582291, 28.922722, 39.109272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895260, 29.154593, 39.200302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059076, -0.432880, 0.899514,
		0.619941, -0.690354, -0.372940,
		0.782421, 0.579677, 0.227577,
		35.129986, 29.328495, 39.268574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139530, 28.556463, 39.370617>,  <34.582291, 28.922722, 39.109272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139530, 28.556463, 39.370617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252121, 28.909119, 39.522137>,  <35.319675, 29.120712, 39.613049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252121, 28.909119, 39.522137>,  <35.139530, 28.556463, 39.370617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252121, 28.909119, 39.522137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078099, -0.414495, 0.906694,
		0.956385, -0.225627, -0.185524,
		0.281473, 0.881638, 0.378796,
		35.336563, 29.173611, 39.635777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709946, 28.416901, 39.799812>,  <35.139530, 28.556463, 39.370617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709946, 28.416901, 39.799812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530434, 28.755590, 39.914112>,  <35.422726, 28.958805, 39.982693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530434, 28.755590, 39.914112>,  <35.709946, 28.416901, 39.799812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530434, 28.755590, 39.914112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024844, -0.307815, 0.951122,
		0.893297, 0.433944, 0.117105,
		-0.448780, 0.846725, 0.285751,
		35.395798, 29.009607, 39.999836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075672, 28.564367, 40.383190>,  <35.709946, 28.416901, 39.799812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075672, 28.564367, 40.383190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746063, 28.783539, 40.440823>,  <35.548298, 28.915041, 40.475403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746063, 28.783539, 40.440823>,  <36.075672, 28.564367, 40.383190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746063, 28.783539, 40.440823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071601, -0.151554, 0.985852,
		0.562011, 0.822683, 0.085652,
		-0.824025, 0.547927, 0.144080,
		35.498856, 28.947916, 40.484047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195942, 29.027134, 40.948853>,  <36.075672, 28.564367, 40.383190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195942, 29.027134, 40.948853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797592, 28.999081, 40.925838>,  <35.558582, 28.982248, 40.912029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797592, 28.999081, 40.925838>,  <36.195942, 29.027134, 40.948853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797592, 28.999081, 40.925838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057914, 0.003399, 0.998316,
		-0.069818, 0.997532, -0.007447,
		-0.995877, -0.070132, -0.057534,
		35.498829, 28.978041, 40.908577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954292, 29.547213, 41.417019>,  <36.195942, 29.027134, 40.948853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954292, 29.547213, 41.417019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653084, 29.289841, 41.361946>,  <35.472359, 29.135418, 41.328903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653084, 29.289841, 41.361946>,  <35.954292, 29.547213, 41.417019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653084, 29.289841, 41.361946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279798, 0.123733, 0.952052,
		-0.595542, 0.755440, -0.273204,
		-0.753023, -0.643429, -0.137683,
		35.427177, 29.096811, 41.320641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592373, 29.792200, 42.042164>,  <35.954292, 29.547213, 41.417019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592373, 29.792200, 42.042164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372917, 29.481937, 41.917358>,  <35.241245, 29.295780, 41.842476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372917, 29.481937, 41.917358>,  <35.592373, 29.792200, 42.042164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372917, 29.481937, 41.917358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493838, -0.000483, 0.869554,
		-0.674625, 0.631157, -0.382783,
		-0.548640, -0.775655, -0.312015,
		35.208324, 29.249241, 41.823753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832500, 29.922602, 42.019188>,  <35.592373, 29.792200, 42.042164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832500, 29.922602, 42.019188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867672, 29.524622, 42.038540>,  <34.888775, 29.285833, 42.050152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867672, 29.524622, 42.038540>,  <34.832500, 29.922602, 42.019188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867672, 29.524622, 42.038540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545985, -0.007516, 0.837761,
		-0.833168, -0.100075, -0.543890,
		0.087927, -0.994951, 0.048377,
		34.894051, 29.226137, 42.053055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150665, 29.646582, 42.219940>,  <34.832500, 29.922602, 42.019188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150665, 29.646582, 42.219940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382805, 29.336714, 42.320404>,  <34.522087, 29.150793, 42.380680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382805, 29.336714, 42.320404>,  <34.150665, 29.646582, 42.219940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382805, 29.336714, 42.320404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571178, -0.167371, 0.803581,
		-0.580475, -0.609812, -0.539609,
		0.580349, -0.774671, 0.251156,
		34.556911, 29.104313, 42.395752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659199, 29.154070, 42.526306>,  <34.150665, 29.646582, 42.219940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659199, 29.154070, 42.526306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020302, 29.031094, 42.646645>,  <34.236965, 28.957308, 42.718849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020302, 29.031094, 42.646645>,  <33.659199, 29.154070, 42.526306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020302, 29.031094, 42.646645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351700, -0.124871, 0.927747,
		-0.247663, -0.943337, -0.220856,
		0.902757, -0.307444, 0.300845,
		34.291130, 28.938862, 42.736897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576378, 28.614418, 43.009754>,  <33.659199, 29.154070, 42.526306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576378, 28.614418, 43.009754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947117, 28.734514, 43.099922>,  <34.169559, 28.806572, 43.154022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947117, 28.734514, 43.099922>,  <33.576378, 28.614418, 43.009754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947117, 28.734514, 43.099922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190672, -0.140806, 0.971503,
		0.323425, -0.943414, -0.073258,
		0.926844, 0.300240, 0.225423,
		34.225170, 28.824587, 43.167549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867508, 28.034250, 43.380917>,  <33.576378, 28.614418, 43.009754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867508, 28.034250, 43.380917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034252, 28.389744, 43.457211>,  <34.134300, 28.603041, 43.502987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034252, 28.389744, 43.457211>,  <33.867508, 28.034250, 43.380917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034252, 28.389744, 43.457211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237561, -0.096019, 0.966615,
		0.877378, -0.448253, 0.171103,
		0.416859, 0.888735, 0.190733,
		34.159309, 28.656364, 43.514431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188244, 27.935223, 44.035259>,  <33.867508, 28.034250, 43.380917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188244, 27.935223, 44.035259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185295, 28.334866, 44.018604>,  <34.183525, 28.574652, 44.008610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185295, 28.334866, 44.018604>,  <34.188244, 27.935223, 44.035259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185295, 28.334866, 44.018604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296766, 0.037579, 0.954211,
		0.954922, 0.019391, 0.296223,
		-0.007371, 0.999105, -0.041640,
		34.183083, 28.634598, 44.006111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525375, 28.237989, 44.640034>,  <34.188244, 27.935223, 44.035259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525375, 28.237989, 44.640034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324242, 28.559940, 44.513969>,  <34.203560, 28.753111, 44.438332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324242, 28.559940, 44.513969>,  <34.525375, 28.237989, 44.640034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324242, 28.559940, 44.513969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043491, 0.340588, 0.939206,
		0.863286, 0.485976, -0.136256,
		-0.502839, 0.804877, -0.315160,
		34.173389, 28.801403, 44.419422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918453, 28.786060, 44.891071>,  <34.525375, 28.237989, 44.640034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918453, 28.786060, 44.891071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540176, 28.899109, 44.826832>,  <34.313210, 28.966938, 44.788288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540176, 28.899109, 44.826832>,  <34.918453, 28.786060, 44.891071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540176, 28.899109, 44.826832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034175, 0.577748, 0.815499,
		0.323263, 0.765722, -0.556031,
		-0.945692, 0.282623, -0.160596,
		34.256470, 28.983896, 44.778652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901833, 29.495337, 45.136879>,  <34.918453, 28.786060, 44.891071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901833, 29.495337, 45.136879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519920, 29.376423, 45.138134>,  <34.290771, 29.305075, 45.138885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519920, 29.376423, 45.138134>,  <34.901833, 29.495337, 45.136879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519920, 29.376423, 45.138134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158741, 0.518677, 0.840104,
		-0.251377, 0.801620, -0.542416,
		-0.954783, -0.297286, 0.003134,
		34.233486, 29.287237, 45.139072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551659, 30.029068, 45.289303>,  <34.901833, 29.495337, 45.136879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551659, 30.029068, 45.289303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276459, 29.749941, 45.369011>,  <34.111340, 29.582464, 45.416836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276459, 29.749941, 45.369011>,  <34.551659, 30.029068, 45.289303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276459, 29.749941, 45.369011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151157, 0.406354, 0.901126,
		-0.709797, 0.589851, -0.385051,
		-0.687997, -0.697819, 0.199268,
		34.070061, 29.540594, 45.428791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092258, 30.469719, 45.698925>,  <34.551659, 30.029068, 45.289303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092258, 30.469719, 45.698925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997101, 30.088614, 45.774445>,  <33.940006, 29.859949, 45.819756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997101, 30.088614, 45.774445>,  <34.092258, 30.469719, 45.698925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997101, 30.088614, 45.774445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114402, 0.220512, 0.968652,
		-0.964531, 0.208836, -0.161456,
		-0.237893, -0.952765, 0.188799,
		33.925732, 29.802784, 45.831085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355808, 30.415934, 46.125256>,  <34.092258, 30.469719, 45.698925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355808, 30.415934, 46.125256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556274, 30.077982, 46.200096>,  <33.676556, 29.875210, 46.245003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556274, 30.077982, 46.200096>,  <33.355808, 30.415934, 46.125256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556274, 30.077982, 46.200096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146947, 0.129986, 0.980566,
		-0.852782, -0.518923, -0.059008,
		0.501168, -0.844880, 0.187103,
		33.706623, 29.824518, 46.256226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977303, 29.992243, 46.598778>,  <33.355808, 30.415934, 46.125256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977303, 29.992243, 46.598778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349380, 29.851524, 46.640694>,  <33.572628, 29.767094, 46.665844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349380, 29.851524, 46.640694>,  <32.977303, 29.992243, 46.598778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349380, 29.851524, 46.640694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088920, 0.061027, 0.994167,
		-0.356138, -0.934086, 0.025485,
		0.930193, -0.351795, 0.104793,
		33.628437, 29.745985, 46.672131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975998, 29.506264, 47.024502>,  <32.977303, 29.992243, 46.598778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975998, 29.506264, 47.024502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362144, 29.593449, 47.081848>,  <33.593834, 29.645760, 47.116257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362144, 29.593449, 47.081848>,  <32.975998, 29.506264, 47.024502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362144, 29.593449, 47.081848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131635, -0.067507, 0.988997,
		0.225245, -0.973619, -0.036478,
		0.965369, 0.217965, 0.143368,
		33.651756, 29.658838, 47.124859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161129, 28.971107, 47.490429>,  <32.975998, 29.506264, 47.024502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161129, 28.971107, 47.490429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424614, 29.271124, 47.514229>,  <33.582703, 29.451134, 47.528507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424614, 29.271124, 47.514229>,  <33.161129, 28.971107, 47.490429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424614, 29.271124, 47.514229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052225, -0.124463, 0.990849,
		0.750583, -0.649574, -0.121156,
		0.658709, 0.750042, 0.059496,
		33.622227, 29.496136, 47.532078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408001, 28.980755, 48.066822>,  <33.161129, 28.971107, 47.490429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408001, 28.980755, 48.066822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568455, 29.342083, 48.006031>,  <33.664726, 29.558880, 47.969555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568455, 29.342083, 48.006031>,  <33.408001, 28.980755, 48.066822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568455, 29.342083, 48.006031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182611, 0.083725, 0.979614,
		0.897632, -0.420712, -0.131371,
		0.401136, 0.903323, -0.151981,
		33.688797, 29.613079, 47.960438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074947, 28.928444, 48.407871>,  <33.408001, 28.980755, 48.066822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074947, 28.928444, 48.407871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970013, 29.311142, 48.357559>,  <33.907051, 29.540760, 48.327370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970013, 29.311142, 48.357559>,  <34.074947, 28.928444, 48.407871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970013, 29.311142, 48.357559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092953, 0.154797, 0.983564,
		0.960490, 0.246331, -0.129541,
		-0.262335, 0.956744, -0.125784,
		33.891312, 29.598166, 48.319824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501686, 29.344690, 48.868645>,  <34.074947, 28.928444, 48.407871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501686, 29.344690, 48.868645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217442, 29.612917, 48.783447>,  <34.046894, 29.773853, 48.732330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217442, 29.612917, 48.783447>,  <34.501686, 29.344690, 48.868645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217442, 29.612917, 48.783447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027852, 0.329299, 0.943815,
		0.703030, 0.664756, -0.252682,
		-0.710614, 0.670568, -0.212992,
		34.004257, 29.814087, 48.719551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716461, 29.933708, 49.050007>,  <34.501686, 29.344690, 48.868645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716461, 29.933708, 49.050007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316887, 29.947618, 49.062088>,  <34.077141, 29.955965, 49.069336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316887, 29.947618, 49.062088>,  <34.716461, 29.933708, 49.050007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316887, 29.947618, 49.062088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041251, 0.383600, 0.922578,
		0.020495, 0.922844, -0.384627,
		-0.998939, 0.034775, 0.030206,
		34.017204, 29.958052, 49.071152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701271, 30.425833, 49.555092>,  <34.716461, 29.933708, 49.050007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701271, 30.425833, 49.555092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326744, 30.290272, 49.518295>,  <34.102028, 30.208935, 49.496216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326744, 30.290272, 49.518295>,  <34.701271, 30.425833, 49.555092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326744, 30.290272, 49.518295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091322, -0.017970, 0.995659,
		-0.339083, 0.940651, -0.014123,
		-0.936314, -0.338901, -0.091995,
		34.045849, 30.188602, 49.490696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857071, 30.772678, 50.223354>,  <34.701271, 30.425833, 49.555092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857071, 30.772678, 50.223354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093369, 31.086700, 50.297874>,  <35.235146, 31.275114, 50.342587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093369, 31.086700, 50.297874>,  <34.857071, 30.772678, 50.223354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093369, 31.086700, 50.297874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342784, -0.035164, -0.938756,
		-0.730426, 0.618425, -0.289878,
		0.590743, 0.785057, 0.186302,
		35.270592, 31.322218, 50.353764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598965, 31.307682, 49.741592>,  <34.857071, 30.772678, 50.223354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598965, 31.307682, 49.741592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973003, 31.387506, 49.858742>,  <35.197426, 31.435402, 49.929031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973003, 31.387506, 49.858742>,  <34.598965, 31.307682, 49.741592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973003, 31.387506, 49.858742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266970, 0.146832, -0.952453,
		-0.233076, 0.968822, 0.084025,
		0.935095, 0.199562, 0.292869,
		35.253532, 31.447374, 49.946602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810001, 31.949232, 49.497547>,  <34.598965, 31.307682, 49.741592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810001, 31.949232, 49.497547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166237, 31.772907, 49.542347>,  <35.379978, 31.667112, 49.569229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166237, 31.772907, 49.542347>,  <34.810001, 31.949232, 49.497547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166237, 31.772907, 49.542347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286745, 0.353039, -0.890585,
		0.353039, 0.825257, 0.440811,
		0.890585, -0.440811, 0.112002,
		35.433411, 31.640663, 49.575947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257736, 32.411987, 49.270882>,  <34.810001, 31.949232, 49.497547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257736, 32.411987, 49.270882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572548, 32.165459, 49.260056>,  <35.761436, 32.017540, 49.253559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572548, 32.165459, 49.260056>,  <35.257736, 32.411987, 49.270882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572548, 32.165459, 49.260056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279155, 0.394912, -0.875281,
		0.550144, 0.681316, 0.482857,
		0.787029, -0.616322, -0.027065,
		35.808655, 31.980562, 49.251934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919800, 32.768505, 49.116016>,  <35.257736, 32.411987, 49.270882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919800, 32.768505, 49.116016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966187, 32.385929, 49.008858>,  <35.994019, 32.156384, 48.944561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966187, 32.385929, 49.008858>,  <35.919800, 32.768505, 49.116016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966187, 32.385929, 49.008858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351788, 0.291787, -0.889441,
		0.928868, 0.008903, 0.370303,
		0.115969, -0.956442, -0.267900,
		36.000977, 32.098995, 48.928486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609005, 32.718784, 48.867687>,  <35.919800, 32.768505, 49.116016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609005, 32.718784, 48.867687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420776, 32.402020, 48.712029>,  <36.307838, 32.211960, 48.618633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420776, 32.402020, 48.712029>,  <36.609005, 32.718784, 48.867687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420776, 32.402020, 48.712029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474795, 0.144482, -0.868156,
		0.743730, -0.593294, 0.308007,
		-0.470570, -0.791913, -0.389149,
		36.279606, 32.164444, 48.595284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012829, 32.447929, 48.385231>,  <36.609005, 32.718784, 48.867687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012829, 32.447929, 48.385231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676025, 32.262402, 48.275040>,  <36.473942, 32.151085, 48.208923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676025, 32.262402, 48.275040>,  <37.012829, 32.447929, 48.385231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676025, 32.262402, 48.275040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315912, -0.010005, -0.948736,
		0.437285, -0.885874, 0.154951,
		-0.842010, -0.463819, -0.275483,
		36.423424, 32.123257, 48.192394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143318, 31.852798, 47.939949>,  <37.012829, 32.447929, 48.385231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143318, 31.852798, 47.939949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769325, 31.948257, 47.834995>,  <36.544930, 32.005531, 47.772022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769325, 31.948257, 47.834995>,  <37.143318, 31.852798, 47.939949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769325, 31.948257, 47.834995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251299, -0.076328, -0.964895,
		-0.250299, -0.968102, 0.011394,
		-0.934986, 0.238650, -0.262388,
		36.488831, 32.019852, 47.756279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034046, 31.463726, 47.299156>,  <37.143318, 31.852798, 47.939949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034046, 31.463726, 47.299156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711475, 31.700226, 47.295094>,  <36.517933, 31.842125, 47.292656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711475, 31.700226, 47.295094>,  <37.034046, 31.463726, 47.299156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711475, 31.700226, 47.295094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050177, -0.085536, -0.995071,
		-0.589204, -0.801940, 0.098646,
		-0.806424, 0.591250, -0.010159,
		36.469547, 31.877602, 47.292046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467857, 31.127275, 46.899590>,  <37.034046, 31.463726, 47.299156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467857, 31.127275, 46.899590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384636, 31.517082, 46.866039>,  <36.334705, 31.750965, 46.845909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384636, 31.517082, 46.866039>,  <36.467857, 31.127275, 46.899590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384636, 31.517082, 46.866039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173101, -0.121084, -0.977433,
		-0.962679, -0.188837, 0.193882,
		-0.208051, 0.974515, -0.083877,
		36.322220, 31.809437, 46.840878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763435, 31.207468, 46.496552>,  <36.467857, 31.127275, 46.899590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763435, 31.207468, 46.496552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926537, 31.569796, 46.450550>,  <36.024399, 31.787193, 46.422947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926537, 31.569796, 46.450550>,  <35.763435, 31.207468, 46.496552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926537, 31.569796, 46.450550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092106, -0.084506, -0.992157,
		-0.908435, 0.415147, 0.048974,
		0.407752, 0.905821, -0.115006,
		36.048862, 31.841541, 46.416050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398197, 31.445923, 45.972736>,  <35.763435, 31.207468, 46.496552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398197, 31.445923, 45.972736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724537, 31.677130, 45.979412>,  <35.920341, 31.815853, 45.983418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724537, 31.677130, 45.979412>,  <35.398197, 31.445923, 45.972736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724537, 31.677130, 45.979412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056780, 0.108801, -0.992441,
		-0.575464, 0.808739, 0.121586,
		0.815854, 0.578017, 0.016690,
		35.969292, 31.850534, 45.984421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227680, 31.942497, 45.511314>,  <35.398197, 31.445923, 45.972736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227680, 31.942497, 45.511314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623978, 31.963490, 45.561398>,  <35.861755, 31.976086, 45.591446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623978, 31.963490, 45.561398>,  <35.227680, 31.942497, 45.511314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623978, 31.963490, 45.561398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131003, -0.127592, -0.983137,
		-0.035621, 0.990437, -0.133286,
		0.990742, 0.052481, 0.125205,
		35.921200, 31.979235, 45.598961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462246, 32.454796, 44.961205>,  <35.227680, 31.942497, 45.511314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462246, 32.454796, 44.961205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800533, 32.264572, 45.058044>,  <36.003506, 32.150440, 45.116146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800533, 32.264572, 45.058044>,  <35.462246, 32.454796, 44.961205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800533, 32.264572, 45.058044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211285, -0.118194, -0.970252,
		0.490024, 0.871709, 0.000520,
		0.845716, -0.475557, 0.242096,
		36.054249, 32.121906, 45.130672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047672, 32.717216, 44.581810>,  <35.462246, 32.454796, 44.961205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047672, 32.717216, 44.581810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142246, 32.338062, 44.667236>,  <36.198990, 32.110569, 44.718491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142246, 32.338062, 44.667236>,  <36.047672, 32.717216, 44.581810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142246, 32.338062, 44.667236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100449, -0.194774, -0.975691,
		0.966442, 0.252137, 0.049163,
		0.236432, -0.947887, 0.213565,
		36.213177, 32.053696, 44.731304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548996, 32.549431, 43.989555>,  <36.047672, 32.717216, 44.581810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548996, 32.549431, 43.989555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447765, 32.213947, 44.182438>,  <36.387028, 32.012657, 44.298168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447765, 32.213947, 44.182438>,  <36.548996, 32.549431, 43.989555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447765, 32.213947, 44.182438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020974, -0.503071, -0.863991,
		0.967220, -0.208539, 0.144905,
		-0.253073, -0.838708, 0.482207,
		36.371845, 31.962336, 44.327099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064774, 32.064365, 43.845058>,  <36.548996, 32.549431, 43.989555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064774, 32.064365, 43.845058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724567, 31.879507, 43.945496>,  <36.520443, 31.768591, 44.005756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724567, 31.879507, 43.945496>,  <37.064774, 32.064365, 43.845058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724567, 31.879507, 43.945496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079679, -0.358677, -0.930055,
		0.519886, -0.811029, 0.268235,
		-0.850512, -0.462150, 0.251093,
		36.469414, 31.740862, 44.020824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151989, 31.410801, 43.566730>,  <37.064774, 32.064365, 43.845058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151989, 31.410801, 43.566730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757645, 31.452070, 43.619541>,  <36.521038, 31.476831, 43.651230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757645, 31.452070, 43.619541>,  <37.151989, 31.410801, 43.566730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757645, 31.452070, 43.619541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164202, -0.437904, -0.883899,
		-0.033379, -0.893082, 0.448654,
		-0.985862, 0.103174, 0.132029,
		36.461887, 31.483023, 43.659149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799152, 30.701767, 43.398396>,  <37.151989, 31.410801, 43.566730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799152, 30.701767, 43.398396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502705, 30.969200, 43.373943>,  <36.324837, 31.129660, 43.359272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502705, 30.969200, 43.373943>,  <36.799152, 30.701767, 43.398396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502705, 30.969200, 43.373943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170160, -0.275130, -0.946229,
		-0.649452, -0.690867, 0.317671,
		-0.741119, 0.668584, -0.061126,
		36.280369, 31.169775, 43.355606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362854, 30.358664, 42.965141>,  <36.799152, 30.701767, 43.398396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362854, 30.358664, 42.965141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212467, 30.728983, 42.949406>,  <36.122234, 30.951174, 42.939964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212467, 30.728983, 42.949406>,  <36.362854, 30.358664, 42.965141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212467, 30.728983, 42.949406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170922, -0.111009, -0.979011,
		-0.910732, -0.361356, 0.199974,
		-0.375970, 0.925796, -0.039336,
		36.099674, 31.006721, 42.937607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689644, 30.384794, 42.492702>,  <36.362854, 30.358664, 42.965141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689644, 30.384794, 42.492702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844318, 30.753063, 42.513996>,  <35.937122, 30.974024, 42.526772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844318, 30.753063, 42.513996>,  <35.689644, 30.384794, 42.492702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844318, 30.753063, 42.513996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079659, 0.090850, -0.992673,
		-0.918763, 0.379615, 0.108471,
		0.386689, 0.920673, 0.053230,
		35.960323, 31.029264, 42.529964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213997, 30.846128, 42.190216>,  <35.689644, 30.384794, 42.492702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213997, 30.846128, 42.190216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577328, 31.013218, 42.181828>,  <35.795326, 31.113472, 42.176792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577328, 31.013218, 42.181828>,  <35.213997, 30.846128, 42.190216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577328, 31.013218, 42.181828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103653, 0.176236, -0.978875,
		-0.405203, 0.891318, 0.203379,
		0.908332, 0.417724, -0.020976,
		35.849827, 31.138535, 42.175533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116627, 31.370825, 41.649605>,  <35.213997, 30.846128, 42.190216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116627, 31.370825, 41.649605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512150, 31.326437, 41.689514>,  <35.749462, 31.299805, 41.713459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512150, 31.326437, 41.689514>,  <35.116627, 31.370825, 41.649605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512150, 31.326437, 41.689514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091497, -0.077327, -0.992798,
		0.117884, 0.990811, -0.066308,
		0.988803, -0.110968, 0.099772,
		35.808792, 31.293146, 41.719444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431419, 31.993864, 41.105484>,  <35.116627, 31.370825, 41.649605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431419, 31.993864, 41.105484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743320, 31.762552, 41.201473>,  <35.930462, 31.623766, 41.259068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743320, 31.762552, 41.201473>,  <35.431419, 31.993864, 41.105484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743320, 31.762552, 41.201473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375297, 0.124915, -0.918449,
		0.501142, 0.806220, 0.314429,
		0.779749, -0.578277, 0.239972,
		35.977245, 31.589069, 41.273464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979980, 32.294636, 40.833988>,  <35.431419, 31.993864, 41.105484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979980, 32.294636, 40.833988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149685, 31.938839, 40.901886>,  <36.251507, 31.725361, 40.942623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149685, 31.938839, 40.901886>,  <35.979980, 32.294636, 40.833988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149685, 31.938839, 40.901886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617772, 0.147253, -0.772447,
		0.662088, 0.432579, 0.611976,
		0.424260, -0.889490, 0.169741,
		36.276962, 31.671991, 40.952808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690762, 32.369335, 40.831158>,  <35.979980, 32.294636, 40.833988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690762, 32.369335, 40.831158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633717, 31.984560, 40.737915>,  <36.599491, 31.753695, 40.681969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633717, 31.984560, 40.737915>,  <36.690762, 32.369335, 40.831158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633717, 31.984560, 40.737915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467689, 0.142071, -0.872400,
		0.872313, -0.233432, 0.429627,
		-0.142608, -0.961939, -0.233104,
		36.590935, 31.695978, 40.667984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379700, 32.140724, 40.684486>,  <36.690762, 32.369335, 40.831158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379700, 32.140724, 40.684486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168896, 31.831482, 40.543308>,  <37.042412, 31.645937, 40.458603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168896, 31.831482, 40.543308>,  <37.379700, 32.140724, 40.684486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168896, 31.831482, 40.543308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588820, -0.032692, -0.807603,
		0.612824, -0.633434, 0.472449,
		-0.527008, -0.773106, -0.352945,
		37.010792, 31.599550, 40.437424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846142, 31.503124, 40.612148>,  <37.379700, 32.140724, 40.684486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846142, 31.503124, 40.612148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540939, 31.453133, 40.358471>,  <37.357819, 31.423138, 40.206264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540939, 31.453133, 40.358471>,  <37.846142, 31.503124, 40.612148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540939, 31.453133, 40.358471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646386, -0.148346, -0.748451,
		-0.000540, -0.981007, 0.193973,
		-0.763011, -0.124977, -0.634189,
		37.312035, 31.415640, 40.168213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817497, 30.772627, 40.267582>,  <37.846142, 31.503124, 40.612148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817497, 30.772627, 40.267582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664417, 31.070337, 40.048641>,  <37.572571, 31.248962, 39.917278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664417, 31.070337, 40.048641>,  <37.817497, 30.772627, 40.267582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664417, 31.070337, 40.048641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601995, -0.248524, -0.758840,
		-0.700816, -0.619912, -0.352939,
		-0.382701, 0.744275, -0.547353,
		37.549606, 31.293619, 39.884434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049538, 30.742887, 39.636623>,  <37.817497, 30.772627, 40.267582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049538, 30.742887, 39.636623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872925, 31.070406, 39.489857>,  <37.766956, 31.266916, 39.401798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872925, 31.070406, 39.489857>,  <38.049538, 30.742887, 39.636623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872925, 31.070406, 39.489857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710757, 0.069592, -0.699987,
		-0.547611, -0.569853, -0.612691,
		-0.441528, 0.818795, -0.366917,
		37.740467, 31.316044, 39.379780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903248, 30.594036, 38.927208>,  <38.049538, 30.742887, 39.636623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903248, 30.594036, 38.927208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925423, 30.984695, 39.010235>,  <37.938728, 31.219091, 39.060051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925423, 30.984695, 39.010235>,  <37.903248, 30.594036, 38.927208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925423, 30.984695, 39.010235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574456, 0.138834, -0.806675,
		-0.816656, 0.163952, -0.553347,
		0.055433, 0.976650, 0.207563,
		37.942051, 31.277691, 39.072502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886925, 30.982082, 38.205254>,  <37.903248, 30.594036, 38.927208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886925, 30.982082, 38.205254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016331, 31.274794, 38.445198>,  <38.093975, 31.450420, 38.589165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016331, 31.274794, 38.445198>,  <37.886925, 30.982082, 38.205254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016331, 31.274794, 38.445198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762284, 0.174023, -0.623409,
		-0.560588, 0.658950, -0.501524,
		0.323519, 0.731779, 0.599863,
		38.113388, 31.494328, 38.625156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909435, 31.631287, 37.860088>,  <37.886925, 30.982082, 38.205254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909435, 31.631287, 37.860088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170040, 31.671436, 38.160877>,  <38.326405, 31.695526, 38.341351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170040, 31.671436, 38.160877>,  <37.909435, 31.631287, 37.860088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170040, 31.671436, 38.160877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715300, 0.248950, -0.652970,
		-0.252743, 0.963301, 0.090397,
		0.651511, 0.100373, 0.751970,
		38.365494, 31.701548, 38.386467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174240, 32.396561, 37.857033>,  <37.909435, 31.631287, 37.860088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174240, 32.396561, 37.857033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434395, 32.158138, 38.045380>,  <38.590488, 32.015083, 38.158386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434395, 32.158138, 38.045380>,  <38.174240, 32.396561, 37.857033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434395, 32.158138, 38.045380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699151, 0.227402, -0.677847,
		0.296962, 0.770066, 0.564635,
		0.650385, -0.596059, 0.470863,
		38.629509, 31.979321, 38.186638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649261, 32.741058, 37.804951>,  <38.174240, 32.396561, 37.857033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649261, 32.741058, 37.804951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832329, 32.400208, 37.906471>,  <38.942169, 32.195698, 37.967384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832329, 32.400208, 37.906471>,  <38.649261, 32.741058, 37.804951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832329, 32.400208, 37.906471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834763, 0.313531, -0.452625,
		0.306121, 0.419013, 0.854820,
		0.457669, -0.852130, 0.253798,
		38.969631, 32.144569, 37.982609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290348, 32.939743, 38.120945>,  <38.649261, 32.741058, 37.804951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290348, 32.939743, 38.120945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308846, 32.566872, 37.977333>,  <39.319946, 32.343147, 37.891167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308846, 32.566872, 37.977333>,  <39.290348, 32.939743, 38.120945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308846, 32.566872, 37.977333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869627, 0.214422, -0.444715,
		0.491538, -0.291653, 0.820566,
		0.046245, -0.932181, -0.359026,
		39.322720, 32.287216, 37.869625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002415, 32.755066, 38.202835>,  <39.290348, 32.939743, 38.120945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002415, 32.755066, 38.202835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847534, 32.514526, 37.923275>,  <39.754604, 32.370201, 37.755539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847534, 32.514526, 37.923275>,  <40.002415, 32.755066, 38.202835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847534, 32.514526, 37.923275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836658, 0.089333, -0.540391,
		0.387397, -0.793978, 0.468532,
		-0.387203, -0.601347, -0.698895,
		39.731373, 32.334122, 37.713608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534985, 32.263405, 38.067413>,  <40.002415, 32.755066, 38.202835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534985, 32.263405, 38.067413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301834, 32.229778, 37.744133>,  <40.161945, 32.209602, 37.550163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301834, 32.229778, 37.744133>,  <40.534985, 32.263405, 38.067413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301834, 32.229778, 37.744133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795552, 0.143403, -0.588670,
		0.165387, -0.986087, -0.016706,
		-0.582876, -0.084068, -0.808200,
		40.126972, 32.204559, 37.501675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826912, 31.782642, 37.528164>,  <40.534985, 32.263405, 38.067413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826912, 31.782642, 37.528164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574471, 32.009796, 37.316803>,  <40.423004, 32.146088, 37.189987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574471, 32.009796, 37.316803>,  <40.826912, 31.782642, 37.528164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574471, 32.009796, 37.316803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713529, 0.157799, -0.682625,
		-0.304272, -0.807839, -0.504792,
		-0.631107, 0.567887, -0.528403,
		40.385139, 32.180161, 37.158283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977840, 31.729725, 36.807816>,  <40.826912, 31.782642, 37.528164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977840, 31.729725, 36.807816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816784, 32.093483, 36.849548>,  <40.720150, 32.311737, 36.874588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816784, 32.093483, 36.849548>,  <40.977840, 31.729725, 36.807816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816784, 32.093483, 36.849548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752866, 0.393837, -0.527339,
		-0.520648, -0.133779, -0.843225,
		-0.402640, 0.909393, 0.104332,
		40.695992, 32.366302, 36.880848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931873, 31.992476, 36.090027>,  <40.977840, 31.729725, 36.807816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931873, 31.992476, 36.090027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938568, 32.273449, 36.374649>,  <40.942585, 32.442032, 36.545422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938568, 32.273449, 36.374649>,  <40.931873, 31.992476, 36.090027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938568, 32.273449, 36.374649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778825, 0.437122, -0.449840,
		-0.627018, 0.561703, -0.539757,
		0.016737, 0.702434, 0.711552,
		40.943588, 32.484180, 36.588116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718273, 32.734039, 35.922852>,  <40.931873, 31.992476, 36.090027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718273, 32.734039, 35.922852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013817, 32.654934, 36.180527>,  <41.191143, 32.607471, 36.335133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013817, 32.654934, 36.180527>,  <40.718273, 32.734039, 35.922852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013817, 32.654934, 36.180527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671655, 0.293413, -0.680286,
		-0.054476, 0.935306, 0.349620,
		0.738859, -0.197765, 0.644187,
		41.235474, 32.595604, 36.373783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193413, 33.337826, 36.176197>,  <40.718273, 32.734039, 35.922852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193413, 33.337826, 36.176197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377308, 32.984646, 36.138157>,  <41.487644, 32.772739, 36.115334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377308, 32.984646, 36.138157>,  <41.193413, 33.337826, 36.176197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377308, 32.984646, 36.138157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652231, 0.408387, -0.638604,
		0.602691, 0.231565, 0.763637,
		0.459738, -0.882948, -0.095097,
		41.515228, 32.719761, 36.109627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027668, 33.440559, 36.280720>,  <41.193413, 33.337826, 36.176197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027668, 33.440559, 36.280720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907959, 33.153698, 36.028965>,  <41.836132, 32.981583, 35.877911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907959, 33.153698, 36.028965>,  <42.027668, 33.440559, 36.280720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907959, 33.153698, 36.028965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584180, 0.383829, -0.715129,
		0.754433, -0.581696, 0.304075,
		-0.299274, -0.717151, -0.629388,
		41.818176, 32.938553, 35.840149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625351, 33.067268, 35.981407>,  <42.027668, 33.440559, 36.280720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625351, 33.067268, 35.981407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309330, 33.043961, 35.737301>,  <42.119717, 33.029976, 35.590836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309330, 33.043961, 35.737301>,  <42.625351, 33.067268, 35.981407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309330, 33.043961, 35.737301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549489, 0.374065, -0.747086,
		0.271810, -0.925570, -0.263513,
		-0.790052, -0.058268, -0.610265,
		42.072315, 33.026482, 35.554222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565559, 33.473106, 35.386688>,  <42.625351, 33.067268, 35.981407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565559, 33.473106, 35.386688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891918, 33.408340, 35.164665>,  <43.087734, 33.369480, 35.031452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891918, 33.408340, 35.164665>,  <42.565559, 33.473106, 35.386688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891918, 33.408340, 35.164665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030350, -0.946675, 0.320758,
		-0.577397, -0.278552, -0.767478,
		0.815899, -0.161911, -0.555061,
		43.136688, 33.359768, 34.998146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474293, 32.883408, 35.003273>,  <42.565559, 33.473106, 35.386688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474293, 32.883408, 35.003273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860626, 32.928844, 35.096451>,  <43.092426, 32.956108, 35.152359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860626, 32.928844, 35.096451>,  <42.474293, 32.883408, 35.003273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860626, 32.928844, 35.096451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067587, -0.978121, 0.196752,
		0.250201, -0.174286, -0.952378,
		0.965832, 0.113596, 0.232947,
		43.150375, 32.962925, 35.166336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808235, 32.328411, 34.746246>,  <42.474293, 32.883408, 35.003273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808235, 32.328411, 34.746246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094757, 32.491371, 34.972847>,  <43.266670, 32.589146, 35.108807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094757, 32.491371, 34.972847>,  <42.808235, 32.328411, 34.746246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094757, 32.491371, 34.972847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404384, -0.903997, 0.138791,
		0.568661, 0.129668, -0.812287,
		0.716308, 0.407401, 0.566504,
		43.309650, 32.613590, 35.142799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498215, 32.031586, 34.582817>,  <42.808235, 32.328411, 34.746246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498215, 32.031586, 34.582817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542362, 32.169952, 34.955517>,  <43.568851, 32.252972, 35.179138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542362, 32.169952, 34.955517>,  <43.498215, 32.031586, 34.582817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542362, 32.169952, 34.955517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450258, -0.853161, 0.263406,
		0.886051, 0.390459, -0.249910,
		0.110365, 0.345915, 0.931752,
		43.575470, 32.273727, 35.235043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242012, 31.932407, 34.787769>,  <43.498215, 32.031586, 34.582817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242012, 31.932407, 34.787769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020325, 31.961123, 35.119476>,  <43.887314, 31.978352, 35.318501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020325, 31.961123, 35.119476>,  <44.242012, 31.932407, 34.787769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020325, 31.961123, 35.119476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243499, -0.938709, 0.243996,
		0.795961, 0.337153, 0.502766,
		-0.554215, 0.071789, 0.829272,
		43.854061, 31.982658, 35.368259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594269, 31.604610, 35.286514>,  <44.242012, 31.932407, 34.787769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594269, 31.604610, 35.286514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241791, 31.628441, 35.474106>,  <44.030304, 31.642738, 35.586658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241791, 31.628441, 35.474106>,  <44.594269, 31.604610, 35.286514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241791, 31.628441, 35.474106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028613, -0.983487, 0.178700,
		0.471879, 0.170889, 0.864944,
		-0.881199, 0.059576, 0.468976,
		43.977432, 31.646313, 35.614799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665928, 31.193247, 35.870014>,  <44.594269, 31.604610, 35.286514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665928, 31.193247, 35.870014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271648, 31.199894, 35.802940>,  <44.035080, 31.203882, 35.762695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271648, 31.199894, 35.802940>,  <44.665928, 31.193247, 35.870014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271648, 31.199894, 35.802940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061157, -0.962555, 0.264099,
		-0.157019, 0.270578, 0.949807,
		-0.985700, 0.016619, -0.167687,
		43.975937, 31.204880, 35.752636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422272, 30.833647, 36.430157>,  <44.665928, 31.193247, 35.870014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422272, 30.833647, 36.430157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123268, 30.842119, 36.164589>,  <43.943867, 30.847202, 36.005249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123268, 30.842119, 36.164589>,  <44.422272, 30.833647, 36.430157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123268, 30.842119, 36.164589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113636, -0.988835, 0.096399,
		-0.654462, 0.147504, 0.741567,
		-0.747507, 0.021179, -0.663916,
		43.899017, 30.848473, 35.965412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743240, 30.688738, 36.773487>,  <44.422272, 30.833647, 36.430157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743240, 30.688738, 36.773487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710518, 30.588457, 36.387646>,  <43.690884, 30.528288, 36.156143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710518, 30.588457, 36.387646>,  <43.743240, 30.688738, 36.773487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710518, 30.588457, 36.387646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215140, -0.940584, 0.262708,
		-0.973151, 0.229016, 0.023011,
		-0.081808, -0.250704, -0.964601,
		43.685974, 30.513247, 36.098267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097351, 30.249029, 36.736462>,  <43.743240, 30.688738, 36.773487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097351, 30.249029, 36.736462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282005, 30.173580, 36.389748>,  <43.392799, 30.128311, 36.181721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282005, 30.173580, 36.389748>,  <43.097351, 30.249029, 36.736462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282005, 30.173580, 36.389748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272978, -0.959922, 0.063507,
		-0.844023, 0.207295, -0.494625,
		0.461637, -0.188623, -0.866783,
		43.420498, 30.116993, 36.129711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652447, 29.874485, 36.277611>,  <43.097351, 30.249029, 36.736462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652447, 29.874485, 36.277611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018387, 29.801493, 36.133526>,  <43.237949, 29.757696, 36.047077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018387, 29.801493, 36.133526>,  <42.652447, 29.874485, 36.277611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018387, 29.801493, 36.133526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225738, -0.970771, -0.081529,
		-0.334802, 0.155899, -0.929302,
		0.914850, -0.182483, -0.360209,
		43.292843, 29.746748, 36.025463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534718, 29.314402, 35.815872>,  <42.652447, 29.874485, 36.277611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534718, 29.314402, 35.815872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932907, 29.307354, 35.853241>,  <43.171822, 29.303125, 35.875664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932907, 29.307354, 35.853241>,  <42.534718, 29.314402, 35.815872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932907, 29.307354, 35.853241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002541, -0.987260, -0.159096,
		0.095034, 0.158138, -0.982833,
		0.995471, -0.017617, 0.093421,
		43.231548, 29.302069, 35.881268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722713, 29.009117, 35.199841>,  <42.534718, 29.314402, 35.815872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722713, 29.009117, 35.199841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007519, 28.976244, 35.478775>,  <43.178402, 28.956520, 35.646137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007519, 28.976244, 35.478775>,  <42.722713, 29.009117, 35.199841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007519, 28.976244, 35.478775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002406, -0.992835, -0.119468,
		0.702158, 0.086741, -0.706717,
		0.712017, -0.082185, 0.697336,
		43.221123, 28.951588, 35.687977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093849, 28.479895, 34.864162>,  <42.722713, 29.009117, 35.199841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093849, 28.479895, 34.864162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214378, 28.486301, 35.245518>,  <43.286697, 28.490147, 35.474331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214378, 28.486301, 35.245518>,  <43.093849, 28.479895, 34.864162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214378, 28.486301, 35.245518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208595, -0.976748, -0.049517,
		0.930424, 0.213793, -0.297663,
		0.301328, 0.016019, 0.953386,
		43.304775, 28.491108, 35.531532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739010, 28.084370, 34.907433>,  <43.093849, 28.479895, 34.864162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739010, 28.084370, 34.907433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574562, 28.109266, 35.271214>,  <43.475891, 28.124205, 35.489483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574562, 28.109266, 35.271214>,  <43.739010, 28.084370, 34.907433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574562, 28.109266, 35.271214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123044, -0.984747, 0.123015,
		0.903237, 0.162477, 0.397195,
		-0.411124, 0.062239, 0.909452,
		43.451225, 28.127937, 35.544048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128040, 27.678322, 35.292286>,  <43.739010, 28.084370, 34.907433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128040, 27.678322, 35.292286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799988, 27.725330, 35.516277>,  <43.603157, 27.753536, 35.650673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799988, 27.725330, 35.516277>,  <44.128040, 27.678322, 35.292286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799988, 27.725330, 35.516277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063501, -0.953938, 0.293207,
		0.568640, 0.276027, 0.774892,
		-0.820132, 0.117523, 0.559975,
		43.553947, 27.760588, 35.684269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181705, 27.398844, 36.034534>,  <44.128040, 27.678322, 35.292286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181705, 27.398844, 36.034534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809696, 27.384117, 35.888275>,  <43.586491, 27.375280, 35.800518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809696, 27.384117, 35.888275>,  <44.181705, 27.398844, 36.034534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809696, 27.384117, 35.888275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053419, -0.970857, 0.233629,
		-0.363593, 0.236813, 0.900955,
		-0.930025, -0.036817, -0.365647,
		43.530689, 27.373072, 35.778580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796043, 26.979326, 36.579376>,  <44.181705, 27.398844, 36.034534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796043, 26.979326, 36.579376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508778, 27.021311, 36.304214>,  <43.336418, 27.046501, 36.139118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508778, 27.021311, 36.304214>,  <43.796043, 26.979326, 36.579376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508778, 27.021311, 36.304214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376770, -0.889774, 0.257580,
		-0.585047, 0.444169, 0.678554,
		-0.718168, 0.104963, -0.687908,
		43.293327, 27.052799, 36.097843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177505, 26.714170, 36.898300>,  <43.796043, 26.979326, 36.579376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177505, 26.714170, 36.898300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067924, 26.712835, 36.513607>,  <43.002174, 26.712034, 36.282791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067924, 26.712835, 36.513607>,  <43.177505, 26.714170, 36.898300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067924, 26.712835, 36.513607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394035, -0.911821, 0.115407,
		-0.877318, 0.410575, 0.248481,
		-0.273953, -0.003338, -0.961737,
		42.985737, 26.711834, 36.225086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475483, 26.429691, 36.860596>,  <43.177505, 26.714170, 36.898300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475483, 26.429691, 36.860596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646919, 26.395819, 36.500786>,  <42.749779, 26.375496, 36.284901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646919, 26.395819, 36.500786>,  <42.475483, 26.429691, 36.860596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646919, 26.395819, 36.500786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165606, -0.986094, 0.013925,
		-0.888192, 0.142998, -0.436652,
		0.428589, -0.084681, -0.899522,
		42.775497, 26.370415, 36.230930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026173, 26.007978, 36.475163>,  <42.475483, 26.429691, 36.860596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026173, 26.007978, 36.475163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366402, 25.994558, 36.265247>,  <42.570538, 25.986507, 36.139297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366402, 25.994558, 36.265247>,  <42.026173, 26.007978, 36.475163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366402, 25.994558, 36.265247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046717, -0.998838, -0.011864,
		-0.523777, 0.034608, -0.851152,
		0.850573, -0.033549, -0.524785,
		42.621574, 25.984493, 36.107811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888012, 25.647079, 35.895035>,  <42.026173, 26.007978, 36.475163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888012, 25.647079, 35.895035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284473, 25.610579, 35.933601>,  <42.522350, 25.588678, 35.956741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284473, 25.610579, 35.933601>,  <41.888012, 25.647079, 35.895035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284473, 25.610579, 35.933601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104378, -0.984455, 0.141254,
		0.082027, -0.150068, -0.985267,
		0.991149, -0.091253, 0.096416,
		42.581818, 25.583202, 35.962524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138725, 25.134956, 35.421238>,  <41.888012, 25.647079, 35.895035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138725, 25.134956, 35.421238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396603, 25.169682, 35.725037>,  <42.551327, 25.190517, 35.907314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396603, 25.169682, 35.725037>,  <42.138725, 25.134956, 35.421238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396603, 25.169682, 35.725037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019327, -0.995064, 0.097334,
		0.764199, -0.048071, -0.643187,
		0.644691, 0.086813, 0.759498,
		42.590012, 25.195726, 35.952885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757301, 24.644030, 35.444847>,  <42.138725, 25.134956, 35.421238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757301, 24.644030, 35.444847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710125, 24.709221, 35.836670>,  <42.681820, 24.748335, 36.071762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710125, 24.709221, 35.836670>,  <42.757301, 24.644030, 35.444847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710125, 24.709221, 35.836670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130483, -0.975343, 0.177988,
		0.984411, 0.148807, 0.093766,
		-0.117940, 0.162979, 0.979555,
		42.674744, 24.758114, 36.130535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136963, 24.150242, 35.821041>,  <42.757301, 24.644030, 35.444847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136963, 24.150242, 35.821041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891716, 24.285292, 36.106724>,  <42.744568, 24.366322, 36.278133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891716, 24.285292, 36.106724>,  <43.136963, 24.150242, 35.821041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891716, 24.285292, 36.106724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043728, -0.888183, 0.457405,
		0.788782, 0.311674, 0.529795,
		-0.613116, 0.337626, 0.714211,
		42.707783, 24.386580, 36.320988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850761, 24.556461, 35.886288>,  <43.136963, 24.150242, 35.821041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850761, 24.556461, 35.886288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051189, 24.863033, 35.725533>,  <44.171448, 25.046976, 35.629078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051189, 24.863033, 35.725533>,  <43.850761, 24.556461, 35.886288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051189, 24.863033, 35.725533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260482, -0.309288, -0.914598,
		-0.825273, 0.562964, 0.044666,
		0.501071, 0.766428, -0.401889,
		44.201511, 25.092962, 35.604965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383259, 24.985008, 35.622944>,  <43.850761, 24.556461, 35.886288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383259, 24.985008, 35.622944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733101, 24.933672, 35.435932>,  <43.943008, 24.902870, 35.323723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733101, 24.933672, 35.435932>,  <43.383259, 24.985008, 35.622944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733101, 24.933672, 35.435932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484667, -0.256248, -0.836322,
		-0.012468, 0.958053, -0.286321,
		0.874610, -0.128343, -0.467532,
		43.995483, 24.895168, 35.295673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629299, 25.411285, 34.958527>,  <43.383259, 24.985008, 35.622944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629299, 25.411285, 34.958527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730370, 25.024269, 34.956684>,  <43.791012, 24.792059, 34.955578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730370, 25.024269, 34.956684>,  <43.629299, 25.411285, 34.958527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730370, 25.024269, 34.956684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523404, -0.132682, -0.841691,
		0.813758, 0.215088, -0.539940,
		0.252678, -0.967539, -0.004607,
		43.806171, 24.734007, 34.955303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990192, 25.074766, 34.256950>,  <43.629299, 25.411285, 34.958527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990192, 25.074766, 34.256950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773064, 24.819397, 34.475220>,  <43.642788, 24.666176, 34.606182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773064, 24.819397, 34.475220>,  <43.990192, 25.074766, 34.256950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773064, 24.819397, 34.475220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534360, -0.238713, -0.810849,
		0.647923, -0.731734, -0.211568,
		-0.542821, -0.638421, 0.545677,
		43.610218, 24.627871, 34.638924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028786, 24.729809, 33.490391>,  <43.990192, 25.074766, 34.256950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028786, 24.729809, 33.490391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257900, 24.674772, 33.167164>,  <44.395370, 24.641750, 32.973228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257900, 24.674772, 33.167164>,  <44.028786, 24.729809, 33.490391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257900, 24.674772, 33.167164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308077, 0.949672, 0.056673,
		0.759605, -0.281410, 0.586352,
		0.572790, -0.137592, -0.808072,
		44.429737, 24.633495, 32.924744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765217, 24.825491, 33.629044>,  <44.028786, 24.729809, 33.490391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765217, 24.825491, 33.629044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697643, 24.904821, 33.242855>,  <44.657101, 24.952419, 33.011143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697643, 24.904821, 33.242855>,  <44.765217, 24.825491, 33.629044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697643, 24.904821, 33.242855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361243, 0.923842, 0.126566,
		0.917042, -0.327388, -0.227708,
		-0.168930, 0.198324, -0.965469,
		44.646965, 24.964319, 32.953213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388756, 25.053556, 33.368893>,  <44.765217, 24.825491, 33.629044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388756, 25.053556, 33.368893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080021, 25.172426, 33.144054>,  <44.894779, 25.243748, 33.009151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080021, 25.172426, 33.144054>,  <45.388756, 25.053556, 33.368893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080021, 25.172426, 33.144054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345867, 0.938048, 0.021011,
		0.533517, -0.178193, -0.826806,
		-0.771839, 0.297174, -0.562095,
		44.848469, 25.261578, 32.975426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631393, 25.398310, 32.721519>,  <45.388756, 25.053556, 33.368893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631393, 25.398310, 32.721519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281158, 25.519909, 32.871681>,  <45.071018, 25.592869, 32.961777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281158, 25.519909, 32.871681>,  <45.631393, 25.398310, 32.721519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281158, 25.519909, 32.871681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354812, 0.932103, 0.072753,
		-0.327796, 0.196899, -0.924002,
		-0.875590, 0.303999, 0.375402,
		45.018482, 25.611109, 32.984303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175880, 25.984638, 32.391338>,  <45.631393, 25.398310, 32.721519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175880, 25.984638, 32.391338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082207, 25.965137, 32.779724>,  <45.026001, 25.953438, 33.012756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082207, 25.965137, 32.779724>,  <45.175880, 25.984638, 32.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082207, 25.965137, 32.779724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064700, 0.997309, 0.034468,
		-0.970036, -0.054750, -0.236710,
		-0.234186, -0.048750, 0.970969,
		45.011951, 25.950512, 33.071014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513786, 26.391914, 32.567902>,  <45.175880, 25.984638, 32.391338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513786, 26.391914, 32.567902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739544, 26.357899, 32.896347>,  <44.875000, 26.337488, 33.093414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739544, 26.357899, 32.896347>,  <44.513786, 26.391914, 32.567902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739544, 26.357899, 32.896347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068952, 0.986347, 0.149549,
		-0.822618, -0.141023, 0.550829,
		0.564398, -0.085041, 0.821111,
		44.908863, 26.332386, 33.142681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232273, 26.886864, 33.038601>,  <44.513786, 26.391914, 32.567902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232273, 26.886864, 33.038601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599007, 26.820734, 33.183968>,  <44.819046, 26.781055, 33.271187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599007, 26.820734, 33.183968>,  <44.232273, 26.886864, 33.038601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599007, 26.820734, 33.183968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083118, 0.969332, 0.231273,
		-0.390511, -0.181833, 0.902462,
		0.916839, -0.165325, 0.363421,
		44.874058, 26.771137, 33.292995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267159, 27.368479, 33.552620>,  <44.232273, 26.886864, 33.038601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267159, 27.368479, 33.552620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652390, 27.265909, 33.519817>,  <44.883530, 27.204367, 33.500137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652390, 27.265909, 33.519817>,  <44.267159, 27.368479, 33.552620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652390, 27.265909, 33.519817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268372, 0.938572, 0.216932,
		0.021339, -0.230930, 0.972736,
		0.963079, -0.256426, -0.082003,
		44.941315, 27.188982, 33.495216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606323, 27.726625, 34.155842>,  <44.267159, 27.368479, 33.552620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606323, 27.726625, 34.155842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.884022, 27.641647, 33.880775>,  <45.050640, 27.590660, 33.715736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.884022, 27.641647, 33.880775>,  <44.606323, 27.726625, 34.155842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884022, 27.641647, 33.880775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319105, 0.947260, 0.029517,
		0.645131, -0.239931, 0.725423,
		0.694246, -0.212444, -0.687670,
		45.092297, 27.577913, 33.674473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217869, 27.858875, 34.424240>,  <44.606323, 27.726625, 34.155842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217869, 27.858875, 34.424240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309708, 27.842859, 34.035255>,  <45.364811, 27.833250, 33.801865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309708, 27.842859, 34.035255>,  <45.217869, 27.858875, 34.424240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309708, 27.842859, 34.035255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382089, 0.922649, 0.052222,
		0.895149, -0.383557, 0.227136,
		0.229597, -0.040040, -0.972462,
		45.378586, 27.830847, 33.743515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843777, 28.030279, 34.470043>,  <45.217869, 27.858875, 34.424240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843777, 28.030279, 34.470043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720306, 28.134552, 34.104145>,  <45.646225, 28.197117, 33.884605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720306, 28.134552, 34.104145>,  <45.843777, 28.030279, 34.470043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720306, 28.134552, 34.104145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338925, 0.928730, 0.150300,
		0.888735, -0.263637, -0.375028,
		-0.308676, 0.260684, -0.914748,
		45.627705, 28.212757, 33.829720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.400795, 28.199575, 34.065113>,  <45.843777, 28.030279, 34.470043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.400795, 28.199575, 34.065113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086479, 28.390911, 33.908283>,  <45.897888, 28.505713, 33.814186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086479, 28.390911, 33.908283>,  <46.400795, 28.199575, 34.065113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086479, 28.390911, 33.908283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458343, 0.876003, 0.150135,
		0.415271, -0.061728, -0.907601,
		-0.785793, 0.478340, -0.392071,
		45.850742, 28.534412, 33.790661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730106, 28.713137, 33.717102>,  <46.400795, 28.199575, 34.065113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730106, 28.713137, 33.717102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348629, 28.831024, 33.741131>,  <46.119743, 28.901756, 33.755547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348629, 28.831024, 33.741131>,  <46.730106, 28.713137, 33.717102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348629, 28.831024, 33.741131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299977, 0.917395, 0.261534,
		0.021970, 0.267443, -0.963323,
		-0.953693, 0.294721, 0.060072,
		46.062523, 28.919441, 33.759151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767204, 29.364014, 33.438698>,  <46.730106, 28.713137, 33.717102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767204, 29.364014, 33.438698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427868, 29.350142, 33.650024>,  <46.224266, 29.341818, 33.776821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427868, 29.350142, 33.650024>,  <46.767204, 29.364014, 33.438698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427868, 29.350142, 33.650024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091082, 0.973417, 0.210152,
		-0.521565, 0.226400, -0.822626,
		-0.848336, -0.034682, 0.528321,
		46.173367, 29.339737, 33.808521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464317, 29.965183, 33.214649>,  <46.767204, 29.364014, 33.438698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464317, 29.965183, 33.214649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302666, 29.880608, 33.570621>,  <46.205677, 29.829863, 33.784206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302666, 29.880608, 33.570621>,  <46.464317, 29.965183, 33.214649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302666, 29.880608, 33.570621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046931, 0.966842, 0.251027,
		-0.913499, 0.143212, -0.380802,
		-0.404125, -0.211442, 0.889930,
		46.181427, 29.817175, 33.837601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031857, 30.437508, 33.345524>,  <46.464317, 29.965183, 33.214649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031857, 30.437508, 33.345524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087627, 30.316730, 33.722755>,  <46.121090, 30.244265, 33.949093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087627, 30.316730, 33.722755>,  <46.031857, 30.437508, 33.345524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087627, 30.316730, 33.722755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101282, 0.951732, 0.289738,
		-0.985039, 0.055118, 0.163281,
		0.139430, -0.301941, 0.943075,
		46.129456, 30.226149, 34.005676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507763, 30.864574, 33.724571>,  <46.031857, 30.437508, 33.345524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507763, 30.864574, 33.724571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.752689, 30.763481, 34.024223>,  <45.899643, 30.702826, 34.204014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.752689, 30.763481, 34.024223>,  <45.507763, 30.864574, 33.724571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752689, 30.763481, 34.024223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172864, 0.881808, 0.438785,
		-0.771485, -0.398172, 0.496256,
		0.612314, -0.252731, 0.749132,
		45.936382, 30.687662, 34.248962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209225, 31.066145, 34.244785>,  <45.507763, 30.864574, 33.724571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209225, 31.066145, 34.244785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577610, 31.003235, 34.387383>,  <45.798641, 30.965488, 34.472942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577610, 31.003235, 34.387383>,  <45.209225, 31.066145, 34.244785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577610, 31.003235, 34.387383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120279, 0.755483, 0.644033,
		-0.370616, -0.636011, 0.676856,
		0.920965, -0.157277, 0.356493,
		45.853901, 30.956051, 34.494331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153389, 31.128946, 34.891586>,  <45.209225, 31.066145, 34.244785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153389, 31.128946, 34.891586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545387, 31.196297, 34.849159>,  <45.780586, 31.236708, 34.823704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545387, 31.196297, 34.849159>,  <45.153389, 31.128946, 34.891586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545387, 31.196297, 34.849159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059909, 0.757911, 0.649602,
		0.189768, -0.630255, 0.752839,
		0.980000, 0.168376, -0.106069,
		45.839386, 31.246809, 34.817337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.436638, 31.064804, 35.596928>,  <45.153389, 31.128946, 34.891586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.436638, 31.064804, 35.596928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696747, 31.278524, 35.380901>,  <45.852810, 31.406757, 35.251286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696747, 31.278524, 35.380901>,  <45.436638, 31.064804, 35.596928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696747, 31.278524, 35.380901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189538, 0.802512, 0.565729,
		0.735679, -0.265514, 0.623120,
		0.650270, 0.534300, -0.540066,
		45.891827, 31.438814, 35.218880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756996, 31.523487, 36.097561>,  <45.436638, 31.064804, 35.596928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756996, 31.523487, 36.097561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880798, 31.696281, 35.758717>,  <45.955078, 31.799957, 35.555408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880798, 31.696281, 35.758717>,  <45.756996, 31.523487, 36.097561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880798, 31.696281, 35.758717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002986, 0.890407, 0.455156,
		0.950893, -0.143402, 0.274297,
		0.309506, 0.431985, -0.847110,
		45.973652, 31.825876, 35.504585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.229893, 31.903471, 36.261646>,  <45.756996, 31.523487, 36.097561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.229893, 31.903471, 36.261646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130257, 32.081059, 35.917358>,  <46.070477, 32.187611, 35.710785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130257, 32.081059, 35.917358>,  <46.229893, 31.903471, 36.261646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130257, 32.081059, 35.917358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040264, 0.883221, 0.467226,
		0.967643, 0.151037, -0.202125,
		-0.249090, 0.443969, -0.860724,
		46.055531, 32.214249, 35.659142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.725761, 32.510147, 36.203274>,  <46.229893, 31.903471, 36.261646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.725761, 32.510147, 36.203274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375225, 32.592144, 36.028912>,  <46.164906, 32.641342, 35.924294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375225, 32.592144, 36.028912>,  <46.725761, 32.510147, 36.203274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375225, 32.592144, 36.028912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028823, 0.880997, 0.472242,
		0.480835, 0.426407, -0.766142,
		-0.876337, 0.204989, -0.435905,
		46.112324, 32.653641, 35.898140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706039, 33.239189, 36.193172>,  <46.725761, 32.510147, 36.203274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.706039, 33.239189, 36.193172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322231, 33.135048, 36.150219>,  <46.091946, 33.072563, 36.124447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322231, 33.135048, 36.150219>,  <46.706039, 33.239189, 36.193172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322231, 33.135048, 36.150219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281311, 0.868052, 0.409084,
		-0.013292, 0.422733, -0.906157,
		-0.959525, -0.260349, -0.107381,
		46.034374, 33.056942, 36.118004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279377, 33.698151, 35.850967>,  <46.706039, 33.239189, 36.193172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279377, 33.698151, 35.850967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011162, 33.508244, 36.078995>,  <45.850235, 33.394299, 36.215813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011162, 33.508244, 36.078995>,  <46.279377, 33.698151, 35.850967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011162, 33.508244, 36.078995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254695, 0.869031, 0.424164,
		-0.696788, 0.139223, -0.703636,
		-0.670535, -0.474765, 0.570071,
		45.810001, 33.365814, 36.250015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225807, 34.282776, 35.423470>,  <46.279377, 33.698151, 35.850967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225807, 34.282776, 35.423470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366905, 34.647137, 35.337845>,  <46.451565, 34.865753, 35.286469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366905, 34.647137, 35.337845>,  <46.225807, 34.282776, 35.423470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366905, 34.647137, 35.337845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935689, -0.345206, 0.072931,
		-0.007463, -0.226024, -0.974093,
		0.352747, 0.910904, -0.214064,
		46.472729, 34.920406, 35.273624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748863, 34.260994, 34.831360>,  <46.225807, 34.282776, 35.423470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748863, 34.260994, 34.831360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807091, 34.546124, 35.105789>,  <46.842026, 34.717201, 35.270447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807091, 34.546124, 35.105789>,  <46.748863, 34.260994, 34.831360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807091, 34.546124, 35.105789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934629, -0.326505, 0.140935,
		0.324468, 0.620709, -0.713752,
		0.145564, 0.712822, 0.686073,
		46.850761, 34.759972, 35.311611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.198414, 34.763069, 34.515812>,  <46.748863, 34.260994, 34.831360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.198414, 34.763069, 34.515812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208542, 34.726555, 34.914013>,  <47.214619, 34.704647, 35.152935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208542, 34.726555, 34.914013>,  <47.198414, 34.763069, 34.515812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.208542, 34.726555, 34.914013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968814, -0.243301, -0.046955,
		0.246493, 0.965645, 0.082280,
		0.025323, -0.091288, 0.995503,
		47.216141, 34.699169, 35.212666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.630520, 35.261478, 34.866722>,  <47.198414, 34.763069, 34.515812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.630520, 35.261478, 34.866722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610794, 34.900272, 35.037426>,  <47.598957, 34.683548, 35.139851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610794, 34.900272, 35.037426>,  <47.630520, 35.261478, 34.866722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610794, 34.900272, 35.037426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970185, -0.144826, -0.194335,
		0.237295, 0.404456, 0.883236,
		-0.049316, -0.903017, 0.426764,
		47.596001, 34.629368, 35.165455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.604645, 36.210930, 44.848862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.212002, 36.250031, 44.783279>,  <32.976414, 36.273491, 44.743931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.212002, 36.250031, 44.783279>,  <33.604645, 36.210930, 44.848862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212002, 36.250031, 44.783279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161172, -0.035811, -0.986276,
		-0.102286, -0.994566, 0.019397,
		-0.981611, 0.097756, -0.163959,
		32.917519, 36.279358, 44.734093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533932, 35.773033, 44.332058>,  <33.604645, 36.210930, 44.848862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533932, 35.773033, 44.332058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206841, 36.001030, 44.299992>,  <33.010586, 36.137829, 44.280750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206841, 36.001030, 44.299992>,  <33.533932, 35.773033, 44.332058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206841, 36.001030, 44.299992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051809, -0.211595, -0.975983,
		-0.573266, -0.793937, 0.202559,
		-0.817730, 0.569992, -0.080167,
		32.961521, 36.172028, 44.275940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157917, 35.458679, 43.881607>,  <33.533932, 35.773033, 44.332058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157917, 35.458679, 43.881607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.985531, 35.819160, 43.863285>,  <32.882099, 36.035450, 43.852291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.985531, 35.819160, 43.863285>,  <33.157917, 35.458679, 43.881607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985531, 35.819160, 43.863285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082485, -0.089888, -0.992530,
		-0.898592, -0.423965, 0.113074,
		-0.430962, 0.901207, -0.045802,
		32.856243, 36.089523, 43.849545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698910, 35.397083, 43.306141>,  <33.157917, 35.458679, 43.881607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698910, 35.397083, 43.306141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.733299, 35.791698, 43.361797>,  <32.753933, 36.028465, 43.395191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.733299, 35.791698, 43.361797>,  <32.698910, 35.397083, 43.306141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733299, 35.791698, 43.361797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120954, 0.128285, -0.984334,
		-0.988928, 0.101458, -0.108296,
		0.085975, 0.986534, 0.139137,
		32.759090, 36.087658, 43.403538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150764, 35.687160, 42.816357>,  <32.698910, 35.397083, 43.306141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150764, 35.687160, 42.816357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.418518, 35.973881, 42.894451>,  <32.579170, 36.145912, 42.941307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.418518, 35.973881, 42.894451>,  <32.150764, 35.687160, 42.816357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418518, 35.973881, 42.894451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077845, 0.193674, -0.977973,
		-0.738827, 0.669838, 0.073843,
		0.669384, 0.716804, 0.195235,
		32.619335, 36.188923, 42.953022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863087, 36.289879, 42.463749>,  <32.150764, 35.687160, 42.816357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863087, 36.289879, 42.463749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.248909, 36.368526, 42.534149>,  <32.480404, 36.415714, 42.576389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.248909, 36.368526, 42.534149>,  <31.863087, 36.289879, 42.463749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248909, 36.368526, 42.534149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169348, 0.050282, -0.984273,
		-0.202374, 0.979190, 0.015203,
		0.964555, 0.196616, 0.175999,
		32.538277, 36.427513, 42.586948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037338, 36.812904, 42.095703>,  <31.863087, 36.289879, 42.463749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037338, 36.812904, 42.095703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.413174, 36.689339, 42.154701>,  <32.638676, 36.615200, 42.190102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.413174, 36.689339, 42.154701>,  <32.037338, 36.812904, 42.095703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413174, 36.689339, 42.154701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095004, -0.178641, -0.979317,
		0.328871, 0.934164, -0.138501,
		0.939584, -0.308910, 0.147500,
		32.695049, 36.596664, 42.198952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509438, 37.123177, 41.588554>,  <32.037338, 36.812904, 42.095703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509438, 37.123177, 41.588554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.695679, 36.795559, 41.722649>,  <32.807423, 36.598988, 41.803104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.695679, 36.795559, 41.722649>,  <32.509438, 37.123177, 41.588554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695679, 36.795559, 41.722649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183980, -0.280941, -0.941925,
		0.865657, 0.500243, 0.019879,
		0.465607, -0.819041, 0.335233,
		32.835361, 36.549847, 41.823219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295341, 37.141582, 41.412159>,  <32.509438, 37.123177, 41.588554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295341, 37.141582, 41.412159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258434, 36.747139, 41.467392>,  <33.236290, 36.510471, 41.500534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258434, 36.747139, 41.467392>,  <33.295341, 37.141582, 41.412159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258434, 36.747139, 41.467392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349304, -0.161918, -0.922913,
		0.932456, -0.036920, 0.359393,
		-0.092266, -0.986113, 0.138085,
		33.230755, 36.451305, 41.508816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942413, 36.811989, 41.163536>,  <33.295341, 37.141582, 41.412159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942413, 36.811989, 41.163536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.662708, 36.526226, 41.173752>,  <33.494884, 36.354767, 41.179882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.662708, 36.526226, 41.173752>,  <33.942413, 36.811989, 41.163536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662708, 36.526226, 41.173752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402856, -0.423322, -0.811484,
		0.590539, -0.557155, 0.583817,
		-0.699265, -0.714407, 0.025535,
		33.452930, 36.311905, 41.181412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207859, 36.103741, 41.262405>,  <33.942413, 36.811989, 41.163536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207859, 36.103741, 41.262405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.868202, 36.042522, 41.060204>,  <33.664410, 36.005791, 40.938881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.868202, 36.042522, 41.060204>,  <34.207859, 36.103741, 41.262405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868202, 36.042522, 41.060204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514145, -0.458606, -0.724801,
		-0.120902, -0.875361, 0.468108,
		-0.849140, -0.153045, -0.505509,
		33.613461, 35.996609, 40.908550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185467, 35.415611, 40.947712>,  <34.207859, 36.103741, 41.262405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185467, 35.415611, 40.947712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915916, 35.622345, 40.736515>,  <33.754185, 35.746384, 40.609798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915916, 35.622345, 40.736515>,  <34.185467, 35.415611, 40.947712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915916, 35.622345, 40.736515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334694, -0.423549, -0.841776,
		-0.658687, -0.743968, 0.112439,
		-0.673878, 0.516834, -0.527988,
		33.713753, 35.777393, 40.578117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004116, 34.983829, 40.359741>,  <34.185467, 35.415611, 40.947712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004116, 34.983829, 40.359741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878468, 35.351349, 40.264126>,  <33.803078, 35.571861, 40.206757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878468, 35.351349, 40.264126>,  <34.004116, 34.983829, 40.359741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878468, 35.351349, 40.264126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397409, -0.101406, -0.912021,
		-0.862203, -0.381482, -0.333284,
		-0.314122, 0.918797, -0.239037,
		33.784229, 35.626987, 40.192413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534893, 34.879742, 39.912342>,  <34.004116, 34.983829, 40.359741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534893, 34.879742, 39.912342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.706081, 35.236324, 39.852806>,  <33.808792, 35.450272, 39.817085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.706081, 35.236324, 39.852806>,  <33.534893, 34.879742, 39.912342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706081, 35.236324, 39.852806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366042, -0.321535, -0.873286,
		-0.826351, 0.319257, -0.463916,
		0.427968, 0.891454, -0.148839,
		33.834473, 35.503761, 39.808155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469666, 34.979237, 39.100891>,  <33.534893, 34.879742, 39.912342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469666, 34.979237, 39.100891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.726742, 35.251350, 39.241833>,  <33.880989, 35.414619, 39.326397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.726742, 35.251350, 39.241833>,  <33.469666, 34.979237, 39.100891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726742, 35.251350, 39.241833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583697, -0.136897, -0.800348,
		-0.496231, 0.720046, -0.485065,
		0.642691, 0.680289, 0.352357,
		33.919548, 35.455437, 39.347538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612389, 35.524223, 38.499153>,  <33.469666, 34.979237, 39.100891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612389, 35.524223, 38.499153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931347, 35.571457, 38.735867>,  <34.122723, 35.599796, 38.877895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931347, 35.571457, 38.735867>,  <33.612389, 35.524223, 38.499153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931347, 35.571457, 38.735867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602672, -0.205653, -0.771034,
		0.030654, 0.971475, -0.235154,
		0.797400, 0.118086, 0.591784,
		34.170567, 35.606884, 38.913403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128815, 35.975632, 38.219635>,  <33.612389, 35.524223, 38.499153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128815, 35.975632, 38.219635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325737, 35.739014, 38.475044>,  <34.443890, 35.597042, 38.628288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325737, 35.739014, 38.475044>,  <34.128815, 35.975632, 38.219635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325737, 35.739014, 38.475044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752279, -0.079849, -0.653988,
		0.437846, 0.802312, 0.405693,
		0.492308, -0.591541, 0.638523,
		34.473431, 35.561550, 38.666603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861332, 36.255211, 38.190247>,  <34.128815, 35.975632, 38.219635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861332, 36.255211, 38.190247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.879250, 35.896454, 38.366238>,  <34.889999, 35.681202, 38.471832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.879250, 35.896454, 38.366238>,  <34.861332, 36.255211, 38.190247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879250, 35.896454, 38.366238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861906, -0.187978, -0.470937,
		0.505086, 0.400318, 0.764614,
		0.044794, -0.896889, 0.439982,
		34.892689, 35.627388, 38.498234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450047, 36.137981, 38.554188>,  <34.861332, 36.255211, 38.190247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450047, 36.137981, 38.554188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343922, 35.760506, 38.475132>,  <35.280247, 35.534019, 38.427700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343922, 35.760506, 38.475132>,  <35.450047, 36.137981, 38.554188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343922, 35.760506, 38.475132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869945, -0.145923, -0.471064,
		0.415698, -0.296914, 0.859673,
		-0.265312, -0.943689, -0.197639,
		35.264328, 35.477398, 38.415840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069855, 35.828632, 38.608181>,  <35.450047, 36.137981, 38.554188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069855, 35.828632, 38.608181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844120, 35.563374, 38.411507>,  <35.708679, 35.404217, 38.293503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844120, 35.563374, 38.411507>,  <36.069855, 35.828632, 38.608181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844120, 35.563374, 38.411507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808583, -0.323913, -0.491197,
		0.166472, -0.674771, 0.719007,
		-0.564341, -0.663147, -0.491686,
		35.674816, 35.364429, 38.264000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367020, 35.186012, 38.834972>,  <36.069855, 35.828632, 38.608181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367020, 35.186012, 38.834972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199787, 35.186676, 38.471611>,  <36.099449, 35.187073, 38.253593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199787, 35.186676, 38.471611>,  <36.367020, 35.186012, 38.834972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199787, 35.186676, 38.471611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895456, -0.167520, -0.412427,
		-0.152858, -0.985867, 0.068558,
		-0.418083, 0.001652, -0.908407,
		36.074364, 35.187172, 38.199089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625206, 34.571495, 38.422035>,  <36.367020, 35.186012, 38.834972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625206, 34.571495, 38.422035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542065, 34.907742, 38.221973>,  <36.492180, 35.109489, 38.101936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542065, 34.907742, 38.221973>,  <36.625206, 34.571495, 38.422035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542065, 34.907742, 38.221973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842518, -0.105920, -0.528152,
		-0.496951, -0.531169, -0.686221,
		-0.207853, 0.840619, -0.500157,
		36.479710, 35.159927, 38.071926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417854, 34.372509, 38.112438>,  <36.625206, 34.571495, 38.422035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417854, 34.372509, 38.112438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771763, 34.537422, 38.025528>,  <37.984108, 34.636372, 37.973381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771763, 34.537422, 38.025528>,  <37.417854, 34.372509, 38.112438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771763, 34.537422, 38.025528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252030, -0.031121, 0.967219,
		0.392006, -0.910524, -0.131443,
		0.884766, 0.412283, -0.217280,
		38.037193, 34.661106, 37.960342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944214, 33.962032, 38.449959>,  <37.417854, 34.372509, 38.112438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944214, 33.962032, 38.449959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146061, 34.297256, 38.367001>,  <38.267170, 34.498390, 38.317226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146061, 34.297256, 38.367001>,  <37.944214, 33.962032, 38.449959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146061, 34.297256, 38.367001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235546, 0.097463, 0.966964,
		0.830591, -0.536794, -0.148221,
		0.504614, 0.838065, -0.207391,
		38.297447, 34.548676, 38.304783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596718, 33.910725, 38.908535>,  <37.944214, 33.962032, 38.449959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596718, 33.910725, 38.908535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.550808, 34.295864, 38.810760>,  <38.523262, 34.526947, 38.752094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.550808, 34.295864, 38.810760>,  <38.596718, 33.910725, 38.908535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550808, 34.295864, 38.810760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207309, 0.263862, 0.942019,
		0.971520, 0.057443, -0.229891,
		-0.114771, 0.962849, -0.244438,
		38.516376, 34.584717, 38.737431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103676, 34.211796, 39.293568>,  <38.596718, 33.910725, 38.908535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103676, 34.211796, 39.293568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848091, 34.502800, 39.193600>,  <38.694740, 34.677402, 39.133621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848091, 34.502800, 39.193600>,  <39.103676, 34.211796, 39.293568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848091, 34.502800, 39.193600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088020, 0.391902, 0.915787,
		0.764185, 0.563156, -0.314446,
		-0.638963, 0.727508, -0.249916,
		38.656403, 34.721054, 39.118626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348148, 34.806755, 39.470554>,  <39.103676, 34.211796, 39.293568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348148, 34.806755, 39.470554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961811, 34.905060, 39.437695>,  <38.730007, 34.964043, 39.417980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961811, 34.905060, 39.437695>,  <39.348148, 34.806755, 39.470554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961811, 34.905060, 39.437695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017587, 0.378455, 0.925453,
		0.258534, 0.892396, -0.369850,
		-0.965842, 0.245765, -0.082149,
		38.672058, 34.978790, 39.413052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262463, 35.495605, 39.791992>,  <39.348148, 34.806755, 39.470554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262463, 35.495605, 39.791992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900677, 35.326328, 39.770615>,  <38.683605, 35.224762, 39.757790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900677, 35.326328, 39.770615>,  <39.262463, 35.495605, 39.791992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900677, 35.326328, 39.770615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198381, 0.306412, 0.930998,
		-0.377613, 0.852656, -0.361091,
		-0.904463, -0.423190, -0.053446,
		38.629337, 35.199371, 39.754581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885620, 35.992584, 40.034500>,  <39.262463, 35.495605, 39.791992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885620, 35.992584, 40.034500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630661, 35.686684, 40.072189>,  <38.477684, 35.503143, 40.094803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630661, 35.686684, 40.072189>,  <38.885620, 35.992584, 40.034500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630661, 35.686684, 40.072189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293734, 0.354212, 0.887837,
		-0.712350, 0.538229, -0.450408,
		-0.637399, -0.764751, 0.094227,
		38.439442, 35.457260, 40.100456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199383, 36.317478, 40.216476>,  <38.885620, 35.992584, 40.034500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199383, 36.317478, 40.216476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158180, 35.934521, 40.324398>,  <38.133457, 35.704746, 40.389149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158180, 35.934521, 40.324398>,  <38.199383, 36.317478, 40.216476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158180, 35.934521, 40.324398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258454, 0.287687, 0.922192,
		-0.960516, 0.025261, -0.277075,
		-0.103006, -0.957391, 0.269800,
		38.127277, 35.647305, 40.405338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607544, 36.396954, 40.533142>,  <38.199383, 36.317478, 40.216476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607544, 36.396954, 40.533142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738098, 36.037712, 40.651043>,  <37.816433, 35.822166, 40.721783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738098, 36.037712, 40.651043>,  <37.607544, 36.396954, 40.533142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738098, 36.037712, 40.651043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515975, 0.091990, 0.851650,
		-0.791986, -0.430052, -0.433375,
		0.326388, -0.898105, 0.294750,
		37.836014, 35.768280, 40.739468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030685, 35.926533, 40.820190>,  <37.607544, 36.396954, 40.533142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030685, 35.926533, 40.820190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373192, 35.788025, 40.973507>,  <37.578693, 35.704922, 41.065498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373192, 35.788025, 40.973507>,  <37.030685, 35.926533, 40.820190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373192, 35.788025, 40.973507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378985, 0.083050, 0.921669,
		-0.350979, -0.934451, -0.060119,
		0.856262, -0.346271, 0.383292,
		37.630070, 35.684143, 41.088493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795776, 35.435120, 41.226528>,  <37.030685, 35.926533, 40.820190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795776, 35.435120, 41.226528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174545, 35.467628, 41.350933>,  <37.401806, 35.487133, 41.425575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174545, 35.467628, 41.350933>,  <36.795776, 35.435120, 41.226528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174545, 35.467628, 41.350933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319495, 0.131271, 0.938451,
		0.035441, -0.988010, 0.150269,
		0.946925, 0.081270, 0.311012,
		37.458622, 35.492012, 41.444237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014923, 34.878353, 41.763874>,  <36.795776, 35.435120, 41.226528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014923, 34.878353, 41.763874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242447, 35.201256, 41.826847>,  <37.378960, 35.394997, 41.864632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242447, 35.201256, 41.826847>,  <37.014923, 34.878353, 41.763874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242447, 35.201256, 41.826847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426297, 0.125673, 0.895811,
		0.703368, -0.576660, 0.415616,
		0.568810, 0.807261, 0.157434,
		37.413090, 35.443436, 41.874077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478924, 34.849300, 42.472111>,  <37.014923, 34.878353, 41.763874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478924, 34.849300, 42.472111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429165, 35.237312, 42.388615>,  <37.399311, 35.470119, 42.338516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429165, 35.237312, 42.388615>,  <37.478924, 34.849300, 42.472111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429165, 35.237312, 42.388615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298557, 0.164030, 0.940191,
		0.946250, 0.179276, 0.269204,
		-0.124396, 0.970028, -0.208737,
		37.391846, 35.528320, 42.325993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556042, 35.137650, 43.086342>,  <37.478924, 34.849300, 42.472111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556042, 35.137650, 43.086342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394974, 35.441200, 42.881611>,  <37.298332, 35.623329, 42.758770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394974, 35.441200, 42.881611>,  <37.556042, 35.137650, 43.086342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394974, 35.441200, 42.881611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442660, 0.327993, 0.834550,
		0.801194, 0.562613, 0.203850,
		-0.402667, 0.758872, -0.511832,
		37.274174, 35.668861, 42.728062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700768, 35.592312, 43.526199>,  <37.556042, 35.137650, 43.086342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700768, 35.592312, 43.526199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416565, 35.751877, 43.294323>,  <37.246044, 35.847614, 43.155197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416565, 35.751877, 43.294323>,  <37.700768, 35.592312, 43.526199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416565, 35.751877, 43.294323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465664, 0.351084, 0.812340,
		0.527575, 0.847118, -0.063689,
		-0.710508, 0.398913, -0.579695,
		37.203411, 35.871552, 43.120415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680252, 36.340794, 43.611229>,  <37.700768, 35.592312, 43.526199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680252, 36.340794, 43.611229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322060, 36.217144, 43.483131>,  <37.107143, 36.142956, 43.406273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322060, 36.217144, 43.483131>,  <37.680252, 36.340794, 43.611229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322060, 36.217144, 43.483131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380453, 0.158153, 0.911177,
		-0.231015, 0.937781, -0.259228,
		-0.895482, -0.309120, -0.320246,
		37.053413, 36.124409, 43.387058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172379, 36.866585, 43.713604>,  <37.680252, 36.340794, 43.611229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172379, 36.866585, 43.713604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955128, 36.531456, 43.691452>,  <36.824780, 36.330379, 43.678162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955128, 36.531456, 43.691452>,  <37.172379, 36.866585, 43.713604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955128, 36.531456, 43.691452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604802, 0.344607, 0.717956,
		-0.582437, 0.423433, -0.693882,
		-0.543123, -0.837825, -0.055381,
		36.792191, 36.280109, 43.674839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479366, 37.026867, 43.749832>,  <37.172379, 36.866585, 43.713604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479366, 37.026867, 43.749832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486061, 36.643574, 43.864029>,  <36.490078, 36.413597, 43.932549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486061, 36.643574, 43.864029>,  <36.479366, 37.026867, 43.749832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486061, 36.643574, 43.864029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676136, 0.199501, 0.709253,
		-0.736587, -0.204905, -0.644557,
		0.016740, -0.958235, 0.285493,
		36.491081, 36.356102, 43.949677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.711716, 36.732018, 43.834023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913982, 36.441902, 44.020893>,  <36.035343, 36.267834, 44.133015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913982, 36.441902, 44.020893>,  <35.711716, 36.732018, 43.834023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913982, 36.441902, 44.020893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683746, -0.006698, 0.729689,
		-0.526109, -0.688408, -0.499303,
		0.505669, -0.725292, 0.467172,
		36.065681, 36.224316, 44.161045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241039, 36.185326, 43.952965>,  <35.711716, 36.732018, 43.834023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241039, 36.185326, 43.952965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527344, 36.169434, 44.231850>,  <35.699127, 36.159897, 44.399181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527344, 36.169434, 44.231850>,  <35.241039, 36.185326, 43.952965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527344, 36.169434, 44.231850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697193, -0.097901, 0.710167,
		0.040042, -0.994403, -0.097773,
		0.715764, -0.039730, 0.697211,
		35.742073, 36.157513, 44.441013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871334, 36.019066, 44.528458>,  <35.241039, 36.185326, 43.952965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871334, 36.019066, 44.528458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219151, 36.101055, 44.708187>,  <35.427841, 36.150249, 44.816025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219151, 36.101055, 44.708187>,  <34.871334, 36.019066, 44.528458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219151, 36.101055, 44.708187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359421, -0.361313, 0.860389,
		0.338706, -0.909636, -0.240501,
		0.869537, 0.204978, 0.449321,
		35.480011, 36.162548, 44.842983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964905, 35.493752, 44.963844>,  <34.871334, 36.019066, 44.528458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964905, 35.493752, 44.963844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.214375, 35.768940, 45.112289>,  <35.364056, 35.934055, 45.201359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.214375, 35.768940, 45.112289>,  <34.964905, 35.493752, 44.963844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214375, 35.768940, 45.112289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185110, -0.331275, 0.925198,
		0.759454, -0.645715, -0.079256,
		0.623670, 0.687974, 0.371117,
		35.401474, 35.975330, 45.223625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379513, 35.153370, 45.456573>,  <34.964905, 35.493752, 44.963844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379513, 35.153370, 45.456573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355717, 35.542091, 45.547840>,  <35.341438, 35.775326, 45.602600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355717, 35.542091, 45.547840>,  <35.379513, 35.153370, 45.456573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355717, 35.542091, 45.547840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213795, -0.235672, 0.948024,
		0.975066, 0.007614, 0.221786,
		-0.059487, 0.971803, 0.228168,
		35.337872, 35.833633, 45.616291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579700, 35.154541, 46.079571>,  <35.379513, 35.153370, 45.456573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579700, 35.154541, 46.079571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.414616, 35.518871, 46.082813>,  <35.315563, 35.737469, 46.084759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.414616, 35.518871, 46.082813>,  <35.579700, 35.154541, 46.079571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414616, 35.518871, 46.082813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052181, -0.032525, 0.998108,
		0.909365, 0.411509, 0.060952,
		-0.412713, 0.910825, 0.008104,
		35.290802, 35.792118, 46.085243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975178, 35.570786, 46.561508>,  <35.579700, 35.154541, 46.079571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975178, 35.570786, 46.561508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596161, 35.679020, 46.493446>,  <35.368752, 35.743961, 46.452610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596161, 35.679020, 46.493446>,  <35.975178, 35.570786, 46.561508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596161, 35.679020, 46.493446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210976, -0.129537, 0.968870,
		0.240120, 0.953942, 0.179828,
		-0.947540, 0.270584, -0.170154,
		35.311897, 35.760197, 46.442402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892750, 35.822964, 47.166767>,  <35.975178, 35.570786, 46.561508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892750, 35.822964, 47.166767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512199, 35.797131, 47.046295>,  <35.283867, 35.781631, 46.974010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512199, 35.797131, 47.046295>,  <35.892750, 35.822964, 47.166767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512199, 35.797131, 47.046295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294379, -0.097176, 0.950735,
		-0.090671, 0.993169, 0.073439,
		-0.951378, -0.064585, -0.301179,
		35.226788, 35.777756, 46.955940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607044, 36.154175, 47.682636>,  <35.892750, 35.822964, 47.166767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607044, 36.154175, 47.682636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.304577, 35.988537, 47.479958>,  <35.123096, 35.889156, 47.358349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.304577, 35.988537, 47.479958>,  <35.607044, 36.154175, 47.682636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304577, 35.988537, 47.479958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508058, -0.116507, 0.853407,
		-0.412422, 0.902748, -0.122284,
		-0.756164, -0.414092, -0.506699,
		35.077728, 35.864311, 47.327950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979996, 36.436901, 47.988213>,  <35.607044, 36.154175, 47.682636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979996, 36.436901, 47.988213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900105, 36.089092, 47.807529>,  <34.852169, 35.880405, 47.699120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.900105, 36.089092, 47.807529>,  <34.979996, 36.436901, 47.988213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900105, 36.089092, 47.807529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428285, -0.337154, 0.838391,
		-0.881294, 0.360911, -0.305064,
		-0.199731, -0.869523, -0.451705,
		34.840187, 35.828236, 47.672020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352848, 36.301300, 48.276691>,  <34.979996, 36.436901, 47.988213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352848, 36.301300, 48.276691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516930, 35.964802, 48.135818>,  <34.615379, 35.762901, 48.051296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516930, 35.964802, 48.135818>,  <34.352848, 36.301300, 48.276691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516930, 35.964802, 48.135818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189899, -0.456490, 0.869227,
		-0.892003, -0.289684, -0.347008,
		0.410207, -0.841249, -0.352180,
		34.639992, 35.712425, 48.030163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820683, 35.745754, 48.437881>,  <34.352848, 36.301300, 48.276691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820683, 35.745754, 48.437881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175022, 35.566399, 48.390186>,  <34.387627, 35.458786, 48.361568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175022, 35.566399, 48.390186>,  <33.820683, 35.745754, 48.437881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175022, 35.566399, 48.390186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151927, -0.523145, 0.838592,
		-0.438393, -0.724752, -0.531551,
		0.885849, -0.448390, -0.119234,
		34.440777, 35.431881, 48.354416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708885, 35.160355, 48.641869>,  <33.820683, 35.745754, 48.437881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708885, 35.160355, 48.641869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107830, 35.131298, 48.641865>,  <34.347195, 35.113865, 48.641861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107830, 35.131298, 48.641865>,  <33.708885, 35.160355, 48.641869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107830, 35.131298, 48.641865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030451, -0.418211, 0.907839,
		-0.065947, -0.905441, -0.419318,
		0.997358, -0.072638, -0.000008,
		34.407036, 35.109505, 48.641861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857697, 34.492935, 48.671116>,  <33.708885, 35.160355, 48.641869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857697, 34.492935, 48.671116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183071, 34.684555, 48.803070>,  <34.378296, 34.799526, 48.882244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183071, 34.684555, 48.803070>,  <33.857697, 34.492935, 48.671116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183071, 34.684555, 48.803070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044503, -0.514233, 0.856495,
		0.579943, -0.711388, -0.396979,
		0.813440, 0.479052, 0.329885,
		34.427105, 34.828270, 48.902035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386509, 33.958012, 48.760162>,  <33.857697, 34.492935, 48.671116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386509, 33.958012, 48.760162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492859, 34.267544, 48.990120>,  <34.556667, 34.453262, 49.128094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492859, 34.267544, 48.990120>,  <34.386509, 33.958012, 48.760162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492859, 34.267544, 48.990120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040482, -0.604797, 0.795350,
		0.963158, -0.188187, -0.192124,
		0.265870, 0.773826, 0.574897,
		34.572620, 34.499691, 49.162590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786743, 33.729473, 49.239323>,  <34.386509, 33.958012, 48.760162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786743, 33.729473, 49.239323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.679585, 34.072975, 49.414032>,  <34.615292, 34.279076, 49.518856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.679585, 34.072975, 49.414032>,  <34.786743, 33.729473, 49.239323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679585, 34.072975, 49.414032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074924, -0.470537, 0.879194,
		0.960531, 0.202805, 0.190395,
		-0.267892, 0.858758, 0.436770,
		34.599216, 34.330605, 49.545063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224621, 33.714035, 49.807953>,  <34.786743, 33.729473, 49.239323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224621, 33.714035, 49.807953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925816, 33.972675, 49.869770>,  <34.746532, 34.127861, 49.906860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925816, 33.972675, 49.869770>,  <35.224621, 33.714035, 49.807953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925816, 33.972675, 49.869770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087215, -0.325760, 0.941421,
		0.659068, 0.689772, 0.299739,
		-0.747009, 0.646602, 0.154540,
		34.701714, 34.166656, 49.916134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366020, 34.023693, 50.355804>,  <35.224621, 33.714035, 49.807953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366020, 34.023693, 50.355804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.971298, 34.086346, 50.372227>,  <34.734467, 34.123936, 50.382080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.971298, 34.086346, 50.372227>,  <35.366020, 34.023693, 50.355804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971298, 34.086346, 50.372227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008587, -0.303842, 0.952684,
		0.161695, 0.939759, 0.301178,
		-0.986803, 0.156630, 0.041060,
		34.675259, 34.133335, 50.384544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260677, 34.110821, 50.979702>,  <35.366020, 34.023693, 50.355804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260677, 34.110821, 50.979702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.877453, 34.061226, 50.876369>,  <34.647518, 34.031467, 50.814369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.877453, 34.061226, 50.876369>,  <35.260677, 34.110821, 50.979702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877453, 34.061226, 50.876369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205071, -0.333007, 0.920355,
		-0.200142, 0.934737, 0.293615,
		-0.958065, -0.123990, -0.258336,
		34.590034, 34.024029, 50.798870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860409, 34.504082, 51.398445>,  <35.260677, 34.110821, 50.979702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860409, 34.504082, 51.398445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621521, 34.211456, 51.266911>,  <34.478188, 34.035881, 51.187988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621521, 34.211456, 51.266911>,  <34.860409, 34.504082, 51.398445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621521, 34.211456, 51.266911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163700, -0.290175, 0.942868,
		-0.785191, 0.616934, 0.053542,
		-0.597224, -0.731567, -0.328835,
		34.442352, 33.991985, 51.168259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354153, 34.587368, 51.807472>,  <34.860409, 34.504082, 51.398445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354153, 34.587368, 51.807472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332272, 34.209339, 51.678574>,  <34.319145, 33.982521, 51.601234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332272, 34.209339, 51.678574>,  <34.354153, 34.587368, 51.807472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332272, 34.209339, 51.678574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236662, -0.301261, 0.923706,
		-0.970051, 0.126790, -0.207184,
		-0.054700, -0.945074, -0.322245,
		34.315861, 33.925816, 51.581902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720062, 34.360783, 51.986252>,  <34.354153, 34.587368, 51.807472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720062, 34.360783, 51.986252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025528, 34.102844, 51.998863>,  <34.208809, 33.948082, 52.006428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025528, 34.102844, 51.998863>,  <33.720062, 34.360783, 51.986252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025528, 34.102844, 51.998863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273846, -0.279313, 0.920322,
		-0.584661, -0.711448, -0.389889,
		0.763662, -0.644846, 0.031524,
		34.254627, 33.909389, 52.008320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552372, 33.532932, 51.969021>,  <33.720062, 34.360783, 51.986252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552372, 33.532932, 51.969021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868568, 33.665466, 52.175064>,  <34.058289, 33.744987, 52.298691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868568, 33.665466, 52.175064>,  <33.552372, 33.532932, 51.969021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868568, 33.665466, 52.175064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402661, -0.352582, 0.844719,
		0.461500, -0.875160, -0.145300,
		0.790495, 0.331331, 0.515109,
		34.105717, 33.764866, 52.329597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827518, 33.453949, 51.939827>,  <33.552372, 33.532932, 51.969021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827518, 33.453949, 51.939827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813427, 33.116817, 51.725018>,  <32.804974, 32.914539, 51.596130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813427, 33.116817, 51.725018>,  <32.827518, 33.453949, 51.939827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813427, 33.116817, 51.725018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193955, 0.532905, -0.823647,
		0.980378, 0.075143, -0.182245,
		-0.035228, -0.842832, -0.537022,
		32.802860, 32.863968, 51.563911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045033, 33.400261, 52.192688>,  <32.827518, 33.453949, 51.939827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045033, 33.400261, 52.192688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.661840, 33.514797, 52.199429>,  <31.431925, 33.583519, 52.203472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.661840, 33.514797, 52.199429>,  <32.045033, 33.400261, 52.192688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661840, 33.514797, 52.199429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011681, 0.097634, -0.995154,
		-0.286594, -0.953142, -0.096876,
		-0.957981, 0.286337, 0.016848,
		31.374447, 33.600697, 52.204483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602480, 32.917404, 51.849705>,  <32.045033, 33.400261, 52.192688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602480, 32.917404, 51.849705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405279, 33.264786, 51.828808>,  <31.286959, 33.473217, 51.816269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405279, 33.264786, 51.828808>,  <31.602480, 32.917404, 51.849705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405279, 33.264786, 51.828808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005953, -0.063410, -0.997970,
		-0.870008, -0.491690, 0.036431,
		-0.493002, 0.868458, -0.052240,
		31.257378, 33.525322, 51.813137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203434, 32.866478, 51.277107>,  <31.602480, 32.917404, 51.849705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203434, 32.866478, 51.277107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183613, 33.261806, 51.334763>,  <31.171721, 33.499004, 51.369354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183613, 33.261806, 51.334763>,  <31.203434, 32.866478, 51.277107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183613, 33.261806, 51.334763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108301, 0.138143, -0.984473,
		-0.992882, -0.064395, 0.100190,
		-0.049555, 0.988316, 0.144134,
		31.168747, 33.558300, 51.378002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657331, 33.048996, 50.823242>,  <31.203434, 32.866478, 51.277107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657331, 33.048996, 50.823242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.865580, 33.383064, 50.894169>,  <30.990528, 33.583504, 50.936726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.865580, 33.383064, 50.894169>,  <30.657331, 33.048996, 50.823242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865580, 33.383064, 50.894169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016543, 0.217512, -0.975917,
		-0.853627, 0.505152, 0.127057,
		0.520623, 0.835171, 0.177317,
		31.021767, 33.633617, 50.947365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346525, 33.573841, 50.424652>,  <30.657331, 33.048996, 50.823242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346525, 33.573841, 50.424652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.715441, 33.702702, 50.510071>,  <30.936790, 33.780018, 50.561321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.715441, 33.702702, 50.510071>,  <30.346525, 33.573841, 50.424652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715441, 33.702702, 50.510071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107534, 0.316817, -0.942371,
		-0.371244, 0.892101, 0.257554,
		0.922287, 0.322154, 0.213548,
		30.992126, 33.799347, 50.574135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350002, 34.315071, 50.185303>,  <30.346525, 33.573841, 50.424652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350002, 34.315071, 50.185303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725250, 34.177647, 50.202732>,  <30.950399, 34.095192, 50.213188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725250, 34.177647, 50.202732>,  <30.350002, 34.315071, 50.185303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725250, 34.177647, 50.202732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144872, 0.275040, -0.950455,
		0.314554, 0.897953, 0.307793,
		0.938119, -0.343560, 0.043573,
		31.006685, 34.074577, 50.215805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729183, 34.906475, 50.052097>,  <30.350002, 34.315071, 50.185303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729183, 34.906475, 50.052097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968204, 34.596687, 49.969036>,  <31.111618, 34.410812, 49.919197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968204, 34.596687, 49.969036>,  <30.729183, 34.906475, 50.052097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968204, 34.596687, 49.969036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349104, 0.484433, -0.802154,
		0.721843, 0.406835, 0.559846,
		0.597553, -0.774473, -0.207657,
		31.147470, 34.364346, 49.906738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433096, 35.252373, 49.866959>,  <30.729183, 34.906475, 50.052097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433096, 35.252373, 49.866959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443808, 34.887112, 49.704266>,  <31.450235, 34.667953, 49.606647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443808, 34.887112, 49.704266>,  <31.433096, 35.252373, 49.866959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443808, 34.887112, 49.704266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227631, 0.401763, -0.887001,
		0.973379, -0.068833, 0.218620,
		0.026779, -0.913153, -0.406736,
		31.451841, 34.613167, 49.582245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175453, 35.291893, 49.580658>,  <31.433096, 35.252373, 49.866959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175453, 35.291893, 49.580658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963921, 35.002060, 49.403877>,  <31.837002, 34.828159, 49.297810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963921, 35.002060, 49.403877>,  <32.175453, 35.291893, 49.580658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963921, 35.002060, 49.403877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445037, 0.206660, -0.871340,
		0.722690, -0.657476, 0.213177,
		-0.528830, -0.724581, -0.441952,
		31.805271, 34.784687, 49.271290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658463, 34.953449, 49.141056>,  <32.175453, 35.291893, 49.580658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658463, 34.953449, 49.141056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290993, 34.856308, 49.016438>,  <32.070511, 34.798023, 48.941666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290993, 34.856308, 49.016438>,  <32.658463, 34.953449, 49.141056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290993, 34.856308, 49.016438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227602, 0.319205, -0.919948,
		0.322911, -0.916027, -0.237954,
		-0.918654, -0.242903, -0.311565,
		32.015392, 34.783455, 48.922974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682835, 34.528885, 48.574078>,  <32.658463, 34.953449, 49.141056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682835, 34.528885, 48.574078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335869, 34.718948, 48.515003>,  <32.127689, 34.832989, 48.479561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335869, 34.718948, 48.515003>,  <32.682835, 34.528885, 48.574078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335869, 34.718948, 48.515003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268972, 0.198058, -0.942564,
		-0.418619, -0.857318, -0.299604,
		-0.867417, 0.475161, -0.147684,
		32.075645, 34.861496, 48.470699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546688, 34.328457, 47.969822>,  <32.682835, 34.528885, 48.574078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546688, 34.328457, 47.969822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.295235, 34.636909, 48.010159>,  <32.144363, 34.821983, 48.034359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.295235, 34.636909, 48.010159>,  <32.546688, 34.328457, 47.969822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295235, 34.636909, 48.010159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166730, 0.260280, -0.951028,
		-0.759618, -0.581037, -0.292193,
		-0.628634, 0.771136, 0.100837,
		32.106644, 34.868252, 48.040409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060307, 34.323761, 47.459747>,  <32.546688, 34.328457, 47.969822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060307, 34.323761, 47.459747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031261, 34.710049, 47.559433>,  <32.013836, 34.941822, 47.619244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031261, 34.710049, 47.559433>,  <32.060307, 34.323761, 47.459747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031261, 34.710049, 47.559433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055161, 0.245599, -0.967801,
		-0.995834, -0.084019, 0.035437,
		-0.072610, 0.965724, 0.249210,
		32.009480, 34.999767, 47.634197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776409, 34.542446, 46.881950>,  <32.060307, 34.323761, 47.459747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776409, 34.542446, 46.881950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.913702, 34.875900, 47.055042>,  <31.996077, 35.075974, 47.158897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.913702, 34.875900, 47.055042>,  <31.776409, 34.542446, 46.881950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913702, 34.875900, 47.055042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086270, 0.430786, -0.898321,
		-0.935281, 0.345662, 0.075942,
		0.343231, 0.833631, 0.432726,
		32.016670, 35.125988, 47.184860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496920, 35.031036, 46.516815>,  <31.776409, 34.542446, 46.881950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496920, 35.031036, 46.516815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.805452, 35.203201, 46.704346>,  <31.990572, 35.306499, 46.816864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.805452, 35.203201, 46.704346>,  <31.496920, 35.031036, 46.516815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805452, 35.203201, 46.704346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324153, 0.368251, -0.871388,
		-0.547700, 0.824098, 0.144524,
		0.771330, 0.430411, 0.468825,
		32.036850, 35.332325, 46.844994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495949, 35.732498, 46.480907>,  <31.496920, 35.031036, 46.516815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495949, 35.732498, 46.480907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891094, 35.685539, 46.521584>,  <32.128181, 35.657364, 46.545990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891094, 35.685539, 46.521584>,  <31.495949, 35.732498, 46.480907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891094, 35.685539, 46.521584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151629, 0.587089, -0.795195,
		0.033651, 0.800965, 0.597765,
		0.987864, -0.117398, 0.101693,
		32.187454, 35.650318, 46.552090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747797, 36.399616, 46.372395>,  <31.495949, 35.732498, 46.480907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747797, 36.399616, 46.372395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060619, 36.158192, 46.310291>,  <32.248314, 36.013336, 46.273029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060619, 36.158192, 46.310291>,  <31.747797, 36.399616, 46.372395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060619, 36.158192, 46.310291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248342, 0.530310, -0.810615,
		0.571591, 0.595388, 0.564621,
		0.782055, -0.603560, -0.155261,
		32.295235, 35.977123, 46.263714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105164, 36.865108, 45.940468>,  <31.747797, 36.399616, 46.372395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105164, 36.865108, 45.940468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287582, 36.512016, 45.895210>,  <32.397034, 36.300159, 45.868053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287582, 36.512016, 45.895210>,  <32.105164, 36.865108, 45.940468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287582, 36.512016, 45.895210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308933, 0.276258, -0.910078,
		0.834613, 0.380086, 0.398693,
		0.456049, -0.882733, -0.113147,
		32.424397, 36.247196, 45.861267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787289, 36.981384, 45.876980>,  <32.105164, 36.865108, 45.940468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787289, 36.981384, 45.876980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.732563, 36.613777, 45.729092>,  <32.699726, 36.393211, 45.640358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.732563, 36.613777, 45.729092>,  <32.787289, 36.981384, 45.876980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732563, 36.613777, 45.729092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516859, 0.252168, -0.818088,
		0.845067, -0.303018, 0.440501,
		-0.136816, -0.919017, -0.369716,
		32.691517, 36.338074, 45.618176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353146, 36.766308, 45.362236>,  <32.787289, 36.981384, 45.876980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353146, 36.766308, 45.362236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.061337, 36.514332, 45.255672>,  <32.886253, 36.363148, 45.191734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.061337, 36.514332, 45.255672>,  <33.353146, 36.766308, 45.362236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061337, 36.514332, 45.255672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318632, 0.031648, -0.947350,
		0.605206, -0.775998, 0.177632,
		-0.729520, -0.629942, -0.266412,
		32.842480, 36.325348, 45.175751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.626690, 25.327076, 36.791435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341709, 25.241716, 36.524040>,  <43.170723, 25.190500, 36.363602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341709, 25.241716, 36.524040>,  <43.626690, 25.327076, 36.791435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341709, 25.241716, 36.524040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114471, 0.904535, -0.410747,
		0.692323, -0.369159, -0.620008,
		-0.712450, -0.213397, -0.668488,
		43.127975, 25.177698, 36.323494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885780, 25.446577, 36.081978>,  <43.626690, 25.327076, 36.791435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885780, 25.446577, 36.081978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489819, 25.503099, 36.077740>,  <43.252239, 25.537014, 36.075199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489819, 25.503099, 36.077740>,  <43.885780, 25.446577, 36.081978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489819, 25.503099, 36.077740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133184, 0.902259, -0.410110,
		-0.048395, -0.407383, -0.911975,
		-0.989909, 0.141307, -0.010592,
		43.192844, 25.545492, 36.074562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758148, 25.882004, 35.506744>,  <43.885780, 25.446577, 36.081978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758148, 25.882004, 35.506744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417561, 25.910212, 35.714600>,  <43.213207, 25.927135, 35.839314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417561, 25.910212, 35.714600>,  <43.758148, 25.882004, 35.506744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417561, 25.910212, 35.714600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090417, 0.956335, -0.277937,
		-0.516550, -0.283639, -0.807914,
		-0.851470, 0.070519, 0.519640,
		43.162121, 25.931368, 35.870491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199760, 26.030125, 35.059414>,  <43.758148, 25.882004, 35.506744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199760, 26.030125, 35.059414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093479, 26.148487, 35.426422>,  <43.029709, 26.219503, 35.646626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093479, 26.148487, 35.426422>,  <43.199760, 26.030125, 35.059414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093479, 26.148487, 35.426422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016105, 0.952959, -0.302671,
		-0.963920, -0.065644, -0.257971,
		-0.265705, 0.295905, 0.917519,
		43.013767, 26.237259, 35.701679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919010, 26.670008, 34.899536>,  <43.199760, 26.030125, 35.059414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919010, 26.670008, 34.899536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892754, 26.680901, 35.298523>,  <42.876999, 26.687437, 35.537914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892754, 26.680901, 35.298523>,  <42.919010, 26.670008, 34.899536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892754, 26.680901, 35.298523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276541, 0.960969, -0.008037,
		-0.958757, 0.275314, -0.070615,
		-0.065646, 0.027234, 0.997471,
		42.873058, 26.689070, 35.597763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449593, 27.164745, 35.146606>,  <42.919010, 26.670008, 34.899536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449593, 27.164745, 35.146606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.715607, 27.102839, 35.438847>,  <42.875217, 27.065695, 35.614189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.715607, 27.102839, 35.438847>,  <42.449593, 27.164745, 35.146606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715607, 27.102839, 35.438847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258922, 0.965395, -0.031185,
		-0.700488, 0.209907, 0.682096,
		0.665038, -0.154765, 0.730597,
		42.915119, 27.056410, 35.658028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281219, 27.612724, 35.639320>,  <42.449593, 27.164745, 35.146606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281219, 27.612724, 35.639320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.668198, 27.522810, 35.685841>,  <42.900383, 27.468861, 35.713753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.668198, 27.522810, 35.685841>,  <42.281219, 27.612724, 35.639320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668198, 27.522810, 35.685841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216034, 0.972833, 0.083217,
		-0.131845, -0.055383, 0.989722,
		0.967443, -0.224786, 0.116299,
		42.958431, 27.455374, 35.720730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451385, 27.870747, 36.332153>,  <42.281219, 27.612724, 35.639320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451385, 27.870747, 36.332153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801472, 27.842932, 36.140675>,  <43.011524, 27.826242, 36.025787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801472, 27.842932, 36.140675>,  <42.451385, 27.870747, 36.332153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801472, 27.842932, 36.140675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214266, 0.942964, 0.254772,
		0.433682, -0.325551, 0.840200,
		0.875220, -0.069537, -0.478701,
		43.064037, 27.822071, 35.997063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928741, 28.301054, 36.719131>,  <42.451385, 27.870747, 36.332153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928741, 28.301054, 36.719131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119362, 28.223730, 36.376080>,  <43.233734, 28.177336, 36.170246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119362, 28.223730, 36.376080>,  <42.928741, 28.301054, 36.719131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119362, 28.223730, 36.376080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449564, 0.891916, 0.048765,
		0.755508, -0.408800, 0.511947,
		0.476549, -0.193311, -0.857631,
		43.262325, 28.165737, 36.118790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554764, 28.473396, 36.844837>,  <42.928741, 28.301054, 36.719131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554764, 28.473396, 36.844837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.502205, 28.497438, 36.449036>,  <43.470669, 28.511864, 36.211555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.502205, 28.497438, 36.449036>,  <43.554764, 28.473396, 36.844837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502205, 28.497438, 36.449036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412027, 0.911172, 0.000636,
		0.901649, -0.407619, -0.144486,
		-0.131392, 0.060105, -0.989507,
		43.462788, 28.515471, 36.152184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139866, 28.928162, 36.651855>,  <43.554764, 28.473396, 36.844837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139866, 28.928162, 36.651855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.881443, 28.907810, 36.347218>,  <43.726391, 28.895599, 36.164436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.881443, 28.907810, 36.347218>,  <44.139866, 28.928162, 36.651855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881443, 28.907810, 36.347218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219550, 0.943223, -0.249256,
		0.731033, -0.328241, -0.598205,
		-0.646056, -0.050878, -0.761592,
		43.687626, 28.892548, 36.118740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524956, 29.244843, 36.077553>,  <44.139866, 28.928162, 36.651855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524956, 29.244843, 36.077553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130424, 29.254383, 36.012341>,  <43.893703, 29.260107, 35.973213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130424, 29.254383, 36.012341>,  <44.524956, 29.244843, 36.077553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130424, 29.254383, 36.012341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073032, 0.950248, -0.302812,
		0.147698, -0.310580, -0.939002,
		-0.986332, 0.023853, -0.163032,
		43.834526, 29.261539, 35.963432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439056, 29.571295, 35.525467>,  <44.524956, 29.244843, 36.077553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439056, 29.571295, 35.525467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.083691, 29.631573, 35.698910>,  <43.870472, 29.667740, 35.802975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.083691, 29.631573, 35.698910>,  <44.439056, 29.571295, 35.525467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083691, 29.631573, 35.698910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041994, 0.967301, -0.250130,
		-0.457120, -0.204010, -0.865691,
		-0.888413, 0.150694, 0.433606,
		43.817165, 29.676781, 35.828991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063267, 29.880005, 34.986683>,  <44.439056, 29.571295, 35.525467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063267, 29.880005, 34.986683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.851818, 29.952887, 35.318310>,  <43.724949, 29.996616, 35.517288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.851818, 29.952887, 35.318310>,  <44.063267, 29.880005, 34.986683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851818, 29.952887, 35.318310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058135, 0.966627, -0.249504,
		-0.846862, -0.180092, -0.500391,
		-0.528625, 0.182205, 0.829069,
		43.693230, 30.007547, 35.567032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528000, 30.359167, 34.866207>,  <44.063267, 29.880005, 34.986683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528000, 30.359167, 34.866207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.559231, 30.392637, 35.263580>,  <43.577969, 30.412720, 35.502003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.559231, 30.392637, 35.263580>,  <43.528000, 30.359167, 34.866207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559231, 30.392637, 35.263580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149938, 0.986123, -0.071278,
		-0.985608, -0.143388, 0.089537,
		0.078074, 0.083678, 0.993430,
		43.582653, 30.417740, 35.561607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913902, 30.772684, 35.063629>,  <43.528000, 30.359167, 34.866207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913902, 30.772684, 35.063629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192928, 30.783672, 35.350029>,  <43.360344, 30.790266, 35.521870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192928, 30.783672, 35.350029>,  <42.913902, 30.772684, 35.063629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192928, 30.783672, 35.350029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007600, 0.998925, -0.045729,
		-0.716482, 0.037340, 0.696606,
		0.697564, 0.027470, 0.715995,
		43.402199, 30.791914, 35.564827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723728, 31.197618, 35.574169>,  <42.913902, 30.772684, 35.063629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723728, 31.197618, 35.574169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119545, 31.198160, 35.631874>,  <43.357033, 31.198486, 35.666496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119545, 31.198160, 35.631874>,  <42.723728, 31.197618, 35.574169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119545, 31.198160, 35.631874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002409, 0.999661, -0.025913,
		-0.144253, 0.025990, 0.989199,
		0.989538, 0.001355, 0.144267,
		43.416405, 31.198566, 35.675156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755962, 31.694658, 36.147129>,  <42.723728, 31.197618, 35.574169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755962, 31.694658, 36.147129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126328, 31.677015, 35.997070>,  <43.348545, 31.666430, 35.907036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126328, 31.677015, 35.997070>,  <42.755962, 31.694658, 36.147129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126328, 31.677015, 35.997070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112579, 0.980248, 0.162606,
		0.360567, -0.192793, 0.912591,
		0.925914, -0.044108, -0.375150,
		43.404102, 31.663782, 35.884525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109940, 32.249928, 36.372532>,  <42.755962, 31.694658, 36.147129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109940, 32.249928, 36.372532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336700, 32.145184, 36.060108>,  <43.472755, 32.082336, 35.872654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336700, 32.145184, 36.060108>,  <43.109940, 32.249928, 36.372532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336700, 32.145184, 36.060108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148418, 0.965083, -0.215839,
		0.810307, 0.006436, 0.585970,
		0.566899, -0.261864, -0.781059,
		43.506771, 32.066624, 35.825790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650448, 32.645737, 36.456112>,  <43.109940, 32.249928, 36.372532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650448, 32.645737, 36.456112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625187, 32.524914, 36.075634>,  <43.610031, 32.452419, 35.847347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625187, 32.524914, 36.075634>,  <43.650448, 32.645737, 36.456112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625187, 32.524914, 36.075634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005204, 0.953184, -0.302345,
		0.997990, -0.014143, -0.061764,
		-0.063149, -0.302059, -0.951195,
		43.606243, 32.434296, 35.790276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237331, 33.041546, 36.070602>,  <43.650448, 32.645737, 36.456112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237331, 33.041546, 36.070602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975372, 32.925713, 35.791389>,  <43.818195, 32.856213, 35.623863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975372, 32.925713, 35.791389>,  <44.237331, 33.041546, 36.070602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975372, 32.925713, 35.791389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000916, 0.923972, -0.382459,
		0.755715, -0.249833, -0.605375,
		-0.654900, -0.289584, -0.698030,
		43.778904, 32.838837, 35.581982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350533, 33.142700, 35.377007>,  <44.237331, 33.041546, 36.070602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350533, 33.142700, 35.377007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950714, 33.130901, 35.374836>,  <43.710823, 33.123821, 35.373535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950714, 33.130901, 35.374836>,  <44.350533, 33.142700, 35.377007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950714, 33.130901, 35.374836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022746, 0.863366, -0.504065,
		0.019553, -0.503715, -0.863649,
		-0.999550, -0.029501, -0.005424,
		43.650848, 33.122051, 35.373207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978359, 32.921494, 35.720196>,  <44.350533, 33.142700, 35.377007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978359, 32.921494, 35.720196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360802, 33.037979, 35.707176>,  <45.590267, 33.107872, 35.699364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360802, 33.037979, 35.707176>,  <44.978359, 32.921494, 35.720196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360802, 33.037979, 35.707176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254810, -0.881112, -0.398389,
		-0.144697, 0.372607, -0.916639,
		0.956104, 0.291215, -0.032550,
		45.647633, 33.125343, 35.697411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099686, 32.911343, 35.108044>,  <44.978359, 32.921494, 35.720196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099686, 32.911343, 35.108044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426289, 32.847710, 35.330040>,  <45.622250, 32.809532, 35.463238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426289, 32.847710, 35.330040>,  <45.099686, 32.911343, 35.108044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426289, 32.847710, 35.330040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142822, -0.875756, -0.461144,
		0.559391, 0.455792, -0.692341,
		0.816507, -0.159079, 0.554987,
		45.671242, 32.799988, 35.496536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584026, 32.805019, 34.611439>,  <45.099686, 32.911343, 35.108044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584026, 32.805019, 34.611439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738605, 32.629234, 34.935791>,  <45.831352, 32.523762, 35.130402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738605, 32.629234, 34.935791>,  <45.584026, 32.805019, 34.611439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738605, 32.629234, 34.935791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120625, -0.847550, -0.516825,
		0.914391, 0.297536, -0.274520,
		0.386444, -0.439466, 0.810883,
		45.854538, 32.497395, 35.179054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101093, 32.428318, 34.350224>,  <45.584026, 32.805019, 34.611439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101093, 32.428318, 34.350224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.067764, 32.259193, 34.711174>,  <46.047768, 32.157719, 34.927746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.067764, 32.259193, 34.711174>,  <46.101093, 32.428318, 34.350224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067764, 32.259193, 34.711174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216238, -0.891622, -0.397809,
		0.972779, 0.161983, 0.165719,
		-0.083321, -0.422815, 0.902377,
		46.042767, 32.132347, 34.981888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714752, 32.091625, 34.445782>,  <46.101093, 32.428318, 34.350224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714752, 32.091625, 34.445782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452991, 31.895649, 34.676159>,  <46.295933, 31.778063, 34.814384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452991, 31.895649, 34.676159>,  <46.714752, 32.091625, 34.445782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452991, 31.895649, 34.676159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128962, -0.822840, -0.553446,
		0.745066, -0.287903, 0.601654,
		-0.654404, -0.489945, 0.575942,
		46.256672, 31.748665, 34.848942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.092941, 31.494844, 34.776455>,  <46.714752, 32.091625, 34.445782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.092941, 31.494844, 34.776455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.701851, 31.411699, 34.764824>,  <46.467197, 31.361813, 34.757847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.701851, 31.411699, 34.764824>,  <47.092941, 31.494844, 34.776455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701851, 31.411699, 34.764824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207469, -0.936167, -0.283811,
		0.031773, -0.283522, 0.958439,
		-0.977726, -0.207863, -0.029078,
		46.408535, 31.349340, 34.756100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088360, 30.789625, 34.828751>,  <47.092941, 31.494844, 34.776455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088360, 30.789625, 34.828751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.711975, 30.869217, 34.719212>,  <46.486145, 30.916971, 34.653488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.711975, 30.869217, 34.719212>,  <47.088360, 30.789625, 34.828751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.711975, 30.869217, 34.719212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082931, -0.919849, -0.383405,
		-0.328186, -0.338061, 0.882048,
		-0.940966, 0.198977, -0.273845,
		46.429684, 30.928909, 34.637058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773842, 30.289499, 35.145493>,  <47.088360, 30.789625, 34.828751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.773842, 30.289499, 35.145493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.507549, 30.429546, 34.881912>,  <46.347775, 30.513575, 34.723763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.507549, 30.429546, 34.881912>,  <46.773842, 30.289499, 35.145493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507549, 30.429546, 34.881912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119710, -0.921763, -0.368811,
		-0.736525, -0.166647, 0.655560,
		-0.665733, 0.350116, -0.658953,
		46.307831, 30.534580, 34.684227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227024, 29.718811, 35.211239>,  <46.773842, 30.289499, 35.145493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227024, 29.718811, 35.211239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.191032, 29.870190, 34.842743>,  <46.169437, 29.961018, 34.621647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.191032, 29.870190, 34.842743>,  <46.227024, 29.718811, 35.211239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191032, 29.870190, 34.842743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312134, -0.889106, -0.334759,
		-0.945768, 0.257429, 0.198126,
		-0.089978, 0.378446, -0.921240,
		46.164040, 29.983723, 34.566372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759518, 29.341276, 34.939754>,  <46.227024, 29.718811, 35.211239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759518, 29.341276, 34.939754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877575, 29.518890, 34.601353>,  <45.948410, 29.625458, 34.398312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877575, 29.518890, 34.601353>,  <45.759518, 29.341276, 34.939754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877575, 29.518890, 34.601353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194571, -0.838961, -0.508218,
		-0.935431, 0.314606, -0.161221,
		0.295147, 0.444034, -0.846004,
		45.966118, 29.652102, 34.347553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060562, 29.324709, 34.463871>,  <45.759518, 29.341276, 34.939754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060562, 29.324709, 34.463871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.387505, 29.330297, 34.233486>,  <45.583672, 29.333651, 34.095257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.387505, 29.330297, 34.233486>,  <45.060562, 29.324709, 34.463871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387505, 29.330297, 34.233486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355360, -0.774655, -0.523095,
		-0.453478, 0.632230, -0.628207,
		0.817360, 0.013972, -0.575958,
		45.632713, 29.334490, 34.060699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840858, 29.328529, 33.846947>,  <45.060562, 29.324709, 34.463871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840858, 29.328529, 33.846947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217777, 29.198431, 33.815201>,  <45.443928, 29.120371, 33.796154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217777, 29.198431, 33.815201>,  <44.840858, 29.328529, 33.846947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217777, 29.198431, 33.815201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320583, -0.808255, -0.493912,
		0.096496, 0.490853, -0.865882,
		0.942292, -0.325248, -0.079366,
		45.500465, 29.100857, 33.791389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891754, 29.082413, 33.088867>,  <44.840858, 29.328529, 33.846947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891754, 29.082413, 33.088867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.184528, 28.927082, 33.312820>,  <45.360191, 28.833883, 33.447193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.184528, 28.927082, 33.312820>,  <44.891754, 29.082413, 33.088867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184528, 28.927082, 33.312820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173203, -0.900746, -0.398319,
		0.658991, 0.194571, -0.726549,
		0.731937, -0.388329, 0.559883,
		45.404110, 28.810583, 33.480785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018406, 28.527151, 32.688026>,  <44.891754, 29.082413, 33.088867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018406, 28.527151, 32.688026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.194771, 28.436718, 33.035469>,  <45.300591, 28.382458, 33.243935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.194771, 28.436718, 33.035469>,  <45.018406, 28.527151, 32.688026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194771, 28.436718, 33.035469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139644, -0.973251, -0.182434,
		0.886620, -0.040858, -0.460690,
		0.440913, -0.226082, 0.868610,
		45.327045, 28.368893, 33.296051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175724, 27.860895, 32.497513>,  <45.018406, 28.527151, 32.688026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175724, 27.860895, 32.497513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.266758, 27.860428, 32.887016>,  <45.321381, 27.860147, 33.120716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.266758, 27.860428, 32.887016>,  <45.175724, 27.860895, 32.497513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266758, 27.860428, 32.887016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127012, -0.991421, -0.030873,
		0.965438, 0.130705, -0.225488,
		0.227588, -0.001166, 0.973757,
		45.335033, 27.860079, 33.179142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879997, 27.407764, 32.685089>,  <45.175724, 27.860895, 32.497513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879997, 27.407764, 32.685089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639248, 27.432369, 33.003578>,  <45.494801, 27.447132, 33.194672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639248, 27.432369, 33.003578>,  <45.879997, 27.407764, 32.685089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639248, 27.432369, 33.003578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097634, -0.983882, 0.149812,
		0.792604, 0.167906, 0.586162,
		-0.601869, 0.061512, 0.796223,
		45.458687, 27.450823, 33.242443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192577, 27.016287, 33.351673>,  <45.879997, 27.407764, 32.685089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192577, 27.016287, 33.351673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794849, 27.050253, 33.377342>,  <45.556213, 27.070633, 33.392742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.794849, 27.050253, 33.377342>,  <46.192577, 27.016287, 33.351673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794849, 27.050253, 33.377342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066645, -0.966800, 0.246688,
		0.082988, 0.241010, 0.966968,
		-0.994320, 0.084916, 0.064171,
		45.496555, 27.075727, 33.396595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027599, 26.418436, 33.725822>,  <46.192577, 27.016287, 33.351673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027599, 26.418436, 33.725822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654953, 26.545195, 33.654633>,  <45.431366, 26.621250, 33.611919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654953, 26.545195, 33.654633>,  <46.027599, 26.418436, 33.725822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654953, 26.545195, 33.654633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316179, -0.948120, -0.033146,
		-0.179246, 0.025393, 0.983476,
		-0.931613, 0.316896, -0.177976,
		45.375469, 26.640263, 33.601238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517487, 26.129139, 34.224846>,  <46.027599, 26.418436, 33.725822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517487, 26.129139, 34.224846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310284, 26.206423, 33.891537>,  <45.185963, 26.252792, 33.691551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310284, 26.206423, 33.891537>,  <45.517487, 26.129139, 34.224846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310284, 26.206423, 33.891537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333691, -0.942617, -0.011121,
		-0.787602, 0.272294, 0.552755,
		-0.518009, 0.193208, -0.833269,
		45.154881, 26.264385, 33.641556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798244, 25.787592, 34.313332>,  <45.517487, 26.129139, 34.224846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798244, 25.787592, 34.313332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859592, 25.848520, 33.922787>,  <44.896400, 25.885078, 33.688461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859592, 25.848520, 33.922787>,  <44.798244, 25.787592, 34.313332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859592, 25.848520, 33.922787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292693, -0.936709, -0.192114,
		-0.943827, 0.315237, -0.099078,
		0.153369, 0.152323, -0.976359,
		44.905602, 25.894217, 33.629879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.167942, 36.466454, 42.026211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923462, 36.155304, 41.967773>,  <37.776775, 35.968613, 41.932713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923462, 36.155304, 41.967773>,  <38.167942, 36.466454, 42.026211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923462, 36.155304, 41.967773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503476, -0.239694, -0.830095,
		0.610693, -0.580910, 0.538143,
		-0.611200, -0.777875, -0.146094,
		37.740101, 35.921940, 41.923946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559750, 35.859093, 41.981998>,  <38.167942, 36.466454, 42.026211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559750, 35.859093, 41.981998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225182, 35.737705, 41.799438>,  <38.024441, 35.664875, 41.689903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225182, 35.737705, 41.799438>,  <38.559750, 35.859093, 41.981998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225182, 35.737705, 41.799438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546926, -0.408092, -0.730980,
		0.035573, -0.861028, 0.507312,
		-0.836425, -0.303465, -0.456402,
		37.974255, 35.646667, 41.662518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813583, 35.344025, 41.515182>,  <38.559750, 35.859093, 41.981998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813583, 35.344025, 41.515182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432648, 35.407207, 41.410805>,  <38.204086, 35.445118, 41.348179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432648, 35.407207, 41.410805>,  <38.813583, 35.344025, 41.515182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432648, 35.407207, 41.410805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207768, -0.290435, -0.934067,
		-0.223334, -0.943767, 0.243774,
		-0.952342, 0.157960, -0.260948,
		38.146946, 35.454597, 41.332520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578835, 34.779041, 41.090206>,  <38.813583, 35.344025, 41.515182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578835, 34.779041, 41.090206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363182, 35.106266, 41.010094>,  <38.233791, 35.302601, 40.962025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363182, 35.106266, 41.010094>,  <38.578835, 34.779041, 41.090206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363182, 35.106266, 41.010094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010750, -0.231101, -0.972870,
		-0.842152, -0.526660, 0.115800,
		-0.539133, 0.818060, -0.200284,
		38.201443, 35.351685, 40.950008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037010, 34.394760, 40.798695>,  <38.578835, 34.779041, 41.090206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037010, 34.394760, 40.798695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073563, 34.773113, 40.674149>,  <38.095493, 35.000126, 40.599419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073563, 34.773113, 40.674149>,  <38.037010, 34.394760, 40.798695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073563, 34.773113, 40.674149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153826, -0.322333, -0.934045,
		-0.983863, 0.037462, -0.174958,
		0.091386, 0.945885, -0.311368,
		38.100979, 35.056877, 40.580738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652851, 34.436085, 40.174309>,  <38.037010, 34.394760, 40.798695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652851, 34.436085, 40.174309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908768, 34.742870, 40.154583>,  <38.062317, 34.926941, 40.142746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908768, 34.742870, 40.154583>,  <37.652851, 34.436085, 40.174309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908768, 34.742870, 40.154583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087434, -0.136389, -0.986789,
		-0.763557, 0.627030, -0.154320,
		0.639794, 0.766963, -0.049317,
		38.100704, 34.972958, 40.139790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363113, 34.837669, 39.680439>,  <37.652851, 34.436085, 40.174309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363113, 34.837669, 39.680439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745964, 34.947765, 39.716557>,  <37.975674, 35.013824, 39.738228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745964, 34.947765, 39.716557>,  <37.363113, 34.837669, 39.680439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745964, 34.947765, 39.716557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074562, 0.067106, -0.994956,
		-0.279912, 0.959030, 0.043706,
		0.957126, 0.275242, 0.090291,
		38.033100, 35.030338, 39.743645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456486, 35.226318, 39.107536>,  <37.363113, 34.837669, 39.680439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456486, 35.226318, 39.107536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829025, 35.145992, 39.229034>,  <38.052547, 35.097797, 39.301933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829025, 35.145992, 39.229034>,  <37.456486, 35.226318, 39.107536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829025, 35.145992, 39.229034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321765, 0.063396, -0.944695,
		0.170453, 0.977576, 0.123659,
		0.931350, -0.200815, 0.303744,
		38.108429, 35.085747, 39.320156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913757, 35.748932, 38.809414>,  <37.456486, 35.226318, 39.107536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913757, 35.748932, 38.809414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097168, 35.400227, 38.878452>,  <38.207214, 35.191006, 38.919876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097168, 35.400227, 38.878452>,  <37.913757, 35.748932, 38.809414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097168, 35.400227, 38.878452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270294, -0.048207, -0.961570,
		0.846578, 0.487558, 0.213526,
		0.458527, -0.871759, 0.172595,
		38.234726, 35.138699, 38.930229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448570, 35.794720, 38.332333>,  <37.913757, 35.748932, 38.809414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448570, 35.794720, 38.332333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485279, 35.417103, 38.459049>,  <38.507305, 35.190533, 38.535080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485279, 35.417103, 38.459049>,  <38.448570, 35.794720, 38.332333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485279, 35.417103, 38.459049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249505, -0.286186, -0.925119,
		0.964015, 0.163942, 0.209280,
		0.091772, -0.944045, 0.316792,
		38.512810, 35.133888, 38.554089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087509, 35.575321, 38.168053>,  <38.448570, 35.794720, 38.332333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087509, 35.575321, 38.168053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825993, 35.273491, 38.190590>,  <38.669083, 35.092392, 38.204113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825993, 35.273491, 38.190590>,  <39.087509, 35.575321, 38.168053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825993, 35.273491, 38.190590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172052, -0.220754, -0.960034,
		0.736859, -0.617964, 0.274153,
		-0.653787, -0.754578, 0.056343,
		38.629856, 35.047119, 38.207493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251091, 35.046093, 37.649010>,  <39.087509, 35.575321, 38.168053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251091, 35.046093, 37.649010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872761, 34.964523, 37.750061>,  <38.645763, 34.915581, 37.810692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872761, 34.964523, 37.750061>,  <39.251091, 35.046093, 37.649010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872761, 34.964523, 37.750061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225694, -0.146368, -0.963140,
		0.233385, -0.967983, 0.092414,
		-0.945830, -0.203925, 0.252628,
		38.589012, 34.903347, 37.825848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088333, 34.451744, 37.197647>,  <39.251091, 35.046093, 37.649010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088333, 34.451744, 37.197647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737770, 34.598797, 37.322075>,  <38.527431, 34.687027, 37.396732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737770, 34.598797, 37.322075>,  <39.088333, 34.451744, 37.197647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737770, 34.598797, 37.322075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397687, -0.188225, -0.898007,
		-0.271583, -0.910725, 0.311163,
		-0.876406, 0.367628, 0.311065,
		38.474850, 34.709084, 37.415394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635967, 33.942596, 37.209534>,  <39.088333, 34.451744, 37.197647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635967, 33.942596, 37.209534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408722, 34.269344, 37.169586>,  <38.272377, 34.465393, 37.145618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408722, 34.269344, 37.169586>,  <38.635967, 33.942596, 37.209534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408722, 34.269344, 37.169586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410772, -0.386627, -0.825703,
		-0.713105, -0.428066, 0.555194,
		-0.568109, 0.816872, -0.099868,
		38.238289, 34.514404, 37.139626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210453, 33.356812, 36.977436>,  <38.635967, 33.942596, 37.209534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210453, 33.356812, 36.977436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185650, 33.384060, 36.579136>,  <39.170769, 33.400410, 36.340157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185650, 33.384060, 36.579136>,  <39.210453, 33.356812, 36.977436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185650, 33.384060, 36.579136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890581, -0.454171, 0.024391,
		-0.450579, 0.888307, 0.088826,
		-0.062009, 0.068117, -0.995749,
		39.167046, 33.404495, 36.280411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466759, 32.717968, 36.432957>,  <39.210453, 33.356812, 36.977436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466759, 32.717968, 36.432957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757107, 32.542324, 36.644730>,  <39.931316, 32.436939, 36.771793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757107, 32.542324, 36.644730>,  <39.466759, 32.717968, 36.432957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757107, 32.542324, 36.644730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683949, -0.542450, 0.487813,
		0.072988, -0.716193, -0.694075,
		0.725869, -0.439108, 0.529431,
		39.974869, 32.410591, 36.803558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378262, 31.995548, 36.467255>,  <39.466759, 32.717968, 36.432957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378262, 31.995548, 36.467255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591602, 32.101028, 36.788754>,  <39.719604, 32.164318, 36.981651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591602, 32.101028, 36.788754>,  <39.378262, 31.995548, 36.467255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591602, 32.101028, 36.788754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620626, -0.523634, 0.583635,
		0.574773, -0.810104, -0.115618,
		0.533347, 0.263702, 0.803743,
		39.751606, 32.180138, 37.029877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385395, 31.334826, 36.888020>,  <39.378262, 31.995548, 36.467255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385395, 31.334826, 36.888020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495396, 31.631418, 37.132832>,  <39.561394, 31.809374, 37.279720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495396, 31.631418, 37.132832>,  <39.385395, 31.334826, 36.888020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495396, 31.631418, 37.132832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630121, -0.341803, 0.697222,
		0.726171, -0.577389, 0.373227,
		0.274998, 0.741480, 0.612032,
		39.577896, 31.853863, 37.316441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572948, 31.032589, 37.521183>,  <39.385395, 31.334826, 36.888020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572948, 31.032589, 37.521183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487049, 31.417412, 37.588509>,  <39.435509, 31.648306, 37.628902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487049, 31.417412, 37.588509>,  <39.572948, 31.032589, 37.521183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487049, 31.417412, 37.588509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430263, -0.247901, 0.867997,
		0.876787, 0.113985, 0.467174,
		-0.214752, 0.962056, 0.168313,
		39.422623, 31.706028, 37.639004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522125, 31.001743, 38.197952>,  <39.572948, 31.032589, 37.521183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522125, 31.001743, 38.197952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359772, 31.363352, 38.144279>,  <39.262360, 31.580317, 38.112076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359772, 31.363352, 38.144279>,  <39.522125, 31.001743, 38.197952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359772, 31.363352, 38.144279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557706, -0.128682, 0.820003,
		0.724033, 0.407661, 0.556407,
		-0.405883, 0.904021, -0.134185,
		39.238007, 31.634558, 38.104023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472141, 31.257866, 38.883953>,  <39.522125, 31.001743, 38.197952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472141, 31.257866, 38.883953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227146, 31.470459, 38.649899>,  <39.080147, 31.598015, 38.509468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227146, 31.470459, 38.649899>,  <39.472141, 31.257866, 38.883953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227146, 31.470459, 38.649899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688088, 0.005884, 0.725603,
		0.389087, 0.847050, 0.362101,
		-0.612492, 0.531480, -0.585134,
		39.043400, 31.629904, 38.474358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234135, 31.757465, 39.327171>,  <39.472141, 31.257866, 38.883953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234135, 31.757465, 39.327171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967308, 31.718195, 39.031769>,  <38.807213, 31.694633, 38.854527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967308, 31.718195, 39.031769>,  <39.234135, 31.757465, 39.327171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967308, 31.718195, 39.031769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744834, 0.067017, 0.663875,
		-0.015684, 0.992910, -0.117830,
		-0.667065, -0.098176, -0.738502,
		38.767189, 31.688742, 38.810219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725853, 32.368366, 39.321785>,  <39.234135, 31.757465, 39.327171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725853, 32.368366, 39.321785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543842, 32.084194, 39.107033>,  <38.434635, 31.913691, 38.978184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543842, 32.084194, 39.107033>,  <38.725853, 32.368366, 39.321785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543842, 32.084194, 39.107033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876724, 0.251855, 0.409786,
		-0.155911, 0.657155, -0.737455,
		-0.455025, -0.710434, -0.536876,
		38.407333, 31.871063, 38.945969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910896, 32.575581, 39.272114>,  <38.725853, 32.368366, 39.321785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910896, 32.575581, 39.272114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927399, 32.184120, 39.191578>,  <37.937302, 31.949244, 39.143257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927399, 32.184120, 39.191578>,  <37.910896, 32.575581, 39.272114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927399, 32.184120, 39.191578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944831, -0.103753, 0.310692,
		-0.324949, 0.177412, -0.928942,
		0.041260, -0.978652, -0.201338,
		37.939777, 31.890524, 39.131176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235180, 32.408131, 39.073376>,  <37.910896, 32.575581, 39.272114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235180, 32.408131, 39.073376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390255, 32.057617, 39.187801>,  <37.483299, 31.847309, 39.256458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390255, 32.057617, 39.187801>,  <37.235180, 32.408131, 39.073376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390255, 32.057617, 39.187801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857696, -0.229221, 0.460233,
		-0.337722, -0.423780, -0.840449,
		0.387686, -0.876281, 0.286062,
		37.506561, 31.794733, 39.273621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695690, 31.967644, 39.124893>,  <37.235180, 32.408131, 39.073376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695690, 31.967644, 39.124893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971619, 31.778366, 39.344070>,  <37.137177, 31.664799, 39.475574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971619, 31.778366, 39.344070>,  <36.695690, 31.967644, 39.124893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971619, 31.778366, 39.344070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695432, -0.222628, 0.683236,
		-0.201319, -0.852362, -0.482648,
		0.689816, -0.473197, 0.547940,
		37.178562, 31.636408, 39.508453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355850, 31.305210, 39.343311>,  <36.695690, 31.967644, 39.124893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355850, 31.305210, 39.343311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664543, 31.357937, 39.592167>,  <36.849758, 31.389572, 39.741478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664543, 31.357937, 39.592167>,  <36.355850, 31.305210, 39.343311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664543, 31.357937, 39.592167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560694, -0.320590, 0.763442,
		0.300085, -0.938001, -0.173501,
		0.771732, 0.131817, 0.622136,
		36.896061, 31.397482, 39.778809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356270, 30.696373, 39.795078>,  <36.355850, 31.305210, 39.343311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356270, 30.696373, 39.795078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533714, 30.992592, 39.996986>,  <36.640182, 31.170324, 40.118134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533714, 30.992592, 39.996986>,  <36.356270, 30.696373, 39.795078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533714, 30.992592, 39.996986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392859, -0.345549, 0.852208,
		0.805525, -0.576354, 0.137642,
		0.443611, 0.740549, 0.504774,
		36.666798, 31.214756, 40.148418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269150, 29.963289, 39.535831>,  <36.356270, 30.696373, 39.795078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269150, 29.963289, 39.535831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922729, 29.772173, 39.476936>,  <35.714878, 29.657503, 39.441601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922729, 29.772173, 39.476936>,  <36.269150, 29.963289, 39.535831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922729, 29.772173, 39.476936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101349, 0.120605, -0.987513,
		0.489584, -0.870155, -0.056025,
		-0.866046, -0.477792, -0.147236,
		35.662914, 29.628836, 39.432766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393883, 29.491539, 39.094288>,  <36.269150, 29.963289, 39.535831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393883, 29.491539, 39.094288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000546, 29.546932, 39.047195>,  <35.764542, 29.580168, 39.018940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000546, 29.546932, 39.047195>,  <36.393883, 29.491539, 39.094288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000546, 29.546932, 39.047195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115366, -0.024998, -0.993008,
		-0.140457, -0.990049, 0.008606,
		-0.983343, 0.138483, -0.117730,
		35.705544, 29.588476, 39.011875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151539, 29.022333, 38.587002>,  <36.393883, 29.491539, 39.094288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151539, 29.022333, 38.587002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868031, 29.304420, 38.579956>,  <35.697926, 29.473673, 38.575729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868031, 29.304420, 38.579956>,  <36.151539, 29.022333, 38.587002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868031, 29.304420, 38.579956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030804, 0.005988, -0.999507,
		-0.704765, -0.708965, -0.025968,
		-0.708772, 0.705218, -0.017619,
		35.655399, 29.515985, 38.574669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705143, 28.835020, 38.038540>,  <36.151539, 29.022333, 38.587002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705143, 28.835020, 38.038540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610886, 29.220976, 38.084946>,  <35.554333, 29.452549, 38.112789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610886, 29.220976, 38.084946>,  <35.705143, 28.835020, 38.038540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610886, 29.220976, 38.084946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147981, 0.082364, -0.985555,
		-0.960508, -0.249405, 0.123377,
		-0.235641, 0.964890, 0.116019,
		35.540192, 29.510443, 38.119751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102428, 28.823307, 37.628128>,  <35.705143, 28.835020, 38.038540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102428, 28.823307, 37.628128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198677, 29.207424, 37.684616>,  <35.256428, 29.437895, 37.718510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198677, 29.207424, 37.684616>,  <35.102428, 28.823307, 37.628128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198677, 29.207424, 37.684616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184043, 0.187992, -0.964773,
		-0.953010, 0.206156, 0.221970,
		0.240622, 0.960291, 0.141217,
		35.270863, 29.495512, 37.726982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503845, 29.248871, 37.459503>,  <35.102428, 28.823307, 37.628128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503845, 29.248871, 37.459503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824669, 29.487055, 37.441055>,  <35.017162, 29.629965, 37.429989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824669, 29.487055, 37.441055>,  <34.503845, 29.248871, 37.459503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824669, 29.487055, 37.441055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246873, 0.260235, -0.933452,
		-0.543829, 0.760071, 0.355727,
		0.802062, 0.595458, -0.046118,
		35.065289, 29.665691, 37.427219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207874, 29.848104, 37.167610>,  <34.503845, 29.248871, 37.459503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207874, 29.848104, 37.167610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598724, 29.925156, 37.131550>,  <34.833233, 29.971386, 37.109913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598724, 29.925156, 37.131550>,  <34.207874, 29.848104, 37.167610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598724, 29.925156, 37.131550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143665, 0.285273, -0.947618,
		-0.156823, 0.938889, 0.306421,
		0.977122, 0.192630, -0.090148,
		34.891861, 29.982944, 37.104504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263096, 30.588490, 37.029232>,  <34.207874, 29.848104, 37.167610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263096, 30.588490, 37.029232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594120, 30.417763, 36.883373>,  <34.792736, 30.315327, 36.795856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594120, 30.417763, 36.883373>,  <34.263096, 30.588490, 37.029232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594120, 30.417763, 36.883373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066117, 0.570937, -0.818328,
		0.557468, 0.701326, 0.444265,
		0.827561, -0.426818, -0.364649,
		34.842388, 30.289717, 36.773979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803703, 31.151152, 36.878147>,  <34.263096, 30.588490, 37.029232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803703, 31.151152, 36.878147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890202, 30.826365, 36.661282>,  <34.942101, 30.631493, 36.531162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890202, 30.826365, 36.661282>,  <34.803703, 31.151152, 36.878147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890202, 30.826365, 36.661282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084350, 0.568765, -0.818164,
		0.972688, 0.131194, 0.191483,
		0.216247, -0.811970, -0.542165,
		34.955074, 30.582773, 36.498631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031845, 31.542961, 36.347088>,  <34.803703, 31.151152, 36.878147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031845, 31.542961, 36.347088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005936, 31.163307, 36.223835>,  <34.990391, 30.935514, 36.149883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005936, 31.163307, 36.223835>,  <35.031845, 31.542961, 36.347088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005936, 31.163307, 36.223835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284635, 0.313529, -0.905915,
		0.956445, 0.029023, -0.290467,
		-0.064777, -0.949135, -0.308134,
		34.986504, 30.878567, 36.131393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493790, 31.497696, 35.831841>,  <35.031845, 31.542961, 36.347088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493790, 31.497696, 35.831841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223988, 31.211636, 35.758518>,  <35.062107, 31.039999, 35.714527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223988, 31.211636, 35.758518>,  <35.493790, 31.497696, 35.831841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223988, 31.211636, 35.758518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160918, 0.384735, -0.908892,
		0.720517, -0.583558, -0.374587,
		-0.674508, -0.715150, -0.183303,
		35.021637, 30.997091, 35.703526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787975, 31.135960, 35.256638>,  <35.493790, 31.497696, 35.831841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787975, 31.135960, 35.256638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391354, 31.087440, 35.275009>,  <35.153381, 31.058329, 35.286034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391354, 31.087440, 35.275009>,  <35.787975, 31.135960, 35.256638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391354, 31.087440, 35.275009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082304, 0.314750, -0.945599,
		0.100241, -0.941392, -0.322075,
		-0.991554, -0.121296, 0.045930,
		35.093887, 31.051052, 35.288788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.499184, 28.591944, 43.140598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126698, 28.687382, 43.030396>,  <34.903206, 28.744644, 42.964272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126698, 28.687382, 43.030396>,  <35.499184, 28.591944, 43.140598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126698, 28.687382, 43.030396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286083, 0.010170, -0.958151,
		-0.225809, -0.971066, -0.077729,
		-0.931218, 0.238596, -0.275509,
		34.847332, 28.758961, 42.947742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352940, 28.059074, 42.630138>,  <35.499184, 28.591944, 43.140598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352940, 28.059074, 42.630138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103291, 28.365585, 42.569099>,  <34.953499, 28.549492, 42.532478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103291, 28.365585, 42.569099>,  <35.352940, 28.059074, 42.630138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103291, 28.365585, 42.569099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229596, -0.006810, -0.973262,
		-0.746829, -0.642472, -0.171684,
		-0.624125, 0.766279, -0.152595,
		34.916054, 28.595469, 42.523319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986496, 27.924198, 42.010937>,  <35.352940, 28.059074, 42.630138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986496, 27.924198, 42.010937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.948071, 28.321703, 42.033592>,  <34.925014, 28.560205, 42.047188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.948071, 28.321703, 42.033592>,  <34.986496, 27.924198, 42.010937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948071, 28.321703, 42.033592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177215, 0.073072, -0.981456,
		-0.979473, -0.084241, -0.183129,
		-0.096060, 0.993763, 0.056643,
		34.919254, 28.619831, 42.050587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613762, 28.057253, 41.432014>,  <34.986496, 27.924198, 42.010937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613762, 28.057253, 41.432014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.808853, 28.392241, 41.530617>,  <34.925907, 28.593233, 41.589779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.808853, 28.392241, 41.530617>,  <34.613762, 28.057253, 41.432014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808853, 28.392241, 41.530617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045855, 0.306555, -0.950748,
		-0.871790, 0.452403, 0.187918,
		0.487728, 0.837470, 0.246506,
		34.955173, 28.643482, 41.604568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339600, 28.466061, 41.032368>,  <34.613762, 28.057253, 41.432014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339600, 28.466061, 41.032368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.661133, 28.679590, 41.137348>,  <34.854053, 28.807709, 41.200336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.661133, 28.679590, 41.137348>,  <34.339600, 28.466061, 41.032368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661133, 28.679590, 41.137348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056269, 0.370985, -0.926933,
		-0.592183, 0.759870, 0.268173,
		0.803836, 0.533824, 0.262448,
		34.902283, 28.839737, 41.216084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208622, 29.100985, 40.801338>,  <34.339600, 28.466061, 41.032368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208622, 29.100985, 40.801338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.606689, 29.070385, 40.825932>,  <34.845531, 29.052025, 40.840687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.606689, 29.070385, 40.825932>,  <34.208622, 29.100985, 40.801338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606689, 29.070385, 40.825932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090227, 0.466589, -0.879860,
		0.038619, 0.881160, 0.471239,
		0.995172, -0.076498, 0.061485,
		34.905243, 29.047436, 40.844376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415943, 29.663851, 40.566589>,  <34.208622, 29.100985, 40.801338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415943, 29.663851, 40.566589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753891, 29.451488, 40.540241>,  <34.956657, 29.324070, 40.524433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753891, 29.451488, 40.540241>,  <34.415943, 29.663851, 40.566589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753891, 29.451488, 40.540241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232043, 0.474609, -0.849060,
		0.482034, 0.702057, 0.524174,
		0.844867, -0.530907, -0.065870,
		35.007351, 29.292217, 40.520481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928768, 30.134787, 40.467388>,  <34.415943, 29.663851, 40.566589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928768, 30.134787, 40.467388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063290, 29.783464, 40.331459>,  <35.144001, 29.572670, 40.249901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063290, 29.783464, 40.331459>,  <34.928768, 30.134787, 40.467388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063290, 29.783464, 40.331459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235442, 0.427790, -0.872676,
		0.911849, 0.213475, 0.350657,
		0.336302, -0.878308, -0.339818,
		35.164181, 29.519972, 40.229515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622093, 30.364681, 40.156704>,  <34.928768, 30.134787, 40.467388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622093, 30.364681, 40.156704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509048, 30.004311, 40.024967>,  <35.441223, 29.788088, 39.945927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509048, 30.004311, 40.024967>,  <35.622093, 30.364681, 40.156704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509048, 30.004311, 40.024967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216155, 0.274694, -0.936921,
		0.934563, -0.335973, 0.117107,
		-0.282612, -0.900925, -0.329341,
		35.424263, 29.734034, 39.926167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335205, 30.457684, 40.475212>,  <35.622093, 30.364681, 40.156704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335205, 30.457684, 40.475212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.441963, 30.836241, 40.548000>,  <36.506016, 31.063375, 40.591671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.441963, 30.836241, 40.548000>,  <36.335205, 30.457684, 40.475212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441963, 30.836241, 40.548000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310403, -0.094339, 0.945913,
		0.912370, -0.308941, 0.268584,
		0.266893, 0.946391, 0.181968,
		36.522030, 31.120157, 40.602592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655735, 30.449192, 41.111153>,  <36.335205, 30.457684, 40.475212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655735, 30.449192, 41.111153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537758, 30.828688, 41.065708>,  <36.466972, 31.056385, 41.038441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537758, 30.828688, 41.065708>,  <36.655735, 30.449192, 41.111153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537758, 30.828688, 41.065708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204235, 0.053559, 0.977455,
		0.933434, 0.311494, 0.177969,
		-0.294939, 0.948737, -0.113612,
		36.449276, 31.113310, 41.031624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952370, 30.802082, 41.618221>,  <36.655735, 30.449192, 41.111153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952370, 30.802082, 41.618221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646015, 31.037636, 41.514965>,  <36.462204, 31.178968, 41.453011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646015, 31.037636, 41.514965>,  <36.952370, 30.802082, 41.618221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646015, 31.037636, 41.514965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294610, 0.035449, 0.954960,
		0.571511, 0.807440, 0.146341,
		-0.765885, 0.588884, -0.258139,
		36.416248, 31.214300, 41.437523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045235, 31.346590, 41.998291>,  <36.952370, 30.802082, 41.618221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045235, 31.346590, 41.998291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655907, 31.345896, 41.906513>,  <36.422310, 31.345478, 41.851448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655907, 31.345896, 41.906513>,  <37.045235, 31.346590, 41.998291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655907, 31.345896, 41.906513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229449, 0.003942, 0.973313,
		-0.000787, 0.999991, -0.004236,
		-0.973320, -0.001738, -0.229444,
		36.363911, 31.345375, 41.837681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891350, 31.913317, 42.331299>,  <37.045235, 31.346590, 41.998291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891350, 31.913317, 42.331299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571503, 31.679485, 42.276333>,  <36.379597, 31.539186, 42.243355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571503, 31.679485, 42.276333>,  <36.891350, 31.913317, 42.331299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571503, 31.679485, 42.276333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186728, 0.024558, 0.982105,
		-0.570745, 0.810964, -0.128795,
		-0.799614, -0.584581, -0.137414,
		36.331619, 31.504110, 42.235107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267754, 32.324333, 42.494122>,  <36.891350, 31.913317, 42.331299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267754, 32.324333, 42.494122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173145, 31.936365, 42.517170>,  <36.116383, 31.703585, 42.530998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173145, 31.936365, 42.517170>,  <36.267754, 32.324333, 42.494122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173145, 31.936365, 42.517170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267414, 0.121996, 0.955828,
		-0.934104, 0.210660, -0.288224,
		-0.236517, -0.969917, 0.057624,
		36.102192, 31.645390, 42.534458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756130, 32.237129, 42.984848>,  <36.267754, 32.324333, 42.494122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756130, 32.237129, 42.984848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.871151, 31.854322, 42.969681>,  <35.940163, 31.624640, 42.960579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.871151, 31.854322, 42.969681>,  <35.756130, 32.237129, 42.984848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871151, 31.854322, 42.969681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059802, -0.057454, 0.996555,
		-0.955895, -0.284298, -0.073752,
		0.287556, -0.957013, -0.037919,
		35.957417, 31.567219, 42.958305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227203, 32.003304, 43.399200>,  <35.756130, 32.237129, 42.984848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227203, 32.003304, 43.399200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.543221, 31.759508, 43.372818>,  <35.732830, 31.613232, 43.356987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.543221, 31.759508, 43.372818>,  <35.227203, 32.003304, 43.399200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543221, 31.759508, 43.372818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059321, -0.031078, 0.997755,
		-0.610170, -0.792186, 0.011602,
		0.790047, -0.609488, -0.065956,
		35.780235, 31.576662, 43.353031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194061, 31.528908, 43.967243>,  <35.227203, 32.003304, 43.399200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194061, 31.528908, 43.967243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.583229, 31.518585, 43.875362>,  <35.816730, 31.512392, 43.820232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.583229, 31.518585, 43.875362>,  <35.194061, 31.528908, 43.967243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583229, 31.518585, 43.875362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230429, 0.029897, 0.972630,
		-0.018235, -0.999220, 0.035035,
		0.972918, -0.025809, -0.229704,
		35.875103, 31.510843, 43.806450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441891, 31.069941, 44.411560>,  <35.194061, 31.528908, 43.967243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441891, 31.069941, 44.411560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768013, 31.265703, 44.287777>,  <35.963684, 31.383162, 44.213509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768013, 31.265703, 44.287777>,  <35.441891, 31.069941, 44.411560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768013, 31.265703, 44.287777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246812, 0.189724, 0.950310,
		0.523799, -0.851168, 0.033892,
		0.815303, 0.489406, -0.309456,
		36.012604, 31.412525, 44.194939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987869, 30.838549, 44.782207>,  <35.441891, 31.069941, 44.411560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987869, 30.838549, 44.782207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.106331, 31.194380, 44.643097>,  <36.177410, 31.407879, 44.559631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.106331, 31.194380, 44.643097>,  <35.987869, 30.838549, 44.782207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106331, 31.194380, 44.643097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254942, 0.277273, 0.926350,
		0.920486, -0.363008, -0.144674,
		0.296158, 0.889576, -0.347772,
		36.195179, 31.461252, 44.538765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612537, 30.913059, 45.155613>,  <35.987869, 30.838549, 44.782207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612537, 30.913059, 45.155613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.485958, 31.270075, 45.027088>,  <36.410011, 31.484283, 44.949974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.485958, 31.270075, 45.027088>,  <36.612537, 30.913059, 45.155613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485958, 31.270075, 45.027088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317510, 0.418836, 0.850743,
		0.893895, 0.167195, -0.415929,
		-0.316446, 0.892537, -0.321309,
		36.391026, 31.537836, 44.930695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106903, 31.317085, 45.454971>,  <36.612537, 30.913059, 45.155613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106903, 31.317085, 45.454971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792637, 31.553415, 45.381592>,  <36.604076, 31.695213, 45.337566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792637, 31.553415, 45.381592>,  <37.106903, 31.317085, 45.454971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792637, 31.553415, 45.381592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174253, 0.495868, 0.850736,
		0.593600, 0.636430, -0.492540,
		-0.785668, 0.590823, -0.183447,
		36.556938, 31.730663, 45.326557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244217, 32.111568, 45.644627>,  <37.106903, 31.317085, 45.454971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244217, 32.111568, 45.644627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848850, 32.052608, 45.659054>,  <36.611629, 32.017231, 45.667709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848850, 32.052608, 45.659054>,  <37.244217, 32.111568, 45.644627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848850, 32.052608, 45.659054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037065, 0.464983, 0.884544,
		-0.147155, 0.872963, -0.465061,
		-0.988419, -0.147403, 0.036068,
		36.552326, 32.008389, 45.669872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.421734, 33.377743, 45.172916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.796700, 33.298958, 45.287777>,  <30.021679, 33.251686, 45.356693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.796700, 33.298958, 45.287777>,  <29.421734, 33.377743, 45.172916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796700, 33.298958, 45.287777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321006, 0.169274, -0.931827,
		0.134928, 0.965687, 0.221907,
		0.937416, -0.196963, 0.287152,
		30.077925, 33.239868, 45.373924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759142, 33.850681, 44.881409>,  <29.421734, 33.377743, 45.172916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759142, 33.850681, 44.881409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054770, 33.597687, 44.974133>,  <30.232145, 33.445889, 45.029766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054770, 33.597687, 44.974133>,  <29.759142, 33.850681, 44.881409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054770, 33.597687, 44.974133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514431, 0.307763, -0.800401,
		0.434903, 0.710801, 0.552830,
		0.739067, -0.632490, 0.231811,
		30.276489, 33.407940, 45.043674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424517, 34.257626, 44.796741>,  <29.759142, 33.850681, 44.881409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424517, 34.257626, 44.796741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.523787, 33.870747, 44.775074>,  <30.583347, 33.638618, 44.762074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.523787, 33.870747, 44.775074>,  <30.424517, 34.257626, 44.796741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523787, 33.870747, 44.775074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612514, 0.199993, -0.764741,
		0.750491, 0.156610, 0.642057,
		0.248173, -0.967200, -0.054168,
		30.598238, 33.580585, 44.758823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153328, 34.169949, 44.670986>,  <30.424517, 34.257626, 44.796741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153328, 34.169949, 44.670986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.004047, 33.827663, 44.527611>,  <30.914480, 33.622292, 44.441586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.004047, 33.827663, 44.527611>,  <31.153328, 34.169949, 44.670986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004047, 33.827663, 44.527611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466329, 0.160981, -0.869841,
		0.802035, -0.491776, 0.338965,
		-0.373199, -0.855711, -0.358442,
		30.892088, 33.570950, 44.420078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718359, 33.875862, 44.336563>,  <31.153328, 34.169949, 44.670986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718359, 33.875862, 44.336563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.391403, 33.699291, 44.188499>,  <31.195230, 33.593349, 44.099659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.391403, 33.699291, 44.188499>,  <31.718359, 33.875862, 44.336563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391403, 33.699291, 44.188499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385828, 0.057684, -0.920766,
		0.427802, -0.895442, 0.123164,
		-0.817388, -0.441426, -0.370163,
		31.146187, 33.566864, 44.077450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912632, 33.317467, 43.845196>,  <31.718359, 33.875862, 44.336563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912632, 33.317467, 43.845196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.540976, 33.442375, 43.766018>,  <31.317982, 33.517323, 43.718513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.540976, 33.442375, 43.766018>,  <31.912632, 33.317467, 43.845196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540976, 33.442375, 43.766018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260071, 0.171488, -0.950239,
		-0.262790, -0.934386, -0.240550,
		-0.929141, 0.312274, -0.197942,
		31.262234, 33.536057, 43.706635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775574, 33.142284, 43.208401>,  <31.912632, 33.317467, 43.845196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775574, 33.142284, 43.208401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.464973, 33.393959, 43.222069>,  <31.278614, 33.544964, 43.230270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.464973, 33.393959, 43.222069>,  <31.775574, 33.142284, 43.208401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464973, 33.393959, 43.222069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218884, 0.320190, -0.921720,
		-0.590878, -0.708237, -0.386348,
		-0.776501, 0.629189, 0.034172,
		31.232023, 33.582714, 43.232319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472639, 32.964188, 42.620655>,  <31.775574, 33.142284, 43.208401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472639, 32.964188, 42.620655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.306915, 33.316299, 42.713142>,  <31.207481, 33.527565, 42.768635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.306915, 33.316299, 42.713142>,  <31.472639, 32.964188, 42.620655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306915, 33.316299, 42.713142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175862, 0.326686, -0.928627,
		-0.892984, -0.344076, -0.290156,
		-0.414308, 0.880277, 0.231216,
		31.182623, 33.580383, 42.782509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877934, 33.028637, 42.184597>,  <31.472639, 32.964188, 42.620655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877934, 33.028637, 42.184597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.995489, 33.398277, 42.282299>,  <31.066023, 33.620064, 42.340919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.995489, 33.398277, 42.282299>,  <30.877934, 33.028637, 42.184597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995489, 33.398277, 42.282299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146033, 0.209134, -0.966922,
		-0.944618, 0.319839, -0.073487,
		0.293891, 0.924103, 0.244258,
		31.083656, 33.675507, 42.355576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509237, 33.477638, 41.733185>,  <30.877934, 33.028637, 42.184597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509237, 33.477638, 41.733185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.820114, 33.695332, 41.859535>,  <31.006641, 33.825947, 41.935345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.820114, 33.695332, 41.859535>,  <30.509237, 33.477638, 41.733185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820114, 33.695332, 41.859535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068128, 0.426250, -0.902036,
		-0.625562, 0.722577, 0.294201,
		0.777194, 0.544237, 0.315873,
		31.053272, 33.858604, 41.954296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441738, 33.998241, 41.266567>,  <30.509237, 33.477638, 41.733185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441738, 33.998241, 41.266567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.802372, 34.038177, 41.434937>,  <31.018753, 34.062141, 41.535957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.802372, 34.038177, 41.434937>,  <30.441738, 33.998241, 41.266567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802372, 34.038177, 41.434937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303526, 0.547309, -0.779952,
		-0.308248, 0.830953, 0.463141,
		0.901585, 0.099843, 0.420923,
		31.072847, 34.068130, 41.561214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566124, 34.612347, 41.082043>,  <30.441738, 33.998241, 41.266567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566124, 34.612347, 41.082043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922920, 34.447231, 41.155762>,  <31.136997, 34.348164, 41.199993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922920, 34.447231, 41.155762>,  <30.566124, 34.612347, 41.082043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922920, 34.447231, 41.155762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352467, 0.379781, -0.855297,
		0.283061, 0.827874, 0.484253,
		0.891989, -0.412784, 0.184297,
		31.190517, 34.323395, 41.211052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073145, 35.164288, 40.995541>,  <30.566124, 34.612347, 41.082043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073145, 35.164288, 40.995541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272545, 34.818951, 40.964191>,  <31.392185, 34.611748, 40.945381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272545, 34.818951, 40.964191>,  <31.073145, 35.164288, 40.995541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272545, 34.818951, 40.964191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356269, 0.286448, -0.889393,
		0.790298, 0.415440, 0.450375,
		0.498499, -0.863341, -0.078371,
		31.422094, 34.559948, 40.940681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860804, 35.324764, 40.834602>,  <31.073145, 35.164288, 40.995541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860804, 35.324764, 40.834602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748722, 34.971226, 40.684772>,  <31.681473, 34.759102, 40.594875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748722, 34.971226, 40.684772>,  <31.860804, 35.324764, 40.834602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748722, 34.971226, 40.684772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258134, 0.306455, -0.916216,
		0.924582, -0.353418, 0.142280,
		-0.280205, -0.883845, -0.374572,
		31.664661, 34.706074, 40.572399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439301, 35.534176, 41.191010>,  <31.860804, 35.324764, 40.834602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439301, 35.534176, 41.191010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774452, 35.751705, 41.172169>,  <32.975544, 35.882221, 41.160866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774452, 35.751705, 41.172169>,  <32.439301, 35.534176, 41.191010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774452, 35.751705, 41.172169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101816, 0.240472, 0.965302,
		0.536275, -0.804011, 0.256856,
		0.837880, 0.543819, -0.047098,
		33.025818, 35.914852, 41.158039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784538, 35.287613, 41.708244>,  <32.439301, 35.534176, 41.191010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784538, 35.287613, 41.708244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922939, 35.653309, 41.623913>,  <33.005981, 35.872726, 41.573315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922939, 35.653309, 41.623913>,  <32.784538, 35.287613, 41.708244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922939, 35.653309, 41.623913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020006, 0.217470, 0.975862,
		0.938019, -0.341871, 0.056955,
		0.346005, 0.914238, -0.210830,
		33.026741, 35.927582, 41.560665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348843, 35.469112, 42.173645>,  <32.784538, 35.287613, 41.708244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348843, 35.469112, 42.173645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176716, 35.812317, 42.061474>,  <33.073441, 36.018238, 41.994171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176716, 35.812317, 42.061474>,  <33.348843, 35.469112, 42.173645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176716, 35.812317, 42.061474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040820, 0.291848, 0.955593,
		0.901753, 0.422657, -0.090563,
		-0.430319, 0.858013, -0.280428,
		33.047619, 36.069721, 41.977345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749359, 36.107166, 42.401260>,  <33.348843, 35.469112, 42.173645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749359, 36.107166, 42.401260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359898, 36.192505, 42.369072>,  <33.126221, 36.243706, 42.349758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359898, 36.192505, 42.369072>,  <33.749359, 36.107166, 42.401260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359898, 36.192505, 42.369072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007596, 0.322384, 0.946579,
		0.227889, 0.922254, -0.312271,
		-0.973657, 0.213343, -0.080473,
		33.067799, 36.256508, 42.344929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792526, 36.803024, 42.714466>,  <33.749359, 36.107166, 42.401260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792526, 36.803024, 42.714466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415833, 36.670734, 42.689960>,  <33.189816, 36.591362, 42.675259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415833, 36.670734, 42.689960>,  <33.792526, 36.803024, 42.714466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415833, 36.670734, 42.689960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094754, 0.086091, 0.991771,
		-0.322725, 0.939793, -0.112412,
		-0.941738, -0.330721, -0.061265,
		33.133312, 36.571518, 42.671581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519115, 37.017590, 43.298759>,  <33.792526, 36.803024, 42.714466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519115, 37.017590, 43.298759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221867, 36.779987, 43.175514>,  <33.043518, 36.637428, 43.101566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221867, 36.779987, 43.175514>,  <33.519115, 37.017590, 43.298759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221867, 36.779987, 43.175514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421121, 0.057306, 0.905192,
		-0.520031, 0.802419, -0.292733,
		-0.743119, -0.594003, -0.308114,
		32.998932, 36.601788, 43.083080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903172, 37.379837, 43.472752>,  <33.519115, 37.017590, 43.298759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903172, 37.379837, 43.472752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868671, 36.981472, 43.462006>,  <32.847969, 36.742455, 43.455559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868671, 36.981472, 43.462006>,  <32.903172, 37.379837, 43.472752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868671, 36.981472, 43.462006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449487, 0.014835, 0.893164,
		-0.889113, 0.089116, -0.448928,
		-0.086255, -0.995911, -0.026866,
		32.842796, 36.682697, 43.453945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293930, 37.262451, 43.813599>,  <32.903172, 37.379837, 43.472752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293930, 37.262451, 43.813599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469460, 36.903767, 43.836750>,  <32.574776, 36.688557, 43.850639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469460, 36.903767, 43.836750>,  <32.293930, 37.262451, 43.813599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469460, 36.903767, 43.836750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182162, -0.025702, 0.982932,
		-0.879915, -0.441878, -0.174625,
		0.438824, -0.896707, 0.057878,
		32.601109, 36.634754, 43.854115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879000, 36.868023, 44.187614>,  <32.293930, 37.262451, 43.813599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879000, 36.868023, 44.187614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224735, 36.668419, 44.212601>,  <32.432178, 36.548656, 44.227592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224735, 36.668419, 44.212601>,  <31.879000, 36.868023, 44.187614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224735, 36.668419, 44.212601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078134, -0.010540, 0.996887,
		-0.496799, -0.866532, -0.048100,
		0.864341, -0.499011, 0.062469,
		32.484039, 36.518715, 44.231342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669975, 36.187511, 44.508591>,  <31.879000, 36.868023, 44.187614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669975, 36.187511, 44.508591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066231, 36.187954, 44.563194>,  <32.303986, 36.188221, 44.595955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066231, 36.187954, 44.563194>,  <31.669975, 36.187511, 44.508591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066231, 36.187954, 44.563194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119654, -0.474355, 0.872164,
		0.065719, -0.880333, -0.469782,
		0.990638, 0.001107, 0.136509,
		32.363422, 36.188286, 44.604149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882292, 35.591377, 44.750652>,  <31.669975, 36.187511, 44.508591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882292, 35.591377, 44.750652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169109, 35.834118, 44.887814>,  <32.341202, 35.979763, 44.970112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169109, 35.834118, 44.887814>,  <31.882292, 35.591377, 44.750652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169109, 35.834118, 44.887814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065707, -0.430911, 0.899999,
		0.693923, -0.667871, -0.269108,
		0.717045, 0.606848, 0.342903,
		32.384224, 36.016171, 44.990685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486126, 35.164108, 45.141567>,  <31.882292, 35.591377, 44.750652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486126, 35.164108, 45.141567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.531448, 35.539555, 45.271900>,  <32.558643, 35.764824, 45.350098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.531448, 35.539555, 45.271900>,  <32.486126, 35.164108, 45.141567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531448, 35.539555, 45.271900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002183, -0.328175, 0.944614,
		0.993558, -0.106318, -0.039233,
		0.113305, 0.938614, 0.325829,
		32.565441, 35.821140, 45.369648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996208, 35.112041, 45.617352>,  <32.486126, 35.164108, 45.141567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996208, 35.112041, 45.617352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834080, 35.465225, 45.712097>,  <32.736805, 35.677135, 45.768944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834080, 35.465225, 45.712097>,  <32.996208, 35.112041, 45.617352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834080, 35.465225, 45.712097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116321, -0.207185, 0.971362,
		0.906746, 0.421262, -0.018731,
		-0.405317, 0.882957, 0.236865,
		32.712486, 35.730114, 45.783157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393669, 35.360027, 46.119453>,  <32.996208, 35.112041, 45.617352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393669, 35.360027, 46.119453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047810, 35.552071, 46.178612>,  <32.840294, 35.667297, 46.214108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047810, 35.552071, 46.178612>,  <33.393669, 35.360027, 46.119453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047810, 35.552071, 46.178612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006518, -0.305088, 0.952302,
		0.502328, 0.822446, 0.266924,
		-0.864652, 0.480108, 0.147894,
		32.788414, 35.696102, 46.222980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981869, 35.795280, 46.508495>,  <33.393669, 35.360027, 46.119453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981869, 35.795280, 46.508495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358837, 35.815639, 46.640713>,  <34.585018, 35.827854, 46.720043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358837, 35.815639, 46.640713>,  <33.981869, 35.795280, 46.508495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358837, 35.815639, 46.640713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282182, 0.409487, -0.867579,
		-0.179509, 0.910895, 0.371546,
		0.942417, 0.050894, 0.330545,
		34.641563, 35.830910, 46.739876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194393, 36.375923, 46.367672>,  <33.981869, 35.795280, 46.508495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194393, 36.375923, 46.367672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.544899, 36.185852, 46.399582>,  <34.755203, 36.071808, 46.418728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.544899, 36.185852, 46.399582>,  <34.194393, 36.375923, 46.367672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544899, 36.185852, 46.399582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337392, 0.486925, -0.805649,
		0.343984, 0.732878, 0.586997,
		0.876266, -0.475179, 0.079773,
		34.807777, 36.043297, 46.423515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578289, 36.888515, 46.121845>,  <34.194393, 36.375923, 46.367672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578289, 36.888515, 46.121845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.800472, 36.556000, 46.113632>,  <34.933781, 36.356491, 46.108704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.800472, 36.556000, 46.113632>,  <34.578289, 36.888515, 46.121845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800472, 36.556000, 46.113632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365562, 0.266296, -0.891881,
		0.746882, 0.487893, 0.451805,
		0.555456, -0.831292, -0.020536,
		34.967110, 36.306614, 46.107471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395485, 37.029999, 46.025417>,  <34.578289, 36.888515, 46.121845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395485, 37.029999, 46.025417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357666, 36.660400, 45.877205>,  <35.334972, 36.438641, 45.788277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357666, 36.660400, 45.877205>,  <35.395485, 37.029999, 46.025417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357666, 36.660400, 45.877205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416558, 0.301326, -0.857719,
		0.904179, -0.235444, 0.356407,
		-0.094550, -0.923996, -0.370529,
		35.329300, 36.383202, 45.766045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045986, 37.015118, 45.671341>,  <35.395485, 37.029999, 46.025417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045986, 37.015118, 45.671341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.836418, 36.697807, 45.547264>,  <35.710678, 36.507420, 45.472820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.836418, 36.697807, 45.547264>,  <36.045986, 37.015118, 45.671341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836418, 36.697807, 45.547264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474518, 0.030595, -0.879714,
		0.707350, -0.608088, 0.360396,
		-0.523917, -0.793280, -0.310190,
		35.679241, 36.459824, 45.454208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606491, 36.607353, 45.344913>,  <36.045986, 37.015118, 45.671341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606491, 36.607353, 45.344913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.265972, 36.455791, 45.199738>,  <36.061661, 36.364853, 45.112633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.265972, 36.455791, 45.199738>,  <36.606491, 36.607353, 45.344913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265972, 36.455791, 45.199738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486152, -0.309426, -0.817259,
		0.197364, -0.872172, 0.447620,
		-0.851296, -0.378909, -0.362938,
		36.010582, 36.342117, 45.090855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635433, 35.857166, 45.351437>,  <36.606491, 36.607353, 45.344913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635433, 35.857166, 45.351437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.351662, 35.946053, 45.083908>,  <36.181396, 35.999386, 44.923389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.351662, 35.946053, 45.083908>,  <36.635433, 35.857166, 45.351437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351662, 35.946053, 45.083908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513428, -0.487140, -0.706461,
		-0.482785, -0.844583, 0.231512,
		-0.709443, 0.222204, -0.668817,
		36.138832, 36.012718, 44.883263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606655, 35.305077, 44.923798>,  <36.635433, 35.857166, 45.351437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606655, 35.305077, 44.923798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.471241, 35.611523, 44.705273>,  <36.389992, 35.795391, 44.574158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.471241, 35.611523, 44.705273>,  <36.606655, 35.305077, 44.923798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471241, 35.611523, 44.705273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520251, -0.331379, -0.787101,
		-0.784049, -0.550680, -0.286390,
		-0.338537, 0.766120, -0.546309,
		36.369678, 35.841358, 44.541382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391922, 35.051903, 44.308105>,  <36.606655, 35.305077, 44.923798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391922, 35.051903, 44.308105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429680, 35.431011, 44.186245>,  <36.452335, 35.658478, 44.113129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429680, 35.431011, 44.186245>,  <36.391922, 35.051903, 44.308105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429680, 35.431011, 44.186245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360962, -0.317775, -0.876770,
		-0.927791, -0.027204, -0.372108,
		0.094395, 0.947776, -0.304649,
		36.458000, 35.715343, 44.094849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149666, 35.120060, 43.592911>,  <36.391922, 35.051903, 44.308105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149666, 35.120060, 43.592911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.351692, 35.463116, 43.631599>,  <36.472908, 35.668949, 43.654812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.351692, 35.463116, 43.631599>,  <36.149666, 35.120060, 43.592911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351692, 35.463116, 43.631599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319607, -0.081758, -0.944016,
		-0.801721, 0.507705, -0.315402,
		0.505069, 0.857643, 0.096719,
		36.503212, 35.720409, 43.660614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948246, 35.562317, 42.959908>,  <36.149666, 35.120060, 43.592911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948246, 35.562317, 42.959908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285698, 35.734787, 43.087894>,  <36.488171, 35.838268, 43.164684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285698, 35.734787, 43.087894>,  <35.948246, 35.562317, 42.959908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285698, 35.734787, 43.087894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339798, 0.032656, -0.939931,
		-0.415721, 0.901678, -0.118962,
		0.843631, 0.431173, 0.319964,
		36.538788, 35.864140, 43.183884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129143, 36.143398, 42.430424>,  <35.948246, 35.562317, 42.959908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129143, 36.143398, 42.430424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.461227, 36.063869, 42.638741>,  <36.660477, 36.016151, 42.763729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.461227, 36.063869, 42.638741>,  <36.129143, 36.143398, 42.430424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461227, 36.063869, 42.638741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528411, -0.016929, -0.848820,
		0.177582, 0.979889, 0.091006,
		0.830209, -0.198823, 0.520790,
		36.710289, 36.004223, 42.794979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629066, 36.618938, 42.178638>,  <36.129143, 36.143398, 42.430424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629066, 36.618938, 42.178638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818764, 36.304474, 42.337154>,  <36.932583, 36.115795, 42.432262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818764, 36.304474, 42.337154>,  <36.629066, 36.618938, 42.178638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818764, 36.304474, 42.337154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605151, -0.035844, -0.795303,
		0.639439, 0.616984, 0.458746,
		0.474246, -0.786159, 0.396289,
		36.961037, 36.068626, 42.456039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360733, 36.737339, 42.155537>,  <36.629066, 36.618938, 42.178638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360733, 36.737339, 42.155537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342587, 36.338154, 42.173481>,  <37.331699, 36.098644, 42.184250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342587, 36.338154, 42.173481>,  <37.360733, 36.737339, 42.155537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342587, 36.338154, 42.173481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687274, -0.063769, -0.723594,
		0.724981, -0.001990, 0.688766,
		-0.045362, -0.997963, 0.044863,
		37.328979, 36.038765, 42.186939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.986006, 41.992046, 37.419262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220078, 42.046394, 37.099487>,  <30.360521, 42.079002, 36.907623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220078, 42.046394, 37.099487>,  <29.986006, 41.992046, 37.419262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220078, 42.046394, 37.099487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656847, -0.498697, -0.565556,
		-0.475519, 0.856061, -0.202584,
		0.585179, 0.135866, -0.799441,
		30.395632, 42.087154, 36.859653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515635, 41.985817, 36.948765>,  <29.986006, 41.992046, 37.419262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515635, 41.985817, 36.948765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.831451, 41.959480, 36.704704>,  <30.020943, 41.943676, 36.558270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.831451, 41.959480, 36.704704>,  <29.515635, 41.985817, 36.948765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831451, 41.959480, 36.704704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541925, -0.541364, -0.642838,
		-0.287988, 0.838206, -0.463113,
		0.789544, -0.065844, -0.610151,
		30.068316, 41.939728, 36.521660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285486, 42.045593, 36.252583>,  <29.515635, 41.985817, 36.948765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285486, 42.045593, 36.252583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.637316, 41.855686, 36.240250>,  <29.848413, 41.741741, 36.232849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.637316, 41.855686, 36.240250>,  <29.285486, 42.045593, 36.252583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637316, 41.855686, 36.240250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372342, -0.646572, -0.665813,
		0.296168, 0.597111, -0.745481,
		0.879572, -0.474766, -0.030836,
		29.901188, 41.713257, 36.230999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370365, 41.911922, 35.563271>,  <29.285486, 42.045593, 36.252583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370365, 41.911922, 35.563271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.637871, 41.668678, 35.734367>,  <29.798374, 41.522732, 35.837025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.637871, 41.668678, 35.734367>,  <29.370365, 41.911922, 35.563271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637871, 41.668678, 35.734367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344514, -0.763298, -0.546521,
		0.658836, 0.218132, -0.719968,
		0.668764, -0.608107, 0.427738,
		29.838501, 41.486248, 35.862690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570057, 41.431007, 34.948475>,  <29.370365, 41.911922, 35.563271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570057, 41.431007, 34.948475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.625204, 41.276657, 35.313351>,  <29.658293, 41.184048, 35.532276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.625204, 41.276657, 35.313351>,  <29.570057, 41.431007, 34.948475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625204, 41.276657, 35.313351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418889, -0.857281, -0.299334,
		0.897510, -0.340838, -0.279831,
		0.137869, -0.385874, 0.912191,
		29.666565, 41.160896, 35.587009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670355, 40.786839, 34.773735>,  <29.570057, 41.431007, 34.948475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670355, 40.786839, 34.773735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.626347, 40.739628, 35.168495>,  <29.599941, 40.711304, 35.405350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.626347, 40.739628, 35.168495>,  <29.670355, 40.786839, 34.773735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626347, 40.739628, 35.168495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484679, -0.860497, -0.156941,
		0.867745, -0.495595, 0.037468,
		-0.110020, -0.118025, 0.986897,
		29.593340, 40.704220, 35.464565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941242, 40.078896, 34.972145>,  <29.670355, 40.786839, 34.773735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941242, 40.078896, 34.972145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659399, 40.176544, 35.238659>,  <29.490294, 40.235134, 35.398567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659399, 40.176544, 35.238659>,  <29.941242, 40.078896, 34.972145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659399, 40.176544, 35.238659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360596, -0.931868, -0.039913,
		0.611146, -0.268383, 0.744628,
		-0.704607, 0.244118, 0.666285,
		29.448017, 40.249779, 35.438545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776320, 39.541050, 35.444954>,  <29.941242, 40.078896, 34.972145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776320, 39.541050, 35.444954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447386, 39.764702, 35.487183>,  <29.250027, 39.898891, 35.512520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.447386, 39.764702, 35.487183>,  <29.776320, 39.541050, 35.444954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447386, 39.764702, 35.487183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563712, -0.825788, -0.017410,
		0.077444, -0.073828, 0.994259,
		-0.822333, 0.559128, 0.105570,
		29.200686, 39.932442, 35.518852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370306, 39.220619, 35.979095>,  <29.776320, 39.541050, 35.444954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370306, 39.220619, 35.979095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.105955, 39.441757, 35.776077>,  <28.947344, 39.574440, 35.654266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.105955, 39.441757, 35.776077>,  <29.370306, 39.220619, 35.979095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105955, 39.441757, 35.776077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604922, -0.792673, -0.075754,
		-0.444197, 0.256961, 0.858289,
		-0.660877, 0.552848, -0.507544,
		28.907692, 39.607613, 35.623814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848904, 38.877949, 36.088783>,  <29.370306, 39.220619, 35.979095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848904, 38.877949, 36.088783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683893, 39.125896, 35.821774>,  <28.584887, 39.274666, 35.661568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683893, 39.125896, 35.821774>,  <28.848904, 38.877949, 36.088783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683893, 39.125896, 35.821774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723020, -0.668554, -0.174005,
		-0.554134, 0.410848, 0.723975,
		-0.412527, 0.619870, -0.667520,
		28.560135, 39.311859, 35.621517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015717, 38.885017, 36.154343>,  <28.848904, 38.877949, 36.088783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015717, 38.885017, 36.154343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118967, 38.993927, 35.783562>,  <28.180918, 39.059273, 35.561092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118967, 38.993927, 35.783562>,  <28.015717, 38.885017, 36.154343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118967, 38.993927, 35.783562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733248, -0.569523, -0.371472,
		-0.629063, 0.775571, 0.052637,
		0.258125, 0.272275, -0.926951,
		28.196404, 39.075611, 35.505478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391449, 38.845844, 35.715786>,  <28.015717, 38.885017, 36.154343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391449, 38.845844, 35.715786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688450, 38.846008, 35.447849>,  <27.866650, 38.846107, 35.287086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688450, 38.846008, 35.447849>,  <27.391449, 38.845844, 35.715786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688450, 38.846008, 35.447849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438585, -0.755542, -0.486621,
		-0.506296, 0.655100, -0.560811,
		0.742501, 0.000411, -0.669845,
		27.911200, 38.846130, 35.246895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046614, 38.947052, 35.067398>,  <27.391449, 38.845844, 35.715786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046614, 38.947052, 35.067398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406862, 38.790131, 34.992588>,  <27.623013, 38.695980, 34.947704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.406862, 38.790131, 34.992588>,  <27.046614, 38.947052, 35.067398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406862, 38.790131, 34.992588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433971, -0.788640, -0.435564,
		0.023379, 0.473442, -0.880515,
		0.900624, -0.392300, -0.187023,
		27.677050, 38.672440, 34.936481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995300, 38.718567, 34.410725>,  <27.046614, 38.947052, 35.067398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995300, 38.718567, 34.410725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.314304, 38.524490, 34.554153>,  <27.505707, 38.408047, 34.640209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.314304, 38.524490, 34.554153>,  <26.995300, 38.718567, 34.410725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314304, 38.524490, 34.554153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327968, -0.847507, -0.417334,
		0.506377, 0.215228, -0.835021,
		0.797508, -0.485189, 0.358570,
		27.553556, 38.378933, 34.661724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133657, 38.289799, 33.913391>,  <26.995300, 38.718567, 34.410725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133657, 38.289799, 33.913391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.324625, 38.116966, 34.219433>,  <27.439205, 38.013268, 34.403057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.324625, 38.116966, 34.219433>,  <27.133657, 38.289799, 33.913391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324625, 38.116966, 34.219433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292541, -0.899229, -0.325279,
		0.828548, -0.068530, -0.555709,
		0.477418, -0.432077, 0.765103,
		27.467850, 37.987343, 34.448963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448689, 37.621120, 33.638145>,  <27.133657, 38.289799, 33.913391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448689, 37.621120, 33.638145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449484, 37.583115, 34.036335>,  <27.449961, 37.560310, 34.275249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449484, 37.583115, 34.036335>,  <27.448689, 37.621120, 33.638145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449484, 37.583115, 34.036335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187417, -0.977872, -0.092960,
		0.982278, -0.186384, -0.019750,
		0.001986, -0.095014, 0.995474,
		27.450079, 37.554611, 34.334976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736719, 36.990669, 33.716984>,  <27.448689, 37.621120, 33.638145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736719, 36.990669, 33.716984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561676, 37.036987, 34.073654>,  <27.456650, 37.064777, 34.287659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561676, 37.036987, 34.073654>,  <27.736719, 36.990669, 33.716984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561676, 37.036987, 34.073654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216504, -0.976066, 0.020503,
		0.872713, -0.184080, 0.452203,
		-0.437606, 0.115797, 0.891679,
		27.430395, 37.071728, 34.341160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921036, 36.417160, 34.220787>,  <27.736719, 36.990669, 33.716984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921036, 36.417160, 34.220787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573730, 36.573299, 34.343258>,  <27.365347, 36.666985, 34.416740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573730, 36.573299, 34.343258>,  <27.921036, 36.417160, 34.220787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573730, 36.573299, 34.343258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407191, -0.913292, 0.009644,
		0.283398, -0.116301, 0.951924,
		-0.868263, 0.390348, 0.306182,
		27.313251, 36.690403, 34.435112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375614, 36.631378, 34.855961>,  <27.921036, 36.417160, 34.220787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375614, 36.631378, 34.855961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711670, 36.420086, 34.905178>,  <28.913303, 36.293312, 34.934708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711670, 36.420086, 34.905178>,  <28.375614, 36.631378, 34.855961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711670, 36.420086, 34.905178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424187, 0.781304, 0.457853,
		-0.337983, -0.332468, 0.880473,
		0.840138, -0.528232, 0.123039,
		28.963711, 36.261616, 34.942089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486446, 36.555496, 35.538742>,  <28.375614, 36.631378, 34.855961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486446, 36.555496, 35.538742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842964, 36.504883, 35.364578>,  <29.056875, 36.474514, 35.260078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842964, 36.504883, 35.364578>,  <28.486446, 36.555496, 35.538742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842964, 36.504883, 35.364578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383424, 0.722907, 0.574797,
		0.242035, -0.679261, 0.692837,
		0.891294, -0.126529, -0.435414,
		29.110352, 36.466923, 35.233955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849003, 36.722691, 36.054363>,  <28.486446, 36.555496, 35.538742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849003, 36.722691, 36.054363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131861, 36.740543, 35.772099>,  <29.301575, 36.751255, 35.602741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131861, 36.740543, 35.772099>,  <28.849003, 36.722691, 36.054363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131861, 36.740543, 35.772099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551920, 0.588970, 0.590338,
		0.441962, -0.806921, 0.391851,
		0.707145, 0.044636, -0.705658,
		29.344004, 36.753933, 35.560402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573610, 36.590633, 36.411171>,  <28.849003, 36.722691, 36.054363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573610, 36.590633, 36.411171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686626, 36.745350, 36.060043>,  <29.754436, 36.838181, 35.849365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686626, 36.745350, 36.060043>,  <29.573610, 36.590633, 36.411171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686626, 36.745350, 36.060043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553733, 0.681478, 0.478505,
		0.783296, -0.621273, -0.021635,
		0.282538, 0.386791, -0.877818,
		29.771387, 36.861385, 35.796700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378660, 36.611820, 36.407387>,  <29.573610, 36.590633, 36.411171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378660, 36.611820, 36.407387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.243902, 36.874249, 36.137253>,  <30.163048, 37.031704, 35.975174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.243902, 36.874249, 36.137253>,  <30.378660, 36.611820, 36.407387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243902, 36.874249, 36.137253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555127, 0.717739, 0.420340,
		0.760485, -0.233285, -0.606004,
		-0.336894, 0.656071, -0.675332,
		30.142834, 37.071072, 35.934654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033783, 36.991940, 36.193432>,  <30.378660, 36.611820, 36.407387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033783, 36.991940, 36.193432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713671, 37.211048, 36.095860>,  <30.521605, 37.342514, 36.037315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713671, 37.211048, 36.095860>,  <31.033783, 36.991940, 36.193432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713671, 37.211048, 36.095860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488448, 0.831480, 0.264688,
		0.347812, 0.092676, -0.932973,
		-0.800278, 0.547770, -0.243932,
		30.473587, 37.375378, 36.022678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310911, 37.503651, 35.836273>,  <31.033783, 36.991940, 36.193432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310911, 37.503651, 35.836273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967253, 37.631931, 35.995781>,  <30.761057, 37.708900, 36.091488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967253, 37.631931, 35.995781>,  <31.310911, 37.503651, 35.836273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967253, 37.631931, 35.995781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428105, 0.877347, 0.216766,
		-0.280345, 0.356950, -0.891063,
		-0.859147, 0.320699, 0.398772,
		30.709509, 37.728142, 36.115414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322540, 38.200260, 35.708408>,  <31.310911, 37.503651, 35.836273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322540, 38.200260, 35.708408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.020683, 38.189083, 35.970627>,  <30.839569, 38.182377, 36.127956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.020683, 38.189083, 35.970627>,  <31.322540, 38.200260, 35.708408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020683, 38.189083, 35.970627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177755, 0.953025, 0.245247,
		-0.631601, 0.301599, -0.714225,
		-0.754641, -0.027941, 0.655542,
		30.794291, 38.180702, 36.167290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118433, 38.903530, 35.776031>,  <31.322540, 38.200260, 35.708408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118433, 38.903530, 35.776031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.986448, 38.722523, 36.107418>,  <30.907257, 38.613918, 36.306248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.986448, 38.722523, 36.107418>,  <31.118433, 38.903530, 35.776031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986448, 38.722523, 36.107418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020036, 0.874059, 0.485406,
		-0.943782, 0.176764, -0.279340,
		-0.329962, -0.452521, 0.828463,
		30.887459, 38.586765, 36.355957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679869, 39.428848, 36.103737>,  <31.118433, 38.903530, 35.776031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679869, 39.428848, 36.103737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746775, 39.164890, 36.396736>,  <30.786919, 39.006516, 36.572536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746775, 39.164890, 36.396736>,  <30.679869, 39.428848, 36.103737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746775, 39.164890, 36.396736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009564, 0.741846, 0.670502,
		-0.985866, -0.119157, 0.117774,
		0.167265, -0.659898, 0.732500,
		30.796955, 38.966919, 36.616486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166548, 39.582649, 36.714039>,  <30.679869, 39.428848, 36.103737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166548, 39.582649, 36.714039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472147, 39.367630, 36.856781>,  <30.655506, 39.238617, 36.942429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472147, 39.367630, 36.856781>,  <30.166548, 39.582649, 36.714039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472147, 39.367630, 36.856781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005770, 0.547367, 0.836873,
		-0.645193, -0.641428, 0.415086,
		0.763998, -0.537549, 0.356858,
		30.701347, 39.206364, 36.963837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985352, 39.243881, 37.313255>,  <30.166548, 39.582649, 36.714039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985352, 39.243881, 37.313255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.383558, 39.277672, 37.330280>,  <30.622482, 39.297947, 37.340496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.383558, 39.277672, 37.330280>,  <29.985352, 39.243881, 37.313255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383558, 39.277672, 37.330280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075509, 0.438626, 0.895492,
		0.056978, -0.894690, 0.443038,
		0.995516, 0.084476, 0.042565,
		30.682213, 39.303017, 37.343048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036079, 39.144329, 38.021942>,  <29.985352, 39.243881, 37.313255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036079, 39.144329, 38.021942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.390627, 39.267925, 37.884026>,  <30.603355, 39.342083, 37.801277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.390627, 39.267925, 37.884026>,  <30.036079, 39.144329, 38.021942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390627, 39.267925, 37.884026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164901, 0.485177, 0.858726,
		0.432619, -0.818004, 0.379093,
		0.886369, 0.308988, -0.344786,
		30.656536, 39.360622, 37.780590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513575, 38.982555, 38.586128>,  <30.036079, 39.144329, 38.021942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513575, 38.982555, 38.586128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.634518, 39.277458, 38.344456>,  <30.707085, 39.454399, 38.199451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.634518, 39.277458, 38.344456>,  <30.513575, 38.982555, 38.586128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634518, 39.277458, 38.344456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141014, 0.592274, 0.793301,
		0.942706, -0.325059, 0.075116,
		0.302359, 0.737257, -0.604178,
		30.725225, 39.498634, 38.163204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187855, 39.130089, 38.881382>,  <30.513575, 38.982555, 38.586128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187855, 39.130089, 38.881382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.095901, 39.444000, 38.651157>,  <31.040730, 39.632347, 38.513023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.095901, 39.444000, 38.651157>,  <31.187855, 39.130089, 38.881382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095901, 39.444000, 38.651157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265483, 0.619539, 0.738709,
		0.936308, 0.017016, -0.350768,
		-0.229884, 0.784782, -0.575562,
		31.026936, 39.679436, 38.478489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813375, 39.590988, 38.827003>,  <31.187855, 39.130089, 38.881382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813375, 39.590988, 38.827003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481445, 39.800571, 38.750210>,  <31.282288, 39.926323, 38.704132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481445, 39.800571, 38.750210>,  <31.813375, 39.590988, 38.827003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481445, 39.800571, 38.750210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247624, 0.654068, 0.714756,
		0.500075, 0.545582, -0.672507,
		-0.829824, 0.523961, -0.191983,
		31.232498, 39.957760, 38.692616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087963, 40.331234, 38.905510>,  <31.813375, 39.590988, 38.827003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087963, 40.331234, 38.905510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.688084, 40.340851, 38.903187>,  <31.448156, 40.346622, 38.901794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.688084, 40.340851, 38.903187>,  <32.087963, 40.331234, 38.905510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688084, 40.340851, 38.903187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012721, 0.701047, 0.713001,
		0.021213, 0.712709, -0.701139,
		-0.999694, 0.024044, -0.005805,
		31.388176, 40.348064, 38.901443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939842, 41.049683, 38.986374>,  <32.087963, 40.331234, 38.905510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939842, 41.049683, 38.986374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.597448, 40.863327, 39.076027>,  <31.392012, 40.751514, 39.129818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.597448, 40.863327, 39.076027>,  <31.939842, 41.049683, 38.986374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597448, 40.863327, 39.076027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054745, 0.512777, 0.856775,
		-0.514092, 0.721117, -0.464435,
		-0.855987, -0.465886, 0.224137,
		31.340652, 40.723560, 39.143269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402975, 41.627583, 39.035789>,  <31.939842, 41.049683, 38.986374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402975, 41.627583, 39.035789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.313795, 41.298962, 39.245686>,  <31.260286, 41.101791, 39.371624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.313795, 41.298962, 39.245686>,  <31.402975, 41.627583, 39.035789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313795, 41.298962, 39.245686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105815, 0.555504, 0.824754,
		-0.969070, 0.128353, -0.210781,
		-0.222949, -0.821548, 0.524740,
		31.246910, 41.052498, 39.403107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762522, 41.761837, 39.383560>,  <31.402975, 41.627583, 39.035789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762522, 41.761837, 39.383560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931284, 41.462940, 39.588936>,  <31.032541, 41.283604, 39.712162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931284, 41.462940, 39.588936>,  <30.762522, 41.761837, 39.383560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931284, 41.462940, 39.588936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062044, 0.541191, 0.838608,
		-0.904515, -0.385669, 0.181969,
		0.421905, -0.747243, 0.513444,
		31.057856, 41.238766, 39.742970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291784, 41.635769, 39.932293>,  <30.762522, 41.761837, 39.383560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291784, 41.635769, 39.932293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649569, 41.499538, 40.048187>,  <30.864239, 41.417801, 40.117722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649569, 41.499538, 40.048187>,  <30.291784, 41.635769, 39.932293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649569, 41.499538, 40.048187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072102, 0.529625, 0.845162,
		-0.441294, -0.776855, 0.449172,
		0.894461, -0.340578, 0.289733,
		30.917908, 41.397366, 40.135109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226933, 41.688141, 40.655327>,  <30.291784, 41.635769, 39.932293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226933, 41.688141, 40.655327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.617094, 41.625751, 40.593025>,  <30.851191, 41.588318, 40.555645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.617094, 41.625751, 40.593025>,  <30.226933, 41.688141, 40.655327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617094, 41.625751, 40.593025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218897, 0.602209, 0.767743,
		-0.025954, -0.782953, 0.621539,
		0.975403, -0.155979, -0.155756,
		30.909716, 41.578957, 40.546299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605480, 41.611099, 41.319901>,  <30.226933, 41.688141, 40.655327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605480, 41.611099, 41.319901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893681, 41.746464, 41.077793>,  <31.066601, 41.827682, 40.932529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893681, 41.746464, 41.077793>,  <30.605480, 41.611099, 41.319901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893681, 41.746464, 41.077793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302432, 0.632107, 0.713426,
		0.624033, -0.697076, 0.353084,
		0.720499, 0.338417, -0.605273,
		31.109831, 41.847988, 40.896214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159203, 41.864498, 41.779896>,  <30.605480, 41.611099, 41.319901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159203, 41.864498, 41.779896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.271660, 42.019630, 41.428772>,  <31.339134, 42.112709, 41.218098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.271660, 42.019630, 41.428772>,  <31.159203, 41.864498, 41.779896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271660, 42.019630, 41.428772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310012, 0.828956, 0.465536,
		0.908213, -0.403013, 0.112823,
		0.281143, 0.387830, -0.877808,
		31.356003, 42.135979, 41.165428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.893482, 32.780666, 45.844788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604580, 32.507294, 45.887241>,  <36.431240, 32.343269, 45.912712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604580, 32.507294, 45.887241>,  <36.893482, 32.780666, 45.844788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604580, 32.507294, 45.887241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146852, 0.301493, 0.942092,
		-0.675858, 0.664843, -0.318118,
		-0.722254, -0.683436, 0.106133,
		36.387905, 32.302261, 45.919083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684341, 32.932098, 46.489510>,  <36.893482, 32.780666, 45.844788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684341, 32.932098, 46.489510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449570, 32.609627, 46.459633>,  <36.308704, 32.416142, 46.441708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449570, 32.609627, 46.459633>,  <36.684341, 32.932098, 46.489510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449570, 32.609627, 46.459633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162476, 0.026904, 0.986345,
		-0.793166, 0.591054, -0.146777,
		-0.586932, -0.806183, -0.074693,
		36.273491, 32.367771, 46.437225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937336, 33.056232, 46.857826>,  <36.684341, 32.932098, 46.489510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937336, 33.056232, 46.857826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062870, 32.676441, 46.857689>,  <36.138191, 32.448566, 46.857609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062870, 32.676441, 46.857689>,  <35.937336, 33.056232, 46.857826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062870, 32.676441, 46.857689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125891, -0.041967, 0.991156,
		-0.941095, -0.311016, -0.132701,
		0.313834, -0.949478, -0.000340,
		36.157021, 32.391598, 46.857586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590572, 32.779572, 47.379951>,  <35.937336, 33.056232, 46.857826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590572, 32.779572, 47.379951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857197, 32.484253, 47.338741>,  <36.017174, 32.307064, 47.314014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857197, 32.484253, 47.338741>,  <35.590572, 32.779572, 47.379951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857197, 32.484253, 47.338741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098626, -0.224334, 0.969509,
		-0.738894, -0.636079, -0.222349,
		0.666565, -0.738293, -0.103025,
		36.057167, 32.262764, 47.307835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247238, 32.238033, 47.605663>,  <35.590572, 32.779572, 47.379951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247238, 32.238033, 47.605663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635731, 32.144665, 47.624493>,  <35.868828, 32.088642, 47.635792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635731, 32.144665, 47.624493>,  <35.247238, 32.238033, 47.605663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635731, 32.144665, 47.624493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124913, -0.331133, 0.935279,
		-0.202726, -0.914257, -0.350766,
		0.971236, -0.233421, 0.047073,
		35.927101, 32.074638, 47.638615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288219, 31.568420, 47.778732>,  <35.247238, 32.238033, 47.605663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288219, 31.568420, 47.778732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645477, 31.703001, 47.898129>,  <35.859833, 31.783749, 47.969765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645477, 31.703001, 47.898129>,  <35.288219, 31.568420, 47.778732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645477, 31.703001, 47.898129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122073, -0.457398, 0.880843,
		0.432887, -0.823158, -0.367451,
		0.893144, 0.336449, 0.298487,
		35.913422, 31.803936, 47.987675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673100, 31.062094, 48.154499>,  <35.288219, 31.568420, 47.778732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673100, 31.062094, 48.154499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875805, 31.378674, 48.291206>,  <35.997429, 31.568621, 48.373230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875805, 31.378674, 48.291206>,  <35.673100, 31.062094, 48.154499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875805, 31.378674, 48.291206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053619, -0.366738, 0.928778,
		0.860418, -0.488993, -0.143412,
		0.506760, 0.791448, 0.341767,
		36.027832, 31.616108, 48.393738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188145, 30.864408, 48.592457>,  <35.673100, 31.062094, 48.154499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188145, 30.864408, 48.592457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123825, 31.243799, 48.701660>,  <36.085236, 31.471434, 48.767181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123825, 31.243799, 48.701660>,  <36.188145, 30.864408, 48.592457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123825, 31.243799, 48.701660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204176, -0.302591, 0.930995,
		0.965638, 0.093959, 0.242312,
		-0.160796, 0.948478, 0.273010,
		36.075584, 31.528343, 48.783562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550457, 30.946011, 49.262962>,  <36.188145, 30.864408, 48.592457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550457, 30.946011, 49.262962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288311, 31.247995, 49.272118>,  <36.131023, 31.429186, 49.277611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288311, 31.247995, 49.272118>,  <36.550457, 30.946011, 49.262962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288311, 31.247995, 49.272118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258385, -0.252565, 0.932442,
		0.709741, 0.605178, 0.360594,
		-0.655366, 0.754964, 0.022887,
		36.091702, 31.474485, 49.278984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634632, 31.189754, 49.876244>,  <36.550457, 30.946011, 49.262962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634632, 31.189754, 49.876244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280823, 31.345284, 49.773148>,  <36.068539, 31.438601, 49.711288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280823, 31.345284, 49.773148>,  <36.634632, 31.189754, 49.876244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280823, 31.345284, 49.773148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275971, 0.009310, 0.961121,
		0.376107, 0.921265, 0.099069,
		-0.884525, 0.388824, -0.257744,
		36.015465, 31.461931, 49.695824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509827, 31.824541, 50.187565>,  <36.634632, 31.189754, 49.876244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509827, 31.824541, 50.187565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140850, 31.684946, 50.121460>,  <35.919464, 31.601189, 50.081795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140850, 31.684946, 50.121460>,  <36.509827, 31.824541, 50.187565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140850, 31.684946, 50.121460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258898, 0.241426, 0.935246,
		-0.286491, 0.905495, -0.313054,
		-0.922440, -0.348988, -0.165265,
		35.864117, 31.580250, 50.071880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121216, 32.269051, 50.620594>,  <36.509827, 31.824541, 50.187565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121216, 32.269051, 50.620594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889191, 31.959602, 50.518585>,  <35.749977, 31.773933, 50.457382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889191, 31.959602, 50.518585>,  <36.121216, 32.269051, 50.620594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889191, 31.959602, 50.518585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350444, -0.045609, 0.935473,
		-0.735334, 0.632003, -0.244655,
		-0.580063, -0.773623, -0.255019,
		35.715172, 31.727516, 50.442078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477470, 32.430737, 50.734798>,  <36.121216, 32.269051, 50.620594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477470, 32.430737, 50.734798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517036, 32.035370, 50.780827>,  <35.540775, 31.798149, 50.808445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517036, 32.035370, 50.780827>,  <35.477470, 32.430737, 50.734798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517036, 32.035370, 50.780827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198758, 0.093686, 0.975560,
		-0.975044, -0.119372, -0.187189,
		0.098918, -0.988419, 0.115075,
		35.546711, 31.738844, 50.815350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372402, 32.372669, 51.452797>,  <35.477470, 32.430737, 50.734798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372402, 32.372669, 51.452797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.439754, 31.984737, 51.382278>,  <35.480164, 31.751978, 51.339970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.439754, 31.984737, 51.382278>,  <35.372402, 32.372669, 51.452797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439754, 31.984737, 51.382278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001068, -0.179027, 0.983844,
		-0.985722, -0.165468, -0.031180,
		0.168376, -0.969830, -0.176294,
		35.490269, 31.693789, 51.329391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625061, 32.716427, 51.630299>,  <35.372402, 32.372669, 51.452797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625061, 32.716427, 51.630299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407207, 33.039436, 51.720882>,  <34.276497, 33.233242, 51.775230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407207, 33.039436, 51.720882>,  <34.625061, 32.716427, 51.630299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407207, 33.039436, 51.720882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043185, 0.296661, -0.954006,
		-0.837561, -0.509804, -0.196445,
		-0.544634, 0.807522, 0.226456,
		34.243816, 33.281693, 51.788818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105949, 32.710346, 51.051712>,  <34.625061, 32.716427, 51.630299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105949, 32.710346, 51.051712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.154446, 33.074257, 51.210514>,  <34.183544, 33.292603, 51.305794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.154446, 33.074257, 51.210514>,  <34.105949, 32.710346, 51.051712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154446, 33.074257, 51.210514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088150, 0.408240, -0.908608,
		-0.988702, 0.075160, 0.129691,
		0.121236, 0.909775, 0.397003,
		34.190815, 33.347191, 51.329617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630573, 33.088211, 50.646973>,  <34.105949, 32.710346, 51.051712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630573, 33.088211, 50.646973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870110, 33.360504, 50.815727>,  <34.013832, 33.523880, 50.916981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870110, 33.360504, 50.815727>,  <33.630573, 33.088211, 50.646973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870110, 33.360504, 50.815727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156006, 0.417545, -0.895164,
		-0.785525, 0.601879, 0.143845,
		0.598843, 0.680733, 0.421889,
		34.049763, 33.564724, 50.942295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400616, 33.773987, 50.289322>,  <33.630573, 33.088211, 50.646973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400616, 33.773987, 50.289322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753338, 33.849197, 50.462330>,  <33.964970, 33.894325, 50.566135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753338, 33.849197, 50.462330>,  <33.400616, 33.773987, 50.289322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753338, 33.849197, 50.462330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265105, 0.560872, -0.784310,
		-0.390060, 0.806268, 0.444730,
		0.881801, 0.188027, 0.432519,
		34.017879, 33.905605, 50.592087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398258, 34.420155, 50.178055>,  <33.400616, 33.773987, 50.289322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398258, 34.420155, 50.178055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779148, 34.329952, 50.260426>,  <34.007683, 34.275829, 50.309849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779148, 34.329952, 50.260426>,  <33.398258, 34.420155, 50.178055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779148, 34.329952, 50.260426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304333, 0.644854, -0.701103,
		0.025314, 0.730280, 0.682678,
		0.952229, -0.225509, 0.205924,
		34.064816, 34.262299, 50.322205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692764, 35.007545, 50.048443>,  <33.398258, 34.420155, 50.178055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692764, 35.007545, 50.048443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015278, 34.771423, 50.063629>,  <34.208786, 34.629749, 50.072742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015278, 34.771423, 50.063629>,  <33.692764, 35.007545, 50.048443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015278, 34.771423, 50.063629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415326, 0.519247, -0.746918,
		0.421195, 0.617999, 0.663831,
		0.806287, -0.590304, 0.037967,
		34.257164, 34.594334, 50.075020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196606, 35.544708, 49.975895>,  <33.692764, 35.007545, 50.048443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196606, 35.544708, 49.975895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327923, 35.186256, 49.856453>,  <34.406715, 34.971184, 49.784786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327923, 35.186256, 49.856453>,  <34.196606, 35.544708, 49.975895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327923, 35.186256, 49.856453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527701, 0.436196, -0.728879,
		0.783424, 0.081714, 0.616092,
		0.328297, -0.896134, -0.298605,
		34.426411, 34.917416, 49.766872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924412, 35.587158, 49.871639>,  <34.196606, 35.544708, 49.975895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924412, 35.587158, 49.871639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818607, 35.260689, 49.666153>,  <34.755123, 35.064808, 49.542862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818607, 35.260689, 49.666153>,  <34.924412, 35.587158, 49.871639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818607, 35.260689, 49.666153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426632, 0.378690, -0.821327,
		0.864880, -0.436418, 0.248036,
		-0.264513, -0.816170, -0.513712,
		34.739254, 35.015839, 49.512039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413502, 35.471947, 49.419147>,  <34.924412, 35.587158, 49.871639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413502, 35.471947, 49.419147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124306, 35.256657, 49.245895>,  <34.950790, 35.127483, 49.141945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124306, 35.256657, 49.245895>,  <35.413502, 35.471947, 49.419147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124306, 35.256657, 49.245895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339336, 0.269439, -0.901251,
		0.601781, -0.798568, -0.012161,
		-0.722987, -0.538230, -0.433127,
		34.907410, 35.095188, 49.115959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680073, 35.271656, 48.737873>,  <35.413502, 35.471947, 49.419147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680073, 35.271656, 48.737873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297523, 35.159416, 48.705357>,  <35.067993, 35.092072, 48.685848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297523, 35.159416, 48.705357>,  <35.680073, 35.271656, 48.737873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297523, 35.159416, 48.705357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003280, 0.267929, -0.963433,
		0.292126, -0.921669, -0.255319,
		-0.956374, -0.280607, -0.081292,
		35.010612, 35.075237, 48.680969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547577, 34.902405, 48.082787>,  <35.680073, 35.271656, 48.737873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547577, 34.902405, 48.082787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179909, 35.022678, 48.184540>,  <34.959309, 35.094841, 48.245594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179909, 35.022678, 48.184540>,  <35.547577, 34.902405, 48.082787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179909, 35.022678, 48.184540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199081, 0.202599, -0.958812,
		-0.339836, -0.931957, -0.126363,
		-0.919173, 0.300683, 0.254386,
		34.904156, 35.112885, 48.260857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995792, 34.501904, 47.690937>,  <35.547577, 34.902405, 48.082787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995792, 34.501904, 47.690937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876762, 34.873318, 47.779724>,  <34.805344, 35.096169, 47.832996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876762, 34.873318, 47.779724>,  <34.995792, 34.501904, 47.690937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876762, 34.873318, 47.779724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060252, 0.213768, -0.975024,
		-0.952796, -0.303514, -0.007665,
		-0.297572, 0.928538, 0.221964,
		34.787491, 35.151878, 47.846313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484886, 34.677818, 47.172852>,  <34.995792, 34.501904, 47.690937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484886, 34.677818, 47.172852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601353, 35.031349, 47.319309>,  <34.671234, 35.243469, 47.407185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601353, 35.031349, 47.319309>,  <34.484886, 34.677818, 47.172852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601353, 35.031349, 47.319309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054352, 0.397393, -0.916038,
		-0.955126, 0.246821, 0.163747,
		0.291169, 0.883832, 0.366145,
		34.688702, 35.296497, 47.429153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080273, 35.144558, 46.800049>,  <34.484886, 34.677818, 47.172852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080273, 35.144558, 46.800049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382973, 35.364967, 46.940739>,  <34.564594, 35.497211, 47.025150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382973, 35.364967, 46.940739>,  <34.080273, 35.144558, 46.800049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382973, 35.364967, 46.940739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077116, 0.459036, -0.885065,
		-0.649140, 0.696896, 0.304883,
		0.756750, 0.551020, 0.351720,
		34.609997, 35.530273, 47.046253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413704, 35.419636, 46.849186>,  <34.080273, 35.144558, 46.800049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413704, 35.419636, 46.849186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036396, 35.503506, 46.746212>,  <32.810009, 35.553829, 46.684425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036396, 35.503506, 46.746212>,  <33.413704, 35.419636, 46.849186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036396, 35.503506, 46.746212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319683, -0.364145, 0.874758,
		0.089670, 0.907433, 0.410517,
		-0.943272, 0.209675, -0.257438,
		32.753414, 35.566406, 46.668980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072422, 35.966702, 47.302116>,  <33.413704, 35.419636, 46.849186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072422, 35.966702, 47.302116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744694, 35.774414, 47.177135>,  <32.548058, 35.659042, 47.102146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744694, 35.774414, 47.177135>,  <33.072422, 35.966702, 47.302116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744694, 35.774414, 47.177135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280191, -0.139732, 0.949720,
		-0.500207, 0.865670, -0.020208,
		-0.819320, -0.480719, -0.312448,
		32.498898, 35.630199, 47.083401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484333, 36.211323, 47.758049>,  <33.072422, 35.966702, 47.302116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484333, 36.211323, 47.758049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354744, 35.874477, 47.585590>,  <32.276989, 35.672371, 47.482113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354744, 35.874477, 47.585590>,  <32.484333, 36.211323, 47.758049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354744, 35.874477, 47.585590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501654, -0.233474, 0.832967,
		-0.802113, 0.486148, -0.346808,
		-0.323974, -0.842111, -0.431150,
		32.257553, 35.621845, 47.456245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788822, 36.205292, 47.969944>,  <32.484333, 36.211323, 47.758049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788822, 36.205292, 47.969944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870787, 35.833256, 47.848000>,  <31.919966, 35.610035, 47.774834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870787, 35.833256, 47.848000>,  <31.788822, 36.205292, 47.969944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870787, 35.833256, 47.848000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357519, -0.361074, 0.861282,
		-0.911149, -0.067492, -0.406513,
		0.204911, -0.930092, -0.304862,
		31.932261, 35.554230, 47.756542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250761, 35.866791, 48.249313>,  <31.788822, 36.205292, 47.969944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250761, 35.866791, 48.249313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.512291, 35.571064, 48.184910>,  <31.669209, 35.393627, 48.146267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.512291, 35.571064, 48.184910>,  <31.250761, 35.866791, 48.249313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512291, 35.571064, 48.184910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326956, -0.467958, 0.821045,
		-0.682359, -0.484175, -0.547687,
		0.653824, -0.739317, -0.161012,
		31.708439, 35.349270, 48.136608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841394, 35.269562, 48.386497>,  <31.250761, 35.866791, 48.249313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841394, 35.269562, 48.386497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222046, 35.147087, 48.396759>,  <31.450436, 35.073605, 48.402916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222046, 35.147087, 48.396759>,  <30.841394, 35.269562, 48.386497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222046, 35.147087, 48.396759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219514, -0.619070, 0.754033,
		-0.214988, -0.723190, -0.656335,
		0.951627, -0.306182, 0.025658,
		31.507534, 35.055233, 48.404457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786610, 34.482899, 48.503117>,  <30.841394, 35.269562, 48.386497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786610, 34.482899, 48.503117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148470, 34.588322, 48.637066>,  <31.365585, 34.651577, 48.717438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148470, 34.588322, 48.637066>,  <30.786610, 34.482899, 48.503117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148470, 34.588322, 48.637066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110810, -0.613303, 0.782036,
		0.411495, -0.744578, -0.525620,
		0.904651, 0.263560, 0.334877,
		31.419865, 34.667389, 48.737530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773350, 33.905067, 48.185936>,  <30.786610, 34.482899, 48.503117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773350, 33.905067, 48.185936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.691122, 33.515026, 48.152657>,  <30.641785, 33.281002, 48.132687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.691122, 33.515026, 48.152657>,  <30.773350, 33.905067, 48.185936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691122, 33.515026, 48.152657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019269, 0.089035, -0.995842,
		0.978453, -0.203111, -0.037092,
		-0.205569, -0.975099, -0.083202,
		30.629452, 33.222496, 48.127697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173958, 33.629276, 47.652988>,  <30.773350, 33.905067, 48.185936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173958, 33.629276, 47.652988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.887579, 33.352734, 47.691872>,  <30.715752, 33.186810, 47.715202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.887579, 33.352734, 47.691872>,  <31.173958, 33.629276, 47.652988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887579, 33.352734, 47.691872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118311, -0.017077, -0.992830,
		0.688057, -0.722314, -0.069569,
		-0.715947, -0.691355, 0.097208,
		30.672794, 33.145329, 47.721035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383268, 33.202187, 47.139591>,  <31.173958, 33.629276, 47.652988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383268, 33.202187, 47.139591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.995481, 33.134163, 47.210262>,  <30.762810, 33.093349, 47.252666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.995481, 33.134163, 47.210262>,  <31.383268, 33.202187, 47.139591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995481, 33.134163, 47.210262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167185, -0.068746, -0.983526,
		0.179409, -0.983032, 0.038215,
		-0.969465, -0.170064, 0.176682,
		30.704641, 33.083145, 47.263268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154551, 32.608570, 46.727699>,  <31.383268, 33.202187, 47.139591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154551, 32.608570, 46.727699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.803724, 32.767979, 46.834988>,  <30.593229, 32.863625, 46.899361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.803724, 32.767979, 46.834988>,  <31.154551, 32.608570, 46.727699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803724, 32.767979, 46.834988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221053, 0.160893, -0.961899,
		-0.426490, -0.902937, -0.053019,
		-0.877065, 0.398520, 0.268216,
		30.540606, 32.887535, 46.915451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674789, 32.166512, 46.400780>,  <31.154551, 32.608570, 46.727699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674789, 32.166512, 46.400780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.529730, 32.530880, 46.479469>,  <30.442694, 32.749500, 46.526684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.529730, 32.530880, 46.479469>,  <30.674789, 32.166512, 46.400780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529730, 32.530880, 46.479469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314231, 0.079211, -0.946036,
		-0.877351, -0.404897, 0.257515,
		-0.362649, 0.910925, 0.196727,
		30.420935, 32.804157, 46.538486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931019, 32.217438, 46.006992>,  <30.674789, 32.166512, 46.400780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931019, 32.217438, 46.006992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091238, 32.569832, 46.107735>,  <30.187370, 32.781269, 46.168182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091238, 32.569832, 46.107735>,  <29.931019, 32.217438, 46.006992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091238, 32.569832, 46.107735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142616, 0.331465, -0.932626,
		-0.905109, 0.337642, 0.258410,
		0.400548, 0.880982, 0.251859,
		30.211403, 32.834126, 46.183292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477787, 32.674603, 45.670326>,  <29.931019, 32.217438, 46.006992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477787, 32.674603, 45.670326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.814726, 32.877487, 45.743191>,  <30.016890, 32.999218, 45.786907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.814726, 32.877487, 45.743191>,  <29.477787, 32.674603, 45.670326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814726, 32.877487, 45.743191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020798, 0.368341, -0.929458,
		-0.538532, 0.779139, 0.320821,
		0.842349, 0.507215, 0.182159,
		30.067430, 33.029652, 45.797840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.869110, 29.628466, 49.418613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.215157, 29.828705, 49.431164>,  <33.422783, 29.948849, 49.438694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.215157, 29.828705, 49.431164>,  <32.869110, 29.628466, 49.418613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215157, 29.828705, 49.431164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059266, -0.039903, -0.997445,
		-0.498065, 0.864761, -0.064189,
		0.865112, 0.500597, 0.031376,
		33.474689, 29.978884, 49.440578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728432, 30.252842, 49.099274>,  <32.869110, 29.628466, 49.418613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728432, 30.252842, 49.099274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.121670, 30.185257, 49.071083>,  <33.357613, 30.144707, 49.054169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.121670, 30.185257, 49.071083>,  <32.728432, 30.252842, 49.099274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121670, 30.185257, 49.071083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078445, -0.040968, -0.996076,
		0.165412, 0.984771, -0.053530,
		0.983100, -0.168962, -0.070474,
		33.416599, 30.134569, 49.049942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939430, 30.545002, 48.489037>,  <32.728432, 30.252842, 49.099274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939430, 30.545002, 48.489037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.258354, 30.315851, 48.565037>,  <33.449711, 30.178360, 48.610638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.258354, 30.315851, 48.565037>,  <32.939430, 30.545002, 48.489037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258354, 30.315851, 48.565037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098261, -0.187398, -0.977357,
		0.595512, 0.797930, -0.093124,
		0.797314, -0.572878, 0.190003,
		33.497547, 30.143988, 48.622036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483730, 30.820755, 48.056572>,  <32.939430, 30.545002, 48.489037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483730, 30.820755, 48.056572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624744, 30.459255, 48.153698>,  <33.709354, 30.242355, 48.211975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624744, 30.459255, 48.153698>,  <33.483730, 30.820755, 48.056572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624744, 30.459255, 48.153698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356197, -0.110353, -0.927872,
		0.865357, 0.413598, 0.283009,
		0.352535, -0.903747, 0.242817,
		33.730503, 30.188131, 48.226543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158836, 30.806065, 47.855152>,  <33.483730, 30.820755, 48.056572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158836, 30.806065, 47.855152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034691, 30.426310, 47.874496>,  <33.960201, 30.198458, 47.886105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034691, 30.426310, 47.874496>,  <34.158836, 30.806065, 47.855152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034691, 30.426310, 47.874496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213321, -0.119137, -0.969691,
		0.926372, -0.290644, 0.239501,
		-0.310368, -0.949385, 0.048365,
		33.941582, 30.141495, 47.889008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562046, 30.427551, 47.533695>,  <34.158836, 30.806065, 47.855152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562046, 30.427551, 47.533695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273815, 30.150398, 47.523296>,  <34.100876, 29.984106, 47.517056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273815, 30.150398, 47.523296>,  <34.562046, 30.427551, 47.533695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273815, 30.150398, 47.523296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084634, -0.050677, -0.995122,
		0.688186, -0.719267, 0.095159,
		-0.720581, -0.692883, -0.025999,
		34.057640, 29.942533, 47.515495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835850, 29.859880, 47.126629>,  <34.562046, 30.427551, 47.533695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835850, 29.859880, 47.126629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.457214, 29.731136, 47.118877>,  <34.230034, 29.653889, 47.114227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.457214, 29.731136, 47.118877>,  <34.835850, 29.859880, 47.126629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457214, 29.731136, 47.118877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120799, -0.298272, -0.946806,
		0.298962, -0.898576, 0.321221,
		-0.946588, -0.321863, -0.019375,
		34.173237, 29.634577, 47.113064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764790, 29.179323, 46.849609>,  <34.835850, 29.859880, 47.126629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764790, 29.179323, 46.849609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.404030, 29.345131, 46.801018>,  <34.187576, 29.444616, 46.771862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.404030, 29.345131, 46.801018>,  <34.764790, 29.179323, 46.849609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404030, 29.345131, 46.801018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033612, -0.213023, -0.976469,
		-0.430645, -0.884755, 0.178191,
		-0.901895, 0.414522, -0.121476,
		34.133461, 29.469488, 46.764576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401268, 28.681862, 46.475628>,  <34.764790, 29.179323, 46.849609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401268, 28.681862, 46.475628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.198334, 29.021965, 46.419525>,  <34.076572, 29.226027, 46.385864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.198334, 29.021965, 46.419525>,  <34.401268, 28.681862, 46.475628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198334, 29.021965, 46.419525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076176, -0.206367, -0.975505,
		-0.858377, -0.484221, 0.169466,
		-0.507333, 0.850261, -0.140255,
		34.046135, 29.277042, 46.377449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768692, 28.501577, 46.094109>,  <34.401268, 28.681862, 46.475628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768692, 28.501577, 46.094109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.848949, 28.886198, 46.019108>,  <33.897102, 29.116970, 45.974106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.848949, 28.886198, 46.019108>,  <33.768692, 28.501577, 46.094109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848949, 28.886198, 46.019108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028486, -0.185591, -0.982214,
		-0.979250, 0.202415, -0.009846,
		0.200642, 0.961553, -0.187506,
		33.909142, 29.174664, 45.962856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179077, 28.642044, 45.668922>,  <33.768692, 28.501577, 46.094109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179077, 28.642044, 45.668922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.447315, 28.931784, 45.604908>,  <33.608257, 29.105627, 45.566498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.447315, 28.931784, 45.604908>,  <33.179077, 28.642044, 45.668922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447315, 28.931784, 45.604908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067088, -0.155634, -0.985534,
		-0.738780, 0.671635, -0.055773,
		0.670599, 0.724351, -0.160038,
		33.648495, 29.149090, 45.556896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981960, 28.950655, 45.057766>,  <33.179077, 28.642044, 45.668922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981960, 28.950655, 45.057766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366814, 29.058447, 45.074165>,  <33.597725, 29.123121, 45.084007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366814, 29.058447, 45.074165>,  <32.981960, 28.950655, 45.057766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366814, 29.058447, 45.074165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113941, -0.260948, -0.958605,
		-0.247625, 0.926977, -0.281771,
		0.962133, 0.269480, 0.041003,
		33.655453, 29.139292, 45.086468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774231, 29.628666, 45.152493>,  <32.981960, 28.950655, 45.057766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774231, 29.628666, 45.152493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.452030, 29.865128, 45.135994>,  <32.258709, 30.007004, 45.126095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.452030, 29.865128, 45.135994>,  <32.774231, 29.628666, 45.152493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452030, 29.865128, 45.135994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151732, -0.138470, 0.978674,
		0.572836, 0.794584, 0.201236,
		-0.805504, 0.591154, -0.041243,
		32.210381, 30.042473, 45.123623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793270, 30.153616, 45.751549>,  <32.774231, 29.628666, 45.152493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793270, 30.153616, 45.751549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414490, 30.126862, 45.625816>,  <32.187222, 30.110809, 45.550377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414490, 30.126862, 45.625816>,  <32.793270, 30.153616, 45.751549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414490, 30.126862, 45.625816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310850, -0.057604, 0.948712,
		-0.081561, 0.996096, 0.033757,
		-0.946953, -0.066885, -0.314335,
		32.130405, 30.106796, 45.531517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494648, 30.643696, 46.078728>,  <32.793270, 30.153616, 45.751549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494648, 30.643696, 46.078728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.195759, 30.406796, 45.958130>,  <32.016426, 30.264656, 45.885769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.195759, 30.406796, 45.958130>,  <32.494648, 30.643696, 46.078728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195759, 30.406796, 45.958130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403773, 0.044243, 0.913789,
		-0.527853, 0.804538, -0.272195,
		-0.747220, -0.592251, -0.301497,
		31.971592, 30.229120, 45.867680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903549, 30.888374, 46.355675>,  <32.494648, 30.643696, 46.078728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903549, 30.888374, 46.355675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.782803, 30.516632, 46.270657>,  <31.710356, 30.293587, 46.219646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.782803, 30.516632, 46.270657>,  <31.903549, 30.888374, 46.355675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782803, 30.516632, 46.270657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354055, -0.097717, 0.930105,
		-0.885168, 0.356019, -0.299546,
		-0.301865, -0.929355, -0.212547,
		31.692244, 30.237825, 46.206894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231234, 30.871477, 46.605835>,  <31.903549, 30.888374, 46.355675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231234, 30.871477, 46.605835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.345322, 30.488396, 46.590599>,  <31.413774, 30.258547, 46.581459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.345322, 30.488396, 46.590599>,  <31.231234, 30.871477, 46.605835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345322, 30.488396, 46.590599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576550, -0.203179, 0.791396,
		-0.765662, -0.203764, -0.610116,
		0.285221, -0.957705, -0.038087,
		31.430887, 30.201084, 46.579174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538740, 30.469988, 46.480633>,  <31.231234, 30.871477, 46.605835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538740, 30.469988, 46.480633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.808483, 30.235643, 46.660416>,  <30.970329, 30.095037, 46.768288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.808483, 30.235643, 46.660416>,  <30.538740, 30.469988, 46.480633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808483, 30.235643, 46.660416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647048, -0.175571, 0.741959,
		-0.355774, -0.791165, -0.497477,
		0.674355, -0.585861, 0.449458,
		31.010790, 30.059885, 46.795254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164888, 29.940001, 46.696281>,  <30.538740, 30.469988, 46.480633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164888, 29.940001, 46.696281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.488031, 29.852976, 46.915382>,  <30.681917, 29.800760, 47.046844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.488031, 29.852976, 46.915382>,  <30.164888, 29.940001, 46.696281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488031, 29.852976, 46.915382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585543, -0.190378, 0.787969,
		-0.067151, -0.957300, -0.281190,
		0.807855, -0.217561, 0.547756,
		30.730389, 29.787706, 47.079708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015207, 29.330801, 47.070866>,  <30.164888, 29.940001, 46.696281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015207, 29.330801, 47.070866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.332317, 29.480412, 47.263371>,  <30.522583, 29.570177, 47.378872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.332317, 29.480412, 47.263371>,  <30.015207, 29.330801, 47.070866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332317, 29.480412, 47.263371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447050, -0.179892, 0.876233,
		0.414310, -0.909803, 0.024595,
		0.792776, 0.374027, 0.481259,
		30.570150, 29.592619, 47.407749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018074, 29.011501, 47.672863>,  <30.015207, 29.330801, 47.070866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018074, 29.011501, 47.672863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.279200, 29.299490, 47.767071>,  <30.435875, 29.472284, 47.823597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.279200, 29.299490, 47.767071>,  <30.018074, 29.011501, 47.672863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279200, 29.299490, 47.767071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270590, -0.068770, 0.960235,
		0.707540, -0.690586, 0.149923,
		0.652815, 0.719973, 0.235523,
		30.475044, 29.515482, 47.837727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528549, 28.779308, 48.229797>,  <30.018074, 29.011501, 47.672863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528549, 28.779308, 48.229797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.469589, 29.173872, 48.258842>,  <30.434214, 29.410610, 48.276268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.469589, 29.173872, 48.258842>,  <30.528549, 28.779308, 48.229797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469589, 29.173872, 48.258842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317412, -0.116703, 0.941079,
		0.936762, 0.115669, 0.330300,
		-0.147400, 0.986408, 0.072608,
		30.425369, 29.469795, 48.280624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664103, 28.917257, 49.001507>,  <30.528549, 28.779308, 48.229797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664103, 28.917257, 49.001507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.451834, 29.234152, 48.881012>,  <30.324472, 29.424290, 48.808716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.451834, 29.234152, 48.881012>,  <30.664103, 28.917257, 49.001507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451834, 29.234152, 48.881012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288082, 0.165661, 0.943167,
		0.797117, 0.587295, 0.140318,
		-0.530673, 0.792238, -0.301241,
		30.292631, 29.471823, 48.790638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830240, 29.507685, 49.442329>,  <30.664103, 28.917257, 49.001507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830240, 29.507685, 49.442329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.481651, 29.605822, 49.272461>,  <30.272499, 29.664703, 49.170540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.481651, 29.605822, 49.272461>,  <30.830240, 29.507685, 49.442329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481651, 29.605822, 49.272461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433898, 0.017963, 0.900783,
		0.228628, 0.969270, 0.090800,
		-0.871471, 0.245342, -0.424671,
		30.220209, 29.679424, 49.145061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474527, 30.124939, 49.852341>,  <30.830240, 29.507685, 49.442329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474527, 30.124939, 49.852341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.197733, 29.902874, 49.667755>,  <30.031656, 29.769634, 49.557003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.197733, 29.902874, 49.667755>,  <30.474527, 30.124939, 49.852341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197733, 29.902874, 49.667755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585536, 0.057730, 0.808588,
		-0.422257, 0.829736, -0.365017,
		-0.691987, -0.555163, -0.461464,
		29.990137, 29.736324, 49.529316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871315, 30.540997, 49.816605>,  <30.474527, 30.124939, 49.852341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871315, 30.540997, 49.816605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.750973, 30.159712, 49.804771>,  <29.678766, 29.930941, 49.797672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.750973, 30.159712, 49.804771>,  <29.871315, 30.540997, 49.816605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750973, 30.159712, 49.804771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564482, 0.152990, 0.811144,
		-0.768664, 0.260739, -0.584098,
		-0.300858, -0.953210, -0.029584,
		29.660715, 29.873749, 49.795895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348026, 30.947645, 49.351891>,  <29.871315, 30.540997, 49.816605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348026, 30.947645, 49.351891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123970, 31.162479, 49.604172>,  <29.989536, 31.291380, 49.755539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123970, 31.162479, 49.604172>,  <30.348026, 30.947645, 49.351891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123970, 31.162479, 49.604172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181170, 0.663497, -0.725913,
		-0.808345, -0.520876, -0.274347,
		-0.560139, 0.537085, 0.630702,
		29.955929, 31.323605, 49.793381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683769, 31.125740, 49.006012>,  <30.348026, 30.947645, 49.351891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683769, 31.125740, 49.006012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.767534, 31.408176, 49.276592>,  <29.817793, 31.577639, 49.438942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.767534, 31.408176, 49.276592>,  <29.683769, 31.125740, 49.006012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767534, 31.408176, 49.276592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093616, 0.703089, -0.704913,
		-0.973335, 0.084293, 0.213338,
		0.209415, 0.706089, 0.676450,
		29.830359, 31.620003, 49.479527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301249, 31.654776, 48.793228>,  <29.683769, 31.125740, 49.006012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301249, 31.654776, 48.793228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.575649, 31.825792, 49.028721>,  <29.740290, 31.928402, 49.170017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.575649, 31.825792, 49.028721>,  <29.301249, 31.654776, 48.793228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575649, 31.825792, 49.028721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008193, 0.804557, -0.593818,
		-0.727553, 0.412185, 0.548425,
		0.686002, 0.427541, 0.588735,
		29.781450, 31.954054, 49.205341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115759, 32.264137, 48.817986>,  <29.301249, 31.654776, 48.793228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115759, 32.264137, 48.817986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.494190, 32.321419, 48.934208>,  <29.721249, 32.355789, 49.003941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.494190, 32.321419, 48.934208>,  <29.115759, 32.264137, 48.817986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494190, 32.321419, 48.934208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084409, 0.757000, -0.647940,
		-0.312740, 0.637529, 0.704095,
		0.946081, 0.143205, 0.290558,
		29.778015, 32.364380, 49.021374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169582, 32.887524, 48.869617>,  <29.115759, 32.264137, 48.817986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169582, 32.887524, 48.869617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.557520, 32.791122, 48.855072>,  <29.790281, 32.733280, 48.846344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.557520, 32.791122, 48.855072>,  <29.169582, 32.887524, 48.869617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557520, 32.791122, 48.855072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155736, 0.727513, -0.668185,
		0.187492, 0.642371, 0.743106,
		0.969842, -0.241007, -0.036363,
		29.848473, 32.718819, 48.844162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602388, 33.494469, 48.711124>,  <29.169582, 32.887524, 48.869617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602388, 33.494469, 48.711124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.839876, 33.186241, 48.618408>,  <29.982368, 33.001305, 48.562778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.839876, 33.186241, 48.618408>,  <29.602388, 33.494469, 48.711124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839876, 33.186241, 48.618408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176065, 0.405476, -0.896989,
		0.785174, 0.491750, 0.376409,
		0.593720, -0.770565, -0.231789,
		30.017992, 32.955070, 48.548870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424040, 33.486431, 48.720047>,  <29.602388, 33.494469, 48.711124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424040, 33.486431, 48.720047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.251947, 33.262383, 48.436874>,  <30.148693, 33.127953, 48.266972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.251947, 33.262383, 48.436874>,  <30.424040, 33.486431, 48.720047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251947, 33.262383, 48.436874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434785, 0.558691, -0.706277,
		0.791116, -0.611658, 0.003168,
		-0.430230, -0.560125, -0.707929,
		30.122879, 33.094345, 48.224495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255529, 33.717464, 48.740635>,  <30.424040, 33.486431, 48.720047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255529, 33.717464, 48.740635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.425251, 34.031193, 48.921658>,  <31.527084, 34.219429, 49.030270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.425251, 34.031193, 48.921658>,  <31.255529, 33.717464, 48.740635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425251, 34.031193, 48.921658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047593, -0.518401, 0.853812,
		0.904269, -0.340737, -0.257288,
		0.424304, 0.784320, 0.452557,
		31.552542, 34.266487, 49.057426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661272, 33.408455, 49.231663>,  <31.255529, 33.717464, 48.740635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661272, 33.408455, 49.231663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.611670, 33.790119, 49.340622>,  <31.581909, 34.019119, 49.405998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.611670, 33.790119, 49.340622>,  <31.661272, 33.408455, 49.231663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611670, 33.790119, 49.340622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010705, -0.275787, 0.961159,
		0.992224, 0.116273, 0.044413,
		-0.124005, 0.954161, 0.272398,
		31.574469, 34.076366, 49.422340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003323, 33.434811, 49.720901>,  <31.661272, 33.408455, 49.231663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003323, 33.434811, 49.720901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730326, 33.724075, 49.763298>,  <31.566526, 33.897636, 49.788734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730326, 33.724075, 49.763298>,  <32.003323, 33.434811, 49.720901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730326, 33.724075, 49.763298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144389, -0.275557, 0.950379,
		0.716486, 0.633326, 0.292483,
		-0.682495, 0.723164, 0.105987,
		31.525578, 33.941025, 49.795094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237579, 33.633511, 50.318085>,  <32.003323, 33.434811, 49.720901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237579, 33.633511, 50.318085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868687, 33.783157, 50.279030>,  <31.647352, 33.872944, 50.255596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868687, 33.783157, 50.279030>,  <32.237579, 33.633511, 50.318085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868687, 33.783157, 50.279030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161422, -0.143090, 0.976457,
		0.351340, 0.916275, 0.192352,
		-0.922227, 0.374118, -0.097634,
		31.592018, 33.895393, 50.249741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195175, 34.161865, 50.795284>,  <32.237579, 33.633511, 50.318085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195175, 34.161865, 50.795284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.828749, 34.017246, 50.725876>,  <31.608892, 33.930477, 50.684231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.828749, 34.017246, 50.725876>,  <32.195175, 34.161865, 50.795284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828749, 34.017246, 50.725876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204088, 0.047841, 0.977783,
		-0.345209, 0.931127, -0.117612,
		-0.916067, -0.361543, -0.173517,
		31.553928, 33.908783, 50.673820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893131, 34.474209, 51.392860>,  <32.195175, 34.161865, 50.795284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893131, 34.474209, 51.392860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.631557, 34.213913, 51.238506>,  <31.474613, 34.057735, 51.145893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.631557, 34.213913, 51.238506>,  <31.893131, 34.474209, 51.392860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631557, 34.213913, 51.238506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448577, -0.077219, 0.890402,
		-0.609218, 0.755363, -0.241411,
		-0.653935, -0.650741, -0.385882,
		31.435377, 34.018692, 51.122742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156090, 34.814240, 51.536873>,  <31.893131, 34.474209, 51.392860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156090, 34.814240, 51.536873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.139601, 34.418678, 51.479778>,  <31.129707, 34.181343, 51.445522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.139601, 34.418678, 51.479778>,  <31.156090, 34.814240, 51.536873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139601, 34.418678, 51.479778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394560, -0.115140, 0.911628,
		-0.917945, 0.093899, -0.385435,
		-0.041222, -0.988902, -0.142741,
		31.127234, 34.122009, 51.436954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511559, 34.505322, 51.797039>,  <31.156090, 34.814240, 51.536873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511559, 34.505322, 51.797039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748026, 34.182816, 51.805515>,  <30.889906, 33.989311, 51.810600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748026, 34.182816, 51.805515>,  <30.511559, 34.505322, 51.797039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748026, 34.182816, 51.805515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275853, -0.177432, 0.944681,
		-0.757908, -0.564311, -0.327304,
		0.591168, -0.806269, 0.021190,
		30.925377, 33.940933, 51.811871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094425, 33.997688, 52.178318>,  <30.511559, 34.505322, 51.797039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094425, 33.997688, 52.178318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.476580, 33.880074, 52.167122>,  <30.705872, 33.809505, 52.160404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.476580, 33.880074, 52.167122>,  <30.094425, 33.997688, 52.178318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476580, 33.880074, 52.167122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096590, -0.400578, 0.911157,
		-0.279122, -0.867803, -0.411107,
		0.955385, -0.294033, -0.027989,
		30.763195, 33.791862, 52.158726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.820194, 35.630497, 37.120197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002022, 35.335354, 37.319771>,  <36.111118, 35.158268, 37.439514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002022, 35.335354, 37.319771>,  <35.820194, 35.630497, 37.120197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002022, 35.335354, 37.319771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844269, -0.178416, 0.505350,
		-0.283859, -0.650948, -0.704053,
		0.454571, -0.737858, 0.498930,
		36.138393, 35.113998, 37.469452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371529, 34.975910, 37.112064>,  <35.820194, 35.630497, 37.120197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371529, 34.975910, 37.112064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603043, 35.021564, 37.435043>,  <35.741951, 35.048958, 37.628830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603043, 35.021564, 37.435043>,  <35.371529, 34.975910, 37.112064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603043, 35.021564, 37.435043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814657, 0.036549, 0.578790,
		0.036549, -0.992793, 0.114136,
		-0.578790, -0.114136, -0.807450,
		35.776680, 35.055805, 37.677277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030907, 34.500145, 37.587074>,  <35.371529, 34.975910, 37.112064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030907, 34.500145, 37.587074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235615, 34.761345, 37.810387>,  <35.358440, 34.918064, 37.944374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235615, 34.761345, 37.810387>,  <35.030907, 34.500145, 37.587074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235615, 34.761345, 37.810387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741582, 0.007671, 0.670818,
		0.433765, -0.757315, 0.488182,
		0.511766, 0.653005, 0.558284,
		35.389145, 34.957245, 37.977871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963234, 34.226734, 38.247089>,  <35.030907, 34.500145, 37.587074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963234, 34.226734, 38.247089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060829, 34.612843, 38.284454>,  <35.119385, 34.844505, 38.306873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060829, 34.612843, 38.284454>,  <34.963234, 34.226734, 38.247089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060829, 34.612843, 38.284454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687274, 0.104152, 0.718893,
		0.684196, -0.239599, 0.688816,
		0.243987, 0.965269, 0.093409,
		35.134026, 34.902424, 38.312477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868492, 34.410629, 39.017895>,  <34.963234, 34.226734, 38.247089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868492, 34.410629, 39.017895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876476, 34.775913, 38.855095>,  <34.881268, 34.995083, 38.757416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876476, 34.775913, 38.855095>,  <34.868492, 34.410629, 39.017895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876476, 34.775913, 38.855095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622576, 0.329880, 0.709633,
		0.782305, 0.239221, 0.575128,
		0.019964, 0.913210, -0.407000,
		34.882465, 35.049877, 38.732994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063091, 34.921688, 39.597546>,  <34.868492, 34.410629, 39.017895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063091, 34.921688, 39.597546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872158, 35.105549, 39.297981>,  <34.757599, 35.215866, 39.118240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872158, 35.105549, 39.297981>,  <35.063091, 34.921688, 39.597546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872158, 35.105549, 39.297981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649368, 0.389673, 0.653051,
		0.592009, 0.798043, 0.112481,
		-0.477333, 0.459654, -0.748914,
		34.728958, 35.243446, 39.073307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159885, 35.696644, 39.678490>,  <35.063091, 34.921688, 39.597546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159885, 35.696644, 39.678490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840458, 35.615383, 39.451855>,  <34.648804, 35.566628, 39.315872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840458, 35.615383, 39.451855>,  <35.159885, 35.696644, 39.678490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840458, 35.615383, 39.451855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587656, 0.466772, 0.660896,
		0.130206, 0.860728, -0.492132,
		-0.798565, -0.203152, -0.566589,
		34.600887, 35.554440, 39.281879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770252, 36.322704, 39.759693>,  <35.159885, 35.696644, 39.678490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770252, 36.322704, 39.759693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505432, 36.051426, 39.632111>,  <34.346539, 35.888657, 39.555561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505432, 36.051426, 39.632111>,  <34.770252, 36.322704, 39.759693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505432, 36.051426, 39.632111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663371, 0.332248, 0.670485,
		-0.348749, 0.655483, -0.669862,
		-0.662053, -0.678198, -0.318957,
		34.306816, 35.847965, 39.536423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175251, 36.715126, 39.564171>,  <34.770252, 36.322704, 39.759693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175251, 36.715126, 39.564171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055008, 36.342785, 39.647263>,  <33.982861, 36.119381, 39.697117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055008, 36.342785, 39.647263>,  <34.175251, 36.715126, 39.564171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055008, 36.342785, 39.647263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629113, 0.357225, 0.690367,
		-0.716834, 0.076847, -0.692996,
		-0.300609, -0.930851, 0.207726,
		33.964825, 36.063530, 39.709579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488373, 36.805634, 39.763081>,  <34.175251, 36.715126, 39.564171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488373, 36.805634, 39.763081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549759, 36.433384, 39.895977>,  <33.586590, 36.210033, 39.975716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549759, 36.433384, 39.895977>,  <33.488373, 36.805634, 39.763081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549759, 36.433384, 39.895977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481859, 0.223061, 0.847382,
		-0.862706, -0.290135, -0.414199,
		0.153463, -0.930626, 0.332240,
		33.595798, 36.154198, 39.995647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860344, 36.531181, 39.960728>,  <33.488373, 36.805634, 39.763081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860344, 36.531181, 39.960728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104237, 36.263725, 40.130970>,  <33.250572, 36.103252, 40.233116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104237, 36.263725, 40.130970>,  <32.860344, 36.531181, 39.960728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104237, 36.263725, 40.130970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453314, 0.146295, 0.879264,
		-0.650178, -0.729050, -0.213904,
		0.609734, -0.668644, 0.425606,
		33.287155, 36.063133, 40.258652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472961, 36.001213, 40.323189>,  <32.860344, 36.531181, 39.960728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472961, 36.001213, 40.323189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835766, 36.008747, 40.491463>,  <33.053448, 36.013268, 40.592426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835766, 36.008747, 40.491463>,  <32.472961, 36.001213, 40.323189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835766, 36.008747, 40.491463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417544, -0.089376, 0.904251,
		0.054633, -0.995820, -0.073199,
		0.907013, 0.018838, 0.420681,
		33.107868, 36.014397, 40.617668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362129, 35.247318, 40.269714>,  <32.472961, 36.001213, 40.323189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362129, 35.247318, 40.269714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105431, 34.950535, 40.192085>,  <31.951410, 34.772465, 40.145508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105431, 34.950535, 40.192085>,  <32.362129, 35.247318, 40.269714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105431, 34.950535, 40.192085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244139, 0.042243, -0.968820,
		0.727018, -0.669118, 0.154031,
		-0.641748, -0.741954, -0.194069,
		31.912907, 34.727947, 40.133865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775509, 34.712200, 39.790058>,  <32.362129, 35.247318, 40.269714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775509, 34.712200, 39.790058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390404, 34.617683, 39.737507>,  <32.159340, 34.560974, 39.705975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390404, 34.617683, 39.737507>,  <32.775509, 34.712200, 39.790058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390404, 34.617683, 39.737507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198087, -0.285782, -0.937598,
		0.184004, -0.928705, 0.321946,
		-0.962759, -0.236295, -0.131379,
		32.101578, 34.546795, 39.698093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723713, 34.126957, 39.366444>,  <32.775509, 34.712200, 39.790058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723713, 34.126957, 39.366444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365471, 34.298923, 39.320709>,  <32.150528, 34.402103, 39.293266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365471, 34.298923, 39.320709>,  <32.723713, 34.126957, 39.366444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365471, 34.298923, 39.320709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122728, -0.008267, -0.992406,
		-0.427593, -0.902833, -0.045358,
		-0.895601, 0.429913, -0.114338,
		32.096790, 34.427898, 39.286407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377628, 33.733208, 38.822517>,  <32.723713, 34.126957, 39.366444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377628, 33.733208, 38.822517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179974, 34.080959, 38.823872>,  <32.061378, 34.289608, 38.824684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179974, 34.080959, 38.823872>,  <32.377628, 33.733208, 38.822517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179974, 34.080959, 38.823872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006596, 0.007647, -0.999949,
		-0.869357, -0.494094, -0.009513,
		-0.494141, 0.869375, 0.003388,
		32.031731, 34.341770, 38.824886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847506, 33.562775, 38.458042>,  <32.377628, 33.733208, 38.822517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847506, 33.562775, 38.458042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868046, 33.960922, 38.425518>,  <31.880371, 34.199810, 38.406006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868046, 33.960922, 38.425518>,  <31.847506, 33.562775, 38.458042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868046, 33.960922, 38.425518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179121, -0.070914, -0.981268,
		-0.982486, 0.064954, 0.174649,
		0.051353, 0.995365, -0.081306,
		31.883451, 34.259533, 38.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373241, 33.710865, 37.893421>,  <31.847506, 33.562775, 38.458042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373241, 33.710865, 37.893421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603315, 34.035198, 37.936695>,  <31.741360, 34.229797, 37.962662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603315, 34.035198, 37.936695>,  <31.373241, 33.710865, 37.893421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603315, 34.035198, 37.936695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067215, 0.178653, -0.981614,
		-0.815257, 0.557338, 0.157259,
		0.575186, 0.810837, 0.108186,
		31.775871, 34.278450, 37.969151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929626, 34.365791, 37.622112>,  <31.373241, 33.710865, 37.893421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929626, 34.365791, 37.622112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323673, 34.434368, 37.627037>,  <31.560101, 34.475513, 37.629993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323673, 34.434368, 37.627037>,  <30.929626, 34.365791, 37.622112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323673, 34.434368, 37.627037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032846, 0.258079, -0.965565,
		-0.168720, 0.950790, 0.259870,
		0.985117, 0.171446, 0.012313,
		31.619207, 34.485802, 37.630730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929676, 34.887058, 37.136295>,  <30.929626, 34.365791, 37.622112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929676, 34.887058, 37.136295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315954, 34.798050, 37.189835>,  <31.547722, 34.744644, 37.221958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315954, 34.798050, 37.189835>,  <30.929676, 34.887058, 37.136295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315954, 34.798050, 37.189835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184738, 0.226464, -0.956340,
		0.182491, 0.948261, 0.259803,
		0.965696, -0.222519, 0.133852,
		31.605663, 34.731293, 37.229992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356340, 35.509731, 37.018440>,  <30.929676, 34.887058, 37.136295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356340, 35.509731, 37.018440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579557, 35.183769, 36.955814>,  <31.713488, 34.988190, 36.918240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579557, 35.183769, 36.955814>,  <31.356340, 35.509731, 37.018440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579557, 35.183769, 36.955814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131319, 0.273025, -0.953002,
		0.819354, 0.511258, 0.259373,
		0.558045, -0.814907, -0.156566,
		31.746971, 34.939297, 36.908844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029316, 35.771400, 36.638115>,  <31.356340, 35.509731, 37.018440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029316, 35.771400, 36.638115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949558, 35.383045, 36.585007>,  <31.901705, 35.150032, 36.553143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949558, 35.383045, 36.585007>,  <32.029316, 35.771400, 36.638115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949558, 35.383045, 36.585007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094262, 0.115859, -0.988783,
		0.975376, -0.209669, 0.068417,
		-0.199390, -0.970884, -0.132770,
		31.889742, 35.091782, 36.545177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344769, 35.671211, 36.105064>,  <32.029316, 35.771400, 36.638115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344769, 35.671211, 36.105064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154064, 35.319599, 36.105408>,  <32.039642, 35.108631, 36.105614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154064, 35.319599, 36.105408>,  <32.344769, 35.671211, 36.105064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154064, 35.319599, 36.105408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000041, -0.000953, -1.000000,
		0.879035, -0.476757, 0.000418,
		-0.476757, -0.879035, 0.000857,
		32.011036, 35.055889, 36.105663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622681, 35.298931, 35.707790>,  <32.344769, 35.671211, 36.105064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622681, 35.298931, 35.707790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262196, 35.127174, 35.731236>,  <32.045906, 35.024120, 35.745304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262196, 35.127174, 35.731236>,  <32.622681, 35.298931, 35.707790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262196, 35.127174, 35.731236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018994, -0.095984, -0.995202,
		0.432958, -0.898003, 0.078346,
		-0.901214, -0.429392, 0.058614,
		31.991831, 34.998356, 35.748821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602390, 34.854168, 35.201214>,  <32.622681, 35.298931, 35.707790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602390, 34.854168, 35.201214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208286, 34.896553, 35.254921>,  <31.971823, 34.921986, 35.287144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208286, 34.896553, 35.254921>,  <32.602390, 34.854168, 35.201214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208286, 34.896553, 35.254921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126593, 0.076126, -0.989029,
		-0.115022, -0.991452, -0.061590,
		-0.985264, 0.105963, 0.134267,
		31.912706, 34.928341, 35.295200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249050, 34.323006, 34.779785>,  <32.602390, 34.854168, 35.201214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249050, 34.323006, 34.779785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987974, 34.617012, 34.853271>,  <31.831329, 34.793415, 34.897366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987974, 34.617012, 34.853271>,  <32.249050, 34.323006, 34.779785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987974, 34.617012, 34.853271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182510, 0.082812, -0.979710,
		-0.735313, -0.672978, 0.080096,
		-0.652690, 0.735012, 0.183718,
		31.792168, 34.837517, 34.908386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929863, 34.069263, 34.228077>,  <32.249050, 34.323006, 34.779785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929863, 34.069263, 34.228077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862736, 34.451221, 34.326065>,  <31.822460, 34.680397, 34.384857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862736, 34.451221, 34.326065>,  <31.929863, 34.069263, 34.228077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862736, 34.451221, 34.326065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147253, 0.269988, -0.951537,
		-0.974759, -0.123611, -0.185920,
		-0.167817, 0.954896, 0.244971,
		31.812391, 34.737690, 34.399555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459854, 33.565586, 34.703796>,  <31.929863, 34.069263, 34.228077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459854, 33.565586, 34.703796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532200, 33.812565, 34.397579>,  <32.575607, 33.960751, 34.213848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532200, 33.812565, 34.397579>,  <32.459854, 33.565586, 34.703796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532200, 33.812565, 34.397579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782974, -0.561438, -0.267841,
		-0.595180, -0.550954, -0.584987,
		0.180866, 0.617443, -0.765540,
		32.586460, 33.997799, 34.167915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585274, 33.311913, 35.523422>,  <32.459854, 33.565586, 34.703796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585274, 33.311913, 35.523422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737255, 32.966869, 35.389832>,  <32.828445, 32.759842, 35.309677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737255, 32.966869, 35.389832>,  <32.585274, 33.311913, 35.523422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737255, 32.966869, 35.389832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374932, -0.473683, 0.796900,
		-0.845611, -0.177569, -0.503399,
		0.379957, -0.862608, -0.333976,
		32.851242, 32.708088, 35.289639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138332, 32.785709, 35.763329>,  <32.585274, 33.311913, 35.523422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138332, 32.785709, 35.763329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477539, 32.583714, 35.699013>,  <32.681065, 32.462517, 35.660423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477539, 32.583714, 35.699013>,  <32.138332, 32.785709, 35.763329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477539, 32.583714, 35.699013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043107, -0.368120, 0.928778,
		-0.528216, -0.780687, -0.333941,
		0.848015, -0.504991, -0.160793,
		32.731945, 32.432217, 35.650776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020981, 32.076527, 35.833927>,  <32.138332, 32.785709, 35.763329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020981, 32.076527, 35.833927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414692, 32.123245, 35.886929>,  <32.650917, 32.151276, 35.918728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414692, 32.123245, 35.886929>,  <32.020981, 32.076527, 35.833927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414692, 32.123245, 35.886929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044855, -0.560293, 0.827079,
		0.170839, -0.820018, -0.546245,
		0.984277, 0.116796, 0.132502,
		32.709976, 32.158283, 35.926678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373981, 31.421499, 36.049603>,  <32.020981, 32.076527, 35.833927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373981, 31.421499, 36.049603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603676, 31.712845, 36.199127>,  <32.741493, 31.887651, 36.288841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603676, 31.712845, 36.199127>,  <32.373981, 31.421499, 36.049603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603676, 31.712845, 36.199127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071163, -0.499279, 0.863514,
		0.815588, -0.469263, -0.338538,
		0.574240, 0.728363, 0.373812,
		32.775948, 31.931355, 36.311272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709930, 31.035793, 36.484631>,  <32.373981, 31.421499, 36.049603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709930, 31.035793, 36.484631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751339, 31.417353, 36.597317>,  <32.776184, 31.646288, 36.664928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751339, 31.417353, 36.597317>,  <32.709930, 31.035793, 36.484631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751339, 31.417353, 36.597317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047870, -0.278131, 0.959350,
		0.993474, -0.112800, 0.016870,
		0.103523, 0.953897, 0.281715,
		32.782394, 31.703522, 36.681831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950550, 30.853163, 37.119545>,  <32.709930, 31.035793, 36.484631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950550, 30.853163, 37.119545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888184, 31.247757, 37.139698>,  <32.850765, 31.484514, 37.151791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888184, 31.247757, 37.139698>,  <32.950550, 30.853163, 37.119545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888184, 31.247757, 37.139698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063987, -0.040817, 0.997116,
		0.985696, 0.158687, -0.056759,
		-0.155913, 0.986485, 0.050387,
		32.841412, 31.543703, 37.154816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504429, 31.083511, 37.570843>,  <32.950550, 30.853163, 37.119545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504429, 31.083511, 37.570843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200111, 31.343103, 37.572147>,  <33.017521, 31.498859, 37.572929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200111, 31.343103, 37.572147>,  <33.504429, 31.083511, 37.570843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200111, 31.343103, 37.572147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088635, -0.108887, 0.990095,
		0.642908, 0.752972, 0.140363,
		-0.760797, 0.648981, 0.003265,
		32.971870, 31.537798, 37.573128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646481, 31.591251, 38.068123>,  <33.504429, 31.083511, 37.570843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646481, 31.591251, 38.068123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253487, 31.586329, 37.993752>,  <33.017689, 31.583374, 37.949127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253487, 31.586329, 37.993752>,  <33.646481, 31.591251, 38.068123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253487, 31.586329, 37.993752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185351, -0.038108, 0.981933,
		-0.019171, 0.999198, 0.035159,
		-0.982485, -0.012308, -0.185933,
		32.958740, 31.582636, 37.937973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306808, 32.069687, 38.515480>,  <33.646481, 31.591251, 38.068123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306808, 32.069687, 38.515480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047592, 31.792234, 38.389675>,  <32.892063, 31.625761, 38.314194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047592, 31.792234, 38.389675>,  <33.306808, 32.069687, 38.515480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047592, 31.792234, 38.389675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293372, -0.153739, 0.943556,
		-0.702835, 0.703729, -0.103864,
		-0.648040, -0.693635, -0.314508,
		32.853180, 31.584145, 38.295322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843334, 32.186214, 39.010609>,  <33.306808, 32.069687, 38.515480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843334, 32.186214, 39.010609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717190, 31.855104, 38.824989>,  <32.641502, 31.656439, 38.713615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717190, 31.855104, 38.824989>,  <32.843334, 32.186214, 39.010609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717190, 31.855104, 38.824989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457836, -0.295613, 0.838451,
		-0.831224, 0.476873, -0.285758,
		-0.315361, -0.827771, -0.464050,
		32.622581, 31.606773, 38.685776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126652, 32.026920, 39.261436>,  <32.843334, 32.186214, 39.010609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126652, 32.026920, 39.261436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270424, 31.682600, 39.117310>,  <32.356686, 31.476007, 39.030834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270424, 31.682600, 39.117310>,  <32.126652, 32.026920, 39.261436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270424, 31.682600, 39.117310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157596, -0.436567, 0.885761,
		-0.919770, -0.261582, -0.292573,
		0.359427, -0.860805, -0.360316,
		32.378250, 31.424358, 39.009216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632973, 31.422243, 39.478539>,  <32.126652, 32.026920, 39.261436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632973, 31.422243, 39.478539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985868, 31.242632, 39.421932>,  <32.197605, 31.134865, 39.387970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985868, 31.242632, 39.421932>,  <31.632973, 31.422243, 39.478539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985868, 31.242632, 39.421932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030601, -0.245260, 0.968974,
		-0.469803, -0.859199, -0.202638,
		0.882241, -0.449027, -0.141516,
		32.250542, 31.107924, 39.379478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627983, 30.820848, 39.818611>,  <31.632973, 31.422243, 39.478539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627983, 30.820848, 39.818611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026054, 30.852579, 39.795551>,  <32.264896, 30.871618, 39.781715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026054, 30.852579, 39.795551>,  <31.627983, 30.820848, 39.818611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026054, 30.852579, 39.795551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077885, -0.282246, 0.956175,
		0.059580, -0.956057, -0.287064,
		0.995180, 0.079327, -0.057647,
		32.324608, 30.876377, 39.778255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032101, 30.240320, 40.068569>,  <31.627983, 30.820848, 39.818611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032101, 30.240320, 40.068569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287228, 30.545938, 40.107410>,  <32.440304, 30.729309, 40.130714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287228, 30.545938, 40.107410>,  <32.032101, 30.240320, 40.068569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287228, 30.545938, 40.107410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158102, -0.253279, 0.954386,
		0.753789, -0.593368, -0.282342,
		0.637813, 0.764045, 0.097106,
		32.478573, 30.775152, 40.136543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460697, 29.891825, 40.540390>,  <32.032101, 30.240320, 40.068569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460697, 29.891825, 40.540390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553127, 30.280933, 40.533306>,  <32.608585, 30.514399, 40.529057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553127, 30.280933, 40.533306>,  <32.460697, 29.891825, 40.540390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553127, 30.280933, 40.533306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233490, -0.037776, 0.971625,
		0.944502, -0.228658, -0.235862,
		0.231079, 0.972774, -0.017710,
		32.622452, 30.572765, 40.527992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058319, 29.957783, 40.984608>,  <32.460697, 29.891825, 40.540390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058319, 29.957783, 40.984608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886646, 30.319042, 40.980141>,  <32.783642, 30.535799, 40.977463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886646, 30.319042, 40.980141>,  <33.058319, 29.957783, 40.984608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886646, 30.319042, 40.980141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089087, 0.054626, 0.994525,
		0.898815, 0.425834, -0.103904,
		-0.429179, 0.903151, -0.011163,
		32.757893, 30.589987, 40.976791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502998, 30.394207, 41.428398>,  <33.058319, 29.957783, 40.984608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502998, 30.394207, 41.428398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141224, 30.562160, 41.398243>,  <32.924160, 30.662933, 41.380150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141224, 30.562160, 41.398243>,  <33.502998, 30.394207, 41.428398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141224, 30.562160, 41.398243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035637, 0.101736, 0.994173,
		0.425109, 0.901857, -0.077050,
		-0.904441, 0.419886, -0.075388,
		32.869892, 30.688126, 41.375626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495853, 30.855543, 41.892662>,  <33.502998, 30.394207, 41.428398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495853, 30.855543, 41.892662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099384, 30.865871, 41.840645>,  <32.861504, 30.872068, 41.809433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099384, 30.865871, 41.840645>,  <33.495853, 30.855543, 41.892662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099384, 30.865871, 41.840645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125075, 0.143278, 0.981747,
		0.043980, 0.989346, -0.138784,
		-0.991172, 0.025819, -0.130044,
		32.802032, 30.873617, 41.801632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213863, 31.519901, 42.171272>,  <33.495853, 30.855543, 41.892662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213863, 31.519901, 42.171272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916214, 31.254271, 42.142197>,  <32.737625, 31.094893, 42.124752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916214, 31.254271, 42.142197>,  <33.213863, 31.519901, 42.171272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916214, 31.254271, 42.142197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198889, 0.116352, 0.973091,
		-0.637751, 0.738554, -0.218658,
		-0.744121, -0.664079, -0.072687,
		32.692978, 31.055046, 42.120392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788643, 31.824423, 42.636108>,  <33.213863, 31.519901, 42.171272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788643, 31.824423, 42.636108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672680, 31.446957, 42.572292>,  <32.603104, 31.220476, 42.534004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672680, 31.446957, 42.572292>,  <32.788643, 31.824423, 42.636108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672680, 31.446957, 42.572292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131341, -0.125893, 0.983311,
		-0.948001, 0.306019, -0.087445,
		-0.289903, -0.943665, -0.159539,
		32.585709, 31.163857, 42.524429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124821, 31.767271, 42.956604>,  <32.788643, 31.824423, 42.636108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124821, 31.767271, 42.956604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272652, 31.397633, 42.917713>,  <32.361351, 31.175850, 42.894379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272652, 31.397633, 42.917713>,  <32.124821, 31.767271, 42.956604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272652, 31.397633, 42.917713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250543, -0.199862, 0.947250,
		-0.894784, -0.325726, -0.305392,
		0.369580, -0.924099, -0.097225,
		32.383526, 31.120403, 42.888546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611412, 31.373425, 43.260052>,  <32.124821, 31.767271, 42.956604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611412, 31.373425, 43.260052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931087, 31.134447, 43.233646>,  <32.122894, 30.991060, 43.217804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931087, 31.134447, 43.233646>,  <31.611412, 31.373425, 43.260052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931087, 31.134447, 43.233646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137767, -0.288961, 0.947376,
		-0.585078, -0.748039, -0.313243,
		0.799190, -0.597443, -0.066009,
		32.170845, 30.955214, 43.213844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366360, 30.687853, 43.317505>,  <31.611412, 31.373425, 43.260052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366360, 30.687853, 43.317505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748466, 30.644520, 43.427578>,  <31.977732, 30.618519, 43.493622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748466, 30.644520, 43.427578>,  <31.366360, 30.687853, 43.317505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748466, 30.644520, 43.427578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294581, -0.430822, 0.853003,
		0.026145, -0.895911, -0.443464,
		0.955269, -0.108334, 0.275182,
		32.035046, 30.612020, 43.510132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600622, 30.004166, 43.565620>,  <31.366360, 30.687853, 43.317505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600622, 30.004166, 43.565620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843716, 30.264120, 43.748180>,  <31.989573, 30.420094, 43.857719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843716, 30.264120, 43.748180>,  <31.600622, 30.004166, 43.565620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843716, 30.264120, 43.748180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217164, -0.416807, 0.882673,
		0.763870, -0.635546, -0.112176,
		0.607735, 0.649886, 0.456405,
		32.026035, 30.459085, 43.885101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885319, 29.536736, 44.074306>,  <31.600622, 30.004166, 43.565620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885319, 29.536736, 44.074306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020016, 29.890100, 44.204655>,  <32.100834, 30.102119, 44.282864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020016, 29.890100, 44.204655>,  <31.885319, 29.536736, 44.074306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020016, 29.890100, 44.204655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283296, -0.234989, 0.929798,
		0.897969, -0.405418, 0.171136,
		0.336742, 0.883412, 0.325866,
		32.121037, 30.155125, 44.302414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436436, 29.476221, 44.480423>,  <31.885319, 29.536736, 44.074306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436436, 29.476221, 44.480423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240917, 29.812222, 44.574635>,  <32.123608, 30.013823, 44.631161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240917, 29.812222, 44.574635>,  <32.436436, 29.476221, 44.480423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240917, 29.812222, 44.574635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057220, -0.300265, 0.952138,
		0.870519, 0.451926, 0.194834,
		-0.488798, 0.840002, 0.235527,
		32.094276, 30.064222, 44.645294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173290, 29.595400, 44.451778>,  <32.436436, 29.476221, 44.480423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173290, 29.595400, 44.451778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501400, 29.400589, 44.571751>,  <33.698265, 29.283703, 44.643734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501400, 29.400589, 44.571751>,  <33.173290, 29.595400, 44.451778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501400, 29.400589, 44.571751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281673, -0.112423, -0.952902,
		0.497810, 0.866120, 0.044965,
		0.820272, -0.487029, 0.299928,
		33.747482, 29.254480, 44.661728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494106, 29.763437, 43.923042>,  <33.173290, 29.595400, 44.451778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494106, 29.763437, 43.923042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724407, 29.495043, 44.109924>,  <33.862587, 29.334005, 44.222054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724407, 29.495043, 44.109924>,  <33.494106, 29.763437, 43.923042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724407, 29.495043, 44.109924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432276, -0.235220, -0.870522,
		0.694005, 0.703171, 0.154622,
		0.575756, -0.670986, 0.467208,
		33.897133, 29.293747, 44.250088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252377, 29.964758, 43.970150>,  <33.494106, 29.763437, 43.923042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252377, 29.964758, 43.970150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206081, 29.567482, 43.975506>,  <34.178303, 29.329117, 43.978718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206081, 29.567482, 43.975506>,  <34.252377, 29.964758, 43.970150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206081, 29.567482, 43.975506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544879, -0.074754, -0.835176,
		0.830489, -0.089366, 0.549820,
		-0.115737, -0.993190, 0.013389,
		34.171360, 29.269526, 43.979523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854786, 29.743931, 43.714153>,  <34.252377, 29.964758, 43.970150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854786, 29.743931, 43.714153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610485, 29.433489, 43.651360>,  <34.463905, 29.247223, 43.613686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610485, 29.433489, 43.651360>,  <34.854786, 29.743931, 43.714153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610485, 29.433489, 43.651360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470759, -0.196491, -0.860103,
		0.636685, -0.599210, 0.485365,
		-0.610752, -0.776105, -0.156980,
		34.427261, 29.200657, 43.604267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336456, 29.350780, 43.386230>,  <34.854786, 29.743931, 43.714153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336456, 29.350780, 43.386230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003269, 29.141199, 43.315094>,  <34.803356, 29.015450, 43.272411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003269, 29.141199, 43.315094>,  <35.336456, 29.350780, 43.386230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003269, 29.141199, 43.315094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363093, -0.275074, -0.890223,
		0.417517, -0.806105, 0.419374,
		-0.832972, -0.523955, -0.177843,
		34.753376, 28.984013, 43.261742>
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
