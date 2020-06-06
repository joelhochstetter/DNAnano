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
	<24.354280, 35.131271, 35.365852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266397, 34.964134, 35.013233>,  <24.213667, 34.863850, 34.801662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266397, 34.964134, 35.013233>,  <24.354280, 35.131271, 35.365852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.266397, 34.964134, 35.013233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956392, -0.270528, -0.110132,
		-0.192466, -0.867305, 0.459063,
		-0.219707, -0.417847, -0.881551,
		24.200485, 34.838779, 34.748768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976675, 35.342361, 35.118912>,  <24.354280, 35.131271, 35.365852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976675, 35.342361, 35.118912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350044, 35.283302, 35.249706>,  <25.574066, 35.247868, 35.328182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350044, 35.283302, 35.249706>,  <24.976675, 35.342361, 35.118912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350044, 35.283302, 35.249706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018642, 0.890208, 0.455173,
		-0.358290, -0.430966, 0.828189,
		0.933424, -0.147645, 0.326987,
		25.630072, 35.239010, 35.347801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079262, 35.300087, 35.942020>,  <24.976675, 35.342361, 35.118912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079262, 35.300087, 35.942020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363056, 35.464741, 35.713219>,  <25.533333, 35.563534, 35.575935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363056, 35.464741, 35.713219>,  <25.079262, 35.300087, 35.942020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363056, 35.464741, 35.713219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182591, 0.891333, 0.414953,
		0.680655, -0.189959, 0.707548,
		0.709485, 0.411632, -0.572006,
		25.575901, 35.588230, 35.541618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426304, 35.770298, 36.365948>,  <25.079262, 35.300087, 35.942020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426304, 35.770298, 36.365948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563093, 35.906693, 36.015682>,  <25.645166, 35.988529, 35.805523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563093, 35.906693, 36.015682>,  <25.426304, 35.770298, 36.365948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563093, 35.906693, 36.015682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257124, 0.930234, 0.261824,
		0.903847, 0.135615, 0.405793,
		0.341975, 0.340988, -0.875660,
		25.665686, 36.008987, 35.752983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913902, 36.269337, 36.603138>,  <25.426304, 35.770298, 36.365948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913902, 36.269337, 36.603138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809593, 36.352470, 36.226032>,  <25.747007, 36.402351, 35.999771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809593, 36.352470, 36.226032>,  <25.913902, 36.269337, 36.603138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809593, 36.352470, 36.226032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400977, 0.865014, 0.301609,
		0.878188, 0.456678, -0.142234,
		-0.260773, 0.207837, -0.942763,
		25.731361, 36.414822, 35.943203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117851, 36.955742, 36.542389>,  <25.913902, 36.269337, 36.603138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117851, 36.955742, 36.542389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818281, 36.875778, 36.289677>,  <25.638540, 36.827801, 36.138050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818281, 36.875778, 36.289677>,  <26.117851, 36.955742, 36.542389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818281, 36.875778, 36.289677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448732, 0.854540, 0.261535,
		0.487599, 0.479371, -0.729693,
		-0.748924, -0.199913, -0.631782,
		25.593605, 36.815804, 36.100143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933176, 37.592087, 36.180935>,  <26.117851, 36.955742, 36.542389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933176, 37.592087, 36.180935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604816, 37.372013, 36.119720>,  <25.407801, 37.239967, 36.082993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604816, 37.372013, 36.119720>,  <25.933176, 37.592087, 36.180935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604816, 37.372013, 36.119720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568740, 0.811847, 0.132060,
		0.051582, 0.195445, -0.979357,
		-0.820899, -0.550187, -0.153034,
		25.358547, 37.206959, 36.073811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647800, 37.683304, 35.428425>,  <25.933176, 37.592087, 36.180935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647800, 37.683304, 35.428425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348236, 37.650421, 35.691444>,  <25.168497, 37.630692, 35.849258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348236, 37.650421, 35.691444>,  <25.647800, 37.683304, 35.428425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348236, 37.650421, 35.691444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147131, 0.988137, -0.044032,
		-0.646132, -0.129722, -0.752120,
		-0.748910, -0.082210, 0.657553,
		25.123564, 37.625759, 35.888710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298828, 38.238094, 35.266796>,  <25.647800, 37.683304, 35.428425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298828, 38.238094, 35.266796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177351, 38.121647, 35.629681>,  <25.104465, 38.051781, 35.847412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177351, 38.121647, 35.629681>,  <25.298828, 38.238094, 35.266796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177351, 38.121647, 35.629681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147100, 0.955087, 0.257236,
		-0.941346, -0.055330, -0.332875,
		-0.303692, -0.291114, 0.907207,
		25.086243, 38.034313, 35.901844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.647175, 38.690468, 35.502872>,  <25.298828, 38.238094, 35.266796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.647175, 38.690468, 35.502872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792057, 38.539242, 35.843666>,  <24.878986, 38.448505, 36.048141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792057, 38.539242, 35.843666>,  <24.647175, 38.690468, 35.502872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.792057, 38.539242, 35.843666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046370, 0.920224, 0.388635,
		-0.930943, -0.101260, 0.350843,
		0.362207, -0.378065, 0.851981,
		24.900719, 38.425823, 36.099262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.404760, 39.117275, 35.954010>,  <24.647175, 38.690468, 35.502872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.404760, 39.117275, 35.954010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.700384, 38.923828, 36.141590>,  <24.877758, 38.807762, 36.254139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.700384, 38.923828, 36.141590>,  <24.404760, 39.117275, 35.954010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.700384, 38.923828, 36.141590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343206, 0.869330, 0.355633,
		-0.579659, -0.101888, 0.808464,
		0.739057, -0.483616, 0.468946,
		24.922102, 38.778744, 36.282272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.380964, 39.477436, 36.551167>,  <24.404760, 39.117275, 35.954010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.380964, 39.477436, 36.551167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739712, 39.302242, 36.526512>,  <24.954960, 39.197128, 36.511719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739712, 39.302242, 36.526512>,  <24.380964, 39.477436, 36.551167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739712, 39.302242, 36.526512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434813, 0.847563, 0.304260,
		-0.081021, -0.299682, 0.950592,
		0.896868, -0.437982, -0.061635,
		25.008772, 39.170849, 36.508022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767523, 40.000755, 36.762291>,  <24.380964, 39.477436, 36.551167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767523, 40.000755, 36.762291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162422, 40.062717, 36.776974>,  <25.399363, 40.099895, 36.785786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162422, 40.062717, 36.776974>,  <24.767523, 40.000755, 36.762291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.162422, 40.062717, 36.776974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159036, -0.969906, -0.184362,
		0.007046, 0.187849, -0.982173,
		0.987248, 0.154902, 0.036709,
		25.458597, 40.109188, 36.787987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167530, 39.648064, 36.197662>,  <24.767523, 40.000755, 36.762291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167530, 39.648064, 36.197662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396797, 39.681568, 36.523720>,  <25.534357, 39.701672, 36.719357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396797, 39.681568, 36.523720>,  <25.167530, 39.648064, 36.197662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396797, 39.681568, 36.523720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323294, -0.937184, -0.131026,
		0.752969, 0.338632, -0.564240,
		0.573166, 0.083757, 0.815148,
		25.568747, 39.706696, 36.768265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940523, 39.354897, 36.081253>,  <25.167530, 39.648064, 36.197662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940523, 39.354897, 36.081253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709946, 39.348907, 36.408054>,  <25.571600, 39.345314, 36.604134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709946, 39.348907, 36.408054>,  <25.940523, 39.354897, 36.081253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709946, 39.348907, 36.408054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107105, -0.989822, -0.093704,
		0.810088, -0.141520, 0.568972,
		-0.576442, -0.014968, 0.817001,
		25.537012, 39.344418, 36.653156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193159, 38.794006, 36.691402>,  <25.940523, 39.354897, 36.081253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193159, 38.794006, 36.691402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801533, 38.874996, 36.683033>,  <25.566557, 38.923592, 36.678013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801533, 38.874996, 36.683033>,  <26.193159, 38.794006, 36.691402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801533, 38.874996, 36.683033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192299, -0.953737, -0.231099,
		-0.066748, -0.222237, 0.972705,
		-0.979064, 0.202475, -0.020924,
		25.507814, 38.935738, 36.676754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863985, 38.206509, 36.989376>,  <26.193159, 38.794006, 36.691402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863985, 38.206509, 36.989376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577753, 38.376564, 36.767673>,  <25.406013, 38.478596, 36.634651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577753, 38.376564, 36.767673>,  <25.863985, 38.206509, 36.989376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577753, 38.376564, 36.767673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347746, -0.904964, -0.245179,
		-0.605818, 0.017295, 0.795416,
		-0.715582, 0.425137, -0.554258,
		25.363079, 38.504105, 36.601395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243811, 37.873470, 37.227291>,  <25.863985, 38.206509, 36.989376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243811, 37.873470, 37.227291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177732, 38.056664, 36.877899>,  <25.138086, 38.166580, 36.668266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177732, 38.056664, 36.877899>,  <25.243811, 37.873470, 37.227291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177732, 38.056664, 36.877899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421523, -0.833466, -0.357286,
		-0.891644, 0.309170, 0.330734,
		-0.165193, 0.457984, -0.873477,
		25.128174, 38.194057, 36.615856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.503492, 37.781548, 37.114189>,  <25.243811, 37.873470, 37.227291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.503492, 37.781548, 37.114189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.680325, 37.848541, 36.761707>,  <24.786425, 37.888737, 36.550220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.680325, 37.848541, 36.761707>,  <24.503492, 37.781548, 37.114189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.680325, 37.848541, 36.761707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373494, -0.858823, -0.350608,
		-0.815516, 0.484120, -0.317114,
		0.442081, 0.167486, -0.881200,
		24.812948, 37.898788, 36.497349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.037201, 37.493671, 36.608501>,  <24.503492, 37.781548, 37.114189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.037201, 37.493671, 36.608501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381971, 37.541035, 36.411297>,  <24.588833, 37.569454, 36.292973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381971, 37.541035, 36.411297>,  <24.037201, 37.493671, 36.608501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381971, 37.541035, 36.411297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137286, -0.881525, -0.451737,
		-0.488093, 0.457048, -0.743554,
		0.861927, 0.118410, -0.493013,
		24.640549, 37.576557, 36.263393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028296, 37.117966, 36.069611>,  <24.037201, 37.493671, 36.608501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028296, 37.117966, 36.069611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421732, 37.189747, 36.062202>,  <24.657793, 37.232815, 36.057758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421732, 37.189747, 36.062202>,  <24.028296, 37.117966, 36.069611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.421732, 37.189747, 36.062202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152321, -0.881080, -0.447768,
		-0.096674, 0.437599, -0.893958,
		0.983592, 0.179456, -0.018522,
		24.716810, 37.243584, 36.056644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259272, 36.544041, 35.779449>,  <24.028296, 37.117966, 36.069611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259272, 36.544041, 35.779449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594814, 36.753281, 35.839699>,  <24.796139, 36.878826, 35.875851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594814, 36.753281, 35.839699>,  <24.259272, 36.544041, 35.779449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594814, 36.753281, 35.839699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517630, -0.680892, -0.518117,
		-0.168465, 0.512595, -0.841941,
		0.838856, 0.523099, 0.150628,
		24.846472, 36.910210, 35.884888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588821, 36.536121, 35.191288>,  <24.259272, 36.544041, 35.779449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588821, 36.536121, 35.191288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889761, 36.612473, 35.443489>,  <25.070324, 36.658283, 35.594810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889761, 36.612473, 35.443489>,  <24.588821, 36.536121, 35.191288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889761, 36.612473, 35.443489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532160, -0.740247, -0.410902,
		0.388300, 0.644672, -0.658499,
		0.752349, 0.190874, 0.630506,
		25.115465, 36.669735, 35.632641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968086, 37.148125, 35.266510>,  <24.588821, 36.536121, 35.191288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968086, 37.148125, 35.266510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289642, 37.045326, 35.481064>,  <25.482576, 36.983646, 35.609798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289642, 37.045326, 35.481064>,  <24.968086, 37.148125, 35.266510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289642, 37.045326, 35.481064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186088, -0.747876, -0.637222,
		0.564917, 0.612072, -0.553386,
		0.803890, -0.256999, 0.536388,
		25.530809, 36.968227, 35.641979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476944, 36.835281, 34.745621>,  <24.968086, 37.148125, 35.266510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476944, 36.835281, 34.745621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555454, 36.691841, 35.110672>,  <25.602560, 36.605778, 35.329700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555454, 36.691841, 35.110672>,  <25.476944, 36.835281, 34.745621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555454, 36.691841, 35.110672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277880, -0.872230, -0.402490,
		0.940351, 0.332598, -0.071548,
		0.196274, -0.358600, 0.912624,
		25.614336, 36.584263, 35.384460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174444, 36.561401, 34.692829>,  <25.476944, 36.835281, 34.745621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174444, 36.561401, 34.692829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980650, 36.388084, 34.996811>,  <25.864374, 36.284096, 35.179199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980650, 36.388084, 34.996811>,  <26.174444, 36.561401, 34.692829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980650, 36.388084, 34.996811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332961, -0.894669, -0.297832,
		0.808956, 0.108740, 0.577725,
		-0.484486, -0.433293, 0.759954,
		25.835304, 36.258095, 35.224796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610626, 36.161625, 35.088497>,  <26.174444, 36.561401, 34.692829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610626, 36.161625, 35.088497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251905, 36.006165, 35.173065>,  <26.036673, 35.912888, 35.223804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251905, 36.006165, 35.173065>,  <26.610626, 36.161625, 35.088497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251905, 36.006165, 35.173065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381471, -0.921295, -0.075468,
		0.224111, 0.012970, 0.974477,
		-0.896802, -0.388648, 0.211420,
		25.982864, 35.889568, 35.236492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346867, 35.613571, 35.509762>,  <26.610626, 36.161625, 35.088497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346867, 35.613571, 35.509762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260290, 35.408077, 35.177681>,  <26.208345, 35.284779, 34.978432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260290, 35.408077, 35.177681>,  <26.346867, 35.613571, 35.509762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260290, 35.408077, 35.177681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662299, -0.547504, 0.511468,
		-0.717297, 0.660541, -0.221746,
		-0.216439, -0.513737, -0.830198,
		26.195358, 35.253956, 34.928623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858252, 35.329361, 35.741722>,  <26.346867, 35.613571, 35.509762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858252, 35.329361, 35.741722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531214, 35.168221, 35.577164>,  <26.334991, 35.071537, 35.478428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531214, 35.168221, 35.577164>,  <26.858252, 35.329361, 35.741722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531214, 35.168221, 35.577164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465113, -0.040892, -0.884307,
		0.339422, -0.914351, 0.220805,
		-0.817596, -0.402852, -0.411397,
		26.285934, 35.047363, 35.453743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046490, 34.688496, 35.607182>,  <26.858252, 35.329361, 35.741722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046490, 34.688496, 35.607182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749544, 34.773117, 35.352894>,  <26.571377, 34.823891, 35.200321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749544, 34.773117, 35.352894>,  <27.046490, 34.688496, 35.607182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749544, 34.773117, 35.352894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605638, -0.193879, -0.771760,
		-0.286524, -0.957943, 0.015802,
		-0.742366, 0.211558, -0.635717,
		26.526834, 34.836582, 35.162178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544247, 34.474560, 36.285130>,  <27.046490, 34.688496, 35.607182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544247, 34.474560, 36.285130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808558, 34.277573, 36.511703>,  <27.967144, 34.159378, 36.647648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808558, 34.277573, 36.511703>,  <27.544247, 34.474560, 36.285130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808558, 34.277573, 36.511703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744714, -0.335992, 0.576637,
		-0.093660, -0.802859, -0.588765,
		0.660779, -0.492469, 0.566432,
		28.006792, 34.129833, 36.681633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434076, 33.720032, 36.338417>,  <27.544247, 34.474560, 36.285130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434076, 33.720032, 36.338417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599192, 33.902779, 36.653603>,  <27.698261, 34.012428, 36.842712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599192, 33.902779, 36.653603>,  <27.434076, 33.720032, 36.338417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599192, 33.902779, 36.653603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666407, -0.438234, 0.603202,
		0.620893, -0.774096, 0.123562,
		0.412787, 0.456866, 0.787960,
		27.723028, 34.039837, 36.889992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468077, 33.272511, 36.788521>,  <27.434076, 33.720032, 36.338417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468077, 33.272511, 36.788521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504686, 33.595348, 37.021835>,  <27.526651, 33.789051, 37.161823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504686, 33.595348, 37.021835>,  <27.468077, 33.272511, 36.788521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504686, 33.595348, 37.021835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682721, -0.375552, 0.626779,
		0.724924, -0.455587, 0.516648,
		0.091524, 0.807094, 0.583286,
		27.532145, 33.837475, 37.196819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667337, 33.051052, 37.468784>,  <27.468077, 33.272511, 36.788521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667337, 33.051052, 37.468784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455275, 33.390209, 37.469498>,  <27.328037, 33.593704, 37.469925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455275, 33.390209, 37.469498>,  <27.667337, 33.051052, 37.468784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455275, 33.390209, 37.469498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658013, -0.412758, 0.629802,
		0.534743, 0.332720, 0.776754,
		-0.530159, 0.847896, 0.001786,
		27.296227, 33.644577, 37.470032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646139, 33.405537, 38.134109>,  <27.667337, 33.051052, 37.468784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646139, 33.405537, 38.134109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313961, 33.462391, 37.918644>,  <27.114655, 33.496506, 37.789364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313961, 33.462391, 37.918644>,  <27.646139, 33.405537, 38.134109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313961, 33.462391, 37.918644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529689, -0.501024, 0.684401,
		-0.172605, 0.853682, 0.491361,
		-0.830444, 0.142137, -0.538665,
		27.064827, 33.505032, 37.757046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904905, 33.509178, 38.770847>,  <27.646139, 33.405537, 38.134109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904905, 33.509178, 38.770847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521870, 33.589752, 38.688438>,  <27.292048, 33.638096, 38.638992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521870, 33.589752, 38.688438>,  <27.904905, 33.509178, 38.770847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521870, 33.589752, 38.688438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285766, -0.755458, 0.589594,
		-0.036881, 0.623464, 0.780982,
		-0.957590, 0.201433, -0.206026,
		27.234592, 33.650181, 38.626629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561518, 33.549782, 39.455975>,  <27.904905, 33.509178, 38.770847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561518, 33.549782, 39.455975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312309, 33.444138, 39.161469>,  <27.162785, 33.380749, 38.984764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312309, 33.444138, 39.161469>,  <27.561518, 33.549782, 39.455975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312309, 33.444138, 39.161469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262115, -0.816356, 0.514644,
		-0.736981, 0.513620, 0.439378,
		-0.623020, -0.264115, -0.736267,
		27.125402, 33.364902, 38.940590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886168, 33.570457, 39.812107>,  <27.561518, 33.549782, 39.455975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886168, 33.570457, 39.812107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910469, 33.327610, 39.495193>,  <26.925051, 33.181904, 39.305046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910469, 33.327610, 39.495193>,  <26.886168, 33.570457, 39.812107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910469, 33.327610, 39.495193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159788, -0.789432, 0.592676,
		-0.985280, 0.090590, -0.144971,
		0.060754, -0.607116, -0.792287,
		26.928696, 33.145473, 39.257507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222157, 33.142250, 39.661793>,  <26.886168, 33.570457, 39.812107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222157, 33.142250, 39.661793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580051, 32.987194, 39.573086>,  <26.794788, 32.894161, 39.519863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580051, 32.987194, 39.573086>,  <26.222157, 33.142250, 39.661793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580051, 32.987194, 39.573086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173070, -0.758733, 0.627990,
		-0.411695, -0.523505, -0.745956,
		0.894737, -0.387643, -0.221764,
		26.848473, 32.870903, 39.506557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119179, 32.401073, 39.631767>,  <26.222157, 33.142250, 39.661793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119179, 32.401073, 39.631767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503206, 32.456696, 39.728870>,  <26.733624, 32.490070, 39.787132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503206, 32.456696, 39.728870>,  <26.119179, 32.401073, 39.631767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503206, 32.456696, 39.728870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013881, -0.842967, 0.537786,
		0.279417, -0.519681, -0.807377,
		0.960069, 0.139059, 0.242753,
		26.791227, 32.498413, 39.801697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722576, 31.820391, 39.552567>,  <26.119179, 32.401073, 39.631767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722576, 31.820391, 39.552567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726814, 32.060410, 39.872524>,  <26.729357, 32.204422, 40.064499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726814, 32.060410, 39.872524>,  <26.722576, 31.820391, 39.552567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726814, 32.060410, 39.872524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036526, -0.799172, 0.599992,
		0.999277, -0.035574, 0.013451,
		0.010595, 0.600049, 0.799893,
		26.729992, 32.240425, 40.112492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354256, 31.662069, 39.231819>,  <26.722576, 31.820391, 39.552567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354256, 31.662069, 39.231819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115545, 31.344265, 39.276733>,  <26.972319, 31.153582, 39.303684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115545, 31.344265, 39.276733>,  <27.354256, 31.662069, 39.231819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115545, 31.344265, 39.276733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238231, -0.309067, -0.920719,
		0.766227, -0.522714, 0.373721,
		-0.596777, -0.794511, 0.112289,
		26.936512, 31.105911, 39.310421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523388, 32.192390, 38.584122>,  <27.354256, 31.662069, 39.231819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523388, 32.192390, 38.584122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247429, 32.369709, 38.813042>,  <27.081854, 32.476101, 38.950394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247429, 32.369709, 38.813042>,  <27.523388, 32.192390, 38.584122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247429, 32.369709, 38.813042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086865, 0.734164, -0.673392,
		-0.718679, -0.514283, -0.467989,
		-0.689895, 0.443301, 0.572301,
		27.040461, 32.502701, 38.984734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888493, 32.362537, 38.179882>,  <27.523388, 32.192390, 38.584122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888493, 32.362537, 38.179882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897738, 32.615036, 38.489979>,  <26.903284, 32.766537, 38.676037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897738, 32.615036, 38.489979>,  <26.888493, 32.362537, 38.179882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897738, 32.615036, 38.489979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012914, 0.775570, -0.631130,
		-0.999650, 0.004575, 0.026077,
		0.023112, 0.631245, 0.775239,
		26.904671, 32.804409, 38.722549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434782, 32.882931, 37.944050>,  <26.888493, 32.362537, 38.179882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434782, 32.882931, 37.944050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637756, 33.043797, 38.248882>,  <26.759541, 33.140316, 38.431782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637756, 33.043797, 38.248882>,  <26.434782, 32.882931, 37.944050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637756, 33.043797, 38.248882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044663, 0.870943, -0.489351,
		-0.860532, 0.282350, 0.423985,
		0.507435, 0.402166, 0.762084,
		26.789988, 33.164448, 38.477509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175934, 33.496281, 38.196232>,  <26.434782, 32.882931, 37.944050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175934, 33.496281, 38.196232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570908, 33.475800, 38.256031>,  <26.807892, 33.463509, 38.291912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570908, 33.475800, 38.256031>,  <26.175934, 33.496281, 38.196232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570908, 33.475800, 38.256031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141504, 0.707646, -0.692253,
		-0.070345, 0.704709, 0.706000,
		0.987435, -0.051205, 0.149498,
		26.867138, 33.460438, 38.300880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424957, 33.961586, 37.640335>,  <26.175934, 33.496281, 38.196232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424957, 33.961586, 37.640335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748240, 33.853386, 37.849575>,  <26.942209, 33.788467, 37.975121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748240, 33.853386, 37.849575>,  <26.424957, 33.961586, 37.640335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748240, 33.853386, 37.849575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581375, 0.508056, -0.635517,
		-0.093858, 0.817746, 0.567875,
		0.808204, -0.270500, 0.523102,
		26.990702, 33.772236, 38.006504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758932, 34.576576, 37.804848>,  <26.424957, 33.961586, 37.640335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758932, 34.576576, 37.804848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004868, 34.263248, 37.768215>,  <27.152430, 34.075253, 37.746235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004868, 34.263248, 37.768215>,  <26.758932, 34.576576, 37.804848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004868, 34.263248, 37.768215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538619, 0.501898, -0.676748,
		0.576074, 0.366763, 0.730496,
		0.614840, -0.783316, -0.091584,
		27.189320, 34.028255, 37.740742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467392, 34.922138, 37.915676>,  <26.758932, 34.576576, 37.804848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467392, 34.922138, 37.915676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468641, 34.586803, 37.697620>,  <27.469391, 34.385601, 37.566788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468641, 34.586803, 37.697620>,  <27.467392, 34.922138, 37.915676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468641, 34.586803, 37.697620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599639, 0.437833, -0.669877,
		0.800265, -0.324796, 0.504068,
		0.003124, -0.838338, -0.545142,
		27.469578, 34.335300, 37.534077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088629, 34.841217, 37.795715>,  <27.467392, 34.922138, 37.915676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088629, 34.841217, 37.795715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909277, 34.633186, 37.504932>,  <27.801666, 34.508366, 37.330460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909277, 34.633186, 37.504932>,  <28.088629, 34.841217, 37.795715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909277, 34.633186, 37.504932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531354, 0.498907, -0.684656,
		0.718763, -0.693259, 0.052649,
		-0.448377, -0.520081, -0.726962,
		27.774763, 34.477161, 37.286842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649817, 34.494793, 37.357071>,  <28.088629, 34.841217, 37.795715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649817, 34.494793, 37.357071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323101, 34.488331, 37.126389>,  <28.127071, 34.484455, 36.987980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323101, 34.488331, 37.126389>,  <28.649817, 34.494793, 37.357071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323101, 34.488331, 37.126389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565976, 0.171474, -0.806392,
		0.111916, -0.985056, -0.130916,
		-0.816790, -0.016153, -0.576709,
		28.078064, 34.483486, 36.953377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727142, 34.120522, 36.656914>,  <28.649817, 34.494793, 37.357071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727142, 34.120522, 36.656914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438641, 34.394806, 36.617737>,  <28.265539, 34.559376, 36.594231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438641, 34.394806, 36.617737>,  <28.727142, 34.120522, 36.656914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438641, 34.394806, 36.617737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484173, 0.397970, -0.779228,
		-0.495346, -0.609444, -0.619040,
		-0.721255, 0.685710, -0.097943,
		28.222263, 34.600517, 36.588352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315802, 34.157005, 35.977001>,  <28.727142, 34.120522, 36.656914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315802, 34.157005, 35.977001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388725, 34.503452, 36.163162>,  <28.432480, 34.711319, 36.274860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388725, 34.503452, 36.163162>,  <28.315802, 34.157005, 35.977001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388725, 34.503452, 36.163162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546549, 0.304205, -0.780221,
		-0.817342, 0.396608, -0.417917,
		0.182309, 0.866119, 0.465405,
		28.443419, 34.763287, 36.302784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088165, 34.799873, 35.540543>,  <28.315802, 34.157005, 35.977001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088165, 34.799873, 35.540543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393475, 34.883873, 35.784939>,  <28.576660, 34.934273, 35.931576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393475, 34.883873, 35.784939>,  <28.088165, 34.799873, 35.540543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393475, 34.883873, 35.784939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555271, 0.270232, -0.786542,
		-0.330284, 0.939614, 0.089653,
		0.763273, 0.210001, 0.610994,
		28.622458, 34.946873, 35.968239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434088, 35.332615, 35.093124>,  <28.088165, 34.799873, 35.540543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434088, 35.332615, 35.093124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683411, 35.203796, 35.378159>,  <28.833004, 35.126503, 35.549179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683411, 35.203796, 35.378159>,  <28.434088, 35.332615, 35.093124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683411, 35.203796, 35.378159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777070, 0.357011, -0.518369,
		-0.087459, 0.876829, 0.472782,
		0.623308, -0.322048, 0.712581,
		28.870403, 35.107182, 35.591934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680321, 35.989239, 34.587784>,  <28.434088, 35.332615, 35.093124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680321, 35.989239, 34.587784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312855, 35.860806, 34.679836>,  <28.092375, 35.783745, 34.735065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312855, 35.860806, 34.679836>,  <28.680321, 35.989239, 34.587784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312855, 35.860806, 34.679836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092303, -0.391954, -0.915343,
		0.384105, -0.862134, 0.330436,
		-0.918664, -0.321088, 0.230129,
		28.037256, 35.764481, 34.748875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556377, 36.727764, 34.412960>,  <28.680321, 35.989239, 34.587784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556377, 36.727764, 34.412960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641907, 37.105877, 34.314388>,  <28.693224, 37.332745, 34.255245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641907, 37.105877, 34.314388>,  <28.556377, 36.727764, 34.412960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641907, 37.105877, 34.314388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841433, -0.306374, -0.445113,
		-0.496257, -0.112182, -0.860898,
		0.213823, 0.945278, -0.246433,
		28.706053, 37.389462, 34.240459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795290, 37.480461, 34.749176>,  <28.556377, 36.727764, 34.412960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795290, 37.480461, 34.749176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026514, 37.154068, 34.747238>,  <29.165249, 36.958233, 34.746075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026514, 37.154068, 34.747238>,  <28.795290, 37.480461, 34.749176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026514, 37.154068, 34.747238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253993, 0.174286, 0.951374,
		-0.775458, -0.551181, 0.308001,
		0.578059, -0.815980, -0.004845,
		29.199932, 36.909275, 34.745785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598537, 37.066906, 35.301971>,  <28.795290, 37.480461, 34.749176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598537, 37.066906, 35.301971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978365, 36.979565, 35.211952>,  <29.206261, 36.927162, 35.157940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978365, 36.979565, 35.211952>,  <28.598537, 37.066906, 35.301971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978365, 36.979565, 35.211952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221074, -0.042796, 0.974318,
		-0.222373, -0.974932, 0.007633,
		0.949566, -0.218350, -0.225049,
		29.263235, 36.914059, 35.144436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713551, 36.469109, 35.708241>,  <28.598537, 37.066906, 35.301971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713551, 36.469109, 35.708241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032885, 36.684315, 35.600018>,  <29.224485, 36.813438, 35.535084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032885, 36.684315, 35.600018>,  <28.713551, 36.469109, 35.708241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032885, 36.684315, 35.600018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309080, 0.019521, 0.950836,
		0.516846, -0.842708, -0.150706,
		0.798335, 0.538016, -0.270554,
		29.272385, 36.845718, 35.518852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466309, 36.131683, 35.773777>,  <28.713551, 36.469109, 35.708241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466309, 36.131683, 35.773777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454817, 36.527687, 35.828987>,  <29.447922, 36.765289, 35.862114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454817, 36.527687, 35.828987>,  <29.466309, 36.131683, 35.773777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454817, 36.527687, 35.828987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355392, -0.118948, 0.927118,
		0.934276, 0.075688, -0.348425,
		-0.028727, 0.990011, 0.138030,
		29.446199, 36.824692, 35.870396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070026, 36.377518, 35.908516>,  <29.466309, 36.131683, 35.773777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070026, 36.377518, 35.908516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851587, 36.676811, 36.059208>,  <29.720524, 36.856388, 36.149624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851587, 36.676811, 36.059208>,  <30.070026, 36.377518, 35.908516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851587, 36.676811, 36.059208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615894, 0.053770, 0.785992,
		0.567850, 0.661252, -0.490197,
		-0.546097, 0.748235, 0.376727,
		29.687757, 36.901283, 36.172226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781656, 36.683620, 35.798084>,  <30.070026, 36.377518, 35.908516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781656, 36.683620, 35.798084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020594, 36.403019, 35.953560>,  <31.163956, 36.234657, 36.046844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020594, 36.403019, 35.953560>,  <30.781656, 36.683620, 35.798084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020594, 36.403019, 35.953560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119246, -0.401578, -0.908028,
		0.793071, 0.588754, -0.156229,
		0.597343, -0.701501, 0.388686,
		31.199797, 36.192570, 36.070168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475027, 36.778267, 35.577793>,  <30.781656, 36.683620, 35.798084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475027, 36.778267, 35.577793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342203, 36.409367, 35.656975>,  <31.262508, 36.188026, 35.704483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342203, 36.409367, 35.656975>,  <31.475027, 36.778267, 35.577793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342203, 36.409367, 35.656975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142643, -0.256546, -0.955948,
		0.932410, -0.289195, 0.216741,
		-0.332060, -0.922252, 0.197955,
		31.242584, 36.132690, 35.716362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953634, 36.599243, 35.100636>,  <31.475027, 36.778267, 35.577793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953634, 36.599243, 35.100636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769596, 36.279655, 35.255531>,  <31.659174, 36.087902, 35.348469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769596, 36.279655, 35.255531>,  <31.953634, 36.599243, 35.100636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769596, 36.279655, 35.255531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372008, -0.569490, -0.733002,
		0.806178, -0.193193, 0.559243,
		-0.460094, -0.798973, 0.387241,
		31.631567, 36.039963, 35.371704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449696, 35.977123, 35.181557>,  <31.953634, 36.599243, 35.100636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449696, 35.977123, 35.181557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060116, 35.908287, 35.122486>,  <31.826368, 35.866985, 35.087044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060116, 35.908287, 35.122486>,  <32.449696, 35.977123, 35.181557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060116, 35.908287, 35.122486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222896, -0.606643, -0.763087,
		0.041735, -0.776124, 0.629198,
		-0.973948, -0.172093, -0.147676,
		31.767931, 35.856659, 35.078182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285988, 35.284485, 35.247154>,  <32.449696, 35.977123, 35.181557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285988, 35.284485, 35.247154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031792, 35.455589, 34.990040>,  <31.879274, 35.558250, 34.835770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031792, 35.455589, 34.990040>,  <32.285988, 35.284485, 35.247154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031792, 35.455589, 34.990040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274099, -0.653299, -0.705741,
		-0.721821, -0.624677, 0.297915,
		-0.635487, 0.427760, -0.642788,
		31.841145, 35.583916, 34.797203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907993, 34.686184, 34.863834>,  <32.285988, 35.284485, 35.247154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907993, 34.686184, 34.863834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960794, 35.033894, 34.673279>,  <31.992476, 35.242519, 34.558945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960794, 35.033894, 34.673279>,  <31.907993, 34.686184, 34.863834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960794, 35.033894, 34.673279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242103, -0.494311, -0.834891,
		-0.961229, -0.005126, -0.275704,
		0.132003, 0.869270, -0.476387,
		32.000397, 35.294674, 34.530361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507275, 34.774063, 34.290062>,  <31.907993, 34.686184, 34.863834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507275, 34.774063, 34.290062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820183, 35.017288, 34.235939>,  <32.007927, 35.163223, 34.203465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820183, 35.017288, 34.235939>,  <31.507275, 34.774063, 34.290062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820183, 35.017288, 34.235939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037678, -0.262991, -0.964062,
		-0.621799, 0.749059, -0.228641,
		0.782270, 0.608067, -0.135305,
		32.054863, 35.199707, 34.195347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501131, 34.858307, 33.568039>,  <31.507275, 34.774063, 34.290062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501131, 34.858307, 33.568039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853800, 35.017944, 33.668739>,  <32.065399, 35.113728, 33.729160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853800, 35.017944, 33.668739>,  <31.501131, 34.858307, 33.568039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853800, 35.017944, 33.668739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323502, -0.122846, -0.938219,
		-0.343516, 0.908642, -0.237419,
		0.881671, 0.399098, 0.251748,
		32.118301, 35.137672, 33.744263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680719, 35.307125, 32.965862>,  <31.501131, 34.858307, 33.568039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680719, 35.307125, 32.965862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016514, 35.184807, 33.145527>,  <32.217991, 35.111416, 33.253326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016514, 35.184807, 33.145527>,  <31.680719, 35.307125, 32.965862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016514, 35.184807, 33.145527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457051, -0.049678, -0.888052,
		0.293879, 0.950799, 0.098062,
		0.839488, -0.305799, 0.449163,
		32.268360, 35.093067, 33.280277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167610, 35.622738, 32.644192>,  <31.680719, 35.307125, 32.965862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167610, 35.622738, 32.644192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394382, 35.342396, 32.817345>,  <32.530445, 35.174191, 32.921238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394382, 35.342396, 32.817345>,  <32.167610, 35.622738, 32.644192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394382, 35.342396, 32.817345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490450, -0.135035, -0.860944,
		0.661853, 0.700403, 0.267181,
		0.566929, -0.700857, 0.432886,
		32.564461, 35.132137, 32.947212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898685, 35.751434, 32.572384>,  <32.167610, 35.622738, 32.644192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898685, 35.751434, 32.572384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884560, 35.355633, 32.628441>,  <32.876083, 35.118153, 32.662075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884560, 35.355633, 32.628441>,  <32.898685, 35.751434, 32.572384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884560, 35.355633, 32.628441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395980, -0.142611, -0.907117,
		0.917580, 0.023457, 0.396859,
		-0.035318, -0.989501, 0.140146,
		32.873962, 35.058781, 32.670486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557297, 35.473091, 32.321579>,  <32.898685, 35.751434, 32.572384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557297, 35.473091, 32.321579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321705, 35.150990, 32.348896>,  <33.180347, 34.957729, 32.365284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321705, 35.150990, 32.348896>,  <33.557297, 35.473091, 32.321579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321705, 35.150990, 32.348896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381973, -0.351857, -0.854572,
		0.712177, -0.477243, 0.514823,
		-0.588983, -0.805255, 0.068291,
		33.145008, 34.909412, 32.369385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986378, 34.943581, 32.133629>,  <33.557297, 35.473091, 32.321579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986378, 34.943581, 32.133629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643291, 34.743107, 32.087772>,  <33.437439, 34.622822, 32.060261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643291, 34.743107, 32.087772>,  <33.986378, 34.943581, 32.133629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643291, 34.743107, 32.087772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366884, -0.440462, -0.819383,
		0.360166, -0.744856, 0.561667,
		-0.857716, -0.501181, -0.114636,
		33.385975, 34.592754, 32.053383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048332, 34.123707, 32.115891>,  <33.986378, 34.943581, 32.133629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048332, 34.123707, 32.115891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728687, 34.253292, 31.913321>,  <33.536900, 34.331043, 31.791779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728687, 34.253292, 31.913321>,  <34.048332, 34.123707, 32.115891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728687, 34.253292, 31.913321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452189, -0.231214, -0.861432,
		-0.396167, -0.917381, 0.038272,
		-0.799110, 0.323965, -0.506428,
		33.488953, 34.350483, 31.761393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076252, 33.699081, 31.486576>,  <34.048332, 34.123707, 32.115891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076252, 33.699081, 31.486576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841965, 34.009075, 31.391632>,  <33.701393, 34.195072, 31.334665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841965, 34.009075, 31.391632>,  <34.076252, 33.699081, 31.486576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841965, 34.009075, 31.391632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362472, -0.011477, -0.931924,
		-0.724947, -0.631881, -0.274187,
		-0.585718, 0.774980, -0.237359,
		33.666248, 34.241570, 31.320425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728531, 33.492638, 30.933250>,  <34.076252, 33.699081, 31.486576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728531, 33.492638, 30.933250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755577, 33.891479, 30.919365>,  <33.771805, 34.130787, 30.911034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755577, 33.891479, 30.919365>,  <33.728531, 33.492638, 30.933250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755577, 33.891479, 30.919365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455767, -0.061824, -0.887950,
		-0.887527, 0.044220, -0.458629,
		0.067619, 0.997107, -0.034716,
		33.775864, 34.190613, 30.908951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672985, 33.651039, 30.116266>,  <33.728531, 33.492638, 30.933250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672985, 33.651039, 30.116266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784912, 33.995213, 30.286606>,  <33.852070, 34.201717, 30.388809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784912, 33.995213, 30.286606>,  <33.672985, 33.651039, 30.116266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784912, 33.995213, 30.286606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169026, 0.392488, -0.904092,
		-0.945056, 0.324962, -0.035610,
		0.279819, 0.860437, 0.425851,
		33.868858, 34.253345, 30.414362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387245, 34.102787, 29.776810>,  <33.672985, 33.651039, 30.116266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387245, 34.102787, 29.776810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693569, 34.285416, 29.957952>,  <33.877365, 34.394993, 30.066639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693569, 34.285416, 29.957952>,  <33.387245, 34.102787, 29.776810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693569, 34.285416, 29.957952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237511, 0.453605, -0.858971,
		-0.597600, 0.765366, 0.238934,
		0.765809, 0.456571, 0.452857,
		33.923313, 34.422386, 30.093809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307556, 34.816460, 29.749817>,  <33.387245, 34.102787, 29.776810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307556, 34.816460, 29.749817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703915, 34.775860, 29.785179>,  <33.941730, 34.751499, 29.806396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703915, 34.775860, 29.785179>,  <33.307556, 34.816460, 29.749817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703915, 34.775860, 29.785179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124386, 0.439525, -0.889576,
		0.051433, 0.892478, 0.448150,
		0.990900, -0.101498, 0.088406,
		34.001186, 34.745411, 29.811701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568245, 35.250019, 29.328884>,  <33.307556, 34.816460, 29.749817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568245, 35.250019, 29.328884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918999, 35.066235, 29.385424>,  <34.129452, 34.955963, 29.419348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918999, 35.066235, 29.385424>,  <33.568245, 35.250019, 29.328884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918999, 35.066235, 29.385424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374097, 0.467579, -0.800888,
		0.301881, 0.755162, 0.581892,
		0.876881, -0.459457, 0.141350,
		34.182064, 34.928398, 29.427828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946629, 35.743885, 29.357109>,  <33.568245, 35.250019, 29.328884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946629, 35.743885, 29.357109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209248, 35.455742, 29.267643>,  <34.366821, 35.282856, 29.213963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209248, 35.455742, 29.267643>,  <33.946629, 35.743885, 29.357109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209248, 35.455742, 29.267643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297510, 0.519804, -0.800807,
		0.693130, 0.459227, 0.555591,
		0.656551, -0.720357, -0.223668,
		34.406212, 35.239635, 29.200542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519493, 36.090878, 29.189934>,  <33.946629, 35.743885, 29.357109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519493, 36.090878, 29.189934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545593, 35.726421, 29.027174>,  <34.561253, 35.507748, 28.929518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545593, 35.726421, 29.027174>,  <34.519493, 36.090878, 29.189934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545593, 35.726421, 29.027174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468070, 0.388072, -0.793921,
		0.881279, -0.138658, 0.451797,
		0.065246, -0.911139, -0.406901,
		34.565166, 35.453079, 28.905104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204510, 36.041138, 28.960909>,  <34.519493, 36.090878, 29.189934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204510, 36.041138, 28.960909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993137, 35.765778, 28.762167>,  <34.866314, 35.600559, 28.642921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993137, 35.765778, 28.762167>,  <35.204510, 36.041138, 28.960909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993137, 35.765778, 28.762167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446751, 0.272179, -0.852251,
		0.721928, -0.672322, 0.163719,
		-0.528426, -0.688405, -0.496854,
		34.834610, 35.559258, 28.613111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680294, 35.690716, 28.563375>,  <35.204510, 36.041138, 28.960909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680294, 35.690716, 28.563375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326691, 35.648674, 28.381174>,  <35.114529, 35.623447, 28.271852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326691, 35.648674, 28.381174>,  <35.680294, 35.690716, 28.563375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326691, 35.648674, 28.381174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387436, 0.380509, -0.839706,
		0.261584, -0.918784, -0.295650,
		-0.884007, -0.105108, -0.455505,
		35.061489, 35.617142, 28.244522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834484, 35.308010, 27.986588>,  <35.680294, 35.690716, 28.563375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834484, 35.308010, 27.986588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478943, 35.463245, 27.889162>,  <35.265617, 35.556385, 27.830706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478943, 35.463245, 27.889162>,  <35.834484, 35.308010, 27.986588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478943, 35.463245, 27.889162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310318, 0.118796, -0.943181,
		-0.337102, -0.913935, -0.226023,
		-0.888856, 0.388087, -0.243564,
		35.212288, 35.579670, 27.816093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648258, 34.966564, 27.412844>,  <35.834484, 35.308010, 27.986588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648258, 34.966564, 27.412844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410820, 35.286873, 27.380825>,  <35.268356, 35.479057, 27.361614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410820, 35.286873, 27.380825>,  <35.648258, 34.966564, 27.412844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410820, 35.286873, 27.380825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087990, -0.034290, -0.995531,
		-0.799939, -0.597985, -0.050106,
		-0.593594, 0.800773, -0.080046,
		35.232742, 35.527103, 27.356812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216610, 34.812943, 26.832884>,  <35.648258, 34.966564, 27.412844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216610, 34.812943, 26.832884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201321, 35.206902, 26.900431>,  <35.192146, 35.443275, 26.940960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201321, 35.206902, 26.900431>,  <35.216610, 34.812943, 26.832884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201321, 35.206902, 26.900431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094420, 0.171795, -0.980597,
		-0.994798, -0.021539, -0.099561,
		-0.038225, 0.984897, 0.168868,
		35.189854, 35.502369, 26.951092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673450, 35.150158, 26.300877>,  <35.216610, 34.812943, 26.832884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673450, 35.150158, 26.300877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887985, 35.454208, 26.447605>,  <35.016705, 35.636639, 26.535643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887985, 35.454208, 26.447605>,  <34.673450, 35.150158, 26.300877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887985, 35.454208, 26.447605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123386, 0.359337, -0.925015,
		-0.834939, 0.541377, 0.098936,
		0.536333, 0.760124, 0.366823,
		35.048885, 35.682247, 26.557652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471806, 35.682369, 25.914001>,  <34.673450, 35.150158, 26.300877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471806, 35.682369, 25.914001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817390, 35.837372, 26.042629>,  <35.024742, 35.930374, 26.119806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817390, 35.837372, 26.042629>,  <34.471806, 35.682369, 25.914001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817390, 35.837372, 26.042629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237947, 0.248638, -0.938915,
		-0.443793, 0.887702, 0.122606,
		0.863961, 0.387510, 0.321570,
		35.076580, 35.953625, 26.139101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479282, 36.453880, 25.744886>,  <34.471806, 35.682369, 25.914001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479282, 36.453880, 25.744886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855270, 36.326588, 25.794168>,  <35.080864, 36.250214, 25.823738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855270, 36.326588, 25.794168>,  <34.479282, 36.453880, 25.744886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855270, 36.326588, 25.794168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231843, 0.330617, -0.914845,
		0.250397, 0.888494, 0.384551,
		0.939973, -0.318230, 0.123206,
		35.137264, 36.231117, 25.831131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993080, 36.996235, 25.426157>,  <34.479282, 36.453880, 25.744886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993080, 36.996235, 25.426157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193962, 36.651962, 25.459673>,  <35.314491, 36.445400, 25.479782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193962, 36.651962, 25.459673>,  <34.993080, 36.996235, 25.426157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193962, 36.651962, 25.459673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518354, 0.222065, -0.825831,
		0.692168, 0.458171, 0.557659,
		0.502208, -0.860678, 0.083789,
		35.344624, 36.393761, 25.484810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729755, 37.170197, 25.215109>,  <34.993080, 36.996235, 25.426157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729755, 37.170197, 25.215109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745110, 36.772156, 25.178680>,  <35.754322, 36.533329, 25.156824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745110, 36.772156, 25.178680>,  <35.729755, 37.170197, 25.215109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745110, 36.772156, 25.178680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494889, 0.098107, -0.863400,
		0.868108, -0.011926, 0.496233,
		0.038387, -0.995104, -0.091069,
		35.756626, 36.473625, 25.151360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490311, 36.900345, 25.026554>,  <35.729755, 37.170197, 25.215109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490311, 36.900345, 25.026554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200523, 36.654400, 24.901922>,  <36.026649, 36.506832, 24.827143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200523, 36.654400, 24.901922>,  <36.490311, 36.900345, 25.026554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200523, 36.654400, 24.901922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361389, 0.046106, -0.931275,
		0.586974, -0.787283, 0.188803,
		-0.724472, -0.614865, -0.311579,
		35.983181, 36.469940, 24.808449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866879, 36.354534, 24.714996>,  <36.490311, 36.900345, 25.026554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866879, 36.354534, 24.714996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501801, 36.323505, 24.554508>,  <36.282753, 36.304890, 24.458216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501801, 36.323505, 24.554508>,  <36.866879, 36.354534, 24.714996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501801, 36.323505, 24.554508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405201, -0.044472, -0.913145,
		0.052991, -0.995994, 0.072022,
		-0.912691, -0.077572, -0.401221,
		36.227993, 36.300236, 24.434141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931000, 35.879066, 24.159616>,  <36.866879, 36.354534, 24.714996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931000, 35.879066, 24.159616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581306, 36.057880, 24.083857>,  <36.371490, 36.165169, 24.038401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581306, 36.057880, 24.083857>,  <36.931000, 35.879066, 24.159616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581306, 36.057880, 24.083857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195151, -0.033651, -0.980196,
		-0.444558, -0.893882, -0.057821,
		-0.874233, 0.447038, -0.189402,
		36.319035, 36.191990, 24.027037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565647, 35.446869, 23.699928>,  <36.931000, 35.879066, 24.159616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565647, 35.446869, 23.699928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444561, 35.827030, 23.671371>,  <36.371910, 36.055126, 23.654238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444561, 35.827030, 23.671371>,  <36.565647, 35.446869, 23.699928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444561, 35.827030, 23.671371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256596, 0.009130, -0.966475,
		-0.917890, -0.310886, -0.246634,
		-0.302716, 0.950403, -0.071392,
		36.353745, 36.112152, 23.649954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104633, 35.453423, 23.053562>,  <36.565647, 35.446869, 23.699928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104633, 35.453423, 23.053562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234787, 35.824329, 23.127638>,  <36.312878, 36.046875, 23.172083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234787, 35.824329, 23.127638>,  <36.104633, 35.453423, 23.053562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234787, 35.824329, 23.127638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122699, 0.152784, -0.980613,
		-0.937588, 0.341796, -0.064062,
		0.325382, 0.927271, 0.185187,
		36.332401, 36.102512, 23.183193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982506, 35.755219, 22.438429>,  <36.104633, 35.453423, 23.053562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982506, 35.755219, 22.438429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198631, 36.052895, 22.595520>,  <36.328308, 36.231503, 22.689775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198631, 36.052895, 22.595520>,  <35.982506, 35.755219, 22.438429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198631, 36.052895, 22.595520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135377, 0.383764, -0.913454,
		-0.830503, 0.546718, 0.106605,
		0.540313, 0.744195, 0.392730,
		36.360725, 36.276154, 22.713339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742081, 36.460907, 22.080359>,  <35.982506, 35.755219, 22.438429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742081, 36.460907, 22.080359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097095, 36.495628, 22.261356>,  <36.310104, 36.516460, 22.369955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097095, 36.495628, 22.261356>,  <35.742081, 36.460907, 22.080359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097095, 36.495628, 22.261356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394419, 0.364498, -0.843549,
		-0.238155, 0.927150, 0.289267,
		0.887533, 0.086803, 0.452493,
		36.363354, 36.521667, 22.397104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058472, 37.111969, 21.896379>,  <35.742081, 36.460907, 22.080359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058472, 37.111969, 21.896379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358364, 36.873844, 22.011974>,  <36.538300, 36.730968, 22.081331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358364, 36.873844, 22.011974>,  <36.058472, 37.111969, 21.896379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358364, 36.873844, 22.011974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513638, 0.248170, -0.821333,
		0.417228, 0.764213, 0.491833,
		0.749731, -0.595307, 0.288985,
		36.583282, 36.695251, 22.098669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588696, 37.513298, 22.073601>,  <36.058472, 37.111969, 21.896379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588696, 37.513298, 22.073601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735664, 37.157757, 21.964092>,  <36.823845, 36.944431, 21.898386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735664, 37.157757, 21.964092>,  <36.588696, 37.513298, 22.073601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735664, 37.157757, 21.964092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416986, 0.420550, -0.805767,
		0.831341, 0.181894, 0.525155,
		0.367418, -0.888849, -0.273773,
		36.845890, 36.891102, 21.881960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234451, 37.666382, 21.846312>,  <36.588696, 37.513298, 22.073601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234451, 37.666382, 21.846312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178947, 37.301277, 21.692627>,  <37.145645, 37.082214, 21.600416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178947, 37.301277, 21.692627>,  <37.234451, 37.666382, 21.846312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178947, 37.301277, 21.692627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459426, 0.284363, -0.841467,
		0.877311, -0.293277, 0.379887,
		-0.138757, -0.912758, -0.384214,
		37.137321, 37.027451, 21.577362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984489, 37.491295, 21.532684>,  <37.234451, 37.666382, 21.846312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984489, 37.491295, 21.532684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729725, 37.238571, 21.355976>,  <37.576866, 37.086937, 21.249950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729725, 37.238571, 21.355976>,  <37.984489, 37.491295, 21.532684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729725, 37.238571, 21.355976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494743, 0.104501, -0.862734,
		0.591246, -0.768050, 0.246024,
		-0.636913, -0.631806, -0.441773,
		37.538651, 37.049030, 21.223444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408615, 37.040455, 21.087282>,  <37.984489, 37.491295, 21.532684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408615, 37.040455, 21.087282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032013, 37.023525, 20.953545>,  <37.806053, 37.013367, 20.873302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032013, 37.023525, 20.953545>,  <38.408615, 37.040455, 21.087282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032013, 37.023525, 20.953545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311408, 0.270050, -0.911097,
		0.128845, -0.961916, -0.241074,
		-0.941501, -0.042318, -0.334343,
		37.749561, 37.010830, 20.853241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423126, 36.762486, 20.431957>,  <38.408615, 37.040455, 21.087282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423126, 36.762486, 20.431957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058762, 36.925945, 20.409184>,  <37.840141, 37.024021, 20.395519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058762, 36.925945, 20.409184>,  <38.423126, 36.762486, 20.431957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058762, 36.925945, 20.409184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219453, 0.363010, -0.905574,
		-0.349398, -0.837393, -0.420350,
		-0.910913, 0.408652, -0.056933,
		37.785488, 37.048542, 20.392103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233826, 36.670158, 19.761736>,  <38.423126, 36.762486, 20.431957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233826, 36.670158, 19.761736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992851, 36.962238, 19.890659>,  <37.848267, 37.137486, 19.968014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992851, 36.962238, 19.890659>,  <38.233826, 36.670158, 19.761736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992851, 36.962238, 19.890659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208127, 0.533549, -0.819761,
		-0.770555, -0.426773, -0.473403,
		-0.602435, 0.730199, 0.322306,
		37.812122, 37.181297, 19.987350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811291, 36.836739, 19.167164>,  <38.233826, 36.670158, 19.761736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811291, 36.836739, 19.167164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792412, 37.143841, 19.422768>,  <37.781086, 37.328102, 19.576130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792412, 37.143841, 19.422768>,  <37.811291, 36.836739, 19.167164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792412, 37.143841, 19.422768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225203, 0.631428, -0.742012,
		-0.973168, 0.108887, -0.202700,
		-0.047195, 0.767751, 0.639008,
		37.778252, 37.374165, 19.614470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459908, 37.424870, 18.721359>,  <37.811291, 36.836739, 19.167164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459908, 37.424870, 18.721359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640888, 37.594070, 19.035393>,  <37.749477, 37.695591, 19.223814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640888, 37.594070, 19.035393>,  <37.459908, 37.424870, 18.721359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640888, 37.594070, 19.035393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141884, 0.834988, -0.531661,
		-0.880432, 0.351939, 0.317770,
		0.452447, 0.423005, 0.785085,
		37.776623, 37.720970, 19.270918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179016, 37.987484, 18.770443>,  <37.459908, 37.424870, 18.721359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179016, 37.987484, 18.770443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520302, 38.093960, 18.949852>,  <37.725071, 38.157845, 19.057497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520302, 38.093960, 18.949852>,  <37.179016, 37.987484, 18.770443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520302, 38.093960, 18.949852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008196, 0.866692, -0.498777,
		-0.521501, 0.421886, 0.741652,
		0.853211, 0.266191, 0.448523,
		37.776264, 38.173817, 19.084410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561600, 38.281693, 18.671223>,  <37.179016, 37.987484, 18.770443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561600, 38.281693, 18.671223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452984, 37.905132, 18.751249>,  <36.387814, 37.679195, 18.799265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452984, 37.905132, 18.751249>,  <36.561600, 38.281693, 18.671223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452984, 37.905132, 18.751249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852684, 0.331724, 0.403595,
		-0.446312, -0.061001, -0.892796,
		-0.271543, -0.941402, 0.200067,
		36.371521, 37.622711, 18.811270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867306, 38.605450, 17.855644>,  <36.561600, 38.281693, 18.671223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867306, 38.605450, 17.855644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879341, 38.284748, 18.094402>,  <36.886562, 38.092327, 18.237658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879341, 38.284748, 18.094402>,  <36.867306, 38.605450, 17.855644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879341, 38.284748, 18.094402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634343, 0.446182, 0.631293,
		-0.772466, -0.397631, -0.495163,
		0.030089, -0.801756, 0.596895,
		36.888367, 38.044220, 18.273470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920052, 39.350609, 18.069824>,  <36.867306, 38.605450, 17.855644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920052, 39.350609, 18.069824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619583, 39.334904, 17.806248>,  <36.439301, 39.325481, 17.648102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619583, 39.334904, 17.806248>,  <36.920052, 39.350609, 18.069824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619583, 39.334904, 17.806248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385611, 0.784101, -0.486302,
		0.535769, -0.619390, -0.573854,
		-0.751170, -0.039261, -0.658940,
		36.394234, 39.323124, 17.608566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476273, 39.292511, 18.577070>,  <36.920052, 39.350609, 18.069824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476273, 39.292511, 18.577070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431538, 39.089386, 18.235401>,  <37.404697, 38.967510, 18.030399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431538, 39.089386, 18.235401>,  <37.476273, 39.292511, 18.577070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431538, 39.089386, 18.235401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131130, 0.859592, -0.493869,
		0.985036, 0.056774, -0.162726,
		-0.111839, -0.507817, -0.854174,
		37.397987, 38.937042, 17.979149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542309, 39.861591, 17.998400>,  <37.476273, 39.292511, 18.577070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542309, 39.861591, 17.998400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592846, 40.242596, 18.109226>,  <37.623169, 40.471199, 18.175722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592846, 40.242596, 18.109226>,  <37.542309, 39.861591, 17.998400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592846, 40.242596, 18.109226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412106, -0.304459, 0.858763,
		0.902334, 0.005684, -0.431000,
		0.126341, 0.952509, 0.277066,
		37.630749, 40.528347, 18.192347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287766, 39.953213, 18.237162>,  <37.542309, 39.861591, 17.998400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287766, 39.953213, 18.237162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003098, 40.177551, 18.406384>,  <37.832294, 40.312153, 18.507917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003098, 40.177551, 18.406384>,  <38.287766, 39.953213, 18.237162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003098, 40.177551, 18.406384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291122, -0.312615, 0.904168,
		0.639352, 0.766631, 0.059205,
		-0.711672, 0.560846, 0.423054,
		37.789597, 40.345806, 18.533300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525482, 40.311428, 18.869474>,  <38.287766, 39.953213, 18.237162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525482, 40.311428, 18.869474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128845, 40.268814, 18.898865>,  <37.890865, 40.243244, 18.916500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128845, 40.268814, 18.898865>,  <38.525482, 40.311428, 18.869474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128845, 40.268814, 18.898865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109137, -0.383209, 0.917191,
		-0.069558, 0.917497, 0.391613,
		-0.991590, -0.106537, 0.073478,
		37.831367, 40.236855, 18.920908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153633, 40.663246, 19.468508>,  <38.525482, 40.311428, 18.869474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153633, 40.663246, 19.468508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926460, 40.356590, 19.348696>,  <37.790157, 40.172596, 19.276808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926460, 40.356590, 19.348696>,  <38.153633, 40.663246, 19.468508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926460, 40.356590, 19.348696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127077, -0.277881, 0.952173,
		-0.813203, 0.578837, 0.060397,
		-0.567937, -0.766635, -0.299531,
		37.756081, 40.126598, 19.258837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432156, 40.711910, 19.621235>,  <38.153633, 40.663246, 19.468508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432156, 40.711910, 19.621235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566406, 40.335220, 19.612186>,  <37.646957, 40.109207, 19.606758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566406, 40.335220, 19.612186>,  <37.432156, 40.711910, 19.621235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566406, 40.335220, 19.612186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379116, -0.157020, 0.911930,
		-0.862337, -0.297492, -0.409722,
		0.335627, -0.941723, -0.022621,
		37.667095, 40.052704, 19.605400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243954, 40.505985, 20.306063>,  <37.432156, 40.711910, 19.621235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243954, 40.505985, 20.306063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432247, 40.174046, 20.186222>,  <37.545223, 39.974884, 20.114319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432247, 40.174046, 20.186222>,  <37.243954, 40.505985, 20.306063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432247, 40.174046, 20.186222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135437, -0.403521, 0.904891,
		-0.871816, -0.385388, -0.302344,
		0.470737, -0.829848, -0.299600,
		37.573467, 39.925091, 20.096342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849628, 39.912727, 20.547731>,  <37.243954, 40.505985, 20.306063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849628, 39.912727, 20.547731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231716, 39.810692, 20.487751>,  <37.460968, 39.749470, 20.451763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231716, 39.810692, 20.487751>,  <36.849628, 39.912727, 20.547731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231716, 39.810692, 20.487751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002812, -0.514569, 0.857444,
		-0.295883, -0.818626, -0.492244,
		0.955220, -0.255087, -0.149950,
		37.518284, 39.734165, 20.442766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814953, 39.416725, 20.976068>,  <36.849628, 39.912727, 20.547731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814953, 39.416725, 20.976068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208626, 39.433296, 20.907162>,  <37.444828, 39.443237, 20.865818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208626, 39.433296, 20.907162>,  <36.814953, 39.416725, 20.976068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208626, 39.433296, 20.907162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174952, -0.380894, 0.907916,
		-0.028006, -0.923690, -0.382115,
		0.984178, 0.041425, -0.172269,
		37.503880, 39.445724, 20.855480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126415, 38.732365, 21.141821>,  <36.814953, 39.416725, 20.976068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126415, 38.732365, 21.141821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409767, 39.012733, 21.175058>,  <37.579777, 39.180954, 21.195002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409767, 39.012733, 21.175058>,  <37.126415, 38.732365, 21.141821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409767, 39.012733, 21.175058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299629, -0.405212, 0.863728,
		0.639079, -0.586948, -0.497061,
		0.708379, 0.700924, 0.083096,
		37.622280, 39.223011, 21.199987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527969, 38.425434, 21.544127>,  <37.126415, 38.732365, 21.141821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527969, 38.425434, 21.544127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643650, 38.808338, 21.545469>,  <37.713058, 39.038082, 21.546274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643650, 38.808338, 21.545469>,  <37.527969, 38.425434, 21.544127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643650, 38.808338, 21.545469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224337, -0.071181, 0.971908,
		0.930611, -0.280323, -0.235335,
		0.289200, 0.957263, 0.003355,
		37.730412, 39.095516, 21.546476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130627, 38.398888, 21.859556>,  <37.527969, 38.425434, 21.544127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130627, 38.398888, 21.859556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014984, 38.780964, 21.884966>,  <37.945599, 39.010208, 21.900211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014984, 38.780964, 21.884966>,  <38.130627, 38.398888, 21.859556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014984, 38.780964, 21.884966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174158, -0.012772, 0.984635,
		0.941323, 0.295725, -0.162661,
		-0.289103, 0.955188, 0.063525,
		37.928253, 39.067520, 21.904024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685703, 38.869606, 22.186649>,  <38.130627, 38.398888, 21.859556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685703, 38.869606, 22.186649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324955, 39.033012, 22.242857>,  <38.108505, 39.131058, 22.276583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324955, 39.033012, 22.242857>,  <38.685703, 38.869606, 22.186649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324955, 39.033012, 22.242857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206095, 0.120977, 0.971025,
		0.379679, 0.904699, -0.193299,
		-0.901870, 0.408515, 0.140521,
		38.054394, 39.155567, 22.285013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845387, 39.393970, 22.677746>,  <38.685703, 38.869606, 22.186649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845387, 39.393970, 22.677746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455456, 39.306915, 22.697147>,  <38.221497, 39.254681, 22.708788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455456, 39.306915, 22.697147>,  <38.845387, 39.393970, 22.677746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455456, 39.306915, 22.697147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017331, 0.142921, 0.989582,
		-0.222307, 0.965508, -0.135551,
		-0.974823, -0.217642, 0.048506,
		38.163010, 39.241623, 22.711699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496357, 39.951904, 23.037342>,  <38.845387, 39.393970, 22.677746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496357, 39.951904, 23.037342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231491, 39.654278, 23.072886>,  <38.072571, 39.475700, 23.094212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231491, 39.654278, 23.072886>,  <38.496357, 39.951904, 23.037342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231491, 39.654278, 23.072886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078384, 0.186703, 0.979284,
		-0.745245, 0.641486, -0.181952,
		-0.662168, -0.744069, 0.088857,
		38.032841, 39.431057, 23.099543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973576, 40.202042, 23.552917>,  <38.496357, 39.951904, 23.037342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973576, 40.202042, 23.552917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875187, 39.815731, 23.519997>,  <37.816154, 39.583946, 23.500244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875187, 39.815731, 23.519997>,  <37.973576, 40.202042, 23.552917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875187, 39.815731, 23.519997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366098, 0.013947, 0.930472,
		-0.897481, 0.258996, -0.357000,
		-0.245968, -0.965778, -0.082300,
		37.801395, 39.525997, 23.495306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217358, 40.216225, 23.780695>,  <37.973576, 40.202042, 23.552917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217358, 40.216225, 23.780695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396748, 39.861626, 23.826277>,  <37.504383, 39.648865, 23.853626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396748, 39.861626, 23.826277>,  <37.217358, 40.216225, 23.780695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396748, 39.861626, 23.826277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277186, -0.016740, 0.960670,
		-0.849728, -0.462422, -0.253233,
		0.448474, -0.886502, 0.113953,
		37.531288, 39.595676, 23.860462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721897, 39.807076, 24.190725>,  <37.217358, 40.216225, 23.780695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721897, 39.807076, 24.190725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080555, 39.633816, 24.227392>,  <37.295750, 39.529861, 24.249392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080555, 39.633816, 24.227392>,  <36.721897, 39.807076, 24.190725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080555, 39.633816, 24.227392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147857, -0.097799, 0.984161,
		-0.417326, -0.896000, -0.151735,
		0.896648, -0.433151, 0.091666,
		37.349548, 39.503872, 24.254892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605076, 39.110703, 24.404383>,  <36.721897, 39.807076, 24.190725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605076, 39.110703, 24.404383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978104, 39.212635, 24.506653>,  <37.201920, 39.273792, 24.568016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978104, 39.212635, 24.506653>,  <36.605076, 39.110703, 24.404383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978104, 39.212635, 24.506653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229383, -0.128570, 0.964807,
		0.278732, -0.958401, -0.061448,
		0.932572, 0.254828, 0.255677,
		37.257877, 39.289082, 24.583357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782211, 38.566772, 24.807314>,  <36.605076, 39.110703, 24.404383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782211, 38.566772, 24.807314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067326, 38.828945, 24.907194>,  <37.238392, 38.986248, 24.967123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067326, 38.828945, 24.907194>,  <36.782211, 38.566772, 24.807314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067326, 38.828945, 24.907194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166922, -0.187263, 0.968024,
		0.681232, -0.731672, -0.024072,
		0.712784, 0.655430, 0.249702,
		37.281162, 39.025574, 24.982105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278156, 38.269062, 25.236767>,  <36.782211, 38.566772, 24.807314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278156, 38.269062, 25.236767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276131, 38.660561, 25.318773>,  <37.274914, 38.895458, 25.367977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276131, 38.660561, 25.318773>,  <37.278156, 38.269062, 25.236767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276131, 38.660561, 25.318773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221222, -0.201036, 0.954277,
		0.975210, -0.040523, 0.217538,
		-0.005063, 0.978745, 0.205017,
		37.274612, 38.954185, 25.380278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690403, 38.354492, 25.827810>,  <37.278156, 38.269062, 25.236767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690403, 38.354492, 25.827810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460674, 38.681377, 25.808538>,  <37.322838, 38.877506, 25.796974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460674, 38.681377, 25.808538>,  <37.690403, 38.354492, 25.827810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460674, 38.681377, 25.808538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275428, -0.137472, 0.951441,
		0.770902, 0.559707, 0.304036,
		-0.574325, 0.817208, -0.048181,
		37.288376, 38.926540, 25.794085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612175, 38.570641, 26.561422>,  <37.690403, 38.354492, 25.827810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612175, 38.570641, 26.561422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346645, 38.831871, 26.415632>,  <37.187328, 38.988609, 26.328159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346645, 38.831871, 26.415632>,  <37.612175, 38.570641, 26.561422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346645, 38.831871, 26.415632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379262, 0.126076, 0.916660,
		0.644596, 0.746728, 0.163993,
		-0.663820, 0.653072, -0.364474,
		37.147499, 39.027794, 26.306290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532234, 39.198132, 26.973509>,  <37.612175, 38.570641, 26.561422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532234, 39.198132, 26.973509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175186, 39.159466, 26.797379>,  <36.960957, 39.136265, 26.691700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175186, 39.159466, 26.797379>,  <37.532234, 39.198132, 26.973509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175186, 39.159466, 26.797379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445564, 0.337798, 0.829075,
		0.068596, 0.936241, -0.344597,
		-0.892618, -0.096669, -0.440327,
		36.907402, 39.130466, 26.665281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154335, 39.677898, 27.314133>,  <37.532234, 39.198132, 26.973509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154335, 39.677898, 27.314133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858326, 39.480869, 27.130941>,  <36.680721, 39.362652, 27.021027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858326, 39.480869, 27.130941>,  <37.154335, 39.677898, 27.314133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858326, 39.480869, 27.130941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617193, 0.226722, 0.753439,
		-0.267287, 0.840222, -0.471789,
		-0.740021, -0.492569, -0.457979,
		36.636318, 39.333099, 26.993547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590149, 40.178558, 27.154501>,  <37.154335, 39.677898, 27.314133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590149, 40.178558, 27.154501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474266, 39.796402, 27.177465>,  <36.404736, 39.567108, 27.191244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474266, 39.796402, 27.177465>,  <36.590149, 40.178558, 27.154501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474266, 39.796402, 27.177465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616198, 0.232080, 0.752622,
		-0.732372, 0.182664, -0.655946,
		-0.289709, -0.955391, 0.057412,
		36.387352, 39.509785, 27.194689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937416, 40.240368, 27.372171>,  <36.590149, 40.178558, 27.154501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937416, 40.240368, 27.372171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012207, 39.856403, 27.455696>,  <36.057083, 39.626022, 27.505812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012207, 39.856403, 27.455696>,  <35.937416, 40.240368, 27.372171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012207, 39.856403, 27.455696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679958, 0.026950, 0.732756,
		-0.709010, -0.278996, -0.647662,
		0.186981, -0.959914, 0.208813,
		36.068302, 39.568428, 27.518339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293102, 39.952454, 27.536310>,  <35.937416, 40.240368, 27.372171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293102, 39.952454, 27.536310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546124, 39.689720, 27.700480>,  <35.697937, 39.532078, 27.798981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546124, 39.689720, 27.700480>,  <35.293102, 39.952454, 27.536310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546124, 39.689720, 27.700480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598174, -0.077680, 0.797592,
		-0.492006, -0.750022, -0.442038,
		0.632549, -0.656836, 0.410425,
		35.735889, 39.492668, 27.823606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879459, 39.331753, 27.759163>,  <35.293102, 39.952454, 27.536310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879459, 39.331753, 27.759163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214939, 39.298794, 27.974491>,  <35.416229, 39.279018, 28.103687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214939, 39.298794, 27.974491>,  <34.879459, 39.331753, 27.759163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214939, 39.298794, 27.974491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544254, -0.161447, 0.823239,
		0.019081, -0.983436, -0.180249,
		0.838704, -0.082393, 0.538320,
		35.466549, 39.274075, 28.135986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718334, 38.925880, 28.312265>,  <34.879459, 39.331753, 27.759163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718334, 38.925880, 28.312265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070274, 39.044193, 28.461065>,  <35.281437, 39.115181, 28.550344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070274, 39.044193, 28.461065>,  <34.718334, 38.925880, 28.312265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070274, 39.044193, 28.461065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312030, -0.230882, 0.921591,
		0.358479, -0.926934, -0.110848,
		0.879847, 0.295783, 0.371998,
		35.334229, 39.132927, 28.572664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058201, 38.448898, 28.607302>,  <34.718334, 38.925880, 28.312265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058201, 38.448898, 28.607302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207260, 38.771011, 28.791759>,  <35.296696, 38.964279, 28.902433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207260, 38.771011, 28.791759>,  <35.058201, 38.448898, 28.607302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207260, 38.771011, 28.791759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408079, -0.304098, 0.860811,
		0.833428, -0.508966, 0.215296,
		0.372653, 0.805282, 0.461142,
		35.319057, 39.012596, 28.930101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323681, 38.213943, 29.282959>,  <35.058201, 38.448898, 28.607302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323681, 38.213943, 29.282959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258461, 38.606152, 29.326756>,  <35.219330, 38.841476, 29.353033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258461, 38.606152, 29.326756>,  <35.323681, 38.213943, 29.282959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258461, 38.606152, 29.326756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449061, -0.172568, 0.876678,
		0.878498, 0.093777, 0.468452,
		-0.163052, 0.980523, 0.109489,
		35.209545, 38.900307, 29.359602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653408, 38.491116, 29.934490>,  <35.323681, 38.213943, 29.282959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653408, 38.491116, 29.934490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369068, 38.753319, 29.832499>,  <35.198463, 38.910641, 29.771303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369068, 38.753319, 29.832499>,  <35.653408, 38.491116, 29.934490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369068, 38.753319, 29.832499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333408, 0.005164, 0.942768,
		0.619305, 0.755174, 0.214880,
		-0.710845, 0.655503, -0.254979,
		35.155815, 38.949970, 29.756004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697468, 38.922279, 30.426826>,  <35.653408, 38.491116, 29.934490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697468, 38.922279, 30.426826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338673, 39.000580, 30.268290>,  <35.123394, 39.047562, 30.173168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338673, 39.000580, 30.268290>,  <35.697468, 38.922279, 30.426826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338673, 39.000580, 30.268290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401526, 0.014201, 0.915738,
		0.184886, 0.980550, 0.065861,
		-0.896992, 0.195752, -0.396342,
		35.069576, 39.059307, 30.149387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351841, 39.365181, 30.909025>,  <35.697468, 38.922279, 30.426826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351841, 39.365181, 30.909025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023922, 39.246811, 30.712917>,  <34.827171, 39.175789, 30.595253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023922, 39.246811, 30.712917>,  <35.351841, 39.365181, 30.909025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023922, 39.246811, 30.712917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501256, -0.043174, 0.864221,
		-0.276913, 0.954234, -0.112941,
		-0.819793, -0.295927, -0.490271,
		34.777985, 39.158031, 30.565836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855225, 39.740463, 31.284910>,  <35.351841, 39.365181, 30.909025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855225, 39.740463, 31.284910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656494, 39.456631, 31.085047>,  <34.537254, 39.286331, 30.965128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656494, 39.456631, 31.085047>,  <34.855225, 39.740463, 31.284910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656494, 39.456631, 31.085047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508379, -0.228656, 0.830222,
		-0.703358, 0.666494, -0.247132,
		-0.496830, -0.709579, -0.499658,
		34.507446, 39.243755, 30.935150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161266, 39.819916, 31.526667>,  <34.855225, 39.740463, 31.284910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161266, 39.819916, 31.526667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176979, 39.452118, 31.370213>,  <34.186405, 39.231438, 31.276340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176979, 39.452118, 31.370213>,  <34.161266, 39.819916, 31.526667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176979, 39.452118, 31.370213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594964, -0.336007, 0.730148,
		-0.802792, 0.204034, -0.560263,
		0.039277, -0.919494, -0.391137,
		34.188763, 39.176270, 31.252871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536823, 39.659607, 31.609541>,  <34.161266, 39.819916, 31.526667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536823, 39.659607, 31.609541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741314, 39.317120, 31.579773>,  <33.864010, 39.111626, 31.561913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741314, 39.317120, 31.579773>,  <33.536823, 39.659607, 31.609541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741314, 39.317120, 31.579773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627342, -0.430949, 0.648634,
		-0.587443, -0.284912, -0.757454,
		0.511227, -0.856217, -0.074420,
		33.894684, 39.060253, 31.557447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008400, 39.057304, 31.595732>,  <33.536823, 39.659607, 31.609541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008400, 39.057304, 31.595732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351086, 38.895508, 31.723753>,  <33.556698, 38.798431, 31.800566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351086, 38.895508, 31.723753>,  <33.008400, 39.057304, 31.595732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351086, 38.895508, 31.723753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500841, -0.504011, 0.703656,
		-0.123312, -0.763125, -0.634377,
		0.856711, -0.404491, 0.320053,
		33.608097, 38.774158, 31.819769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941040, 38.271610, 31.669172>,  <33.008400, 39.057304, 31.595732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941040, 38.271610, 31.669172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247921, 38.378777, 31.902277>,  <33.432049, 38.443077, 32.042141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247921, 38.378777, 31.902277>,  <32.941040, 38.271610, 31.669172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247921, 38.378777, 31.902277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290460, -0.664952, 0.688093,
		0.571862, -0.697179, -0.432337,
		0.767207, 0.267918, 0.582764,
		33.478085, 38.459152, 32.077106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226406, 37.625988, 32.028511>,  <32.941040, 38.271610, 31.669172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226406, 37.625988, 32.028511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336224, 37.941757, 32.248123>,  <33.402115, 38.131218, 32.379890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336224, 37.941757, 32.248123>,  <33.226406, 37.625988, 32.028511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336224, 37.941757, 32.248123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390688, -0.430144, 0.813842,
		0.878629, -0.437936, 0.190324,
		0.274544, 0.789423, 0.549033,
		33.418587, 38.178585, 32.412834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472523, 37.295475, 32.579933>,  <33.226406, 37.625988, 32.028511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472523, 37.295475, 32.579933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453945, 37.675892, 32.702156>,  <33.442799, 37.904140, 32.775490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453945, 37.675892, 32.702156>,  <33.472523, 37.295475, 32.579933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453945, 37.675892, 32.702156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220400, -0.308110, 0.925469,
		0.974303, -0.024361, 0.223919,
		-0.046447, 0.951039, 0.305562,
		33.440010, 37.961205, 32.793823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698933, 37.255100, 33.299400>,  <33.472523, 37.295475, 32.579933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698933, 37.255100, 33.299400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502197, 37.602955, 33.282303>,  <33.384155, 37.811668, 33.272045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502197, 37.602955, 33.282303>,  <33.698933, 37.255100, 33.299400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502197, 37.602955, 33.282303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389895, -0.176088, 0.903866,
		0.778512, 0.461217, 0.425674,
		-0.491835, 0.869639, -0.042739,
		33.354649, 37.863846, 33.269482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706829, 37.442554, 33.951366>,  <33.698933, 37.255100, 33.299400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706829, 37.442554, 33.951366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423138, 37.670799, 33.785763>,  <33.252922, 37.807747, 33.686401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423138, 37.670799, 33.785763>,  <33.706829, 37.442554, 33.951366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423138, 37.670799, 33.785763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583279, -0.145107, 0.799205,
		0.395963, 0.808296, 0.435741,
		-0.709224, 0.570614, -0.414006,
		33.210369, 37.841984, 33.661560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458775, 37.768536, 34.079346>,  <33.706829, 37.442554, 33.951366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458775, 37.768536, 34.079346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798237, 37.903793, 34.242043>,  <35.001915, 37.984947, 34.339661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798237, 37.903793, 34.242043>,  <34.458775, 37.768536, 34.079346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798237, 37.903793, 34.242043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351090, 0.215037, -0.911315,
		-0.395621, 0.916197, 0.063774,
		0.848658, 0.338145, 0.406741,
		35.052834, 38.005238, 34.364063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606365, 38.279903, 33.679939>,  <34.458775, 37.768536, 34.079346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606365, 38.279903, 33.679939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945835, 38.159538, 33.853931>,  <35.149517, 38.087318, 33.958328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945835, 38.159538, 33.853931>,  <34.606365, 38.279903, 33.679939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945835, 38.159538, 33.853931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513364, 0.270639, -0.814378,
		0.127336, 0.914442, 0.384162,
		0.848671, -0.300915, 0.434980,
		35.200436, 38.069263, 33.984425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121235, 38.766876, 33.526386>,  <34.606365, 38.279903, 33.679939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121235, 38.766876, 33.526386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344048, 38.448223, 33.620274>,  <35.477734, 38.257030, 33.676605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344048, 38.448223, 33.620274>,  <35.121235, 38.766876, 33.526386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344048, 38.448223, 33.620274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538291, 0.131100, -0.832500,
		0.632427, 0.590073, 0.501848,
		0.557028, -0.796635, 0.234719,
		35.511154, 38.209232, 33.690689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782791, 38.942150, 33.388039>,  <35.121235, 38.766876, 33.526386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782791, 38.942150, 33.388039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796665, 38.542854, 33.368782>,  <35.804989, 38.303276, 33.357227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796665, 38.542854, 33.368782>,  <35.782791, 38.942150, 33.388039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796665, 38.542854, 33.368782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785558, 0.057015, -0.616156,
		0.617815, -0.016445, 0.786151,
		0.034690, -0.998238, -0.048143,
		35.807072, 38.243382, 33.354340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442451, 38.678204, 33.634659>,  <35.782791, 38.942150, 33.388039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442451, 38.678204, 33.634659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310951, 38.384460, 33.397125>,  <36.232052, 38.208214, 33.254604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310951, 38.384460, 33.397125>,  <36.442451, 38.678204, 33.634659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310951, 38.384460, 33.397125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807576, 0.107403, -0.579902,
		0.489635, -0.670213, 0.557739,
		-0.328755, -0.734357, -0.593836,
		36.212326, 38.164154, 33.218975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068775, 38.228874, 33.489262>,  <36.442451, 38.678204, 33.634659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068775, 38.228874, 33.489262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800640, 38.125919, 33.210865>,  <36.639759, 38.064148, 33.043827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800640, 38.125919, 33.210865>,  <37.068775, 38.228874, 33.489262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800640, 38.125919, 33.210865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738362, -0.137860, -0.660164,
		0.073967, -0.956424, 0.282456,
		-0.670336, -0.257386, -0.695990,
		36.599541, 38.048702, 33.002068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444130, 37.786068, 33.128010>,  <37.068775, 38.228874, 33.489262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444130, 37.786068, 33.128010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150589, 37.861759, 32.867039>,  <36.974464, 37.907173, 32.710457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150589, 37.861759, 32.867039>,  <37.444130, 37.786068, 33.128010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150589, 37.861759, 32.867039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655546, -0.054550, -0.753182,
		-0.178114, -0.980417, -0.084017,
		-0.733849, 0.189229, -0.652425,
		36.930435, 37.918530, 32.671310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506409, 37.260590, 32.481377>,  <37.444130, 37.786068, 33.128010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506409, 37.260590, 32.481377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308475, 37.592899, 32.379433>,  <37.189716, 37.792286, 32.318268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308475, 37.592899, 32.379433>,  <37.506409, 37.260590, 32.481377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308475, 37.592899, 32.379433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517932, 0.046467, -0.854159,
		-0.697771, -0.554666, -0.453278,
		-0.494836, 0.830774, -0.254856,
		37.160027, 37.842133, 32.302975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126133, 37.125759, 31.751076>,  <37.506409, 37.260590, 32.481377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126133, 37.125759, 31.751076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188339, 37.511448, 31.836956>,  <37.225662, 37.742859, 31.888483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188339, 37.511448, 31.836956>,  <37.126133, 37.125759, 31.751076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188339, 37.511448, 31.836956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486217, 0.114478, -0.866307,
		-0.859889, 0.239113, -0.451017,
		0.155514, 0.964220, 0.214699,
		37.234993, 37.800713, 31.901365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305714, 37.470669, 31.108168>,  <37.126133, 37.125759, 31.751076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305714, 37.470669, 31.108168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382610, 37.775173, 31.355883>,  <37.428749, 37.957878, 31.504513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382610, 37.775173, 31.355883>,  <37.305714, 37.470669, 31.108168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382610, 37.775173, 31.355883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566056, 0.429477, -0.703655,
		-0.801638, 0.485824, -0.348355,
		0.192242, 0.761265, 0.619289,
		37.440285, 38.003551, 31.541670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035248, 38.075092, 30.770117>,  <37.305714, 37.470669, 31.108168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035248, 38.075092, 30.770117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316280, 38.181446, 31.034140>,  <37.484901, 38.245258, 31.192554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316280, 38.181446, 31.034140>,  <37.035248, 38.075092, 30.770117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316280, 38.181446, 31.034140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517405, 0.445928, -0.730371,
		-0.488535, 0.854665, 0.175731,
		0.702585, 0.265888, 0.660059,
		37.527058, 38.261211, 31.232157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260742, 38.701286, 30.577103>,  <37.035248, 38.075092, 30.770117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260742, 38.701286, 30.577103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573704, 38.610397, 30.809036>,  <37.761482, 38.555862, 30.948196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573704, 38.610397, 30.809036>,  <37.260742, 38.701286, 30.577103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573704, 38.610397, 30.809036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612231, 0.451175, -0.649319,
		-0.114065, 0.863024, 0.492117,
		0.782408, -0.227225, 0.579833,
		37.808426, 38.542229, 30.982986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646729, 39.282993, 30.796469>,  <37.260742, 38.701286, 30.577103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646729, 39.282993, 30.796469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902885, 38.975792, 30.793036>,  <38.056580, 38.791473, 30.790976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902885, 38.975792, 30.793036>,  <37.646729, 39.282993, 30.796469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902885, 38.975792, 30.793036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667211, 0.561815, -0.489074,
		0.380430, 0.307473, 0.872200,
		0.640392, -0.768000, -0.008582,
		38.095005, 38.745392, 30.790461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285080, 39.620037, 30.794645>,  <37.646729, 39.282993, 30.796469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285080, 39.620037, 30.794645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341007, 39.239876, 30.683521>,  <38.374565, 39.011780, 30.616846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341007, 39.239876, 30.683521>,  <38.285080, 39.620037, 30.794645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341007, 39.239876, 30.683521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852370, 0.258306, -0.454690,
		0.503900, -0.173222, 0.846214,
		0.139820, -0.950407, -0.277809,
		38.382954, 38.954754, 30.600178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991802, 39.577225, 30.945580>,  <38.285080, 39.620037, 30.794645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991802, 39.577225, 30.945580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854717, 39.294369, 30.698191>,  <38.772469, 39.124657, 30.549757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854717, 39.294369, 30.698191>,  <38.991802, 39.577225, 30.945580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854717, 39.294369, 30.698191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763207, 0.174302, -0.622201,
		0.547783, -0.685254, 0.479959,
		-0.342708, -0.707139, -0.618470,
		38.751904, 39.082226, 30.512650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636631, 39.340515, 30.720751>,  <38.991802, 39.577225, 30.945580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636631, 39.340515, 30.720751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376411, 39.193047, 30.455158>,  <39.220280, 39.104565, 30.295803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376411, 39.193047, 30.455158>,  <39.636631, 39.340515, 30.720751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376411, 39.193047, 30.455158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548987, 0.375843, -0.746562,
		0.524788, -0.850190, -0.042108,
		-0.650546, -0.368671, -0.663982,
		39.181248, 39.082447, 30.255964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000862, 38.959095, 30.171707>,  <39.636631, 39.340515, 30.720751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000862, 38.959095, 30.171707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644875, 38.986660, 29.991392>,  <39.431282, 39.003201, 29.883204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644875, 38.986660, 29.991392>,  <40.000862, 38.959095, 30.171707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644875, 38.986660, 29.991392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454825, 0.062420, -0.888391,
		-0.033087, -0.995668, -0.086897,
		-0.889966, 0.068917, -0.450789,
		39.377884, 39.007336, 29.856155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061733, 38.517296, 29.547596>,  <40.000862, 38.959095, 30.171707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061733, 38.517296, 29.547596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792992, 38.807384, 29.487375>,  <39.631744, 38.981438, 29.451242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792992, 38.807384, 29.487375>,  <40.061733, 38.517296, 29.547596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792992, 38.807384, 29.487375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332948, 0.114140, -0.936012,
		-0.661630, -0.678991, -0.318146,
		-0.671857, 0.725219, -0.150551,
		39.591434, 39.024952, 29.442209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784889, 38.471485, 28.809082>,  <40.061733, 38.517296, 29.547596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784889, 38.471485, 28.809082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687107, 38.840900, 28.927275>,  <39.628437, 39.062550, 28.998190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687107, 38.840900, 28.927275>,  <39.784889, 38.471485, 28.809082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687107, 38.840900, 28.927275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096431, 0.326372, -0.940310,
		-0.964854, -0.201371, -0.168841,
		-0.244456, 0.923543, 0.295483,
		39.613770, 39.117962, 29.015919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205139, 38.497189, 28.551474>,  <39.784889, 38.471485, 28.809082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205139, 38.497189, 28.551474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303238, 38.880768, 28.608440>,  <39.362095, 39.110916, 28.642620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303238, 38.880768, 28.608440>,  <39.205139, 38.497189, 28.551474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303238, 38.880768, 28.608440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012627, 0.143732, -0.989536,
		-0.969379, 0.244475, 0.023141,
		0.245243, 0.958944, 0.142418,
		39.376812, 39.168449, 28.651165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682961, 38.889317, 28.182037>,  <39.205139, 38.497189, 28.551474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682961, 38.889317, 28.182037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006310, 39.123096, 28.210175>,  <39.200321, 39.263363, 28.227057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006310, 39.123096, 28.210175>,  <38.682961, 38.889317, 28.182037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006310, 39.123096, 28.210175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035177, 0.167245, -0.985287,
		-0.587616, 0.794007, 0.155756,
		0.808375, 0.584450, 0.070345,
		39.248821, 39.298431, 28.231277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508453, 39.522911, 27.819366>,  <38.682961, 38.889317, 28.182037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508453, 39.522911, 27.819366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907970, 39.512383, 27.835987>,  <39.147678, 39.506065, 27.845961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907970, 39.512383, 27.835987>,  <38.508453, 39.522911, 27.819366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907970, 39.512383, 27.835987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044970, 0.146353, -0.988210,
		0.019925, 0.988882, 0.147359,
		0.998790, -0.026317, 0.041554,
		39.207607, 39.504486, 27.848454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715267, 40.133709, 27.418922>,  <38.508453, 39.522911, 27.819366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715267, 40.133709, 27.418922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025288, 39.882221, 27.444233>,  <39.211300, 39.731331, 27.459419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025288, 39.882221, 27.444233>,  <38.715267, 40.133709, 27.418922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025288, 39.882221, 27.444233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150994, 0.087036, -0.984696,
		0.613588, 0.772748, 0.162390,
		0.775055, -0.628718, 0.063276,
		39.257805, 39.693607, 27.463215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167538, 40.448891, 26.933210>,  <38.715267, 40.133709, 27.418922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167538, 40.448891, 26.933210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286510, 40.071594, 26.992308>,  <39.357895, 39.845215, 27.027767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286510, 40.071594, 26.992308>,  <39.167538, 40.448891, 26.933210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286510, 40.071594, 26.992308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350105, -0.036212, -0.936010,
		0.888234, 0.330128, 0.319462,
		0.297434, -0.943241, 0.147744,
		39.375740, 39.788620, 27.036631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792683, 40.479248, 26.645689>,  <39.167538, 40.448891, 26.933210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792683, 40.479248, 26.645689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707169, 40.088745, 26.659693>,  <39.655861, 39.854443, 26.668095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707169, 40.088745, 26.659693>,  <39.792683, 40.479248, 26.645689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707169, 40.088745, 26.659693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351572, -0.110326, -0.929637,
		0.911424, -0.186435, 0.366809,
		-0.213785, -0.976253, 0.035008,
		39.643032, 39.795868, 26.670195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397831, 40.051876, 26.442614>,  <39.792683, 40.479248, 26.645689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397831, 40.051876, 26.442614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075542, 39.823391, 26.379971>,  <39.882168, 39.686302, 26.342384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075542, 39.823391, 26.379971>,  <40.397831, 40.051876, 26.442614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075542, 39.823391, 26.379971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337132, -0.224895, -0.914201,
		0.486981, -0.789392, 0.373777,
		-0.805724, -0.571211, -0.156609,
		39.833824, 39.652027, 26.332987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715115, 39.530983, 26.109381>,  <40.397831, 40.051876, 26.442614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715115, 39.530983, 26.109381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329041, 39.483635, 26.016079>,  <40.097397, 39.455227, 25.960098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329041, 39.483635, 26.016079>,  <40.715115, 39.530983, 26.109381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329041, 39.483635, 26.016079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248478, -0.136297, -0.959000,
		0.081729, -0.983570, 0.160966,
		-0.965183, -0.118375, -0.233257,
		40.039486, 39.448124, 25.946102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594448, 38.945698, 25.778399>,  <40.715115, 39.530983, 26.109381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594448, 38.945698, 25.778399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275791, 39.154583, 25.656643>,  <40.084599, 39.279915, 25.583590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275791, 39.154583, 25.656643>,  <40.594448, 38.945698, 25.778399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275791, 39.154583, 25.656643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317846, -0.066423, -0.945813,
		-0.514133, -0.850225, -0.113067,
		-0.796643, 0.522212, -0.304390,
		40.036797, 39.311245, 25.565327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318520, 38.554611, 25.272263>,  <40.594448, 38.945698, 25.778399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318520, 38.554611, 25.272263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203785, 38.933445, 25.214624>,  <40.134945, 39.160744, 25.180042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203785, 38.933445, 25.214624>,  <40.318520, 38.554611, 25.272263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203785, 38.933445, 25.214624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323865, -0.045692, -0.944999,
		-0.901576, -0.317724, -0.293621,
		-0.286833, 0.947082, -0.144095,
		40.117737, 39.217571, 25.171396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034676, 38.535877, 24.609444>,  <40.318520, 38.554611, 25.272263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034676, 38.535877, 24.609444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085789, 38.927979, 24.669821>,  <40.116455, 39.163239, 24.706047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085789, 38.927979, 24.669821>,  <40.034676, 38.535877, 24.609444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085789, 38.927979, 24.669821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367977, 0.094471, -0.925023,
		-0.921013, 0.173745, -0.348638,
		0.127782, 0.980249, 0.150943,
		40.124123, 39.222054, 24.715103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701908, 38.766891, 24.030848>,  <40.034676, 38.535877, 24.609444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701908, 38.766891, 24.030848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939075, 39.062420, 24.158964>,  <40.081375, 39.239738, 24.235834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939075, 39.062420, 24.158964>,  <39.701908, 38.766891, 24.030848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939075, 39.062420, 24.158964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476238, -0.000993, -0.879316,
		-0.649341, 0.673898, -0.352445,
		0.592919, 0.738824, 0.320291,
		40.116951, 39.284065, 24.255051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622177, 39.333248, 23.562864>,  <39.701908, 38.766891, 24.030848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622177, 39.333248, 23.562864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979649, 39.419975, 23.720007>,  <40.194130, 39.472012, 23.814293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979649, 39.419975, 23.720007>,  <39.622177, 39.333248, 23.562864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979649, 39.419975, 23.720007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407802, -0.027200, -0.912665,
		-0.187193, 0.975834, -0.112725,
		0.893676, 0.216814, 0.392856,
		40.247753, 39.485020, 23.837864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789375, 39.845337, 23.181889>,  <39.622177, 39.333248, 23.562864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789375, 39.845337, 23.181889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140339, 39.735996, 23.339584>,  <40.350918, 39.670391, 23.434202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140339, 39.735996, 23.339584>,  <39.789375, 39.845337, 23.181889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140339, 39.735996, 23.339584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413963, 0.016094, -0.910151,
		0.242449, 0.961779, 0.127279,
		0.877413, -0.273354, 0.394239,
		40.403564, 39.653992, 23.457855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333870, 40.341461, 22.805845>,  <39.789375, 39.845337, 23.181889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333870, 40.341461, 22.805845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509918, 40.009949, 22.944073>,  <40.615547, 39.811043, 23.027008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509918, 40.009949, 22.944073>,  <40.333870, 40.341461, 22.805845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509918, 40.009949, 22.944073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620018, 0.002123, -0.784584,
		0.649513, 0.559573, 0.514792,
		0.440125, -0.828778, 0.345567,
		40.641956, 39.761314, 23.047743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057251, 40.494831, 22.893209>,  <40.333870, 40.341461, 22.805845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057251, 40.494831, 22.893209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029797, 40.098633, 22.845526>,  <41.013325, 39.860916, 22.816916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029797, 40.098633, 22.845526>,  <41.057251, 40.494831, 22.893209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029797, 40.098633, 22.845526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689295, 0.039304, -0.723414,
		0.721223, -0.131821, 0.680045,
		-0.068633, -0.990494, -0.119210,
		41.009205, 39.801483, 22.809763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690208, 40.297283, 22.724897>,  <41.057251, 40.494831, 22.893209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690208, 40.297283, 22.724897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471046, 39.979961, 22.618715>,  <41.339550, 39.789566, 22.555006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471046, 39.979961, 22.618715>,  <41.690208, 40.297283, 22.724897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471046, 39.979961, 22.618715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454570, -0.015953, -0.890568,
		0.702260, -0.608612, 0.369355,
		-0.547903, -0.793308, -0.265454,
		41.306675, 39.741970, 22.539080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185905, 39.630653, 22.646841>,  <41.690208, 40.297283, 22.724897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185905, 39.630653, 22.646841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856915, 39.609810, 22.420279>,  <41.659519, 39.597301, 22.284342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856915, 39.609810, 22.420279>,  <42.185905, 39.630653, 22.646841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856915, 39.609810, 22.420279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568329, -0.115768, -0.814617,
		-0.023119, -0.991908, 0.124834,
		-0.822477, -0.052113, -0.566407,
		41.610172, 39.594177, 22.250357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255173, 39.033508, 22.244614>,  <42.185905, 39.630653, 22.646841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255173, 39.033508, 22.244614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982231, 39.255882, 22.054735>,  <41.818466, 39.389305, 21.940809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982231, 39.255882, 22.054735>,  <42.255173, 39.033508, 22.244614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982231, 39.255882, 22.054735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373668, -0.292864, -0.880115,
		-0.628304, -0.777928, -0.007897,
		-0.682353, 0.555931, -0.474694,
		41.777527, 39.422661, 21.912327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906044, 38.641285, 21.650469>,  <42.255173, 39.033508, 22.244614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906044, 38.641285, 21.650469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965816, 39.035759, 21.621870>,  <42.001682, 39.272442, 21.604712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965816, 39.035759, 21.621870>,  <41.906044, 38.641285, 21.650469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965816, 39.035759, 21.621870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359631, -0.121564, -0.925142,
		-0.921051, 0.112535, -0.372828,
		0.149434, 0.986184, -0.071495,
		42.010647, 39.331615, 21.600422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891953, 38.078720, 21.161112>,  <41.906044, 38.641285, 21.650469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891953, 38.078720, 21.161112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057110, 37.720303, 21.095840>,  <42.156204, 37.505253, 21.056679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057110, 37.720303, 21.095840>,  <41.891953, 38.078720, 21.161112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057110, 37.720303, 21.095840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348299, -0.320888, 0.880749,
		-0.841549, -0.306824, -0.444583,
		0.412896, -0.896041, -0.163176,
		42.180981, 37.451488, 21.046888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363674, 37.574619, 21.204268>,  <41.891953, 38.078720, 21.161112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363674, 37.574619, 21.204268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697445, 37.366199, 21.276087>,  <41.897709, 37.241150, 21.319178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697445, 37.366199, 21.276087>,  <41.363674, 37.574619, 21.204268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697445, 37.366199, 21.276087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399249, -0.346941, 0.848665,
		-0.379909, -0.779830, -0.497527,
		0.834427, -0.521053, 0.179541,
		41.947773, 37.209885, 21.329950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259373, 36.785870, 21.365129>,  <41.363674, 37.574619, 21.204268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259373, 36.785870, 21.365129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623646, 36.877892, 21.502380>,  <41.842209, 36.933105, 21.584730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623646, 36.877892, 21.502380>,  <41.259373, 36.785870, 21.365129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623646, 36.877892, 21.502380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240031, -0.381334, 0.892731,
		0.336220, -0.895355, -0.292054,
		0.910682, 0.230052, 0.343125,
		41.896851, 36.946907, 21.605318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579102, 36.219501, 21.750828>,  <41.259373, 36.785870, 21.365129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579102, 36.219501, 21.750828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742577, 36.554398, 21.896160>,  <41.840660, 36.755333, 21.983360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742577, 36.554398, 21.896160>,  <41.579102, 36.219501, 21.750828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742577, 36.554398, 21.896160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320027, -0.241358, 0.916149,
		0.854726, -0.490695, 0.169298,
		0.408689, 0.837236, 0.363331,
		41.865185, 36.805569, 22.005159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812641, 36.104748, 22.405045>,  <41.579102, 36.219501, 21.750828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812641, 36.104748, 22.405045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815262, 36.503574, 22.435530>,  <41.816833, 36.742870, 22.453821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815262, 36.503574, 22.435530>,  <41.812641, 36.104748, 22.405045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815262, 36.503574, 22.435530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154145, -0.074295, 0.985251,
		0.988026, -0.018201, 0.153207,
		0.006550, 0.997070, 0.076211,
		41.817226, 36.802696, 22.458393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257668, 36.163067, 22.975639>,  <41.812641, 36.104748, 22.405045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257668, 36.163067, 22.975639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062847, 36.510353, 22.937717>,  <41.945957, 36.718723, 22.914965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062847, 36.510353, 22.937717>,  <42.257668, 36.163067, 22.975639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062847, 36.510353, 22.937717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088874, 0.058717, 0.994311,
		0.868842, 0.492703, 0.048563,
		-0.487048, 0.868214, -0.094804,
		41.916733, 36.770817, 22.909277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634846, 36.658440, 23.445950>,  <42.257668, 36.163067, 22.975639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634846, 36.658440, 23.445950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253143, 36.769840, 23.402447>,  <42.024120, 36.836681, 23.376345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253143, 36.769840, 23.402447>,  <42.634846, 36.658440, 23.445950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253143, 36.769840, 23.402447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105295, 0.027402, 0.994063,
		0.279826, 0.960045, 0.003176,
		-0.954259, 0.278499, -0.108756,
		41.966866, 36.853390, 23.369820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528484, 37.117210, 23.913347>,  <42.634846, 36.658440, 23.445950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528484, 37.117210, 23.913347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144157, 37.029743, 23.845207>,  <41.913563, 36.977264, 23.804323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144157, 37.029743, 23.845207>,  <42.528484, 37.117210, 23.913347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144157, 37.029743, 23.845207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190920, 0.076504, 0.978620,
		-0.200961, 0.972795, -0.115255,
		-0.960814, -0.218669, -0.170352,
		41.855911, 36.964142, 23.794102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180557, 37.598656, 24.405684>,  <42.528484, 37.117210, 23.913347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180557, 37.598656, 24.405684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914547, 37.313427, 24.316904>,  <41.754940, 37.142288, 24.263638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914547, 37.313427, 24.316904>,  <42.180557, 37.598656, 24.405684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914547, 37.313427, 24.316904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301693, -0.015347, 0.953282,
		-0.683167, 0.700920, -0.204924,
		-0.665029, -0.713075, -0.221947,
		41.715038, 37.099503, 24.250320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517570, 37.741772, 24.679630>,  <42.180557, 37.598656, 24.405684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517570, 37.741772, 24.679630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511505, 37.344913, 24.629957>,  <41.507866, 37.106800, 24.600153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511505, 37.344913, 24.629957>,  <41.517570, 37.741772, 24.679630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511505, 37.344913, 24.629957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426175, -0.105938, 0.898416,
		-0.904514, 0.066545, -0.421221,
		-0.015162, -0.992144, -0.124182,
		41.506958, 37.047272, 24.592703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801098, 37.536617, 24.913132>,  <41.517570, 37.741772, 24.679630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801098, 37.536617, 24.913132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015945, 37.199409, 24.901747>,  <41.144855, 36.997086, 24.894915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015945, 37.199409, 24.901747>,  <40.801098, 37.536617, 24.913132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015945, 37.199409, 24.901747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491071, -0.339960, 0.802045,
		-0.685820, -0.416819, -0.596585,
		0.537122, -0.843024, -0.028464,
		41.177082, 36.946503, 24.893208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318748, 36.981560, 24.944471>,  <40.801098, 37.536617, 24.913132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318748, 36.981560, 24.944471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677628, 36.872169, 25.083181>,  <40.892956, 36.806534, 25.166407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677628, 36.872169, 25.083181>,  <40.318748, 36.981560, 24.944471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677628, 36.872169, 25.083181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407006, -0.207216, 0.889611,
		-0.171423, -0.939296, -0.297216,
		0.897196, -0.273469, 0.346777,
		40.946785, 36.790127, 25.187214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202824, 36.326363, 25.128206>,  <40.318748, 36.981560, 24.944471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202824, 36.326363, 25.128206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519524, 36.476070, 25.321308>,  <40.709545, 36.565895, 25.437168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519524, 36.476070, 25.321308>,  <40.202824, 36.326363, 25.128206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519524, 36.476070, 25.321308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425059, -0.230010, 0.875454,
		0.438696, -0.898340, -0.023022,
		0.791751, 0.374273, 0.482752,
		40.757050, 36.588352, 25.466133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491547, 35.769989, 25.605001>,  <40.202824, 36.326363, 25.128206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491547, 35.769989, 25.605001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598804, 36.122650, 25.760330>,  <40.663158, 36.334248, 25.853527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598804, 36.122650, 25.760330>,  <40.491547, 35.769989, 25.605001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598804, 36.122650, 25.760330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317609, -0.299643, 0.899633,
		0.909517, -0.364568, 0.199671,
		0.268148, 0.881648, 0.388320,
		40.679249, 36.387146, 25.876825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660862, 35.588131, 26.287460>,  <40.491547, 35.769989, 25.605001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660862, 35.588131, 26.287460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643154, 35.986279, 26.321606>,  <40.632530, 36.225166, 26.342093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643154, 35.986279, 26.321606>,  <40.660862, 35.588131, 26.287460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643154, 35.986279, 26.321606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302264, -0.094789, 0.948500,
		0.952196, 0.016189, 0.305060,
		-0.044272, 0.995366, 0.085364,
		40.629871, 36.284889, 26.347216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064831, 35.742207, 26.898539>,  <40.660862, 35.588131, 26.287460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064831, 35.742207, 26.898539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815617, 36.049866, 26.841627>,  <40.666088, 36.234463, 26.807480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815617, 36.049866, 26.841627>,  <41.064831, 35.742207, 26.898539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815617, 36.049866, 26.841627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163890, 0.049498, 0.985236,
		0.764835, 0.637151, 0.095217,
		-0.623031, 0.769148, -0.142280,
		40.628708, 36.280609, 26.798943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250660, 36.267357, 27.317476>,  <41.064831, 35.742207, 26.898539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250660, 36.267357, 27.317476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863621, 36.333355, 27.241020>,  <40.631397, 36.372955, 27.195147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863621, 36.333355, 27.241020>,  <41.250660, 36.267357, 27.317476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863621, 36.333355, 27.241020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183722, 0.059245, 0.981191,
		0.173216, 0.984513, -0.027012,
		-0.967596, 0.164995, -0.191139,
		40.573341, 36.382854, 27.183678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126453, 36.837154, 27.713192>,  <41.250660, 36.267357, 27.317476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126453, 36.837154, 27.713192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764301, 36.691635, 27.625608>,  <40.547009, 36.604324, 27.573057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764301, 36.691635, 27.625608>,  <41.126453, 36.837154, 27.713192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764301, 36.691635, 27.625608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316398, 0.234128, 0.919280,
		-0.283164, 0.901575, -0.327078,
		-0.905379, -0.363794, -0.218960,
		40.492687, 36.582497, 27.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714764, 37.273918, 28.138025>,  <41.126453, 36.837154, 27.713192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714764, 37.273918, 28.138025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479092, 36.969025, 28.030800>,  <40.337688, 36.786087, 27.966465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479092, 36.969025, 28.030800>,  <40.714764, 37.273918, 28.138025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479092, 36.969025, 28.030800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360762, -0.048697, 0.931386,
		-0.722991, 0.645463, -0.246296,
		-0.589181, -0.762238, -0.268066,
		40.302338, 36.740353, 27.950380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095516, 37.485058, 28.417795>,  <40.714764, 37.273918, 28.138025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095516, 37.485058, 28.417795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072094, 37.088818, 28.368336>,  <40.058041, 36.851074, 28.338659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072094, 37.088818, 28.368336>,  <40.095516, 37.485058, 28.417795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072094, 37.088818, 28.368336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327435, -0.097951, 0.939783,
		-0.943058, 0.095521, -0.318620,
		-0.058560, -0.990597, -0.123650,
		40.054527, 36.791637, 28.331242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266060, 37.170464, 28.443405>,  <40.095516, 37.485058, 28.417795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266060, 37.170464, 28.443405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521385, 36.892292, 28.575428>,  <39.674580, 36.725388, 28.654642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521385, 36.892292, 28.575428>,  <39.266060, 37.170464, 28.443405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521385, 36.892292, 28.575428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460400, -0.001271, 0.887711,
		-0.616919, -0.718595, -0.320987,
		0.638312, -0.695428, 0.330057,
		39.712879, 36.683662, 28.674446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965000, 36.910454, 28.996960>,  <39.266060, 37.170464, 28.443405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965000, 36.910454, 28.996960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295959, 36.691685, 29.048002>,  <39.494537, 36.560425, 29.078627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295959, 36.691685, 29.048002>,  <38.965000, 36.910454, 28.996960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295959, 36.691685, 29.048002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195106, -0.066864, 0.978500,
		-0.526631, -0.834509, -0.162031,
		0.827402, -0.546922, 0.127605,
		39.544182, 36.527607, 29.086285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776329, 36.216499, 29.321503>,  <38.965000, 36.910454, 28.996960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776329, 36.216499, 29.321503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146278, 36.351688, 29.391226>,  <39.368248, 36.432800, 29.433060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146278, 36.351688, 29.391226>,  <38.776329, 36.216499, 29.321503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146278, 36.351688, 29.391226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172360, -0.036010, 0.984375,
		0.338967, -0.940467, 0.024948,
		0.924875, 0.337971, 0.174306,
		39.423740, 36.453079, 29.443518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795956, 35.896328, 29.980125>,  <38.776329, 36.216499, 29.321503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795956, 35.896328, 29.980125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154007, 36.073345, 29.958574>,  <39.368835, 36.179558, 29.945642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154007, 36.073345, 29.958574>,  <38.795956, 35.896328, 29.980125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154007, 36.073345, 29.958574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068250, -0.016599, 0.997530,
		0.440559, -0.896592, -0.045062,
		0.895125, 0.442546, -0.053880,
		39.422546, 36.206108, 29.942410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359982, 35.490101, 30.253391>,  <38.795956, 35.896328, 29.980125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359982, 35.490101, 30.253391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480698, 35.870930, 30.273281>,  <39.553127, 36.099426, 30.285215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480698, 35.870930, 30.273281>,  <39.359982, 35.490101, 30.253391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480698, 35.870930, 30.273281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085492, -0.024920, 0.996027,
		0.949533, -0.304844, 0.073874,
		0.301792, 0.952076, 0.049724,
		39.571236, 36.156551, 30.288198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820000, 35.510529, 30.811697>,  <39.359982, 35.490101, 30.253391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820000, 35.510529, 30.811697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754391, 35.898827, 30.741552>,  <39.715023, 36.131805, 30.699467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754391, 35.898827, 30.741552>,  <39.820000, 35.510529, 30.811697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754391, 35.898827, 30.741552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135546, 0.198261, 0.970732,
		0.977099, 0.135454, -0.164100,
		-0.164025, 0.970744, -0.175360,
		39.705185, 36.190048, 30.688944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389339, 35.896450, 31.098186>,  <39.820000, 35.510529, 30.811697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389339, 35.896450, 31.098186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040825, 36.092243, 31.083941>,  <39.831715, 36.209721, 31.075394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040825, 36.092243, 31.083941>,  <40.389339, 35.896450, 31.098186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040825, 36.092243, 31.083941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014383, 0.098000, 0.995082,
		0.490566, 0.866489, -0.092426,
		-0.871285, 0.489483, -0.035613,
		39.779438, 36.239090, 31.073257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565941, 36.328247, 31.631233>,  <40.389339, 35.896450, 31.098186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565941, 36.328247, 31.631233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170742, 36.356323, 31.576181>,  <39.933624, 36.373169, 31.543150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170742, 36.356323, 31.576181>,  <40.565941, 36.328247, 31.631233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170742, 36.356323, 31.576181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130040, 0.103141, 0.986130,
		0.083412, 0.992187, -0.092775,
		-0.987994, 0.070190, -0.137627,
		39.874344, 36.377380, 31.534893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356495, 36.878708, 32.102406>,  <40.565941, 36.328247, 31.631233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356495, 36.878708, 32.102406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029144, 36.666523, 32.013977>,  <39.832733, 36.539211, 31.960920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029144, 36.666523, 32.013977>,  <40.356495, 36.878708, 32.102406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029144, 36.666523, 32.013977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281879, 0.035296, 0.958800,
		-0.500805, 0.846973, -0.178412,
		-0.818375, -0.530463, -0.221067,
		39.783630, 36.507385, 31.947657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841084, 37.304386, 32.364704>,  <40.356495, 36.878708, 32.102406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841084, 37.304386, 32.364704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677895, 36.939842, 32.342876>,  <39.579983, 36.721115, 32.329781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677895, 36.939842, 32.342876>,  <39.841084, 37.304386, 32.364704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677895, 36.939842, 32.342876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387675, 0.118803, 0.914108,
		-0.826601, 0.394084, -0.401781,
		-0.407969, -0.911363, -0.054574,
		39.555504, 36.666431, 32.326504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191795, 37.394924, 32.561066>,  <39.841084, 37.304386, 32.364704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191795, 37.394924, 32.561066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304935, 37.022739, 32.654221>,  <39.372822, 36.799431, 32.710114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304935, 37.022739, 32.654221>,  <39.191795, 37.394924, 32.561066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304935, 37.022739, 32.654221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358268, 0.122743, 0.925515,
		-0.889740, -0.345223, -0.298636,
		0.282853, -0.930460, 0.232891,
		39.389793, 36.743603, 32.724087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687092, 37.178841, 33.028046>,  <39.191795, 37.394924, 32.561066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687092, 37.178841, 33.028046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965759, 36.901039, 33.099964>,  <39.132957, 36.734360, 33.143116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965759, 36.901039, 33.099964>,  <38.687092, 37.178841, 33.028046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965759, 36.901039, 33.099964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315434, -0.071447, 0.946254,
		-0.644328, -0.715936, -0.268844,
		0.696665, -0.694501, 0.179795,
		39.174759, 36.692688, 33.153904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326981, 36.685310, 33.461246>,  <38.687092, 37.178841, 33.028046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326981, 36.685310, 33.461246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716393, 36.602345, 33.499664>,  <38.950039, 36.552567, 33.522717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716393, 36.602345, 33.499664>,  <38.326981, 36.685310, 33.461246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716393, 36.602345, 33.499664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125368, -0.133176, 0.983131,
		-0.191127, -0.969145, -0.155654,
		0.973526, -0.207417, 0.096046,
		39.008450, 36.540123, 33.528477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340576, 36.203018, 34.006149>,  <38.326981, 36.685310, 33.461246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340576, 36.203018, 34.006149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723820, 36.317318, 33.998363>,  <38.953766, 36.385899, 33.993694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723820, 36.317318, 33.998363>,  <38.340576, 36.203018, 34.006149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723820, 36.317318, 33.998363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070903, -0.170804, 0.982750,
		0.277492, -0.942961, -0.183909,
		0.958108, 0.285745, -0.019462,
		39.011253, 36.403042, 33.992523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672966, 35.709366, 34.300579>,  <38.340576, 36.203018, 34.006149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672966, 35.709366, 34.300579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916668, 36.020985, 34.359768>,  <39.062889, 36.207954, 34.395283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916668, 36.020985, 34.359768>,  <38.672966, 35.709366, 34.300579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916668, 36.020985, 34.359768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109063, -0.267153, 0.957462,
		0.785437, -0.567202, -0.247730,
		0.609257, 0.779045, 0.147971,
		39.099445, 36.254700, 34.404160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372128, 35.495407, 34.536316>,  <38.672966, 35.709366, 34.300579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372128, 35.495407, 34.536316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332283, 35.866852, 34.679291>,  <39.308376, 36.089718, 34.765076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332283, 35.866852, 34.679291>,  <39.372128, 35.495407, 34.536316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332283, 35.866852, 34.679291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136720, -0.343048, 0.929315,
		0.985589, 0.141436, -0.092789,
		-0.099607, 0.928609, 0.357441,
		39.302402, 36.145435, 34.786522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929558, 35.504726, 35.039249>,  <39.372128, 35.495407, 34.536316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929558, 35.504726, 35.039249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663933, 35.787766, 35.135857>,  <39.504559, 35.957588, 35.193821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663933, 35.787766, 35.135857>,  <39.929558, 35.504726, 35.039249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663933, 35.787766, 35.135857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107398, -0.229406, 0.967387,
		0.739924, 0.668344, 0.076346,
		-0.664062, 0.707594, 0.241522,
		39.464714, 36.000042, 35.208313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171158, 35.815010, 35.675228>,  <39.929558, 35.504726, 35.039249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171158, 35.815010, 35.675228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807114, 35.980530, 35.683796>,  <39.588684, 36.079842, 35.688938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807114, 35.980530, 35.683796>,  <40.171158, 35.815010, 35.675228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807114, 35.980530, 35.683796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084150, -0.235210, 0.968295,
		0.405720, 0.879457, 0.248889,
		-0.910115, 0.413801, 0.021423,
		39.534081, 36.104671, 35.690224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109047, 36.171535, 36.280411>,  <40.171158, 35.815010, 35.675228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109047, 36.171535, 36.280411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728111, 36.127167, 36.166752>,  <39.499550, 36.100544, 36.098557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728111, 36.127167, 36.166752>,  <40.109047, 36.171535, 36.280411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728111, 36.127167, 36.166752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231523, -0.343633, 0.910118,
		-0.198596, 0.932530, 0.301575,
		-0.952343, -0.110924, -0.284146,
		39.442410, 36.093891, 36.081509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731823, 36.522678, 36.775505>,  <40.109047, 36.171535, 36.280411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731823, 36.522678, 36.775505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456703, 36.283360, 36.611084>,  <39.291630, 36.139767, 36.512432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456703, 36.283360, 36.611084>,  <39.731823, 36.522678, 36.775505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456703, 36.283360, 36.611084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241269, -0.345656, 0.906814,
		-0.684632, 0.722881, 0.093390,
		-0.687800, -0.598302, -0.411056,
		39.250362, 36.103870, 36.487766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263100, 37.067734, 36.985741>,  <39.731823, 36.522678, 36.775505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263100, 37.067734, 36.985741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563911, 37.248775, 37.177402>,  <40.744400, 37.357403, 37.292400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563911, 37.248775, 37.177402>,  <40.263100, 37.067734, 36.985741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563911, 37.248775, 37.177402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575329, -0.805480, -0.142121,
		0.321628, 0.382554, -0.866145,
		0.752032, 0.452609, 0.479159,
		40.789520, 37.384560, 37.321152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854286, 36.871590, 36.577808>,  <40.263100, 37.067734, 36.985741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854286, 36.871590, 36.577808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016685, 36.991764, 36.923038>,  <41.114124, 37.063869, 37.130177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016685, 36.991764, 36.923038>,  <40.854286, 36.871590, 36.577808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016685, 36.991764, 36.923038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670114, -0.740017, -0.057633,
		0.621378, 0.601760, -0.501772,
		0.406001, 0.300432, 0.863078,
		41.138485, 37.081894, 37.181961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589645, 36.841057, 36.457283>,  <40.854286, 36.871590, 36.577808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589645, 36.841057, 36.457283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566113, 36.835854, 36.856556>,  <41.551994, 36.832729, 37.096119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566113, 36.835854, 36.856556>,  <41.589645, 36.841057, 36.457283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566113, 36.835854, 36.856556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822882, -0.566723, 0.041112,
		0.565159, 0.823806, 0.044047,
		-0.058831, -0.013011, 0.998183,
		41.548462, 36.831951, 37.156010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219315, 36.472336, 36.639080>,  <41.589645, 36.841057, 36.457283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219315, 36.472336, 36.639080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041664, 36.522060, 36.993999>,  <41.935074, 36.551895, 37.206951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041664, 36.522060, 36.993999>,  <42.219315, 36.472336, 36.639080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041664, 36.522060, 36.993999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590615, -0.704082, 0.394262,
		0.673743, 0.699154, 0.239278,
		-0.444122, 0.124310, 0.887301,
		41.908428, 36.559353, 37.260189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772774, 36.570805, 37.190998>,  <42.219315, 36.472336, 36.639080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772774, 36.570805, 37.190998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422222, 36.418327, 37.308739>,  <42.211891, 36.326839, 37.379383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422222, 36.418327, 37.308739>,  <42.772774, 36.570805, 37.190998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422222, 36.418327, 37.308739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469187, -0.813701, 0.343154,
		0.108703, 0.438840, 0.891966,
		-0.876383, -0.381196, 0.294350,
		42.159306, 36.303970, 37.397045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762943, 36.233410, 37.913414>,  <42.772774, 36.570805, 37.190998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762943, 36.233410, 37.913414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447384, 36.043102, 37.757835>,  <42.258049, 35.928917, 37.664490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447384, 36.043102, 37.757835>,  <42.762943, 36.233410, 37.913414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447384, 36.043102, 37.757835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404537, -0.878513, 0.254097,
		-0.462586, 0.043114, 0.885526,
		-0.788900, -0.475770, -0.388946,
		42.210712, 35.900372, 37.641151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578957, 35.721123, 38.310951>,  <42.762943, 36.233410, 37.913414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578957, 35.721123, 38.310951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451668, 35.602242, 37.950863>,  <42.375294, 35.530910, 37.734810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451668, 35.602242, 37.950863>,  <42.578957, 35.721123, 38.310951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451668, 35.602242, 37.950863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338977, -0.922480, 0.184729,
		-0.885343, -0.246371, 0.394297,
		-0.318219, -0.297206, -0.900225,
		42.356201, 35.513081, 37.680794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291264, 35.191536, 38.448723>,  <42.578957, 35.721123, 38.310951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291264, 35.191536, 38.448723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377781, 35.149414, 38.060471>,  <42.429691, 35.124142, 37.827518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377781, 35.149414, 38.060471>,  <42.291264, 35.191536, 38.448723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377781, 35.149414, 38.060471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299334, -0.939136, 0.168591,
		-0.929310, -0.327008, -0.171607,
		0.216293, -0.105306, -0.970633,
		42.442669, 35.117821, 37.769279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880543, 34.565281, 38.212070>,  <42.291264, 35.191536, 38.448723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880543, 34.565281, 38.212070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176933, 34.652824, 37.958122>,  <42.354767, 34.705353, 37.805756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176933, 34.652824, 37.958122>,  <41.880543, 34.565281, 38.212070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176933, 34.652824, 37.958122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348992, -0.933207, 0.085609,
		-0.573726, -0.284997, -0.767864,
		0.740974, 0.218862, -0.634867,
		42.399227, 34.718483, 37.767662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889549, 34.084831, 37.613949>,  <41.880543, 34.565281, 38.212070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889549, 34.084831, 37.613949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255928, 34.211395, 37.712688>,  <42.475754, 34.287334, 37.771931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255928, 34.211395, 37.712688>,  <41.889549, 34.084831, 37.613949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255928, 34.211395, 37.712688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268879, -0.940485, 0.207829,
		0.297916, -0.123987, -0.946506,
		0.915942, 0.316411, 0.246848,
		42.530712, 34.306320, 37.786743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292061, 33.439720, 37.945663>,  <41.889549, 34.084831, 37.613949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292061, 33.439720, 37.945663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584515, 33.700653, 37.865753>,  <42.759987, 33.857212, 37.817806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584515, 33.700653, 37.865753>,  <42.292061, 33.439720, 37.945663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584515, 33.700653, 37.865753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678726, -0.665829, 0.309843,
		0.069103, -0.362130, -0.929563,
		0.731133, 0.652330, -0.199776,
		42.803856, 33.896351, 37.805820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773441, 33.025280, 37.616280>,  <42.292061, 33.439720, 37.945663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773441, 33.025280, 37.616280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959370, 33.349628, 37.758507>,  <43.070927, 33.544239, 37.843845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959370, 33.349628, 37.758507>,  <42.773441, 33.025280, 37.616280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959370, 33.349628, 37.758507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787798, -0.562059, 0.251922,
		0.404128, 0.163020, -0.900059,
		0.464818, 0.810873, 0.355570,
		43.098816, 33.592892, 37.865177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480579, 32.944042, 37.478180>,  <42.773441, 33.025280, 37.616280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480579, 32.944042, 37.478180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455170, 33.193211, 37.790058>,  <43.439922, 33.342712, 37.977184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455170, 33.193211, 37.790058>,  <43.480579, 32.944042, 37.478180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455170, 33.193211, 37.790058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821464, -0.411014, 0.395303,
		0.566711, 0.665607, -0.485598,
		-0.063528, 0.622924, 0.779699,
		43.436111, 33.380089, 38.023968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176495, 33.277081, 37.498295>,  <43.480579, 32.944042, 37.478180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176495, 33.277081, 37.498295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036182, 33.255341, 37.872246>,  <43.951996, 33.242294, 38.096615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036182, 33.255341, 37.872246>,  <44.176495, 33.277081, 37.498295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036182, 33.255341, 37.872246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869251, -0.390271, 0.303466,
		0.348362, 0.919094, 0.184146,
		-0.350781, -0.054353, 0.934879,
		43.930946, 33.239033, 38.152710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701180, 33.561855, 37.874218>,  <44.176495, 33.277081, 37.498295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701180, 33.561855, 37.874218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489285, 33.302628, 38.093082>,  <44.362148, 33.147091, 38.224400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489285, 33.302628, 38.093082>,  <44.701180, 33.561855, 37.874218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489285, 33.302628, 38.093082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835043, -0.511527, 0.202592,
		0.148593, 0.564224, 0.812140,
		-0.529739, -0.648068, 0.547161,
		44.330364, 33.108208, 38.257229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049500, 33.551750, 38.512691>,  <44.701180, 33.561855, 37.874218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049500, 33.551750, 38.512691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828438, 33.223942, 38.452091>,  <44.695801, 33.027256, 38.415730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828438, 33.223942, 38.452091>,  <45.049500, 33.551750, 38.512691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828438, 33.223942, 38.452091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692475, -0.552699, 0.463683,
		-0.463735, 0.151345, 0.872952,
		-0.552656, -0.819523, -0.151503,
		44.662640, 32.978085, 38.406639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043324, 33.274754, 39.116673>,  <45.049500, 33.551750, 38.512691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043324, 33.274754, 39.116673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915665, 32.963303, 38.900562>,  <44.839069, 32.776432, 38.770897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915665, 32.963303, 38.900562>,  <45.043324, 33.274754, 39.116673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915665, 32.963303, 38.900562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641994, -0.596973, 0.481110,
		-0.697131, -0.193308, 0.690392,
		-0.319143, -0.778624, -0.540271,
		44.819923, 32.729717, 38.738480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160358, 32.795082, 39.482582>,  <45.043324, 33.274754, 39.116673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160358, 32.795082, 39.482582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114010, 32.579102, 39.149109>,  <45.086201, 32.449512, 38.949024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114010, 32.579102, 39.149109>,  <45.160358, 32.795082, 39.482582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114010, 32.579102, 39.149109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602409, -0.705550, 0.373231,
		-0.789732, -0.458972, 0.407024,
		-0.115873, -0.539947, -0.833685,
		45.079247, 32.417118, 38.899002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811981, 32.117138, 39.620453>,  <45.160358, 32.795082, 39.482582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811981, 32.117138, 39.620453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056297, 32.078403, 39.306114>,  <45.202888, 32.055164, 39.117512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056297, 32.078403, 39.306114>,  <44.811981, 32.117138, 39.620453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056297, 32.078403, 39.306114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448249, -0.775848, 0.443997,
		-0.652691, -0.623445, -0.430477,
		0.610793, -0.096832, -0.785847,
		45.239536, 32.049355, 39.070358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793999, 31.368361, 39.349445>,  <44.811981, 32.117138, 39.620453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793999, 31.368361, 39.349445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139496, 31.537815, 39.240276>,  <45.346794, 31.639488, 39.174774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139496, 31.537815, 39.240276>,  <44.793999, 31.368361, 39.349445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139496, 31.537815, 39.240276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503835, -0.715030, 0.484646,
		0.010169, -0.556115, -0.831044,
		0.863740, 0.423637, -0.272919,
		45.398617, 31.664906, 39.158401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382439, 30.901262, 38.986042>,  <44.793999, 31.368361, 39.349445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382439, 30.901262, 38.986042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482491, 31.157415, 39.276516>,  <45.542522, 31.311108, 39.450802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.482491, 31.157415, 39.276516>,  <45.382439, 30.901262, 38.986042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482491, 31.157415, 39.276516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535139, -0.716494, 0.447508,
		0.806883, 0.276673, -0.521912,
		0.250134, 0.640381, 0.726185,
		45.557529, 31.349529, 39.494373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.711784, 30.874289, 39.727638>,  <45.382439, 30.901262, 38.986042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.711784, 30.874289, 39.727638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076725, 30.923943, 39.571583>,  <46.295689, 30.953735, 39.477951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076725, 30.923943, 39.571583>,  <45.711784, 30.874289, 39.727638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076725, 30.923943, 39.571583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340164, 0.760122, -0.553627,
		0.227831, 0.637813, 0.735723,
		0.912350, 0.124133, -0.390140,
		46.350430, 30.961182, 39.454540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043762, 31.543072, 39.949566>,  <45.711784, 30.874289, 39.727638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043762, 31.543072, 39.949566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133766, 31.401569, 39.586418>,  <46.187767, 31.316668, 39.368530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133766, 31.401569, 39.586418>,  <46.043762, 31.543072, 39.949566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133766, 31.401569, 39.586418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295075, 0.863270, -0.409508,
		0.928601, 0.360034, 0.089861,
		0.225011, -0.353754, -0.907870,
		46.201271, 31.295443, 39.314056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530334, 32.023746, 39.521858>,  <46.043762, 31.543072, 39.949566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530334, 32.023746, 39.521858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296871, 31.794870, 39.291401>,  <46.156792, 31.657545, 39.153126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296871, 31.794870, 39.291401>,  <46.530334, 32.023746, 39.521858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296871, 31.794870, 39.291401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336233, 0.816154, -0.469937,
		0.739114, -0.080565, -0.668745,
		-0.583659, -0.572191, -0.576142,
		46.121773, 31.623213, 39.118557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.531059, 32.228958, 38.809074>,  <46.530334, 32.023746, 39.521858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.531059, 32.228958, 38.809074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188850, 32.046448, 38.906975>,  <45.983524, 31.936941, 38.965714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188850, 32.046448, 38.906975>,  <46.531059, 32.228958, 38.809074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188850, 32.046448, 38.906975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515763, 0.709383, -0.480380,
		0.045566, -0.537205, -0.842220,
		-0.855519, -0.456275, 0.244747,
		45.932194, 31.909565, 38.980400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079033, 31.902956, 38.356880>,  <46.531059, 32.228958, 38.809074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079033, 31.902956, 38.356880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787548, 31.734337, 38.572758>,  <45.612656, 31.633165, 38.702286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787548, 31.734337, 38.572758>,  <46.079033, 31.902956, 38.356880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787548, 31.734337, 38.572758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647609, 0.680431, -0.342952,
		-0.222655, -0.599425, -0.768840,
		-0.728716, -0.421548, 0.539695,
		45.568932, 31.607872, 38.734665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534496, 31.767200, 37.923126>,  <46.079033, 31.902956, 38.356880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534496, 31.767200, 37.923126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374802, 31.818649, 38.286240>,  <45.278984, 31.849518, 38.504108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374802, 31.818649, 38.286240>,  <45.534496, 31.767200, 37.923126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374802, 31.818649, 38.286240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711939, 0.580387, -0.395339,
		-0.577714, -0.804119, -0.140142,
		-0.399236, 0.128620, 0.907782,
		45.255032, 31.857235, 38.558575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865688, 31.795841, 37.785950>,  <45.534496, 31.767200, 37.923126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865688, 31.795841, 37.785950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909637, 31.968830, 38.143921>,  <44.936005, 32.072624, 38.358704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909637, 31.968830, 38.143921>,  <44.865688, 31.795841, 37.785950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909637, 31.968830, 38.143921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881272, 0.458776, -0.113509,
		-0.459661, -0.776203, 0.431533,
		0.109870, 0.432473, 0.894927,
		44.942600, 32.098572, 38.412399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298462, 31.662891, 38.223389>,  <44.865688, 31.795841, 37.785950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298462, 31.662891, 38.223389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468216, 31.994627, 38.368767>,  <44.570068, 32.193668, 38.455994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.468216, 31.994627, 38.368767>,  <44.298462, 31.662891, 38.223389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468216, 31.994627, 38.368767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837674, 0.511993, -0.190170,
		-0.343795, -0.223741, 0.912001,
		0.424390, 0.829339, 0.363443,
		44.595531, 32.243427, 38.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736237, 31.881422, 38.564796>,  <44.298462, 31.662891, 38.223389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736237, 31.881422, 38.564796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005589, 32.174450, 38.525005>,  <44.167202, 32.350266, 38.501129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005589, 32.174450, 38.525005>,  <43.736237, 31.881422, 38.564796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005589, 32.174450, 38.525005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738718, 0.661423, -0.129673,
		-0.029197, 0.160807, 0.986554,
		0.673382, 0.732571, -0.099480,
		44.207603, 32.394222, 38.495163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624798, 32.388969, 39.116447>,  <43.736237, 31.881422, 38.564796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624798, 32.388969, 39.116447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832432, 32.604149, 38.850765>,  <43.957012, 32.733257, 38.691357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832432, 32.604149, 38.850765>,  <43.624798, 32.388969, 39.116447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832432, 32.604149, 38.850765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761135, 0.644489, -0.072851,
		0.388880, 0.543362, 0.743996,
		0.519082, 0.537951, -0.664201,
		43.988155, 32.765533, 38.651505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522034, 33.120075, 39.399441>,  <43.624798, 32.388969, 39.116447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522034, 33.120075, 39.399441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638947, 33.137890, 39.017323>,  <43.709095, 33.148579, 38.788052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638947, 33.137890, 39.017323>,  <43.522034, 33.120075, 39.399441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638947, 33.137890, 39.017323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609440, 0.778481, -0.150167,
		0.736991, 0.626086, 0.254678,
		0.292279, 0.044539, -0.955295,
		43.726631, 33.151253, 38.730736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811855, 33.735031, 39.229015>,  <43.522034, 33.120075, 39.399441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811855, 33.735031, 39.229015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656448, 33.562527, 38.903297>,  <43.563206, 33.459023, 38.707867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656448, 33.562527, 38.903297>,  <43.811855, 33.735031, 39.229015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656448, 33.562527, 38.903297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344019, 0.887702, -0.306000,
		0.854813, 0.161246, -0.493249,
		-0.388517, -0.431260, -0.814291,
		43.539894, 33.433147, 38.659012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502678, 34.326336, 38.960617>,  <43.811855, 33.735031, 39.229015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502678, 34.326336, 38.960617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475147, 34.037502, 38.685268>,  <43.458630, 33.864204, 38.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475147, 34.037502, 38.685268>,  <43.502678, 34.326336, 38.960617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475147, 34.037502, 38.685268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418827, 0.647173, -0.636986,
		0.905454, 0.244471, -0.346968,
		-0.068824, -0.722081, -0.688377,
		43.454498, 33.820877, 38.478756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578632, 34.623798, 38.436096>,  <43.502678, 34.326336, 38.960617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578632, 34.623798, 38.436096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420052, 34.296623, 38.269333>,  <43.324905, 34.100319, 38.169273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420052, 34.296623, 38.269333>,  <43.578632, 34.623798, 38.436096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420052, 34.296623, 38.269333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473470, 0.571230, -0.670464,
		0.786546, -0.068411, -0.613730,
		-0.396448, -0.817934, -0.416909,
		43.301117, 34.051243, 38.144260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781879, 34.825253, 37.751942>,  <43.578632, 34.623798, 38.436096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781879, 34.825253, 37.751942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512917, 34.529404, 37.740391>,  <43.351540, 34.351894, 37.733459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512917, 34.529404, 37.740391>,  <43.781879, 34.825253, 37.751942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512917, 34.529404, 37.740391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486178, 0.470740, -0.736230,
		0.558121, -0.481009, -0.676115,
		-0.672407, -0.739618, -0.028875,
		43.311195, 34.307518, 37.731728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673813, 34.709568, 37.054607>,  <43.781879, 34.825253, 37.751942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673813, 34.709568, 37.054607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354530, 34.611229, 37.274582>,  <43.162960, 34.552227, 37.406567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354530, 34.611229, 37.274582>,  <43.673813, 34.709568, 37.054607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354530, 34.611229, 37.274582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593066, 0.480674, -0.645929,
		-0.105538, -0.841731, -0.529481,
		-0.798206, -0.245847, 0.549932,
		43.115067, 34.537476, 37.439560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158611, 34.612202, 36.574360>,  <43.673813, 34.709568, 37.054607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158611, 34.612202, 36.574360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977783, 34.700626, 36.920021>,  <42.869286, 34.753681, 37.127419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977783, 34.700626, 36.920021>,  <43.158611, 34.612202, 36.574360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977783, 34.700626, 36.920021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457290, 0.774364, -0.437317,
		-0.765844, -0.592868, -0.248978,
		-0.452071, 0.221061, 0.864155,
		42.842163, 34.766945, 37.179268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543446, 35.001457, 36.467209>,  <43.158611, 34.612202, 36.574360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543446, 35.001457, 36.467209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517513, 35.048161, 36.863625>,  <42.501953, 35.076183, 37.101475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517513, 35.048161, 36.863625>,  <42.543446, 35.001457, 36.467209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517513, 35.048161, 36.863625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582122, 0.802217, -0.132596,
		-0.810513, -0.585504, 0.015960,
		-0.064832, 0.116761, 0.991042,
		42.498062, 35.083187, 37.160938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885414, 35.203129, 36.514324>,  <42.543446, 35.001457, 36.467209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885414, 35.203129, 36.514324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044983, 35.286541, 36.871506>,  <42.140724, 35.336590, 37.085815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044983, 35.286541, 36.871506>,  <41.885414, 35.203129, 36.514324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044983, 35.286541, 36.871506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585378, 0.807472, 0.072949,
		-0.705826, -0.551819, 0.444191,
		0.398926, 0.208530, 0.892957,
		42.164661, 35.349098, 37.139393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315094, 35.422276, 36.983181>,  <41.885414, 35.203129, 36.514324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315094, 35.422276, 36.983181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642056, 35.575706, 37.155098>,  <41.838230, 35.667767, 37.258247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642056, 35.575706, 37.155098>,  <41.315094, 35.422276, 36.983181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642056, 35.575706, 37.155098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441524, 0.896369, 0.039726,
		-0.370015, -0.222236, 0.902053,
		0.817402, 0.383579, 0.429793,
		41.887276, 35.690781, 37.284035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059399, 35.751183, 37.563473>,  <41.315094, 35.422276, 36.983181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059399, 35.751183, 37.563473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415314, 35.926182, 37.511532>,  <41.628864, 36.031181, 37.480366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415314, 35.926182, 37.511532>,  <41.059399, 35.751183, 37.563473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415314, 35.926182, 37.511532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411941, 0.892431, 0.184042,
		0.196404, -0.110267, 0.974303,
		0.889792, 0.437502, -0.129854,
		41.682251, 36.057434, 37.472576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219044, 36.161411, 38.165848>,  <41.059399, 35.751183, 37.563473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219044, 36.161411, 38.165848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410080, 36.316467, 37.850471>,  <41.524700, 36.409500, 37.661243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410080, 36.316467, 37.850471>,  <41.219044, 36.161411, 38.165848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410080, 36.316467, 37.850471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204423, 0.921802, 0.329382,
		0.854470, 0.003866, 0.519486,
		0.477590, 0.387642, -0.788442,
		41.553356, 36.432758, 37.613937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329811, 36.856754, 38.420925>,  <41.219044, 36.161411, 38.165848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329811, 36.856754, 38.420925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418175, 36.857162, 38.030807>,  <41.471191, 36.857407, 37.796738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418175, 36.857162, 38.030807>,  <41.329811, 36.856754, 38.420925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418175, 36.857162, 38.030807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312456, 0.947366, -0.069783,
		0.923889, 0.320152, 0.209600,
		0.220909, 0.001019, -0.975294,
		41.484447, 36.857468, 37.738220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735764, 37.444477, 38.328289>,  <41.329811, 36.856754, 38.420925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735764, 37.444477, 38.328289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554153, 37.347355, 37.985382>,  <41.445187, 37.289082, 37.779636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554153, 37.347355, 37.985382>,  <41.735764, 37.444477, 38.328289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554153, 37.347355, 37.985382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469107, 0.883140, -0.001685,
		0.757496, 0.401385, -0.514869,
		-0.454025, -0.242805, -0.857267,
		41.417946, 37.274513, 37.728203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768566, 38.076092, 37.877735>,  <41.735764, 37.444477, 38.328289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768566, 38.076092, 37.877735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481613, 37.843731, 37.723892>,  <41.309441, 37.704315, 37.631588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481613, 37.843731, 37.723892>,  <41.768566, 38.076092, 37.877735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481613, 37.843731, 37.723892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619545, 0.784419, -0.029172,
		0.318640, 0.217354, -0.922619,
		-0.717379, -0.580900, -0.384608,
		41.266399, 37.669460, 37.608509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579071, 38.411140, 37.255047>,  <41.768566, 38.076092, 37.877735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579071, 38.411140, 37.255047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261112, 38.209545, 37.390182>,  <41.070339, 38.088589, 37.471264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261112, 38.209545, 37.390182>,  <41.579071, 38.411140, 37.255047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261112, 38.209545, 37.390182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528579, 0.848593, 0.022246,
		-0.297903, -0.160893, -0.940940,
		-0.794895, -0.503988, 0.337843,
		41.022644, 38.058350, 37.491535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356319, 38.432964, 37.193169>,  <41.579071, 38.411140, 37.255047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356319, 38.432964, 37.193169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267197, 38.043030, 37.196159>,  <42.213722, 37.809071, 37.197952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267197, 38.043030, 37.196159>,  <42.356319, 38.432964, 37.193169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267197, 38.043030, 37.196159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965359, -0.221698, -0.137597,
		0.135792, -0.023440, 0.990460,
		-0.222808, -0.974834, 0.007477,
		42.200356, 37.750580, 37.198402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599567, 38.166920, 37.809261>,  <42.356319, 38.432964, 37.193169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599567, 38.166920, 37.809261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566948, 37.946529, 37.477051>,  <42.547379, 37.814293, 37.277725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566948, 37.946529, 37.477051>,  <42.599567, 38.166920, 37.809261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566948, 37.946529, 37.477051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996587, -0.055816, -0.060823,
		-0.012845, -0.832650, 0.553650,
		-0.081547, -0.550979, -0.830525,
		42.542484, 37.781235, 37.227894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998028, 37.528107, 37.857563>,  <42.599567, 38.166920, 37.809261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998028, 37.528107, 37.857563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942757, 37.722992, 37.512650>,  <42.909595, 37.839924, 37.305702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942757, 37.722992, 37.512650>,  <42.998028, 37.528107, 37.857563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942757, 37.722992, 37.512650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987136, -0.002962, -0.159854,
		-0.080436, -0.873280, -0.480533,
		-0.138174, 0.487209, -0.862285,
		42.901306, 37.869156, 37.253963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521690, 37.304100, 37.504593>,  <42.998028, 37.528107, 37.857563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521690, 37.304100, 37.504593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395092, 37.628792, 37.308254>,  <43.319134, 37.823605, 37.190453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395092, 37.628792, 37.308254>,  <43.521690, 37.304100, 37.504593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395092, 37.628792, 37.308254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945892, 0.309078, -0.098785,
		0.071522, -0.495550, -0.865629,
		-0.316500, 0.811727, -0.490843,
		43.300140, 37.872311, 37.161003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898186, 37.367046, 36.931847>,  <43.521690, 37.304100, 37.504593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898186, 37.367046, 36.931847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823475, 37.746544, 37.033825>,  <43.778648, 37.974243, 37.095013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823475, 37.746544, 37.033825>,  <43.898186, 37.367046, 36.931847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823475, 37.746544, 37.033825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890777, 0.272991, -0.363308,
		-0.414285, 0.159243, -0.896108,
		-0.186775, 0.948745, 0.254947,
		43.767441, 38.031166, 37.110310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887218, 37.870583, 36.293365>,  <43.898186, 37.367046, 36.931847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887218, 37.870583, 36.293365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011417, 38.001125, 36.650482>,  <44.085938, 38.079453, 36.864754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011417, 38.001125, 36.650482>,  <43.887218, 37.870583, 36.293365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011417, 38.001125, 36.650482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787141, 0.438275, -0.433962,
		-0.532916, 0.837500, -0.120804,
		0.310498, 0.326355, 0.892795,
		44.104568, 38.099033, 36.918320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069004, 38.514385, 36.201424>,  <43.887218, 37.870583, 36.293365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069004, 38.514385, 36.201424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272999, 38.387737, 36.521339>,  <44.395397, 38.311749, 36.713291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272999, 38.387737, 36.521339>,  <44.069004, 38.514385, 36.201424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272999, 38.387737, 36.521339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854504, 0.293134, -0.428829,
		-0.098672, 0.902123, 0.420044,
		0.509986, -0.316616, 0.799792,
		44.425995, 38.292751, 36.761276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542915, 39.038712, 36.556408>,  <44.069004, 38.514385, 36.201424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542915, 39.038712, 36.556408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710690, 38.697292, 36.680035>,  <44.811356, 38.492439, 36.754211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710690, 38.697292, 36.680035>,  <44.542915, 39.038712, 36.556408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710690, 38.697292, 36.680035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843264, 0.240284, -0.480802,
		0.336124, 0.462293, 0.820552,
		0.419437, -0.853551, 0.309069,
		44.836521, 38.441227, 36.772755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177395, 39.023396, 36.995464>,  <44.542915, 39.038712, 36.556408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177395, 39.023396, 36.995464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187767, 38.693974, 36.768806>,  <45.193989, 38.496323, 36.632812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187767, 38.693974, 36.768806>,  <45.177395, 39.023396, 36.995464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187767, 38.693974, 36.768806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876789, 0.291010, -0.382824,
		0.480176, -0.486902, 0.729629,
		0.025931, -0.823553, -0.566646,
		45.195545, 38.446907, 36.598812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325260, 38.355019, 37.302586>,  <45.177395, 39.023396, 36.995464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325260, 38.355019, 37.302586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525047, 38.104702, 37.542225>,  <45.644920, 37.954510, 37.686008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525047, 38.104702, 37.542225>,  <45.325260, 38.355019, 37.302586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525047, 38.104702, 37.542225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605768, -0.242100, -0.757914,
		0.619339, 0.741464, 0.258166,
		0.499464, -0.625794, 0.599097,
		45.674885, 37.916965, 37.721954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033241, 38.532993, 37.347221>,  <45.325260, 38.355019, 37.302586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033241, 38.532993, 37.347221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024296, 38.140446, 37.423542>,  <46.018929, 37.904915, 37.469334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024296, 38.140446, 37.423542>,  <46.033241, 38.532993, 37.347221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024296, 38.140446, 37.423542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658609, -0.158047, -0.735701,
		0.752153, 0.109211, 0.649876,
		-0.022365, -0.981374, 0.190803,
		46.017586, 37.846035, 37.480782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713783, 38.229977, 37.295418>,  <46.033241, 38.532993, 37.347221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713783, 38.229977, 37.295418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435959, 37.953495, 37.215588>,  <46.269264, 37.787605, 37.167690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435959, 37.953495, 37.215588>,  <46.713783, 38.229977, 37.295418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435959, 37.953495, 37.215588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504866, -0.270651, -0.819670,
		0.512540, -0.670068, 0.536946,
		-0.694560, -0.691200, -0.199575,
		46.227592, 37.746136, 37.155716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951862, 37.609051, 36.950871>,  <46.713783, 38.229977, 37.295418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.951862, 37.609051, 36.950871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.584999, 37.585331, 36.793236>,  <46.364880, 37.571098, 36.698654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.584999, 37.585331, 36.793236>,  <46.951862, 37.609051, 36.950871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.584999, 37.585331, 36.793236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377862, -0.443655, -0.812644,
		-0.126652, -0.894234, 0.429307,
		-0.917159, -0.059296, -0.394087,
		46.309853, 37.567543, 36.675011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.124187, 37.102322, 36.520393>,  <46.951862, 37.609051, 36.950871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.124187, 37.102322, 36.520393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762039, 37.225376, 36.403328>,  <46.544750, 37.299210, 36.333088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762039, 37.225376, 36.403328>,  <47.124187, 37.102322, 36.520393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762039, 37.225376, 36.403328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098574, -0.518147, -0.849592,
		-0.413011, -0.798049, 0.438792,
		-0.905375, 0.307638, -0.292667,
		46.490425, 37.317669, 36.315529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576786, 36.535370, 36.347893>,  <47.124187, 37.102322, 36.520393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576786, 36.535370, 36.347893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530556, 36.852093, 36.107998>,  <46.502815, 37.042126, 35.964062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530556, 36.852093, 36.107998>,  <46.576786, 36.535370, 36.347893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530556, 36.852093, 36.107998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257671, -0.559215, -0.787962,
		-0.959295, -0.245608, -0.139392,
		-0.115580, 0.791805, -0.599738,
		46.495880, 37.089634, 35.928078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249565, 36.277115, 35.608307>,  <46.576786, 36.535370, 36.347893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249565, 36.277115, 35.608307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443714, 36.624729, 35.569954>,  <46.560204, 36.833298, 35.546944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443714, 36.624729, 35.569954>,  <46.249565, 36.277115, 35.608307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443714, 36.624729, 35.569954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294338, -0.265677, -0.918031,
		-0.823274, 0.417365, -0.384742,
		0.485371, 0.869035, -0.095878,
		46.589325, 36.885441, 35.541191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984882, 36.299313, 35.507187>,  <46.249565, 36.277115, 35.608307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984882, 36.299313, 35.507187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255074, 36.294521, 35.212276>,  <47.417191, 36.291649, 35.035328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255074, 36.294521, 35.212276>,  <46.984882, 36.299313, 35.507187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.255074, 36.294521, 35.212276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651402, 0.478243, 0.589033,
		0.345545, -0.878146, 0.330845,
		0.675481, -0.011976, -0.737280,
		47.457718, 36.290928, 34.991093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417858, 35.739990, 35.628105>,  <46.984882, 36.299313, 35.507187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417858, 35.739990, 35.628105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518299, 35.352806, 35.627922>,  <47.578564, 35.120495, 35.627811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518299, 35.352806, 35.627922>,  <47.417858, 35.739990, 35.628105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.518299, 35.352806, 35.627922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412801, -0.106661, -0.904554,
		0.875525, 0.227322, -0.426358,
		0.251100, -0.967961, -0.000454,
		47.593628, 35.062416, 35.627785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.956963, 35.584541, 35.234230>,  <47.417858, 35.739990, 35.628105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.956963, 35.584541, 35.234230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722519, 35.260670, 35.246235>,  <47.581852, 35.066349, 35.253437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722519, 35.260670, 35.246235>,  <47.956963, 35.584541, 35.234230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.722519, 35.260670, 35.246235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190387, 0.101619, -0.976436,
		0.787546, -0.578012, -0.213711,
		-0.586109, -0.809676, 0.030016,
		47.546688, 35.017765, 35.255241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.119953, 35.088638, 34.735542>,  <47.956963, 35.584541, 35.234230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.119953, 35.088638, 34.735542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726597, 35.063126, 34.803513>,  <47.490582, 35.047817, 34.844296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726597, 35.063126, 34.803513>,  <48.119953, 35.088638, 34.735542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726597, 35.063126, 34.803513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176830, 0.125705, -0.976181,
		0.040897, -0.990016, -0.134895,
		-0.983391, -0.063776, 0.169924,
		47.431580, 35.043991, 34.854488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.867954, 32.994003, 26.435905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482277, 33.093071, 26.397984>,  <37.250870, 33.152512, 26.375231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482277, 33.093071, 26.397984>,  <37.867954, 32.994003, 26.435905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482277, 33.093071, 26.397984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123962, -0.104878, 0.986729,
		0.234441, 0.963151, 0.131825,
		-0.964194, 0.247671, -0.094807,
		37.193020, 33.167374, 26.369541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746754, 33.464527, 26.907537>,  <37.867954, 32.994003, 26.435905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746754, 33.464527, 26.907537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381351, 33.324715, 26.824259>,  <37.162109, 33.240829, 26.774292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381351, 33.324715, 26.824259>,  <37.746754, 33.464527, 26.907537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381351, 33.324715, 26.824259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210155, -0.032774, 0.977119,
		-0.348352, 0.936353, -0.043515,
		-0.913502, -0.349526, -0.208196,
		37.107300, 33.219856, 26.761801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267494, 33.937702, 27.123169>,  <37.746754, 33.464527, 26.907537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267494, 33.937702, 27.123169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062897, 33.594070, 27.115665>,  <36.940136, 33.387890, 27.111162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062897, 33.594070, 27.115665>,  <37.267494, 33.937702, 27.123169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062897, 33.594070, 27.115665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287372, 0.150445, 0.945930,
		-0.809807, 0.489232, -0.323828,
		-0.511497, -0.859080, -0.018760,
		36.909447, 33.336346, 27.110037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703915, 34.136982, 27.484325>,  <37.267494, 33.937702, 27.123169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703915, 34.136982, 27.484325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711803, 33.737061, 27.483549>,  <36.716537, 33.497108, 27.483084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711803, 33.737061, 27.483549>,  <36.703915, 34.136982, 27.484325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711803, 33.737061, 27.483549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266789, -0.007133, 0.963729,
		-0.963553, -0.018488, -0.266877,
		0.019721, -0.999804, -0.001941,
		36.717720, 33.437119, 27.482967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139359, 34.058327, 27.920507>,  <36.703915, 34.136982, 27.484325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139359, 34.058327, 27.920507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.317337, 33.700497, 27.903748>,  <36.424126, 33.485798, 27.893692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.317337, 33.700497, 27.903748>,  <36.139359, 34.058327, 27.920507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317337, 33.700497, 27.903748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257335, -0.172529, 0.950795,
		-0.857787, -0.412273, -0.306972,
		0.444949, -0.894575, -0.041901,
		36.450821, 33.432125, 27.891178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609741, 33.669765, 28.190851>,  <36.139359, 34.058327, 27.920507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609741, 33.669765, 28.190851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955681, 33.471817, 28.224663>,  <36.163242, 33.353046, 28.244949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955681, 33.471817, 28.224663>,  <35.609741, 33.669765, 28.190851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955681, 33.471817, 28.224663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238507, -0.256840, 0.936562,
		-0.441768, -0.830141, -0.340157,
		0.864844, -0.494873, 0.084531,
		36.215134, 33.323357, 28.250023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491169, 33.115635, 28.654552>,  <35.609741, 33.669765, 28.190851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491169, 33.115635, 28.654552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889435, 33.137108, 28.684931>,  <36.128395, 33.149994, 28.703157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889435, 33.137108, 28.684931>,  <35.491169, 33.115635, 28.654552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889435, 33.137108, 28.684931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055836, -0.308028, 0.949737,
		0.074383, -0.949861, -0.303696,
		0.995665, 0.053687, 0.075948,
		36.188133, 33.153214, 28.707716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628326, 32.642986, 29.157785>,  <35.491169, 33.115635, 28.654552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628326, 32.642986, 29.157785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959961, 32.866634, 29.157095>,  <36.158943, 33.000824, 29.156681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959961, 32.866634, 29.157095>,  <35.628326, 32.642986, 29.157785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959961, 32.866634, 29.157095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035924, -0.050184, 0.998094,
		0.557966, -0.827568, -0.061693,
		0.829086, 0.559118, -0.001728,
		36.208687, 33.034370, 29.156576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068085, 32.368576, 29.745342>,  <35.628326, 32.642986, 29.157785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068085, 32.368576, 29.745342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213314, 32.735802, 29.681664>,  <36.300453, 32.956135, 29.643456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213314, 32.735802, 29.681664>,  <36.068085, 32.368576, 29.745342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213314, 32.735802, 29.681664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101901, 0.130708, 0.986170,
		0.926171, -0.374275, -0.046094,
		0.363074, 0.918060, -0.159197,
		36.322235, 33.011219, 29.633904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588867, 32.339588, 30.152418>,  <36.068085, 32.368576, 29.745342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588867, 32.339588, 30.152418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517372, 32.723251, 30.064726>,  <36.474476, 32.953449, 30.012112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517372, 32.723251, 30.064726>,  <36.588867, 32.339588, 30.152418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517372, 32.723251, 30.064726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070294, 0.234696, 0.969524,
		0.981383, 0.157876, -0.109371,
		-0.178734, 0.959163, -0.219229,
		36.463753, 33.011002, 29.998957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090382, 32.757519, 30.470213>,  <36.588867, 32.339588, 30.152418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090382, 32.757519, 30.470213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777039, 32.997288, 30.404423>,  <36.589035, 33.141148, 30.364948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777039, 32.997288, 30.404423>,  <37.090382, 32.757519, 30.470213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777039, 32.997288, 30.404423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007818, 0.255088, 0.966886,
		0.621527, 0.758700, -0.195138,
		-0.783354, 0.599420, -0.164476,
		36.542034, 33.177113, 30.355080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308575, 33.396080, 30.731237>,  <37.090382, 32.757519, 30.470213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308575, 33.396080, 30.731237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909992, 33.423885, 30.712269>,  <36.670845, 33.440567, 30.700888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909992, 33.423885, 30.712269>,  <37.308575, 33.396080, 30.731237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909992, 33.423885, 30.712269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030921, 0.221657, 0.974635,
		0.078262, 0.972644, -0.218721,
		-0.996453, 0.069513, -0.047422,
		36.611057, 33.444740, 30.698042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137249, 33.904263, 31.139696>,  <37.308575, 33.396080, 30.731237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137249, 33.904263, 31.139696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785892, 33.714443, 31.116932>,  <36.575081, 33.600552, 31.103273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785892, 33.714443, 31.116932>,  <37.137249, 33.904263, 31.139696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785892, 33.714443, 31.116932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115707, 0.095604, 0.988672,
		-0.463731, 0.875023, -0.138886,
		-0.878388, -0.474548, -0.056912,
		36.522377, 33.572079, 31.099857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639210, 34.255470, 31.518147>,  <37.137249, 33.904263, 31.139696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639210, 34.255470, 31.518147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487942, 33.885384, 31.505699>,  <36.397182, 33.663334, 31.498230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487942, 33.885384, 31.505699>,  <36.639210, 34.255470, 31.518147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487942, 33.885384, 31.505699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178674, 0.039965, 0.983096,
		-0.908330, 0.377336, -0.180425,
		-0.378169, -0.925214, -0.031118,
		36.374493, 33.607819, 31.496365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002670, 34.323986, 31.836977>,  <36.639210, 34.255470, 31.518147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002670, 34.323986, 31.836977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112675, 33.945259, 31.903801>,  <36.178677, 33.718021, 31.943895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112675, 33.945259, 31.903801>,  <36.002670, 34.323986, 31.836977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112675, 33.945259, 31.903801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309327, 0.077386, 0.947802,
		-0.910322, -0.312330, -0.271594,
		0.275009, -0.946816, 0.167058,
		36.195179, 33.661213, 31.953918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394573, 34.038883, 32.183834>,  <36.002670, 34.323986, 31.836977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394573, 34.038883, 32.183834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699646, 33.795582, 32.271793>,  <35.882690, 33.649601, 32.324570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699646, 33.795582, 32.271793>,  <35.394573, 34.038883, 32.183834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699646, 33.795582, 32.271793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400952, -0.177860, 0.898667,
		-0.507503, -0.773562, -0.379529,
		0.762678, -0.608249, 0.219897,
		35.928448, 33.613106, 32.337761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069584, 33.483196, 32.630486>,  <35.394573, 34.038883, 32.183834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069584, 33.483196, 32.630486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464710, 33.469185, 32.691147>,  <35.701786, 33.460777, 32.727543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464710, 33.469185, 32.691147>,  <35.069584, 33.483196, 32.630486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464710, 33.469185, 32.691147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155619, -0.204642, 0.966387,
		-0.002819, -0.978210, -0.207599,
		0.987813, -0.035031, 0.151652,
		35.761055, 33.458675, 32.736641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153473, 32.912922, 33.142757>,  <35.069584, 33.483196, 32.630486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153473, 32.912922, 33.142757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505478, 33.097012, 33.189686>,  <35.716682, 33.207466, 33.217842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.505478, 33.097012, 33.189686>,  <35.153473, 32.912922, 33.142757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505478, 33.097012, 33.189686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035128, -0.309422, 0.950276,
		0.473643, -0.832137, -0.288463,
		0.880016, 0.460225, 0.117324,
		35.769482, 33.235081, 33.224884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529625, 32.438053, 33.466343>,  <35.153473, 32.912922, 33.142757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529625, 32.438053, 33.466343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705982, 32.786808, 33.551598>,  <35.811794, 32.996059, 33.602749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705982, 32.786808, 33.551598>,  <35.529625, 32.438053, 33.466343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705982, 32.786808, 33.551598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018549, -0.246259, 0.969027,
		0.897369, -0.423281, -0.124746,
		0.440890, 0.871889, 0.213133,
		35.838249, 33.048374, 33.615536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117256, 32.251736, 33.929863>,  <35.529625, 32.438053, 33.466343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117256, 32.251736, 33.929863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087624, 32.649853, 33.954868>,  <36.069843, 32.888721, 33.969872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087624, 32.649853, 33.954868>,  <36.117256, 32.251736, 33.929863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087624, 32.649853, 33.954868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069553, -0.067686, 0.995279,
		0.994824, 0.069381, 0.074240,
		-0.074078, 0.995291, 0.062510,
		36.065399, 32.948441, 33.973621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645599, 32.440052, 34.440273>,  <36.117256, 32.251736, 33.929863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645599, 32.440052, 34.440273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.365902, 32.725895, 34.432373>,  <36.198082, 32.897400, 34.427631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.365902, 32.725895, 34.432373>,  <36.645599, 32.440052, 34.440273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365902, 32.725895, 34.432373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030527, 0.057454, 0.997881,
		0.714227, 0.697163, -0.061989,
		-0.699248, 0.714607, -0.019753,
		36.156128, 32.940277, 34.426449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232731, 32.845470, 34.864613>,  <36.645599, 32.440052, 34.440273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232731, 32.845470, 34.864613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968525, 32.743835, 35.147217>,  <36.810001, 32.682854, 35.316780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968525, 32.743835, 35.147217>,  <37.232731, 32.845470, 34.864613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968525, 32.743835, 35.147217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559437, -0.794145, 0.237410,
		0.500747, 0.552061, 0.666694,
		-0.660517, -0.254091, 0.706509,
		36.770370, 32.667606, 35.359169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623310, 33.513420, 34.818798>,  <37.232731, 32.845470, 34.864613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623310, 33.513420, 34.818798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944458, 33.706577, 34.958637>,  <38.137146, 33.822472, 35.042542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944458, 33.706577, 34.958637>,  <37.623310, 33.513420, 34.818798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944458, 33.706577, 34.958637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417840, -0.037542, -0.907745,
		-0.425218, 0.874875, -0.231913,
		0.802870, 0.482892, 0.349594,
		38.185318, 33.851444, 35.063515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769283, 34.136562, 34.331501>,  <37.623310, 33.513420, 34.818798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769283, 34.136562, 34.331501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074253, 33.996948, 34.549454>,  <38.257233, 33.913181, 34.680225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.074253, 33.996948, 34.549454>,  <37.769283, 34.136562, 34.331501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074253, 33.996948, 34.549454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536333, -0.130248, -0.833896,
		0.362026, 0.928015, 0.087894,
		0.762420, -0.349032, 0.544878,
		38.302979, 33.892239, 34.712917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380787, 34.648769, 34.248802>,  <37.769283, 34.136562, 34.331501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380787, 34.648769, 34.248802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525551, 34.302212, 34.386425>,  <38.612408, 34.094276, 34.468998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525551, 34.302212, 34.386425>,  <38.380787, 34.648769, 34.248802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525551, 34.302212, 34.386425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562254, -0.091518, -0.821885,
		0.743567, 0.490895, 0.454015,
		0.361908, -0.866399, 0.344058,
		38.634125, 34.042294, 34.489643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194283, 34.782757, 34.220703>,  <38.380787, 34.648769, 34.248802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194283, 34.782757, 34.220703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104149, 34.393044, 34.220100>,  <39.050068, 34.159218, 34.219738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104149, 34.393044, 34.220100>,  <39.194283, 34.782757, 34.220703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104149, 34.393044, 34.220100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593535, -0.136045, -0.793226,
		0.772620, -0.179636, 0.608925,
		-0.225333, -0.974281, -0.001509,
		39.036549, 34.100758, 34.219646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818584, 34.517273, 33.982155>,  <39.194283, 34.782757, 34.220703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818584, 34.517273, 33.982155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544205, 34.231316, 33.927895>,  <39.379578, 34.059742, 33.895340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544205, 34.231316, 33.927895>,  <39.818584, 34.517273, 33.982155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544205, 34.231316, 33.927895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380291, -0.193272, -0.904447,
		0.620369, -0.671988, 0.404443,
		-0.685945, -0.714897, -0.135650,
		39.338421, 34.016846, 33.887199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235237, 33.967426, 33.642326>,  <39.818584, 34.517273, 33.982155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235237, 33.967426, 33.642326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844532, 33.908772, 33.579803>,  <39.610107, 33.873577, 33.542290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844532, 33.908772, 33.579803>,  <40.235237, 33.967426, 33.642326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844532, 33.908772, 33.579803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190715, -0.261906, -0.946062,
		0.097793, -0.953888, 0.283786,
		-0.976762, -0.146641, -0.156308,
		39.551502, 33.864780, 33.532909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188606, 33.318497, 33.296383>,  <40.235237, 33.967426, 33.642326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188606, 33.318497, 33.296383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.852745, 33.507927, 33.190025>,  <39.651226, 33.621586, 33.126213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.852745, 33.507927, 33.190025>,  <40.188606, 33.318497, 33.296383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852745, 33.507927, 33.190025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110433, -0.330465, -0.937335,
		-0.531771, -0.816403, 0.225178,
		-0.839657, 0.473581, -0.265890,
		39.600849, 33.650002, 33.110260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882278, 32.855419, 32.816048>,  <40.188606, 33.318497, 33.296383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882278, 32.855419, 32.816048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687004, 33.198586, 32.751972>,  <39.569839, 33.404484, 32.713528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687004, 33.198586, 32.751972>,  <39.882278, 32.855419, 32.816048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687004, 33.198586, 32.751972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030735, -0.200337, -0.979245,
		-0.872198, -0.473131, 0.124170,
		-0.488187, 0.857911, -0.160192,
		39.540546, 33.455959, 32.703915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326336, 32.726151, 32.334534>,  <39.882278, 32.855419, 32.816048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326336, 32.726151, 32.334534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369133, 33.120029, 32.279510>,  <39.394814, 33.356358, 32.246498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369133, 33.120029, 32.279510>,  <39.326336, 32.726151, 32.334534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369133, 33.120029, 32.279510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059456, -0.131765, -0.989496,
		-0.992480, 0.114050, 0.044448,
		0.106996, 0.984698, -0.137555,
		39.401230, 33.415440, 32.238243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789894, 33.002331, 31.860476>,  <39.326336, 32.726151, 32.334534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789894, 33.002331, 31.860476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086525, 33.269897, 31.840006>,  <39.264503, 33.430435, 31.827724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086525, 33.269897, 31.840006>,  <38.789894, 33.002331, 31.860476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086525, 33.269897, 31.840006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095515, -0.180778, -0.978875,
		-0.664033, 0.721024, -0.197952,
		0.741577, 0.668913, -0.051174,
		39.308998, 33.470570, 31.824654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653500, 33.677792, 31.494574>,  <38.789894, 33.002331, 31.860476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653500, 33.677792, 31.494574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053127, 33.683125, 31.478178>,  <39.292904, 33.686325, 31.468342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053127, 33.683125, 31.478178>,  <38.653500, 33.677792, 31.494574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053127, 33.683125, 31.478178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043023, 0.251092, -0.967007,
		-0.002603, 0.967871, 0.251432,
		0.999071, 0.013335, -0.040987,
		39.352848, 33.687126, 31.465881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740356, 34.351707, 31.220459>,  <38.653500, 33.677792, 31.494574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740356, 34.351707, 31.220459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064743, 34.124809, 31.163090>,  <39.259377, 33.988670, 31.128668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064743, 34.124809, 31.163090>,  <38.740356, 34.351707, 31.220459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064743, 34.124809, 31.163090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021642, 0.215883, -0.976179,
		0.584692, 0.794753, 0.162797,
		0.810967, -0.567241, -0.143425,
		39.308033, 33.954636, 31.120062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134682, 34.692245, 30.688725>,  <38.740356, 34.351707, 31.220459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134682, 34.692245, 30.688725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317001, 34.336796, 30.709101>,  <39.426392, 34.123528, 30.721327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317001, 34.336796, 30.709101>,  <39.134682, 34.692245, 30.688725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317001, 34.336796, 30.709101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268713, 0.082817, -0.959653,
		0.848553, 0.451097, 0.276533,
		0.455798, -0.888624, 0.050941,
		39.453739, 34.070210, 30.724382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759678, 34.777660, 30.306061>,  <39.134682, 34.692245, 30.688725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759678, 34.777660, 30.306061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.697086, 34.382679, 30.314480>,  <39.659531, 34.145691, 30.319532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.697086, 34.382679, 30.314480>,  <39.759678, 34.777660, 30.306061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697086, 34.382679, 30.314480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404400, -0.083499, -0.910763,
		0.901096, -0.134006, 0.412393,
		-0.156482, -0.987456, 0.021049,
		39.650143, 34.086441, 30.320795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303806, 34.499271, 29.864960>,  <39.759678, 34.777660, 30.306061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303806, 34.499271, 29.864960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059021, 34.183788, 29.888433>,  <39.912151, 33.994499, 29.902517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059021, 34.183788, 29.888433>,  <40.303806, 34.499271, 29.864960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059021, 34.183788, 29.888433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160349, -0.196390, -0.967326,
		0.774461, -0.582557, 0.246652,
		-0.611963, -0.788706, 0.058684,
		39.875431, 33.947178, 29.906038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649086, 33.906605, 29.600775>,  <40.303806, 34.499271, 29.864960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649086, 33.906605, 29.600775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.261066, 33.816639, 29.564070>,  <40.028255, 33.762661, 29.542048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.261066, 33.816639, 29.564070>,  <40.649086, 33.906605, 29.600775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261066, 33.816639, 29.564070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149079, -0.252986, -0.955915,
		0.191783, -0.940964, 0.278938,
		-0.970049, -0.224912, -0.091760,
		39.970051, 33.749165, 29.536541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548977, 33.258377, 29.184141>,  <40.649086, 33.906605, 29.600775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548977, 33.258377, 29.184141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223301, 33.488293, 29.151396>,  <40.027893, 33.626244, 29.131748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223301, 33.488293, 29.151396>,  <40.548977, 33.258377, 29.184141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223301, 33.488293, 29.151396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053084, -0.066707, -0.996359,
		-0.578161, -0.815575, 0.023800,
		-0.814194, 0.574793, -0.081862,
		39.979042, 33.660732, 29.126837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295723, 32.874683, 28.583218>,  <40.548977, 33.258377, 29.184141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295723, 32.874683, 28.583218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.079559, 33.210827, 28.600010>,  <39.949860, 33.412514, 28.610086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.079559, 33.210827, 28.600010>,  <40.295723, 32.874683, 28.583218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079559, 33.210827, 28.600010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032190, 0.029210, -0.999055,
		-0.840787, -0.541250, 0.011265,
		-0.540409, 0.840355, 0.041982,
		39.917435, 33.462933, 28.612604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.772884, 32.821957, 28.100660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781033, 33.218269, 28.154238>,  <39.785919, 33.456055, 28.186384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781033, 33.218269, 28.154238>,  <39.772884, 32.821957, 28.100660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781033, 33.218269, 28.154238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085392, 0.135208, -0.987131,
		-0.996139, 0.008667, 0.087359,
		0.020367, 0.990779, 0.133945,
		39.787144, 33.515503, 28.194422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309067, 32.999256, 27.615396>,  <39.772884, 32.821957, 28.100660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309067, 32.999256, 27.615396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.484039, 33.344646, 27.715849>,  <39.589024, 33.551880, 27.776119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.484039, 33.344646, 27.715849>,  <39.309067, 32.999256, 27.615396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484039, 33.344646, 27.715849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127086, 0.335823, -0.933312,
		-0.890225, 0.376348, 0.256636,
		0.437434, 0.863473, 0.251129,
		39.615269, 33.603687, 27.791187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809486, 33.554520, 27.474144>,  <39.309067, 32.999256, 27.615396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809486, 33.554520, 27.474144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.171833, 33.723633, 27.484392>,  <39.389240, 33.825100, 27.490541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.171833, 33.723633, 27.484392>,  <38.809486, 33.554520, 27.474144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171833, 33.723633, 27.484392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144156, 0.364616, -0.919932,
		-0.398277, 0.829642, 0.391241,
		0.905867, 0.422788, 0.025620,
		39.443592, 33.850468, 27.492079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833858, 34.273880, 27.136066>,  <38.809486, 33.554520, 27.474144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833858, 34.273880, 27.136066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200119, 34.116962, 27.100985>,  <39.419876, 34.022812, 27.079935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200119, 34.116962, 27.100985>,  <38.833858, 34.273880, 27.136066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200119, 34.116962, 27.100985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024427, 0.163483, -0.986244,
		0.401237, 0.905195, 0.140110,
		0.915648, -0.392295, -0.087707,
		39.474815, 33.999275, 27.074673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079899, 34.668961, 26.627302>,  <38.833858, 34.273880, 27.136066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079899, 34.668961, 26.627302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339771, 34.364948, 26.633892>,  <39.495693, 34.182541, 26.637846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339771, 34.364948, 26.633892>,  <39.079899, 34.668961, 26.627302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339771, 34.364948, 26.633892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051833, 0.022669, -0.998398,
		0.758437, 0.649496, 0.054122,
		0.649682, -0.760027, 0.016472,
		39.534676, 34.136940, 26.638834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581802, 34.915627, 26.221344>,  <39.079899, 34.668961, 26.627302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581802, 34.915627, 26.221344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627514, 34.518250, 26.222553>,  <39.654942, 34.279823, 26.223278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627514, 34.518250, 26.222553>,  <39.581802, 34.915627, 26.221344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627514, 34.518250, 26.222553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172212, 0.016814, -0.984917,
		0.978408, 0.113077, 0.173005,
		0.114281, -0.993444, 0.003022,
		39.661797, 34.220215, 26.223459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122234, 34.850838, 25.632818>,  <39.581802, 34.915627, 26.221344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122234, 34.850838, 25.632818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979111, 34.485748, 25.711716>,  <39.893238, 34.266693, 25.759054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979111, 34.485748, 25.711716>,  <40.122234, 34.850838, 25.632818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979111, 34.485748, 25.711716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121823, -0.255050, -0.959223,
		0.925814, -0.319190, 0.202450,
		-0.357809, -0.912725, 0.197244,
		39.871769, 34.211929, 25.770889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635052, 34.352619, 25.413418>,  <40.122234, 34.850838, 25.632818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635052, 34.352619, 25.413418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.277512, 34.173378, 25.407366>,  <40.062988, 34.065834, 25.403734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.277512, 34.173378, 25.407366>,  <40.635052, 34.352619, 25.413418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277512, 34.173378, 25.407366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178147, -0.323981, -0.929139,
		0.411451, -0.833209, 0.369420,
		-0.893852, -0.448107, -0.015132,
		40.009357, 34.038944, 25.402826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892971, 33.806118, 25.125835>,  <40.635052, 34.352619, 25.413418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892971, 33.806118, 25.125835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495789, 33.803383, 25.078533>,  <40.257477, 33.801743, 25.050152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495789, 33.803383, 25.078533>,  <40.892971, 33.806118, 25.125835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495789, 33.803383, 25.078533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117619, -0.175101, -0.977499,
		-0.014018, -0.984526, 0.174673,
		-0.992960, -0.006842, -0.118254,
		40.197899, 33.801331, 25.043056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778831, 33.248146, 24.619884>,  <40.892971, 33.806118, 25.125835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778831, 33.248146, 24.619884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441586, 33.462856, 24.632694>,  <40.239239, 33.591682, 24.640379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441586, 33.462856, 24.632694>,  <40.778831, 33.248146, 24.619884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441586, 33.462856, 24.632694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060840, -0.036053, -0.997496,
		-0.534280, -0.842953, 0.063054,
		-0.843116, 0.536778, 0.032023,
		40.188652, 33.623890, 24.642302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173336, 32.945995, 24.206911>,  <40.778831, 33.248146, 24.619884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173336, 32.945995, 24.206911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095890, 33.338402, 24.211235>,  <40.049423, 33.573845, 24.213829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095890, 33.338402, 24.211235>,  <40.173336, 32.945995, 24.206911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095890, 33.338402, 24.211235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025804, 0.016108, -0.999537,
		-0.980738, -0.193246, -0.028433,
		-0.193615, 0.981018, 0.010811,
		40.037807, 33.632706, 24.214478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844612, 33.119343, 23.563986>,  <40.173336, 32.945995, 24.206911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844612, 33.119343, 23.563986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.949421, 33.493202, 23.660130>,  <40.012306, 33.717518, 23.717815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.949421, 33.493202, 23.660130>,  <39.844612, 33.119343, 23.563986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949421, 33.493202, 23.660130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281136, 0.164332, -0.945493,
		-0.923205, 0.315311, -0.219706,
		0.262020, 0.934652, 0.240357,
		40.028027, 33.773598, 23.732237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588135, 33.561989, 23.050114>,  <39.844612, 33.119343, 23.563986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588135, 33.561989, 23.050114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887623, 33.771202, 23.213017>,  <40.067314, 33.896732, 23.310759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887623, 33.771202, 23.213017>,  <39.588135, 33.561989, 23.050114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887623, 33.771202, 23.213017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304358, 0.274544, -0.912136,
		-0.588889, 0.806883, 0.046366,
		0.748716, 0.523035, 0.407257,
		40.112236, 33.928112, 23.335194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705528, 34.136192, 22.581333>,  <39.588135, 33.561989, 23.050114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705528, 34.136192, 22.581333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055134, 34.129772, 22.775585>,  <40.264896, 34.125919, 22.892136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055134, 34.129772, 22.775585>,  <39.705528, 34.136192, 22.581333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055134, 34.129772, 22.775585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485837, 0.044328, -0.872924,
		-0.007514, 0.998888, 0.046543,
		0.874017, -0.016054, 0.485630,
		40.317337, 34.124954, 22.921274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946266, 34.819912, 22.332067>,  <39.705528, 34.136192, 22.581333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946266, 34.819912, 22.332067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264996, 34.618530, 22.465702>,  <40.456234, 34.497700, 22.545883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264996, 34.618530, 22.465702>,  <39.946266, 34.819912, 22.332067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264996, 34.618530, 22.465702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517182, 0.282410, -0.807940,
		0.312412, 0.816565, 0.485407,
		0.796820, -0.503454, 0.334084,
		40.504040, 34.467495, 22.565928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563339, 35.234951, 22.294706>,  <39.946266, 34.819912, 22.332067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563339, 35.234951, 22.294706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.704262, 34.860710, 22.303926>,  <40.788815, 34.636166, 22.309460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.704262, 34.860710, 22.303926>,  <40.563339, 35.234951, 22.294706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704262, 34.860710, 22.303926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488258, 0.162733, -0.857392,
		0.798425, 0.313322, 0.514147,
		0.352309, -0.935600, 0.023052,
		40.809956, 34.580029, 22.310843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344913, 35.258339, 22.205406>,  <40.563339, 35.234951, 22.294706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344913, 35.258339, 22.205406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217628, 34.902351, 22.074751>,  <41.141258, 34.688759, 21.996357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217628, 34.902351, 22.074751>,  <41.344913, 35.258339, 22.205406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217628, 34.902351, 22.074751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408434, 0.182233, -0.894412,
		0.855525, -0.418024, 0.305505,
		-0.318213, -0.889970, -0.326640,
		41.122166, 34.635361, 21.976759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803341, 35.141277, 21.701094>,  <41.344913, 35.258339, 22.205406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803341, 35.141277, 21.701094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.551437, 34.844532, 21.608969>,  <41.400295, 34.666485, 21.553694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.551437, 34.844532, 21.608969>,  <41.803341, 35.141277, 21.701094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551437, 34.844532, 21.608969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355708, -0.011831, -0.934522,
		0.690565, -0.670445, 0.271338,
		-0.629756, -0.741865, -0.230312,
		41.362511, 34.621971, 21.539875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190620, 34.633064, 21.404123>,  <41.803341, 35.141277, 21.701094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190620, 34.633064, 21.404123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812569, 34.595882, 21.278843>,  <41.585739, 34.573574, 21.203674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812569, 34.595882, 21.278843>,  <42.190620, 34.633064, 21.404123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812569, 34.595882, 21.278843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315021, -0.005233, -0.949070,
		0.086579, -0.995657, 0.034228,
		-0.945127, -0.092952, -0.313199,
		41.529030, 34.567997, 21.184883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179874, 34.155212, 20.857758>,  <42.190620, 34.633064, 21.404123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179874, 34.155212, 20.857758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843735, 34.368793, 20.820450>,  <41.642052, 34.496941, 20.798065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.843735, 34.368793, 20.820450>,  <42.179874, 34.155212, 20.857758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843735, 34.368793, 20.820450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117655, 0.011717, -0.992985,
		-0.529115, -0.845432, -0.072669,
		-0.840353, 0.533954, -0.093270,
		41.591629, 34.528980, 20.792469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845222, 33.889782, 20.264277>,  <42.179874, 34.155212, 20.857758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845222, 33.889782, 20.264277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.689850, 34.252636, 20.329067>,  <41.596626, 34.470348, 20.367943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.689850, 34.252636, 20.329067>,  <41.845222, 33.889782, 20.264277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689850, 34.252636, 20.329067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013970, 0.169963, -0.985351,
		-0.921374, -0.385000, -0.053345,
		-0.388427, 0.907131, 0.161978,
		41.573322, 34.524776, 20.377661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389492, 34.000221, 19.736248>,  <41.845222, 33.889782, 20.264277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389492, 34.000221, 19.736248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422169, 34.377403, 19.865347>,  <41.441776, 34.603710, 19.942806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422169, 34.377403, 19.865347>,  <41.389492, 34.000221, 19.736248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422169, 34.377403, 19.865347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050029, 0.319543, -0.946250,
		-0.995401, 0.093452, -0.021070,
		0.081696, 0.942953, 0.322748,
		41.446678, 34.660290, 19.962172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063969, 34.522400, 19.249487>,  <41.389492, 34.000221, 19.736248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063969, 34.522400, 19.249487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.263405, 34.799816, 19.457493>,  <41.383068, 34.966267, 19.582296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.263405, 34.799816, 19.457493>,  <41.063969, 34.522400, 19.249487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263405, 34.799816, 19.457493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298602, 0.425766, -0.854143,
		-0.813784, 0.581144, 0.005191,
		0.498590, 0.693538, 0.520013,
		41.412983, 35.007877, 19.613497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320354, 34.654701, 19.245792>,  <41.063969, 34.522400, 19.249487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320354, 34.654701, 19.245792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.240929, 35.019596, 19.102461>,  <40.193272, 35.238533, 19.016462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.240929, 35.019596, 19.102461>,  <40.320354, 34.654701, 19.245792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240929, 35.019596, 19.102461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626164, 0.163186, 0.762423,
		0.753983, 0.375765, 0.538805,
		-0.198566, 0.912234, -0.358330,
		40.181358, 35.293266, 18.994963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352928, 35.118141, 19.744911>,  <40.320354, 34.654701, 19.245792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352928, 35.118141, 19.744911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.091217, 35.265877, 19.480938>,  <39.934193, 35.354519, 19.322554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.091217, 35.265877, 19.480938>,  <40.352928, 35.118141, 19.744911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091217, 35.265877, 19.480938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706317, 0.013413, 0.707769,
		0.270257, 0.929199, 0.252094,
		-0.654276, 0.369338, -0.659934,
		39.894936, 35.376678, 19.282957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047260, 35.723339, 20.055445>,  <40.352928, 35.118141, 19.744911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047260, 35.723339, 20.055445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834312, 35.513020, 19.790081>,  <39.706543, 35.386826, 19.630863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834312, 35.513020, 19.790081>,  <40.047260, 35.723339, 20.055445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834312, 35.513020, 19.790081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661777, -0.230171, 0.713493,
		-0.527854, 0.818872, -0.225428,
		-0.532372, -0.525803, -0.663408,
		39.674603, 35.355278, 19.591059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376713, 36.023811, 20.300783>,  <40.047260, 35.723339, 20.055445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376713, 36.023811, 20.300783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343727, 35.686432, 20.088444>,  <39.323936, 35.484005, 19.961040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343727, 35.686432, 20.088444>,  <39.376713, 36.023811, 20.300783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343727, 35.686432, 20.088444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613454, -0.376829, 0.694027,
		-0.785413, 0.382883, -0.486340,
		-0.082465, -0.843446, -0.530847,
		39.318989, 35.433399, 19.929190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691463, 35.991497, 20.020229>,  <39.376713, 36.023811, 20.300783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691463, 35.991497, 20.020229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836533, 35.620331, 20.054720>,  <38.923573, 35.397629, 20.075415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836533, 35.620331, 20.054720>,  <38.691463, 35.991497, 20.020229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836533, 35.620331, 20.054720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611664, -0.167212, 0.773244,
		-0.703090, -0.333175, -0.628218,
		0.362672, -0.927920, 0.086226,
		38.945335, 35.341953, 20.080587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108429, 35.622784, 20.300701>,  <38.691463, 35.991497, 20.020229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108429, 35.622784, 20.300701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403275, 35.355377, 20.340183>,  <38.580181, 35.194931, 20.363873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403275, 35.355377, 20.340183>,  <38.108429, 35.622784, 20.300701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403275, 35.355377, 20.340183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464897, -0.395658, 0.792039,
		-0.490441, -0.629710, -0.602438,
		0.737115, -0.668520, 0.098703,
		38.624409, 35.154823, 20.369795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776627, 35.018383, 20.309282>,  <38.108429, 35.622784, 20.300701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776627, 35.018383, 20.309282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127323, 34.961391, 20.493034>,  <38.337742, 34.927197, 20.603285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127323, 34.961391, 20.493034>,  <37.776627, 35.018383, 20.309282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127323, 34.961391, 20.493034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480702, -0.227949, 0.846738,
		-0.015924, -0.963193, -0.268340,
		0.876739, -0.142475, 0.459378,
		38.390347, 34.918648, 20.630848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694588, 34.381084, 20.640081>,  <37.776627, 35.018383, 20.309282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694588, 34.381084, 20.640081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016800, 34.534561, 20.820704>,  <38.210129, 34.626648, 20.929077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016800, 34.534561, 20.820704>,  <37.694588, 34.381084, 20.640081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016800, 34.534561, 20.820704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399643, -0.210857, 0.892090,
		0.437501, -0.899066, -0.016511,
		0.805529, 0.383692, 0.451556,
		38.258457, 34.649670, 20.956171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810898, 33.887280, 21.123671>,  <37.694588, 34.381084, 20.640081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810898, 33.887280, 21.123671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027794, 34.196022, 21.256462>,  <38.157932, 34.381268, 21.336138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027794, 34.196022, 21.256462>,  <37.810898, 33.887280, 21.123671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027794, 34.196022, 21.256462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124741, -0.316777, 0.940262,
		0.830913, -0.551258, -0.075486,
		0.542239, 0.771859, 0.331979,
		38.190464, 34.427578, 21.356056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256649, 33.574390, 21.703312>,  <37.810898, 33.887280, 21.123671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256649, 33.574390, 21.703312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254822, 33.970146, 21.761412>,  <38.253727, 34.207600, 21.796270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254822, 33.970146, 21.761412>,  <38.256649, 33.574390, 21.703312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254822, 33.970146, 21.761412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011392, -0.145188, 0.989338,
		0.999925, 0.006175, -0.010608,
		-0.004569, 0.989385, 0.145247,
		38.253452, 34.266960, 21.804985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683517, 33.754826, 22.342127>,  <38.256649, 33.574390, 21.703312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683517, 33.754826, 22.342127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419975, 34.050213, 22.284756>,  <38.261848, 34.227444, 22.250334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419975, 34.050213, 22.284756>,  <38.683517, 33.754826, 22.342127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419975, 34.050213, 22.284756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167072, 0.042255, 0.985039,
		0.733482, 0.672962, 0.095538,
		-0.658856, 0.738470, -0.143427,
		38.222317, 34.271755, 22.241728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910805, 34.208466, 22.831194>,  <38.683517, 33.754826, 22.342127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910805, 34.208466, 22.831194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.533726, 34.304535, 22.738546>,  <38.307480, 34.362175, 22.682959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.533726, 34.304535, 22.738546>,  <38.910805, 34.208466, 22.831194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533726, 34.304535, 22.738546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238700, -0.000413, 0.971093,
		0.233133, 0.970730, 0.057718,
		-0.942694, 0.240171, -0.231617,
		38.250919, 34.376587, 22.669062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747044, 34.784340, 23.171606>,  <38.910805, 34.208466, 22.831194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747044, 34.784340, 23.171606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393379, 34.619404, 23.083750>,  <38.181183, 34.520443, 23.031036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393379, 34.619404, 23.083750>,  <38.747044, 34.784340, 23.171606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393379, 34.619404, 23.083750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245201, 0.009383, 0.969427,
		-0.397670, 0.910983, -0.109402,
		-0.884158, -0.412337, -0.219643,
		38.128132, 34.495701, 23.017857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225212, 35.023239, 23.661234>,  <38.747044, 34.784340, 23.171606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225212, 35.023239, 23.661234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036640, 34.700176, 23.519560>,  <37.923496, 34.506340, 23.434555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036640, 34.700176, 23.519560>,  <38.225212, 35.023239, 23.661234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036640, 34.700176, 23.519560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360816, -0.189826, 0.913114,
		-0.804713, 0.558268, -0.201924,
		-0.471433, -0.807653, -0.354187,
		37.895210, 34.457882, 23.413303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516602, 34.939022, 23.934280>,  <38.225212, 35.023239, 23.661234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516602, 34.939022, 23.934280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615788, 34.563755, 23.837648>,  <37.675301, 34.338596, 23.779669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615788, 34.563755, 23.837648>,  <37.516602, 34.939022, 23.934280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615788, 34.563755, 23.837648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476066, -0.335185, 0.813027,
		-0.843727, -0.086593, -0.529742,
		0.247964, -0.938164, -0.241580,
		37.690178, 34.282307, 23.765175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000408, 34.579433, 24.273451>,  <37.516602, 34.939022, 23.934280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000408, 34.579433, 24.273451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214455, 34.257748, 24.170002>,  <37.342884, 34.064735, 24.107933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214455, 34.257748, 24.170002>,  <37.000408, 34.579433, 24.273451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214455, 34.257748, 24.170002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401556, -0.511492, 0.759690,
		-0.743239, -0.302671, -0.596645,
		0.535116, -0.804218, -0.258621,
		37.374989, 34.016483, 24.092415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567635, 34.051464, 24.307299>,  <37.000408, 34.579433, 24.273451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567635, 34.051464, 24.307299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927006, 33.883080, 24.357279>,  <37.142628, 33.782047, 24.387268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927006, 33.883080, 24.357279>,  <36.567635, 34.051464, 24.307299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927006, 33.883080, 24.357279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341815, -0.491818, 0.800798,
		-0.275652, -0.762172, -0.585756,
		0.898431, -0.420962, 0.124951,
		37.196537, 33.756790, 24.394764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436714, 33.294315, 24.485077>,  <36.567635, 34.051464, 24.307299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436714, 33.294315, 24.485077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805752, 33.369820, 24.619656>,  <37.027172, 33.415123, 24.700403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.805752, 33.369820, 24.619656>,  <36.436714, 33.294315, 24.485077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805752, 33.369820, 24.619656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178984, -0.563141, 0.806744,
		0.341747, -0.804514, -0.485764,
		0.922591, 0.188758, 0.336447,
		37.082531, 33.426449, 24.720591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636215, 32.654446, 24.873684>,  <36.436714, 33.294315, 24.485077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636215, 32.654446, 24.873684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870422, 32.952511, 25.001369>,  <37.010948, 33.131351, 25.077980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870422, 32.952511, 25.001369>,  <36.636215, 32.654446, 24.873684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870422, 32.952511, 25.001369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066570, -0.348242, 0.935038,
		0.807919, -0.568735, -0.154298,
		0.585522, 0.745163, 0.319212,
		37.046078, 33.176060, 25.097134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186619, 32.358517, 25.350365>,  <36.636215, 32.654446, 24.873684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186619, 32.358517, 25.350365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.159523, 32.748196, 25.436483>,  <37.143265, 32.982002, 25.488153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.159523, 32.748196, 25.436483>,  <37.186619, 32.358517, 25.350365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159523, 32.748196, 25.436483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037440, -0.218121, 0.975203,
		0.997000, 0.057998, 0.051249,
		-0.067738, 0.974197, 0.215296,
		37.139202, 33.040455, 25.501072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641968, 32.508766, 25.978100>,  <37.186619, 32.358517, 25.350365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641968, 32.508766, 25.978100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384617, 32.814663, 25.992126>,  <37.230206, 32.998203, 26.000544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384617, 32.814663, 25.992126>,  <37.641968, 32.508766, 25.978100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384617, 32.814663, 25.992126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119999, -0.145986, 0.981982,
		0.756085, 0.627577, 0.185693,
		-0.643378, 0.764745, 0.035069,
		37.191605, 33.044086, 26.002647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.506683, 33.416763, 31.135271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147297, 33.591228, 31.115162>,  <39.931667, 33.695908, 31.103096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147297, 33.591228, 31.115162>,  <40.506683, 33.416763, 31.135271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147297, 33.591228, 31.115162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054444, 0.224295, 0.972999,
		0.435661, 0.871467, -0.225267,
		-0.898463, 0.436162, -0.050271,
		39.877758, 33.722076, 31.100080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599438, 33.958782, 31.520029>,  <40.506683, 33.416763, 31.135271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599438, 33.958782, 31.520029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.211002, 33.863564, 31.512924>,  <39.977940, 33.806431, 31.508661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.211002, 33.863564, 31.512924>,  <40.599438, 33.958782, 31.520029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211002, 33.863564, 31.512924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022601, 0.017618, 0.999590,
		-0.237640, 0.971093, -0.022489,
		-0.971090, -0.238051, -0.017761,
		39.919674, 33.792149, 31.507595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210289, 34.428963, 31.932983>,  <40.599438, 33.958782, 31.520029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210289, 34.428963, 31.932983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974926, 34.106384, 31.909582>,  <39.833710, 33.912838, 31.895542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974926, 34.106384, 31.909582>,  <40.210289, 34.428963, 31.932983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974926, 34.106384, 31.909582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107537, 0.006341, 0.994181,
		-0.801385, 0.591270, -0.090454,
		-0.588403, -0.806449, -0.058501,
		39.798405, 33.864449, 31.892033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623158, 34.672943, 32.269455>,  <40.210289, 34.428963, 31.932983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623158, 34.672943, 32.269455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.553497, 34.280430, 32.236572>,  <39.511700, 34.044922, 32.216843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.553497, 34.280430, 32.236572>,  <39.623158, 34.672943, 32.269455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553497, 34.280430, 32.236572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333028, -0.019871, 0.942708,
		-0.926696, 0.191548, -0.323333,
		-0.174149, -0.981282, -0.082205,
		39.501251, 33.986046, 32.211910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971378, 34.604370, 32.410839>,  <39.623158, 34.672943, 32.269455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971378, 34.604370, 32.410839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163723, 34.267078, 32.506954>,  <39.279129, 34.064705, 32.564625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163723, 34.267078, 32.506954>,  <38.971378, 34.604370, 32.410839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163723, 34.267078, 32.506954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363280, 0.057817, 0.929884,
		-0.798000, -0.534433, -0.278528,
		0.480857, -0.843231, 0.240287,
		39.307980, 34.014111, 32.579041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439713, 34.137005, 32.807285>,  <38.971378, 34.604370, 32.410839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439713, 34.137005, 32.807285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806450, 34.008263, 32.901787>,  <39.026493, 33.931019, 32.958488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806450, 34.008263, 32.901787>,  <38.439713, 34.137005, 32.807285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806450, 34.008263, 32.901787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248233, 0.003926, 0.968692,
		-0.312706, -0.946781, -0.076296,
		0.916839, -0.321855, 0.236250,
		39.081501, 33.911705, 32.972660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309414, 33.562668, 33.156078>,  <38.439713, 34.137005, 32.807285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309414, 33.562668, 33.156078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.682064, 33.641823, 33.278008>,  <38.905655, 33.689316, 33.351166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.682064, 33.641823, 33.278008>,  <38.309414, 33.562668, 33.156078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682064, 33.641823, 33.278008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287346, -0.112432, 0.951205,
		0.222506, -0.973755, -0.047881,
		0.931624, 0.197891, 0.304821,
		38.961552, 33.701191, 33.369453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361282, 33.127995, 33.740841>,  <38.309414, 33.562668, 33.156078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361282, 33.127995, 33.740841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.665020, 33.387371, 33.762459>,  <38.847263, 33.542999, 33.775429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.665020, 33.387371, 33.762459>,  <38.361282, 33.127995, 33.740841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665020, 33.387371, 33.762459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159111, 0.104508, 0.981714,
		0.630939, -0.754054, 0.182532,
		0.759342, 0.648444, 0.054040,
		38.892822, 33.581905, 33.778671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884995, 32.829868, 34.239910>,  <38.361282, 33.127995, 33.740841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884995, 32.829868, 34.239910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.940453, 33.225986, 34.235966>,  <38.973728, 33.463657, 34.233601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.940453, 33.225986, 34.235966>,  <38.884995, 32.829868, 34.239910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940453, 33.225986, 34.235966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274973, 0.048056, 0.960250,
		0.951403, -0.130423, 0.278967,
		0.138644, 0.990293, -0.009858,
		38.982044, 33.523075, 34.233009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121208, 32.952885, 34.944477>,  <38.884995, 32.829868, 34.239910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121208, 32.952885, 34.944477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.003704, 33.308556, 34.804153>,  <38.933201, 33.521957, 34.719959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.003704, 33.308556, 34.804153>,  <39.121208, 32.952885, 34.944477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003704, 33.308556, 34.804153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308247, 0.259272, 0.915293,
		0.904813, 0.377015, 0.197922,
		-0.293764, 0.889178, -0.350806,
		38.915573, 33.575310, 34.698910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376736, 33.530941, 35.388107>,  <39.121208, 32.952885, 34.944477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376736, 33.530941, 35.388107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.047588, 33.633743, 35.185390>,  <38.850101, 33.695423, 35.063759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.047588, 33.633743, 35.185390>,  <39.376736, 33.530941, 35.388107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047588, 33.633743, 35.185390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370604, 0.433355, 0.821497,
		0.430750, 0.863801, -0.261346,
		-0.822865, 0.257004, -0.506795,
		38.800728, 33.710846, 35.033352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176807, 34.246494, 35.635700>,  <39.376736, 33.530941, 35.388107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176807, 34.246494, 35.635700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.866283, 34.048252, 35.479897>,  <38.679970, 33.929306, 35.386414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.866283, 34.048252, 35.479897>,  <39.176807, 34.246494, 35.635700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866283, 34.048252, 35.479897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558247, 0.253559, 0.789980,
		-0.292758, 0.830710, -0.473512,
		-0.776307, -0.495610, -0.389510,
		38.633392, 33.899570, 35.363045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558987, 34.706882, 35.674603>,  <39.176807, 34.246494, 35.635700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558987, 34.706882, 35.674603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446640, 34.323048, 35.681713>,  <38.379230, 34.092747, 35.685978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446640, 34.323048, 35.681713>,  <38.558987, 34.706882, 35.674603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446640, 34.323048, 35.681713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511665, 0.165377, 0.843119,
		-0.811982, 0.227709, -0.537433,
		-0.280865, -0.959583, 0.017772,
		38.362381, 34.035172, 35.687046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752487, 35.040176, 36.328865>,  <38.558987, 34.706882, 35.674603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752487, 35.040176, 36.328865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764748, 35.415058, 36.467834>,  <38.772106, 35.639988, 36.551216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764748, 35.415058, 36.467834>,  <38.752487, 35.040176, 36.328865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764748, 35.415058, 36.467834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124159, 0.348470, -0.929060,
		-0.991789, -0.014656, 0.127045,
		0.030656, 0.937205, 0.347428,
		38.773945, 35.696220, 36.572063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267979, 35.343624, 35.997593>,  <38.752487, 35.040176, 36.328865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267979, 35.343624, 35.997593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.553143, 35.593208, 36.125618>,  <38.724239, 35.742958, 36.202435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.553143, 35.593208, 36.125618>,  <38.267979, 35.343624, 35.997593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553143, 35.593208, 36.125618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035678, 0.423547, -0.905171,
		-0.700349, 0.656723, 0.279688,
		0.712908, 0.623957, 0.320062,
		38.767014, 35.780396, 36.221638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190296, 35.947018, 35.742813>,  <38.267979, 35.343624, 35.997593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190296, 35.947018, 35.742813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568844, 36.021255, 35.848598>,  <38.795971, 36.065796, 35.912071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568844, 36.021255, 35.848598>,  <38.190296, 35.947018, 35.742813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568844, 36.021255, 35.848598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136846, 0.511246, -0.848470,
		-0.292675, 0.839157, 0.458429,
		0.946369, 0.185592, 0.264464,
		38.852753, 36.076935, 35.927937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312210, 36.527653, 35.317406>,  <38.190296, 35.947018, 35.742813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312210, 36.527653, 35.317406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.671608, 36.440926, 35.470085>,  <38.887245, 36.388889, 35.561695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.671608, 36.440926, 35.470085>,  <38.312210, 36.527653, 35.317406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671608, 36.440926, 35.470085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436760, 0.354128, -0.826942,
		0.044125, 0.909716, 0.412880,
		0.898495, -0.216818, 0.381702,
		38.941158, 36.375881, 35.584595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745125, 37.107510, 35.342140>,  <38.312210, 36.527653, 35.317406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745125, 37.107510, 35.342140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.969719, 36.777695, 35.314232>,  <39.104477, 36.579803, 35.297489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.969719, 36.777695, 35.314232>,  <38.745125, 37.107510, 35.342140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969719, 36.777695, 35.314232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308340, 0.286720, -0.907038,
		0.767893, 0.487777, 0.415228,
		0.561486, -0.824539, -0.069769,
		39.138165, 36.530334, 35.293301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377167, 37.372429, 35.071980>,  <38.745125, 37.107510, 35.342140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377167, 37.372429, 35.071980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.341347, 36.983654, 34.984962>,  <39.319855, 36.750389, 34.932751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.341347, 36.983654, 34.984962>,  <39.377167, 37.372429, 35.071980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341347, 36.983654, 34.984962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276254, 0.185614, -0.942991,
		0.956904, -0.144540, 0.251879,
		-0.089548, -0.971934, -0.217545,
		39.314484, 36.692074, 34.919701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956104, 37.193417, 34.533287>,  <39.377167, 37.372429, 35.071980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956104, 37.193417, 34.533287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694096, 36.894157, 34.490917>,  <39.536888, 36.714603, 34.465496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694096, 36.894157, 34.490917>,  <39.956104, 37.193417, 34.533287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694096, 36.894157, 34.490917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234423, -0.067938, -0.969758,
		0.718323, -0.660048, 0.219884,
		-0.655025, -0.748145, -0.105929,
		39.497589, 36.669712, 34.459137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181767, 36.894821, 34.000805>,  <39.956104, 37.193417, 34.533287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181767, 36.894821, 34.000805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831619, 36.701664, 34.010185>,  <39.621532, 36.585770, 34.015816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831619, 36.701664, 34.010185>,  <40.181767, 36.894821, 34.000805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831619, 36.701664, 34.010185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164855, -0.343742, -0.924480,
		0.454491, -0.805390, 0.380507,
		-0.875363, -0.482896, 0.023455,
		39.569012, 36.556793, 34.017223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340950, 36.355160, 33.625252>,  <40.181767, 36.894821, 34.000805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340950, 36.355160, 33.625252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.941181, 36.357391, 33.638721>,  <39.701321, 36.358730, 33.646801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.941181, 36.357391, 33.638721>,  <40.340950, 36.355160, 33.625252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941181, 36.357391, 33.638721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033437, -0.357703, -0.933236,
		0.006838, -0.933819, 0.357681,
		-0.999417, 0.005579, 0.033670,
		39.641357, 36.359066, 33.648823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949200, 35.709003, 33.376419>,  <40.340950, 36.355160, 33.625252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949200, 35.709003, 33.376419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703964, 36.017506, 33.307972>,  <39.556824, 36.202606, 33.266903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703964, 36.017506, 33.307972>,  <39.949200, 35.709003, 33.376419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703964, 36.017506, 33.307972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203831, -0.363697, -0.908943,
		-0.763265, -0.522384, 0.380185,
		-0.613090, 0.771258, -0.171119,
		39.520039, 36.248882, 33.256638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352852, 35.449238, 33.009716>,  <39.949200, 35.709003, 33.376419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352852, 35.449238, 33.009716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386803, 35.836319, 32.914768>,  <39.407173, 36.068569, 32.857800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386803, 35.836319, 32.914768>,  <39.352852, 35.449238, 33.009716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386803, 35.836319, 32.914768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103718, -0.228354, -0.968038,
		-0.990979, 0.106781, 0.080987,
		0.084875, 0.967705, -0.237369,
		39.412266, 36.126629, 32.843559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071487, 35.481548, 32.322487>,  <39.352852, 35.449238, 33.009716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071487, 35.481548, 32.322487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.216980, 35.854149, 32.323246>,  <39.304276, 36.077709, 32.323700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.216980, 35.854149, 32.323246>,  <39.071487, 35.481548, 32.322487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216980, 35.854149, 32.323246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089285, -0.032835, -0.995465,
		-0.927216, 0.362248, -0.095113,
		0.363729, 0.931503, 0.001898,
		39.326099, 36.133598, 32.323814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711758, 35.749329, 31.719379>,  <39.071487, 35.481548, 32.322487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711758, 35.749329, 31.719379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.034214, 35.967278, 31.811682>,  <39.227688, 36.098045, 31.867064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.034214, 35.967278, 31.811682>,  <38.711758, 35.749329, 31.719379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034214, 35.967278, 31.811682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124045, 0.225697, -0.966268,
		-0.578573, 0.807574, 0.114356,
		0.806143, 0.544871, 0.230758,
		39.276058, 36.130737, 31.880909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564880, 36.355659, 31.384375>,  <38.711758, 35.749329, 31.719379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564880, 36.355659, 31.384375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959843, 36.397617, 31.431753>,  <39.196819, 36.422791, 31.460180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959843, 36.397617, 31.431753>,  <38.564880, 36.355659, 31.384375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959843, 36.397617, 31.431753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090454, 0.239955, -0.966561,
		-0.129804, 0.965101, 0.227445,
		0.987405, 0.104890, 0.118444,
		39.256065, 36.429085, 31.467287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749653, 37.053673, 31.062229>,  <38.564880, 36.355659, 31.384375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749653, 37.053673, 31.062229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046818, 36.785984, 31.068161>,  <39.225117, 36.625370, 31.071720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046818, 36.785984, 31.068161>,  <38.749653, 37.053673, 31.062229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046818, 36.785984, 31.068161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043706, -0.070604, -0.996547,
		0.667958, 0.739701, -0.081702,
		0.742915, -0.669222, 0.014831,
		39.269691, 36.585217, 31.072611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892555, 37.767483, 31.077541>,  <38.749653, 37.053673, 31.062229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892555, 37.767483, 31.077541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664211, 38.081635, 30.981791>,  <38.527203, 38.270126, 30.924341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664211, 38.081635, 30.981791>,  <38.892555, 37.767483, 31.077541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664211, 38.081635, 30.981791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552963, -0.152254, 0.819177,
		0.606915, 0.600004, 0.521200,
		-0.570864, 0.785375, -0.239375,
		38.492950, 38.317245, 30.909979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816402, 38.085911, 31.684275>,  <38.892555, 37.767483, 31.077541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816402, 38.085911, 31.684275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511776, 38.205780, 31.454418>,  <38.328999, 38.277702, 31.316504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511776, 38.205780, 31.454418>,  <38.816402, 38.085911, 31.684275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511776, 38.205780, 31.454418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583720, 0.068072, 0.809096,
		0.281581, 0.951611, 0.123084,
		-0.761566, 0.299672, -0.574642,
		38.283306, 38.295681, 31.282026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376270, 38.581646, 32.165676>,  <38.816402, 38.085911, 31.684275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376270, 38.581646, 32.165676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.108829, 38.506889, 31.877773>,  <37.948364, 38.462036, 31.705032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.108829, 38.506889, 31.877773>,  <38.376270, 38.581646, 32.165676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108829, 38.506889, 31.877773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730629, -0.015038, 0.682609,
		-0.138394, 0.982266, -0.126491,
		-0.668602, -0.186887, -0.719753,
		37.908249, 38.450825, 31.661848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790321, 38.976902, 32.354317>,  <38.376270, 38.581646, 32.165676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790321, 38.976902, 32.354317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675358, 38.691154, 32.099110>,  <37.606380, 38.519707, 31.945986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675358, 38.691154, 32.099110>,  <37.790321, 38.976902, 32.354317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675358, 38.691154, 32.099110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801491, -0.185332, 0.568563,
		-0.524411, 0.674777, -0.519297,
		-0.287411, -0.714373, -0.638018,
		37.589134, 38.476841, 31.907705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052376, 39.064899, 32.178612>,  <37.790321, 38.976902, 32.354317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052376, 39.064899, 32.178612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.142876, 38.685295, 32.090797>,  <37.197174, 38.457535, 32.038109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.142876, 38.685295, 32.090797>,  <37.052376, 39.064899, 32.178612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142876, 38.685295, 32.090797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792531, -0.310376, 0.524939,
		-0.566310, 0.055221, -0.822341,
		0.226247, -0.949009, -0.219534,
		37.210751, 38.400593, 32.024937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397266, 38.881119, 32.033897>,  <37.052376, 39.064899, 32.178612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397266, 38.881119, 32.033897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.619843, 38.559200, 32.116528>,  <36.753387, 38.366051, 32.166107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.619843, 38.559200, 32.116528>,  <36.397266, 38.881119, 32.033897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619843, 38.559200, 32.116528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723328, -0.346863, 0.597062,
		-0.408859, -0.481654, -0.775141,
		0.556445, -0.804795, 0.206576,
		36.786777, 38.317760, 32.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878616, 38.278378, 31.954414>,  <36.397266, 38.881119, 32.033897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878616, 38.278378, 31.954414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.197506, 38.155884, 32.162514>,  <36.388840, 38.082390, 32.287373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.197506, 38.155884, 32.162514>,  <35.878616, 38.278378, 31.954414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197506, 38.155884, 32.162514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603560, -0.421909, 0.676541,
		0.012322, -0.853356, -0.521183,
		0.797222, -0.306229, 0.520250,
		36.436672, 38.064014, 32.318588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807293, 37.540058, 32.074337>,  <35.878616, 38.278378, 31.954414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807293, 37.540058, 32.074337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.031822, 37.721054, 32.351513>,  <36.166538, 37.829651, 32.517818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.031822, 37.721054, 32.351513>,  <35.807293, 37.540058, 32.074337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031822, 37.721054, 32.351513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603646, -0.348933, 0.716839,
		0.566155, -0.820668, 0.077282,
		0.561320, 0.452493, 0.692943,
		36.200218, 37.856800, 32.559395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718266, 37.138363, 32.666229>,  <35.807293, 37.540058, 32.074337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718266, 37.138363, 32.666229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.874115, 37.472019, 32.822388>,  <35.967625, 37.672211, 32.916084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.874115, 37.472019, 32.822388>,  <35.718266, 37.138363, 32.666229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874115, 37.472019, 32.822388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555315, -0.125398, 0.822132,
		0.734726, -0.537114, 0.414351,
		0.389620, 0.834137, 0.390400,
		35.991001, 37.722260, 32.939507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862675, 36.979290, 33.352848>,  <35.718266, 37.138363, 32.666229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862675, 36.979290, 33.352848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.818474, 37.376530, 33.337124>,  <35.791954, 37.614872, 33.327690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.818474, 37.376530, 33.337124>,  <35.862675, 36.979290, 33.352848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818474, 37.376530, 33.337124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652837, -0.042706, 0.756294,
		0.749395, 0.109239, 0.653050,
		-0.110506, 0.993098, -0.039311,
		35.785320, 37.674458, 33.325329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012775, 37.106850, 34.113384>,  <35.862675, 36.979290, 33.352848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012775, 37.106850, 34.113384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.891312, 37.461205, 33.973099>,  <35.818432, 37.673817, 33.888927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.891312, 37.461205, 33.973099>,  <36.012775, 37.106850, 34.113384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891312, 37.461205, 33.973099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345812, 0.240522, 0.906953,
		0.887809, 0.396688, 0.233311,
		-0.303661, 0.885883, -0.350717,
		35.800213, 37.726971, 33.867882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352962, 37.641891, 34.585625>,  <36.012775, 37.106850, 34.113384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352962, 37.641891, 34.585625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.010883, 37.754654, 34.411652>,  <35.805637, 37.822311, 34.307266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.010883, 37.754654, 34.411652>,  <36.352962, 37.641891, 34.585625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010883, 37.754654, 34.411652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388886, 0.205761, 0.898014,
		0.342648, 0.937118, -0.066337,
		-0.855196, 0.281905, -0.434936,
		35.754326, 37.839226, 34.281170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.531544, 39.679729, 27.846544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137173, 39.613178, 27.839979>,  <39.900551, 39.573246, 27.836040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137173, 39.613178, 27.839979>,  <40.531544, 39.679729, 27.846544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137173, 39.613178, 27.839979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012332, -0.025516, 0.999598,
		-0.166734, 0.985731, 0.023105,
		-0.985925, -0.166382, -0.016411,
		39.841396, 39.563263, 27.835056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255604, 40.086826, 28.331148>,  <40.531544, 39.679729, 27.846544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255604, 40.086826, 28.331148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936668, 39.849579, 28.286482>,  <39.745308, 39.707230, 28.259682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936668, 39.849579, 28.286482>,  <40.255604, 40.086826, 28.331148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936668, 39.849579, 28.286482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171940, 0.045874, 0.984039,
		-0.578525, 0.803810, -0.138557,
		-0.797337, -0.593114, -0.111668,
		39.697468, 39.671646, 28.252981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672428, 40.412640, 28.754271>,  <40.255604, 40.086826, 28.331148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672428, 40.412640, 28.754271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579998, 40.024338, 28.728230>,  <39.524540, 39.791355, 28.712605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579998, 40.024338, 28.728230>,  <39.672428, 40.412640, 28.754271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579998, 40.024338, 28.728230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353011, 0.021297, 0.935377,
		-0.906636, 0.239123, -0.347609,
		-0.231073, -0.970756, -0.065104,
		39.510677, 39.733112, 28.708698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308712, 40.354469, 29.289356>,  <39.672428, 40.412640, 28.754271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308712, 40.354469, 29.289356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381176, 39.970631, 29.203239>,  <39.424652, 39.740326, 29.151569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381176, 39.970631, 29.203239>,  <39.308712, 40.354469, 29.289356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381176, 39.970631, 29.203239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450236, -0.275548, 0.849330,
		-0.874340, -0.056930, -0.481963,
		0.181156, -0.959600, -0.215291,
		39.435524, 39.682751, 29.138653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696445, 40.003811, 29.276993>,  <39.308712, 40.354469, 29.289356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696445, 40.003811, 29.276993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949829, 39.698559, 29.328152>,  <39.101860, 39.515408, 29.358847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949829, 39.698559, 29.328152>,  <38.696445, 40.003811, 29.276993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949829, 39.698559, 29.328152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521792, -0.299244, 0.798865,
		-0.571367, -0.572786, -0.587756,
		0.633461, -0.763131, 0.127897,
		39.139866, 39.469620, 29.366520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299053, 39.333271, 29.254225>,  <38.696445, 40.003811, 29.276993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299053, 39.333271, 29.254225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640476, 39.246586, 29.443737>,  <38.845329, 39.194576, 29.557446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640476, 39.246586, 29.443737>,  <38.299053, 39.333271, 29.254225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640476, 39.246586, 29.443737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520046, -0.409170, 0.749755,
		0.031380, -0.886351, -0.461950,
		0.853562, -0.216708, 0.473783,
		38.896545, 39.181572, 29.585873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315174, 38.589222, 29.388655>,  <38.299053, 39.333271, 29.254225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315174, 38.589222, 29.388655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581646, 38.741295, 29.645298>,  <38.741528, 38.832539, 29.799284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581646, 38.741295, 29.645298>,  <38.315174, 38.589222, 29.388655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581646, 38.741295, 29.645298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495214, -0.417772, 0.761728,
		0.557646, -0.825182, -0.090037,
		0.666179, 0.380187, 0.641610,
		38.781498, 38.855350, 29.837782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575562, 37.949478, 29.668163>,  <38.315174, 38.589222, 29.388655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575562, 37.949478, 29.668163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627201, 38.272549, 29.898293>,  <38.658184, 38.466389, 30.036369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627201, 38.272549, 29.898293>,  <38.575562, 37.949478, 29.668163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627201, 38.272549, 29.898293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536055, -0.431257, 0.725715,
		0.834253, -0.402095, 0.377282,
		0.129101, 0.807674, 0.575322,
		38.665932, 38.514851, 30.070889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738113, 37.722622, 30.381172>,  <38.575562, 37.949478, 29.668163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738113, 37.722622, 30.381172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629517, 38.099831, 30.458107>,  <38.564358, 38.326157, 30.504267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629517, 38.099831, 30.458107>,  <38.738113, 37.722622, 30.381172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629517, 38.099831, 30.458107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453418, -0.301598, 0.838720,
		0.848943, 0.140498, 0.509466,
		-0.271493, 0.943026, 0.192335,
		38.548069, 38.382740, 30.515808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284348, 37.391705, 30.574364>,  <38.738113, 37.722622, 30.381172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284348, 37.391705, 30.574364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428398, 37.020454, 30.612093>,  <39.514828, 36.797707, 30.634731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428398, 37.020454, 30.612093>,  <39.284348, 37.391705, 30.574364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428398, 37.020454, 30.612093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342458, 0.037472, -0.938786,
		0.867773, 0.370385, 0.331337,
		0.360128, -0.928122, 0.094324,
		39.536438, 36.742020, 30.640390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018227, 37.359108, 30.284485>,  <39.284348, 37.391705, 30.574364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018227, 37.359108, 30.284485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870541, 36.988163, 30.308777>,  <39.781929, 36.765598, 30.323351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870541, 36.988163, 30.308777>,  <40.018227, 37.359108, 30.284485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870541, 36.988163, 30.308777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220407, -0.150858, -0.963671,
		0.902830, -0.342415, 0.260095,
		-0.369213, -0.927358, 0.060729,
		39.759777, 36.709957, 30.326996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471199, 36.988953, 29.847973>,  <40.018227, 37.359108, 30.284485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471199, 36.988953, 29.847973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149445, 36.754784, 29.888449>,  <39.956390, 36.614281, 29.912735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149445, 36.754784, 29.888449>,  <40.471199, 36.988953, 29.847973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149445, 36.754784, 29.888449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100178, -0.301542, -0.948176,
		0.585596, -0.752565, 0.301204,
		-0.804389, -0.585422, 0.101191,
		39.908127, 36.579159, 29.918806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667206, 36.418976, 29.533098>,  <40.471199, 36.988953, 29.847973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667206, 36.418976, 29.533098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267876, 36.419178, 29.556227>,  <40.028278, 36.419300, 29.570105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267876, 36.419178, 29.556227>,  <40.667206, 36.418976, 29.533098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267876, 36.419178, 29.556227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056320, -0.235099, -0.970338,
		0.013106, -0.971971, 0.234734,
		-0.998327, 0.000504, 0.057823,
		39.968376, 36.419331, 29.573574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599873, 35.837055, 29.262159>,  <40.667206, 36.418976, 29.533098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599873, 35.837055, 29.262159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275944, 36.062920, 29.198477>,  <40.081589, 36.198441, 29.160267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275944, 36.062920, 29.198477>,  <40.599873, 35.837055, 29.262159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275944, 36.062920, 29.198477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170563, -0.033043, -0.984793,
		-0.561337, -0.824659, -0.069551,
		-0.809820, 0.564664, -0.159204,
		40.032997, 36.232319, 29.150715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518555, 35.702385, 28.695377>,  <40.599873, 35.837055, 29.262159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518555, 35.702385, 28.695377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281170, 36.023651, 28.716249>,  <40.138737, 36.216412, 28.728773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281170, 36.023651, 28.716249>,  <40.518555, 35.702385, 28.695377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281170, 36.023651, 28.716249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021044, 0.049327, -0.998561,
		-0.804585, -0.593709, -0.012372,
		-0.593464, 0.803167, 0.052182,
		40.103130, 36.264603, 28.731903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984020, 35.500587, 28.220064>,  <40.518555, 35.702385, 28.695377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984020, 35.500587, 28.220064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978474, 35.899689, 28.246302>,  <39.975147, 36.139149, 28.262045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978474, 35.899689, 28.246302>,  <39.984020, 35.500587, 28.220064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978474, 35.899689, 28.246302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034459, 0.066040, -0.997222,
		-0.999310, -0.011565, -0.035297,
		-0.013864, 0.997750, 0.065595,
		39.974316, 36.199013, 28.265980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433411, 35.796528, 27.830059>,  <39.984020, 35.500587, 28.220064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433411, 35.796528, 27.830059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725746, 36.069000, 27.847332>,  <39.901146, 36.232483, 27.857695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725746, 36.069000, 27.847332>,  <39.433411, 35.796528, 27.830059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725746, 36.069000, 27.847332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032841, 0.028096, -0.999066,
		-0.681760, 0.731573, -0.001836,
		0.730838, 0.681184, 0.043180,
		39.944996, 36.273354, 27.860287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333126, 36.312180, 27.329100>,  <39.433411, 35.796528, 27.830059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333126, 36.312180, 27.329100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726650, 36.346786, 27.391872>,  <39.962765, 36.367550, 27.429535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726650, 36.346786, 27.391872>,  <39.333126, 36.312180, 27.329100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726650, 36.346786, 27.391872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148003, 0.101444, -0.983770,
		-0.101029, 0.991072, 0.086998,
		0.983813, 0.086514, 0.156930,
		40.021793, 36.372742, 27.438951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386677, 36.662708, 26.726788>,  <39.333126, 36.312180, 27.329100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386677, 36.662708, 26.726788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738483, 36.584255, 26.900219>,  <39.949566, 36.537186, 27.004278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738483, 36.584255, 26.900219>,  <39.386677, 36.662708, 26.726788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738483, 36.584255, 26.900219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465860, 0.168908, -0.868588,
		0.097121, 0.965921, 0.239926,
		0.879512, -0.196130, 0.433579,
		40.002338, 36.525417, 27.030293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790760, 37.162922, 26.387035>,  <39.386677, 36.662708, 26.726788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790760, 37.162922, 26.387035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064289, 36.909966, 26.532621>,  <40.228409, 36.758194, 26.619974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064289, 36.909966, 26.532621>,  <39.790760, 37.162922, 26.387035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064289, 36.909966, 26.532621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590027, 0.185806, -0.785713,
		0.429247, 0.752040, 0.500183,
		0.683824, -0.632386, 0.363967,
		40.269436, 36.720249, 26.641811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423374, 37.556023, 26.347155>,  <39.790760, 37.162922, 26.387035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423374, 37.556023, 26.347155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521072, 37.168736, 26.368725>,  <40.579689, 36.936363, 26.381668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521072, 37.168736, 26.368725>,  <40.423374, 37.556023, 26.347155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521072, 37.168736, 26.368725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738068, 0.149540, -0.657946,
		0.628968, 0.200501, 0.751132,
		0.244243, -0.968213, 0.053927,
		40.594345, 36.878273, 26.384903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100292, 37.487492, 26.386345>,  <40.423374, 37.556023, 26.347155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100292, 37.487492, 26.386345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960155, 37.149376, 26.224977>,  <40.876072, 36.946507, 26.128157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960155, 37.149376, 26.224977>,  <41.100292, 37.487492, 26.386345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960155, 37.149376, 26.224977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657975, 0.084418, -0.748293,
		0.666578, -0.527602, 0.526602,
		-0.350346, -0.845287, -0.403420,
		40.855053, 36.895790, 26.103952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704315, 37.129784, 26.162111>,  <41.100292, 37.487492, 26.386345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704315, 37.129784, 26.162111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397099, 36.988094, 25.948706>,  <41.212769, 36.903080, 25.820662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397099, 36.988094, 25.948706>,  <41.704315, 37.129784, 26.162111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397099, 36.988094, 25.948706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560005, 0.032642, -0.827846,
		0.310657, -0.934591, 0.173296,
		-0.768041, -0.354223, -0.533516,
		41.166687, 36.881828, 25.788651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.215427, 35.509892, 24.497990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.503536, 35.768459, 24.598663>,  <35.676403, 35.923599, 24.659067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.503536, 35.768459, 24.598663>,  <35.215427, 35.509892, 24.497990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503536, 35.768459, 24.598663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189741, -0.165399, 0.967803,
		0.667235, -0.744839, 0.003520,
		0.720275, 0.646419, 0.251686,
		35.719620, 35.962383, 24.674170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733784, 35.172466, 24.880960>,  <35.215427, 35.509892, 24.497990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733784, 35.172466, 24.880960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.733620, 35.558758, 24.984777>,  <35.733521, 35.790535, 25.047068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.733620, 35.558758, 24.984777>,  <35.733784, 35.172466, 24.880960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733620, 35.558758, 24.984777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279238, -0.249330, 0.927287,
		0.960222, -0.072095, 0.269770,
		-0.000409, 0.965731, 0.259544,
		35.733498, 35.848476, 25.062641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222683, 35.449074, 25.550076>,  <35.733784, 35.172466, 24.880960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222683, 35.449074, 25.550076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.933949, 35.724854, 25.526051>,  <35.760708, 35.890324, 25.511635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.933949, 35.724854, 25.526051>,  <36.222683, 35.449074, 25.550076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933949, 35.724854, 25.526051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178664, -0.101801, 0.978629,
		0.668604, 0.717142, 0.196663,
		-0.721837, 0.689452, -0.060063,
		35.717396, 35.931690, 25.508032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397961, 35.857639, 26.015316>,  <36.222683, 35.449074, 25.550076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397961, 35.857639, 26.015316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.013321, 35.958050, 25.970942>,  <35.782536, 36.018295, 25.944317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.013321, 35.958050, 25.970942>,  <36.397961, 35.857639, 26.015316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013321, 35.958050, 25.970942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154239, -0.159952, 0.975000,
		0.227006, 0.954674, 0.192528,
		-0.961602, 0.251026, -0.110938,
		35.724842, 36.033356, 25.937660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243603, 36.428051, 26.541363>,  <36.397961, 35.857639, 26.015316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243603, 36.428051, 26.541363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.891003, 36.271294, 26.436008>,  <35.679443, 36.177238, 26.372797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.891003, 36.271294, 26.436008>,  <36.243603, 36.428051, 26.541363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891003, 36.271294, 26.436008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283680, -0.006362, 0.958898,
		-0.377462, 0.919988, -0.105564,
		-0.881503, -0.391894, -0.263384,
		35.626553, 36.153725, 26.356993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762505, 36.661640, 27.058290>,  <36.243603, 36.428051, 26.541363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762505, 36.661640, 27.058290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.562416, 36.349495, 26.908186>,  <35.442364, 36.162209, 26.818123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.562416, 36.349495, 26.908186>,  <35.762505, 36.661640, 27.058290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562416, 36.349495, 26.908186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350075, -0.214123, 0.911920,
		-0.791977, 0.587530, -0.166075,
		-0.500220, -0.780359, -0.375260,
		35.412350, 36.115387, 26.795609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157642, 36.645096, 27.520849>,  <35.762505, 36.661640, 27.058290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157642, 36.645096, 27.520849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145500, 36.308441, 27.305174>,  <35.138214, 36.106449, 27.175768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145500, 36.308441, 27.305174>,  <35.157642, 36.645096, 27.520849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145500, 36.308441, 27.305174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444902, -0.471676, 0.761305,
		-0.895065, 0.262997, -0.360127,
		-0.030357, -0.841638, -0.539188,
		35.136395, 36.055950, 27.143417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380764, 36.507710, 27.570539>,  <35.157642, 36.645096, 27.520849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380764, 36.507710, 27.570539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.607944, 36.188538, 27.489809>,  <34.744251, 35.997032, 27.441370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.607944, 36.188538, 27.489809>,  <34.380764, 36.507710, 27.570539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607944, 36.188538, 27.489809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247237, -0.399285, 0.882862,
		-0.785053, -0.451522, -0.424052,
		0.567949, -0.797935, -0.201827,
		34.778328, 35.949158, 27.429260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982433, 35.986767, 27.598520>,  <34.380764, 36.507710, 27.570539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982433, 35.986767, 27.598520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352985, 35.844379, 27.647682>,  <34.575317, 35.758945, 27.677179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352985, 35.844379, 27.647682>,  <33.982433, 35.986767, 27.598520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352985, 35.844379, 27.647682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299099, -0.497178, 0.814465,
		-0.228818, -0.791266, -0.567046,
		0.926381, -0.355967, 0.122904,
		34.630901, 35.737591, 27.684553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883327, 35.320843, 27.729464>,  <33.982433, 35.986767, 27.598520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883327, 35.320843, 27.729464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.248119, 35.398773, 27.873869>,  <34.466995, 35.445530, 27.960512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.248119, 35.398773, 27.873869>,  <33.883327, 35.320843, 27.729464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248119, 35.398773, 27.873869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195329, -0.567636, 0.799773,
		0.360739, -0.799895, -0.479619,
		0.911984, 0.194825, 0.361012,
		34.521713, 35.457222, 27.982172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132282, 34.701023, 27.886583>,  <33.883327, 35.320843, 27.729464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132282, 34.701023, 27.886583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.348652, 34.952477, 28.110090>,  <34.478474, 35.103348, 28.244194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.348652, 34.952477, 28.110090>,  <34.132282, 34.701023, 27.886583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348652, 34.952477, 28.110090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157313, -0.577009, 0.801444,
		0.826231, -0.521419, -0.213224,
		0.540921, 0.628635, 0.558769,
		34.510929, 35.141068, 28.277721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554863, 34.276276, 28.328068>,  <34.132282, 34.701023, 27.886583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554863, 34.276276, 28.328068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.551250, 34.636311, 28.502312>,  <34.549084, 34.852333, 28.606859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.551250, 34.636311, 28.502312>,  <34.554863, 34.276276, 28.328068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551250, 34.636311, 28.502312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063608, -0.435265, 0.898053,
		0.997934, -0.019597, 0.061185,
		-0.009033, 0.900089, 0.435612,
		34.548542, 34.906338, 28.632996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068615, 34.160706, 28.907587>,  <34.554863, 34.276276, 28.328068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068615, 34.160706, 28.907587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.868656, 34.494305, 29.001011>,  <34.748680, 34.694466, 29.057066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.868656, 34.494305, 29.001011>,  <35.068615, 34.160706, 28.907587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868656, 34.494305, 29.001011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078195, -0.312033, 0.946848,
		0.862549, 0.455061, 0.221198,
		-0.499894, 0.834000, 0.233560,
		34.718689, 34.744503, 29.071079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352489, 34.396370, 29.498039>,  <35.068615, 34.160706, 28.907587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352489, 34.396370, 29.498039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.992142, 34.569748, 29.507425>,  <34.775932, 34.673775, 29.513056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.992142, 34.569748, 29.507425>,  <35.352489, 34.396370, 29.498039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992142, 34.569748, 29.507425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144340, -0.350095, 0.925527,
		0.409383, 0.830395, 0.377955,
		-0.900873, 0.433449, 0.023464,
		34.721878, 34.699783, 29.514465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038654, 34.285137, 29.782776>,  <35.352489, 34.396370, 29.498039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038654, 34.285137, 29.782776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171799, 33.915585, 29.858297>,  <36.251686, 33.693851, 29.903610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171799, 33.915585, 29.858297>,  <36.038654, 34.285137, 29.782776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171799, 33.915585, 29.858297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255541, -0.104352, -0.961150,
		0.907690, 0.368179, 0.201354,
		0.332863, -0.923881, 0.188804,
		36.271656, 33.638420, 29.914938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682476, 34.215446, 29.388599>,  <36.038654, 34.285137, 29.782776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682476, 34.215446, 29.388599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.575676, 33.838806, 29.470675>,  <36.511597, 33.612823, 29.519918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.575676, 33.838806, 29.470675>,  <36.682476, 34.215446, 29.388599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575676, 33.838806, 29.470675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242920, -0.271801, -0.931189,
		0.932577, -0.198784, 0.301304,
		-0.267001, -0.941599, 0.205187,
		36.495575, 33.556328, 29.532230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160934, 33.888630, 29.032631>,  <36.682476, 34.215446, 29.388599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160934, 33.888630, 29.032631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881485, 33.606766, 29.082235>,  <36.713818, 33.437645, 29.111998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881485, 33.606766, 29.082235>,  <37.160934, 33.888630, 29.032631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881485, 33.606766, 29.082235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013933, -0.159889, -0.987037,
		0.715358, -0.691291, 0.101883,
		-0.698620, -0.704665, 0.124010,
		36.671898, 33.395367, 29.119438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454334, 33.284317, 28.740993>,  <37.160934, 33.888630, 29.032631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454334, 33.284317, 28.740993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055965, 33.252491, 28.723948>,  <36.816944, 33.233395, 28.713720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055965, 33.252491, 28.723948>,  <37.454334, 33.284317, 28.740993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055965, 33.252491, 28.723948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061724, -0.255887, -0.964734,
		0.065852, -0.963427, 0.259754,
		-0.995918, -0.079563, -0.042615,
		36.757191, 33.228622, 28.711163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322117, 32.632092, 28.479099>,  <37.454334, 33.284317, 28.740993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322117, 32.632092, 28.479099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986397, 32.842133, 28.422754>,  <36.784966, 32.968155, 28.388947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986397, 32.842133, 28.422754>,  <37.322117, 32.632092, 28.479099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986397, 32.842133, 28.422754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030257, -0.303811, -0.952252,
		-0.542821, -0.794966, 0.270878,
		-0.839303, 0.525098, -0.140862,
		36.734604, 32.999660, 28.380495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005608, 32.254467, 27.955593>,  <37.322117, 32.632092, 28.479099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005608, 32.254467, 27.955593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.820412, 32.608089, 27.930033>,  <36.709293, 32.820263, 27.914696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.820412, 32.608089, 27.930033>,  <37.005608, 32.254467, 27.955593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820412, 32.608089, 27.930033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283558, -0.216035, -0.934304,
		-0.839783, -0.414454, 0.350704,
		-0.462990, 0.884057, -0.063901,
		36.681515, 32.873306, 27.910862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662045, 32.099747, 27.464869>,  <37.005608, 32.254467, 27.955593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662045, 32.099747, 27.464869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646709, 32.499447, 27.466724>,  <36.637508, 32.739269, 27.467838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646709, 32.499447, 27.466724>,  <36.662045, 32.099747, 27.464869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646709, 32.499447, 27.466724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123502, -0.000129, -0.992345,
		-0.991604, -0.038615, 0.123415,
		-0.038335, 0.999254, 0.004641,
		36.635208, 32.799225, 27.468117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100498, 32.320866, 26.968746>,  <36.662045, 32.099747, 27.464869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100498, 32.320866, 26.968746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.357056, 32.622696, 27.024202>,  <36.510990, 32.803795, 27.057476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.357056, 32.622696, 27.024202>,  <36.100498, 32.320866, 26.968746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357056, 32.622696, 27.024202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031564, 0.154604, -0.987472,
		-0.766562, 0.637735, 0.075345,
		0.641395, 0.754580, 0.138643,
		36.549473, 32.849072, 27.065796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905888, 32.759663, 26.523466>,  <36.100498, 32.320866, 26.968746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905888, 32.759663, 26.523466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269814, 32.907627, 26.598724>,  <36.488171, 32.996407, 26.643879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.269814, 32.907627, 26.598724>,  <35.905888, 32.759663, 26.523466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269814, 32.907627, 26.598724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044904, 0.362949, -0.930726,
		-0.412569, 0.855241, 0.313608,
		0.909819, 0.369907, 0.188145,
		36.542759, 33.018600, 26.655169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962749, 33.553215, 26.232201>,  <35.905888, 32.759663, 26.523466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962749, 33.553215, 26.232201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.334702, 33.412537, 26.275356>,  <36.557873, 33.328129, 26.301249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.334702, 33.412537, 26.275356>,  <35.962749, 33.553215, 26.232201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334702, 33.412537, 26.275356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294663, 0.536492, -0.790791,
		0.220239, 0.767127, 0.602503,
		0.929875, -0.351699, 0.107887,
		36.613663, 33.307026, 26.307722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382092, 34.090946, 25.932812>,  <35.962749, 33.553215, 26.232201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382092, 34.090946, 25.932812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627773, 33.776947, 25.965149>,  <36.775181, 33.588547, 25.984550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627773, 33.776947, 25.965149>,  <36.382092, 34.090946, 25.932812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627773, 33.776947, 25.965149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455038, 0.268602, -0.848995,
		0.644742, 0.558244, 0.522179,
		0.614205, -0.784995, 0.080844,
		36.812035, 33.541447, 25.989403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086678, 34.324902, 25.827259>,  <36.382092, 34.090946, 25.932812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086678, 34.324902, 25.827259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096363, 33.935780, 25.735125>,  <37.102177, 33.702305, 25.679844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096363, 33.935780, 25.735125>,  <37.086678, 34.324902, 25.827259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096363, 33.935780, 25.735125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484531, 0.212956, -0.848457,
		0.874439, -0.091057, 0.476513,
		0.024218, -0.972809, -0.230337,
		37.103630, 33.643936, 25.666023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791435, 34.137115, 25.583204>,  <37.086678, 34.324902, 25.827259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791435, 34.137115, 25.583204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.555443, 33.858727, 25.419477>,  <37.413845, 33.691692, 25.321241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.555443, 33.858727, 25.419477>,  <37.791435, 34.137115, 25.583204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555443, 33.858727, 25.419477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495443, 0.088235, -0.864148,
		0.637540, -0.712626, 0.292758,
		-0.589983, -0.695973, -0.409319,
		37.378448, 33.649933, 25.296682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199150, 33.712021, 25.294567>,  <37.791435, 34.137115, 25.583204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199150, 33.712021, 25.294567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.849197, 33.641499, 25.114124>,  <37.639225, 33.599186, 25.005859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.849197, 33.641499, 25.114124>,  <38.199150, 33.712021, 25.294567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849197, 33.641499, 25.114124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448106, 0.058811, -0.892044,
		0.183802, -0.982577, 0.027551,
		-0.874882, -0.176305, -0.451108,
		37.586731, 33.588608, 24.978792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937702, 33.383156, 25.399551>,  <38.199150, 33.712021, 25.294567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937702, 33.383156, 25.399551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.280815, 33.588516, 25.409616>,  <39.486683, 33.711731, 25.415655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.280815, 33.588516, 25.409616>,  <38.937702, 33.383156, 25.399551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280815, 33.588516, 25.409616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078373, -0.179014, 0.980720,
		0.508009, -0.839269, -0.193791,
		0.857779, 0.513402, 0.025165,
		39.538151, 33.742538, 25.417166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232075, 33.063023, 25.833281>,  <38.937702, 33.383156, 25.399551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232075, 33.063023, 25.833281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415768, 33.418343, 25.830988>,  <39.525982, 33.631535, 25.829613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415768, 33.418343, 25.830988>,  <39.232075, 33.063023, 25.833281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415768, 33.418343, 25.830988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144683, -0.068431, 0.987109,
		0.876456, -0.454139, -0.159947,
		0.459230, 0.888299, -0.005730,
		39.553535, 33.684834, 25.829269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868011, 32.969292, 26.038616>,  <39.232075, 33.063023, 25.833281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868011, 32.969292, 26.038616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775818, 33.351864, 26.110300>,  <39.720501, 33.581406, 26.153311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775818, 33.351864, 26.110300>,  <39.868011, 32.969292, 26.038616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775818, 33.351864, 26.110300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191244, -0.136056, 0.972067,
		0.954099, 0.258316, -0.151553,
		-0.230481, 0.956432, 0.179212,
		39.706673, 33.638794, 26.164064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285831, 33.091248, 26.709755>,  <39.868011, 32.969292, 26.038616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285831, 33.091248, 26.709755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068153, 33.426083, 26.687365>,  <39.937546, 33.626984, 26.673931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068153, 33.426083, 26.687365>,  <40.285831, 33.091248, 26.709755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068153, 33.426083, 26.687365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187825, 0.186590, 0.964316,
		0.817663, 0.514263, -0.258767,
		-0.544195, 0.837089, -0.055977,
		39.904896, 33.677208, 26.670572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712040, 33.581429, 27.070780>,  <40.285831, 33.091248, 26.709755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712040, 33.581429, 27.070780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.332874, 33.708828, 27.072132>,  <40.105373, 33.785267, 27.072943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.332874, 33.708828, 27.072132>,  <40.712040, 33.581429, 27.070780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332874, 33.708828, 27.072132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066795, 0.188396, 0.979819,
		0.311435, 0.929013, -0.199858,
		-0.947917, 0.318499, 0.003381,
		40.048500, 33.804379, 27.073147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648666, 34.228981, 27.485216>,  <40.712040, 33.581429, 27.070780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648666, 34.228981, 27.485216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267128, 34.108948, 27.480696>,  <40.038204, 34.036926, 27.477983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267128, 34.108948, 27.480696>,  <40.648666, 34.228981, 27.485216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267128, 34.108948, 27.480696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048069, 0.115428, 0.992152,
		-0.296424, 0.946904, -0.124526,
		-0.953846, -0.300083, -0.011301,
		39.980972, 34.018921, 27.477306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447655, 34.433552, 28.080372>,  <40.648666, 34.228981, 27.485216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447655, 34.433552, 28.080372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122459, 34.224922, 27.976828>,  <39.927341, 34.099743, 27.914701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122459, 34.224922, 27.976828>,  <40.447655, 34.433552, 28.080372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122459, 34.224922, 27.976828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241512, -0.102475, 0.964972,
		-0.529835, 0.847027, -0.042657,
		-0.812986, -0.521578, -0.258861,
		39.878563, 34.068447, 27.899170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815823, 34.749817, 28.514105>,  <40.447655, 34.433552, 28.080372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815823, 34.749817, 28.514105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789963, 34.365421, 28.406542>,  <39.774445, 34.134785, 28.342003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789963, 34.365421, 28.406542>,  <39.815823, 34.749817, 28.514105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789963, 34.365421, 28.406542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206598, -0.250745, 0.945751,
		-0.976287, 0.116702, -0.182328,
		-0.064653, -0.960993, -0.268910,
		39.770565, 34.077122, 28.325869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229256, 34.553017, 28.929319>,  <39.815823, 34.749817, 28.514105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229256, 34.553017, 28.929319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451561, 34.237099, 28.825504>,  <39.584942, 34.047550, 28.763216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.451561, 34.237099, 28.825504>,  <39.229256, 34.553017, 28.929319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451561, 34.237099, 28.825504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169527, -0.413297, 0.894677,
		-0.813875, -0.453226, -0.363584,
		0.555759, -0.789792, -0.259538,
		39.618290, 34.000160, 28.747643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790863, 34.024799, 28.949455>,  <39.229256, 34.553017, 28.929319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790863, 34.024799, 28.949455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.158211, 33.882858, 29.019518>,  <39.378620, 33.797691, 29.061556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.158211, 33.882858, 29.019518>,  <38.790863, 34.024799, 28.949455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158211, 33.882858, 29.019518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267109, -0.229273, 0.935995,
		-0.291985, -0.906372, -0.305342,
		0.918367, -0.354856, 0.175156,
		39.433720, 33.776402, 29.072065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753609, 33.405422, 29.319378>,  <38.790863, 34.024799, 28.949455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753609, 33.405422, 29.319378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.127106, 33.532162, 29.385979>,  <39.351204, 33.608208, 29.425940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.127106, 33.532162, 29.385979>,  <38.753609, 33.405422, 29.319378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127106, 33.532162, 29.385979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143230, -0.095543, 0.985067,
		0.328027, -0.943651, -0.043830,
		0.933747, 0.316851, 0.166500,
		39.407230, 33.627216, 29.435928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044807, 32.988216, 29.858328>,  <38.753609, 33.405422, 29.319378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044807, 32.988216, 29.858328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291672, 33.301674, 29.886641>,  <39.439789, 33.489750, 29.903627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291672, 33.301674, 29.886641>,  <39.044807, 32.988216, 29.858328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291672, 33.301674, 29.886641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092986, -0.016686, 0.995527,
		0.781324, -0.620981, 0.062571,
		0.617160, 0.783648, 0.070780,
		39.476818, 33.536770, 29.907875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619694, 32.826717, 30.323427>,  <39.044807, 32.988216, 29.858328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619694, 32.826717, 30.323427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.612995, 33.226635, 30.318762>,  <39.608974, 33.466583, 30.315962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.612995, 33.226635, 30.318762>,  <39.619694, 32.826717, 30.323427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612995, 33.226635, 30.318762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069489, 0.012800, 0.997501,
		0.997442, 0.015899, -0.069689,
		-0.016751, 0.999792, -0.011663,
		39.607971, 33.526573, 30.315264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040798, 32.965893, 30.807098>,  <39.619694, 32.826717, 30.323427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040798, 32.965893, 30.807098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867527, 33.319843, 30.738567>,  <39.763565, 33.532211, 30.697449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867527, 33.319843, 30.738567>,  <40.040798, 32.965893, 30.807098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867527, 33.319843, 30.738567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136733, 0.252404, 0.957912,
		0.890875, 0.391523, -0.230328,
		-0.433180, 0.884874, -0.171327,
		39.737572, 33.585304, 30.687170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.090782, 36.259892, 25.559706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.736061, 36.401928, 25.441391>,  <41.523228, 36.487148, 25.370403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.736061, 36.401928, 25.441391>,  <42.090782, 36.259892, 25.559706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736061, 36.401928, 25.441391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340430, 0.069073, -0.937729,
		-0.312548, -0.932276, -0.182138,
		-0.886804, 0.355091, -0.295786,
		41.470020, 36.508453, 25.352655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964691, 35.906670, 24.912167>,  <42.090782, 36.259892, 25.559706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964691, 35.906670, 24.912167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.710938, 36.215847, 24.916489>,  <41.558685, 36.401352, 24.919081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.710938, 36.215847, 24.916489>,  <41.964691, 35.906670, 24.912167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710938, 36.215847, 24.916489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284929, 0.246801, -0.926231,
		-0.718587, -0.584512, -0.376801,
		-0.634388, 0.772939, 0.010804,
		41.520622, 36.447727, 24.919729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419987, 35.792435, 24.343142>,  <41.964691, 35.906670, 24.912167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419987, 35.792435, 24.343142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.446743, 36.184082, 24.419937>,  <41.462799, 36.419071, 24.466015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.446743, 36.184082, 24.419937>,  <41.419987, 35.792435, 24.343142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446743, 36.184082, 24.419937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130019, 0.199332, -0.971268,
		-0.989252, 0.040011, 0.140638,
		0.066895, 0.979115, 0.191987,
		41.466812, 36.477818, 24.477533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883114, 36.062687, 23.896397>,  <41.419987, 35.792435, 24.343142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883114, 36.062687, 23.896397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.139450, 36.352364, 23.998276>,  <41.293251, 36.526169, 24.059404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.139450, 36.352364, 23.998276>,  <40.883114, 36.062687, 23.896397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139450, 36.352364, 23.998276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053028, 0.289228, -0.955790,
		-0.765840, 0.626016, 0.146947,
		0.640841, 0.724190, 0.254699,
		41.331703, 36.569622, 24.074686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708527, 36.563580, 23.389193>,  <40.883114, 36.062687, 23.896397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708527, 36.563580, 23.389193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.051006, 36.710129, 23.534903>,  <41.256493, 36.798058, 23.622328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.051006, 36.710129, 23.534903>,  <40.708527, 36.563580, 23.389193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051006, 36.710129, 23.534903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119199, 0.545972, -0.829281,
		-0.502709, 0.753450, 0.423789,
		0.856198, 0.366372, 0.364275,
		41.307865, 36.820042, 23.644184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770687, 37.311729, 23.242306>,  <40.708527, 36.563580, 23.389193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770687, 37.311729, 23.242306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.145779, 37.180054, 23.286659>,  <41.370834, 37.101048, 23.313272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.145779, 37.180054, 23.286659>,  <40.770687, 37.311729, 23.242306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145779, 37.180054, 23.286659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259369, 0.451201, -0.853900,
		0.231067, 0.829488, 0.508486,
		0.937729, -0.329193, 0.110886,
		41.427097, 37.081295, 23.319925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226284, 37.858326, 22.894690>,  <40.770687, 37.311729, 23.242306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226284, 37.858326, 22.894690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.478138, 37.547604, 22.890141>,  <41.629250, 37.361168, 22.887411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.478138, 37.547604, 22.890141>,  <41.226284, 37.858326, 22.894690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478138, 37.547604, 22.890141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259959, 0.224460, -0.939169,
		0.732107, 0.588377, 0.343266,
		0.629635, -0.776808, -0.011375,
		41.667027, 37.314560, 22.886728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856762, 38.052246, 22.569189>,  <41.226284, 37.858326, 22.894690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856762, 38.052246, 22.569189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.868145, 37.653393, 22.541164>,  <41.874973, 37.414082, 22.524349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.868145, 37.653393, 22.541164>,  <41.856762, 38.052246, 22.569189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868145, 37.653393, 22.541164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408156, 0.075574, -0.909779,
		0.912469, -0.002705, 0.409138,
		0.028459, -0.997137, -0.070063,
		41.876682, 37.354252, 22.520145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566216, 37.863400, 22.423693>,  <41.856762, 38.052246, 22.569189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566216, 37.863400, 22.423693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321716, 37.575737, 22.291515>,  <42.175018, 37.403141, 22.212210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321716, 37.575737, 22.291515>,  <42.566216, 37.863400, 22.423693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321716, 37.575737, 22.291515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468658, 0.007550, -0.883348,
		0.637760, -0.694807, 0.332423,
		-0.611246, -0.719157, -0.330442,
		42.138344, 37.359989, 22.192383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027565, 37.402287, 22.140224>,  <42.566216, 37.863400, 22.423693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027565, 37.402287, 22.140224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.686245, 37.274559, 21.975340>,  <42.481453, 37.197922, 21.876410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.686245, 37.274559, 21.975340>,  <43.027565, 37.402287, 22.140224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686245, 37.274559, 21.975340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395402, 0.119095, -0.910754,
		0.339915, -0.940133, 0.024637,
		-0.853297, -0.319320, -0.412213,
		42.430256, 37.178764, 21.851677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207603, 36.973461, 21.598078>,  <43.027565, 37.402287, 22.140224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207603, 36.973461, 21.598078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.814255, 37.014755, 21.538311>,  <42.578247, 37.039532, 21.502451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.814255, 37.014755, 21.538311>,  <43.207603, 36.973461, 21.598078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814255, 37.014755, 21.538311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142035, -0.075534, -0.986975,
		-0.113180, -0.991784, 0.059615,
		-0.983370, 0.103238, -0.149417,
		42.519245, 37.045727, 21.493486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973042, 36.480354, 21.043793>,  <43.207603, 36.973461, 21.598078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973042, 36.480354, 21.043793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.710522, 36.782154, 21.044149>,  <42.553009, 36.963234, 21.044363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.710522, 36.782154, 21.044149>,  <42.973042, 36.480354, 21.043793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710522, 36.782154, 21.044149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057748, -0.049057, -0.997125,
		-0.752287, -0.654464, 0.075767,
		-0.656300, 0.754500, 0.000889,
		42.513630, 37.008503, 21.044416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412376, 36.288609, 20.653612>,  <42.973042, 36.480354, 21.043793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412376, 36.288609, 20.653612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.407215, 36.685913, 20.607553>,  <42.404118, 36.924297, 20.579918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.407215, 36.685913, 20.607553>,  <42.412376, 36.288609, 20.653612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407215, 36.685913, 20.607553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019361, -0.115384, -0.993133,
		-0.999729, -0.010582, 0.020720,
		-0.012900, 0.993265, -0.115147,
		42.403347, 36.983894, 20.573009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851364, 36.421597, 20.247330>,  <42.412376, 36.288609, 20.653612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851364, 36.421597, 20.247330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.114540, 36.720623, 20.210989>,  <42.272446, 36.900040, 20.189184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.114540, 36.720623, 20.210989>,  <41.851364, 36.421597, 20.247330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114540, 36.720623, 20.210989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091496, -0.199103, -0.975698,
		-0.747492, 0.633637, -0.199398,
		0.657939, 0.747570, -0.090853,
		42.311920, 36.944893, 20.183733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435547, 35.835461, 20.475264>,  <41.851364, 36.421597, 20.247330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435547, 35.835461, 20.475264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.446362, 35.473999, 20.304296>,  <41.452850, 35.257122, 20.201717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.446362, 35.473999, 20.304296>,  <41.435547, 35.835461, 20.475264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446362, 35.473999, 20.304296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446825, -0.393408, 0.803479,
		-0.894213, 0.169254, -0.414411,
		0.027041, -0.903650, -0.427417,
		41.454475, 35.202904, 20.176071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812000, 35.537102, 20.643869>,  <41.435547, 35.835461, 20.475264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812000, 35.537102, 20.643869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055485, 35.232613, 20.554417>,  <41.201576, 35.049919, 20.500744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055485, 35.232613, 20.554417>,  <40.812000, 35.537102, 20.643869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055485, 35.232613, 20.554417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313165, -0.489509, 0.813824,
		-0.728972, -0.425348, -0.536357,
		0.608709, -0.761223, -0.223634,
		41.238098, 35.004246, 20.487326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404877, 34.966770, 20.686867>,  <40.812000, 35.537102, 20.643869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404877, 34.966770, 20.686867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.785957, 34.852455, 20.728199>,  <41.014606, 34.783867, 20.752998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.785957, 34.852455, 20.728199>,  <40.404877, 34.966770, 20.686867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785957, 34.852455, 20.728199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218167, -0.406496, 0.887223,
		-0.211550, -0.867807, -0.449620,
		0.952707, -0.285784, 0.103332,
		41.071770, 34.766720, 20.759199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277245, 34.356556, 20.874750>,  <40.404877, 34.966770, 20.686867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277245, 34.356556, 20.874750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.663338, 34.401684, 20.969061>,  <40.894993, 34.428761, 21.025648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.663338, 34.401684, 20.969061>,  <40.277245, 34.356556, 20.874750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663338, 34.401684, 20.969061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162136, -0.449085, 0.878655,
		0.205015, -0.886337, -0.415181,
		0.965236, 0.112821, 0.235776,
		40.952908, 34.435532, 21.039793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428085, 33.826157, 21.257032>,  <40.277245, 34.356556, 20.874750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428085, 33.826157, 21.257032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.724636, 34.076134, 21.354853>,  <40.902565, 34.226120, 21.413546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.724636, 34.076134, 21.354853>,  <40.428085, 33.826157, 21.257032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724636, 34.076134, 21.354853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019406, -0.344292, 0.938662,
		0.670809, -0.700648, -0.243123,
		0.741376, 0.624945, 0.244551,
		40.947048, 34.263618, 21.428219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853115, 33.435078, 21.711283>,  <40.428085, 33.826157, 21.257032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853115, 33.435078, 21.711283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.927624, 33.821369, 21.783587>,  <40.972328, 34.053143, 21.826969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.927624, 33.821369, 21.783587>,  <40.853115, 33.435078, 21.711283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927624, 33.821369, 21.783587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275035, -0.125370, 0.953225,
		0.943217, -0.227274, 0.242256,
		0.186272, 0.965727, 0.180760,
		40.983505, 34.111088, 21.837814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277985, 33.412624, 22.332071>,  <40.853115, 33.435078, 21.711283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277985, 33.412624, 22.332071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118851, 33.779404, 22.344297>,  <41.023369, 33.999470, 22.351633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118851, 33.779404, 22.344297>,  <41.277985, 33.412624, 22.332071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118851, 33.779404, 22.344297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058185, -0.058467, 0.996592,
		0.915610, 0.394701, 0.076613,
		-0.397835, 0.916947, 0.030568,
		40.999500, 34.054489, 22.353468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474056, 33.651917, 22.958929>,  <41.277985, 33.412624, 22.332071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474056, 33.651917, 22.958929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.198635, 33.920437, 22.849205>,  <41.033382, 34.081551, 22.783371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.198635, 33.920437, 22.849205>,  <41.474056, 33.651917, 22.958929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198635, 33.920437, 22.849205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315949, 0.062772, 0.946697,
		0.652738, 0.738522, 0.168875,
		-0.688556, 0.671301, -0.274309,
		40.992069, 34.121826, 22.766912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503914, 34.142380, 23.435963>,  <41.474056, 33.651917, 22.958929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503914, 34.142380, 23.435963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136196, 34.147064, 23.278606>,  <40.915565, 34.149876, 23.184193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136196, 34.147064, 23.278606>,  <41.503914, 34.142380, 23.435963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136196, 34.147064, 23.278606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383119, 0.202120, 0.901314,
		0.090066, 0.979291, -0.181322,
		-0.919298, 0.011710, -0.393389,
		40.860405, 34.150578, 23.160589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112846, 34.579605, 23.812820>,  <41.503914, 34.142380, 23.435963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112846, 34.579605, 23.812820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.784134, 34.397999, 23.675097>,  <40.586906, 34.289036, 23.592463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.784134, 34.397999, 23.675097>,  <41.112846, 34.579605, 23.812820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784134, 34.397999, 23.675097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407268, 0.045393, 0.912180,
		-0.398517, 0.889835, -0.222211,
		-0.821777, -0.454019, -0.344311,
		40.537601, 34.261795, 23.571804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499794, 34.899082, 24.086618>,  <41.112846, 34.579605, 23.812820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499794, 34.899082, 24.086618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.352425, 34.546116, 23.969585>,  <40.264004, 34.334335, 23.899364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.352425, 34.546116, 23.969585>,  <40.499794, 34.899082, 24.086618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352425, 34.546116, 23.969585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484570, -0.086310, 0.870484,
		-0.793381, 0.462487, -0.395793,
		-0.368427, -0.882415, -0.292584,
		40.241898, 34.281391, 23.881811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731079, 34.876568, 24.317060>,  <40.499794, 34.899082, 24.086618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731079, 34.876568, 24.317060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.837696, 34.492619, 24.282211>,  <39.901665, 34.262249, 24.261301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.837696, 34.492619, 24.282211>,  <39.731079, 34.876568, 24.317060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837696, 34.492619, 24.282211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398038, -0.191951, 0.897062,
		-0.877793, -0.204428, -0.433231,
		0.266544, -0.959877, -0.087123,
		39.917660, 34.204655, 24.256075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141159, 34.519627, 24.600214>,  <39.731079, 34.876568, 24.317060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141159, 34.519627, 24.600214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444164, 34.258785, 24.612495>,  <39.625965, 34.102280, 24.619864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444164, 34.258785, 24.612495>,  <39.141159, 34.519627, 24.600214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444164, 34.258785, 24.612495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262685, -0.261416, 0.928794,
		-0.597642, -0.711635, -0.369322,
		0.757510, -0.652101, 0.030702,
		39.671417, 34.063156, 24.621706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894382, 33.889652, 24.890375>,  <39.141159, 34.519627, 24.600214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894382, 33.889652, 24.890375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289841, 33.893047, 24.950390>,  <39.527115, 33.895084, 24.986399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289841, 33.893047, 24.950390>,  <38.894382, 33.889652, 24.890375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289841, 33.893047, 24.950390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143503, -0.243040, 0.959343,
		0.044609, -0.969979, -0.239062,
		0.988644, 0.008489, 0.150036,
		39.586433, 33.895596, 24.995401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437618, 33.410683, 24.663971>,  <38.894382, 33.889652, 24.890375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437618, 33.410683, 24.663971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061974, 33.529007, 24.594032>,  <37.836586, 33.600002, 24.552069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061974, 33.529007, 24.594032>,  <38.437618, 33.410683, 24.663971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061974, 33.529007, 24.594032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203122, 0.067474, -0.976826,
		-0.277161, -0.952860, -0.123451,
		-0.939108, 0.295814, -0.174845,
		37.780243, 33.617752, 24.541578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255768, 33.038692, 23.988749>,  <38.437618, 33.410683, 24.663971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255768, 33.038692, 23.988749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.987206, 33.334858, 24.001350>,  <37.826069, 33.512558, 24.008911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.987206, 33.334858, 24.001350>,  <38.255768, 33.038692, 23.988749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987206, 33.334858, 24.001350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197702, 0.219924, -0.955274,
		-0.714231, -0.635149, -0.294041,
		-0.671408, 0.740418, 0.031506,
		37.785782, 33.556984, 24.010801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807888, 33.102020, 23.368431>,  <38.255768, 33.038692, 23.988749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807888, 33.102020, 23.368431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754272, 33.477089, 23.496689>,  <37.722103, 33.702129, 23.573643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754272, 33.477089, 23.496689>,  <37.807888, 33.102020, 23.368431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754272, 33.477089, 23.496689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009569, 0.322325, -0.946581,
		-0.990930, -0.129949, -0.034232,
		-0.134041, 0.937668, 0.320644,
		37.714062, 33.758389, 23.592882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256744, 33.363667, 22.976732>,  <37.807888, 33.102020, 23.368431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256744, 33.363667, 22.976732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449524, 33.689827, 23.105017>,  <37.565189, 33.885521, 23.181988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449524, 33.689827, 23.105017>,  <37.256744, 33.363667, 22.976732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449524, 33.689827, 23.105017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074615, 0.326502, -0.942247,
		-0.873019, 0.478041, 0.096515,
		0.481945, 0.815398, 0.320711,
		37.594109, 33.934448, 23.201229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023815, 33.958958, 22.634003>,  <37.256744, 33.363667, 22.976732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023815, 33.958958, 22.634003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372704, 34.111732, 22.756220>,  <37.582035, 34.203396, 22.829550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372704, 34.111732, 22.756220>,  <37.023815, 33.958958, 22.634003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372704, 34.111732, 22.756220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048021, 0.554799, -0.830598,
		-0.486749, 0.739137, 0.465566,
		0.872221, 0.381936, 0.305542,
		37.634369, 34.226315, 22.847883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987099, 34.676826, 22.378681>,  <37.023815, 33.958958, 22.634003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987099, 34.676826, 22.378681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376263, 34.606960, 22.439255>,  <37.609760, 34.565041, 22.475599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376263, 34.606960, 22.439255>,  <36.987099, 34.676826, 22.378681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376263, 34.606960, 22.439255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222929, 0.535546, -0.814551,
		0.061171, 0.826247, 0.559978,
		0.972914, -0.174662, 0.151434,
		37.668137, 34.554562, 22.484686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405357, 35.298733, 22.318449>,  <36.987099, 34.676826, 22.378681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405357, 35.298733, 22.318449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.649940, 34.986393, 22.267231>,  <37.796688, 34.798988, 22.236500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.649940, 34.986393, 22.267231>,  <37.405357, 35.298733, 22.318449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649940, 34.986393, 22.267231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394639, 0.441190, -0.805985,
		0.685846, 0.442292, 0.577921,
		0.611453, -0.780852, -0.128043,
		37.833378, 34.752136, 22.228819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649689, 36.042725, 22.379305>,  <37.405357, 35.298733, 22.318449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649689, 36.042725, 22.379305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293518, 36.207962, 22.302891>,  <37.079815, 36.307106, 22.257042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293518, 36.207962, 22.302891>,  <37.649689, 36.042725, 22.379305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293518, 36.207962, 22.302891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319407, -0.268168, 0.908881,
		0.324227, 0.870308, 0.370730,
		-0.890425, 0.413097, -0.191035,
		37.026390, 36.331890, 22.245581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513863, 36.614120, 22.973339>,  <37.649689, 36.042725, 22.379305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513863, 36.614120, 22.973339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.163567, 36.574398, 22.784353>,  <36.953388, 36.550564, 22.670961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.163567, 36.574398, 22.784353>,  <37.513863, 36.614120, 22.973339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163567, 36.574398, 22.784353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480679, 0.087979, 0.872472,
		-0.045073, 0.991160, -0.124780,
		-0.875737, -0.099304, -0.472465,
		36.900845, 36.544605, 22.642614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110332, 37.140987, 23.219803>,  <37.513863, 36.614120, 22.973339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110332, 37.140987, 23.219803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864716, 36.863422, 23.069374>,  <36.717346, 36.696884, 22.979116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864716, 36.863422, 23.069374>,  <37.110332, 37.140987, 23.219803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864716, 36.863422, 23.069374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591119, 0.088587, 0.801705,
		-0.523001, 0.714585, -0.464584,
		-0.614042, -0.693917, -0.376074,
		36.680504, 36.655247, 22.956553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472866, 37.385735, 23.295462>,  <37.110332, 37.140987, 23.219803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472866, 37.385735, 23.295462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.437977, 36.987679, 23.277140>,  <36.417046, 36.748844, 23.266146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.437977, 36.987679, 23.277140>,  <36.472866, 37.385735, 23.295462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437977, 36.987679, 23.277140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549423, 0.009698, 0.835488,
		-0.830980, 0.098036, -0.547596,
		-0.087219, -0.995136, -0.045805,
		36.411812, 36.689137, 23.263399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771729, 37.247517, 23.450998>,  <36.472866, 37.385735, 23.295462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771729, 37.247517, 23.450998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948193, 36.895260, 23.520100>,  <36.054070, 36.683907, 23.561560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948193, 36.895260, 23.520100>,  <35.771729, 37.247517, 23.450998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948193, 36.895260, 23.520100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616002, -0.157166, 0.771907,
		-0.652624, -0.446951, -0.611814,
		0.441161, -0.880644, 0.172752,
		36.080540, 36.631065, 23.571926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230553, 36.863274, 23.673271>,  <35.771729, 37.247517, 23.450998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230553, 36.863274, 23.673271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551514, 36.652199, 23.784771>,  <35.744091, 36.525555, 23.851671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551514, 36.652199, 23.784771>,  <35.230553, 36.863274, 23.673271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551514, 36.652199, 23.784771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443777, -0.215295, 0.869890,
		-0.399014, -0.821704, -0.406928,
		0.802402, -0.527684, 0.278748,
		35.792233, 36.493893, 23.868395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970280, 36.286049, 23.971140>,  <35.230553, 36.863274, 23.673271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970280, 36.286049, 23.971140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.343945, 36.300823, 24.113113>,  <35.568142, 36.309689, 24.198298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.343945, 36.300823, 24.113113>,  <34.970280, 36.286049, 23.971140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343945, 36.300823, 24.113113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326398, -0.313627, 0.891685,
		0.144250, -0.948828, -0.280923,
		0.934161, 0.036933, 0.354936,
		35.624191, 36.311905, 24.219595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.407978, 40.339474, 21.540625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.449139, 39.953396, 21.444445>,  <41.473835, 39.721748, 21.386736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.449139, 39.953396, 21.444445>,  <41.407978, 40.339474, 21.540625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449139, 39.953396, 21.444445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474857, -0.260076, 0.840756,
		-0.874027, 0.027668, -0.485089,
		0.102898, -0.965191, -0.240452,
		41.480007, 39.663837, 21.372309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729908, 40.013588, 21.466215>,  <41.407978, 40.339474, 21.540625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729908, 40.013588, 21.466215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.042175, 39.791950, 21.581829>,  <41.229534, 39.658970, 21.651197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.042175, 39.791950, 21.581829>,  <40.729908, 40.013588, 21.466215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042175, 39.791950, 21.581829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430549, -0.141627, 0.891386,
		-0.452975, -0.820319, -0.349128,
		0.780667, -0.554092, 0.289034,
		41.276375, 39.625721, 21.668539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391636, 39.392895, 21.717373>,  <40.729908, 40.013588, 21.466215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391636, 39.392895, 21.717373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.765068, 39.435463, 21.854250>,  <40.989128, 39.461002, 21.936377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.765068, 39.435463, 21.854250>,  <40.391636, 39.392895, 21.717373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765068, 39.435463, 21.854250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295218, -0.312905, 0.902738,
		0.203146, -0.943803, -0.260705,
		0.933583, 0.106423, 0.342193,
		41.045143, 39.467388, 21.956907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410763, 38.866985, 22.155600>,  <40.391636, 39.392895, 21.717373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410763, 38.866985, 22.155600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.702114, 39.114456, 22.273380>,  <40.876926, 39.262939, 22.344048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.702114, 39.114456, 22.273380>,  <40.410763, 38.866985, 22.155600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702114, 39.114456, 22.273380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160231, -0.264027, 0.951113,
		0.666176, -0.739951, -0.093180,
		0.728379, 0.618678, 0.294451,
		40.920628, 39.300060, 22.361715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775780, 38.535931, 22.687160>,  <40.410763, 38.866985, 22.155600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775780, 38.535931, 22.687160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.862026, 38.923805, 22.733141>,  <40.913773, 39.156532, 22.760729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.862026, 38.923805, 22.733141>,  <40.775780, 38.535931, 22.687160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862026, 38.923805, 22.733141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279480, -0.051510, 0.958769,
		0.935628, -0.238852, 0.259902,
		0.215616, 0.969689, 0.114949,
		40.926712, 39.214710, 22.767626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244183, 38.654736, 23.336193>,  <40.775780, 38.535931, 22.687160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244183, 38.654736, 23.336193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.074284, 39.012020, 23.277182>,  <40.972343, 39.226391, 23.241774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.074284, 39.012020, 23.277182>,  <41.244183, 38.654736, 23.336193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074284, 39.012020, 23.277182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273189, 0.028905, 0.961526,
		0.863110, 0.448707, 0.231739,
		-0.424745, 0.893211, -0.147530,
		40.946861, 39.279984, 23.232924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497627, 39.166641, 23.866590>,  <41.244183, 38.654736, 23.336193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497627, 39.166641, 23.866590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.152817, 39.329437, 23.745750>,  <40.945930, 39.427113, 23.673246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.152817, 39.329437, 23.745750>,  <41.497627, 39.166641, 23.866590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152817, 39.329437, 23.745750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251573, 0.173876, 0.952092,
		0.440017, 0.896733, -0.047499,
		-0.862030, 0.406987, -0.302102,
		40.894207, 39.451534, 23.655119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397938, 39.767841, 24.328924>,  <41.497627, 39.166641, 23.866590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397938, 39.767841, 24.328924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.042454, 39.668652, 24.174679>,  <40.829163, 39.609138, 24.082132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.042454, 39.668652, 24.174679>,  <41.397938, 39.767841, 24.328924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042454, 39.668652, 24.174679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422943, 0.118838, 0.898330,
		-0.176939, 0.961450, -0.210493,
		-0.888714, -0.247976, -0.385611,
		40.775841, 39.594257, 24.058996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957191, 40.173119, 24.723078>,  <41.397938, 39.767841, 24.328924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957191, 40.173119, 24.723078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.700249, 39.904819, 24.574766>,  <40.546085, 39.743839, 24.485779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.700249, 39.904819, 24.574766>,  <40.957191, 40.173119, 24.723078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700249, 39.904819, 24.574766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472224, -0.034656, 0.880797,
		-0.603642, 0.740875, -0.294482,
		-0.642355, -0.670748, -0.370779,
		40.507542, 39.703594, 24.463533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250160, 40.497147, 24.747780>,  <40.957191, 40.173119, 24.723078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250160, 40.497147, 24.747780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.207191, 40.099503, 24.753498>,  <40.181412, 39.860916, 24.756929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.207191, 40.099503, 24.753498>,  <40.250160, 40.497147, 24.747780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207191, 40.099503, 24.753498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515526, 0.067987, 0.854172,
		-0.850114, 0.084385, -0.519794,
		-0.107419, -0.994111, 0.014294,
		40.174965, 39.801270, 24.757786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591412, 40.384815, 24.974781>,  <40.250160, 40.497147, 24.747780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591412, 40.384815, 24.974781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.770092, 40.033062, 25.040688>,  <39.877300, 39.822010, 25.080233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.770092, 40.033062, 25.040688>,  <39.591412, 40.384815, 24.974781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770092, 40.033062, 25.040688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382281, -0.021094, 0.923806,
		-0.808903, -0.475648, -0.345593,
		0.446696, -0.879383, 0.164768,
		39.904102, 39.769249, 25.090118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984715, 39.995121, 25.257315>,  <39.591412, 40.384815, 24.974781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984715, 39.995121, 25.257315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319504, 39.795574, 25.347296>,  <39.520378, 39.675846, 25.401283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319504, 39.795574, 25.347296>,  <38.984715, 39.995121, 25.257315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319504, 39.795574, 25.347296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339264, -0.150484, 0.928577,
		-0.429384, -0.853515, -0.295198,
		0.836977, -0.498866, 0.224951,
		39.570599, 39.645916, 25.414782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475227, 39.699989, 24.725225>,  <38.984715, 39.995121, 25.257315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475227, 39.699989, 24.725225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110096, 39.536858, 24.716961>,  <37.891018, 39.438980, 24.712002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110096, 39.536858, 24.716961>,  <38.475227, 39.699989, 24.725225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110096, 39.536858, 24.716961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130291, -0.242927, -0.961255,
		0.387007, -0.880150, 0.274886,
		-0.912826, -0.407827, -0.020661,
		37.836246, 39.414509, 24.710762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488651, 38.973629, 24.567820>,  <38.475227, 39.699989, 24.725225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488651, 38.973629, 24.567820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152313, 39.149029, 24.440886>,  <37.950512, 39.254269, 24.364725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152313, 39.149029, 24.440886>,  <38.488651, 38.973629, 24.567820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152313, 39.149029, 24.440886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233186, -0.235621, -0.943455,
		-0.488476, -0.867295, 0.095868,
		-0.840842, 0.438500, -0.317337,
		37.900059, 39.280579, 24.345684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226135, 38.510349, 24.088335>,  <38.488651, 38.973629, 24.567820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226135, 38.510349, 24.088335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.989967, 38.824318, 24.013176>,  <37.848267, 39.012699, 23.968081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.989967, 38.824318, 24.013176>,  <38.226135, 38.510349, 24.088335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989967, 38.824318, 24.013176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044459, -0.200826, -0.978618,
		-0.805869, -0.586152, 0.083676,
		-0.590423, 0.784917, -0.187899,
		37.812840, 39.059792, 23.956806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672688, 38.255104, 23.721209>,  <38.226135, 38.510349, 24.088335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672688, 38.255104, 23.721209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691673, 38.647900, 23.648054>,  <37.703064, 38.883575, 23.604162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691673, 38.647900, 23.648054>,  <37.672688, 38.255104, 23.721209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691673, 38.647900, 23.648054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043878, -0.180866, -0.982529,
		-0.997909, 0.054659, 0.034503,
		0.047464, 0.981988, -0.182886,
		37.705914, 38.942497, 23.593189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136925, 38.462292, 23.153141>,  <37.672688, 38.255104, 23.721209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136925, 38.462292, 23.153141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.401176, 38.762512, 23.159363>,  <37.559727, 38.942646, 23.163095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.401176, 38.762512, 23.159363>,  <37.136925, 38.462292, 23.153141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401176, 38.762512, 23.159363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075067, 0.086661, -0.993406,
		-0.746953, 0.655102, 0.113593,
		0.660626, 0.750554, 0.015555,
		37.599365, 38.987679, 23.164030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861759, 39.068096, 22.764565>,  <37.136925, 38.462292, 23.153141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861759, 39.068096, 22.764565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.255146, 39.136086, 22.739561>,  <37.491177, 39.176880, 22.724558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.255146, 39.136086, 22.739561>,  <36.861759, 39.068096, 22.764565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255146, 39.136086, 22.739561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117050, 0.333183, -0.935568,
		-0.138194, 0.927415, 0.347569,
		0.983464, 0.169973, -0.062510,
		37.550186, 39.187077, 22.720808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932507, 39.754463, 22.455379>,  <36.861759, 39.068096, 22.764565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932507, 39.754463, 22.455379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.285233, 39.575684, 22.395206>,  <37.496868, 39.468414, 22.359102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.285233, 39.575684, 22.395206>,  <36.932507, 39.754463, 22.455379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285233, 39.575684, 22.395206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078731, 0.174990, -0.981417,
		0.464969, 0.877276, 0.119121,
		0.881819, -0.446951, -0.150434,
		37.549778, 39.441597, 22.350077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391502, 40.219028, 22.131319>,  <36.932507, 39.754463, 22.455379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391502, 40.219028, 22.131319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551025, 39.865742, 22.032625>,  <37.646740, 39.653770, 21.973410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551025, 39.865742, 22.032625>,  <37.391502, 40.219028, 22.131319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551025, 39.865742, 22.032625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003675, 0.267514, -0.963547,
		0.917029, 0.385172, 0.103440,
		0.398803, -0.883221, -0.246733,
		37.670666, 39.600777, 21.958605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036335, 40.357540, 21.721964>,  <37.391502, 40.219028, 22.131319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036335, 40.357540, 21.721964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.958187, 39.971363, 21.652962>,  <37.911297, 39.739658, 21.611561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.958187, 39.971363, 21.652962>,  <38.036335, 40.357540, 21.721964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958187, 39.971363, 21.652962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316579, 0.104395, -0.942804,
		0.928229, -0.238807, 0.285242,
		-0.195370, -0.965439, -0.172504,
		37.899574, 39.681732, 21.601210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565376, 40.115646, 21.251499>,  <38.036335, 40.357540, 21.721964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565376, 40.115646, 21.251499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.276577, 39.839157, 21.239355>,  <38.103298, 39.673264, 21.232069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.276577, 39.839157, 21.239355>,  <38.565376, 40.115646, 21.251499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276577, 39.839157, 21.239355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090587, 0.137941, -0.986289,
		0.685935, -0.709353, -0.162210,
		-0.722002, -0.691224, -0.030361,
		38.059975, 39.631790, 21.230247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782265, 39.646740, 20.704252>,  <38.565376, 40.115646, 21.251499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782265, 39.646740, 20.704252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389290, 39.591648, 20.754608>,  <38.153503, 39.558594, 20.784821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389290, 39.591648, 20.754608>,  <38.782265, 39.646740, 20.704252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389290, 39.591648, 20.754608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148323, 0.167083, -0.974722,
		0.113208, -0.976276, -0.184576,
		-0.982438, -0.137723, 0.125889,
		38.094559, 39.550331, 20.792374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620331, 39.131428, 20.265858>,  <38.782265, 39.646740, 20.704252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620331, 39.131428, 20.265858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.286842, 39.344521, 20.323969>,  <38.086750, 39.472378, 20.358835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.286842, 39.344521, 20.323969>,  <38.620331, 39.131428, 20.265858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286842, 39.344521, 20.323969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099456, 0.113916, -0.988500,
		-0.543158, -0.838580, -0.041990,
		-0.833719, 0.532736, 0.145276,
		38.036728, 39.504341, 20.367552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196880, 38.842487, 19.705650>,  <38.620331, 39.131428, 20.265858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196880, 38.842487, 19.705650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.012863, 39.176922, 19.825197>,  <37.902451, 39.377583, 19.896925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.012863, 39.176922, 19.825197>,  <38.196880, 38.842487, 19.705650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012863, 39.176922, 19.825197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262775, 0.193316, -0.945293,
		-0.848120, -0.513413, 0.130767,
		-0.460046, 0.836084, 0.298867,
		37.874851, 39.427746, 19.914858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469074, 38.232212, 20.111292>,  <38.196880, 38.842487, 19.705650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469074, 38.232212, 20.111292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180733, 38.086102, 19.875687>,  <38.007729, 37.998436, 19.734324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180733, 38.086102, 19.875687>,  <38.469074, 38.232212, 20.111292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180733, 38.086102, 19.875687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244981, -0.660696, 0.709552,
		-0.648344, 0.655783, 0.386780,
		-0.720856, -0.365280, -0.589013,
		37.964478, 37.976517, 19.698982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790340, 38.381630, 20.470020>,  <38.469074, 38.232212, 20.111292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790340, 38.381630, 20.470020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.772263, 38.070175, 20.219681>,  <37.761417, 37.883305, 20.069477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.772263, 38.070175, 20.219681>,  <37.790340, 38.381630, 20.470020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772263, 38.070175, 20.219681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356836, -0.572576, 0.738122,
		-0.933073, 0.256682, -0.251970,
		-0.045191, -0.778634, -0.625849,
		37.758705, 37.836586, 20.031927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169266, 38.119789, 20.554375>,  <37.790340, 38.381630, 20.470020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169266, 38.119789, 20.554375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.338463, 37.814526, 20.358961>,  <37.439980, 37.631367, 20.241713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.338463, 37.814526, 20.358961>,  <37.169266, 38.119789, 20.554375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338463, 37.814526, 20.358961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508671, -0.646162, 0.568971,
		-0.749890, 0.007836, -0.661516,
		0.422989, -0.763160, -0.488536,
		37.465359, 37.585579, 20.212400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653980, 37.630585, 20.372671>,  <37.169266, 38.119789, 20.554375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653980, 37.630585, 20.372671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.007618, 37.444859, 20.393808>,  <37.219799, 37.333424, 20.406490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.007618, 37.444859, 20.393808>,  <36.653980, 37.630585, 20.372671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007618, 37.444859, 20.393808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390701, -0.672369, 0.628707,
		-0.256391, -0.576479, -0.775845,
		0.884090, -0.464318, 0.052842,
		37.272846, 37.305565, 20.409660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559383, 36.934727, 20.335724>,  <36.653980, 37.630585, 20.372671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559383, 36.934727, 20.335724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919338, 36.966061, 20.507338>,  <37.135311, 36.984859, 20.610306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919338, 36.966061, 20.507338>,  <36.559383, 36.934727, 20.335724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919338, 36.966061, 20.507338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291894, -0.622745, 0.725939,
		0.324042, -0.778494, -0.537535,
		0.899886, 0.078332, 0.429034,
		37.189304, 36.989559, 20.636047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700066, 36.287998, 20.552132>,  <36.559383, 36.934727, 20.335724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700066, 36.287998, 20.552132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.941334, 36.511909, 20.779404>,  <37.086094, 36.646255, 20.915768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.941334, 36.511909, 20.779404>,  <36.700066, 36.287998, 20.552132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941334, 36.511909, 20.779404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197714, -0.585186, 0.786426,
		0.772716, -0.586689, -0.242293,
		0.603174, 0.559779, 0.568180,
		37.122288, 36.679844, 20.949858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052135, 35.853603, 21.000290>,  <36.700066, 36.287998, 20.552132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052135, 35.853603, 21.000290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.070560, 36.210747, 21.179483>,  <37.081615, 36.425034, 21.286999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.070560, 36.210747, 21.179483>,  <37.052135, 35.853603, 21.000290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070560, 36.210747, 21.179483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169333, -0.434991, 0.884369,
		0.984482, -0.116596, 0.131152,
		0.046064, 0.892854, 0.447984,
		37.084381, 36.478603, 21.313879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376556, 35.761940, 21.573223>,  <37.052135, 35.853603, 21.000290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376556, 35.761940, 21.573223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184010, 36.104874, 21.646175>,  <37.068481, 36.310635, 21.689947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184010, 36.104874, 21.646175>,  <37.376556, 35.761940, 21.573223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184010, 36.104874, 21.646175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352637, -0.379914, 0.855168,
		0.802454, 0.347336, 0.485206,
		-0.481367, 0.857335, 0.182381,
		37.039600, 36.362076, 21.700890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996384, 35.543797, 21.959986>,  <37.376556, 35.761940, 21.573223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996384, 35.543797, 21.959986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085732, 35.154369, 21.940899>,  <38.139339, 34.920715, 21.929447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085732, 35.154369, 21.940899>,  <37.996384, 35.543797, 21.959986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085732, 35.154369, 21.940899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363447, 0.128612, -0.922695,
		0.904441, 0.188756, 0.382567,
		0.223366, -0.973566, -0.047719,
		38.152740, 34.862301, 21.926582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748703, 35.478580, 21.825020>,  <37.996384, 35.543797, 21.959986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748703, 35.478580, 21.825020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.595692, 35.135773, 21.686920>,  <38.503887, 34.930088, 21.604061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.595692, 35.135773, 21.686920>,  <38.748703, 35.478580, 21.825020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595692, 35.135773, 21.686920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480964, 0.134348, -0.866385,
		0.788891, -0.497466, 0.360803,
		-0.382524, -0.857017, -0.345249,
		38.480934, 34.878666, 21.583345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270012, 35.060413, 21.629568>,  <38.748703, 35.478580, 21.825020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270012, 35.060413, 21.629568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.951603, 34.940926, 21.419003>,  <38.760555, 34.869232, 21.292664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.951603, 34.940926, 21.419003>,  <39.270012, 35.060413, 21.629568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951603, 34.940926, 21.419003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518571, 0.111918, -0.847678,
		0.312134, -0.947756, 0.065818,
		-0.796025, -0.298720, -0.526412,
		38.712795, 34.851311, 21.261080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583775, 34.477730, 21.156919>,  <39.270012, 35.060413, 21.629568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583775, 34.477730, 21.156919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240219, 34.630062, 21.019939>,  <39.034084, 34.721462, 20.937752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240219, 34.630062, 21.019939>,  <39.583775, 34.477730, 21.156919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240219, 34.630062, 21.019939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442525, 0.215221, -0.870546,
		-0.257831, -0.899247, -0.353380,
		-0.858891, 0.380834, -0.342449,
		38.982552, 34.744312, 20.917204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515354, 34.215534, 20.517887>,  <39.583775, 34.477730, 21.156919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515354, 34.215534, 20.517887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.250290, 34.513901, 20.491083>,  <39.091251, 34.692921, 20.475000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.250290, 34.513901, 20.491083>,  <39.515354, 34.215534, 20.517887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250290, 34.513901, 20.491083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300436, 0.182808, -0.936119,
		-0.686013, -0.640466, -0.345239,
		-0.662665, 0.745912, -0.067010,
		39.051491, 34.737675, 20.470980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237267, 34.098801, 19.897015>,  <39.515354, 34.215534, 20.517887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237267, 34.098801, 19.897015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177582, 34.485561, 19.979809>,  <39.141769, 34.717617, 20.029486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177582, 34.485561, 19.979809>,  <39.237267, 34.098801, 19.897015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177582, 34.485561, 19.979809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376993, 0.249145, -0.892078,
		-0.914118, -0.055080, -0.401690,
		-0.149214, 0.966899, 0.206983,
		39.132816, 34.775631, 20.041904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152184, 34.339260, 19.215736>,  <39.237267, 34.098801, 19.897015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152184, 34.339260, 19.215736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.198101, 34.674549, 19.428980>,  <39.225651, 34.875721, 19.556927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.198101, 34.674549, 19.428980>,  <39.152184, 34.339260, 19.215736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198101, 34.674549, 19.428980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370126, 0.461926, -0.805997,
		-0.921861, 0.289844, -0.257220,
		0.114796, 0.838221, 0.533110,
		39.232540, 34.926014, 19.588913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886593, 34.814278, 18.687147>,  <39.152184, 34.339260, 19.215736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886593, 34.814278, 18.687147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118042, 34.984184, 18.965651>,  <39.256912, 35.086128, 19.132751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118042, 34.984184, 18.965651>,  <38.886593, 34.814278, 18.687147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118042, 34.984184, 18.965651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267301, 0.707766, -0.653925,
		-0.770549, 0.564486, 0.295989,
		0.578622, 0.424763, 0.696256,
		39.291630, 35.111614, 19.174528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874962, 35.574593, 18.561188>,  <38.886593, 34.814278, 18.687147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874962, 35.574593, 18.561188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.202309, 35.508369, 18.781321>,  <39.398716, 35.468636, 18.913401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.202309, 35.508369, 18.781321>,  <38.874962, 35.574593, 18.561188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202309, 35.508369, 18.781321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517670, 0.628236, -0.580807,
		-0.249584, 0.760204, 0.599831,
		0.818368, -0.165554, 0.550333,
		39.447819, 35.458702, 18.946421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.987816, 33.470249, 34.736137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372635, 33.365723, 34.767559>,  <35.603527, 33.303005, 34.786411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372635, 33.365723, 34.767559>,  <34.987816, 33.470249, 34.736137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372635, 33.365723, 34.767559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150315, 0.267251, -0.951831,
		0.227737, 0.927518, 0.296390,
		0.962050, -0.261319, 0.078557,
		35.661251, 33.287327, 34.791126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316563, 33.968437, 34.354668>,  <34.987816, 33.470249, 34.736137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316563, 33.968437, 34.354668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567207, 33.657665, 34.379135>,  <35.717594, 33.471203, 34.393814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567207, 33.657665, 34.379135>,  <35.316563, 33.968437, 34.354668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567207, 33.657665, 34.379135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448592, 0.295390, -0.843511,
		0.637281, 0.555990, 0.533618,
		0.626609, -0.776930, 0.061166,
		35.755192, 33.424587, 34.397484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921272, 34.252041, 34.131695>,  <35.316563, 33.968437, 34.354668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921272, 34.252041, 34.131695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969639, 33.856617, 34.095650>,  <35.998661, 33.619362, 34.074024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969639, 33.856617, 34.095650>,  <35.921272, 34.252041, 34.131695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969639, 33.856617, 34.095650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447089, 0.135283, -0.884200,
		0.886279, 0.066632, 0.458334,
		0.120921, -0.988564, -0.090108,
		36.005917, 33.560047, 34.068619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491188, 34.129261, 33.736828>,  <35.921272, 34.252041, 34.131695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491188, 34.129261, 33.736828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298546, 33.779270, 33.716949>,  <36.182961, 33.569275, 33.705021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298546, 33.779270, 33.716949>,  <36.491188, 34.129261, 33.736828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298546, 33.779270, 33.716949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300564, -0.111637, -0.947205,
		0.823234, -0.471119, 0.316752,
		-0.481608, -0.874977, -0.049698,
		36.154064, 33.516777, 33.702042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930264, 33.779896, 33.418545>,  <36.491188, 34.129261, 33.736828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930264, 33.779896, 33.418545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566364, 33.630283, 33.346474>,  <36.348026, 33.540516, 33.303230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566364, 33.630283, 33.346474>,  <36.930264, 33.779896, 33.418545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566364, 33.630283, 33.346474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177070, 0.042961, -0.983260,
		0.375510, -0.926420, 0.027146,
		-0.909746, -0.374031, -0.180173,
		36.293442, 33.518074, 33.292423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015961, 33.255619, 33.021156>,  <36.930264, 33.779896, 33.418545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015961, 33.255619, 33.021156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.635326, 33.311085, 32.911427>,  <36.406944, 33.344364, 32.845589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.635326, 33.311085, 32.911427>,  <37.015961, 33.255619, 33.021156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635326, 33.311085, 32.911427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263651, -0.090585, -0.960356,
		-0.158023, -0.986187, 0.049639,
		-0.951586, 0.138670, -0.274323,
		36.349850, 33.352684, 32.829128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801796, 32.699493, 32.637550>,  <37.015961, 33.255619, 33.021156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801796, 32.699493, 32.637550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.533993, 32.980934, 32.542297>,  <36.373310, 33.149799, 32.485146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.533993, 32.980934, 32.542297>,  <36.801796, 32.699493, 32.637550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533993, 32.980934, 32.542297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211510, -0.126738, -0.969124,
		-0.712058, -0.699201, -0.063966,
		-0.669505, 0.703602, -0.238133,
		36.333141, 33.192017, 32.470856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490013, 32.438156, 32.038471>,  <36.801796, 32.699493, 32.637550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490013, 32.438156, 32.038471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383465, 32.822567, 32.008869>,  <36.319534, 33.053211, 31.991108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383465, 32.822567, 32.008869>,  <36.490013, 32.438156, 32.038471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383465, 32.822567, 32.008869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067687, -0.095238, -0.993151,
		-0.961490, -0.259539, 0.090418,
		-0.266373, 0.961025, -0.074003,
		36.303555, 33.110874, 31.986668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966171, 32.399654, 31.564186>,  <36.490013, 32.438156, 32.038471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966171, 32.399654, 31.564186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093781, 32.778015, 31.540514>,  <36.170345, 33.005032, 31.526312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093781, 32.778015, 31.540514>,  <35.966171, 32.399654, 31.564186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093781, 32.778015, 31.540514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100245, -0.028414, -0.994557,
		-0.942432, 0.323216, 0.085757,
		0.319020, 0.945899, -0.059179,
		36.189487, 33.061787, 31.522760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445129, 32.846676, 31.138693>,  <35.966171, 32.399654, 31.564186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445129, 32.846676, 31.138693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801949, 33.026737, 31.122618>,  <36.016041, 33.134773, 31.112972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801949, 33.026737, 31.122618>,  <35.445129, 32.846676, 31.138693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801949, 33.026737, 31.122618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113922, 0.137919, -0.983870,
		-0.437350, 0.882236, 0.174312,
		0.892046, 0.450154, -0.040187,
		36.069561, 33.161785, 31.110561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320911, 33.397903, 30.770948>,  <35.445129, 32.846676, 31.138693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320911, 33.397903, 30.770948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.720192, 33.401474, 30.747232>,  <35.959759, 33.403618, 30.733002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.720192, 33.401474, 30.747232>,  <35.320911, 33.397903, 30.770948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720192, 33.401474, 30.747232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059916, 0.186356, -0.980654,
		0.002294, 0.982442, 0.186556,
		0.998201, 0.008928, -0.059291,
		36.019653, 33.404152, 30.729445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461048, 33.881069, 30.331285>,  <35.320911, 33.397903, 30.770948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461048, 33.881069, 30.331285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803295, 33.674095, 30.325888>,  <36.008644, 33.549911, 30.322649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803295, 33.674095, 30.325888>,  <35.461048, 33.881069, 30.331285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803295, 33.674095, 30.325888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047357, 0.104214, -0.993427,
		0.515435, 0.849356, 0.113671,
		0.855619, -0.517431, -0.013493,
		36.059982, 33.518867, 30.321840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287384, 34.639130, 30.187357>,  <35.461048, 33.881069, 30.331285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287384, 34.639130, 30.187357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909107, 34.670067, 30.061066>,  <34.682140, 34.688629, 29.985291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909107, 34.670067, 30.061066>,  <35.287384, 34.639130, 30.187357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909107, 34.670067, 30.061066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325043, -0.235661, 0.915866,
		-0.003568, 0.968753, 0.248003,
		-0.945692, 0.077344, -0.315727,
		34.625401, 34.693272, 29.966347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940285, 35.024021, 30.696642>,  <35.287384, 34.639130, 30.187357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940285, 35.024021, 30.696642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637478, 34.846348, 30.504963>,  <34.455795, 34.739746, 30.389956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637478, 34.846348, 30.504963>,  <34.940285, 35.024021, 30.696642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637478, 34.846348, 30.504963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446158, -0.184400, 0.875751,
		-0.477356, 0.876755, -0.058581,
		-0.757017, -0.444181, -0.479196,
		34.410374, 34.713093, 30.361204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355644, 35.380577, 30.852055>,  <34.940285, 35.024021, 30.696642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355644, 35.380577, 30.852055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204731, 35.037209, 30.713043>,  <34.114182, 34.831188, 30.629637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204731, 35.037209, 30.713043>,  <34.355644, 35.380577, 30.852055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204731, 35.037209, 30.713043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622820, -0.042533, 0.781208,
		-0.685383, 0.511186, -0.518593,
		-0.377286, -0.858417, -0.347528,
		34.091545, 34.779682, 30.608786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639484, 35.439919, 30.728048>,  <34.355644, 35.380577, 30.852055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639484, 35.439919, 30.728048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689274, 35.048641, 30.794548>,  <33.719147, 34.813873, 30.834448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689274, 35.048641, 30.794548>,  <33.639484, 35.439919, 30.728048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689274, 35.048641, 30.794548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587781, 0.062295, 0.806618,
		-0.799387, -0.198118, -0.567212,
		0.124471, -0.978196, 0.166248,
		33.726616, 34.755180, 30.844423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952793, 35.244812, 30.792732>,  <33.639484, 35.439919, 30.728048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952793, 35.244812, 30.792732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.162849, 34.955444, 30.972013>,  <33.288883, 34.781822, 31.079582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.162849, 34.955444, 30.972013>,  <32.952793, 35.244812, 30.792732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162849, 34.955444, 30.972013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557686, 0.105280, 0.823348,
		-0.642816, -0.682330, -0.348156,
		0.525141, -0.723423, 0.448202,
		33.320393, 34.738419, 31.106474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343250, 34.782047, 31.214867>,  <32.952793, 35.244812, 30.792732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343250, 34.782047, 31.214867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.687969, 34.645760, 31.365179>,  <32.894802, 34.563988, 31.455366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.687969, 34.645760, 31.365179>,  <32.343250, 34.782047, 31.214867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687969, 34.645760, 31.365179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382605, 0.049770, 0.922571,
		-0.333038, -0.938847, -0.087468,
		0.861800, -0.340717, 0.375783,
		32.946510, 34.543545, 31.477915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123653, 34.367733, 31.823072>,  <32.343250, 34.782047, 31.214867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123653, 34.367733, 31.823072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512733, 34.423981, 31.896912>,  <32.746181, 34.457729, 31.941216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512733, 34.423981, 31.896912>,  <32.123653, 34.367733, 31.823072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512733, 34.423981, 31.896912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200707, 0.110544, 0.973394,
		0.116527, -0.983865, 0.135761,
		0.972696, 0.140675, 0.184587,
		32.804543, 34.466167, 31.952290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297813, 33.943142, 32.402821>,  <32.123653, 34.367733, 31.823072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297813, 33.943142, 32.402821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571136, 34.235157, 32.398277>,  <32.735130, 34.410366, 32.395550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571136, 34.235157, 32.398277>,  <32.297813, 33.943142, 32.402821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571136, 34.235157, 32.398277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061749, 0.073288, 0.995397,
		0.727515, -0.679461, 0.095158,
		0.683308, 0.730043, -0.011362,
		32.776131, 34.454170, 32.394867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808887, 33.801975, 32.961346>,  <32.297813, 33.943142, 32.402821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808887, 33.801975, 32.961346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799248, 34.191380, 32.870396>,  <32.793465, 34.425022, 32.815826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799248, 34.191380, 32.870396>,  <32.808887, 33.801975, 32.961346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799248, 34.191380, 32.870396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060093, 0.225624, 0.972359,
		0.997902, 0.037093, 0.053065,
		-0.024095, 0.973508, -0.227380,
		32.792019, 34.483433, 32.802181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124615, 34.154236, 33.584896>,  <32.808887, 33.801975, 32.961346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124615, 34.154236, 33.584896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943909, 34.457302, 33.396496>,  <32.835484, 34.639141, 33.283455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943909, 34.457302, 33.396496>,  <33.124615, 34.154236, 33.584896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943909, 34.457302, 33.396496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095094, 0.484046, 0.869860,
		0.887052, 0.437766, -0.146627,
		-0.451769, 0.757668, -0.471003,
		32.808376, 34.684601, 33.255196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348804, 34.744846, 33.865883>,  <33.124615, 34.154236, 33.584896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348804, 34.744846, 33.865883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010452, 34.866684, 33.690742>,  <32.807442, 34.939785, 33.585659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010452, 34.866684, 33.690742>,  <33.348804, 34.744846, 33.865883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010452, 34.866684, 33.690742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289123, 0.427990, 0.856290,
		0.448212, 0.850911, -0.273964,
		-0.845880, 0.304590, -0.437848,
		32.756687, 34.958061, 33.559387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305138, 35.447701, 34.156445>,  <33.348804, 34.744846, 33.865883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305138, 35.447701, 34.156445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941757, 35.376755, 34.005047>,  <32.723728, 35.334187, 33.914207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941757, 35.376755, 34.005047>,  <33.305138, 35.447701, 34.156445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941757, 35.376755, 34.005047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408623, 0.567469, 0.714847,
		0.088000, 0.804066, -0.587991,
		-0.908451, -0.177360, -0.378497,
		32.669220, 35.323547, 33.891499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962406, 36.138641, 34.027664>,  <33.305138, 35.447701, 34.156445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962406, 36.138641, 34.027664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695580, 35.843571, 34.069359>,  <32.535484, 35.666531, 34.094376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695580, 35.843571, 34.069359>,  <32.962406, 36.138641, 34.027664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695580, 35.843571, 34.069359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559185, 0.588211, 0.584226,
		-0.492279, 0.331430, -0.804870,
		-0.667063, -0.737673, 0.104233,
		32.495461, 35.622269, 34.100628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305908, 36.505600, 34.012814>,  <32.962406, 36.138641, 34.027664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305908, 36.505600, 34.012814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225090, 36.139488, 34.152210>,  <32.176601, 35.919823, 34.235847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225090, 36.139488, 34.152210>,  <32.305908, 36.505600, 34.012814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225090, 36.139488, 34.152210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701715, 0.383516, 0.600426,
		-0.683209, -0.123232, -0.719750,
		-0.202044, -0.915276, 0.348495,
		32.164478, 35.864906, 34.256760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560898, 37.121464, 34.381763>,  <32.305908, 36.505600, 34.012814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560898, 37.121464, 34.381763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275406, 37.356327, 34.229012>,  <32.104111, 37.497246, 34.137360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275406, 37.356327, 34.229012>,  <32.560898, 37.121464, 34.381763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275406, 37.356327, 34.229012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692299, 0.508578, -0.511929,
		-0.106368, -0.629755, -0.769477,
		-0.713729, 0.587161, -0.381882,
		32.061287, 37.532475, 34.114449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494934, 37.172318, 33.585583>,  <32.560898, 37.121464, 34.381763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494934, 37.172318, 33.585583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415962, 37.500961, 33.799492>,  <32.368580, 37.698147, 33.927837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415962, 37.500961, 33.799492>,  <32.494934, 37.172318, 33.585583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415962, 37.500961, 33.799492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610872, 0.529754, -0.588384,
		-0.766719, 0.210513, -0.606487,
		-0.197426, 0.821611, 0.534769,
		32.356735, 37.747444, 33.959923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139717, 37.852650, 33.241890>,  <32.494934, 37.172318, 33.585583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139717, 37.852650, 33.241890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392586, 37.957264, 33.533630>,  <32.544308, 38.020031, 33.708675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392586, 37.957264, 33.533630>,  <32.139717, 37.852650, 33.241890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392586, 37.957264, 33.533630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615268, 0.402704, -0.677698,
		-0.470955, 0.877171, 0.093665,
		0.632176, 0.261536, 0.729350,
		32.582237, 38.035725, 33.752434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183418, 38.584419, 33.312325>,  <32.139717, 37.852650, 33.241890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183418, 38.584419, 33.312325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501099, 38.362057, 33.410480>,  <32.691708, 38.228638, 33.469376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501099, 38.362057, 33.410480>,  <32.183418, 38.584419, 33.312325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501099, 38.362057, 33.410480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545464, 0.474222, -0.691074,
		0.267802, 0.682702, 0.679853,
		0.794198, -0.555906, 0.245392,
		32.739357, 38.195286, 33.484097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740719, 39.042454, 33.274635>,  <32.183418, 38.584419, 33.312325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740719, 39.042454, 33.274635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919903, 38.684837, 33.276920>,  <33.027412, 38.470268, 33.278290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919903, 38.684837, 33.276920>,  <32.740719, 39.042454, 33.274635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919903, 38.684837, 33.276920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756980, 0.375869, -0.534513,
		0.475727, 0.243763, 0.845141,
		0.447957, -0.894037, 0.005713,
		33.054291, 38.416626, 33.278633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457684, 39.162315, 33.268040>,  <32.740719, 39.042454, 33.274635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457684, 39.162315, 33.268040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404572, 38.795708, 33.117119>,  <33.372704, 38.575741, 33.026566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404572, 38.795708, 33.117119>,  <33.457684, 39.162315, 33.268040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404572, 38.795708, 33.117119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557069, 0.245848, -0.793242,
		0.819783, -0.315509, 0.477923,
		-0.132778, -0.916522, -0.377302,
		33.364738, 38.520752, 33.003929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039970, 39.030411, 33.083534>,  <33.457684, 39.162315, 33.268040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039970, 39.030411, 33.083534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830875, 38.769600, 32.863861>,  <33.705418, 38.613113, 32.732056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830875, 38.769600, 32.863861>,  <34.039970, 39.030411, 33.083534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830875, 38.769600, 32.863861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512319, 0.274628, -0.813701,
		0.681379, -0.706708, 0.190490,
		-0.522735, -0.652030, -0.549186,
		33.674053, 38.573990, 32.699104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620029, 38.727402, 32.683067>,  <34.039970, 39.030411, 33.083534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620029, 38.727402, 32.683067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269539, 38.633926, 32.514488>,  <34.059246, 38.577843, 32.413342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269539, 38.633926, 32.514488>,  <34.620029, 38.727402, 32.683067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269539, 38.633926, 32.514488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404740, 0.117815, -0.906811,
		0.261562, -0.965148, -0.008651,
		-0.876226, -0.233686, -0.421449,
		34.006672, 38.563820, 32.388054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777546, 38.275475, 32.125393>,  <34.620029, 38.727402, 32.683067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777546, 38.275475, 32.125393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415970, 38.419979, 32.033840>,  <34.199024, 38.506680, 31.978907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.415970, 38.419979, 32.033840>,  <34.777546, 38.275475, 32.125393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415970, 38.419979, 32.033840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320934, 0.219280, -0.921367,
		-0.282661, -0.906316, -0.314155,
		-0.903938, 0.361258, -0.228886,
		34.144787, 38.528358, 31.965174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579227, 37.955128, 31.502981>,  <34.777546, 38.275475, 32.125393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579227, 37.955128, 31.502981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360924, 38.289104, 31.531347>,  <34.229942, 38.489491, 31.548367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360924, 38.289104, 31.531347>,  <34.579227, 37.955128, 31.502981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360924, 38.289104, 31.531347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326024, 0.289539, -0.899931,
		-0.771919, -0.468023, -0.430227,
		-0.545756, 0.834938, 0.070914,
		34.197197, 38.539585, 31.552622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202770, 37.988132, 30.885647>,  <34.579227, 37.955128, 31.502981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202770, 37.988132, 30.885647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227558, 38.361149, 31.027927>,  <34.242432, 38.584961, 31.113297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227558, 38.361149, 31.027927>,  <34.202770, 37.988132, 30.885647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227558, 38.361149, 31.027927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196233, 0.338046, -0.920444,
		-0.978597, 0.126837, -0.162048,
		0.061966, 0.932543, 0.355701,
		34.246147, 38.640911, 31.134638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729111, 38.351982, 30.409239>,  <34.202770, 37.988132, 30.885647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729111, 38.351982, 30.409239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013405, 38.584435, 30.567801>,  <34.183983, 38.723907, 30.662937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013405, 38.584435, 30.567801>,  <33.729111, 38.351982, 30.409239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013405, 38.584435, 30.567801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272555, 0.292003, -0.916760,
		-0.648512, 0.759616, 0.049146,
		0.710737, 0.581134, 0.396404,
		34.226627, 38.758774, 30.686722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886784, 38.632992, 29.841663>,  <33.729111, 38.351982, 30.409239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886784, 38.632992, 29.841663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137043, 38.833679, 30.080605>,  <34.287201, 38.954094, 30.223970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137043, 38.833679, 30.080605>,  <33.886784, 38.632992, 29.841663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137043, 38.833679, 30.080605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455873, 0.386238, -0.801873,
		-0.633039, 0.774012, 0.012928,
		0.625652, 0.501723, 0.597355,
		34.324738, 38.984196, 30.259811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867409, 39.349079, 29.685804>,  <33.886784, 38.632992, 29.841663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867409, 39.349079, 29.685804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216057, 39.229141, 29.840918>,  <34.425247, 39.157181, 29.933985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216057, 39.229141, 29.840918>,  <33.867409, 39.349079, 29.685804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216057, 39.229141, 29.840918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472182, 0.301166, -0.828458,
		0.131620, 0.905204, 0.404082,
		0.871619, -0.299842, 0.387781,
		34.477543, 39.139187, 29.957253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367683, 39.854355, 29.366041>,  <33.867409, 39.349079, 29.685804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367683, 39.854355, 29.366041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616722, 39.581493, 29.519430>,  <34.766144, 39.417778, 29.611464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616722, 39.581493, 29.519430>,  <34.367683, 39.854355, 29.366041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616722, 39.581493, 29.519430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645211, 0.170184, -0.744809,
		0.442811, 0.711131, 0.546086,
		0.622592, -0.682151, 0.383470,
		34.803501, 39.376846, 29.634472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068928, 40.191555, 29.264957>,  <34.367683, 39.854355, 29.366041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068928, 40.191555, 29.264957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121777, 39.800629, 29.331165>,  <35.153484, 39.566074, 29.370890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121777, 39.800629, 29.331165>,  <35.068928, 40.191555, 29.264957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121777, 39.800629, 29.331165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638804, -0.043731, -0.768126,
		0.757940, 0.207222, 0.618535,
		0.132124, -0.977316, 0.165520,
		35.161415, 39.507435, 29.380821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819534, 40.109306, 29.408514>,  <35.068928, 40.191555, 29.264957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819534, 40.109306, 29.408514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649025, 39.781410, 29.255507>,  <35.546719, 39.584671, 29.163702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649025, 39.781410, 29.255507>,  <35.819534, 40.109306, 29.408514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649025, 39.781410, 29.255507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689706, -0.020909, -0.723788,
		0.585319, -0.572355, 0.574292,
		-0.426271, -0.819740, -0.382518,
		35.521145, 39.535488, 29.140751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306244, 39.860691, 28.989801>,  <35.819534, 40.109306, 29.408514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306244, 39.860691, 28.989801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015614, 39.617420, 28.861916>,  <35.841236, 39.471458, 28.785185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015614, 39.617420, 28.861916>,  <36.306244, 39.860691, 28.989801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015614, 39.617420, 28.861916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548606, -0.233347, -0.802858,
		0.413673, -0.758731, 0.503191,
		-0.726571, -0.608175, -0.319715,
		35.797642, 39.434967, 28.766001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673805, 39.158623, 28.797340>,  <36.306244, 39.860691, 28.989801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673805, 39.158623, 28.797340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325077, 39.206741, 28.607414>,  <36.115841, 39.235611, 28.493458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325077, 39.206741, 28.607414>,  <36.673805, 39.158623, 28.797340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325077, 39.206741, 28.607414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435855, -0.251796, -0.864077,
		-0.223503, -0.960274, 0.167090,
		-0.871824, 0.120297, -0.474817,
		36.063530, 39.242828, 28.464970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574299, 38.616451, 28.373678>,  <36.673805, 39.158623, 28.797340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574299, 38.616451, 28.373678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313293, 38.860390, 28.193760>,  <36.156693, 39.006752, 28.085808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313293, 38.860390, 28.193760>,  <36.574299, 38.616451, 28.373678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313293, 38.860390, 28.193760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515282, -0.078139, -0.853451,
		-0.555619, -0.788659, -0.263256,
		-0.652512, 0.609845, -0.449797,
		36.117538, 39.043343, 28.058821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281124, 38.318058, 27.838810>,  <36.574299, 38.616451, 28.373678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281124, 38.318058, 27.838810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223839, 38.697781, 27.726877>,  <36.189468, 38.925613, 27.659718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223839, 38.697781, 27.726877>,  <36.281124, 38.318058, 27.838810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223839, 38.697781, 27.726877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454230, -0.188163, -0.870787,
		-0.879298, -0.251816, -0.404257,
		-0.143212, 0.949307, -0.279834,
		36.180874, 38.982574, 27.642927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972492, 38.285362, 27.220203>,  <36.281124, 38.318058, 27.838810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972492, 38.285362, 27.220203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132710, 38.651817, 27.226612>,  <36.228840, 38.871689, 27.230457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132710, 38.651817, 27.226612>,  <35.972492, 38.285362, 27.220203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132710, 38.651817, 27.226612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314672, -0.121111, -0.941443,
		-0.860551, 0.382130, -0.336793,
		0.400543, 0.916138, 0.016023,
		36.252872, 38.926659, 27.231419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870453, 38.458561, 26.513586>,  <35.972492, 38.285362, 27.220203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870453, 38.458561, 26.513586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109173, 38.751972, 26.643669>,  <36.252403, 38.928020, 26.721718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109173, 38.751972, 26.643669>,  <35.870453, 38.458561, 26.513586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109173, 38.751972, 26.643669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479135, -0.000683, -0.877741,
		-0.643629, 0.679655, -0.351868,
		0.596801, 0.733532, 0.325207,
		36.288212, 38.972031, 26.741232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845177, 38.932304, 25.896877>,  <35.870453, 38.458561, 26.513586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845177, 38.932304, 25.896877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159157, 39.003147, 26.134357>,  <36.347546, 39.045650, 26.276846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159157, 39.003147, 26.134357>,  <35.845177, 38.932304, 25.896877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159157, 39.003147, 26.134357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597713, 0.035724, -0.800914,
		-0.163055, 0.983543, -0.077816,
		0.784954, 0.177105, 0.593701,
		36.394642, 39.056278, 26.312468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161240, 39.559261, 25.718723>,  <35.845177, 38.932304, 25.896877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161240, 39.559261, 25.718723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477291, 39.390491, 25.896568>,  <36.666920, 39.289230, 26.003275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477291, 39.390491, 25.896568>,  <36.161240, 39.559261, 25.718723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477291, 39.390491, 25.896568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540385, 0.137153, -0.830165,
		0.289287, 0.896197, 0.336370,
		0.790125, -0.421925, 0.444614,
		36.714329, 39.263912, 26.029953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683937, 40.065586, 25.807926>,  <36.161240, 39.559261, 25.718723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683937, 40.065586, 25.807926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856377, 39.704769, 25.799185>,  <36.959839, 39.488281, 25.793940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856377, 39.704769, 25.799185>,  <36.683937, 40.065586, 25.807926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856377, 39.704769, 25.799185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567099, 0.289706, -0.771018,
		0.701821, 0.319991, 0.636438,
		0.431099, -0.902040, -0.021855,
		36.985706, 39.434158, 25.792627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379154, 40.183422, 25.688723>,  <36.683937, 40.065586, 25.807926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379154, 40.183422, 25.688723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352650, 39.796188, 25.592033>,  <37.336746, 39.563850, 25.534019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352650, 39.796188, 25.592033>,  <37.379154, 40.183422, 25.688723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352650, 39.796188, 25.592033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476049, 0.182235, -0.860330,
		0.876919, -0.172080, 0.448778,
		-0.066263, -0.968080, -0.241724,
		37.332771, 39.505764, 25.519516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129898, 39.897530, 25.491392>,  <37.379154, 40.183422, 25.688723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129898, 39.897530, 25.491392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.880615, 39.637550, 25.317408>,  <37.731045, 39.481564, 25.213017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.880615, 39.637550, 25.317408>,  <38.129898, 39.897530, 25.491392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880615, 39.637550, 25.317408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537882, 0.047524, -0.841679,
		0.567715, -0.758495, 0.319976,
		-0.623203, -0.649944, -0.434961,
		37.693653, 39.442566, 25.186920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730209, 39.316410, 25.647306>,  <38.129898, 39.897530, 25.491392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730209, 39.316410, 25.647306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.116756, 39.348057, 25.745184>,  <39.348686, 39.367046, 25.803911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.116756, 39.348057, 25.745184>,  <38.730209, 39.316410, 25.647306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116756, 39.348057, 25.745184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217577, -0.255704, 0.941953,
		0.137099, -0.963512, -0.229889,
		0.966367, 0.079122, 0.244694,
		39.406666, 39.371792, 25.818592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891434, 38.729713, 26.116747>,  <38.730209, 39.316410, 25.647306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891434, 38.729713, 26.116747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.173248, 39.006416, 26.180113>,  <39.342339, 39.172440, 26.218132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.173248, 39.006416, 26.180113>,  <38.891434, 38.729713, 26.116747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173248, 39.006416, 26.180113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097248, -0.127012, 0.987123,
		0.702973, -0.710869, -0.022213,
		0.704536, 0.691761, 0.158417,
		39.384609, 39.213943, 26.227638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240646, 38.567261, 26.718781>,  <38.891434, 38.729713, 26.116747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240646, 38.567261, 26.718781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396782, 38.935169, 26.702475>,  <39.490463, 39.155914, 26.692692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396782, 38.935169, 26.702475>,  <39.240646, 38.567261, 26.718781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396782, 38.935169, 26.702475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208570, 0.131469, 0.969131,
		0.896734, -0.369790, 0.243153,
		0.390342, 0.919767, -0.040765,
		39.513885, 39.211098, 26.690245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875919, 38.572697, 27.196808>,  <39.240646, 38.567261, 26.718781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875919, 38.572697, 27.196808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727001, 38.941200, 27.151758>,  <39.637650, 39.162300, 27.124729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727001, 38.941200, 27.151758>,  <39.875919, 38.572697, 27.196808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727001, 38.941200, 27.151758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087658, 0.085900, 0.992440,
		0.923966, 0.379353, 0.048775,
		-0.372295, 0.921256, -0.112622,
		39.615314, 39.217579, 27.117971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348217, 39.013035, 27.556652>,  <39.875919, 38.572697, 27.196808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348217, 39.013035, 27.556652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.995201, 39.197327, 27.519001>,  <39.783394, 39.307903, 27.496410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.995201, 39.197327, 27.519001>,  <40.348217, 39.013035, 27.556652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995201, 39.197327, 27.519001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024818, 0.154248, 0.987720,
		0.469591, 0.874034, -0.124695,
		-0.882535, 0.460730, -0.094125,
		39.730442, 39.335545, 27.490763>
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
