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
	<24.352997, 34.959370, 35.275684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.616346, 34.870647, 34.987976>,  <24.774355, 34.817413, 34.815350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.616346, 34.870647, 34.987976>,  <24.352997, 34.959370, 35.275684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.616346, 34.870647, 34.987976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297884, 0.954357, -0.021633,
		0.691239, -0.200016, 0.694393,
		0.658372, -0.221802, -0.719270,
		24.813858, 34.804108, 34.772194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.041212, 35.080620, 35.512058>,  <24.352997, 34.959370, 35.275684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.041212, 35.080620, 35.512058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015232, 35.109596, 35.113956>,  <24.999643, 35.126984, 34.875095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015232, 35.109596, 35.113956>,  <25.041212, 35.080620, 35.512058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015232, 35.109596, 35.113956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420924, 0.906278, 0.038499,
		0.904767, -0.416427, -0.089357,
		-0.064950, 0.072445, -0.995255,
		24.995747, 35.131329, 34.815380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667366, 35.225128, 35.353958>,  <25.041212, 35.080620, 35.512058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667366, 35.225128, 35.353958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430920, 35.386154, 35.074379>,  <25.289053, 35.482769, 34.906631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430920, 35.386154, 35.074379>,  <25.667366, 35.225128, 35.353958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430920, 35.386154, 35.074379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468028, 0.876934, 0.109257,
		0.656911, -0.262543, -0.706781,
		-0.591115, 0.402565, -0.698945,
		25.253586, 35.506924, 34.864697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067331, 35.497524, 34.806145>,  <25.667366, 35.225128, 35.353958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067331, 35.497524, 34.806145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721018, 35.689953, 34.861267>,  <25.513229, 35.805412, 34.894341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721018, 35.689953, 34.861267>,  <26.067331, 35.497524, 34.806145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721018, 35.689953, 34.861267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480340, 0.876135, -0.040758,
		-0.140341, 0.030905, -0.989621,
		-0.865782, 0.481074, 0.137803,
		25.461283, 35.834274, 34.902607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884052, 36.055344, 34.248806>,  <26.067331, 35.497524, 34.806145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884052, 36.055344, 34.248806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711447, 36.148045, 34.597538>,  <25.607883, 36.203667, 34.806778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711447, 36.148045, 34.597538>,  <25.884052, 36.055344, 34.248806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711447, 36.148045, 34.597538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260354, 0.957308, -0.125611,
		-0.863721, 0.172782, -0.473426,
		-0.431511, 0.231751, 0.871831,
		25.581993, 36.217571, 34.859089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405573, 36.554115, 34.052319>,  <25.884052, 36.055344, 34.248806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405573, 36.554115, 34.052319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546906, 36.562263, 34.426430>,  <25.631704, 36.567154, 34.650898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546906, 36.562263, 34.426430>,  <25.405573, 36.554115, 34.052319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546906, 36.562263, 34.426430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068613, 0.996506, -0.047624,
		-0.932979, 0.080999, 0.350698,
		0.353330, 0.020370, 0.935277,
		25.652905, 36.568375, 34.707012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038473, 36.963787, 34.566059>,  <25.405573, 36.554115, 34.052319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038473, 36.963787, 34.566059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430695, 36.954197, 34.643970>,  <25.666027, 36.948444, 34.690716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430695, 36.954197, 34.643970>,  <25.038473, 36.963787, 34.566059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430695, 36.954197, 34.643970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008071, 0.996598, 0.082019,
		-0.196080, -0.078852, 0.977412,
		0.980555, -0.023971, 0.194776,
		25.724861, 36.947006, 34.702404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260849, 37.196640, 35.246475>,  <25.038473, 36.963787, 34.566059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260849, 37.196640, 35.246475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567499, 37.280098, 35.003574>,  <25.751490, 37.330173, 34.857834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567499, 37.280098, 35.003574>,  <25.260849, 37.196640, 35.246475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567499, 37.280098, 35.003574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007087, 0.948427, 0.316918,
		0.642053, -0.238654, 0.728569,
		0.766628, 0.208642, -0.607249,
		25.797487, 37.342690, 34.821400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917936, 37.455418, 35.611141>,  <25.260849, 37.196640, 35.246475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917936, 37.455418, 35.611141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925764, 37.615314, 35.244576>,  <25.930460, 37.711254, 35.024635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925764, 37.615314, 35.244576>,  <25.917936, 37.455418, 35.611141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925764, 37.615314, 35.244576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074479, 0.913464, 0.400045,
		0.997031, -0.076082, -0.011897,
		0.019568, 0.399743, -0.916418,
		25.931635, 37.735237, 34.969650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423676, 37.932926, 35.638268>,  <25.917936, 37.455418, 35.611141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423676, 37.932926, 35.638268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192291, 38.041801, 35.330685>,  <26.053461, 38.107128, 35.146133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192291, 38.041801, 35.330685>,  <26.423676, 37.932926, 35.638268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192291, 38.041801, 35.330685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056025, 0.927201, 0.370350,
		0.813785, 0.257313, -0.521099,
		-0.578459, 0.272190, -0.768959,
		26.018753, 38.123459, 35.099998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836029, 38.477451, 35.442127>,  <26.423676, 37.932926, 35.638268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836029, 38.477451, 35.442127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486074, 38.556774, 35.265381>,  <26.276102, 38.604366, 35.159332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486074, 38.556774, 35.265381>,  <26.836029, 38.477451, 35.442127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486074, 38.556774, 35.265381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107542, 0.969099, 0.221997,
		0.472234, 0.146703, -0.869180,
		-0.874888, 0.198308, -0.441864,
		26.223608, 38.616268, 35.132820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869682, 39.054287, 34.998386>,  <26.836029, 38.477451, 35.442127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869682, 39.054287, 34.998386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480343, 39.027061, 35.085987>,  <26.246740, 39.010727, 35.138546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480343, 39.027061, 35.085987>,  <26.869682, 39.054287, 34.998386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480343, 39.027061, 35.085987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020941, 0.977328, 0.210690,
		-0.228376, 0.200488, -0.952706,
		-0.973348, -0.068067, 0.219000,
		26.188339, 39.006641, 35.151688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553976, 39.715878, 34.801514>,  <26.869682, 39.054287, 34.998386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553976, 39.715878, 34.801514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276913, 39.572685, 35.051979>,  <26.110676, 39.486771, 35.202259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276913, 39.572685, 35.051979>,  <26.553976, 39.715878, 34.801514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276913, 39.572685, 35.051979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165925, 0.923942, 0.344675,
		-0.701923, 0.134846, -0.699372,
		-0.692657, -0.357978, 0.626161,
		26.069115, 39.465290, 35.239826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013420, 40.182034, 34.757561>,  <26.553976, 39.715878, 34.801514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013420, 40.182034, 34.757561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934343, 39.980888, 35.094143>,  <25.886898, 39.860199, 35.296093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934343, 39.980888, 35.094143>,  <26.013420, 40.182034, 34.757561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934343, 39.980888, 35.094143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367003, 0.833932, 0.412149,
		-0.908971, -0.227337, -0.349414,
		-0.197690, -0.502867, 0.841453,
		25.875036, 39.830029, 35.346581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283834, 40.395264, 34.935123>,  <26.013420, 40.182034, 34.757561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283834, 40.395264, 34.935123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479624, 40.255955, 35.254906>,  <25.597097, 40.172371, 35.446774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479624, 40.255955, 35.254906>,  <25.283834, 40.395264, 34.935123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479624, 40.255955, 35.254906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185132, 0.854382, 0.485548,
		-0.852140, -0.385667, 0.353720,
		0.489472, -0.348270, 0.799453,
		25.626465, 40.151474, 35.494743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882105, 40.737049, 35.427479>,  <25.283834, 40.395264, 34.935123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882105, 40.737049, 35.427479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203951, 40.596474, 35.618931>,  <25.397058, 40.512131, 35.733803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203951, 40.596474, 35.618931>,  <24.882105, 40.737049, 35.427479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203951, 40.596474, 35.618931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069985, 0.744310, 0.664157,
		-0.589661, -0.567886, 0.574286,
		0.804613, -0.351436, 0.478635,
		25.445335, 40.491043, 35.762520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.680099, 40.661938, 36.156639>,  <24.882105, 40.737049, 35.427479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.680099, 40.661938, 36.156639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079451, 40.683762, 36.163147>,  <25.319061, 40.696857, 36.167053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079451, 40.683762, 36.163147>,  <24.680099, 40.661938, 36.156639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079451, 40.683762, 36.163147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044485, 0.569225, 0.820978,
		0.035530, -0.820370, 0.570728,
		0.998378, 0.054558, 0.016270,
		25.378963, 40.700130, 36.168026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930666, 40.586487, 36.851070>,  <24.680099, 40.661938, 36.156639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930666, 40.586487, 36.851070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236483, 40.773186, 36.673252>,  <25.419973, 40.885204, 36.566563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236483, 40.773186, 36.673252>,  <24.930666, 40.586487, 36.851070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236483, 40.773186, 36.673252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068350, 0.627082, 0.775948,
		0.640932, -0.623634, 0.447533,
		0.764548, 0.466742, -0.444543,
		25.465845, 40.913208, 36.539886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317389, 40.805065, 37.377117>,  <24.930666, 40.586487, 36.851070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317389, 40.805065, 37.377117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489462, 41.039265, 37.102268>,  <25.592707, 41.179783, 36.937359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489462, 41.039265, 37.102268>,  <25.317389, 40.805065, 37.377117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489462, 41.039265, 37.102268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127278, 0.714210, 0.688262,
		0.893724, -0.383534, 0.232720,
		0.430183, 0.585496, -0.687122,
		25.618517, 41.214912, 36.896133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913839, 41.059147, 37.658855>,  <25.317389, 40.805065, 37.377117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913839, 41.059147, 37.658855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837624, 41.315674, 37.361557>,  <25.791893, 41.469589, 37.183178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837624, 41.315674, 37.361557>,  <25.913839, 41.059147, 37.658855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837624, 41.315674, 37.361557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127177, 0.766860, 0.629088,
		0.973407, 0.025344, -0.227678,
		-0.190541, 0.641314, -0.743243,
		25.780460, 41.508068, 37.138584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480715, 41.529205, 37.640762>,  <25.913839, 41.059147, 37.658855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480715, 41.529205, 37.640762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178286, 41.728020, 37.470440>,  <25.996828, 41.847309, 37.368248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178286, 41.728020, 37.470440>,  <26.480715, 41.529205, 37.640762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178286, 41.728020, 37.470440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009338, 0.642334, 0.766368,
		0.654422, 0.583405, -0.481010,
		-0.756072, 0.497036, -0.425805,
		25.951464, 41.877132, 37.342697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682156, 42.177021, 37.560566>,  <26.480715, 41.529205, 37.640762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682156, 42.177021, 37.560566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284792, 42.221249, 37.572647>,  <26.046373, 42.247784, 37.579895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284792, 42.221249, 37.572647>,  <26.682156, 42.177021, 37.560566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284792, 42.221249, 37.572647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104554, 0.766225, 0.634010,
		0.046962, 0.632989, -0.772735,
		-0.993410, 0.110567, 0.030199,
		25.986769, 42.254417, 37.581707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840427, 42.779495, 37.675655>,  <26.682156, 42.177021, 37.560566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840427, 42.779495, 37.675655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451736, 42.723831, 37.751949>,  <26.218521, 42.690434, 37.797726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451736, 42.723831, 37.751949>,  <26.840427, 42.779495, 37.675655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451736, 42.723831, 37.751949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013375, 0.838989, 0.543984,
		-0.235725, 0.526054, -0.817130,
		-0.971728, -0.139160, 0.190734,
		26.160217, 42.682083, 37.809170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475101, 43.235992, 37.329075>,  <26.840427, 42.779495, 37.675655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475101, 43.235992, 37.329075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250484, 43.130436, 37.642769>,  <26.115713, 43.067101, 37.830986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250484, 43.130436, 37.642769>,  <26.475101, 43.235992, 37.329075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250484, 43.130436, 37.642769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109969, 0.915571, 0.386829,
		-0.820107, 0.303463, -0.485112,
		-0.561543, -0.263894, 0.784238,
		26.082022, 43.051270, 37.878040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893820, 43.779213, 37.475853>,  <26.475101, 43.235992, 37.329075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893820, 43.779213, 37.475853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975800, 43.581200, 37.813595>,  <26.024986, 43.462391, 38.016239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975800, 43.581200, 37.813595>,  <25.893820, 43.779213, 37.475853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975800, 43.581200, 37.813595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060713, 0.867438, 0.493826,
		-0.976888, -0.049945, 0.207834,
		0.204948, -0.495031, 0.844358,
		26.037283, 43.432690, 38.066902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516859, 44.234089, 37.970444>,  <25.893820, 43.779213, 37.475853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516859, 44.234089, 37.970444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813164, 44.024387, 38.138458>,  <25.990946, 43.898567, 38.239269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813164, 44.024387, 38.138458>,  <25.516859, 44.234089, 37.970444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813164, 44.024387, 38.138458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166514, 0.749053, 0.641244,
		-0.650806, -0.405065, 0.642164,
		0.740759, -0.524255, 0.420039,
		26.035391, 43.867111, 38.264469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336279, 44.005802, 38.764179>,  <25.516859, 44.234089, 37.970444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336279, 44.005802, 38.764179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721899, 44.073997, 38.682655>,  <25.953272, 44.114914, 38.633739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721899, 44.073997, 38.682655>,  <25.336279, 44.005802, 38.764179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721899, 44.073997, 38.682655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014088, 0.733161, 0.679909,
		0.265340, -0.658340, 0.704403,
		0.964052, 0.170483, -0.203811,
		26.011114, 44.125141, 38.621513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761009, 43.857742, 39.388298>,  <25.336279, 44.005802, 38.764179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761009, 43.857742, 39.388298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892450, 44.143879, 39.141624>,  <25.971315, 44.315563, 38.993618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892450, 44.143879, 39.141624>,  <25.761009, 43.857742, 39.388298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892450, 44.143879, 39.141624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017876, 0.657540, 0.753208,
		0.944299, -0.236482, 0.228856,
		0.328602, 0.715344, -0.616687,
		25.991032, 44.358482, 38.956619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325422, 44.085106, 39.718010>,  <25.761009, 43.857742, 39.388298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325422, 44.085106, 39.718010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134472, 44.348507, 39.485291>,  <26.019901, 44.506546, 39.345657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134472, 44.348507, 39.485291>,  <26.325422, 44.085106, 39.718010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134472, 44.348507, 39.485291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076340, 0.690692, 0.719108,
		0.875376, 0.298871, -0.379990,
		-0.477377, 0.658499, -0.581800,
		25.991259, 44.546055, 39.310749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982260, 43.711430, 39.640709>,  <26.325422, 44.085106, 39.718010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982260, 43.711430, 39.640709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648336, 43.604111, 39.448414>,  <26.447983, 43.539719, 39.333038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648336, 43.604111, 39.448414>,  <26.982260, 43.711430, 39.640709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648336, 43.604111, 39.448414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107274, -0.777201, 0.620041,
		-0.539986, 0.569187, 0.620033,
		-0.834810, -0.268300, -0.480736,
		26.397894, 43.523621, 39.304192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468704, 43.498787, 40.157227>,  <26.982260, 43.711430, 39.640709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468704, 43.498787, 40.157227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387341, 43.288490, 39.826839>,  <26.338522, 43.162312, 39.628609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387341, 43.288490, 39.826839>,  <26.468704, 43.498787, 40.157227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387341, 43.288490, 39.826839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069663, -0.833693, 0.547816,
		-0.976613, 0.168969, 0.132954,
		-0.203407, -0.525743, -0.825966,
		26.326319, 43.130768, 39.579048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884090, 43.118996, 40.319912>,  <26.468704, 43.498787, 40.157227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884090, 43.118996, 40.319912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083513, 42.950317, 40.016964>,  <26.203167, 42.849110, 39.835194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083513, 42.950317, 40.016964>,  <25.884090, 43.118996, 40.319912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083513, 42.950317, 40.016964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138146, -0.901183, 0.410834,
		-0.855777, -0.100198, -0.507549,
		0.498559, -0.421698, -0.757370,
		26.233080, 42.823807, 39.789753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489477, 42.648804, 39.776749>,  <25.884090, 43.118996, 40.319912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489477, 42.648804, 39.776749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876303, 42.548603, 39.794777>,  <26.108398, 42.488483, 39.805595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876303, 42.548603, 39.794777>,  <25.489477, 42.648804, 39.776749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876303, 42.548603, 39.794777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249221, -0.895963, 0.367612,
		-0.051703, -0.366738, -0.928886,
		0.967065, -0.250504, 0.045075,
		26.166422, 42.473454, 39.808300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470432, 41.929436, 39.566090>,  <25.489477, 42.648804, 39.776749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470432, 41.929436, 39.566090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808857, 41.993504, 39.769470>,  <26.011911, 42.031944, 39.891499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808857, 41.993504, 39.769470>,  <25.470432, 41.929436, 39.566090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808857, 41.993504, 39.769470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161070, -0.832407, 0.530241,
		0.508166, -0.530514, -0.678470,
		0.846063, 0.160169, 0.508451,
		26.062675, 42.041553, 39.922005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767981, 41.242676, 39.651867>,  <25.470432, 41.929436, 39.566090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767981, 41.242676, 39.651867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964548, 41.472553, 39.913624>,  <26.082489, 41.610481, 40.070679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964548, 41.472553, 39.913624>,  <25.767981, 41.242676, 39.651867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964548, 41.472553, 39.913624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208027, -0.807084, 0.552576,
		0.845713, -0.135416, -0.516170,
		0.491420, 0.574698, 0.654391,
		26.111975, 41.644962, 40.109940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005804, 41.186817, 40.417641>,  <25.767981, 41.242676, 39.651867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005804, 41.186817, 40.417641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646055, 41.024212, 40.481987>,  <25.430206, 40.926651, 40.520596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646055, 41.024212, 40.481987>,  <26.005804, 41.186817, 40.417641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646055, 41.024212, 40.481987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397413, -0.913539, -0.086659,
		0.182188, -0.014008, 0.983164,
		-0.899372, -0.406511, 0.160869,
		25.376244, 40.902260, 40.530247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979210, 40.607361, 40.965446>,  <26.005804, 41.186817, 40.417641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979210, 40.607361, 40.965446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690428, 40.551414, 40.694382>,  <25.517159, 40.517849, 40.531742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690428, 40.551414, 40.694382>,  <25.979210, 40.607361, 40.965446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690428, 40.551414, 40.694382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301729, -0.944975, -0.126418,
		-0.622690, -0.295737, 0.724428,
		-0.721953, -0.139862, -0.677659,
		25.473843, 40.509457, 40.491085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725269, 39.955559, 41.065929>,  <25.979210, 40.607361, 40.965446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725269, 39.955559, 41.065929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631271, 40.008389, 40.680737>,  <25.574873, 40.040089, 40.449619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631271, 40.008389, 40.680737>,  <25.725269, 39.955559, 41.065929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631271, 40.008389, 40.680737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399098, -0.890249, -0.219494,
		-0.886285, -0.435903, 0.156485,
		-0.234988, 0.132082, -0.962982,
		25.560774, 40.048012, 40.391842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370174, 39.292294, 40.734123>,  <25.725269, 39.955559, 41.065929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370174, 39.292294, 40.734123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493423, 39.515461, 40.425896>,  <25.567373, 39.649361, 40.240959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493423, 39.515461, 40.425896>,  <25.370174, 39.292294, 40.734123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493423, 39.515461, 40.425896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455615, -0.797592, -0.395300,
		-0.835149, -0.229283, -0.499955,
		0.308125, 0.557921, -0.770573,
		25.585861, 39.682838, 40.194725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162243, 38.925213, 40.131950>,  <25.370174, 39.292294, 40.734123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162243, 38.925213, 40.131950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467936, 39.168510, 40.046173>,  <25.651352, 39.314487, 39.994705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467936, 39.168510, 40.046173>,  <25.162243, 38.925213, 40.131950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467936, 39.168510, 40.046173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508372, -0.772737, -0.380046,
		-0.396872, 0.181425, -0.899765,
		0.764232, 0.608245, -0.214446,
		25.697205, 39.350983, 39.981838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309237, 38.852070, 39.400471>,  <25.162243, 38.925213, 40.131950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309237, 38.852070, 39.400471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650656, 39.031773, 39.506016>,  <25.855507, 39.139595, 39.569344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650656, 39.031773, 39.506016>,  <25.309237, 38.852070, 39.400471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650656, 39.031773, 39.506016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498437, -0.556640, -0.664615,
		-0.151708, 0.698799, -0.699046,
		0.853549, 0.449257, 0.263860,
		25.906721, 39.166550, 39.585175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629217, 38.956898, 38.745296>,  <25.309237, 38.852070, 39.400471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629217, 38.956898, 38.745296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920511, 38.979477, 39.018494>,  <26.095287, 38.993027, 39.182411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920511, 38.979477, 39.018494>,  <25.629217, 38.956898, 38.745296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920511, 38.979477, 39.018494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549358, -0.643913, -0.532524,
		0.409729, 0.763013, -0.499933,
		0.728236, 0.056452, 0.682998,
		26.138983, 38.996414, 39.223392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284294, 39.226173, 38.473461>,  <25.629217, 38.956898, 38.745296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284294, 39.226173, 38.473461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399622, 39.024551, 38.799110>,  <26.468819, 38.903580, 38.994499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399622, 39.024551, 38.799110>,  <26.284294, 39.226173, 38.473461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399622, 39.024551, 38.799110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702544, -0.466351, -0.537539,
		0.650617, 0.726944, 0.219661,
		0.288321, -0.504053, 0.814126,
		26.486118, 38.873337, 39.043346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830704, 39.236046, 38.262375>,  <26.284294, 39.226173, 38.473461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830704, 39.236046, 38.262375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852779, 38.971581, 38.561657>,  <26.866024, 38.812901, 38.741226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852779, 38.971581, 38.561657>,  <26.830704, 39.236046, 38.262375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852779, 38.971581, 38.561657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694862, -0.512687, -0.504300,
		0.717022, 0.547731, 0.431126,
		0.055188, -0.661167, 0.748206,
		26.869335, 38.773232, 38.786118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518293, 39.120144, 38.364304>,  <26.830704, 39.236046, 38.262375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518293, 39.120144, 38.364304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323591, 38.799988, 38.504269>,  <27.206770, 38.607895, 38.588245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323591, 38.799988, 38.504269>,  <27.518293, 39.120144, 38.364304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323591, 38.799988, 38.504269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605705, -0.597885, -0.525029,
		0.629435, -0.043620, 0.775827,
		-0.486757, -0.800394, 0.349909,
		27.177565, 38.559868, 38.609241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989273, 38.712517, 38.711010>,  <27.518293, 39.120144, 38.364304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989273, 38.712517, 38.711010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700769, 38.449848, 38.622860>,  <27.527668, 38.292248, 38.569969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700769, 38.449848, 38.622860>,  <27.989273, 38.712517, 38.711010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700769, 38.449848, 38.622860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638909, -0.507821, -0.577852,
		0.267549, -0.557581, 0.785825,
		-0.721258, -0.656674, -0.220377,
		27.484392, 38.252846, 38.556747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259035, 37.996120, 38.773552>,  <27.989273, 38.712517, 38.711010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259035, 37.996120, 38.773552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943785, 37.962017, 38.529720>,  <27.754635, 37.941555, 38.383419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943785, 37.962017, 38.529720>,  <28.259035, 37.996120, 38.773552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943785, 37.962017, 38.529720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548925, -0.545400, -0.633419,
		-0.278459, -0.833828, 0.476646,
		-0.788126, -0.085262, -0.609581,
		27.707348, 37.936440, 38.346848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218170, 37.198483, 38.516605>,  <28.259035, 37.996120, 38.773552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218170, 37.198483, 38.516605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983255, 37.398327, 38.261894>,  <27.842306, 37.518234, 38.109070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983255, 37.398327, 38.261894>,  <28.218170, 37.198483, 38.516605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983255, 37.398327, 38.261894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346713, -0.555614, -0.755700,
		-0.731357, -0.664592, 0.153084,
		-0.587288, 0.499610, -0.636775,
		27.807070, 37.548210, 38.070862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929159, 36.679680, 38.111259>,  <28.218170, 37.198483, 38.516605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929159, 36.679680, 38.111259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893021, 37.014950, 37.896111>,  <27.871338, 37.216110, 37.767021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893021, 37.014950, 37.896111>,  <27.929159, 36.679680, 38.111259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893021, 37.014950, 37.896111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338976, -0.481955, -0.807969,
		-0.936447, -0.255322, -0.240578,
		-0.090345, 0.838171, -0.537873,
		27.865917, 37.266399, 37.734749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465801, 36.561081, 37.450855>,  <27.929159, 36.679680, 38.111259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465801, 36.561081, 37.450855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696819, 36.874371, 37.358772>,  <27.835430, 37.062344, 37.303524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696819, 36.874371, 37.358772>,  <27.465801, 36.561081, 37.450855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696819, 36.874371, 37.358772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157080, -0.383339, -0.910152,
		-0.801103, 0.489495, -0.344426,
		0.577547, 0.783228, -0.230205,
		27.870083, 37.109341, 37.289711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377214, 36.670776, 36.765339>,  <27.465801, 36.561081, 37.450855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377214, 36.670776, 36.765339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706293, 36.892811, 36.814415>,  <27.903740, 37.026031, 36.843861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706293, 36.892811, 36.814415>,  <27.377214, 36.670776, 36.765339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706293, 36.892811, 36.814415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226203, -0.121642, -0.966455,
		-0.521537, 0.822854, -0.225636,
		0.822698, 0.555081, 0.122691,
		27.953102, 37.059334, 36.851223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336054, 37.237991, 36.383034>,  <27.377214, 36.670776, 36.765339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336054, 37.237991, 36.383034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728367, 37.199524, 36.450939>,  <27.963755, 37.176445, 36.491684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728367, 37.199524, 36.450939>,  <27.336054, 37.237991, 36.383034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728367, 37.199524, 36.450939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164936, -0.056173, -0.984703,
		0.104232, 0.993779, -0.039232,
		0.980781, -0.096167, 0.169765,
		28.022602, 37.170673, 36.501869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607101, 37.663147, 35.936432>,  <27.336054, 37.237991, 36.383034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607101, 37.663147, 35.936432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864677, 37.373894, 36.036362>,  <28.019224, 37.200340, 36.096321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864677, 37.373894, 36.036362>,  <27.607101, 37.663147, 35.936432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864677, 37.373894, 36.036362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194465, -0.161107, -0.967589,
		0.739948, 0.671652, 0.036882,
		0.643941, -0.723137, 0.249823,
		28.057859, 37.156952, 36.111309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295176, 37.814602, 35.565201>,  <27.607101, 37.663147, 35.936432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295176, 37.814602, 35.565201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301203, 37.426193, 35.660614>,  <28.304819, 37.193150, 35.717861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301203, 37.426193, 35.660614>,  <28.295176, 37.814602, 35.565201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301203, 37.426193, 35.660614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404365, -0.212264, -0.889625,
		0.914474, 0.109858, 0.389448,
		0.015067, -0.971018, 0.238533,
		28.305723, 37.134888, 35.732174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608458, 37.631016, 34.996452>,  <28.295176, 37.814602, 35.565201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608458, 37.631016, 34.996452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493898, 37.291584, 35.174393>,  <28.425163, 37.087925, 35.281158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493898, 37.291584, 35.174393>,  <28.608458, 37.631016, 34.996452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493898, 37.291584, 35.174393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145261, -0.497389, -0.855279,
		0.947035, -0.180331, 0.265717,
		-0.286398, -0.848578, 0.444850,
		28.407978, 37.037010, 35.307846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128046, 37.085808, 34.969154>,  <28.608458, 37.631016, 34.996452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128046, 37.085808, 34.969154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799631, 36.863689, 35.022148>,  <28.602583, 36.730419, 35.053944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799631, 36.863689, 35.022148>,  <29.128046, 37.085808, 34.969154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799631, 36.863689, 35.022148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178736, -0.470437, -0.864142,
		0.542176, -0.685812, 0.485496,
		-0.821035, -0.555293, 0.132480,
		28.553320, 36.697102, 35.061893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374281, 36.410126, 34.725060>,  <29.128046, 37.085808, 34.969154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374281, 36.410126, 34.725060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974752, 36.397804, 34.710064>,  <28.735035, 36.390411, 34.701069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974752, 36.397804, 34.710064>,  <29.374281, 36.410126, 34.725060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974752, 36.397804, 34.710064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047663, -0.478265, -0.876921,
		0.009087, -0.877675, 0.479170,
		-0.998822, -0.030807, -0.037487,
		28.675106, 36.388561, 34.698818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981356, 35.730789, 34.875134>,  <29.374281, 36.410126, 34.725060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981356, 35.730789, 34.875134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752504, 35.953175, 34.633945>,  <28.615194, 36.086605, 34.489231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752504, 35.953175, 34.633945>,  <28.981356, 35.730789, 34.875134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752504, 35.953175, 34.633945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208156, -0.612678, -0.762428,
		-0.793311, -0.561716, 0.234801,
		-0.572126, 0.555968, -0.602969,
		28.580866, 36.119965, 34.453056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138351, 34.977024, 34.942886>,  <28.981356, 35.730789, 34.875134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138351, 34.977024, 34.942886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398211, 34.742241, 34.749622>,  <29.554125, 34.601372, 34.633663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398211, 34.742241, 34.749622>,  <29.138351, 34.977024, 34.942886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398211, 34.742241, 34.749622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550540, -0.075062, 0.831427,
		-0.524276, -0.806134, 0.274377,
		0.649646, -0.586953, -0.483162,
		29.593105, 34.566154, 34.604675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562250, 34.505882, 35.305347>,  <29.138351, 34.977024, 34.942886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562250, 34.505882, 35.305347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780439, 34.271648, 35.065498>,  <29.911354, 34.131107, 34.921589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780439, 34.271648, 35.065498>,  <29.562250, 34.505882, 35.305347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780439, 34.271648, 35.065498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649115, -0.157410, 0.744225,
		-0.530195, -0.795179, 0.294250,
		0.545475, -0.585587, -0.599621,
		29.944082, 34.095974, 34.885612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708509, 33.826523, 35.565563>,  <29.562250, 34.505882, 35.305347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708509, 33.826523, 35.565563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983885, 34.007595, 35.338886>,  <30.149109, 34.116238, 35.202881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983885, 34.007595, 35.338886>,  <29.708509, 33.826523, 35.565563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983885, 34.007595, 35.338886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665024, -0.082123, 0.742293,
		0.289480, -0.887885, -0.357577,
		0.688436, 0.452676, -0.566692,
		30.190416, 34.143398, 35.168880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257370, 33.416088, 35.394409>,  <29.708509, 33.826523, 35.565563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257370, 33.416088, 35.394409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408092, 33.786079, 35.374664>,  <30.498526, 34.008076, 35.362816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408092, 33.786079, 35.374664>,  <30.257370, 33.416088, 35.394409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408092, 33.786079, 35.374664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492092, -0.154745, 0.856679,
		0.784770, -0.347090, -0.513483,
		0.376804, 0.924977, -0.049361,
		30.521133, 34.063572, 35.359856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869295, 33.290813, 35.997616>,  <30.257370, 33.416088, 35.394409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869295, 33.290813, 35.997616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019335, 32.965748, 36.175995>,  <31.109360, 32.770706, 36.283024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019335, 32.965748, 36.175995>,  <30.869295, 33.290813, 35.997616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019335, 32.965748, 36.175995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632953, -0.576008, -0.517286,
		0.677251, -0.088228, -0.730443,
		0.375102, -0.812669, 0.445947,
		31.131865, 32.721947, 36.309780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465925, 32.709488, 35.490376>,  <30.869295, 33.290813, 35.997616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465925, 32.709488, 35.490376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825350, 32.559658, 35.398918>,  <31.041004, 32.469761, 35.344044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825350, 32.559658, 35.398918>,  <30.465925, 32.709488, 35.490376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825350, 32.559658, 35.398918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228584, -0.045252, 0.972472,
		-0.374613, -0.926090, 0.044961,
		0.898562, -0.374578, -0.228641,
		31.094919, 32.447285, 35.330326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591148, 32.225639, 35.954845>,  <30.465925, 32.709488, 35.490376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591148, 32.225639, 35.954845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969114, 32.261574, 35.828945>,  <31.195894, 32.283134, 35.753407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969114, 32.261574, 35.828945>,  <30.591148, 32.225639, 35.954845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969114, 32.261574, 35.828945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327291, -0.246387, 0.912236,
		0.004406, -0.964998, -0.262219,
		0.944914, 0.089842, -0.314749,
		31.252588, 32.288525, 35.734520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969961, 31.694246, 36.169140>,  <30.591148, 32.225639, 35.954845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969961, 31.694246, 36.169140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254484, 31.968428, 36.106926>,  <31.425198, 32.132938, 36.069599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254484, 31.968428, 36.106926>,  <30.969961, 31.694246, 36.169140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254484, 31.968428, 36.106926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444568, -0.267349, 0.854918,
		0.544426, -0.677256, -0.494899,
		0.711309, 0.685455, -0.155535,
		31.467876, 32.174065, 36.060265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599424, 31.386232, 36.320370>,  <30.969961, 31.694246, 36.169140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599424, 31.386232, 36.320370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695930, 31.774347, 36.313084>,  <31.753834, 32.007217, 36.308712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695930, 31.774347, 36.313084>,  <31.599424, 31.386232, 36.320370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695930, 31.774347, 36.313084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574610, -0.127705, 0.808403,
		0.782058, -0.205503, -0.588348,
		0.241264, 0.970289, -0.018211,
		31.768311, 32.065434, 36.307621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309170, 31.478308, 36.242760>,  <31.599424, 31.386232, 36.320370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309170, 31.478308, 36.242760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172165, 31.800924, 36.435497>,  <32.089962, 31.994493, 36.551140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172165, 31.800924, 36.435497>,  <32.309170, 31.478308, 36.242760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172165, 31.800924, 36.435497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652190, -0.165048, 0.739870,
		0.676262, 0.567673, -0.469485,
		-0.342517, 0.806540, 0.481847,
		32.069408, 32.042885, 36.580051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904881, 31.728138, 36.602634>,  <32.309170, 31.478308, 36.242760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904881, 31.728138, 36.602634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629528, 31.930708, 36.810352>,  <32.464317, 32.052250, 36.934982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629528, 31.930708, 36.810352>,  <32.904881, 31.728138, 36.602634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629528, 31.930708, 36.810352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641148, 0.090011, 0.762120,
		0.339213, 0.857574, -0.386654,
		-0.688377, 0.506424, 0.519299,
		32.423016, 32.082634, 36.966141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258644, 32.340870, 36.856850>,  <32.904881, 31.728138, 36.602634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258644, 32.340870, 36.856850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925812, 32.336281, 37.078667>,  <32.726112, 32.333527, 37.211758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925812, 32.336281, 37.078667>,  <33.258644, 32.340870, 36.856850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925812, 32.336281, 37.078667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523104, 0.316194, 0.791444,
		-0.184422, 0.948625, -0.257097,
		-0.832076, -0.011472, 0.554543,
		32.676189, 32.332840, 37.245029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252754, 32.928707, 37.400211>,  <33.258644, 32.340870, 36.856850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252754, 32.928707, 37.400211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004223, 32.654102, 37.551289>,  <32.855103, 32.489338, 37.641933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004223, 32.654102, 37.551289>,  <33.252754, 32.928707, 37.400211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004223, 32.654102, 37.551289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255914, 0.277789, 0.925927,
		-0.740578, 0.671963, 0.003089,
		-0.621331, -0.686513, 0.377689,
		32.817825, 32.448147, 37.664597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999287, 33.166492, 38.111832>,  <33.252754, 32.928707, 37.400211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999287, 33.166492, 38.111832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928356, 32.773548, 38.135590>,  <32.885799, 32.537781, 38.149845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928356, 32.773548, 38.135590>,  <32.999287, 33.166492, 38.111832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928356, 32.773548, 38.135590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119600, 0.038394, 0.992080,
		-0.976858, 0.183023, 0.110682,
		-0.177324, -0.982359, 0.059395,
		32.875160, 32.478840, 38.153408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537815, 33.089718, 38.667149>,  <32.999287, 33.166492, 38.111832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537815, 33.089718, 38.667149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722099, 32.739166, 38.610996>,  <32.832668, 32.528835, 38.577305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722099, 32.739166, 38.610996>,  <32.537815, 33.089718, 38.667149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722099, 32.739166, 38.610996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170080, -0.068060, 0.983077,
		-0.871104, -0.476785, 0.117699,
		0.460706, -0.876381, -0.140379,
		32.860310, 32.476254, 38.568882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350365, 32.734097, 39.185165>,  <32.537815, 33.089718, 38.667149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350365, 32.734097, 39.185165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687355, 32.546513, 39.079102>,  <32.889549, 32.433964, 39.015461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687355, 32.546513, 39.079102>,  <32.350365, 32.734097, 39.185165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687355, 32.546513, 39.079102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262115, -0.073200, 0.962256,
		-0.470666, -0.880183, 0.061251,
		0.842478, -0.468956, -0.265162,
		32.940098, 32.405827, 38.999554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449051, 32.231426, 39.678299>,  <32.350365, 32.734097, 39.185165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449051, 32.231426, 39.678299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813759, 32.241657, 39.514339>,  <33.032585, 32.247795, 39.415962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813759, 32.241657, 39.514339>,  <32.449051, 32.231426, 39.678299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813759, 32.241657, 39.514339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410540, -0.029332, 0.911371,
		0.011285, -0.999243, -0.037243,
		0.911773, 0.025574, -0.409898,
		33.087292, 32.249329, 39.391369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842312, 31.739336, 39.865635>,  <32.449051, 32.231426, 39.678299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842312, 31.739336, 39.865635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132092, 31.991457, 39.753994>,  <33.305958, 32.142731, 39.687012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132092, 31.991457, 39.753994>,  <32.842312, 31.739336, 39.865635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132092, 31.991457, 39.753994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391462, -0.042914, 0.919193,
		0.567392, -0.775164, -0.277828,
		0.724448, 0.630302, -0.279098,
		33.349426, 32.180546, 39.670265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428387, 31.404173, 40.112949>,  <32.842312, 31.739336, 39.865635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428387, 31.404173, 40.112949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533077, 31.783913, 40.043400>,  <33.595890, 32.011757, 40.001671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533077, 31.783913, 40.043400>,  <33.428387, 31.404173, 40.112949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533077, 31.783913, 40.043400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457367, 0.036644, 0.888523,
		0.849892, -0.312073, -0.424611,
		0.261724, 0.949351, -0.173875,
		33.611595, 32.068718, 39.991238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004280, 31.449402, 40.412670>,  <33.428387, 31.404173, 40.112949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004280, 31.449402, 40.412670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914394, 31.838171, 40.384762>,  <33.860462, 32.071434, 40.368015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914394, 31.838171, 40.384762>,  <34.004280, 31.449402, 40.412670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914394, 31.838171, 40.384762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345421, 0.146409, 0.926956,
		0.911145, 0.184203, -0.368624,
		-0.224718, 0.971923, -0.069773,
		33.846977, 32.129749, 40.363831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673073, 31.816526, 40.588150>,  <34.004280, 31.449402, 40.412670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673073, 31.816526, 40.588150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355286, 32.049938, 40.655464>,  <34.164616, 32.189987, 40.695854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355286, 32.049938, 40.655464>,  <34.673073, 31.816526, 40.588150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355286, 32.049938, 40.655464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254545, 0.068361, 0.964642,
		0.551393, 0.809209, -0.202845,
		-0.794464, 0.583530, 0.168286,
		34.116947, 32.224998, 40.705952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965244, 32.340561, 40.914825>,  <34.673073, 31.816526, 40.588150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965244, 32.340561, 40.914825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570911, 32.370972, 40.974625>,  <34.334312, 32.389217, 41.010502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570911, 32.370972, 40.974625>,  <34.965244, 32.340561, 40.914825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570911, 32.370972, 40.974625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157605, 0.115112, 0.980770,
		0.057360, 0.990438, -0.125465,
		-0.985835, 0.076031, 0.149495,
		34.275162, 32.393780, 41.019474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945873, 32.675327, 41.528450>,  <34.965244, 32.340561, 40.914825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945873, 32.675327, 41.528450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561657, 32.570030, 41.492535>,  <34.331127, 32.506851, 41.470985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561657, 32.570030, 41.492535>,  <34.945873, 32.675327, 41.528450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561657, 32.570030, 41.492535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108620, 0.057836, 0.992399,
		-0.256047, 0.962995, -0.084148,
		-0.960542, -0.263241, -0.089792,
		34.273495, 32.491058, 41.465595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520306, 33.201515, 41.848583>,  <34.945873, 32.675327, 41.528450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520306, 33.201515, 41.848583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323467, 32.853336, 41.843552>,  <34.205364, 32.644428, 41.840534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323467, 32.853336, 41.843552>,  <34.520306, 33.201515, 41.848583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323467, 32.853336, 41.843552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091886, 0.037570, 0.995061,
		-0.865676, 0.490824, -0.098471,
		-0.492099, -0.870448, -0.012576,
		34.175838, 32.592201, 41.839779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984066, 33.311920, 42.347252>,  <34.520306, 33.201515, 41.848583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984066, 33.311920, 42.347252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018456, 32.918705, 42.282459>,  <34.039089, 32.682774, 42.243584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018456, 32.918705, 42.282459>,  <33.984066, 33.311920, 42.347252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018456, 32.918705, 42.282459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155988, -0.173863, 0.972337,
		-0.984011, -0.058324, -0.168290,
		0.085970, -0.983041, -0.161985,
		34.044247, 32.623791, 42.233864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367527, 33.074177, 42.640446>,  <33.984066, 33.311920, 42.347252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367527, 33.074177, 42.640446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641407, 32.783585, 42.617077>,  <33.805737, 32.609230, 42.603054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641407, 32.783585, 42.617077>,  <33.367527, 33.074177, 42.640446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641407, 32.783585, 42.617077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137376, -0.207367, 0.968569,
		-0.715762, -0.655152, -0.241785,
		0.684699, -0.726481, -0.058423,
		33.846817, 32.565639, 42.599548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951511, 32.486374, 42.789856>,  <33.367527, 33.074177, 42.640446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951511, 32.486374, 42.789856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333321, 32.425526, 42.892426>,  <33.562405, 32.389019, 42.953968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333321, 32.425526, 42.892426>,  <32.951511, 32.486374, 42.789856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333321, 32.425526, 42.892426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293481, -0.327768, 0.898018,
		-0.052554, -0.932432, -0.357504,
		0.954519, -0.152115, 0.256426,
		33.619675, 32.379890, 42.969353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915699, 31.977381, 43.291702>,  <32.951511, 32.486374, 42.789856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915699, 31.977381, 43.291702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282143, 32.127632, 43.347771>,  <33.502010, 32.217785, 43.381413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282143, 32.127632, 43.347771>,  <32.915699, 31.977381, 43.291702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282143, 32.127632, 43.347771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029012, -0.286588, 0.957615,
		0.399879, -0.881345, -0.251648,
		0.916109, 0.375630, 0.140170,
		33.556976, 32.240322, 43.389820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346992, 31.452478, 43.631657>,  <32.915699, 31.977381, 43.291702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346992, 31.452478, 43.631657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539215, 31.795225, 43.706329>,  <33.654549, 32.000874, 43.751133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539215, 31.795225, 43.706329>,  <33.346992, 31.452478, 43.631657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539215, 31.795225, 43.706329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080141, -0.254891, 0.963643,
		0.873296, -0.448121, -0.191159,
		0.480554, 0.856865, 0.186683,
		33.683380, 32.052284, 43.762333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849812, 31.223595, 44.186153>,  <33.346992, 31.452478, 43.631657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849812, 31.223595, 44.186153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813099, 31.619509, 44.229786>,  <33.791069, 31.857058, 44.255966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813099, 31.619509, 44.229786>,  <33.849812, 31.223595, 44.186153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813099, 31.619509, 44.229786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272149, -0.080441, 0.958887,
		0.957868, 0.117698, -0.261986,
		-0.091785, 0.989786, 0.109083,
		33.785564, 31.916445, 44.262512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253513, 31.290716, 44.805958>,  <33.849812, 31.223595, 44.186153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253513, 31.290716, 44.805958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090057, 31.653341, 44.763714>,  <33.991982, 31.870916, 44.738369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090057, 31.653341, 44.763714>,  <34.253513, 31.290716, 44.805958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090057, 31.653341, 44.763714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164803, 0.187097, 0.968419,
		0.897692, 0.378332, -0.225860,
		-0.408642, 0.906565, -0.105605,
		33.967464, 31.925310, 44.732033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796894, 31.810736, 45.007656>,  <34.253513, 31.290716, 44.805958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796894, 31.810736, 45.007656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409443, 31.905010, 45.039181>,  <34.176971, 31.961575, 45.058094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409443, 31.905010, 45.039181>,  <34.796894, 31.810736, 45.007656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409443, 31.905010, 45.039181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119186, 0.162303, 0.979516,
		0.218065, 0.958181, -0.185302,
		-0.968629, 0.235684, 0.078809,
		34.118855, 31.975716, 45.062824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756630, 32.386147, 45.492317>,  <34.796894, 31.810736, 45.007656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756630, 32.386147, 45.492317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377544, 32.258549, 45.495773>,  <34.150093, 32.181992, 45.497849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377544, 32.258549, 45.495773>,  <34.756630, 32.386147, 45.492317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377544, 32.258549, 45.495773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037932, 0.139504, 0.989495,
		-0.316850, 0.937433, -0.144310,
		-0.947717, -0.318996, 0.008643,
		34.093231, 32.162849, 45.498367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398651, 32.824505, 46.006710>,  <34.756630, 32.386147, 45.492317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398651, 32.824505, 46.006710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194084, 32.485226, 45.951561>,  <34.071346, 32.281658, 45.918472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194084, 32.485226, 45.951561>,  <34.398651, 32.824505, 46.006710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194084, 32.485226, 45.951561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032308, -0.141346, 0.989433,
		-0.858727, 0.510464, 0.044882,
		-0.511414, -0.848203, -0.137869,
		34.040661, 32.230766, 45.910202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899807, 32.917736, 46.576290>,  <34.398651, 32.824505, 46.006710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899807, 32.917736, 46.576290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933094, 32.533253, 46.471104>,  <33.953068, 32.302563, 46.407993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933094, 32.533253, 46.471104>,  <33.899807, 32.917736, 46.576290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933094, 32.533253, 46.471104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181620, -0.244832, 0.952403,
		-0.979841, -0.127018, 0.154200,
		0.083219, -0.961210, -0.262965,
		33.958061, 32.244888, 46.392216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797363, 32.767311, 47.158310>,  <33.899807, 32.917736, 46.576290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797363, 32.767311, 47.158310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893547, 32.422443, 46.979942>,  <33.951256, 32.215523, 46.872921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893547, 32.422443, 46.979942>,  <33.797363, 32.767311, 47.158310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893547, 32.422443, 46.979942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436595, -0.314239, 0.842994,
		-0.866929, -0.397388, 0.300859,
		0.240455, -0.862170, -0.445920,
		33.965683, 32.163792, 46.846165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876610, 32.341736, 47.766392>,  <33.797363, 32.767311, 47.158310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876610, 32.341736, 47.766392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047802, 32.149834, 47.460014>,  <34.150517, 32.034691, 47.276188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047802, 32.149834, 47.460014>,  <33.876610, 32.341736, 47.766392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047802, 32.149834, 47.460014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540542, -0.543323, 0.642351,
		-0.724327, -0.688935, 0.026800,
		0.427977, -0.479759, -0.765942,
		34.176197, 32.005905, 47.230232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043869, 31.666485, 48.054741>,  <33.876610, 32.341736, 47.766392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043869, 31.666485, 48.054741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269096, 31.707886, 47.726780>,  <34.404232, 31.732727, 47.530003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269096, 31.707886, 47.726780>,  <34.043869, 31.666485, 48.054741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269096, 31.707886, 47.726780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756711, -0.463366, 0.461173,
		-0.332184, -0.880102, -0.339227,
		0.563065, 0.103503, -0.819905,
		34.438015, 31.738937, 47.480808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403919, 31.151022, 48.166405>,  <34.043869, 31.666485, 48.054741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403919, 31.151022, 48.166405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622173, 31.363260, 47.906944>,  <34.753128, 31.490604, 47.751270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622173, 31.363260, 47.906944>,  <34.403919, 31.151022, 48.166405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622173, 31.363260, 47.906944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837426, -0.316058, 0.445898,
		0.031582, -0.786494, -0.616789,
		0.545637, 0.530598, -0.648649,
		34.785866, 31.522440, 47.712349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799030, 30.686132, 47.817188>,  <34.403919, 31.151022, 48.166405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799030, 30.686132, 47.817188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978474, 31.043564, 47.810650>,  <35.086140, 31.258022, 47.806728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978474, 31.043564, 47.810650>,  <34.799030, 30.686132, 47.817188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978474, 31.043564, 47.810650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722909, -0.352052, 0.594527,
		0.525503, -0.278525, -0.803909,
		0.448608, 0.893579, -0.016344,
		35.113056, 31.311638, 47.805748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557922, 30.707024, 47.598244>,  <34.799030, 30.686132, 47.817188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557922, 30.707024, 47.598244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527321, 31.022060, 47.842815>,  <35.508961, 31.211082, 47.989559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527321, 31.022060, 47.842815>,  <35.557922, 30.707024, 47.598244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527321, 31.022060, 47.842815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701425, -0.393310, 0.594398,
		0.708625, 0.474345, -0.522348,
		-0.076505, 0.787594, 0.611427,
		35.504368, 31.258339, 48.026245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249107, 30.951799, 47.644367>,  <35.557922, 30.707024, 47.598244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249107, 30.951799, 47.644367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015465, 31.058075, 47.951149>,  <35.875278, 31.121840, 48.135220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015465, 31.058075, 47.951149>,  <36.249107, 30.951799, 47.644367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015465, 31.058075, 47.951149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659579, -0.395322, 0.639278,
		0.473044, 0.879279, 0.055669,
		-0.584110, 0.265688, 0.766958,
		35.840233, 31.137781, 48.181236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667988, 31.272276, 48.160740>,  <36.249107, 30.951799, 47.644367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667988, 31.272276, 48.160740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338181, 31.128315, 48.335388>,  <36.140297, 31.041939, 48.440178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338181, 31.128315, 48.335388>,  <36.667988, 31.272276, 48.160740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338181, 31.128315, 48.335388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557042, -0.380834, 0.738017,
		-0.099337, 0.851725, 0.514487,
		-0.824522, -0.359903, 0.436616,
		36.090824, 31.020344, 48.466373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698483, 31.486092, 48.797382>,  <36.667988, 31.272276, 48.160740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698483, 31.486092, 48.797382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444458, 31.182505, 48.854881>,  <36.292042, 31.000353, 48.889381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444458, 31.182505, 48.854881>,  <36.698483, 31.486092, 48.797382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444458, 31.182505, 48.854881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528826, -0.291529, 0.797091,
		-0.563059, 0.582221, 0.586501,
		-0.635065, -0.758966, 0.143746,
		36.253937, 30.954815, 48.898006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470474, 31.438095, 49.612900>,  <36.698483, 31.486092, 48.797382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470474, 31.438095, 49.612900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418575, 31.103401, 49.400093>,  <36.387436, 30.902584, 49.272411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418575, 31.103401, 49.400093>,  <36.470474, 31.438095, 49.612900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418575, 31.103401, 49.400093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529708, -0.512062, 0.676167,
		-0.838197, -0.194079, 0.509665,
		-0.129751, -0.836735, -0.532015,
		36.379650, 30.852381, 49.240490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175655, 30.879967, 50.010475>,  <36.470474, 31.438095, 49.612900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175655, 30.879967, 50.010475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370731, 30.693106, 49.715469>,  <36.487778, 30.580990, 49.538467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370731, 30.693106, 49.715469>,  <36.175655, 30.879967, 50.010475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370731, 30.693106, 49.715469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515963, -0.527224, 0.675142,
		-0.704228, -0.709792, -0.016092,
		0.487695, -0.467151, -0.737512,
		36.517040, 30.552959, 49.494217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311676, 30.258966, 50.239704>,  <36.175655, 30.879967, 50.010475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311676, 30.258966, 50.239704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578579, 30.291920, 49.943604>,  <36.738720, 30.311691, 49.765942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578579, 30.291920, 49.943604>,  <36.311676, 30.258966, 50.239704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578579, 30.291920, 49.943604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626406, -0.599765, 0.497893,
		-0.402962, -0.795924, -0.451803,
		0.667261, 0.082380, -0.740254,
		36.778759, 30.316633, 49.721527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353199, 29.568491, 49.982903>,  <36.311676, 30.258966, 50.239704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353199, 29.568491, 49.982903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451756, 29.188644, 50.060387>,  <36.510891, 28.960737, 50.106876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451756, 29.188644, 50.060387>,  <36.353199, 29.568491, 49.982903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451756, 29.188644, 50.060387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381909, 0.278833, 0.881134,
		-0.890750, -0.143126, 0.431368,
		0.246393, -0.949614, 0.193710,
		36.525673, 28.903761, 50.118500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053501, 29.202612, 50.568073>,  <36.353199, 29.568491, 49.982903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053501, 29.202612, 50.568073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427692, 29.080000, 50.497734>,  <36.652206, 29.006432, 50.455532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427692, 29.080000, 50.497734>,  <36.053501, 29.202612, 50.568073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427692, 29.080000, 50.497734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230806, 0.153163, 0.960869,
		-0.267603, -0.939457, 0.214030,
		0.935477, -0.306531, -0.175846,
		36.708336, 28.988041, 50.444981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223137, 28.904320, 51.205311>,  <36.053501, 29.202612, 50.568073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223137, 28.904320, 51.205311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566963, 28.977732, 51.014542>,  <36.773258, 29.021778, 50.900078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566963, 28.977732, 51.014542>,  <36.223137, 28.904320, 51.205311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566963, 28.977732, 51.014542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442708, 0.198721, 0.874368,
		0.255246, -0.962719, 0.089565,
		0.859570, 0.183528, -0.476926,
		36.824833, 29.032789, 50.871464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373386, 29.430334, 51.614761>,  <36.223137, 28.904320, 51.205311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373386, 29.430334, 51.614761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113163, 29.637842, 51.392899>,  <35.957027, 29.762348, 51.259781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113163, 29.637842, 51.392899>,  <36.373386, 29.430334, 51.614761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113163, 29.637842, 51.392899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705442, 0.683285, -0.188342,
		0.281282, -0.513806, -0.810483,
		-0.650562, 0.518772, -0.554657,
		35.917995, 29.793474, 51.226501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689423, 29.683830, 51.060307>,  <36.373386, 29.430334, 51.614761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689423, 29.683830, 51.060307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366776, 29.919699, 51.076565>,  <36.173187, 30.061220, 51.086319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366776, 29.919699, 51.076565>,  <36.689423, 29.683830, 51.060307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366776, 29.919699, 51.076565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570895, 0.795059, -0.204841,
		-0.153107, -0.142023, -0.977951,
		-0.806621, 0.589670, 0.040649,
		36.124790, 30.096600, 51.088760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369476, 29.695801, 51.313042>,  <36.689423, 29.683830, 51.060307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369476, 29.695801, 51.313042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585426, 29.359104, 51.312450>,  <37.714996, 29.157085, 51.312096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585426, 29.359104, 51.312450>,  <37.369476, 29.695801, 51.313042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585426, 29.359104, 51.312450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661560, -0.423225, -0.619047,
		0.520453, 0.335186, -0.785353,
		0.539877, -0.841743, -0.001477,
		37.747391, 29.106581, 51.312008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439041, 29.528839, 50.562447>,  <37.369476, 29.695801, 51.313042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439041, 29.528839, 50.562447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444759, 29.230463, 50.828789>,  <37.448189, 29.051437, 50.988594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444759, 29.230463, 50.828789>,  <37.439041, 29.528839, 50.562447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444759, 29.230463, 50.828789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543342, -0.564822, -0.621092,
		0.839390, -0.352912, -0.413373,
		0.014291, -0.745941, 0.665858,
		37.449047, 29.006681, 51.028545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767708, 28.966085, 50.336876>,  <37.439041, 29.528839, 50.562447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767708, 28.966085, 50.336876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495892, 28.843050, 50.603294>,  <37.332802, 28.769230, 50.763145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495892, 28.843050, 50.603294>,  <37.767708, 28.966085, 50.336876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495892, 28.843050, 50.603294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389638, -0.617931, -0.682894,
		0.621621, -0.723569, 0.300060,
		-0.679537, -0.307587, 0.666049,
		37.292030, 28.750774, 50.803108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620903, 28.178083, 50.300480>,  <37.767708, 28.966085, 50.336876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620903, 28.178083, 50.300480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277733, 28.361040, 50.394077>,  <37.071831, 28.470814, 50.450233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277733, 28.361040, 50.394077>,  <37.620903, 28.178083, 50.300480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277733, 28.361040, 50.394077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493600, -0.607434, -0.622401,
		-0.142548, -0.649472, 0.746904,
		-0.857927, 0.457394, 0.233991,
		37.020355, 28.498259, 50.464275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093548, 27.698271, 50.349926>,  <37.620903, 28.178083, 50.300480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093548, 27.698271, 50.349926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910618, 28.046198, 50.275875>,  <36.800861, 28.254953, 50.231445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910618, 28.046198, 50.275875>,  <37.093548, 27.698271, 50.349926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910618, 28.046198, 50.275875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535810, -0.435648, -0.723269,
		-0.709763, -0.231574, 0.665289,
		-0.457322, 0.869818, -0.185128,
		36.773422, 28.307144, 50.220337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385769, 27.584398, 50.224213>,  <37.093548, 27.698271, 50.349926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385769, 27.584398, 50.224213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489487, 27.924566, 50.041107>,  <36.551716, 28.128668, 49.931244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489487, 27.924566, 50.041107>,  <36.385769, 27.584398, 50.224213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489487, 27.924566, 50.041107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595949, -0.232101, -0.768748,
		-0.760008, 0.472135, 0.446627,
		0.259291, 0.850422, -0.457768,
		36.567272, 28.179693, 49.903778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831367, 27.717564, 49.881332>,  <36.385769, 27.584398, 50.224213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831367, 27.717564, 49.881332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100746, 27.958380, 49.709743>,  <36.262375, 28.102869, 49.606792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100746, 27.958380, 49.709743>,  <35.831367, 27.717564, 49.881332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100746, 27.958380, 49.709743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543506, 0.009915, -0.839346,
		-0.501068, 0.798403, 0.333891,
		0.673447, 0.602042, -0.428969,
		36.302780, 28.138992, 49.581055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341091, 28.088825, 49.495232>,  <35.831367, 27.717564, 49.881332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341091, 28.088825, 49.495232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712543, 28.124754, 49.351246>,  <35.935417, 28.146311, 49.264854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712543, 28.124754, 49.351246>,  <35.341091, 28.088825, 49.495232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712543, 28.124754, 49.351246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360695, -0.008500, -0.932645,
		-0.086830, 0.995922, 0.024505,
		0.928633, 0.089820, -0.359962,
		35.991135, 28.151699, 49.243256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290768, 28.702589, 49.037529>,  <35.341091, 28.088825, 49.495232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290768, 28.702589, 49.037529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608521, 28.512642, 48.886028>,  <35.799171, 28.398674, 48.795128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608521, 28.512642, 48.886028>,  <35.290768, 28.702589, 49.037529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608521, 28.512642, 48.886028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389483, 0.080264, -0.917530,
		0.466105, 0.876390, -0.121192,
		0.794386, -0.474867, -0.378750,
		35.846836, 28.370182, 48.772404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481205, 29.038013, 48.515213>,  <35.290768, 28.702589, 49.037529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481205, 29.038013, 48.515213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662785, 28.688736, 48.444263>,  <35.771732, 28.479170, 48.401691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662785, 28.688736, 48.444263>,  <35.481205, 29.038013, 48.515213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662785, 28.688736, 48.444263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426063, -0.037884, -0.903900,
		0.782561, 0.485897, -0.389233,
		0.453948, -0.873194, -0.177377,
		35.798969, 28.426777, 48.391052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856796, 29.129217, 47.871449>,  <35.481205, 29.038013, 48.515213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856796, 29.129217, 47.871449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861153, 28.729565, 47.887524>,  <35.863766, 28.489773, 47.897167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861153, 28.729565, 47.887524>,  <35.856796, 29.129217, 47.871449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861153, 28.729565, 47.887524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390465, -0.041249, -0.919693,
		0.920553, -0.005671, -0.390576,
		0.010896, -0.999133, 0.040186,
		35.864422, 28.429825, 47.899578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313526, 28.921436, 47.323788>,  <35.856796, 29.129217, 47.871449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313526, 28.921436, 47.323788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067600, 28.610575, 47.377502>,  <35.920044, 28.424057, 47.409729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067600, 28.610575, 47.377502>,  <36.313526, 28.921436, 47.323788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067600, 28.610575, 47.377502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214543, 0.000962, -0.976714,
		0.758928, -0.629310, -0.167324,
		-0.614817, -0.777154, 0.134284,
		35.883156, 28.377428, 47.417789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360271, 28.467730, 46.823879>,  <36.313526, 28.921436, 47.323788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360271, 28.467730, 46.823879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013130, 28.305393, 46.938507>,  <35.804844, 28.207991, 47.007286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013130, 28.305393, 46.938507>,  <36.360271, 28.467730, 46.823879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013130, 28.305393, 46.938507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323510, 0.023861, -0.945924,
		0.377059, -0.913631, -0.152002,
		-0.867852, -0.405843, 0.286572,
		35.752773, 28.183641, 47.024479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229176, 27.956463, 46.337673>,  <36.360271, 28.467730, 46.823879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229176, 27.956463, 46.337673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871094, 28.037762, 46.496319>,  <35.656246, 28.086540, 46.591507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871094, 28.037762, 46.496319>,  <36.229176, 27.956463, 46.337673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871094, 28.037762, 46.496319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379619, 0.118441, -0.917530,
		-0.233461, -0.971937, -0.028872,
		-0.895201, 0.203247, 0.396618,
		35.602535, 28.098736, 46.615303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699989, 27.634071, 45.939346>,  <36.229176, 27.956463, 46.337673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699989, 27.634071, 45.939346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526459, 27.938416, 46.132378>,  <35.422340, 28.121023, 46.248196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526459, 27.938416, 46.132378>,  <35.699989, 27.634071, 45.939346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526459, 27.938416, 46.132378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437452, 0.290372, -0.851070,
		-0.787675, -0.580320, 0.206871,
		-0.433824, 0.760863, 0.482582,
		35.396313, 28.166674, 46.277153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112881, 27.631006, 45.781181>,  <35.699989, 27.634071, 45.939346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112881, 27.631006, 45.781181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139694, 28.011894, 45.900368>,  <35.155785, 28.240427, 45.971878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139694, 28.011894, 45.900368>,  <35.112881, 27.631006, 45.781181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139694, 28.011894, 45.900368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414950, 0.298193, -0.859591,
		-0.907371, -0.066018, 0.415113,
		0.067036, 0.952219, 0.297966,
		35.159805, 28.297560, 45.989758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554562, 27.865463, 45.464447>,  <35.112881, 27.631006, 45.781181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554562, 27.865463, 45.464447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771122, 28.184448, 45.570984>,  <34.901058, 28.375839, 45.634907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771122, 28.184448, 45.570984>,  <34.554562, 27.865463, 45.464447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771122, 28.184448, 45.570984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135953, 0.395654, -0.908281,
		-0.829700, 0.455533, 0.322625,
		0.541400, 0.797463, 0.266343,
		34.933540, 28.423687, 45.650887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065468, 28.423914, 45.537262>,  <34.554562, 27.865463, 45.464447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065468, 28.423914, 45.537262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438656, 28.556374, 45.480827>,  <34.662567, 28.635849, 45.446968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438656, 28.556374, 45.480827>,  <34.065468, 28.423914, 45.537262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438656, 28.556374, 45.480827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305852, 0.522659, -0.795790,
		-0.189786, 0.785600, 0.588909,
		0.932971, 0.331149, -0.141084,
		34.718548, 28.655718, 45.438503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026226, 29.053211, 45.355774>,  <34.065468, 28.423914, 45.537262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026226, 29.053211, 45.355774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391052, 28.988638, 45.205002>,  <34.609947, 28.949894, 45.114540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391052, 28.988638, 45.205002>,  <34.026226, 29.053211, 45.355774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391052, 28.988638, 45.205002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295983, 0.376989, -0.877652,
		0.283779, 0.912041, 0.296058,
		0.912066, -0.161431, -0.376930,
		34.664673, 28.940208, 45.091923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262062, 29.681553, 44.919918>,  <34.026226, 29.053211, 45.355774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262062, 29.681553, 44.919918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475166, 29.379826, 44.766468>,  <34.603027, 29.198790, 44.674397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475166, 29.379826, 44.766468>,  <34.262062, 29.681553, 44.919918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475166, 29.379826, 44.766468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347781, 0.218115, -0.911852,
		0.771501, 0.619218, -0.146134,
		0.532761, -0.754317, -0.383628,
		34.634995, 29.153530, 44.651379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413155, 29.963472, 44.415661>,  <34.262062, 29.681553, 44.919918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413155, 29.963472, 44.415661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499878, 29.583944, 44.323803>,  <34.551910, 29.356228, 44.268688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499878, 29.583944, 44.323803>,  <34.413155, 29.963472, 44.415661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499878, 29.583944, 44.323803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435221, 0.116624, -0.892738,
		0.873829, 0.293501, -0.387660,
		0.216809, -0.948818, -0.229647,
		34.564922, 29.299299, 44.254910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756603, 29.937738, 43.727150>,  <34.413155, 29.963472, 44.415661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756603, 29.937738, 43.727150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594475, 29.581694, 43.810497>,  <34.497200, 29.368067, 43.860504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594475, 29.581694, 43.810497>,  <34.756603, 29.937738, 43.727150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594475, 29.581694, 43.810497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400283, -0.032117, -0.915828,
		0.821883, -0.454607, -0.343280,
		-0.405317, -0.890113, 0.208368,
		34.472881, 29.314659, 43.873009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753418, 29.676088, 43.120449>,  <34.756603, 29.937738, 43.727150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753418, 29.676088, 43.120449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515263, 29.412870, 43.304840>,  <34.372372, 29.254940, 43.415474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515263, 29.412870, 43.304840>,  <34.753418, 29.676088, 43.120449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515263, 29.412870, 43.304840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492639, -0.154235, -0.856457,
		0.634684, -0.737014, -0.232349,
		-0.595385, -0.658044, 0.460973,
		34.336647, 29.215458, 43.443130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743896, 29.042410, 42.660416>,  <34.753418, 29.676088, 43.120449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743896, 29.042410, 42.660416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412983, 28.992371, 42.879486>,  <34.214436, 28.962347, 43.010929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412983, 28.992371, 42.879486>,  <34.743896, 29.042410, 42.660416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412983, 28.992371, 42.879486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516151, -0.215591, -0.828920,
		0.221771, -0.968437, 0.113786,
		-0.827288, -0.125099, 0.547672,
		34.164795, 28.954842, 43.043789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523891, 28.415628, 42.598690>,  <34.743896, 29.042410, 42.660416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523891, 28.415628, 42.598690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198685, 28.612675, 42.722843>,  <34.003563, 28.730902, 42.797337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198685, 28.612675, 42.722843>,  <34.523891, 28.415628, 42.598690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198685, 28.612675, 42.722843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459560, -0.215601, -0.861580,
		-0.357510, -0.843116, 0.401673,
		-0.813013, 0.492617, 0.310383,
		33.954781, 28.760460, 42.815960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846420, 27.923513, 42.488350>,  <34.523891, 28.415628, 42.598690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846420, 27.923513, 42.488350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747452, 28.311054, 42.484131>,  <33.688072, 28.543579, 42.481598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747452, 28.311054, 42.484131>,  <33.846420, 27.923513, 42.488350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747452, 28.311054, 42.484131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621004, -0.166926, -0.765826,
		-0.743732, -0.182930, 0.642961,
		-0.247420, 0.968851, -0.010548,
		33.673225, 28.601709, 42.480968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207428, 27.818239, 42.305023>,  <33.846420, 27.923513, 42.488350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207428, 27.818239, 42.305023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277912, 28.201593, 42.215187>,  <33.320202, 28.431606, 42.161285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277912, 28.201593, 42.215187>,  <33.207428, 27.818239, 42.305023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277912, 28.201593, 42.215187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531902, -0.099278, -0.840966,
		-0.828269, 0.267651, 0.492274,
		0.176213, 0.958387, -0.224593,
		33.330776, 28.489109, 42.147808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619141, 28.140759, 42.070538>,  <33.207428, 27.818239, 42.305023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619141, 28.140759, 42.070538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879421, 28.420778, 41.952885>,  <33.035591, 28.588791, 41.882294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879421, 28.420778, 41.952885>,  <32.619141, 28.140759, 42.070538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879421, 28.420778, 41.952885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501843, 0.105783, -0.858466,
		-0.569856, 0.706214, 0.420150,
		0.650705, 0.700051, -0.294128,
		33.074635, 28.630795, 41.864647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201378, 28.689859, 41.777473>,  <32.619141, 28.140759, 42.070538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201378, 28.689859, 41.777473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570335, 28.730284, 41.628353>,  <32.791710, 28.754538, 41.538879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570335, 28.730284, 41.628353>,  <32.201378, 28.689859, 41.777473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570335, 28.730284, 41.628353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384156, 0.139487, -0.912671,
		-0.040233, 0.985054, 0.167484,
		0.922391, 0.101059, -0.372802,
		32.847054, 28.760601, 41.516514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283657, 29.388502, 41.443985>,  <32.201378, 28.689859, 41.777473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283657, 29.388502, 41.443985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538933, 29.126755, 41.281742>,  <32.692097, 28.969706, 41.184395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538933, 29.126755, 41.281742>,  <32.283657, 29.388502, 41.443985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538933, 29.126755, 41.281742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312763, 0.261049, -0.913254,
		0.703489, 0.709687, -0.038064,
		0.638188, -0.654369, -0.405609,
		32.730389, 28.930445, 41.160061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455025, 29.746620, 40.891941>,  <32.283657, 29.388502, 41.443985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455025, 29.746620, 40.891941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572834, 29.373041, 40.810951>,  <32.643520, 29.148893, 40.762360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572834, 29.373041, 40.810951>,  <32.455025, 29.746620, 40.891941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572834, 29.373041, 40.810951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039803, 0.223674, -0.973851,
		0.954814, 0.278767, 0.103053,
		0.294527, -0.933948, -0.202471,
		32.661194, 29.092857, 40.750210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926464, 29.839157, 40.435516>,  <32.455025, 29.746620, 40.891941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926464, 29.839157, 40.435516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878506, 29.443600, 40.400387>,  <32.849731, 29.206264, 40.379311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878506, 29.443600, 40.400387>,  <32.926464, 29.839157, 40.435516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878506, 29.443600, 40.400387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133294, 0.071624, -0.988485,
		0.983797, -0.130226, 0.123226,
		-0.119900, -0.988894, -0.087822,
		32.842537, 29.146931, 40.374039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491314, 29.575804, 39.977955>,  <32.926464, 29.839157, 40.435516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491314, 29.575804, 39.977955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183861, 29.320164, 39.966961>,  <32.999390, 29.166779, 39.960365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183861, 29.320164, 39.966961>,  <33.491314, 29.575804, 39.977955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183861, 29.320164, 39.966961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080254, -0.053716, -0.995326,
		0.634639, -0.767244, 0.092578,
		-0.768631, -0.639103, -0.027484,
		32.953270, 29.128433, 39.958717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581436, 29.059509, 39.594273>,  <33.491314, 29.575804, 39.977955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581436, 29.059509, 39.594273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182400, 29.060810, 39.566570>,  <32.942978, 29.061590, 39.549950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182400, 29.060810, 39.566570>,  <33.581436, 29.059509, 39.594273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182400, 29.060810, 39.566570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069257, 0.001554, -0.997598,
		-0.003197, -0.999993, -0.001780,
		-0.997594, 0.003312, -0.069251,
		32.883121, 29.061785, 39.545795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444355, 28.795130, 38.962376>,  <33.581436, 29.059509, 39.594273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444355, 28.795130, 38.962376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052147, 28.868740, 38.989853>,  <32.816822, 28.912907, 39.006340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052147, 28.868740, 38.989853>,  <33.444355, 28.795130, 38.962376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052147, 28.868740, 38.989853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060592, 0.049305, -0.996944,
		-0.186851, -0.981684, -0.037194,
		-0.980518, 0.184026, 0.068695,
		32.757992, 28.923948, 39.010460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999367, 28.364492, 38.493652>,  <33.444355, 28.795130, 38.962376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999367, 28.364492, 38.493652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786896, 28.691896, 38.581184>,  <32.659412, 28.888340, 38.633701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786896, 28.691896, 38.581184>,  <32.999367, 28.364492, 38.493652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786896, 28.691896, 38.581184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130834, 0.175935, -0.975668,
		-0.837096, -0.546886, 0.013636,
		-0.531181, 0.818512, 0.218826,
		32.627541, 28.937450, 38.646832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330399, 28.276495, 38.235291>,  <32.999367, 28.364492, 38.493652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330399, 28.276495, 38.235291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374550, 28.673174, 38.261669>,  <32.401039, 28.911182, 38.277496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374550, 28.673174, 38.261669>,  <32.330399, 28.276495, 38.235291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374550, 28.673174, 38.261669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272527, 0.094009, -0.957544,
		-0.955796, 0.087718, 0.280642,
		0.110377, 0.991699, 0.065948,
		32.407661, 28.970684, 38.281452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751200, 28.594238, 37.888699>,  <32.330399, 28.276495, 38.235291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751200, 28.594238, 37.888699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020954, 28.889482, 37.896633>,  <32.182808, 29.066629, 37.901394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020954, 28.889482, 37.896633>,  <31.751200, 28.594238, 37.888699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020954, 28.889482, 37.896633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283551, 0.283686, -0.916035,
		-0.681764, 0.612138, 0.400606,
		0.674386, 0.738112, 0.019835,
		32.223270, 29.110916, 37.902584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431324, 29.183062, 37.573082>,  <31.751200, 28.594238, 37.888699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431324, 29.183062, 37.573082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821209, 29.272102, 37.580967>,  <32.055138, 29.325527, 37.585697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821209, 29.272102, 37.580967>,  <31.431324, 29.183062, 37.573082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821209, 29.272102, 37.580967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062663, 0.356928, -0.932028,
		-0.214506, 0.907222, 0.361851,
		0.974711, 0.222600, 0.019714,
		32.113621, 29.338882, 37.586880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391962, 29.788858, 37.313896>,  <31.431324, 29.183062, 37.573082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391962, 29.788858, 37.313896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778494, 29.696463, 37.268559>,  <32.010414, 29.641026, 37.241356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778494, 29.696463, 37.268559>,  <31.391962, 29.788858, 37.313896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778494, 29.696463, 37.268559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039199, 0.303226, -0.952112,
		0.254296, 0.924499, 0.283962,
		0.966332, -0.230987, -0.113349,
		32.068394, 29.627167, 37.234554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721277, 30.462854, 37.045166>,  <31.391962, 29.788858, 37.313896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721277, 30.462854, 37.045166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970480, 30.159824, 36.967251>,  <32.120003, 29.978006, 36.920502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970480, 30.159824, 36.967251>,  <31.721277, 30.462854, 37.045166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970480, 30.159824, 36.967251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089061, 0.316102, -0.944536,
		0.777131, 0.571103, 0.264404,
		0.623005, -0.757576, -0.194789,
		32.157383, 29.932552, 36.908813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233280, 30.808903, 36.739944>,  <31.721277, 30.462854, 37.045166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233280, 30.808903, 36.739944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257202, 30.424551, 36.631771>,  <32.271557, 30.193939, 36.566868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257202, 30.424551, 36.631771>,  <32.233280, 30.808903, 36.739944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257202, 30.424551, 36.631771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314131, 0.275271, -0.908596,
		0.947494, -0.030611, 0.318305,
		0.059807, -0.960879, -0.270434,
		32.275143, 30.136288, 36.550640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830162, 30.778406, 36.525482>,  <32.233280, 30.808903, 36.739944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830162, 30.778406, 36.525482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613819, 30.495850, 36.342842>,  <32.484013, 30.326315, 36.233257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613819, 30.495850, 36.342842>,  <32.830162, 30.778406, 36.525482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613819, 30.495850, 36.342842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397065, 0.264124, -0.878964,
		0.741492, -0.656694, 0.137630,
		-0.540859, -0.706393, -0.456597,
		32.451561, 30.283932, 36.205864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267818, 30.680164, 36.022831>,  <32.830162, 30.778406, 36.525482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267818, 30.680164, 36.022831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927464, 30.503492, 35.909050>,  <32.723251, 30.397490, 35.840782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927464, 30.503492, 35.909050>,  <33.267818, 30.680164, 36.022831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927464, 30.503492, 35.909050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257147, 0.122001, -0.958640,
		0.458117, -0.888838, 0.009768,
		-0.850885, -0.441681, -0.284453,
		32.672199, 30.370989, 35.823715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489014, 30.081972, 35.561134>,  <33.267818, 30.680164, 36.022831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489014, 30.081972, 35.561134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115974, 30.198038, 35.475288>,  <32.892151, 30.267677, 35.423779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115974, 30.198038, 35.475288>,  <33.489014, 30.081972, 35.561134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115974, 30.198038, 35.475288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251104, 0.094534, -0.963333,
		-0.259239, -0.952295, -0.161025,
		-0.932599, 0.290167, -0.214618,
		32.836193, 30.285088, 35.410904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834900, 29.550049, 35.033752>,  <33.489014, 30.081972, 35.561134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834900, 29.550049, 35.033752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982258, 29.300003, 34.758503>,  <34.070671, 29.149975, 34.593353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982258, 29.300003, 34.758503>,  <33.834900, 29.550049, 35.033752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982258, 29.300003, 34.758503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929639, -0.241594, -0.278215,
		0.007669, 0.742202, -0.670133,
		0.368392, -0.625115, -0.688127,
		34.092773, 29.112469, 34.552063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872131, 30.134809, 34.636646>,  <33.834900, 29.550049, 35.033752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872131, 30.134809, 34.636646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228271, 30.313068, 34.599400>,  <34.441956, 30.420023, 34.577049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228271, 30.313068, 34.599400>,  <33.872131, 30.134809, 34.636646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228271, 30.313068, 34.599400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328588, -0.487443, 0.808968,
		0.315124, -0.750865, -0.580430,
		0.890352, 0.445648, -0.093121,
		34.495377, 30.446762, 34.571465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423195, 29.586351, 34.586208>,  <33.872131, 30.134809, 34.636646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423195, 29.586351, 34.586208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548752, 29.939840, 34.725063>,  <34.624084, 30.151934, 34.808376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548752, 29.939840, 34.725063>,  <34.423195, 29.586351, 34.586208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548752, 29.939840, 34.725063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295965, -0.438472, 0.848614,
		0.902152, -0.163628, -0.399183,
		0.313888, 0.883724, 0.347141,
		34.642918, 30.204958, 34.829205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093964, 29.512604, 34.944649>,  <34.423195, 29.586351, 34.586208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093964, 29.512604, 34.944649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948586, 29.859182, 35.081573>,  <34.861359, 30.067129, 35.163727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948586, 29.859182, 35.081573>,  <35.093964, 29.512604, 34.944649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948586, 29.859182, 35.081573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313232, -0.232398, 0.920802,
		0.877378, 0.441886, -0.186934,
		-0.363446, 0.866446, 0.342313,
		34.839550, 30.119116, 35.184269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678963, 29.875608, 35.125908>,  <35.093964, 29.512604, 34.944649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678963, 29.875608, 35.125908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349144, 29.959406, 35.336143>,  <35.151253, 30.009684, 35.462284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349144, 29.959406, 35.336143>,  <35.678963, 29.875608, 35.125908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349144, 29.959406, 35.336143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491540, -0.194816, 0.848785,
		0.280208, 0.958206, 0.057659,
		-0.824544, 0.209494, 0.525586,
		35.101780, 30.022255, 35.493820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929871, 30.111143, 35.700390>,  <35.678963, 29.875608, 35.125908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929871, 30.111143, 35.700390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547428, 30.083752, 35.814350>,  <35.317963, 30.067316, 35.882725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547428, 30.083752, 35.814350>,  <35.929871, 30.111143, 35.700390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547428, 30.083752, 35.814350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288950, -0.059023, 0.955523,
		-0.048619, 0.995905, 0.076220,
		-0.956109, -0.068480, 0.284897,
		35.260597, 30.063208, 35.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891754, 30.528162, 36.244038>,  <35.929871, 30.111143, 35.700390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891754, 30.528162, 36.244038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583534, 30.273973, 36.263760>,  <35.398602, 30.121460, 36.275593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583534, 30.273973, 36.263760>,  <35.891754, 30.528162, 36.244038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583534, 30.273973, 36.263760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181708, -0.144871, 0.972622,
		-0.610931, 0.758412, 0.227100,
		-0.770549, -0.635471, 0.049303,
		35.352371, 30.083332, 36.278549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699657, 30.601458, 36.906963>,  <35.891754, 30.528162, 36.244038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699657, 30.601458, 36.906963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484779, 30.273523, 36.827675>,  <35.355854, 30.076763, 36.780102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484779, 30.273523, 36.827675>,  <35.699657, 30.601458, 36.906963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484779, 30.273523, 36.827675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050338, -0.265751, 0.962727,
		-0.841955, 0.507194, 0.184029,
		-0.537195, -0.819836, -0.198220,
		35.323620, 30.027573, 36.768208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206631, 30.691071, 37.399754>,  <35.699657, 30.601458, 36.906963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206631, 30.691071, 37.399754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257160, 30.307402, 37.298534>,  <35.287479, 30.077200, 37.237804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257160, 30.307402, 37.298534>,  <35.206631, 30.691071, 37.399754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257160, 30.307402, 37.298534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034262, -0.250718, 0.967454,
		-0.991397, -0.130884, 0.001191,
		0.126325, -0.959172, -0.253045,
		35.295059, 30.019650, 37.222622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869358, 30.284781, 37.886841>,  <35.206631, 30.691071, 37.399754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869358, 30.284781, 37.886841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146927, 30.038279, 37.737869>,  <35.313469, 29.890377, 37.648487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146927, 30.038279, 37.737869>,  <34.869358, 30.284781, 37.886841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146927, 30.038279, 37.737869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225463, -0.305261, 0.925193,
		-0.683846, -0.725977, -0.072883,
		0.693917, -0.616257, -0.372432,
		35.355103, 29.853401, 37.626141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830448, 29.727625, 38.361809>,  <34.869358, 30.284781, 37.886841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830448, 29.727625, 38.361809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181534, 29.656727, 38.183731>,  <35.392185, 29.614187, 38.076885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181534, 29.656727, 38.183731>,  <34.830448, 29.727625, 38.361809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181534, 29.656727, 38.183731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346306, -0.407495, 0.844997,
		-0.331187, -0.895841, -0.296283,
		0.877717, -0.177248, -0.445192,
		35.444847, 29.603552, 38.050175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123684, 29.010849, 38.468235>,  <34.830448, 29.727625, 38.361809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123684, 29.010849, 38.468235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457916, 29.210535, 38.376507>,  <35.658455, 29.330347, 38.321468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457916, 29.210535, 38.376507>,  <35.123684, 29.010849, 38.468235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457916, 29.210535, 38.376507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361072, -0.184446, 0.914115,
		0.414044, -0.846618, -0.334373,
		0.835580, 0.499217, -0.229321,
		35.708591, 29.360300, 38.307709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595947, 28.533957, 38.653316>,  <35.123684, 29.010849, 38.468235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595947, 28.533957, 38.653316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784111, 28.886152, 38.629826>,  <35.897011, 29.097469, 38.615730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784111, 28.886152, 38.629826>,  <35.595947, 28.533957, 38.653316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784111, 28.886152, 38.629826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507541, -0.215514, 0.834240,
		0.721884, -0.422242, -0.548265,
		0.470410, 0.880492, -0.058729,
		35.925236, 29.150299, 38.612206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276516, 28.366396, 38.667412>,  <35.595947, 28.533957, 38.653316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276516, 28.366396, 38.667412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212727, 28.736109, 38.806133>,  <36.174454, 28.957937, 38.889366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212727, 28.736109, 38.806133>,  <36.276516, 28.366396, 38.667412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212727, 28.736109, 38.806133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562451, -0.203636, 0.801362,
		0.811306, 0.322853, -0.487390,
		-0.159472, 0.924282, 0.346801,
		36.164886, 29.013393, 38.910175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839821, 28.562386, 39.062763>,  <36.276516, 28.366396, 38.667412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839821, 28.562386, 39.062763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578285, 28.847410, 39.164547>,  <36.421364, 29.018425, 39.225616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578285, 28.847410, 39.164547>,  <36.839821, 28.562386, 39.062763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578285, 28.847410, 39.164547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385590, 0.024440, 0.922346,
		0.651008, 0.701185, -0.290736,
		-0.653841, 0.712560, 0.254460,
		36.382133, 29.061178, 39.240887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254395, 29.011261, 39.520626>,  <36.839821, 28.562386, 39.062763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254395, 29.011261, 39.520626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869820, 29.096586, 39.590069>,  <36.639076, 29.147781, 39.631733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869820, 29.096586, 39.590069>,  <37.254395, 29.011261, 39.520626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869820, 29.096586, 39.590069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180789, 0.014488, 0.983415,
		0.207260, 0.976876, -0.052494,
		-0.961436, 0.213313, 0.173606,
		36.581390, 29.160580, 39.642151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270115, 29.462538, 40.099686>,  <37.254395, 29.011261, 39.520626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270115, 29.462538, 40.099686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897366, 29.317726, 40.090370>,  <36.673714, 29.230839, 40.084782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897366, 29.317726, 40.090370>,  <37.270115, 29.462538, 40.099686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897366, 29.317726, 40.090370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031923, -0.145784, 0.988801,
		-0.361371, 0.920696, 0.147409,
		-0.931876, -0.362030, -0.023291,
		36.617802, 29.209118, 40.083382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912071, 29.770836, 40.645920>,  <37.270115, 29.462538, 40.099686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912071, 29.770836, 40.645920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712662, 29.430670, 40.578667>,  <36.593018, 29.226570, 40.538315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712662, 29.430670, 40.578667>,  <36.912071, 29.770836, 40.645920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712662, 29.430670, 40.578667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035243, -0.173905, 0.984132,
		-0.866160, 0.496537, 0.056724,
		-0.498522, -0.850417, -0.168129,
		36.563107, 29.175545, 40.528229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312412, 29.767899, 41.126404>,  <36.912071, 29.770836, 40.645920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312412, 29.767899, 41.126404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365677, 29.394211, 40.994041>,  <36.397636, 29.169998, 40.914623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365677, 29.394211, 40.994041>,  <36.312412, 29.767899, 41.126404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365677, 29.394211, 40.994041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112190, -0.345943, 0.931524,
		-0.984724, -0.086919, -0.150876,
		0.133161, -0.934221, -0.330907,
		36.405624, 29.113945, 40.894768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830448, 29.420736, 41.435089>,  <36.312412, 29.767899, 41.126404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830448, 29.420736, 41.435089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122147, 29.155972, 41.365719>,  <36.297165, 28.997112, 41.324097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122147, 29.155972, 41.365719>,  <35.830448, 29.420736, 41.435089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122147, 29.155972, 41.365719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003632, -0.257187, 0.966355,
		-0.684243, -0.704080, -0.189956,
		0.729245, -0.661911, -0.173421,
		36.340919, 28.957397, 41.313694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672626, 29.004051, 41.987530>,  <35.830448, 29.420736, 41.435089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672626, 29.004051, 41.987530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032299, 28.894287, 41.851196>,  <36.248104, 28.828428, 41.769398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032299, 28.894287, 41.851196>,  <35.672626, 29.004051, 41.987530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032299, 28.894287, 41.851196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242737, -0.335264, 0.910317,
		-0.364075, -0.901273, -0.234852,
		0.899182, -0.274416, -0.340834,
		36.302055, 28.811964, 41.748947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758343, 28.478746, 42.296970>,  <35.672626, 29.004051, 41.987530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758343, 28.478746, 42.296970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137390, 28.559500, 42.197964>,  <36.364819, 28.607952, 42.138561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137390, 28.559500, 42.197964>,  <35.758343, 28.478746, 42.296970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137390, 28.559500, 42.197964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307218, -0.364045, 0.879255,
		0.087401, -0.909238, -0.406998,
		0.947618, 0.201885, -0.247516,
		36.421677, 28.620066, 42.123711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179058, 27.852449, 42.308575>,  <35.758343, 28.478746, 42.296970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179058, 27.852449, 42.308575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425053, 28.162777, 42.364994>,  <36.572651, 28.348974, 42.398846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425053, 28.162777, 42.364994>,  <36.179058, 27.852449, 42.308575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425053, 28.162777, 42.364994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402118, -0.462427, 0.790229,
		0.678301, -0.429261, -0.596358,
		0.614987, 0.775819, 0.141051,
		36.609550, 28.395523, 42.407310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894825, 27.558172, 42.544907>,  <36.179058, 27.852449, 42.308575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894825, 27.558172, 42.544907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858353, 27.937973, 42.664993>,  <36.836472, 28.165854, 42.737045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858353, 27.937973, 42.664993>,  <36.894825, 27.558172, 42.544907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858353, 27.937973, 42.664993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363621, -0.248910, 0.897677,
		0.927074, 0.191014, -0.322564,
		-0.091179, 0.949504, 0.300215,
		36.830997, 28.222824, 42.755058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487362, 27.624243, 43.045128>,  <36.894825, 27.558172, 42.544907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487362, 27.624243, 43.045128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264122, 27.952862, 43.091751>,  <37.130177, 28.150034, 43.119724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264122, 27.952862, 43.091751>,  <37.487362, 27.624243, 43.045128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264122, 27.952862, 43.091751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248685, 0.031598, 0.968069,
		0.791632, 0.569264, -0.221941,
		-0.558100, 0.821547, 0.116554,
		37.096691, 28.199326, 43.126717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907566, 28.114326, 43.342278>,  <37.487362, 27.624243, 43.045128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907566, 28.114326, 43.342278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530987, 28.200663, 43.445885>,  <37.305038, 28.252464, 43.508049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530987, 28.200663, 43.445885>,  <37.907566, 28.114326, 43.342278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530987, 28.200663, 43.445885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283436, 0.090605, 0.954701,
		0.182594, 0.972216, -0.146477,
		-0.941448, 0.215839, 0.259017,
		37.248554, 28.265415, 43.523590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051918, 28.531960, 43.790325>,  <37.907566, 28.114326, 43.342278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051918, 28.531960, 43.790325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688271, 28.417278, 43.911186>,  <37.470081, 28.348469, 43.983704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688271, 28.417278, 43.911186>,  <38.051918, 28.531960, 43.790325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688271, 28.417278, 43.911186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264829, 0.162046, 0.950582,
		-0.321499, 0.944215, -0.071392,
		-0.909122, -0.286705, 0.302153,
		37.415535, 28.331266, 44.001831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926506, 28.894087, 44.345802>,  <38.051918, 28.531960, 43.790325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926506, 28.894087, 44.345802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640179, 28.618523, 44.391411>,  <37.468380, 28.453184, 44.418777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640179, 28.618523, 44.391411>,  <37.926506, 28.894087, 44.345802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640179, 28.618523, 44.391411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050667, 0.111619, 0.992459,
		-0.696441, 0.716202, -0.044995,
		-0.715823, -0.688909, 0.114024,
		37.425430, 28.411850, 44.425617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433060, 29.117607, 44.893635>,  <37.926506, 28.894087, 44.345802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433060, 29.117607, 44.893635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384773, 28.720741, 44.880749>,  <37.355801, 28.482622, 44.873016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384773, 28.720741, 44.880749>,  <37.433060, 29.117607, 44.893635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384773, 28.720741, 44.880749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108326, -0.045422, 0.993077,
		-0.986759, 0.116388, 0.112960,
		-0.120714, -0.992164, -0.032213,
		37.348560, 28.423092, 44.871086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053886, 29.026619, 45.394707>,  <37.433060, 29.117607, 44.893635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053886, 29.026619, 45.394707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226826, 28.670736, 45.336052>,  <37.330589, 28.457207, 45.300861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226826, 28.670736, 45.336052>,  <37.053886, 29.026619, 45.394707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226826, 28.670736, 45.336052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201852, -0.062998, 0.977388,
		-0.878824, -0.452170, 0.152352,
		0.432347, -0.889704, -0.146635,
		37.356529, 28.403826, 45.292061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822464, 28.551386, 46.046124>,  <37.053886, 29.026619, 45.394707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822464, 28.551386, 46.046124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135117, 28.386087, 45.859245>,  <37.322708, 28.286909, 45.747116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135117, 28.386087, 45.859245>,  <36.822464, 28.551386, 46.046124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135117, 28.386087, 45.859245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388584, -0.263291, 0.882995,
		-0.487904, -0.871726, -0.045216,
		0.781634, -0.413246, -0.467199,
		37.369606, 28.262114, 45.719086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937111, 27.910755, 46.418861>,  <36.822464, 28.551386, 46.046124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937111, 27.910755, 46.418861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274788, 27.980103, 46.215973>,  <37.477394, 28.021711, 46.094238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274788, 27.980103, 46.215973>,  <36.937111, 27.910755, 46.418861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274788, 27.980103, 46.215973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535088, -0.216329, 0.816629,
		0.031849, -0.960805, -0.275391,
		0.844196, 0.173367, -0.507225,
		37.528046, 28.032112, 46.063805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340954, 27.373770, 46.571625>,  <36.937111, 27.910755, 46.418861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340954, 27.373770, 46.571625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567551, 27.678587, 46.446167>,  <37.703510, 27.861477, 46.370892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567551, 27.678587, 46.446167>,  <37.340954, 27.373770, 46.571625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567551, 27.678587, 46.446167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602991, -0.123901, 0.788068,
		0.561680, -0.635563, -0.529693,
		0.566496, 0.762042, -0.313646,
		37.737499, 27.907200, 46.352074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956951, 27.076811, 46.517948>,  <37.340954, 27.373770, 46.571625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956951, 27.076811, 46.517948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012539, 27.468142, 46.579350>,  <38.045891, 27.702940, 46.616188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012539, 27.468142, 46.579350>,  <37.956951, 27.076811, 46.517948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012539, 27.468142, 46.579350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558958, -0.205447, 0.803342,
		0.817467, -0.025842, -0.575395,
		0.138973, 0.978327, 0.153502,
		38.054230, 27.761641, 46.625401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592602, 27.025913, 46.760345>,  <37.956951, 27.076811, 46.517948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592602, 27.025913, 46.760345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494015, 27.406031, 46.836449>,  <38.434860, 27.634100, 46.882111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494015, 27.406031, 46.836449>,  <38.592602, 27.025913, 46.760345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494015, 27.406031, 46.836449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580877, -0.012291, 0.813899,
		0.775781, 0.311116, -0.548973,
		-0.246469, 0.950293, 0.190255,
		38.420074, 27.691118, 46.893524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228615, 27.371584, 46.946304>,  <38.592602, 27.025913, 46.760345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228615, 27.371584, 46.946304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926842, 27.575207, 47.112049>,  <38.745777, 27.697380, 47.211494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926842, 27.575207, 47.112049>,  <39.228615, 27.371584, 46.946304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926842, 27.575207, 47.112049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545575, 0.135349, 0.827060,
		0.364936, 0.850026, -0.379839,
		-0.754433, 0.509055, 0.414359,
		38.700512, 27.727922, 47.236359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470459, 27.942507, 47.269608>,  <39.228615, 27.371584, 46.946304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470459, 27.942507, 47.269608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121140, 27.903524, 47.460541>,  <38.911549, 27.880135, 47.575100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121140, 27.903524, 47.460541>,  <39.470459, 27.942507, 47.269608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121140, 27.903524, 47.460541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463258, 0.137152, 0.875546,
		-0.150793, 0.985744, -0.074628,
		-0.873301, -0.097454, 0.477335,
		38.859150, 27.874289, 47.603741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306522, 28.557604, 47.605404>,  <39.470459, 27.942507, 47.269608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306522, 28.557604, 47.605404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126709, 28.258232, 47.800453>,  <39.018822, 28.078609, 47.917484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126709, 28.258232, 47.800453>,  <39.306522, 28.557604, 47.605404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126709, 28.258232, 47.800453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463681, 0.271077, 0.843515,
		-0.763494, 0.605288, 0.225174,
		-0.449531, -0.748427, 0.487626,
		38.991848, 28.033705, 47.946739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415020, 29.069864, 48.139648>,  <39.306522, 28.557604, 47.605404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415020, 29.069864, 48.139648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740799, 29.298313, 48.098675>,  <39.936268, 29.435383, 48.074093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740799, 29.298313, 48.098675>,  <39.415020, 29.069864, 48.139648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740799, 29.298313, 48.098675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481289, 0.566347, -0.669038,
		-0.324092, 0.594196, 0.736135,
		0.814448, 0.571124, -0.102431,
		39.985134, 29.469650, 48.067944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069546, 29.622448, 47.871811>,  <39.415020, 29.069864, 48.139648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069546, 29.622448, 47.871811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459812, 29.672873, 47.800056>,  <39.693974, 29.703127, 47.757004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459812, 29.672873, 47.800056>,  <39.069546, 29.622448, 47.871811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459812, 29.672873, 47.800056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218257, 0.636216, -0.739996,
		0.020840, 0.761142, 0.648250,
		0.975669, 0.126064, -0.179383,
		39.752514, 29.710691, 47.746243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062187, 30.298002, 47.868019>,  <39.069546, 29.622448, 47.871811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062187, 30.298002, 47.868019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356487, 30.147486, 47.642780>,  <39.533066, 30.057177, 47.507637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356487, 30.147486, 47.642780>,  <39.062187, 30.298002, 47.868019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356487, 30.147486, 47.642780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443632, 0.360453, -0.820527,
		0.511725, 0.853510, 0.098269,
		0.735750, -0.376289, -0.563097,
		39.577213, 30.034599, 47.473850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075668, 30.797876, 47.287281>,  <39.062187, 30.298002, 47.868019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075668, 30.797876, 47.287281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328339, 30.507744, 47.177826>,  <39.479942, 30.333664, 47.112152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328339, 30.507744, 47.177826>,  <39.075668, 30.797876, 47.287281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328339, 30.507744, 47.177826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148099, 0.233566, -0.960996,
		0.760953, 0.647566, 0.040118,
		0.631678, -0.725332, -0.273637,
		39.517841, 30.290144, 47.095734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621876, 31.125498, 46.931721>,  <39.075668, 30.797876, 47.287281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621876, 31.125498, 46.931721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543686, 30.747076, 46.828362>,  <39.496773, 30.520023, 46.766346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543686, 30.747076, 46.828362>,  <39.621876, 31.125498, 46.931721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543686, 30.747076, 46.828362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223170, 0.299479, -0.927636,
		0.954980, -0.123659, -0.269670,
		-0.195471, -0.946056, -0.258399,
		39.485046, 30.463259, 46.750843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949528, 31.037151, 46.334194>,  <39.621876, 31.125498, 46.931721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949528, 31.037151, 46.334194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661400, 30.759706, 46.331486>,  <39.488525, 30.593239, 46.329861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661400, 30.759706, 46.331486>,  <39.949528, 31.037151, 46.334194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661400, 30.759706, 46.331486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218151, 0.235799, -0.947000,
		0.658448, -0.680662, -0.321162,
		-0.720317, -0.693613, -0.006774,
		39.445305, 30.551622, 46.329453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919765, 30.863846, 45.581863>,  <39.949528, 31.037151, 46.334194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919765, 30.863846, 45.581863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595272, 30.685585, 45.733280>,  <39.400578, 30.578629, 45.824131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595272, 30.685585, 45.733280>,  <39.919765, 30.863846, 45.581863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595272, 30.685585, 45.733280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503211, 0.202393, -0.840129,
		0.297788, -0.872029, -0.388444,
		-0.811235, -0.445649, 0.378544,
		39.351902, 30.551889, 45.846844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854568, 30.225731, 45.171551>,  <39.919765, 30.863846, 45.581863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854568, 30.225731, 45.171551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516216, 30.347757, 45.346561>,  <39.313206, 30.420973, 45.451569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516216, 30.347757, 45.346561>,  <39.854568, 30.225731, 45.171551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516216, 30.347757, 45.346561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345682, 0.311143, -0.885265,
		-0.406197, -0.900069, -0.157733,
		-0.845877, 0.305066, 0.437523,
		39.262451, 30.439278, 45.477818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411957, 29.854748, 44.920830>,  <39.854568, 30.225731, 45.171551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411957, 29.854748, 44.920830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163620, 30.150681, 45.024521>,  <39.014618, 30.328241, 45.086735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163620, 30.150681, 45.024521>,  <39.411957, 29.854748, 44.920830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163620, 30.150681, 45.024521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186773, 0.181552, -0.965482,
		-0.761358, -0.647832, 0.025465,
		-0.620847, 0.739833, 0.259223,
		38.977367, 30.372631, 45.102287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704704, 29.767195, 44.514568>,  <39.411957, 29.854748, 44.920830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704704, 29.767195, 44.514568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715321, 30.146269, 44.641808>,  <38.721691, 30.373713, 44.718151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715321, 30.146269, 44.641808>,  <38.704704, 29.767195, 44.514568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715321, 30.146269, 44.641808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139252, 0.318614, -0.937600,
		-0.989901, -0.019415, 0.140422,
		0.026537, 0.947686, 0.318100,
		38.723282, 30.430574, 44.737236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101730, 30.071791, 44.341625>,  <38.704704, 29.767195, 44.514568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101730, 30.071791, 44.341625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344158, 30.385054, 44.397259>,  <38.489616, 30.573011, 44.430641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344158, 30.385054, 44.397259>,  <38.101730, 30.071791, 44.341625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344158, 30.385054, 44.397259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276743, 0.371555, -0.886206,
		-0.745716, 0.498612, 0.441921,
		0.606070, 0.783156, 0.139087,
		38.525978, 30.620001, 44.438984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691780, 30.571180, 44.166515>,  <38.101730, 30.071791, 44.341625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691780, 30.571180, 44.166515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060425, 30.726061, 44.177101>,  <38.281612, 30.818989, 44.183453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060425, 30.726061, 44.177101>,  <37.691780, 30.571180, 44.166515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060425, 30.726061, 44.177101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091828, 0.283815, -0.954472,
		-0.377083, 0.877226, 0.297124,
		0.921616, 0.387200, 0.026468,
		38.336910, 30.842220, 44.185043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558128, 31.245415, 43.966587>,  <37.691780, 30.571180, 44.166515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558128, 31.245415, 43.966587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941921, 31.149662, 43.907135>,  <38.172195, 31.092209, 43.871464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941921, 31.149662, 43.907135>,  <37.558128, 31.245415, 43.966587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941921, 31.149662, 43.907135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042226, 0.399373, -0.915816,
		0.278591, 0.884984, 0.373083,
		0.959481, -0.239384, -0.148631,
		38.229767, 31.077847, 43.862545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992332, 31.768753, 43.734928>,  <37.558128, 31.245415, 43.966587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992332, 31.768753, 43.734928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168640, 31.430889, 43.613426>,  <38.274426, 31.228170, 43.540524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168640, 31.430889, 43.613426>,  <37.992332, 31.768753, 43.734928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168640, 31.430889, 43.613426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052288, 0.361992, -0.930714,
		0.896096, 0.394348, 0.203721,
		0.440770, -0.844661, -0.303760,
		38.300873, 31.177490, 43.522297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253067, 31.998457, 43.223095>,  <37.992332, 31.768753, 43.734928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253067, 31.998457, 43.223095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296410, 31.609941, 43.138374>,  <38.322414, 31.376833, 43.087540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296410, 31.609941, 43.138374>,  <38.253067, 31.998457, 43.223095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296410, 31.609941, 43.138374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053727, 0.218468, -0.974364,
		0.992660, 0.094196, 0.075856,
		0.108353, -0.971287, -0.211803,
		38.328915, 31.318556, 43.074833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524445, 32.000404, 42.574718>,  <38.253067, 31.998457, 43.223095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524445, 32.000404, 42.574718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406487, 31.618433, 42.588226>,  <38.335712, 31.389250, 42.596329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406487, 31.618433, 42.588226>,  <38.524445, 32.000404, 42.574718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406487, 31.618433, 42.588226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098336, -0.065479, -0.992997,
		0.950455, -0.289513, 0.113214,
		-0.294898, -0.954932, 0.033765,
		38.318016, 31.331953, 42.598354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947430, 31.678278, 42.118649>,  <38.524445, 32.000404, 42.574718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947430, 31.678278, 42.118649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615185, 31.458179, 42.152851>,  <38.415836, 31.326120, 42.173370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615185, 31.458179, 42.152851>,  <38.947430, 31.678278, 42.118649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615185, 31.458179, 42.152851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108709, 0.009640, -0.994027,
		0.546134, -0.834947, -0.067824,
		-0.830614, -0.550245, 0.085502,
		38.366001, 31.293106, 42.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044464, 31.010479, 41.791691>,  <38.947430, 31.678278, 42.118649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044464, 31.010479, 41.791691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645988, 31.042915, 41.778801>,  <38.406902, 31.062378, 41.771069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645988, 31.042915, 41.778801>,  <39.044464, 31.010479, 41.791691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645988, 31.042915, 41.778801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015847, -0.195032, -0.980669,
		-0.085804, -0.977440, 0.193003,
		-0.996186, 0.081087, -0.032224,
		38.347134, 31.067242, 41.769135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864014, 30.644333, 41.213257>,  <39.044464, 31.010479, 41.791691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864014, 30.644333, 41.213257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504944, 30.800112, 41.295734>,  <38.289501, 30.893579, 41.345222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504944, 30.800112, 41.295734>,  <38.864014, 30.644333, 41.213257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504944, 30.800112, 41.295734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296500, -0.187642, -0.936418,
		-0.325997, -0.901732, 0.283913,
		-0.897671, 0.389449, 0.206193,
		38.235641, 30.916946, 41.357594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369484, 30.216700, 40.950214>,  <38.864014, 30.644333, 41.213257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369484, 30.216700, 40.950214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196869, 30.575474, 40.988743>,  <38.093300, 30.790739, 41.011860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196869, 30.575474, 40.988743>,  <38.369484, 30.216700, 40.950214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196869, 30.575474, 40.988743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490276, -0.143567, -0.859662,
		-0.757233, -0.418202, 0.501701,
		-0.431540, 0.896937, 0.096321,
		38.067406, 30.844555, 41.017639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627991, 30.114979, 40.690952>,  <38.369484, 30.216700, 40.950214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627991, 30.114979, 40.690952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720879, 30.503937, 40.700130>,  <37.776611, 30.737310, 40.705635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720879, 30.503937, 40.700130>,  <37.627991, 30.114979, 40.690952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720879, 30.503937, 40.700130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491835, 0.137740, -0.859724,
		-0.839150, 0.188362, 0.510243,
		0.232221, 0.972393, 0.022942,
		37.790546, 30.795654, 40.707012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038883, 30.487703, 40.504669>,  <37.627991, 30.114979, 40.690952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038883, 30.487703, 40.504669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325932, 30.754089, 40.423180>,  <37.498161, 30.913921, 40.374287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325932, 30.754089, 40.423180>,  <37.038883, 30.487703, 40.504669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325932, 30.754089, 40.423180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496481, 0.284065, -0.820252,
		-0.488388, 0.689779, 0.534492,
		0.717624, 0.665966, -0.203728,
		37.541218, 30.953878, 40.362061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699310, 31.119986, 40.330757>,  <37.038883, 30.487703, 40.504669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699310, 31.119986, 40.330757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071304, 31.123676, 40.183769>,  <37.294502, 31.125891, 40.095577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071304, 31.123676, 40.183769>,  <36.699310, 31.119986, 40.330757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071304, 31.123676, 40.183769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356184, 0.269708, -0.894645,
		0.090855, 0.962898, 0.254112,
		0.929988, 0.009227, -0.367473,
		37.350300, 31.126444, 40.073528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539154, 31.473129, 39.633976>,  <36.699310, 31.119986, 40.330757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539154, 31.473129, 39.633976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930016, 31.390385, 39.614494>,  <37.164532, 31.340738, 39.602806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930016, 31.390385, 39.614494>,  <36.539154, 31.473129, 39.633976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930016, 31.390385, 39.614494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003721, 0.212487, -0.977157,
		0.212487, 0.955017, 0.206863,
		0.977157, -0.206863, -0.048704,
		37.223164, 31.328325, 39.599884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950344, 32.079208, 39.336647>,  <36.539154, 31.473129, 39.633976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950344, 32.079208, 39.336647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179180, 31.759535, 39.262871>,  <37.316483, 31.567732, 39.218605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179180, 31.759535, 39.262871>,  <36.950344, 32.079208, 39.336647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179180, 31.759535, 39.262871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054721, 0.261565, -0.963634,
		0.818362, 0.541194, 0.193371,
		0.572092, -0.799183, -0.184440,
		37.350807, 31.519779, 39.207539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602417, 32.282661, 39.071007>,  <36.950344, 32.079208, 39.336647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602417, 32.282661, 39.071007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581928, 31.903376, 38.945621>,  <37.569637, 31.675802, 38.870392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581928, 31.903376, 38.945621>,  <37.602417, 32.282661, 39.071007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581928, 31.903376, 38.945621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284902, 0.286956, -0.914597,
		0.957187, -0.136150, 0.255452,
		-0.051219, -0.948219, -0.313459,
		37.566563, 31.618910, 38.851585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214832, 32.213455, 38.674305>,  <37.602417, 32.282661, 39.071007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214832, 32.213455, 38.674305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987381, 31.896898, 38.584549>,  <37.850910, 31.706963, 38.530697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987381, 31.896898, 38.584549>,  <38.214832, 32.213455, 38.674305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987381, 31.896898, 38.584549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179033, 0.147178, -0.972772,
		0.802873, -0.593322, 0.057996,
		-0.568632, -0.791396, -0.224389,
		37.816792, 31.659479, 38.517231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647327, 31.757843, 38.244175>,  <38.214832, 32.213455, 38.674305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647327, 31.757843, 38.244175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263927, 31.687229, 38.154636>,  <38.033886, 31.644861, 38.100914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263927, 31.687229, 38.154636>,  <38.647327, 31.757843, 38.244175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263927, 31.687229, 38.154636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228575, -0.006679, -0.973503,
		0.170365, -0.984271, 0.046754,
		-0.958504, -0.176538, -0.223842,
		37.976376, 31.634268, 38.087482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775719, 31.296074, 37.740772>,  <38.647327, 31.757843, 38.244175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775719, 31.296074, 37.740772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401119, 31.422606, 37.680222>,  <38.176361, 31.498524, 37.643890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401119, 31.422606, 37.680222>,  <38.775719, 31.296074, 37.740772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401119, 31.422606, 37.680222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234244, 0.243034, -0.941310,
		-0.260973, -0.916990, -0.301698,
		-0.936495, 0.316328, -0.151374,
		38.120171, 31.517504, 37.634808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486412, 30.957720, 37.123852>,  <38.775719, 31.296074, 37.740772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486412, 30.957720, 37.123852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241291, 31.272442, 37.153282>,  <38.094219, 31.461275, 37.170940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241291, 31.272442, 37.153282>,  <38.486412, 30.957720, 37.123852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241291, 31.272442, 37.153282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264129, 0.291679, -0.919326,
		-0.744790, -0.543930, -0.386559,
		-0.612800, 0.786806, 0.073572,
		38.057449, 31.508484, 37.175354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217651, 31.009684, 36.485828>,  <38.486412, 30.957720, 37.123852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217651, 31.009684, 36.485828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111649, 31.360287, 36.646580>,  <38.048046, 31.570648, 36.743031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111649, 31.360287, 36.646580>,  <38.217651, 31.009684, 36.485828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111649, 31.360287, 36.646580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167510, 0.452294, -0.875997,
		-0.949585, -0.164826, -0.266685,
		-0.265007, 0.876506, 0.401882,
		38.032146, 31.623238, 36.767143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679691, 31.301565, 36.011810>,  <38.217651, 31.009684, 36.485828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679691, 31.301565, 36.011810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807743, 31.630301, 36.200317>,  <37.884575, 31.827541, 36.313423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807743, 31.630301, 36.200317>,  <37.679691, 31.301565, 36.011810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807743, 31.630301, 36.200317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203246, 0.426288, -0.881459,
		-0.925314, 0.377968, -0.030566,
		0.320134, 0.821838, 0.471271,
		37.903782, 31.876852, 36.341698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436718, 31.847984, 35.563637>,  <37.679691, 31.301565, 36.011810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436718, 31.847984, 35.563637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741535, 32.006451, 35.768517>,  <37.924423, 32.101528, 35.891445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741535, 32.006451, 35.768517>,  <37.436718, 31.847984, 35.563637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741535, 32.006451, 35.768517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187583, 0.622031, -0.760191,
		-0.619766, 0.675376, 0.399698,
		0.762039, 0.396163, 0.512203,
		37.970146, 32.125301, 35.922176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393520, 32.512917, 35.478062>,  <37.436718, 31.847984, 35.563637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393520, 32.512917, 35.478062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780964, 32.456432, 35.559902>,  <38.013428, 32.422543, 35.609005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780964, 32.456432, 35.559902>,  <37.393520, 32.512917, 35.478062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780964, 32.456432, 35.559902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248042, 0.603986, -0.757414,
		-0.016621, 0.784385, 0.620051,
		0.968607, -0.141210, 0.204599,
		38.071545, 32.414070, 35.621281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683109, 33.197948, 35.576286>,  <37.393520, 32.512917, 35.478062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683109, 33.197948, 35.576286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984890, 32.950867, 35.487518>,  <38.165958, 32.802620, 35.434258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984890, 32.950867, 35.487518>,  <37.683109, 33.197948, 35.576286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984890, 32.950867, 35.487518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275701, 0.605074, -0.746910,
		0.595645, 0.502324, 0.626800,
		0.754451, -0.617702, -0.221918,
		38.211224, 32.765556, 35.420944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167343, 33.718208, 35.347195>,  <37.683109, 33.197948, 35.576286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167343, 33.718208, 35.347195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357201, 33.373589, 35.275146>,  <38.471115, 33.166817, 35.231918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357201, 33.373589, 35.275146>,  <38.167343, 33.718208, 35.347195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357201, 33.373589, 35.275146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647676, 0.480444, -0.591346,
		0.596014, 0.164015, 0.786045,
		0.474640, -0.861552, -0.180123,
		38.499592, 33.115124, 35.221111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841648, 33.745461, 35.582893>,  <38.167343, 33.718208, 35.347195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841648, 33.745461, 35.582893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839771, 33.467556, 35.295204>,  <38.838646, 33.300812, 35.122593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839771, 33.467556, 35.295204>,  <38.841648, 33.745461, 35.582893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839771, 33.467556, 35.295204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790373, 0.438034, -0.428295,
		0.612608, -0.570462, 0.547070,
		-0.004690, -0.694766, -0.719220,
		38.838364, 33.259125, 35.079437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523766, 33.658962, 35.438595>,  <38.841648, 33.745461, 35.582893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523766, 33.658962, 35.438595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372227, 33.507099, 35.100994>,  <39.281303, 33.415981, 34.898434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372227, 33.507099, 35.100994>,  <39.523766, 33.658962, 35.438595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372227, 33.507099, 35.100994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889909, 0.100885, -0.444841,
		0.254033, -0.919611, 0.299638,
		-0.378851, -0.379655, -0.843998,
		39.258572, 33.393204, 34.847794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925167, 33.180672, 35.290001>,  <39.523766, 33.658962, 35.438595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925167, 33.180672, 35.290001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744308, 33.307499, 34.956524>,  <39.635796, 33.383595, 34.756439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744308, 33.307499, 34.956524>,  <39.925167, 33.180672, 35.290001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744308, 33.307499, 34.956524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877486, 0.325734, -0.352016,
		0.159949, -0.890711, -0.425499,
		-0.452144, 0.317065, -0.833688,
		39.608665, 33.402618, 34.706417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253178, 32.841461, 34.562820>,  <39.925167, 33.180672, 35.290001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253178, 32.841461, 34.562820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048515, 33.174397, 34.477577>,  <39.925716, 33.374157, 34.426430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048515, 33.174397, 34.477577>,  <40.253178, 32.841461, 34.562820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048515, 33.174397, 34.477577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817647, 0.395507, -0.418362,
		-0.263934, -0.388306, -0.882926,
		-0.511656, 0.832342, -0.213109,
		39.895020, 33.424099, 34.413643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540173, 33.104877, 33.974548>,  <40.253178, 32.841461, 34.562820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540173, 33.104877, 33.974548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384987, 33.415947, 34.172424>,  <40.291874, 33.602589, 34.291149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384987, 33.415947, 34.172424>,  <40.540173, 33.104877, 33.974548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384987, 33.415947, 34.172424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814410, 0.540548, -0.211055,
		-0.431533, 0.320996, -0.843055,
		-0.387964, 0.777669, 0.494686,
		40.268597, 33.649246, 34.320831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792423, 33.712135, 33.666096>,  <40.540173, 33.104877, 33.974548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792423, 33.712135, 33.666096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732868, 33.741016, 34.060581>,  <40.697136, 33.758347, 34.297272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732868, 33.741016, 34.060581>,  <40.792423, 33.712135, 33.666096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732868, 33.741016, 34.060581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981075, 0.135639, 0.138179,
		-0.123792, 0.988124, -0.091033,
		-0.148885, 0.072205, 0.986215,
		40.688202, 33.762676, 34.356445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079098, 34.376369, 34.043690>,  <40.792423, 33.712135, 33.666096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079098, 34.376369, 34.043690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062370, 34.083988, 34.316147>,  <41.052334, 33.908558, 34.479622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062370, 34.083988, 34.316147>,  <41.079098, 34.376369, 34.043690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062370, 34.083988, 34.316147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973249, 0.124346, 0.193195,
		-0.225914, 0.671001, 0.706201,
		-0.041820, -0.730956, 0.681143,
		41.049824, 33.864700, 34.520489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344662, 34.537457, 34.827774>,  <41.079098, 34.376369, 34.043690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344662, 34.537457, 34.827774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379597, 34.142704, 34.773460>,  <41.400558, 33.905853, 34.740871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379597, 34.142704, 34.773460>,  <41.344662, 34.537457, 34.827774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379597, 34.142704, 34.773460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931358, 0.032529, 0.362648,
		-0.353473, -0.158139, 0.921981,
		0.087340, -0.986881, -0.135786,
		41.405800, 33.846642, 34.732723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589336, 34.218479, 35.423256>,  <41.344662, 34.537457, 34.827774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589336, 34.218479, 35.423256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694176, 34.021305, 35.091396>,  <41.757080, 33.903000, 34.892281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694176, 34.021305, 35.091396>,  <41.589336, 34.218479, 35.423256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694176, 34.021305, 35.091396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965040, 0.135035, 0.224638,
		0.001298, -0.859521, 0.511099,
		0.262098, -0.492940, -0.829648,
		41.772804, 33.873425, 34.842503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293064, 33.838322, 35.531612>,  <41.589336, 34.218479, 35.423256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293064, 33.838322, 35.531612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232285, 33.938461, 35.149151>,  <42.195816, 33.998543, 34.919674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232285, 33.938461, 35.149151>,  <42.293064, 33.838322, 35.531612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232285, 33.938461, 35.149151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987433, 0.080973, -0.135717,
		0.043447, -0.964764, -0.259505,
		-0.151948, 0.250348, -0.956158,
		42.186699, 34.013565, 34.862305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649673, 33.154556, 35.461002>,  <42.293064, 33.838322, 35.531612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649673, 33.154556, 35.461002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043518, 33.141266, 35.392376>,  <43.279823, 33.133293, 35.351200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043518, 33.141266, 35.392376>,  <42.649673, 33.154556, 35.461002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043518, 33.141266, 35.392376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174733, -0.172939, -0.969309,
		0.002534, 0.984372, -0.176083,
		0.984613, -0.033224, -0.171564,
		43.338902, 33.131298, 35.340908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735493, 33.551567, 34.870697>,  <42.649673, 33.154556, 35.461002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735493, 33.551567, 34.870697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056023, 33.312553, 34.882198>,  <43.248341, 33.169144, 34.889099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056023, 33.312553, 34.882198>,  <42.735493, 33.551567, 34.870697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056023, 33.312553, 34.882198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018999, -0.022625, -0.999563,
		0.597925, 0.801523, -0.006778,
		0.801327, -0.597535, 0.028756,
		43.296421, 33.133293, 34.890823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225231, 33.715691, 34.335926>,  <42.735493, 33.551567, 34.870697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225231, 33.715691, 34.335926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365692, 33.348522, 34.409809>,  <43.449966, 33.128220, 34.454140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365692, 33.348522, 34.409809>,  <43.225231, 33.715691, 34.335926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365692, 33.348522, 34.409809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116801, -0.238676, -0.964049,
		0.929006, 0.316950, -0.191025,
		0.351148, -0.917920, 0.184711,
		43.471035, 33.073147, 34.465221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724438, 33.538761, 33.888149>,  <43.225231, 33.715691, 34.335926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724438, 33.538761, 33.888149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574764, 33.189888, 34.014183>,  <43.484959, 32.980564, 34.089802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574764, 33.189888, 34.014183>,  <43.724438, 33.538761, 33.888149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574764, 33.189888, 34.014183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173262, -0.268029, -0.947703,
		0.911024, -0.409208, -0.050824,
		-0.374185, -0.872186, 0.315081,
		43.462509, 32.928230, 34.108707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982437, 33.088600, 33.517113>,  <43.724438, 33.538761, 33.888149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982437, 33.088600, 33.517113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666256, 32.882549, 33.649673>,  <43.476547, 32.758919, 33.729210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666256, 32.882549, 33.649673>,  <43.982437, 33.088600, 33.517113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666256, 32.882549, 33.649673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294236, -0.155197, -0.943048,
		0.537220, -0.842947, -0.028892,
		-0.790455, -0.515125, 0.331401,
		43.429119, 32.728012, 33.749092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977341, 32.499550, 33.036869>,  <43.982437, 33.088600, 33.517113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977341, 32.499550, 33.036869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619064, 32.523270, 33.213150>,  <43.404099, 32.537502, 33.318920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619064, 32.523270, 33.213150>,  <43.977341, 32.499550, 33.036869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619064, 32.523270, 33.213150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444320, -0.079692, -0.892317,
		-0.017787, -0.995055, 0.097724,
		-0.895692, 0.059292, 0.440705,
		43.350357, 32.541058, 33.345360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602818, 32.072922, 32.702473>,  <43.977341, 32.499550, 33.036869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602818, 32.072922, 32.702473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310738, 32.280682, 32.880024>,  <43.135490, 32.405338, 32.986557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310738, 32.280682, 32.880024>,  <43.602818, 32.072922, 32.702473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310738, 32.280682, 32.880024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549722, -0.060836, -0.833129,
		-0.405724, -0.852363, 0.329949,
		-0.730201, 0.519400, 0.443880,
		43.091679, 32.436501, 33.013187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966942, 31.695953, 32.557598>,  <43.602818, 32.072922, 32.702473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966942, 31.695953, 32.557598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841461, 32.067024, 32.638603>,  <42.766174, 32.289665, 32.687206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841461, 32.067024, 32.638603>,  <42.966942, 31.695953, 32.557598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841461, 32.067024, 32.638603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607296, -0.032069, -0.793828,
		-0.729921, -0.372004, 0.573435,
		-0.313697, 0.927676, 0.202509,
		42.747353, 32.345325, 32.699356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218662, 31.593229, 32.615383>,  <42.966942, 31.695953, 32.557598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218662, 31.593229, 32.615383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311031, 31.973782, 32.533848>,  <42.366451, 32.202114, 32.484928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311031, 31.973782, 32.533848>,  <42.218662, 31.593229, 32.615383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311031, 31.973782, 32.533848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688841, 0.011904, -0.724814,
		-0.687147, 0.307789, 0.658099,
		0.230924, 0.951380, -0.203838,
		42.380310, 32.259197, 32.472694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608261, 31.911654, 32.329548>,  <42.218662, 31.593229, 32.615383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608261, 31.911654, 32.329548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861862, 32.204884, 32.231049>,  <42.014023, 32.380821, 32.171947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861862, 32.204884, 32.231049>,  <41.608261, 31.911654, 32.329548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861862, 32.204884, 32.231049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509337, 0.156230, -0.846267,
		-0.581905, 0.661962, 0.472433,
		0.634005, 0.733075, -0.246250,
		42.052063, 32.424805, 32.157173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260284, 32.517456, 32.061218>,  <41.608261, 31.911654, 32.329548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260284, 32.517456, 32.061218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625874, 32.529160, 31.899328>,  <41.845226, 32.536182, 31.802193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625874, 32.529160, 31.899328>,  <41.260284, 32.517456, 32.061218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625874, 32.529160, 31.899328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405038, 0.126260, -0.905540,
		0.024606, 0.991566, 0.127249,
		0.913969, 0.029258, -0.404729,
		41.900063, 32.537937, 31.777910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199154, 32.858685, 31.434607>,  <41.260284, 32.517456, 32.061218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199154, 32.858685, 31.434607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560272, 32.702053, 31.363468>,  <41.776943, 32.608074, 31.320786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560272, 32.702053, 31.363468>,  <41.199154, 32.858685, 31.434607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560272, 32.702053, 31.363468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204187, -0.026308, -0.978578,
		0.378507, 0.919770, -0.103706,
		0.902795, -0.391575, -0.177848,
		41.831112, 32.584579, 31.310114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428337, 33.278603, 30.919540>,  <41.199154, 32.858685, 31.434607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428337, 33.278603, 30.919540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635036, 32.937195, 30.892796>,  <41.759056, 32.732349, 30.876749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635036, 32.937195, 30.892796>,  <41.428337, 33.278603, 30.919540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635036, 32.937195, 30.892796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223657, -0.059200, -0.972868,
		0.826406, 0.517683, -0.221488,
		0.516749, -0.853522, -0.066860,
		41.790062, 32.681137, 30.872738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872494, 33.316429, 30.274771>,  <41.428337, 33.278603, 30.919540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872494, 33.316429, 30.274771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838814, 32.923923, 30.344080>,  <41.818607, 32.688419, 30.385666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838814, 32.923923, 30.344080>,  <41.872494, 33.316429, 30.274771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838814, 32.923923, 30.344080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169850, -0.157213, -0.972849,
		0.981866, -0.111345, -0.153431,
		-0.084201, -0.981268, 0.173274,
		41.813553, 32.629543, 30.396063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387142, 32.939060, 29.979832>,  <41.872494, 33.316429, 30.274771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387142, 32.939060, 29.979832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079075, 32.685371, 30.006975>,  <41.894234, 32.533157, 30.023262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079075, 32.685371, 30.006975>,  <42.387142, 32.939060, 29.979832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079075, 32.685371, 30.006975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117275, -0.245379, -0.962307,
		0.626964, -0.733183, 0.263361,
		-0.770170, -0.634218, 0.067860,
		41.848022, 32.495106, 30.027332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562771, 32.474964, 29.467140>,  <42.387142, 32.939060, 29.979832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562771, 32.474964, 29.467140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183308, 32.390339, 29.561193>,  <41.955631, 32.339561, 29.617626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183308, 32.390339, 29.561193>,  <42.562771, 32.474964, 29.467140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183308, 32.390339, 29.561193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116049, -0.458731, -0.880965,
		0.294246, -0.863021, 0.410626,
		-0.948658, -0.211568, 0.235133,
		41.898712, 32.326870, 29.631733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491180, 31.708414, 29.423983>,  <42.562771, 32.474964, 29.467140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491180, 31.708414, 29.423983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133736, 31.882757, 29.381104>,  <41.919270, 31.987364, 29.355377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133736, 31.882757, 29.381104>,  <42.491180, 31.708414, 29.423983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133736, 31.882757, 29.381104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171322, -0.551959, -0.816083,
		-0.414864, -0.710894, 0.567907,
		-0.893609, 0.435858, -0.107196,
		41.865654, 32.013515, 29.348944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059666, 31.132235, 29.182842>,  <42.491180, 31.708414, 29.423983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059666, 31.132235, 29.182842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859360, 31.467602, 29.096788>,  <41.739174, 31.668823, 29.045156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859360, 31.467602, 29.096788>,  <42.059666, 31.132235, 29.182842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859360, 31.467602, 29.096788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134529, -0.320909, -0.937507,
		-0.855063, -0.440533, 0.273492,
		-0.500769, 0.838420, -0.215133,
		41.709129, 31.719128, 29.032249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386250, 30.995285, 28.841129>,  <42.059666, 31.132235, 29.182842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386250, 30.995285, 28.841129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506672, 31.359282, 28.727091>,  <41.578926, 31.577679, 28.658669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506672, 31.359282, 28.727091>,  <41.386250, 30.995285, 28.841129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506672, 31.359282, 28.727091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021968, -0.292268, -0.956084,
		-0.953353, 0.294098, -0.067999,
		0.301057, 0.909992, -0.285095,
		41.596989, 31.632278, 28.641562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886803, 31.121197, 28.354265>,  <41.386250, 30.995285, 28.841129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886803, 31.121197, 28.354265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184551, 31.379053, 28.284576>,  <41.363197, 31.533768, 28.242764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184551, 31.379053, 28.284576>,  <40.886803, 31.121197, 28.354265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184551, 31.379053, 28.284576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084872, -0.167455, -0.982220,
		-0.662356, 0.745918, -0.069935,
		0.744367, 0.644643, -0.174222,
		41.407860, 31.572447, 28.232309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614944, 31.521894, 27.808714>,  <40.886803, 31.121197, 28.354265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614944, 31.521894, 27.808714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005753, 31.603903, 27.785374>,  <41.240238, 31.653107, 27.771370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005753, 31.603903, 27.785374>,  <40.614944, 31.521894, 27.808714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005753, 31.603903, 27.785374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048711, -0.051768, -0.997470,
		-0.207521, 0.977388, -0.040591,
		0.977017, 0.205019, -0.058352,
		41.298859, 31.665409, 27.767868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733688, 32.202236, 27.392914>,  <40.614944, 31.521894, 27.808714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733688, 32.202236, 27.392914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059292, 31.969910, 27.390148>,  <41.254654, 31.830515, 27.388489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059292, 31.969910, 27.390148>,  <40.733688, 32.202236, 27.392914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059292, 31.969910, 27.390148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134071, 0.199456, -0.970692,
		0.565169, 0.789224, 0.240228,
		0.814008, -0.580812, -0.006914,
		41.303493, 31.795666, 27.388073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218445, 32.627590, 27.021389>,  <40.733688, 32.202236, 27.392914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218445, 32.627590, 27.021389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272583, 32.232685, 26.987942>,  <41.305065, 31.995741, 26.967873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272583, 32.232685, 26.987942>,  <41.218445, 32.627590, 27.021389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272583, 32.232685, 26.987942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111783, 0.068643, -0.991359,
		0.984473, 0.143520, -0.101069,
		0.135342, -0.987264, -0.083621,
		41.313187, 31.936506, 26.962856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586895, 32.661926, 26.391338>,  <41.218445, 32.627590, 27.021389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586895, 32.661926, 26.391338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414631, 32.316486, 26.496204>,  <41.311272, 32.109222, 26.559124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414631, 32.316486, 26.496204>,  <41.586895, 32.661926, 26.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414631, 32.316486, 26.496204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274122, -0.151595, -0.949672,
		0.859876, -0.480854, -0.171444,
		-0.430663, -0.863596, 0.262166,
		41.285431, 32.057407, 26.574854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922585, 31.957375, 26.025393>,  <41.586895, 32.661926, 26.391338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922585, 31.957375, 26.025393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535263, 32.039375, 26.082458>,  <41.302868, 32.088577, 26.116697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535263, 32.039375, 26.082458>,  <41.922585, 31.957375, 26.025393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535263, 32.039375, 26.082458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161708, -0.079280, -0.983649,
		-0.190340, -0.975545, 0.109918,
		-0.968309, 0.205003, 0.142664,
		41.244770, 32.100876, 26.125257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591152, 31.817434, 26.393936>,  <41.922585, 31.957375, 26.025393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591152, 31.817434, 26.393936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957119, 31.938686, 26.500547>,  <43.176701, 32.011436, 26.564514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957119, 31.938686, 26.500547>,  <42.591152, 31.817434, 26.393936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957119, 31.938686, 26.500547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259634, 0.063625, -0.963609,
		-0.309057, 0.950823, -0.020491,
		0.914917, 0.303131, 0.266529,
		43.231594, 32.029625, 26.580505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781136, 32.508495, 25.975883>,  <42.591152, 31.817434, 26.393936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781136, 32.508495, 25.975883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072884, 32.259125, 26.088566>,  <43.247932, 32.109505, 26.156176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072884, 32.259125, 26.088566>,  <42.781136, 32.508495, 25.975883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072884, 32.259125, 26.088566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474085, 0.163733, -0.865121,
		0.493211, 0.764550, 0.414978,
		0.729374, -0.623422, 0.281707,
		43.291695, 32.072098, 26.173079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445263, 32.752937, 26.018503>,  <42.781136, 32.508495, 25.975883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445263, 32.752937, 26.018503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490963, 32.362183, 25.946236>,  <43.518383, 32.127731, 25.902874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490963, 32.362183, 25.946236>,  <43.445263, 32.752937, 26.018503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490963, 32.362183, 25.946236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612935, 0.212436, -0.761040,
		0.781829, -0.023789, 0.623039,
		0.114251, -0.976885, -0.180670,
		43.525238, 32.069118, 25.892035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243767, 32.650562, 26.001217>,  <43.445263, 32.752937, 26.018503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243767, 32.650562, 26.001217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989925, 32.425674, 25.789104>,  <43.837620, 32.290741, 25.661837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989925, 32.425674, 25.789104>,  <44.243767, 32.650562, 26.001217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989925, 32.425674, 25.789104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619198, 0.040717, -0.784179,
		0.462469, -0.825987, 0.322284,
		-0.634600, -0.562216, -0.530280,
		43.799545, 32.257011, 25.630020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887062, 33.103909, 26.027493>,  <44.243767, 32.650562, 26.001217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887062, 33.103909, 26.027493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283245, 33.058197, 25.996693>,  <45.520954, 33.030769, 25.978212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283245, 33.058197, 25.996693>,  <44.887062, 33.103909, 26.027493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283245, 33.058197, 25.996693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025088, -0.399894, 0.916218,
		-0.135493, -0.909409, -0.393212,
		0.990461, -0.114277, -0.076998,
		45.580383, 33.023914, 25.973593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503094, 32.871506, 26.493219>,  <44.887062, 33.103909, 26.027493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503094, 32.871506, 26.493219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147175, 33.039425, 26.564800>,  <44.933624, 33.140179, 26.607750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147175, 33.039425, 26.564800>,  <45.503094, 32.871506, 26.493219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147175, 33.039425, 26.564800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191909, -0.011567, 0.981345,
		0.414038, 0.907543, -0.070271,
		-0.889800, 0.419800, 0.178955,
		44.880234, 33.165363, 26.618486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667023, 33.355881, 26.911678>,  <45.503094, 32.871506, 26.493219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667023, 33.355881, 26.911678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281902, 33.268154, 26.974829>,  <45.050831, 33.215519, 27.012718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281902, 33.268154, 26.974829>,  <45.667023, 33.355881, 26.911678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281902, 33.268154, 26.974829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159322, 0.011183, 0.987163,
		-0.218264, 0.975591, 0.024174,
		-0.962797, -0.219313, 0.157874,
		44.993065, 33.202362, 27.022190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399757, 33.922558, 27.283712>,  <45.667023, 33.355881, 26.911678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399757, 33.922558, 27.283712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223347, 33.566311, 27.328058>,  <45.117500, 33.352562, 27.354666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223347, 33.566311, 27.328058>,  <45.399757, 33.922558, 27.283712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223347, 33.566311, 27.328058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021140, 0.113183, 0.993349,
		-0.897243, 0.440441, -0.031090,
		-0.441031, -0.890618, 0.110864,
		45.091038, 33.299126, 27.361317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792675, 33.992622, 27.638855>,  <45.399757, 33.922558, 27.283712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792675, 33.992622, 27.638855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911335, 33.615452, 27.699362>,  <44.982533, 33.389149, 27.735666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911335, 33.615452, 27.699362>,  <44.792675, 33.992622, 27.638855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911335, 33.615452, 27.699362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243245, 0.078566, 0.966778,
		-0.923488, -0.323590, -0.206056,
		0.296651, -0.942930, 0.151267,
		45.000332, 33.332573, 27.744741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143372, 33.654053, 28.080015>,  <44.792675, 33.992622, 27.638855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143372, 33.654053, 28.080015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494850, 33.463562, 28.093315>,  <44.705738, 33.349270, 28.101295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494850, 33.463562, 28.093315>,  <44.143372, 33.654053, 28.080015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494850, 33.463562, 28.093315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048581, -0.019914, 0.998621,
		-0.474904, -0.879099, -0.040633,
		0.878696, -0.476223, 0.033250,
		44.758457, 33.320694, 28.103291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069809, 33.159103, 28.606997>,  <44.143372, 33.654053, 28.080015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069809, 33.159103, 28.606997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462910, 33.213127, 28.556477>,  <44.698772, 33.245541, 28.526165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462910, 33.213127, 28.556477>,  <44.069809, 33.159103, 28.606997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462910, 33.213127, 28.556477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133214, -0.043391, 0.990137,
		0.128247, -0.989887, -0.060634,
		0.982755, 0.135060, -0.126302,
		44.757736, 33.253643, 28.518585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440762, 32.605843, 28.983850>,  <44.069809, 33.159103, 28.606997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440762, 32.605843, 28.983850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721886, 32.886475, 28.936769>,  <44.890560, 33.054852, 28.908522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721886, 32.886475, 28.936769>,  <44.440762, 32.605843, 28.983850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721886, 32.886475, 28.936769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394754, -0.246979, 0.884969,
		0.591804, -0.668425, -0.450528,
		0.702806, 0.701577, -0.117701,
		44.932728, 33.096947, 28.901459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012264, 32.321987, 29.319881>,  <44.440762, 32.605843, 28.983850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012264, 32.321987, 29.319881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098289, 32.710968, 29.283911>,  <45.149906, 32.944355, 29.262327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098289, 32.710968, 29.283911>,  <45.012264, 32.321987, 29.319881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098289, 32.710968, 29.283911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487879, -0.027213, 0.872487,
		0.846004, -0.231512, -0.480291,
		0.215062, 0.972451, -0.089928,
		45.162807, 33.002705, 29.256933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672215, 32.421555, 29.578636>,  <45.012264, 32.321987, 29.319881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672215, 32.421555, 29.578636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.524960, 32.792995, 29.597315>,  <45.436607, 33.015858, 29.608522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.524960, 32.792995, 29.597315>,  <45.672215, 32.421555, 29.578636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.524960, 32.792995, 29.597315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431341, 0.126079, 0.893336,
		0.823663, 0.349011, -0.446957,
		-0.368136, 0.928599, 0.046697,
		45.414520, 33.071575, 29.611324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213989, 32.865456, 29.966465>,  <45.672215, 32.421555, 29.578636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213989, 32.865456, 29.966465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881577, 33.086159, 29.994604>,  <45.682129, 33.218582, 30.011488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881577, 33.086159, 29.994604>,  <46.213989, 32.865456, 29.966465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881577, 33.086159, 29.994604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312015, 0.357717, 0.880162,
		0.460474, 0.753391, -0.469431,
		-0.831030, 0.551761, 0.070350,
		45.632267, 33.251686, 30.015709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490307, 33.625450, 30.158653>,  <46.213989, 32.865456, 29.966465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490307, 33.625450, 30.158653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103981, 33.615555, 30.261871>,  <45.872185, 33.609619, 30.323803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103981, 33.615555, 30.261871>,  <46.490307, 33.625450, 30.158653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.103981, 33.615555, 30.261871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241532, 0.275615, 0.930429,
		-0.094135, 0.960950, -0.260220,
		-0.965816, -0.024734, 0.258045,
		45.814236, 33.608135, 30.339285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.594028, 34.122147, 30.617453>,  <46.490307, 33.625450, 30.158653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.594028, 34.122147, 30.617453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235195, 33.958820, 30.684994>,  <46.019894, 33.860825, 30.725517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235195, 33.958820, 30.684994>,  <46.594028, 34.122147, 30.617453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235195, 33.958820, 30.684994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138251, 0.103570, 0.984967,
		-0.419668, 0.906945, -0.036461,
		-0.897087, -0.408319, 0.168851,
		45.966068, 33.836327, 30.735649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121986, 34.478947, 31.252165>,  <46.594028, 34.122147, 30.617453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121986, 34.478947, 31.252165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977203, 34.108044, 31.213833>,  <45.890335, 33.885502, 31.190834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977203, 34.108044, 31.213833>,  <46.121986, 34.478947, 31.252165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977203, 34.108044, 31.213833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067382, -0.076508, 0.994790,
		-0.929757, 0.366527, -0.034788,
		-0.361955, -0.927257, -0.095831,
		45.868618, 33.829868, 31.185083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403015, 34.558899, 31.532782>,  <46.121986, 34.478947, 31.252165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403015, 34.558899, 31.532782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555367, 34.189774, 31.555906>,  <45.646778, 33.968296, 31.569782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555367, 34.189774, 31.555906>,  <45.403015, 34.558899, 31.532782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555367, 34.189774, 31.555906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111964, 0.016035, 0.993583,
		-0.917820, -0.384909, -0.097215,
		0.380880, -0.922815, 0.057813,
		45.669632, 33.912930, 31.573250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921577, 34.174690, 31.844942>,  <45.403015, 34.558899, 31.532782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921577, 34.174690, 31.844942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266693, 33.978287, 31.893108>,  <45.473763, 33.860443, 31.922009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266693, 33.978287, 31.893108>,  <44.921577, 34.174690, 31.844942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266693, 33.978287, 31.893108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188372, -0.091196, 0.977855,
		-0.469154, -0.866368, -0.171176,
		0.862792, -0.491009, 0.120414,
		45.525532, 33.830982, 31.929232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787151, 33.593479, 32.378002>,  <44.921577, 34.174690, 31.844942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787151, 33.593479, 32.378002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183739, 33.638180, 32.351166>,  <45.421692, 33.665001, 32.335064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183739, 33.638180, 32.351166>,  <44.787151, 33.593479, 32.378002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183739, 33.638180, 32.351166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074047, -0.059305, 0.995490,
		0.107268, -0.991965, -0.067074,
		0.991469, 0.111751, -0.067091,
		45.481178, 33.671703, 32.331039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086994, 33.033207, 32.719585>,  <44.787151, 33.593479, 32.378002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086994, 33.033207, 32.719585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366531, 33.319317, 32.719021>,  <45.534252, 33.490982, 32.718681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366531, 33.319317, 32.719021>,  <45.086994, 33.033207, 32.719585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366531, 33.319317, 32.719021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134368, -0.129342, 0.982454,
		0.702540, -0.686772, -0.186500,
		0.698844, 0.715273, -0.001413,
		45.576183, 33.533897, 32.718597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587284, 32.771793, 33.295349>,  <45.086994, 33.033207, 32.719585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587284, 32.771793, 33.295349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661594, 33.158604, 33.225655>,  <45.706181, 33.390690, 33.183838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661594, 33.158604, 33.225655>,  <45.587284, 32.771793, 33.295349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661594, 33.158604, 33.225655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319858, 0.108150, 0.941273,
		0.929075, -0.230593, -0.289218,
		0.185772, 0.967022, -0.174236,
		45.717327, 33.448711, 33.173386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201900, 32.817104, 33.529110>,  <45.587284, 32.771793, 33.295349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201900, 32.817104, 33.529110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090355, 33.201237, 33.528458>,  <46.023426, 33.431717, 33.528065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090355, 33.201237, 33.528458>,  <46.201900, 32.817104, 33.529110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090355, 33.201237, 33.528458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111598, 0.034092, 0.993169,
		0.953825, 0.276777, -0.116678,
		-0.278864, 0.960329, -0.001630,
		46.006695, 33.489334, 33.527969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498405, 33.079193, 34.113888>,  <46.201900, 32.817104, 33.529110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498405, 33.079193, 34.113888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199272, 33.338512, 34.056667>,  <46.019794, 33.494102, 34.022335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199272, 33.338512, 34.056667>,  <46.498405, 33.079193, 34.113888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199272, 33.338512, 34.056667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214604, -0.032152, 0.976172,
		0.628249, 0.760710, 0.163170,
		-0.747830, 0.648296, -0.143052,
		45.974922, 33.533001, 34.013752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552437, 33.369999, 34.644352>,  <46.498405, 33.079193, 34.113888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552437, 33.369999, 34.644352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188965, 33.466221, 34.507858>,  <45.970882, 33.523952, 34.425961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188965, 33.466221, 34.507858>,  <46.552437, 33.369999, 34.644352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188965, 33.466221, 34.507858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337448, 0.058110, 0.939549,
		0.245841, 0.968895, 0.028371,
		-0.908675, 0.240553, -0.341237,
		45.916363, 33.538387, 34.405487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297909, 34.104656, 34.855476>,  <46.552437, 33.369999, 34.644352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297909, 34.104656, 34.855476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965549, 33.890606, 34.794491>,  <45.766132, 33.762177, 34.757900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965549, 33.890606, 34.794491>,  <46.297909, 34.104656, 34.855476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965549, 33.890606, 34.794491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317264, 0.230535, 0.919890,
		-0.457107, 0.812709, -0.361327,
		-0.830901, -0.535124, -0.152464,
		45.716278, 33.730068, 34.748753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756653, 34.520809, 34.980480>,  <46.297909, 34.104656, 34.855476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756653, 34.520809, 34.980480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650009, 34.137897, 35.025257>,  <45.586021, 33.908150, 35.052124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650009, 34.137897, 35.025257>,  <45.756653, 34.520809, 34.980480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650009, 34.137897, 35.025257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365911, 0.207983, 0.907112,
		-0.891643, 0.200887, -0.405731,
		-0.266612, -0.957281, 0.111940,
		45.570026, 33.850712, 35.058838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327183, 34.550060, 35.460480>,  <45.756653, 34.520809, 34.980480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327183, 34.550060, 35.460480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.646523, 34.372326, 35.623055>,  <46.838127, 34.265686, 35.720600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.646523, 34.372326, 35.623055>,  <46.327183, 34.550060, 35.460480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.646523, 34.372326, 35.623055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601420, 0.554223, -0.575439,
		0.030432, 0.703846, 0.709701,
		0.798353, -0.444340, 0.406441,
		46.886028, 34.239025, 35.744987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814709, 35.172306, 35.714825>,  <46.327183, 34.550060, 35.460480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814709, 35.172306, 35.714825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.947456, 34.810455, 35.607853>,  <47.027103, 34.593346, 35.543671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.947456, 34.810455, 35.607853>,  <46.814709, 35.172306, 35.714825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.947456, 34.810455, 35.607853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637537, 0.424037, -0.643225,
		0.695278, 0.042967, 0.717455,
		0.331865, -0.904625, -0.267430,
		47.047016, 34.539066, 35.527622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530285, 35.151096, 35.716103>,  <46.814709, 35.172306, 35.714825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530285, 35.151096, 35.716103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402584, 34.873402, 35.458076>,  <47.325962, 34.706783, 35.303261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402584, 34.873402, 35.458076>,  <47.530285, 35.151096, 35.716103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.402584, 34.873402, 35.458076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548951, 0.419380, -0.723031,
		0.772484, -0.584939, 0.247215,
		-0.319252, -0.694239, -0.645067,
		47.306808, 34.665131, 35.264557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.066715, 34.844711, 35.357853>,  <47.530285, 35.151096, 35.716103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.066715, 34.844711, 35.357853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738060, 34.840496, 35.129890>,  <47.540867, 34.837967, 34.993111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738060, 34.840496, 35.129890>,  <48.066715, 34.844711, 35.357853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.738060, 34.840496, 35.129890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459305, 0.579864, -0.672902,
		0.337563, -0.814645, -0.471598,
		-0.821639, -0.010539, -0.569911,
		47.491570, 34.837334, 34.958916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.174080, 34.503456, 43.362896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819275, 34.499149, 43.547543>,  <36.606392, 34.496567, 43.658333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819275, 34.499149, 43.547543>,  <37.174080, 34.503456, 43.362896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819275, 34.499149, 43.547543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461669, 0.038759, -0.886205,
		-0.008356, -0.999191, -0.039347,
		-0.887013, -0.010760, 0.461619,
		36.553169, 34.495918, 43.686028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797695, 33.995605, 42.931767>,  <37.174080, 34.503456, 43.362896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797695, 33.995605, 42.931767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501934, 34.166138, 43.140202>,  <36.324478, 34.268456, 43.265263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501934, 34.166138, 43.140202>,  <36.797695, 33.995605, 42.931767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501934, 34.166138, 43.140202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541547, 0.083237, -0.836540,
		-0.400012, -0.900732, 0.169330,
		-0.739403, 0.426326, 0.521084,
		36.280113, 34.294037, 43.296528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135345, 33.606590, 42.821911>,  <36.797695, 33.995605, 42.931767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135345, 33.606590, 42.821911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005535, 33.964371, 42.944969>,  <35.927650, 34.179039, 43.018806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005535, 33.964371, 42.944969>,  <36.135345, 33.606590, 42.821911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005535, 33.964371, 42.944969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591744, 0.061759, -0.803757,
		-0.737918, -0.442888, 0.509241,
		-0.324525, 0.894447, 0.307649,
		35.908176, 34.232704, 43.037266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370953, 33.574329, 42.925060>,  <36.135345, 33.606590, 42.821911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370953, 33.574329, 42.925060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418694, 33.966965, 42.865398>,  <35.447338, 34.202545, 42.829601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418694, 33.966965, 42.865398>,  <35.370953, 33.574329, 42.925060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418694, 33.966965, 42.865398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503319, -0.069674, -0.861287,
		-0.855818, 0.177867, 0.485735,
		0.119351, 0.981585, -0.149152,
		35.454498, 34.261440, 42.820652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647873, 33.994732, 42.764492>,  <35.370953, 33.574329, 42.925060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647873, 33.994732, 42.764492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943710, 34.214066, 42.608376>,  <35.121212, 34.345665, 42.514706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943710, 34.214066, 42.608376>,  <34.647873, 33.994732, 42.764492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943710, 34.214066, 42.608376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375201, -0.145530, -0.915448,
		-0.558774, 0.823497, 0.098104,
		0.739592, 0.548337, -0.390295,
		35.165588, 34.378567, 42.491287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329880, 34.288963, 42.131603>,  <34.647873, 33.994732, 42.764492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329880, 34.288963, 42.131603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716881, 34.378738, 42.084995>,  <34.949081, 34.432602, 42.057030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716881, 34.378738, 42.084995>,  <34.329880, 34.288963, 42.131603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716881, 34.378738, 42.084995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122329, 0.012111, -0.992416,
		-0.221320, 0.974414, 0.039172,
		0.967498, 0.224433, -0.116519,
		35.007130, 34.446068, 42.050041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383183, 34.936287, 41.584679>,  <34.329880, 34.288963, 42.131603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383183, 34.936287, 41.584679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740387, 34.756996, 41.568569>,  <34.954712, 34.649422, 41.558903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740387, 34.756996, 41.568569>,  <34.383183, 34.936287, 41.584679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740387, 34.756996, 41.568569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079367, -0.068760, -0.994471,
		0.442976, 0.891273, -0.096978,
		0.893014, -0.448224, -0.040278,
		35.008289, 34.622528, 41.556484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727051, 35.264549, 41.090202>,  <34.383183, 34.936287, 41.584679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727051, 35.264549, 41.090202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907665, 34.910965, 41.138744>,  <35.016033, 34.698814, 41.167870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907665, 34.910965, 41.138744>,  <34.727051, 35.264549, 41.090202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907665, 34.910965, 41.138744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076409, -0.173815, -0.981810,
		0.888973, 0.434055, -0.146027,
		0.451541, -0.883960, 0.121351,
		35.043129, 34.645779, 41.175148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401146, 35.263535, 40.638779>,  <34.727051, 35.264549, 41.090202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401146, 35.263535, 40.638779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289700, 34.884773, 40.702969>,  <35.222832, 34.657516, 40.741482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289700, 34.884773, 40.702969>,  <35.401146, 35.263535, 40.638779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289700, 34.884773, 40.702969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042057, -0.178961, -0.982957,
		0.959480, -0.267121, 0.089686,
		-0.278619, -0.946900, 0.160475,
		35.206116, 34.600704, 40.751110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873959, 34.911469, 40.302345>,  <35.401146, 35.263535, 40.638779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873959, 34.911469, 40.302345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577354, 34.646107, 40.342457>,  <35.399391, 34.486889, 40.366524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577354, 34.646107, 40.342457>,  <35.873959, 34.911469, 40.302345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577354, 34.646107, 40.342457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097909, -0.254856, -0.962009,
		0.663761, -0.703520, 0.253932,
		-0.741509, -0.663406, 0.100282,
		35.354900, 34.447086, 40.372543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126461, 34.233063, 40.261978>,  <35.873959, 34.911469, 40.302345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126461, 34.233063, 40.261978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743435, 34.240131, 40.146912>,  <35.513618, 34.244373, 40.077873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743435, 34.240131, 40.146912>,  <36.126461, 34.233063, 40.261978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743435, 34.240131, 40.146912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281009, -0.164452, -0.945510,
		-0.064012, -0.986227, 0.152510,
		-0.957568, 0.017667, -0.287666,
		35.456165, 34.245434, 40.060612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033558, 33.629124, 39.824001>,  <36.126461, 34.233063, 40.261978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033558, 33.629124, 39.824001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709370, 33.843235, 39.728832>,  <35.514854, 33.971703, 39.671730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709370, 33.843235, 39.728832>,  <36.033558, 33.629124, 39.824001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709370, 33.843235, 39.728832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069318, -0.315674, -0.946332,
		-0.581660, -0.783469, 0.218741,
		-0.810473, 0.535281, -0.237924,
		35.466228, 34.003819, 39.657455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761295, 33.242252, 39.309906>,  <36.033558, 33.629124, 39.824001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761295, 33.242252, 39.309906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617386, 33.614464, 39.282539>,  <35.531040, 33.837791, 39.266121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617386, 33.614464, 39.282539>,  <35.761295, 33.242252, 39.309906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617386, 33.614464, 39.282539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314939, 0.052088, -0.947682,
		-0.878281, -0.362496, -0.311800,
		-0.359772, 0.930529, -0.068416,
		35.509453, 33.893623, 39.262016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630695, 33.318188, 38.593628>,  <35.761295, 33.242252, 39.309906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630695, 33.318188, 38.593628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609230, 33.701176, 38.707024>,  <35.596352, 33.930969, 38.775063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609230, 33.701176, 38.707024>,  <35.630695, 33.318188, 38.593628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609230, 33.701176, 38.707024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087989, 0.287332, -0.953781,
		-0.994675, -0.026238, -0.099666,
		-0.053662, 0.957471, 0.283494,
		35.593132, 33.988419, 38.792072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171452, 33.571930, 38.176064>,  <35.630695, 33.318188, 38.593628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171452, 33.571930, 38.176064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.383114, 33.888680, 38.298000>,  <35.510113, 34.078728, 38.371162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.383114, 33.888680, 38.298000>,  <35.171452, 33.571930, 38.176064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383114, 33.888680, 38.298000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143508, 0.270571, -0.951944,
		-0.836301, 0.547475, 0.029534,
		0.529156, 0.791873, 0.304846,
		35.541862, 34.126240, 38.389454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951817, 34.171947, 37.830956>,  <35.171452, 33.571930, 38.176064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951817, 34.171947, 37.830956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326042, 34.254559, 37.945538>,  <35.550579, 34.304127, 38.014286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326042, 34.254559, 37.945538>,  <34.951817, 34.171947, 37.830956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326042, 34.254559, 37.945538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248893, 0.189822, -0.949747,
		-0.250527, 0.959850, 0.126187,
		0.935568, 0.206530, 0.286456,
		35.606712, 34.316517, 38.031475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055641, 34.831985, 37.596920>,  <34.951817, 34.171947, 37.830956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055641, 34.831985, 37.596920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414852, 34.662853, 37.645515>,  <35.630379, 34.561375, 37.674675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414852, 34.662853, 37.645515>,  <35.055641, 34.831985, 37.596920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414852, 34.662853, 37.645515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238763, 0.236474, -0.941845,
		0.369512, 0.874811, 0.313317,
		0.898027, -0.422831, 0.121493,
		35.684261, 34.536003, 37.681965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551689, 35.339542, 37.323200>,  <35.055641, 34.831985, 37.596920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551689, 35.339542, 37.323200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745338, 34.989864, 37.308208>,  <35.861526, 34.780056, 37.299213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745338, 34.989864, 37.308208>,  <35.551689, 35.339542, 37.323200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745338, 34.989864, 37.308208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225441, 0.166011, -0.960009,
		0.845459, 0.456312, 0.277449,
		0.484123, -0.874197, -0.037484,
		35.890575, 34.727604, 37.296963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834797, 35.499577, 36.708420>,  <35.551689, 35.339542, 37.323200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834797, 35.499577, 36.708420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006775, 35.149261, 36.796185>,  <36.109962, 34.939072, 36.848843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006775, 35.149261, 36.796185>,  <35.834797, 35.499577, 36.708420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006775, 35.149261, 36.796185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517410, 0.039853, -0.854809,
		0.739887, 0.481049, 0.470275,
		0.429947, -0.875787, 0.219413,
		36.135757, 34.886524, 36.862007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511208, 35.590473, 36.614029>,  <35.834797, 35.499577, 36.708420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511208, 35.590473, 36.614029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437164, 35.199631, 36.572071>,  <36.392738, 34.965126, 36.546898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437164, 35.199631, 36.572071>,  <36.511208, 35.590473, 36.614029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437164, 35.199631, 36.572071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360448, 0.031792, -0.932238,
		0.914228, -0.210371, 0.346310,
		-0.185106, -0.977105, -0.104892,
		36.381634, 34.906498, 36.540604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957031, 35.426304, 36.252686>,  <36.511208, 35.590473, 36.614029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957031, 35.426304, 36.252686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690815, 35.135754, 36.184071>,  <36.531086, 34.961422, 36.142902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690815, 35.135754, 36.184071>,  <36.957031, 35.426304, 36.252686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690815, 35.135754, 36.184071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095903, 0.144693, -0.984818,
		0.740171, -0.671891, -0.026637,
		-0.665545, -0.726379, -0.171534,
		36.491150, 34.917839, 36.132610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267330, 34.938908, 35.787460>,  <36.957031, 35.426304, 36.252686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267330, 34.938908, 35.787460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869911, 34.931530, 35.742699>,  <36.631458, 34.927105, 35.715843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869911, 34.931530, 35.742699>,  <37.267330, 34.938908, 35.787460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869911, 34.931530, 35.742699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110125, 0.078966, -0.990776,
		0.027108, -0.996707, -0.076425,
		-0.993548, -0.018442, -0.111903,
		36.571846, 34.925999, 35.709129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880997, 34.897236, 36.230499>,  <37.267330, 34.938908, 35.787460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880997, 34.897236, 36.230499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.188046, 35.059517, 36.032040>,  <38.372276, 35.156887, 35.912964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.188046, 35.059517, 36.032040>,  <37.880997, 34.897236, 36.230499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188046, 35.059517, 36.032040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631959, -0.350270, 0.691331,
		0.106689, -0.844226, -0.525262,
		0.767623, 0.405702, -0.496146,
		38.418331, 35.181229, 35.883194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415142, 34.453117, 36.298714>,  <37.880997, 34.897236, 36.230499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415142, 34.453117, 36.298714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589546, 34.806763, 36.231506>,  <38.694191, 35.018951, 36.191181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589546, 34.806763, 36.231506>,  <38.415142, 34.453117, 36.298714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589546, 34.806763, 36.231506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701020, -0.216595, 0.679454,
		0.564324, -0.414036, -0.714222,
		0.436015, 0.884116, -0.168018,
		38.720352, 35.071999, 36.181103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140427, 34.297199, 36.236961>,  <38.415142, 34.453117, 36.298714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140427, 34.297199, 36.236961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111649, 34.684284, 36.333584>,  <39.094383, 34.916534, 36.391560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111649, 34.684284, 36.333584>,  <39.140427, 34.297199, 36.236961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111649, 34.684284, 36.333584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745130, -0.108847, 0.657976,
		0.663027, 0.227331, -0.713243,
		-0.071944, 0.967715, 0.241560,
		39.090065, 34.974598, 36.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896549, 34.554962, 36.315796>,  <39.140427, 34.297199, 36.236961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896549, 34.554962, 36.315796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660179, 34.821674, 36.497440>,  <39.518356, 34.981701, 36.606426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660179, 34.821674, 36.497440>,  <39.896549, 34.554962, 36.315796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660179, 34.821674, 36.497440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559209, -0.067169, 0.826301,
		0.581460, 0.742225, -0.333176,
		-0.590922, 0.666776, 0.454115,
		39.482903, 35.021706, 36.633675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306660, 35.143414, 36.632072>,  <39.896549, 34.554962, 36.315796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306660, 35.143414, 36.632072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973213, 35.134254, 36.852821>,  <39.773144, 35.128757, 36.985271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973213, 35.134254, 36.852821>,  <40.306660, 35.143414, 36.632072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973213, 35.134254, 36.852821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537682, 0.195054, 0.820276,
		-0.126429, 0.980525, -0.150287,
		-0.833615, -0.022900, 0.551871,
		39.723129, 35.127384, 37.018383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494961, 35.630848, 37.216145>,  <40.306660, 35.143414, 36.632072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494961, 35.630848, 37.216145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.172813, 35.409325, 37.300694>,  <39.979527, 35.276409, 37.351425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.172813, 35.409325, 37.300694>,  <40.494961, 35.630848, 37.216145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172813, 35.409325, 37.300694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327107, -0.117825, 0.937613,
		-0.494356, 0.824263, 0.276048,
		-0.805365, -0.553812, 0.211375,
		39.931206, 35.243179, 37.364105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477455, 35.811279, 37.939518>,  <40.494961, 35.630848, 37.216145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477455, 35.811279, 37.939518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.224442, 35.506058, 37.886364>,  <40.072636, 35.322926, 37.854473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.224442, 35.506058, 37.886364>,  <40.477455, 35.811279, 37.939518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224442, 35.506058, 37.886364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044029, -0.206710, 0.977411,
		-0.773284, 0.612391, 0.164347,
		-0.632529, -0.763052, -0.132883,
		40.034683, 35.277142, 37.846500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914207, 36.022820, 38.288094>,  <40.477455, 35.811279, 37.939518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914207, 36.022820, 38.288094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.941483, 35.623890, 38.277550>,  <39.957848, 35.384533, 38.271221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.941483, 35.623890, 38.277550>,  <39.914207, 36.022820, 38.288094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941483, 35.623890, 38.277550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089314, -0.032422, 0.995476,
		-0.993667, -0.065523, -0.091286,
		0.068186, -0.997324, -0.026364,
		39.961937, 35.324692, 38.269642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410233, 35.875156, 38.709908>,  <39.914207, 36.022820, 38.288094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410233, 35.875156, 38.709908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.599792, 35.523434, 38.690979>,  <39.713528, 35.312401, 38.679623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.599792, 35.523434, 38.690979>,  <39.410233, 35.875156, 38.709908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599792, 35.523434, 38.690979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104876, -0.109712, 0.988415,
		-0.874311, -0.463447, -0.144211,
		0.473899, -0.879306, -0.047319,
		39.741962, 35.259644, 38.676785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953388, 35.490803, 39.081936>,  <39.410233, 35.875156, 38.709908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953388, 35.490803, 39.081936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.318825, 35.328369, 39.090427>,  <39.538086, 35.230907, 39.095520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.318825, 35.328369, 39.090427>,  <38.953388, 35.490803, 39.081936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318825, 35.328369, 39.090427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086417, -0.142878, 0.985960,
		-0.397354, -0.902595, -0.165625,
		0.913588, -0.406088, 0.021227,
		39.592899, 35.206543, 39.096794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802731, 34.940174, 39.569836>,  <38.953388, 35.490803, 39.081936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802731, 34.940174, 39.569836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196541, 34.993641, 39.524509>,  <39.432827, 35.025723, 39.497314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196541, 34.993641, 39.524509>,  <38.802731, 34.940174, 39.569836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196541, 34.993641, 39.524509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146673, -0.274750, 0.950263,
		0.095885, -0.952180, -0.290104,
		0.984527, 0.133666, -0.113314,
		39.491898, 35.033741, 39.490517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058861, 34.332764, 39.818344>,  <38.802731, 34.940174, 39.569836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058861, 34.332764, 39.818344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.350182, 34.606186, 39.837677>,  <39.524975, 34.770237, 39.849277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.350182, 34.606186, 39.837677>,  <39.058861, 34.332764, 39.818344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350182, 34.606186, 39.837677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083460, -0.158492, 0.983827,
		0.680157, -0.712487, -0.172479,
		0.728300, 0.683551, 0.048336,
		39.568672, 34.811253, 39.852177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560669, 34.021198, 40.183567>,  <39.058861, 34.332764, 39.818344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560669, 34.021198, 40.183567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.620281, 34.415375, 40.216278>,  <39.656048, 34.651882, 40.235905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.620281, 34.415375, 40.216278>,  <39.560669, 34.021198, 40.183567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620281, 34.415375, 40.216278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159661, -0.105600, 0.981507,
		0.975858, -0.133217, -0.173075,
		0.149030, 0.985445, 0.081781,
		39.664989, 34.711010, 40.240810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230434, 33.981491, 40.608959>,  <39.560669, 34.021198, 40.183567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230434, 33.981491, 40.608959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058769, 34.341717, 40.636669>,  <39.955769, 34.557854, 40.653297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058769, 34.341717, 40.636669>,  <40.230434, 33.981491, 40.608959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058769, 34.341717, 40.636669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049186, -0.099887, 0.993782,
		0.901888, 0.423086, 0.087163,
		-0.429161, 0.900567, 0.069277,
		39.930019, 34.611885, 40.657452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666126, 34.327244, 41.136528>,  <40.230434, 33.981491, 40.608959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666126, 34.327244, 41.136528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315506, 34.519707, 41.131683>,  <40.105133, 34.635185, 41.128777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315506, 34.519707, 41.131683>,  <40.666126, 34.327244, 41.136528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315506, 34.519707, 41.131683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032693, -0.034419, 0.998873,
		0.480202, 0.875956, 0.045901,
		-0.876548, 0.481161, -0.012109,
		40.052540, 34.664055, 41.128052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566887, 34.665123, 41.829605>,  <40.666126, 34.327244, 41.136528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566887, 34.665123, 41.829605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.198368, 34.701965, 41.678490>,  <39.977257, 34.724072, 41.587818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.198368, 34.701965, 41.678490>,  <40.566887, 34.665123, 41.829605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198368, 34.701965, 41.678490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384386, -0.068817, 0.920604,
		0.058795, 0.993368, 0.098806,
		-0.921299, 0.092106, -0.377790,
		39.921978, 34.729599, 41.565151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136036, 35.210964, 42.249996>,  <40.566887, 34.665123, 41.829605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136036, 35.210964, 42.249996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877625, 34.967827, 42.065315>,  <39.722580, 34.821945, 41.954506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877625, 34.967827, 42.065315>,  <40.136036, 35.210964, 42.249996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877625, 34.967827, 42.065315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500448, -0.119443, 0.857488,
		-0.576369, 0.785019, -0.227033,
		-0.646027, -0.607847, -0.461705,
		39.683815, 34.785473, 41.926804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474598, 35.351238, 42.489044>,  <40.136036, 35.210964, 42.249996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474598, 35.351238, 42.489044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453209, 34.974308, 42.356880>,  <39.440376, 34.748150, 42.277580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453209, 34.974308, 42.356880>,  <39.474598, 35.351238, 42.489044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453209, 34.974308, 42.356880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287027, -0.302415, 0.908934,
		-0.956429, 0.143443, -0.254300,
		-0.053476, -0.942321, -0.330411,
		39.437164, 34.691612, 42.257755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.901222, 35.079533, 42.906670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087833, 34.777794, 42.721924>,  <39.199799, 34.596752, 42.611076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087833, 34.777794, 42.721924>,  <38.901222, 35.079533, 42.906670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087833, 34.777794, 42.721924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070241, -0.552121, 0.830800,
		-0.881715, -0.355146, -0.310563,
		0.466524, -0.754343, -0.461868,
		39.227791, 34.551491, 42.583363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510239, 34.515408, 42.953804>,  <38.901222, 35.079533, 42.906670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510239, 34.515408, 42.953804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863972, 34.345661, 42.875965>,  <39.076210, 34.243813, 42.829262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863972, 34.345661, 42.875965>,  <38.510239, 34.515408, 42.953804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863972, 34.345661, 42.875965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090137, -0.564173, 0.820722,
		-0.458071, -0.708252, -0.537168,
		0.884334, -0.424368, -0.194592,
		39.129272, 34.218349, 42.817589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466877, 33.727604, 42.857365>,  <38.510239, 34.515408, 42.953804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466877, 33.727604, 42.857365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836758, 33.814865, 42.982166>,  <39.058685, 33.867222, 43.057045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836758, 33.814865, 42.982166>,  <38.466877, 33.727604, 42.857365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836758, 33.814865, 42.982166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135061, -0.578252, 0.804601,
		0.355940, -0.786151, -0.505245,
		0.924697, 0.218151, 0.312001,
		39.114166, 33.880310, 43.075768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539719, 33.388775, 43.431820>,  <38.466877, 33.727604, 42.857365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539719, 33.388775, 43.431820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.877525, 33.590832, 43.502945>,  <39.080212, 33.712067, 43.545620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.877525, 33.590832, 43.502945>,  <38.539719, 33.388775, 43.431820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877525, 33.590832, 43.502945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090302, -0.192958, 0.977043,
		0.527856, -0.841189, -0.117341,
		0.844519, 0.505142, 0.177815,
		39.130882, 33.742374, 43.556290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954262, 33.011909, 43.798759>,  <38.539719, 33.388775, 43.431820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954262, 33.011909, 43.798759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.106026, 33.375656, 43.866997>,  <39.197086, 33.593903, 43.907940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.106026, 33.375656, 43.866997>,  <38.954262, 33.011909, 43.798759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106026, 33.375656, 43.866997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034882, -0.170193, 0.984793,
		0.924570, -0.379593, -0.032853,
		0.379412, 0.909364, 0.170597,
		39.219849, 33.648464, 43.918175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142780, 32.928188, 44.461254>,  <38.954262, 33.011909, 43.798759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142780, 32.928188, 44.461254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178001, 33.321991, 44.400600>,  <39.199135, 33.558273, 44.364208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178001, 33.321991, 44.400600>,  <39.142780, 32.928188, 44.461254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178001, 33.321991, 44.400600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068882, 0.157881, 0.985053,
		0.993732, -0.076288, 0.081716,
		0.088049, 0.984507, -0.151637,
		39.204414, 33.617344, 44.355110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819981, 33.131554, 44.772270>,  <39.142780, 32.928188, 44.461254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819981, 33.131554, 44.772270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560062, 33.434940, 44.752304>,  <39.404110, 33.616974, 44.740326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560062, 33.434940, 44.752304>,  <39.819981, 33.131554, 44.772270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560062, 33.434940, 44.752304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112966, 0.161300, 0.980419,
		0.751667, 0.631434, -0.190493,
		-0.649796, 0.758468, -0.049913,
		39.365124, 33.662479, 44.737331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160950, 33.680260, 45.095711>,  <39.819981, 33.131554, 44.772270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160950, 33.680260, 45.095711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772160, 33.774143, 45.090485>,  <39.538883, 33.830471, 45.087349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772160, 33.774143, 45.090485>,  <40.160950, 33.680260, 45.095711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772160, 33.774143, 45.090485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014014, 0.113338, 0.993458,
		0.234650, 0.965437, -0.113451,
		-0.971979, 0.234704, -0.013065,
		39.480564, 33.844555, 45.086563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002579, 34.257446, 45.446640>,  <40.160950, 33.680260, 45.095711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002579, 34.257446, 45.446640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658413, 34.053650, 45.442455>,  <39.451916, 33.931370, 45.439945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658413, 34.053650, 45.442455>,  <40.002579, 34.257446, 45.446640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658413, 34.053650, 45.442455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101878, 0.151861, 0.983137,
		-0.499313, 0.846968, -0.182569,
		-0.860411, -0.509493, -0.010461,
		39.400291, 33.900803, 45.439316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637070, 34.705006, 45.884712>,  <40.002579, 34.257446, 45.446640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637070, 34.705006, 45.884712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464302, 34.344440, 45.872662>,  <39.360641, 34.128101, 45.865433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464302, 34.344440, 45.872662>,  <39.637070, 34.705006, 45.884712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464302, 34.344440, 45.872662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234067, -0.144289, 0.961454,
		-0.871010, 0.408219, 0.273311,
		-0.431919, -0.901409, -0.030126,
		39.334724, 34.074017, 45.863625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215900, 34.698025, 46.408073>,  <39.637070, 34.705006, 45.884712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215900, 34.698025, 46.408073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272568, 34.308327, 46.337898>,  <39.306568, 34.074509, 46.295792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272568, 34.308327, 46.337898>,  <39.215900, 34.698025, 46.408073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272568, 34.308327, 46.337898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300821, -0.126475, 0.945257,
		-0.943099, -0.186689, 0.275156,
		0.141668, -0.974244, -0.175439,
		39.315067, 34.016052, 46.285267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960651, 34.474396, 47.027172>,  <39.215900, 34.698025, 46.408073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960651, 34.474396, 47.027172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165020, 34.168594, 46.869946>,  <39.287640, 33.985115, 46.775608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165020, 34.168594, 46.869946>,  <38.960651, 34.474396, 47.027172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165020, 34.168594, 46.869946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203290, -0.336825, 0.919360,
		-0.835245, -0.549625, -0.016675,
		0.510920, -0.764501, -0.393065,
		39.318295, 33.939243, 46.752026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859688, 33.873940, 47.425335>,  <38.960651, 34.474396, 47.027172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859688, 33.873940, 47.425335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193707, 33.746677, 47.245789>,  <39.394115, 33.670319, 47.138062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193707, 33.746677, 47.245789>,  <38.859688, 33.873940, 47.425335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193707, 33.746677, 47.245789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185459, -0.605318, 0.774077,
		-0.517982, -0.729635, -0.446462,
		0.835045, -0.318157, -0.448861,
		39.444218, 33.651230, 47.111130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815182, 33.235226, 47.410511>,  <38.859688, 33.873940, 47.425335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815182, 33.235226, 47.410511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207947, 33.291378, 47.359688>,  <39.443607, 33.325069, 47.329193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207947, 33.291378, 47.359688>,  <38.815182, 33.235226, 47.410511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207947, 33.291378, 47.359688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184259, -0.862879, 0.470625,
		-0.043570, -0.485524, -0.873137,
		0.981911, 0.140378, -0.127057,
		39.502522, 33.333492, 47.321571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069603, 32.586159, 47.190544>,  <38.815182, 33.235226, 47.410511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069603, 32.586159, 47.190544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.376362, 32.781666, 47.356903>,  <39.560417, 32.898968, 47.456718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.376362, 32.781666, 47.356903>,  <39.069603, 32.586159, 47.190544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376362, 32.781666, 47.356903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253076, -0.825861, 0.503891,
		0.589759, -0.281181, -0.757048,
		0.766901, 0.488765, 0.415899,
		39.606434, 32.928295, 47.481674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620941, 32.047009, 47.276684>,  <39.069603, 32.586159, 47.190544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620941, 32.047009, 47.276684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739853, 32.361217, 47.493786>,  <39.811199, 32.549744, 47.624046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739853, 32.361217, 47.493786>,  <39.620941, 32.047009, 47.276684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739853, 32.361217, 47.493786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372888, -0.618828, 0.691380,
		0.878964, -0.003150, -0.476878,
		0.297283, 0.785520, 0.542753,
		39.829037, 32.596874, 47.656612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291073, 31.935728, 47.421936>,  <39.620941, 32.047009, 47.276684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291073, 31.935728, 47.421936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.177525, 32.190258, 47.708851>,  <40.109394, 32.342976, 47.881001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.177525, 32.190258, 47.708851>,  <40.291073, 31.935728, 47.421936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177525, 32.190258, 47.708851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304979, -0.649299, 0.696706,
		0.909069, 0.416532, -0.009750,
		-0.283869, 0.636327, 0.717291,
		40.092365, 32.381157, 47.924038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875690, 31.943327, 47.837101>,  <40.291073, 31.935728, 47.421936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875690, 31.943327, 47.837101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.577950, 32.079109, 48.067131>,  <40.399303, 32.160580, 48.205147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.577950, 32.079109, 48.067131>,  <40.875690, 31.943327, 47.837101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577950, 32.079109, 48.067131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307570, -0.590109, 0.746440,
		0.592739, 0.732489, 0.334844,
		-0.744353, 0.339456, 0.575072,
		40.354645, 32.180946, 48.239655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094715, 31.941694, 48.536633>,  <40.875690, 31.943327, 47.837101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094715, 31.941694, 48.536633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700703, 31.988062, 48.587677>,  <40.464294, 32.015881, 48.618301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700703, 31.988062, 48.587677>,  <41.094715, 31.941694, 48.536633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700703, 31.988062, 48.587677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004921, -0.720983, 0.692935,
		0.172327, 0.683188, 0.709618,
		-0.985027, 0.115919, 0.127607,
		40.405193, 32.022839, 48.625957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938297, 31.767168, 49.223351>,  <41.094715, 31.941694, 48.536633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938297, 31.767168, 49.223351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559372, 31.770695, 49.095276>,  <40.332016, 31.772810, 49.018429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559372, 31.770695, 49.095276>,  <40.938297, 31.767168, 49.223351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559372, 31.770695, 49.095276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239937, -0.681760, 0.691111,
		-0.212200, 0.731523, 0.647955,
		-0.947313, 0.008815, -0.320189,
		40.275177, 31.773338, 48.999218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513939, 31.838594, 49.853092>,  <40.938297, 31.767168, 49.223351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513939, 31.838594, 49.853092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299999, 31.650269, 49.572445>,  <40.171635, 31.537273, 49.404057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299999, 31.650269, 49.572445>,  <40.513939, 31.838594, 49.853092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299999, 31.650269, 49.572445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350334, -0.632062, 0.691205,
		-0.768896, 0.615492, 0.173117,
		-0.534851, -0.470816, -0.701617,
		40.139545, 31.509024, 49.361961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847958, 31.795317, 50.206772>,  <40.513939, 31.838594, 49.853092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847958, 31.795317, 50.206772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880936, 31.521942, 49.916637>,  <39.900723, 31.357918, 49.742558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880936, 31.521942, 49.916637>,  <39.847958, 31.795317, 50.206772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880936, 31.521942, 49.916637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283483, -0.713834, 0.640374,
		-0.955427, 0.152825, -0.252595,
		0.082446, -0.683436, -0.725339,
		39.905670, 31.316912, 49.699036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228874, 31.435583, 50.189690>,  <39.847958, 31.795317, 50.206772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228874, 31.435583, 50.189690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462090, 31.194494, 49.971775>,  <39.602016, 31.049841, 49.841026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462090, 31.194494, 49.971775>,  <39.228874, 31.435583, 50.189690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462090, 31.194494, 49.971775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386185, -0.795554, 0.466856,
		-0.714795, -0.061803, -0.696598,
		0.583035, -0.602722, -0.544791,
		39.637001, 31.013678, 49.808338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070728, 31.900047, 50.818562>,  <39.228874, 31.435583, 50.189690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070728, 31.900047, 50.818562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.254742, 31.551435, 50.750671>,  <39.365150, 31.342268, 50.709938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.254742, 31.551435, 50.750671>,  <39.070728, 31.900047, 50.818562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254742, 31.551435, 50.750671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071440, -0.154202, 0.985453,
		-0.885023, -0.465467, -0.008676,
		0.460034, -0.871529, -0.169725,
		39.392754, 31.289976, 50.699753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941097, 32.544697, 50.579182>,  <39.070728, 31.900047, 50.818562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941097, 32.544697, 50.579182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621593, 32.551029, 50.819759>,  <38.429890, 32.554829, 50.964108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621593, 32.551029, 50.819759>,  <38.941097, 32.544697, 50.579182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621593, 32.551029, 50.819759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596737, -0.148374, -0.788600,
		0.076753, -0.988805, 0.127963,
		-0.798758, 0.015833, 0.601444,
		38.381966, 32.555779, 51.000191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440063, 32.141232, 50.212864>,  <38.941097, 32.544697, 50.579182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440063, 32.141232, 50.212864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197159, 32.326305, 50.471214>,  <38.051414, 32.437351, 50.626225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197159, 32.326305, 50.471214>,  <38.440063, 32.141232, 50.212864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197159, 32.326305, 50.471214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642707, 0.191826, -0.741708,
		-0.467073, -0.865520, 0.180882,
		-0.607265, 0.462685, 0.645873,
		38.014980, 32.465111, 50.664974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622959, 31.939741, 50.096016>,  <38.440063, 32.141232, 50.212864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622959, 31.939741, 50.096016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673843, 32.295872, 50.270893>,  <37.704372, 32.509552, 50.375820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673843, 32.295872, 50.270893>,  <37.622959, 31.939741, 50.096016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673843, 32.295872, 50.270893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526258, 0.434200, -0.731111,
		-0.840756, -0.137068, 0.523777,
		0.127212, 0.890327, 0.437189,
		37.712006, 32.562969, 50.402050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979332, 32.150028, 50.101742>,  <37.622959, 31.939741, 50.096016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979332, 32.150028, 50.101742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198135, 32.480301, 50.156925>,  <37.329418, 32.678463, 50.190037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198135, 32.480301, 50.156925>,  <36.979332, 32.150028, 50.101742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198135, 32.480301, 50.156925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583790, 0.494370, -0.644040,
		-0.599975, 0.271756, 0.752449,
		0.547009, 0.825680, 0.137961,
		37.362240, 32.728004, 50.198315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463783, 32.724136, 50.015934>,  <36.979332, 32.150028, 50.101742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463783, 32.724136, 50.015934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829025, 32.874069, 49.951767>,  <37.048172, 32.964027, 49.913265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829025, 32.874069, 49.951767>,  <36.463783, 32.724136, 50.015934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829025, 32.874069, 49.951767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348697, 0.514048, -0.783687,
		-0.211286, 0.771529, 0.600084,
		0.913109, 0.374830, -0.160419,
		37.102959, 32.986519, 49.903641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378448, 33.455517, 49.871471>,  <36.463783, 32.724136, 50.015934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378448, 33.455517, 49.871471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734020, 33.338833, 49.730213>,  <36.947365, 33.268822, 49.645458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.734020, 33.338833, 49.730213>,  <36.378448, 33.455517, 49.871471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734020, 33.338833, 49.730213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148237, 0.546274, -0.824385,
		0.433394, 0.785169, 0.442357,
		0.888930, -0.291710, -0.353143,
		37.000698, 33.251320, 49.624271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951977, 34.085747, 49.641048>,  <36.378448, 33.455517, 49.871471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951977, 34.085747, 49.641048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966797, 33.740093, 49.440289>,  <36.975689, 33.532703, 49.319832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966797, 33.740093, 49.440289>,  <36.951977, 34.085747, 49.641048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966797, 33.740093, 49.440289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233181, 0.480908, -0.845195,
		0.971727, 0.148346, -0.183683,
		0.037047, -0.864130, -0.501903,
		36.977909, 33.480854, 49.289719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930664, 34.350739, 48.996075>,  <36.951977, 34.085747, 49.641048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930664, 34.350739, 48.996075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950302, 33.963009, 48.899734>,  <36.962086, 33.730373, 48.841930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.950302, 33.963009, 48.899734>,  <36.930664, 34.350739, 48.996075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950302, 33.963009, 48.899734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208314, 0.225899, -0.951617,
		0.976829, 0.096893, -0.190832,
		0.049096, -0.969320, -0.240849,
		36.965031, 33.672215, 48.827480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414902, 34.323025, 48.508545>,  <36.930664, 34.350739, 48.996075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414902, 34.323025, 48.508545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190762, 33.994049, 48.469330>,  <37.056278, 33.796665, 48.445801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190762, 33.994049, 48.469330>,  <37.414902, 34.323025, 48.508545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190762, 33.994049, 48.469330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103951, 0.187264, -0.976794,
		0.821710, -0.537151, -0.190425,
		-0.560346, -0.822436, -0.098040,
		37.022659, 33.747318, 48.439919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732746, 33.958393, 48.019848>,  <37.414902, 34.323025, 48.508545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732746, 33.958393, 48.019848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356274, 33.823231, 48.018879>,  <37.130390, 33.742134, 48.018299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356274, 33.823231, 48.018879>,  <37.732746, 33.958393, 48.019848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356274, 33.823231, 48.018879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005532, -0.008248, -0.999951,
		0.337866, -0.941145, 0.009632,
		-0.941178, -0.337903, -0.002420,
		37.073921, 33.721859, 48.018154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725525, 33.645550, 47.505112>,  <37.732746, 33.958393, 48.019848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725525, 33.645550, 47.505112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327068, 33.625351, 47.533817>,  <37.087994, 33.613232, 47.551041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327068, 33.625351, 47.533817>,  <37.725525, 33.645550, 47.505112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327068, 33.625351, 47.533817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067984, -0.072959, -0.995015,
		0.055481, -0.996056, 0.069245,
		-0.996142, -0.050497, 0.071764,
		37.028225, 33.610203, 47.555347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441982, 32.998344, 47.151283>,  <37.725525, 33.645550, 47.505112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441982, 32.998344, 47.151283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157284, 33.278488, 47.172878>,  <36.986465, 33.446575, 47.185837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157284, 33.278488, 47.172878>,  <37.441982, 32.998344, 47.151283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157284, 33.278488, 47.172878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125452, -0.051118, -0.990782,
		-0.691143, -0.711958, 0.124245,
		-0.711746, 0.700359, 0.053987,
		36.943760, 33.488594, 47.189075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878201, 32.765976, 46.719059>,  <37.441982, 32.998344, 47.151283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878201, 32.765976, 46.719059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835079, 33.162933, 46.742825>,  <36.809204, 33.401108, 46.757084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835079, 33.162933, 46.742825>,  <36.878201, 32.765976, 46.719059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835079, 33.162933, 46.742825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007077, 0.060527, -0.998141,
		-0.994147, -0.107186, -0.013549,
		-0.107807, 0.992395, 0.059414,
		36.802738, 33.460651, 46.760647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502602, 32.840813, 46.182957>,  <36.878201, 32.765976, 46.719059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502602, 32.840813, 46.182957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591934, 33.222870, 46.260757>,  <36.645535, 33.452103, 46.307438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.591934, 33.222870, 46.260757>,  <36.502602, 32.840813, 46.182957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591934, 33.222870, 46.260757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019116, 0.203795, -0.978827,
		-0.974555, 0.214887, 0.063773,
		0.223334, 0.955139, 0.194501,
		36.658936, 33.509411, 46.319107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092388, 33.219433, 45.804874>,  <36.502602, 32.840813, 46.182957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092388, 33.219433, 45.804874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389126, 33.472229, 45.894547>,  <36.567169, 33.623905, 45.948349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389126, 33.472229, 45.894547>,  <36.092388, 33.219433, 45.804874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389126, 33.472229, 45.894547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065988, 0.263890, -0.962293,
		-0.667318, 0.728664, 0.154061,
		0.741844, 0.631989, 0.224181,
		36.611679, 33.661827, 45.961800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932106, 33.928535, 45.703739>,  <36.092388, 33.219433, 45.804874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932106, 33.928535, 45.703739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329830, 33.964096, 45.680275>,  <36.568466, 33.985432, 45.666199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329830, 33.964096, 45.680275>,  <35.932106, 33.928535, 45.703739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329830, 33.964096, 45.680275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086212, 0.348388, -0.933377,
		-0.062542, 0.933125, 0.354071,
		0.994312, 0.088900, -0.058658,
		36.628124, 33.990765, 45.662678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124516, 34.716015, 45.583141>,  <35.932106, 33.928535, 45.703739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124516, 34.716015, 45.583141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404510, 34.466061, 45.444847>,  <36.572510, 34.316086, 45.361870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404510, 34.466061, 45.444847>,  <36.124516, 34.716015, 45.583141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404510, 34.466061, 45.444847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003398, 0.487022, -0.873383,
		0.714144, 0.610185, 0.343034,
		0.699990, -0.624887, -0.345731,
		36.614506, 34.278595, 45.341129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682831, 35.115219, 45.207111>,  <36.124516, 34.716015, 45.583141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682831, 35.115219, 45.207111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.718388, 34.738503, 45.077415>,  <36.739723, 34.512474, 44.999599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.718388, 34.738503, 45.077415>,  <36.682831, 35.115219, 45.207111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718388, 34.738503, 45.077415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015159, 0.324213, -0.945863,
		0.995925, 0.088999, 0.014545,
		0.088897, -0.941788, -0.324241,
		36.745056, 34.455967, 44.980145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067390, 35.178329, 44.626404>,  <36.682831, 35.115219, 45.207111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067390, 35.178329, 44.626404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910782, 34.812542, 44.585506>,  <36.816818, 34.593067, 44.560966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.910782, 34.812542, 44.585506>,  <37.067390, 35.178329, 44.626404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910782, 34.812542, 44.585506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068546, 0.139791, -0.987806,
		0.917614, -0.379734, -0.117414,
		-0.391517, -0.914473, -0.102245,
		36.793327, 34.538200, 44.554832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286564, 34.968445, 44.020409>,  <37.067390, 35.178329, 44.626404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286564, 34.968445, 44.020409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964218, 34.743267, 44.093811>,  <36.770809, 34.608158, 44.137852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964218, 34.743267, 44.093811>,  <37.286564, 34.968445, 44.020409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964218, 34.743267, 44.093811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375338, 0.246001, -0.893647,
		0.457935, -0.789033, -0.409539,
		-0.805864, -0.562947, 0.183502,
		36.722458, 34.574383, 44.148861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.454735, 31.247240, 27.421135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100391, 31.430973, 27.394983>,  <41.887787, 31.541212, 27.379292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100391, 31.430973, 27.394983>,  <42.454735, 31.247240, 27.421135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100391, 31.430973, 27.394983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109436, 0.343803, 0.932643,
		0.450869, 0.819032, -0.354828,
		-0.885856, 0.459331, -0.065379,
		41.834633, 31.568773, 27.375370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536495, 31.924774, 27.644686>,  <42.454735, 31.247240, 27.421135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536495, 31.924774, 27.644686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147156, 31.839891, 27.679480>,  <41.913551, 31.788961, 27.700356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147156, 31.839891, 27.679480>,  <42.536495, 31.924774, 27.644686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147156, 31.839891, 27.679480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004925, 0.398535, 0.917140,
		-0.229290, 0.892265, -0.388958,
		-0.973346, -0.212207, 0.086985,
		41.855152, 31.776230, 27.705576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234852, 32.563824, 27.924971>,  <42.536495, 31.924774, 27.644686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234852, 32.563824, 27.924971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990269, 32.262608, 28.022177>,  <41.843521, 32.081879, 28.080500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990269, 32.262608, 28.022177>,  <42.234852, 32.563824, 27.924971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990269, 32.262608, 28.022177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040903, 0.336788, 0.940692,
		-0.790221, 0.565251, -0.236732,
		-0.611455, -0.753037, 0.243016,
		41.806831, 32.036697, 28.095081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655220, 32.876537, 28.299633>,  <42.234852, 32.563824, 27.924971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655220, 32.876537, 28.299633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635540, 32.490887, 28.403969>,  <41.623734, 32.259495, 28.466570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635540, 32.490887, 28.403969>,  <41.655220, 32.876537, 28.299633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635540, 32.490887, 28.403969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177880, 0.265438, 0.947576,
		-0.982822, 0.000220, -0.184558,
		-0.049198, -0.964128, 0.260839,
		41.620781, 32.201649, 28.482220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992119, 32.760654, 28.701595>,  <41.655220, 32.876537, 28.299633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992119, 32.760654, 28.701595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211224, 32.443386, 28.808056>,  <41.342686, 32.253025, 28.871933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.211224, 32.443386, 28.808056>,  <40.992119, 32.760654, 28.701595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211224, 32.443386, 28.808056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211543, 0.176478, 0.961304,
		-0.809446, -0.582872, -0.071121,
		0.547766, -0.793168, 0.266152,
		41.375553, 32.205437, 28.887901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679985, 32.504860, 29.279596>,  <40.992119, 32.760654, 28.701595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679985, 32.504860, 29.279596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.061443, 32.384491, 29.279884>,  <41.290318, 32.312267, 29.280056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.061443, 32.384491, 29.279884>,  <40.679985, 32.504860, 29.279596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061443, 32.384491, 29.279884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067047, 0.214805, 0.974353,
		-0.293361, -0.929141, 0.225025,
		0.953647, -0.300925, 0.000719,
		41.347538, 32.294212, 29.280100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646236, 32.088608, 29.899111>,  <40.679985, 32.504860, 29.279596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646236, 32.088608, 29.899111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033619, 32.153088, 29.823095>,  <41.266048, 32.191776, 29.777487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033619, 32.153088, 29.823095>,  <40.646236, 32.088608, 29.899111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033619, 32.153088, 29.823095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198055, -0.035060, 0.979564,
		0.151247, -0.986298, -0.065881,
		0.968452, 0.161204, -0.190038,
		41.324154, 32.201447, 29.766085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012562, 31.567163, 30.329546>,  <40.646236, 32.088608, 29.899111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012562, 31.567163, 30.329546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262817, 31.862631, 30.229195>,  <41.412971, 32.039913, 30.168983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262817, 31.862631, 30.229195>,  <41.012562, 31.567163, 30.329546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262817, 31.862631, 30.229195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395042, -0.022682, 0.918383,
		0.672691, -0.673686, -0.305996,
		0.625642, 0.738670, -0.250876,
		41.450512, 32.084232, 30.153933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764534, 31.343706, 30.492352>,  <41.012562, 31.567163, 30.329546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764534, 31.343706, 30.492352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768177, 31.743689, 30.491768>,  <41.770363, 31.983679, 30.491419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768177, 31.743689, 30.491768>,  <41.764534, 31.343706, 30.492352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768177, 31.743689, 30.491768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531950, -0.003609, 0.846768,
		0.846727, -0.008484, -0.531961,
		0.009104, 0.999958, -0.001457,
		41.770908, 32.043674, 30.491331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399426, 31.518162, 30.752893>,  <41.764534, 31.343706, 30.492352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399426, 31.518162, 30.752893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.211231, 31.866320, 30.810930>,  <42.098316, 32.075214, 30.845753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.211231, 31.866320, 30.810930>,  <42.399426, 31.518162, 30.752893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211231, 31.866320, 30.810930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425042, 0.079448, 0.901680,
		0.773293, 0.485899, -0.407334,
		-0.470487, 0.870397, 0.145091,
		42.070084, 32.127438, 30.854458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925411, 31.940950, 31.092089>,  <42.399426, 31.518162, 30.752893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925411, 31.940950, 31.092089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598167, 32.158836, 31.165821>,  <42.401821, 32.289570, 31.210060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598167, 32.158836, 31.165821>,  <42.925411, 31.940950, 31.092089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598167, 32.158836, 31.165821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368070, 0.249721, 0.895636,
		0.441836, 0.800577, -0.404793,
		-0.818111, 0.544716, 0.184333,
		42.352734, 32.322250, 31.221121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117985, 32.633884, 31.392879>,  <42.925411, 31.940950, 31.092089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117985, 32.633884, 31.392879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731426, 32.632149, 31.495693>,  <42.499493, 32.631107, 31.557381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731426, 32.632149, 31.495693>,  <43.117985, 32.633884, 31.392879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731426, 32.632149, 31.495693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228380, 0.444523, 0.866165,
		-0.118015, 0.895757, -0.428593,
		-0.966393, -0.004338, 0.257033,
		42.441509, 32.630848, 31.572803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935802, 33.257816, 31.661161>,  <43.117985, 32.633884, 31.392879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935802, 33.257816, 31.661161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682156, 32.996803, 31.827099>,  <42.529968, 32.840195, 31.926661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682156, 32.996803, 31.827099>,  <42.935802, 33.257816, 31.661161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682156, 32.996803, 31.827099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334478, 0.252230, 0.908022,
		-0.697151, 0.714549, 0.058315,
		-0.634118, -0.652534, 0.414843,
		42.491920, 32.801044, 31.951551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814915, 33.474918, 32.253242>,  <42.935802, 33.257816, 31.661161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814915, 33.474918, 32.253242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658966, 33.113052, 32.322044>,  <42.565395, 32.895935, 32.363327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658966, 33.113052, 32.322044>,  <42.814915, 33.474918, 32.253242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658966, 33.113052, 32.322044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382467, 0.010838, 0.923905,
		-0.837685, 0.425995, 0.341778,
		-0.389875, -0.904661, 0.172008,
		42.542004, 32.841656, 32.373646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301998, 33.521568, 32.975246>,  <42.814915, 33.474918, 32.253242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301998, 33.521568, 32.975246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456501, 33.166950, 32.873390>,  <42.549202, 32.954178, 32.812279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456501, 33.166950, 32.873390>,  <42.301998, 33.521568, 32.975246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456501, 33.166950, 32.873390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313363, -0.133521, 0.940200,
		-0.867531, -0.442951, 0.226238,
		0.386255, -0.886548, -0.254638,
		42.572376, 32.900986, 32.796997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032883, 33.028770, 33.439857>,  <42.301998, 33.521568, 32.975246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032883, 33.028770, 33.439857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373734, 32.864960, 33.309525>,  <42.578243, 32.766674, 33.231327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373734, 32.864960, 33.309525>,  <42.032883, 33.028770, 33.439857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373734, 32.864960, 33.309525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220430, -0.283815, 0.933199,
		-0.474644, -0.867028, -0.151575,
		0.852129, -0.409526, -0.325830,
		42.629372, 32.742104, 33.211777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204453, 32.543072, 33.909611>,  <42.032883, 33.028770, 33.439857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204453, 32.543072, 33.909611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.566418, 32.577244, 33.742832>,  <42.783596, 32.597748, 33.642765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.566418, 32.577244, 33.742832>,  <42.204453, 32.543072, 33.909611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566418, 32.577244, 33.742832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423712, -0.088560, 0.901457,
		0.040084, -0.992401, -0.116335,
		0.904909, 0.085427, -0.416943,
		42.837891, 32.602871, 33.617748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498615, 32.063984, 34.238544>,  <42.204453, 32.543072, 33.909611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498615, 32.063984, 34.238544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797806, 32.289104, 34.097816>,  <42.977322, 32.424179, 34.013378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797806, 32.289104, 34.097816>,  <42.498615, 32.063984, 34.238544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797806, 32.289104, 34.097816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419312, 0.010207, 0.907785,
		0.514497, -0.826527, -0.228356,
		0.747978, 0.562805, -0.351823,
		43.022198, 32.457947, 33.992268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177536, 31.772821, 34.545044>,  <42.498615, 32.063984, 34.238544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177536, 31.772821, 34.545044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.238514, 32.145893, 34.414280>,  <43.275101, 32.369736, 34.335819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.238514, 32.145893, 34.414280>,  <43.177536, 31.772821, 34.545044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238514, 32.145893, 34.414280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495015, 0.214242, 0.842057,
		0.855407, -0.290194, -0.429030,
		0.152444, 0.932678, -0.326914,
		43.284248, 32.425697, 34.316204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840118, 31.901152, 34.749084>,  <43.177536, 31.772821, 34.545044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840118, 31.901152, 34.749084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699802, 32.266266, 34.665401>,  <43.615612, 32.485336, 34.615192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699802, 32.266266, 34.665401>,  <43.840118, 31.901152, 34.749084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699802, 32.266266, 34.665401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453661, 0.361084, 0.814746,
		0.819230, 0.190896, -0.540760,
		-0.350791, 0.912786, -0.209209,
		43.594566, 32.540100, 34.602638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334789, 32.384663, 34.920864>,  <43.840118, 31.901152, 34.749084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334789, 32.384663, 34.920864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.008904, 32.616074, 34.905163>,  <43.813374, 32.754921, 34.895741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.008904, 32.616074, 34.905163>,  <44.334789, 32.384663, 34.920864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008904, 32.616074, 34.905163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187782, 0.327275, 0.926083,
		0.548614, 0.747123, -0.375273,
		-0.814715, 0.578532, -0.039252,
		43.764488, 32.789635, 34.893387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451881, 33.148197, 35.087017>,  <44.334789, 32.384663, 34.920864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451881, 33.148197, 35.087017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087379, 33.037865, 35.209347>,  <43.868679, 32.971664, 35.282745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087379, 33.037865, 35.209347>,  <44.451881, 33.148197, 35.087017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087379, 33.037865, 35.209347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200733, 0.350937, 0.914631,
		-0.359614, 0.894851, -0.264423,
		-0.911254, -0.275836, 0.305828,
		43.814003, 32.955112, 35.301094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603893, 33.149174, 34.318321>,  <44.451881, 33.148197, 35.087017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603893, 33.149174, 34.318321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.928368, 33.329395, 34.467442>,  <45.123051, 33.437527, 34.556915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.928368, 33.329395, 34.467442>,  <44.603893, 33.149174, 34.318321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928368, 33.329395, 34.467442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245884, 0.315625, -0.916473,
		-0.530582, 0.835096, 0.145248,
		0.811186, 0.450550, 0.372802,
		45.171722, 33.464561, 34.579281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686619, 33.811218, 34.098225>,  <44.603893, 33.149174, 34.318321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686619, 33.811218, 34.098225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068161, 33.742783, 34.196926>,  <45.297085, 33.701721, 34.256145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068161, 33.742783, 34.196926>,  <44.686619, 33.811218, 34.098225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068161, 33.742783, 34.196926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287446, 0.282776, -0.915102,
		0.086788, 0.943804, 0.318907,
		0.953857, -0.171089, 0.246751,
		45.354317, 33.691456, 34.270950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056786, 34.424137, 33.839134>,  <44.686619, 33.811218, 34.098225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056786, 34.424137, 33.839134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.338539, 34.146545, 33.898785>,  <45.507591, 33.979992, 33.934574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.338539, 34.146545, 33.898785>,  <45.056786, 34.424137, 33.839134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338539, 34.146545, 33.898785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350101, 0.156913, -0.923476,
		0.617474, 0.702688, 0.353490,
		0.704382, -0.693980, 0.149122,
		45.549854, 33.938351, 33.943520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450024, 34.644451, 33.332260>,  <45.056786, 34.424137, 33.839134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450024, 34.644451, 33.332260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625004, 34.294430, 33.415123>,  <45.729992, 34.084415, 33.464840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625004, 34.294430, 33.415123>,  <45.450024, 34.644451, 33.332260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625004, 34.294430, 33.415123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255486, -0.099932, -0.961634,
		0.862186, 0.473591, 0.179850,
		0.437449, -0.875057, 0.207155,
		45.756237, 34.031914, 33.477268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121109, 34.675346, 33.086964>,  <45.450024, 34.644451, 33.332260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121109, 34.675346, 33.086964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.992207, 34.296799, 33.096214>,  <45.914867, 34.069668, 33.101765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.992207, 34.296799, 33.096214>,  <46.121109, 34.675346, 33.086964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992207, 34.296799, 33.096214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208081, -0.094642, -0.973522,
		0.923501, -0.308909, 0.227421,
		-0.322254, -0.946371, 0.023124,
		45.895531, 34.012886, 33.103153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657879, 34.286003, 32.648758>,  <46.121109, 34.675346, 33.086964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657879, 34.286003, 32.648758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.333927, 34.052475, 32.671574>,  <46.139557, 33.912357, 32.685261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.333927, 34.052475, 32.671574>,  <46.657879, 34.286003, 32.648758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333927, 34.052475, 32.671574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022380, -0.127915, -0.991533,
		0.586171, -0.801744, 0.116661,
		-0.809878, -0.583819, 0.057037,
		46.090965, 33.877331, 32.688686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760010, 33.749268, 32.186615>,  <46.657879, 34.286003, 32.648758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760010, 33.749268, 32.186615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.371841, 33.708366, 32.274090>,  <46.138939, 33.683826, 32.326572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.371841, 33.708366, 32.274090>,  <46.760010, 33.749268, 32.186615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371841, 33.708366, 32.274090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192619, -0.218098, -0.956729,
		0.145521, -0.970555, 0.191952,
		-0.970423, -0.102251, 0.218686,
		46.080715, 33.677692, 32.339695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567978, 33.079964, 32.094841>,  <46.760010, 33.749268, 32.186615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567978, 33.079964, 32.094841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.248619, 33.311939, 32.030048>,  <46.057003, 33.451126, 31.991173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.248619, 33.311939, 32.030048>,  <46.567978, 33.079964, 32.094841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248619, 33.311939, 32.030048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036690, -0.221657, -0.974434,
		-0.601018, -0.783924, 0.155691,
		-0.798393, 0.579940, -0.161982,
		46.009102, 33.485920, 31.981453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157482, 32.681995, 31.569771>,  <46.567978, 33.079964, 32.094841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157482, 32.681995, 31.569771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.994770, 33.047234, 31.581011>,  <45.897141, 33.266376, 31.587755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.994770, 33.047234, 31.581011>,  <46.157482, 32.681995, 31.569771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994770, 33.047234, 31.581011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102633, -0.015116, -0.994604,
		-0.907741, -0.407473, 0.099862,
		-0.406784, 0.913092, 0.028099,
		45.872734, 33.321159, 31.589441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468712, 32.630924, 31.254755>,  <46.157482, 32.681995, 31.569771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468712, 32.630924, 31.254755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.617741, 32.999031, 31.206928>,  <45.707157, 33.219894, 31.178232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.617741, 32.999031, 31.206928>,  <45.468712, 32.630924, 31.254755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617741, 32.999031, 31.206928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238995, -0.029346, -0.970577,
		-0.896702, 0.390182, 0.209007,
		0.372568, 0.920270, -0.119566,
		45.729511, 33.275112, 31.171059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913067, 33.051929, 30.975929>,  <45.468712, 32.630924, 31.254755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913067, 33.051929, 30.975929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.229103, 33.285530, 30.901426>,  <45.418724, 33.425690, 30.856724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.229103, 33.285530, 30.901426>,  <44.913067, 33.051929, 30.975929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229103, 33.285530, 30.901426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348920, 0.178643, -0.919968,
		-0.503991, 0.791850, 0.344915,
		0.790094, 0.584003, -0.186258,
		45.466129, 33.460732, 30.845549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563152, 33.411228, 30.544333>,  <44.913067, 33.051929, 30.975929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563152, 33.411228, 30.544333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948784, 33.511551, 30.509367>,  <45.180164, 33.571743, 30.488388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948784, 33.511551, 30.509367>,  <44.563152, 33.411228, 30.544333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948784, 33.511551, 30.509367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147065, 0.230026, -0.962008,
		-0.221171, 0.940311, 0.258649,
		0.964083, 0.250806, -0.087411,
		45.238010, 33.586792, 30.483143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616001, 34.016670, 30.159000>,  <44.563152, 33.411228, 30.544333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616001, 34.016670, 30.159000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.945122, 33.797073, 30.100204>,  <45.142593, 33.665314, 30.064928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.945122, 33.797073, 30.100204>,  <44.616001, 34.016670, 30.159000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.945122, 33.797073, 30.100204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189920, -0.021838, -0.981557,
		0.535658, 0.835542, -0.122234,
		0.822801, -0.548993, -0.146988,
		45.191963, 33.632374, 30.056108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973297, 34.278431, 29.636471>,  <44.616001, 34.016670, 30.159000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973297, 34.278431, 29.636471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119061, 33.906410, 29.617670>,  <45.206520, 33.683197, 29.606390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119061, 33.906410, 29.617670>,  <44.973297, 34.278431, 29.636471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119061, 33.906410, 29.617670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030468, 0.062353, -0.997589,
		0.930740, 0.362098, 0.051059,
		0.364409, -0.930052, -0.047003,
		45.228382, 33.627396, 29.603569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552189, 34.281120, 29.220701>,  <44.973297, 34.278431, 29.636471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552189, 34.281120, 29.220701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.416325, 33.904911, 29.218084>,  <45.334808, 33.679184, 29.216515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.416325, 33.904911, 29.218084>,  <45.552189, 34.281120, 29.220701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416325, 33.904911, 29.218084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008544, 0.003868, -0.999956,
		0.940511, -0.339698, 0.006722,
		-0.339657, -0.940527, -0.006540,
		45.314426, 33.622753, 29.216122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.860153, 33.921227, 28.648520>,  <45.552189, 34.281120, 29.220701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.860153, 33.921227, 28.648520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.564732, 33.667820, 28.740784>,  <45.387478, 33.515778, 28.796143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.564732, 33.667820, 28.740784>,  <45.860153, 33.921227, 28.648520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564732, 33.667820, 28.740784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067206, -0.271242, -0.960162,
		0.670841, -0.724629, 0.157750,
		-0.738550, -0.633514, 0.230660,
		45.343166, 33.477764, 28.809982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067680, 33.284256, 28.391388>,  <45.860153, 33.921227, 28.648520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067680, 33.284256, 28.391388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.670467, 33.250912, 28.424706>,  <45.432140, 33.230907, 28.444696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.670467, 33.250912, 28.424706>,  <46.067680, 33.284256, 28.391388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670467, 33.250912, 28.424706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054223, -0.304344, -0.951018,
		0.104626, -0.948908, 0.297703,
		-0.993032, -0.083359, 0.083295,
		45.372559, 33.225903, 28.449694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887794, 32.636539, 28.148428>,  <46.067680, 33.284256, 28.391388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887794, 32.636539, 28.148428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539978, 32.833344, 28.131380>,  <45.331287, 32.951427, 28.121151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539978, 32.833344, 28.131380>,  <45.887794, 32.636539, 28.148428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539978, 32.833344, 28.131380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037956, -0.152627, -0.987555,
		-0.492395, -0.857104, 0.151390,
		-0.869543, 0.492013, -0.042621,
		45.279114, 32.980946, 28.118593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421127, 32.080730, 27.777237>,  <45.887794, 32.636539, 28.148428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421127, 32.080730, 27.777237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290379, 32.458714, 27.771378>,  <45.211929, 32.685505, 27.767862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290379, 32.458714, 27.771378>,  <45.421127, 32.080730, 27.777237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290379, 32.458714, 27.771378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278540, -0.111136, -0.953973,
		-0.903091, -0.307743, 0.299535,
		-0.326867, 0.944957, -0.014647,
		45.192318, 32.742199, 27.766983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665112, 32.130787, 27.617348>,  <45.421127, 32.080730, 27.777237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665112, 32.130787, 27.617348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824959, 32.486801, 27.529581>,  <44.920868, 32.700409, 27.476921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824959, 32.486801, 27.529581>,  <44.665112, 32.130787, 27.617348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824959, 32.486801, 27.529581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581571, 0.061141, -0.811195,
		-0.708575, 0.451778, 0.542051,
		0.399621, 0.890033, -0.219418,
		44.944843, 32.753811, 27.463757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.673370, 35.613049, 39.971092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345486, 35.385899, 39.941200>,  <40.148754, 35.249607, 39.923264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345486, 35.385899, 39.941200>,  <40.673370, 35.613049, 39.971092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345486, 35.385899, 39.941200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095157, -0.006356, -0.995442,
		0.564816, -0.823087, 0.059248,
		-0.819712, -0.567879, -0.074733,
		40.099571, 35.215534, 39.918781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816605, 35.206654, 39.406994>,  <40.673370, 35.613049, 39.971092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816605, 35.206654, 39.406994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425312, 35.130371, 39.439743>,  <40.190536, 35.084602, 39.459393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425312, 35.130371, 39.439743>,  <40.816605, 35.206654, 39.406994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425312, 35.130371, 39.439743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065462, -0.090834, -0.993712,
		0.196943, -0.977436, 0.076372,
		-0.978227, -0.190705, 0.081874,
		40.131844, 35.073158, 39.464306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763435, 34.547428, 39.164566>,  <40.816605, 35.206654, 39.406994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763435, 34.547428, 39.164566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426479, 34.760353, 39.131054>,  <40.224304, 34.888107, 39.110947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426479, 34.760353, 39.131054>,  <40.763435, 34.547428, 39.164566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426479, 34.760353, 39.131054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017797, -0.182866, -0.982977,
		-0.538573, -0.826560, 0.163518,
		-0.842391, 0.532315, -0.083777,
		40.173763, 34.920048, 39.105923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369125, 34.162445, 38.677551>,  <40.763435, 34.547428, 39.164566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369125, 34.162445, 38.677551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183411, 34.516464, 38.664101>,  <40.071980, 34.728874, 38.656029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183411, 34.516464, 38.664101>,  <40.369125, 34.162445, 38.677551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183411, 34.516464, 38.664101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136667, -0.109105, -0.984590,
		-0.875075, -0.452540, 0.171613,
		-0.464291, 0.885044, -0.033628,
		40.044125, 34.781979, 38.654011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927895, 34.050179, 38.119602>,  <40.369125, 34.162445, 38.677551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927895, 34.050179, 38.119602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913132, 34.445774, 38.176918>,  <39.904274, 34.683132, 38.211308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913132, 34.445774, 38.176918>,  <39.927895, 34.050179, 38.119602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913132, 34.445774, 38.176918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375380, 0.119166, -0.919179,
		-0.926136, -0.087708, 0.366850,
		-0.036903, 0.988993, 0.143288,
		39.902061, 34.742474, 38.219906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289967, 34.227661, 37.860493>,  <39.927895, 34.050179, 38.119602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289967, 34.227661, 37.860493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494457, 34.571384, 37.854496>,  <39.617153, 34.777618, 37.850899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494457, 34.571384, 37.854496>,  <39.289967, 34.227661, 37.860493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494457, 34.571384, 37.854496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512668, 0.290909, -0.807802,
		-0.689794, 0.420658, 0.589264,
		0.511231, 0.859313, -0.014990,
		39.647827, 34.829178, 37.849998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794601, 34.718716, 37.852669>,  <39.289967, 34.227661, 37.860493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794601, 34.718716, 37.852669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132492, 34.868061, 37.699287>,  <39.335228, 34.957668, 37.607258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132492, 34.868061, 37.699287>,  <38.794601, 34.718716, 37.852669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132492, 34.868061, 37.699287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526575, 0.451744, -0.720171,
		-0.095662, 0.810265, 0.578204,
		0.844730, 0.373360, -0.383450,
		39.385910, 34.980068, 37.584251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616482, 35.322990, 37.618473>,  <38.794601, 34.718716, 37.852669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616482, 35.322990, 37.618473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961018, 35.247822, 37.429672>,  <39.167740, 35.202721, 37.316391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961018, 35.247822, 37.429672>,  <38.616482, 35.322990, 37.618473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961018, 35.247822, 37.429672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371427, 0.400934, -0.837433,
		0.346611, 0.896626, 0.275541,
		0.861338, -0.187921, -0.471999,
		39.219418, 35.191444, 37.288071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786709, 35.933445, 37.264408>,  <38.616482, 35.322990, 37.618473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786709, 35.933445, 37.264408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995785, 35.650879, 37.073505>,  <39.121231, 35.481339, 36.958961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995785, 35.650879, 37.073505>,  <38.786709, 35.933445, 37.264408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995785, 35.650879, 37.073505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383337, 0.305288, -0.871695,
		0.761480, 0.638575, -0.111225,
		0.522687, -0.706414, -0.477260,
		39.152592, 35.438953, 36.930328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047192, 36.251324, 36.667660>,  <38.786709, 35.933445, 37.264408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047192, 36.251324, 36.667660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054379, 35.859848, 36.585842>,  <39.058693, 35.624962, 36.536751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054379, 35.859848, 36.585842>,  <39.047192, 36.251324, 36.667660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054379, 35.859848, 36.585842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428794, 0.177268, -0.885840,
		0.903224, 0.103629, -0.416471,
		0.017971, -0.978692, -0.204548,
		39.059769, 35.566242, 36.524479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256695, 36.251850, 35.969105>,  <39.047192, 36.251324, 36.667660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256695, 36.251850, 35.969105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114159, 35.879181, 35.997410>,  <39.028637, 35.655579, 36.014393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114159, 35.879181, 35.997410>,  <39.256695, 36.251850, 35.969105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114159, 35.879181, 35.997410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339395, 0.058501, -0.938823,
		0.870535, -0.358561, -0.337051,
		-0.356343, -0.931671, 0.070766,
		39.007256, 35.599678, 36.018639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451115, 35.776192, 35.289463>,  <39.256695, 36.251850, 35.969105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451115, 35.776192, 35.289463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123096, 35.617756, 35.454697>,  <38.926285, 35.522694, 35.553837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123096, 35.617756, 35.454697>,  <39.451115, 35.776192, 35.289463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123096, 35.617756, 35.454697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482948, 0.091672, -0.870837,
		0.307066, -0.913622, -0.266469,
		-0.820044, -0.396095, 0.413083,
		38.877083, 35.498928, 35.578621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236938, 35.050373, 35.049259>,  <39.451115, 35.776192, 35.289463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236938, 35.050373, 35.049259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953388, 35.312714, 35.153069>,  <38.783257, 35.470119, 35.215355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953388, 35.312714, 35.153069>,  <39.236938, 35.050373, 35.049259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953388, 35.312714, 35.153069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352344, -0.010522, -0.935811,
		-0.611022, -0.754817, 0.238545,
		-0.708876, 0.655852, 0.259526,
		38.740726, 35.509468, 35.230927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679684, 34.667637, 34.669239>,  <39.236938, 35.050373, 35.049259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679684, 34.667637, 34.669239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805996, 34.383007, 34.418182>,  <39.881783, 34.212227, 34.267548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805996, 34.383007, 34.418182>,  <39.679684, 34.667637, 34.669239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805996, 34.383007, 34.418182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826388, -0.531294, 0.186574,
		-0.466227, 0.459763, -0.755811,
		0.315778, -0.711579, -0.627647,
		39.900730, 34.169533, 34.229889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241756, 34.442413, 34.047207>,  <39.679684, 34.667637, 34.669239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241756, 34.442413, 34.047207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454624, 34.122932, 34.159534>,  <39.582344, 33.931244, 34.226933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454624, 34.122932, 34.159534>,  <39.241756, 34.442413, 34.047207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454624, 34.122932, 34.159534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846063, -0.513911, 0.141680,
		0.031158, -0.312992, -0.949245,
		0.532172, -0.798706, 0.280823,
		39.614277, 33.883320, 34.243782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953163, 33.774208, 33.645618>,  <39.241756, 34.442413, 34.047207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953163, 33.774208, 33.645618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155621, 33.665157, 33.972908>,  <39.277096, 33.599728, 34.169281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155621, 33.665157, 33.972908>,  <38.953163, 33.774208, 33.645618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155621, 33.665157, 33.972908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827472, -0.420950, 0.371606,
		0.243121, -0.865144, -0.438655,
		0.506144, -0.272629, 0.818224,
		39.307465, 33.583366, 34.218376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658417, 33.107059, 33.752846>,  <38.953163, 33.774208, 33.645618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658417, 33.107059, 33.752846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842514, 33.188282, 34.098549>,  <38.952972, 33.237015, 34.305973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842514, 33.188282, 34.098549>,  <38.658417, 33.107059, 33.752846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842514, 33.188282, 34.098549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727187, -0.472231, 0.498195,
		0.509291, -0.857769, -0.069683,
		0.460242, 0.203053, 0.864261,
		38.980587, 33.249199, 34.357826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777035, 32.455124, 34.062691>,  <38.658417, 33.107059, 33.752846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777035, 32.455124, 34.062691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795425, 32.710083, 34.370358>,  <38.806461, 32.863056, 34.554958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795425, 32.710083, 34.370358>,  <38.777035, 32.455124, 34.062691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795425, 32.710083, 34.370358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457515, -0.671038, 0.583427,
		0.888013, -0.378728, 0.260766,
		0.045977, 0.637395, 0.769164,
		38.809219, 32.901302, 34.601109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028648, 32.054115, 34.610989>,  <38.777035, 32.455124, 34.062691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028648, 32.054115, 34.610989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838837, 32.375160, 34.755566>,  <38.724949, 32.567787, 34.842312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838837, 32.375160, 34.755566>,  <39.028648, 32.054115, 34.610989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838837, 32.375160, 34.755566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259176, -0.519814, 0.814016,
		0.841222, 0.292593, 0.454682,
		-0.474525, 0.802610, 0.361446,
		38.696480, 32.615944, 34.863998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272678, 31.944843, 35.199203>,  <39.028648, 32.054115, 34.610989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272678, 31.944843, 35.199203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970295, 32.196590, 35.271221>,  <38.788864, 32.347637, 35.314430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970295, 32.196590, 35.271221>,  <39.272678, 31.944843, 35.199203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970295, 32.196590, 35.271221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254048, -0.535545, 0.805389,
		0.603307, 0.563105, 0.564742,
		-0.755963, 0.629368, 0.180042,
		38.743507, 32.385403, 35.325233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278427, 32.049816, 35.911362>,  <39.272678, 31.944843, 35.199203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278427, 32.049816, 35.911362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912907, 32.187752, 35.825523>,  <38.693596, 32.270512, 35.774021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912907, 32.187752, 35.825523>,  <39.278427, 32.049816, 35.911362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912907, 32.187752, 35.825523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354254, -0.418252, 0.836403,
		0.198666, 0.840329, 0.504359,
		-0.913803, 0.344837, -0.214598,
		38.638767, 32.291203, 35.761143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042133, 32.438122, 36.546314>,  <39.278427, 32.049816, 35.911362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042133, 32.438122, 36.546314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713573, 32.319611, 36.351368>,  <38.516438, 32.248505, 36.234398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713573, 32.319611, 36.351368>,  <39.042133, 32.438122, 36.546314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713573, 32.319611, 36.351368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453987, -0.177631, 0.873122,
		-0.345257, 0.938439, 0.011400,
		-0.821397, -0.296277, -0.487368,
		38.467155, 32.230728, 36.205158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493793, 32.836258, 36.896786>,  <39.042133, 32.438122, 36.546314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493793, 32.836258, 36.896786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330997, 32.509617, 36.733070>,  <38.233318, 32.313633, 36.634842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330997, 32.509617, 36.733070>,  <38.493793, 32.836258, 36.896786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330997, 32.509617, 36.733070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499460, -0.176213, 0.848227,
		-0.764785, 0.549649, -0.336141,
		-0.406995, -0.816600, -0.409292,
		38.208900, 32.264637, 36.610283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793854, 32.824604, 37.240189>,  <38.493793, 32.836258, 36.896786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793854, 32.824604, 37.240189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861412, 32.453167, 37.108017>,  <37.901947, 32.230305, 37.028713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861412, 32.453167, 37.108017>,  <37.793854, 32.824604, 37.240189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861412, 32.453167, 37.108017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427990, -0.371087, 0.824087,
		-0.887862, 0.002236, -0.460105,
		0.168897, -0.928595, -0.330431,
		37.912083, 32.174587, 37.008888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224529, 32.450481, 37.394787>,  <37.793854, 32.824604, 37.240189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224529, 32.450481, 37.394787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507225, 32.171127, 37.349560>,  <37.676842, 32.003517, 37.322422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507225, 32.171127, 37.349560>,  <37.224529, 32.450481, 37.394787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507225, 32.171127, 37.349560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385771, -0.514385, 0.765891,
		-0.593045, -0.497665, -0.632951,
		0.706738, -0.698382, -0.113069,
		37.719246, 31.961613, 37.315639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791302, 31.803379, 37.361687>,  <37.224529, 32.450481, 37.394787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791302, 31.803379, 37.361687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171288, 31.707718, 37.442070>,  <37.399277, 31.650322, 37.490299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171288, 31.707718, 37.442070>,  <36.791302, 31.803379, 37.361687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171288, 31.707718, 37.442070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280566, -0.370418, 0.885479,
		-0.137327, -0.897551, -0.418980,
		0.949960, -0.239152, 0.200953,
		37.456276, 31.635973, 37.502357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773899, 31.216602, 37.725006>,  <36.791302, 31.803379, 37.361687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773899, 31.216602, 37.725006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141232, 31.330488, 37.834988>,  <37.361633, 31.398819, 37.900978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141232, 31.330488, 37.834988>,  <36.773899, 31.216602, 37.725006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141232, 31.330488, 37.834988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198095, -0.270789, 0.942036,
		0.342664, -0.919571, -0.192275,
		0.918335, 0.284713, 0.274953,
		37.416733, 31.415901, 37.917473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021145, 30.730715, 38.141544>,  <36.773899, 31.216602, 37.725006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021145, 30.730715, 38.141544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255577, 31.037374, 38.246433>,  <37.396236, 31.221371, 38.309368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255577, 31.037374, 38.246433>,  <37.021145, 30.730715, 38.141544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255577, 31.037374, 38.246433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125562, -0.233785, 0.964147,
		0.800467, -0.597990, -0.040754,
		0.586078, 0.766650, 0.262222,
		37.431400, 31.267370, 38.325100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688671, 30.130827, 37.909969>,  <37.021145, 30.730715, 38.141544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688671, 30.130827, 37.909969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400967, 29.881905, 38.033520>,  <36.228344, 29.732552, 38.107651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400967, 29.881905, 38.033520>,  <36.688671, 30.130827, 37.909969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400967, 29.881905, 38.033520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425857, 0.043646, -0.903737,
		0.548919, -0.781558, -0.296406,
		-0.719260, -0.622304, 0.308873,
		36.185188, 29.695213, 38.126183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564880, 29.553810, 37.422184>,  <36.688671, 30.130827, 37.909969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564880, 29.553810, 37.422184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214394, 29.546165, 37.614799>,  <36.004101, 29.541578, 37.730370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214394, 29.546165, 37.614799>,  <36.564880, 29.553810, 37.422184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214394, 29.546165, 37.614799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480891, 0.099893, -0.871071,
		-0.031455, -0.994815, -0.096719,
		-0.876216, -0.019112, 0.481540,
		35.951530, 29.540432, 37.759262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185978, 28.950033, 37.105068>,  <36.564880, 29.553810, 37.422184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185978, 28.950033, 37.105068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947044, 29.227041, 37.266861>,  <35.803684, 29.393246, 37.363937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947044, 29.227041, 37.266861>,  <36.185978, 28.950033, 37.105068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947044, 29.227041, 37.266861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443616, 0.134861, -0.886012,
		-0.668132, -0.708679, 0.226657,
		-0.597331, 0.692522, 0.404487,
		35.767845, 29.434797, 37.388206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563354, 28.843464, 36.745941>,  <36.185978, 28.950033, 37.105068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563354, 28.843464, 36.745941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445034, 29.196625, 36.891808>,  <35.374043, 29.408522, 36.979328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445034, 29.196625, 36.891808>,  <35.563354, 28.843464, 36.745941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445034, 29.196625, 36.891808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376019, 0.243315, -0.894096,
		-0.878130, -0.401594, 0.260017,
		-0.295798, 0.882904, 0.364669,
		35.356293, 29.461496, 37.001209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761417, 28.876907, 36.552437>,  <35.563354, 28.843464, 36.745941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761417, 28.876907, 36.552437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934464, 29.230963, 36.620987>,  <35.038292, 29.443396, 36.662117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934464, 29.230963, 36.620987>,  <34.761417, 28.876907, 36.552437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934464, 29.230963, 36.620987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214749, 0.285783, -0.933922,
		-0.875630, 0.367225, 0.313717,
		0.432615, 0.885141, 0.171379,
		35.064247, 29.496506, 36.672401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239838, 29.328197, 36.464020>,  <34.761417, 28.876907, 36.552437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239838, 29.328197, 36.464020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558308, 29.565487, 36.416378>,  <34.749390, 29.707861, 36.387794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558308, 29.565487, 36.416378>,  <34.239838, 29.328197, 36.464020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558308, 29.565487, 36.416378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443793, 0.438742, -0.781380,
		-0.411279, 0.674974, 0.612585,
		0.796177, 0.593225, -0.119103,
		34.797161, 29.743454, 36.380646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007030, 29.964458, 36.363068>,  <34.239838, 29.328197, 36.464020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007030, 29.964458, 36.363068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377789, 30.001747, 36.217644>,  <34.600243, 30.024120, 36.130390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377789, 30.001747, 36.217644>,  <34.007030, 29.964458, 36.363068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377789, 30.001747, 36.217644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375169, 0.258010, -0.890325,
		0.010807, 0.961634, 0.274121,
		0.926894, 0.093220, -0.363563,
		34.655857, 30.029713, 36.108574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940044, 30.478621, 35.961433>,  <34.007030, 29.964458, 36.363068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940044, 30.478621, 35.961433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298286, 30.346502, 35.842239>,  <34.513233, 30.267231, 35.770725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298286, 30.346502, 35.842239>,  <33.940044, 30.478621, 35.961433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298286, 30.346502, 35.842239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160948, 0.383879, -0.909249,
		0.414710, 0.862288, 0.290644,
		0.895607, -0.330296, -0.297982,
		34.566967, 30.247414, 35.752846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385902, 31.131269, 35.789017>,  <33.940044, 30.478621, 35.961433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385902, 31.131269, 35.789017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522602, 30.813789, 35.587719>,  <34.604622, 30.623302, 35.466942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522602, 30.813789, 35.587719>,  <34.385902, 31.131269, 35.789017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522602, 30.813789, 35.587719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086063, 0.559662, -0.824240,
		0.935842, 0.238374, 0.259572,
		0.341749, -0.793698, -0.503240,
		34.625126, 30.575680, 35.436749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706795, 31.391562, 35.274986>,  <34.385902, 31.131269, 35.789017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706795, 31.391562, 35.274986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757687, 31.016436, 35.145794>,  <34.788219, 30.791359, 35.068279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757687, 31.016436, 35.145794>,  <34.706795, 31.391562, 35.274986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757687, 31.016436, 35.145794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009703, 0.326785, -0.945049,
		0.991826, 0.117101, 0.050675,
		0.127226, -0.937816, -0.322978,
		34.795853, 30.735090, 35.048901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245274, 31.405491, 34.721458>,  <34.706795, 31.391562, 35.274986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245274, 31.405491, 34.721458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007206, 31.088053, 34.670891>,  <34.864365, 30.897591, 34.640549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007206, 31.088053, 34.670891>,  <35.245274, 31.405491, 34.721458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007206, 31.088053, 34.670891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087482, 0.092397, -0.991872,
		0.798824, -0.601391, 0.014434,
		-0.595170, -0.793594, -0.126420,
		34.828655, 30.849974, 34.632965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671993, 30.829479, 34.512352>,  <35.245274, 31.405491, 34.721458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671993, 30.829479, 34.512352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296562, 30.886061, 34.386459>,  <35.071304, 30.920010, 34.310925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296562, 30.886061, 34.386459>,  <35.671993, 30.829479, 34.512352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296562, 30.886061, 34.386459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342662, 0.274785, -0.898374,
		-0.040595, -0.951043, -0.306379,
		-0.938582, 0.141454, -0.314732,
		35.014988, 30.928497, 34.292038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.478577, 28.484608, 41.373848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112980, 28.595087, 41.492729>,  <36.893620, 28.661375, 41.564056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112980, 28.595087, 41.492729>,  <37.478577, 28.484608, 41.373848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112980, 28.595087, 41.492729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327499, -0.069834, -0.942268,
		-0.239499, -0.958560, 0.154283,
		-0.913994, 0.276200, 0.297202,
		36.838783, 28.677946, 41.581890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048416, 27.937489, 41.029896>,  <37.478577, 28.484608, 41.373848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048416, 27.937489, 41.029896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844185, 28.271492, 41.111946>,  <36.721645, 28.471893, 41.161175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844185, 28.271492, 41.111946>,  <37.048416, 27.937489, 41.029896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844185, 28.271492, 41.111946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249934, 0.084135, -0.964601,
		-0.822707, -0.543767, 0.165740,
		-0.510574, 0.835008, 0.205125,
		36.691013, 28.521994, 41.173485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444370, 27.832073, 40.698269>,  <37.048416, 27.937489, 41.029896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444370, 27.832073, 40.698269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427094, 28.229855, 40.736629>,  <36.416729, 28.468523, 40.759647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.427094, 28.229855, 40.736629>,  <36.444370, 27.832073, 40.698269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427094, 28.229855, 40.736629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200495, 0.085410, -0.975965,
		-0.978742, -0.061379, 0.195694,
		-0.043189, 0.994454, 0.095901,
		36.414135, 28.528191, 40.765400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831272, 28.118326, 40.236538>,  <36.444370, 27.832073, 40.698269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831272, 28.118326, 40.236538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.041946, 28.445604, 40.328758>,  <36.168350, 28.641972, 40.384090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.041946, 28.445604, 40.328758>,  <35.831272, 28.118326, 40.236538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041946, 28.445604, 40.328758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131247, 0.346239, -0.928920,
		-0.839867, 0.458989, 0.289745,
		0.526685, 0.818197, 0.230554,
		36.199951, 28.691063, 40.397926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444786, 28.663054, 40.014282>,  <35.831272, 28.118326, 40.236538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444786, 28.663054, 40.014282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.812889, 28.817329, 40.040745>,  <36.033749, 28.909895, 40.056622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.812889, 28.817329, 40.040745>,  <35.444786, 28.663054, 40.014282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812889, 28.817329, 40.040745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069069, 0.326505, -0.942669,
		-0.385178, 0.862925, 0.327107,
		0.920254, 0.385688, 0.066161,
		36.088966, 28.933035, 40.060593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317139, 29.284889, 39.826427>,  <35.444786, 28.663054, 40.014282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317139, 29.284889, 39.826427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.711937, 29.256796, 39.768578>,  <35.948814, 29.239939, 39.733868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.711937, 29.256796, 39.768578>,  <35.317139, 29.284889, 39.826427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711937, 29.256796, 39.768578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099162, 0.442118, -0.891459,
		0.126552, 0.894203, 0.429402,
		0.986991, -0.070236, -0.144622,
		36.008034, 29.235725, 39.725189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536877, 29.947067, 39.595306>,  <35.317139, 29.284889, 39.826427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536877, 29.947067, 39.595306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800674, 29.665369, 39.490154>,  <35.958954, 29.496351, 39.427063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800674, 29.665369, 39.490154>,  <35.536877, 29.947067, 39.595306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800674, 29.665369, 39.490154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047639, 0.309852, -0.949591,
		0.750198, 0.638774, 0.170796,
		0.659495, -0.704244, -0.262881,
		35.998524, 29.454096, 39.411289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080715, 30.297037, 39.136272>,  <35.536877, 29.947067, 39.595306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080715, 30.297037, 39.136272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.090038, 29.900946, 39.081284>,  <36.095634, 29.663290, 39.048290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.090038, 29.900946, 39.081284>,  <36.080715, 30.297037, 39.136272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090038, 29.900946, 39.081284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162650, 0.139438, -0.976782,
		0.986409, 0.000409, 0.164311,
		0.023311, -0.990231, -0.137477,
		36.097031, 29.603876, 39.040039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706089, 30.117748, 38.682491>,  <36.080715, 30.297037, 39.136272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706089, 30.117748, 38.682491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.437237, 29.823105, 38.652431>,  <36.275925, 29.646318, 38.634396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.437237, 29.823105, 38.652431>,  <36.706089, 30.117748, 38.682491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437237, 29.823105, 38.652431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039928, 0.137401, -0.989710,
		0.739357, -0.662213, -0.121763,
		-0.672129, -0.736611, -0.075148,
		36.235600, 29.602121, 38.629887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453918, 30.379120, 38.598225>,  <36.706089, 30.117748, 38.682491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453918, 30.379120, 38.598225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486835, 30.772623, 38.662037>,  <37.506584, 31.008724, 38.700325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486835, 30.772623, 38.662037>,  <37.453918, 30.379120, 38.598225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486835, 30.772623, 38.662037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115223, -0.149606, 0.982009,
		0.989925, -0.099194, 0.101040,
		0.082293, 0.983758, 0.159528,
		37.511524, 31.067751, 38.709896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971684, 30.389103, 39.047306>,  <37.453918, 30.379120, 38.598225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971684, 30.389103, 39.047306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790272, 30.741650, 39.100227>,  <37.681423, 30.953178, 39.131981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790272, 30.741650, 39.100227>,  <37.971684, 30.389103, 39.047306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790272, 30.741650, 39.100227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039126, -0.167993, 0.985011,
		0.890381, 0.441557, 0.110674,
		-0.453531, 0.881366, 0.132302,
		37.654213, 31.006060, 39.139919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381699, 30.710943, 39.476349>,  <37.971684, 30.389103, 39.047306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381699, 30.710943, 39.476349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029388, 30.896534, 39.514194>,  <37.818001, 31.007889, 39.536903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.029388, 30.896534, 39.514194>,  <38.381699, 30.710943, 39.476349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029388, 30.896534, 39.514194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086125, -0.039518, 0.995500,
		0.465629, 0.884965, -0.005154,
		-0.880779, 0.463978, 0.094618,
		37.765156, 31.035727, 39.542580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579742, 31.380066, 39.583645>,  <38.381699, 30.710943, 39.476349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579742, 31.380066, 39.583645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.219215, 31.290205, 39.731785>,  <38.002899, 31.236288, 39.820667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.219215, 31.290205, 39.731785>,  <38.579742, 31.380066, 39.583645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219215, 31.290205, 39.731785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386862, -0.032900, 0.921550,
		-0.194845, 0.973883, 0.116564,
		-0.901317, -0.224653, 0.370348,
		37.948822, 31.222809, 39.842888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675735, 31.678022, 40.178532>,  <38.579742, 31.380066, 39.583645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675735, 31.678022, 40.178532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.324593, 31.491913, 40.223927>,  <38.113907, 31.380247, 40.251163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.324593, 31.491913, 40.223927>,  <38.675735, 31.678022, 40.178532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324593, 31.491913, 40.223927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067961, 0.113550, 0.991205,
		-0.474068, 0.877854, -0.068061,
		-0.877862, -0.465273, 0.113490,
		38.061234, 31.352331, 40.257973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195679, 32.067223, 40.629192>,  <38.675735, 31.678022, 40.178532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195679, 32.067223, 40.629192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053429, 31.693544, 40.640617>,  <37.968079, 31.469337, 40.647472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053429, 31.693544, 40.640617>,  <38.195679, 32.067223, 40.629192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053429, 31.693544, 40.640617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032346, 0.042846, 0.998558,
		-0.934070, 0.354185, -0.045454,
		-0.355621, -0.934193, 0.028565,
		37.946743, 31.413286, 40.649185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566414, 32.077362, 41.028240>,  <38.195679, 32.067223, 40.629192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566414, 32.077362, 41.028240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717476, 31.707335, 41.012115>,  <37.808113, 31.485317, 41.002441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717476, 31.707335, 41.012115>,  <37.566414, 32.077362, 41.028240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717476, 31.707335, 41.012115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027843, -0.054865, 0.998106,
		-0.925529, -0.375814, -0.046477,
		0.377652, -0.925069, -0.040316,
		37.830772, 31.429813, 41.000019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145813, 31.606358, 41.482929>,  <37.566414, 32.077362, 41.028240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145813, 31.606358, 41.482929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486103, 31.400248, 41.441456>,  <37.690277, 31.276581, 41.416573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486103, 31.400248, 41.441456>,  <37.145813, 31.606358, 41.482929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486103, 31.400248, 41.441456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013465, -0.175841, 0.984326,
		-0.525431, -0.838792, -0.142655,
		0.850730, -0.515275, -0.103687,
		37.741322, 31.245665, 41.410351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057438, 30.999269, 41.871502>,  <37.145813, 31.606358, 41.482929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057438, 30.999269, 41.871502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451920, 31.055902, 41.837219>,  <37.688610, 31.089882, 41.816650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451920, 31.055902, 41.837219>,  <37.057438, 30.999269, 41.871502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451920, 31.055902, 41.837219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111492, -0.185597, 0.976280,
		0.122319, -0.972372, -0.198823,
		0.986209, 0.141584, -0.085709,
		37.747784, 31.098377, 41.811508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399120, 30.478172, 42.196625>,  <37.057438, 30.999269, 41.871502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399120, 30.478172, 42.196625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.685917, 30.757004, 42.195877>,  <37.857994, 30.924303, 42.195427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.685917, 30.757004, 42.195877>,  <37.399120, 30.478172, 42.196625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685917, 30.757004, 42.195877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094478, -0.094517, 0.991030,
		0.690649, -0.710738, -0.133627,
		0.716993, 0.697078, -0.001871,
		37.901016, 30.966127, 42.195316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871502, 30.103598, 42.585247>,  <37.399120, 30.478172, 42.196625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871502, 30.103598, 42.585247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002323, 30.481472, 42.595032>,  <38.080818, 30.708197, 42.600903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002323, 30.481472, 42.595032>,  <37.871502, 30.103598, 42.585247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002323, 30.481472, 42.595032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340559, -0.141967, 0.929443,
		0.881507, -0.295651, -0.368153,
		0.327056, 0.944688, 0.024459,
		38.100441, 30.764879, 42.602367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490761, 30.022869, 42.891369>,  <37.871502, 30.103598, 42.585247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490761, 30.022869, 42.891369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440063, 30.417667, 42.930920>,  <38.409645, 30.654547, 42.954651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440063, 30.417667, 42.930920>,  <38.490761, 30.022869, 42.891369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440063, 30.417667, 42.930920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357402, -0.047541, 0.932740,
		0.925310, 0.153560, -0.346728,
		-0.126747, 0.986995, 0.098873,
		38.402039, 30.713766, 42.960583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168827, 30.228386, 43.253895>,  <38.490761, 30.022869, 42.891369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168827, 30.228386, 43.253895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886620, 30.506443, 43.309063>,  <38.717297, 30.673277, 43.342163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886620, 30.506443, 43.309063>,  <39.168827, 30.228386, 43.253895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886620, 30.506443, 43.309063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238524, 0.049662, 0.969866,
		0.667344, 0.717156, -0.200845,
		-0.705520, 0.695141, 0.137918,
		38.674965, 30.714985, 43.350437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476059, 30.845972, 43.536800>,  <39.168827, 30.228386, 43.253895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476059, 30.845972, 43.536800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.090664, 30.869848, 43.641212>,  <38.859428, 30.884174, 43.703861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.090664, 30.869848, 43.641212>,  <39.476059, 30.845972, 43.536800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090664, 30.869848, 43.641212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266298, 0.111533, 0.957416,
		0.028037, 0.991966, -0.123356,
		-0.963483, 0.059692, 0.261031,
		38.801620, 30.887756, 43.719521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.826012, 31.927254, 45.500389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218273, 32.005123, 45.492180>,  <33.453629, 32.051846, 45.487255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218273, 32.005123, 45.492180>,  <32.826012, 31.927254, 45.500389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218273, 32.005123, 45.492180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049146, 0.143384, -0.988446,
		-0.189484, 0.970331, 0.150178,
		0.980653, 0.194675, -0.020519,
		33.512470, 32.063526, 45.486023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956062, 32.571865, 45.121365>,  <32.826012, 31.927254, 45.500389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956062, 32.571865, 45.121365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296494, 32.362202, 45.109173>,  <33.500751, 32.236404, 45.101856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296494, 32.362202, 45.109173>,  <32.956062, 32.571865, 45.121365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296494, 32.362202, 45.109173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044341, -0.013902, -0.998920,
		0.523170, 0.851506, -0.035073,
		0.851074, -0.524160, -0.030484,
		33.551815, 32.204952, 45.100029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236195, 33.007225, 44.664314>,  <32.956062, 32.571865, 45.121365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236195, 33.007225, 44.664314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455082, 32.672432, 44.662849>,  <33.586414, 32.471558, 44.661972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455082, 32.672432, 44.662849>,  <33.236195, 33.007225, 44.664314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455082, 32.672432, 44.662849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101129, 0.070459, -0.992375,
		0.830857, 0.542678, 0.123200,
		0.547221, -0.836980, -0.003661,
		33.619247, 32.421337, 44.661751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793022, 33.265259, 44.259335>,  <33.236195, 33.007225, 44.664314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793022, 33.265259, 44.259335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784943, 32.865341, 44.260578>,  <33.780094, 32.625393, 44.261326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784943, 32.865341, 44.260578>,  <33.793022, 33.265259, 44.259335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784943, 32.865341, 44.260578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346734, -0.009925, -0.937911,
		0.937746, -0.017870, 0.346862,
		-0.020203, -0.999791, 0.003111,
		33.778881, 32.565403, 44.261513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464420, 32.957317, 44.022549>,  <33.793022, 33.265259, 44.259335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464420, 32.957317, 44.022549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171543, 32.711452, 43.905190>,  <33.995815, 32.563934, 43.834774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171543, 32.711452, 43.905190>,  <34.464420, 32.957317, 44.022549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171543, 32.711452, 43.905190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353110, 0.025784, -0.935227,
		0.582413, -0.788369, 0.198165,
		-0.732194, -0.614662, -0.293398,
		33.951885, 32.527054, 43.817169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814304, 32.625439, 43.469704>,  <34.464420, 32.957317, 44.022549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814304, 32.625439, 43.469704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.429855, 32.516380, 43.452271>,  <34.199184, 32.450943, 43.441811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.429855, 32.516380, 43.452271>,  <34.814304, 32.625439, 43.469704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429855, 32.516380, 43.452271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089638, -0.158822, -0.983230,
		0.261156, -0.948914, 0.177088,
		-0.961126, -0.272650, -0.043581,
		34.141518, 32.434586, 43.439198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903442, 32.122066, 43.014267>,  <34.814304, 32.625439, 43.469704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903442, 32.122066, 43.014267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514805, 32.216675, 43.017262>,  <34.281620, 32.273441, 43.019058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514805, 32.216675, 43.017262>,  <34.903442, 32.122066, 43.014267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514805, 32.216675, 43.017262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052089, -0.182908, -0.981749,
		-0.230835, -0.954255, 0.190033,
		-0.971597, 0.236521, 0.007485,
		34.223328, 32.287632, 43.019508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657398, 31.567806, 42.679283>,  <34.903442, 32.122066, 43.014267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657398, 31.567806, 42.679283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.421986, 31.888905, 42.640869>,  <34.280739, 32.081562, 42.617821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.421986, 31.888905, 42.640869>,  <34.657398, 31.567806, 42.679283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421986, 31.888905, 42.640869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043267, -0.087346, -0.995238,
		-0.807313, -0.589888, 0.016674,
		-0.588536, 0.802747, -0.096038,
		34.245426, 32.129730, 42.612057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258389, 31.329678, 42.182423>,  <34.657398, 31.567806, 42.679283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258389, 31.329678, 42.182423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206936, 31.726091, 42.196877>,  <34.176064, 31.963940, 42.205551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206936, 31.726091, 42.196877>,  <34.258389, 31.329678, 42.182423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206936, 31.726091, 42.196877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161521, 0.015016, -0.986755,
		-0.978450, -0.132766, 0.158141,
		-0.128633, 0.991033, 0.036137,
		34.168346, 32.023403, 42.207718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631386, 31.416491, 41.846249>,  <34.258389, 31.329678, 42.182423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631386, 31.416491, 41.846249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805756, 31.776375, 41.837387>,  <33.910378, 31.992306, 41.832069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805756, 31.776375, 41.837387>,  <33.631386, 31.416491, 41.846249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805756, 31.776375, 41.837387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201928, 0.073794, -0.976616,
		-0.877038, 0.430203, 0.213846,
		0.435924, 0.899711, -0.022150,
		33.936531, 32.046288, 41.830742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196468, 31.870041, 41.599380>,  <33.631386, 31.416491, 41.846249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196468, 31.870041, 41.599380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515831, 32.105152, 41.547134>,  <33.707451, 32.246220, 41.515785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515831, 32.105152, 41.547134>,  <33.196468, 31.870041, 41.599380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515831, 32.105152, 41.547134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291982, 0.188237, -0.937717,
		-0.526581, 0.786820, 0.321910,
		0.798410, 0.587776, -0.130615,
		33.755356, 32.281487, 41.507950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980591, 32.499802, 41.246174>,  <33.196468, 31.870041, 41.599380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980591, 32.499802, 41.246174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375507, 32.501141, 41.182610>,  <33.612457, 32.501945, 41.144470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375507, 32.501141, 41.182610>,  <32.980591, 32.499802, 41.246174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375507, 32.501141, 41.182610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157772, 0.141881, -0.977230,
		0.019271, 0.989878, 0.140607,
		0.987288, 0.003351, -0.158909,
		33.671692, 32.502148, 41.134937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107548, 33.085716, 40.769329>,  <32.980591, 32.499802, 41.246174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107548, 33.085716, 40.769329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402966, 32.816399, 40.755360>,  <33.580215, 32.654808, 40.746979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402966, 32.816399, 40.755360>,  <33.107548, 33.085716, 40.769329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402966, 32.816399, 40.755360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024845, 0.024587, -0.999389,
		0.673746, 0.738962, 0.001430,
		0.738545, -0.673299, -0.034925,
		33.624531, 32.614410, 40.744881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613251, 33.377800, 40.354000>,  <33.107548, 33.085716, 40.769329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613251, 33.377800, 40.354000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665459, 32.981323, 40.345104>,  <33.696781, 32.743435, 40.339767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665459, 32.981323, 40.345104>,  <33.613251, 33.377800, 40.354000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665459, 32.981323, 40.345104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066531, 0.013624, -0.997691,
		0.989211, 0.131696, -0.064167,
		0.130518, -0.991197, -0.022239,
		33.704613, 32.683964, 40.338432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347584, 33.634029, 40.529209>,  <33.613251, 33.377800, 40.354000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347584, 33.634029, 40.529209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656788, 33.880306, 40.468048>,  <34.842308, 34.028072, 40.431351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656788, 33.880306, 40.468048>,  <34.347584, 33.634029, 40.529209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656788, 33.880306, 40.468048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135069, 0.075763, 0.987935,
		0.619851, -0.784334, -0.024595,
		0.773008, 0.615694, -0.152901,
		34.888691, 34.065014, 40.422176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863907, 33.388878, 41.001469>,  <34.347584, 33.634029, 40.529209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863907, 33.388878, 41.001469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938099, 33.771439, 40.911232>,  <34.982616, 34.000977, 40.857090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938099, 33.771439, 40.911232>,  <34.863907, 33.388878, 41.001469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938099, 33.771439, 40.911232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219128, 0.183541, 0.958278,
		0.957904, -0.227178, -0.175530,
		0.185483, 0.956401, -0.225596,
		34.993744, 34.058357, 40.843552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509197, 33.443359, 41.308235>,  <34.863907, 33.388878, 41.001469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509197, 33.443359, 41.308235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327648, 33.796467, 41.259701>,  <35.218719, 34.008331, 41.230579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327648, 33.796467, 41.259701>,  <35.509197, 33.443359, 41.308235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327648, 33.796467, 41.259701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311529, 0.284781, 0.906559,
		0.834836, 0.373660, -0.404261,
		-0.453871, 0.882767, -0.121339,
		35.191486, 34.061298, 41.223297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046894, 33.889088, 41.517284>,  <35.509197, 33.443359, 41.308235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046894, 33.889088, 41.517284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.717125, 34.114613, 41.537060>,  <35.519264, 34.249928, 41.548923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.717125, 34.114613, 41.537060>,  <36.046894, 33.889088, 41.517284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717125, 34.114613, 41.537060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299324, 0.360206, 0.883548,
		0.480347, 0.743214, -0.465725,
		-0.824422, 0.563812, 0.049438,
		35.469799, 34.283756, 41.551891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306740, 34.484867, 41.780769>,  <36.046894, 33.889088, 41.517284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306740, 34.484867, 41.780769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918797, 34.494511, 41.877754>,  <35.686031, 34.500298, 41.935944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918797, 34.494511, 41.877754>,  <36.306740, 34.484867, 41.780769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918797, 34.494511, 41.877754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243430, 0.138879, 0.959924,
		-0.010533, 0.990016, -0.140562,
		-0.969861, 0.024106, 0.242463,
		35.627838, 34.501743, 41.950493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198196, 35.031200, 42.112957>,  <36.306740, 34.484867, 41.780769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198196, 35.031200, 42.112957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.885757, 34.811771, 42.232262>,  <35.698296, 34.680115, 42.303844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.885757, 34.811771, 42.232262>,  <36.198196, 35.031200, 42.112957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885757, 34.811771, 42.232262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226265, 0.196542, 0.954031,
		-0.581974, 0.812676, -0.029396,
		-0.781095, -0.548570, 0.298263,
		35.651428, 34.647202, 42.321739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950058, 35.433971, 42.639961>,  <36.198196, 35.031200, 42.112957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950058, 35.433971, 42.639961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808315, 35.062714, 42.685539>,  <35.723270, 34.839958, 42.712887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808315, 35.062714, 42.685539>,  <35.950058, 35.433971, 42.639961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808315, 35.062714, 42.685539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236306, 0.029016, 0.971245,
		-0.904762, 0.371088, 0.209045,
		-0.354352, -0.928144, 0.113943,
		35.702011, 34.784271, 42.719723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584080, 35.411308, 43.328747>,  <35.950058, 35.433971, 42.639961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584080, 35.411308, 43.328747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720833, 35.046879, 43.236603>,  <35.802887, 34.828220, 43.181316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720833, 35.046879, 43.236603>,  <35.584080, 35.411308, 43.328747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720833, 35.046879, 43.236603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321410, -0.116982, 0.939687,
		-0.883068, -0.395305, 0.252832,
		0.341886, -0.911070, -0.230358,
		35.823399, 34.773560, 43.167496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341557, 34.953609, 43.866047>,  <35.584080, 35.411308, 43.328747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341557, 34.953609, 43.866047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635693, 34.735897, 43.704533>,  <35.812172, 34.605270, 43.607624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635693, 34.735897, 43.704533>,  <35.341557, 34.953609, 43.866047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635693, 34.735897, 43.704533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315887, -0.251860, 0.914758,
		-0.599580, -0.800205, -0.013271,
		0.735336, -0.544278, -0.403785,
		35.856293, 34.572613, 43.583397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380451, 34.355305, 44.298943>,  <35.341557, 34.953609, 43.866047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380451, 34.355305, 44.298943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.733086, 34.387917, 44.112972>,  <35.944668, 34.407486, 44.001392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.733086, 34.387917, 44.112972>,  <35.380451, 34.355305, 44.298943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733086, 34.387917, 44.112972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471993, -0.162364, 0.866522,
		-0.004836, -0.983356, -0.181621,
		0.881589, 0.081534, -0.464922,
		35.997562, 34.412376, 43.973495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674805, 33.698948, 44.332573>,  <35.380451, 34.355305, 44.298943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674805, 33.698948, 44.332573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.986866, 33.941204, 44.269890>,  <36.174103, 34.086555, 44.232281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.986866, 33.941204, 44.269890>,  <35.674805, 33.698948, 44.332573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986866, 33.941204, 44.269890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429430, -0.336308, 0.838145,
		0.454912, -0.721179, -0.522453,
		0.780158, 0.605639, -0.156705,
		36.220913, 34.122894, 44.222878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315742, 33.324192, 44.398357>,  <35.674805, 33.698948, 44.332573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315742, 33.324192, 44.398357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.456524, 33.695988, 44.442490>,  <36.540993, 33.919067, 44.468967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.456524, 33.695988, 44.442490>,  <36.315742, 33.324192, 44.398357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456524, 33.695988, 44.442490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521147, -0.292504, 0.801778,
		0.777517, -0.224693, -0.587350,
		0.351956, 0.929491, 0.110328,
		36.562111, 33.974834, 44.475590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059258, 33.282639, 44.593891>,  <36.315742, 33.324192, 44.398357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059258, 33.282639, 44.593891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.948925, 33.644138, 44.724827>,  <36.882725, 33.861038, 44.803391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.948925, 33.644138, 44.724827>,  <37.059258, 33.282639, 44.593891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948925, 33.644138, 44.724827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288443, -0.247034, 0.925081,
		0.916906, 0.349588, -0.192540,
		-0.275833, 0.903749, 0.327343,
		36.866177, 33.915264, 44.823029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649582, 33.530010, 44.913433>,  <37.059258, 33.282639, 44.593891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649582, 33.530010, 44.913433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.341885, 33.744179, 45.052906>,  <37.157265, 33.872681, 45.136589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.341885, 33.744179, 45.052906>,  <37.649582, 33.530010, 44.913433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341885, 33.744179, 45.052906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316820, -0.154280, 0.935854,
		0.554875, 0.830372, -0.050954,
		-0.769246, 0.535425, 0.348685,
		37.111111, 33.904808, 45.157513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217052, 34.104012, 44.933598>,  <37.649582, 33.530010, 44.913433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217052, 34.104012, 44.933598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.607788, 34.056496, 45.004784>,  <38.842232, 34.027985, 45.047497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.607788, 34.056496, 45.004784>,  <38.217052, 34.104012, 44.933598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607788, 34.056496, 45.004784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181329, 0.018049, -0.983257,
		0.113589, 0.992755, 0.039170,
		0.976841, -0.118790, 0.177965,
		38.900841, 34.020859, 45.058174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588909, 34.688725, 44.632053>,  <38.217052, 34.104012, 44.933598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588909, 34.688725, 44.632053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849133, 34.385689, 44.653328>,  <39.005268, 34.203865, 44.666092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849133, 34.385689, 44.653328>,  <38.588909, 34.688725, 44.632053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849133, 34.385689, 44.653328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236113, 0.135199, -0.962274,
		0.721820, 0.638574, 0.266832,
		0.650559, -0.757591, 0.053186,
		39.044300, 34.158413, 44.669285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199535, 34.971897, 44.246925>,  <38.588909, 34.688725, 44.632053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199535, 34.971897, 44.246925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198490, 34.573792, 44.285797>,  <39.197861, 34.334927, 44.309120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198490, 34.573792, 44.285797>,  <39.199535, 34.971897, 44.246925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198490, 34.573792, 44.285797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327370, -0.092679, -0.940340,
		0.944892, 0.029354, 0.326062,
		-0.002617, -0.995263, 0.097182,
		39.197704, 34.275211, 44.314953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778763, 34.821632, 44.076401>,  <39.199535, 34.971897, 44.246925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778763, 34.821632, 44.076401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.601933, 34.466240, 44.027138>,  <39.495834, 34.253002, 43.997581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.601933, 34.466240, 44.027138>,  <39.778763, 34.821632, 44.076401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601933, 34.466240, 44.027138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457629, -0.105316, -0.882884,
		0.771457, -0.446662, 0.453153,
		-0.442075, -0.888483, -0.123158,
		39.469311, 34.199696, 43.990189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179321, 34.455227, 43.619648>,  <39.778763, 34.821632, 44.076401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179321, 34.455227, 43.619648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.876099, 34.194485, 43.611309>,  <39.694164, 34.038040, 43.606308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.876099, 34.194485, 43.611309>,  <40.179321, 34.455227, 43.619648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876099, 34.194485, 43.611309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181777, -0.180483, -0.966635,
		0.626342, -0.736555, 0.255308,
		-0.758058, -0.651853, -0.020845,
		39.648682, 33.998928, 43.605057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366272, 33.886436, 43.294384>,  <40.179321, 34.455227, 43.619648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366272, 33.886436, 43.294384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.974258, 33.886078, 43.214863>,  <39.739048, 33.885864, 43.167149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.974258, 33.886078, 43.214863>,  <40.366272, 33.886436, 43.294384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974258, 33.886078, 43.214863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198619, -0.047945, -0.978903,
		-0.008651, -0.998850, 0.047167,
		-0.980038, -0.000900, -0.198805,
		39.680248, 33.885807, 43.155220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319996, 33.603809, 42.609119>,  <40.366272, 33.886436, 43.294384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319996, 33.603809, 42.609119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.963104, 33.771034, 42.677414>,  <39.748970, 33.871368, 42.718391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.963104, 33.771034, 42.677414>,  <40.319996, 33.603809, 42.609119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963104, 33.771034, 42.677414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071285, 0.242945, -0.967417,
		-0.445920, -0.875329, -0.186961,
		-0.892229, 0.418063, 0.170732,
		39.695435, 33.896454, 42.728634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815872, 33.446033, 42.053211>,  <40.319996, 33.603809, 42.609119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815872, 33.446033, 42.053211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.651516, 33.761166, 42.236729>,  <39.552902, 33.950245, 42.346840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.651516, 33.761166, 42.236729>,  <39.815872, 33.446033, 42.053211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651516, 33.761166, 42.236729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383849, 0.306968, -0.870879,
		-0.826941, -0.533943, 0.176278,
		-0.410888, 0.787830, 0.458798,
		39.528248, 33.997513, 42.374367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232124, 33.541908, 41.743374>,  <39.815872, 33.446033, 42.053211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232124, 33.541908, 41.743374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.302170, 33.905479, 41.894733>,  <39.344196, 34.123623, 41.985550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.302170, 33.905479, 41.894733>,  <39.232124, 33.541908, 41.743374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302170, 33.905479, 41.894733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180555, 0.407470, -0.895192,
		-0.967851, 0.088438, 0.235465,
		0.175114, 0.908926, 0.378402,
		39.354706, 34.178158, 42.008255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917427, 34.007248, 41.265430>,  <39.232124, 33.541908, 41.743374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917427, 34.007248, 41.265430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138870, 34.250515, 41.492992>,  <39.271736, 34.396473, 41.629532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138870, 34.250515, 41.492992>,  <38.917427, 34.007248, 41.265430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138870, 34.250515, 41.492992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177648, 0.581178, -0.794150,
		-0.813611, 0.540710, 0.213704,
		0.553605, 0.608165, 0.568909,
		39.304951, 34.432964, 41.663666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705856, 34.694607, 41.106117>,  <38.917427, 34.007248, 41.265430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705856, 34.694607, 41.106117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080257, 34.727303, 41.243065>,  <39.304897, 34.746918, 41.325233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080257, 34.727303, 41.243065>,  <38.705856, 34.694607, 41.106117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080257, 34.727303, 41.243065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271237, 0.452442, -0.849545,
		-0.224340, 0.888040, 0.401317,
		0.936003, 0.081735, 0.342370,
		39.361057, 34.751823, 41.345776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907047, 35.289635, 40.951283>,  <38.705856, 34.694607, 41.106117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907047, 35.289635, 40.951283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.251427, 35.095467, 41.012108>,  <39.458054, 34.978966, 41.048603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.251427, 35.095467, 41.012108>,  <38.907047, 35.289635, 40.951283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251427, 35.095467, 41.012108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356597, 0.362764, -0.860953,
		0.362764, 0.795466, 0.485424,
		0.860953, -0.485424, 0.152063,
		39.509712, 34.949841, 41.057728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498325, 35.796574, 40.865448>,  <38.907047, 35.289635, 40.951283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498325, 35.796574, 40.865448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646938, 35.433475, 40.787514>,  <39.736107, 35.215618, 40.740753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646938, 35.433475, 40.787514>,  <39.498325, 35.796574, 40.865448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646938, 35.433475, 40.787514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320691, 0.322414, -0.890621,
		0.871274, 0.268416, 0.410895,
		0.371536, -0.907746, -0.194832,
		39.758400, 35.161152, 40.729065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086708, 35.900097, 40.527184>,  <39.498325, 35.796574, 40.865448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086708, 35.900097, 40.527184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.990990, 35.526665, 40.420471>,  <39.933559, 35.302605, 40.356441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.990990, 35.526665, 40.420471>,  <40.086708, 35.900097, 40.527184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990990, 35.526665, 40.420471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208961, 0.218811, -0.953130,
		0.948196, -0.283824, 0.142721,
		-0.239292, -0.933577, -0.266783,
		39.919201, 35.246593, 40.340435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.969654, 42.676243, 39.148323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970446, 42.918190, 38.829792>,  <25.970921, 43.063358, 38.638676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970446, 42.918190, 38.829792>,  <25.969654, 42.676243, 39.148323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970446, 42.918190, 38.829792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545174, -0.666924, -0.507934,
		-0.838321, 0.435141, 0.328437,
		0.001980, 0.604867, -0.796324,
		25.971039, 43.099651, 38.590897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285149, 42.729828, 38.873524>,  <25.969654, 42.676243, 39.148323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285149, 42.729828, 38.873524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.527958, 42.819431, 38.568539>,  <25.673643, 42.873196, 38.385548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.527958, 42.819431, 38.568539>,  <25.285149, 42.729828, 38.873524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527958, 42.819431, 38.568539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466212, -0.676606, -0.569956,
		-0.643561, 0.701444, -0.306278,
		0.607022, 0.224011, -0.762459,
		25.710064, 42.886635, 38.339802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874666, 42.682644, 38.201969>,  <25.285149, 42.729828, 38.873524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874666, 42.682644, 38.201969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.258673, 42.632919, 38.101639>,  <25.489077, 42.603085, 38.041439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.258673, 42.632919, 38.101639>,  <24.874666, 42.682644, 38.201969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258673, 42.632919, 38.101639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265870, -0.685351, -0.677944,
		-0.087630, 0.717525, -0.690999,
		0.960018, -0.124308, -0.250826,
		25.546679, 42.595627, 38.026390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729773, 42.417027, 37.493198>,  <24.874666, 42.682644, 38.201969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729773, 42.417027, 37.493198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.129639, 42.423431, 37.485035>,  <25.369558, 42.427277, 37.480137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.129639, 42.423431, 37.485035>,  <24.729773, 42.417027, 37.493198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129639, 42.423431, 37.485035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008151, -0.553054, -0.833106,
		-0.024630, 0.832992, -0.552737,
		0.999663, 0.016014, -0.020411,
		25.429537, 42.428234, 37.478912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008423, 42.646748, 36.798462>,  <24.729773, 42.417027, 37.493198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008423, 42.646748, 36.798462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.310913, 42.428238, 36.942520>,  <25.492407, 42.297131, 37.028954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.310913, 42.428238, 36.942520>,  <25.008423, 42.646748, 36.798462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310913, 42.428238, 36.942520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124483, -0.660486, -0.740447,
		0.642358, 0.515115, -0.567479,
		0.756227, -0.546274, 0.360146,
		25.537781, 42.264355, 37.050564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591143, 42.460690, 36.273800>,  <25.008423, 42.646748, 36.798462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591143, 42.460690, 36.273800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.644934, 42.153538, 36.524326>,  <25.677208, 41.969246, 36.674644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.644934, 42.153538, 36.524326>,  <25.591143, 42.460690, 36.273800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644934, 42.153538, 36.524326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022249, -0.634240, -0.772816,
		0.990667, 0.089992, -0.102376,
		0.134478, -0.767881, 0.626318,
		25.685278, 41.923172, 36.712223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074070, 41.984035, 35.976784>,  <25.591143, 42.460690, 36.273800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074070, 41.984035, 35.976784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.930820, 41.735294, 36.255363>,  <25.844870, 41.586048, 36.422512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.930820, 41.735294, 36.255363>,  <26.074070, 41.984035, 35.976784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930820, 41.735294, 36.255363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095606, -0.766426, -0.635178,
		0.928766, -0.160889, 0.333930,
		-0.358125, -0.621857, 0.696448,
		25.823383, 41.548737, 36.464298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535984, 41.458694, 35.970329>,  <26.074070, 41.984035, 35.976784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535984, 41.458694, 35.970329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.202957, 41.306454, 36.131313>,  <26.003141, 41.215111, 36.227905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.202957, 41.306454, 36.131313>,  <26.535984, 41.458694, 35.970329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202957, 41.306454, 36.131313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203256, -0.885792, -0.417205,
		0.515286, -0.265548, 0.814840,
		-0.832567, -0.380601, 0.402462,
		25.953188, 41.192272, 36.252052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733118, 40.851864, 36.140633>,  <26.535984, 41.458694, 35.970329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733118, 40.851864, 36.140633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336401, 40.801247, 36.147949>,  <26.098372, 40.770874, 36.152340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336401, 40.801247, 36.147949>,  <26.733118, 40.851864, 36.140633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336401, 40.801247, 36.147949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098712, -0.848734, -0.519525,
		0.081271, -0.513455, 0.854259,
		-0.991792, -0.126547, 0.018293,
		26.038864, 40.763283, 36.153439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573513, 40.177753, 36.409534>,  <26.733118, 40.851864, 36.140633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573513, 40.177753, 36.409534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228420, 40.265785, 36.227432>,  <26.021364, 40.318604, 36.118172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228420, 40.265785, 36.227432>,  <26.573513, 40.177753, 36.409534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228420, 40.265785, 36.227432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095962, -0.955214, -0.279923,
		-0.496476, -0.197811, 0.845212,
		-0.862730, 0.220084, -0.455258,
		25.969601, 40.331810, 36.090855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151659, 39.661423, 36.624809>,  <26.573513, 40.177753, 36.409534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151659, 39.661423, 36.624809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999821, 39.804272, 36.283432>,  <25.908718, 39.889980, 36.078606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999821, 39.804272, 36.283432>,  <26.151659, 39.661423, 36.624809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999821, 39.804272, 36.283432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091007, -0.932431, -0.349700,
		-0.920668, -0.055073, 0.386442,
		-0.379590, 0.357127, -0.853447,
		25.885942, 39.911411, 36.027397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779474, 39.153652, 36.465836>,  <26.151659, 39.661423, 36.624809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779474, 39.153652, 36.465836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.800356, 39.360664, 36.124207>,  <25.812885, 39.484871, 35.919228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.800356, 39.360664, 36.124207>,  <25.779474, 39.153652, 36.465836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800356, 39.360664, 36.124207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028171, -0.855662, -0.516767,
		-0.998239, 0.002918, -0.059249,
		0.052205, 0.517526, -0.854074,
		25.816017, 39.515923, 35.867985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219761, 38.912846, 36.062443>,  <25.779474, 39.153652, 36.465836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219761, 38.912846, 36.062443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.463791, 39.083202, 35.795181>,  <25.610209, 39.185417, 35.634827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.463791, 39.083202, 35.795181>,  <25.219761, 38.912846, 36.062443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463791, 39.083202, 35.795181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041547, -0.859293, -0.509794,
		-0.791254, 0.283253, -0.541927,
		0.610075, 0.425892, -0.668150,
		25.646812, 39.210972, 35.594738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892551, 38.903336, 35.352055>,  <25.219761, 38.912846, 36.062443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892551, 38.903336, 35.352055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.289923, 38.923828, 35.311108>,  <25.528345, 38.936123, 35.286541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.289923, 38.923828, 35.311108>,  <24.892551, 38.903336, 35.352055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289923, 38.923828, 35.311108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027844, -0.759269, -0.650182,
		-0.111033, 0.648758, -0.752851,
		0.993427, 0.051229, -0.102367,
		25.587952, 38.939198, 35.280396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948797, 38.673477, 34.635426>,  <24.892551, 38.903336, 35.352055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948797, 38.673477, 34.635426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.318863, 38.636131, 34.782585>,  <25.540903, 38.613724, 34.870880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.318863, 38.636131, 34.782585>,  <24.948797, 38.673477, 34.635426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318863, 38.636131, 34.782585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071898, -0.908615, -0.411399,
		0.372690, 0.407064, -0.833907,
		0.925166, -0.093368, 0.367899,
		25.596413, 38.608120, 34.892956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501293, 38.529152, 33.990944>,  <24.948797, 38.673477, 34.635426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501293, 38.529152, 33.990944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.635849, 38.382168, 34.337772>,  <25.716581, 38.293980, 34.545872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.635849, 38.382168, 34.337772>,  <25.501293, 38.529152, 33.990944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635849, 38.382168, 34.337772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252699, -0.851742, -0.458997,
		0.907186, 0.373510, -0.193659,
		0.336388, -0.367458, 0.867074,
		25.736765, 38.271931, 34.597897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144695, 38.069908, 33.711002>,  <25.501293, 38.529152, 33.990944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144695, 38.069908, 33.711002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.088024, 37.965672, 34.093002>,  <26.054022, 37.903130, 34.322201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.088024, 37.965672, 34.093002>,  <26.144695, 38.069908, 33.711002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088024, 37.965672, 34.093002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240341, -0.944918, -0.222186,
		0.960293, 0.198046, 0.196507,
		-0.141680, -0.260592, 0.954997,
		26.045521, 37.887493, 34.379501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819378, 37.700073, 34.048630>,  <26.144695, 38.069908, 33.711002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819378, 37.700073, 34.048630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.476236, 37.601833, 34.229191>,  <26.270351, 37.542889, 34.337528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.476236, 37.601833, 34.229191>,  <26.819378, 37.700073, 34.048630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476236, 37.601833, 34.229191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136553, -0.955767, -0.260505,
		0.495415, -0.161836, 0.853448,
		-0.857856, -0.245599, 0.451402,
		26.218880, 37.528152, 34.364613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091747, 37.040752, 33.828903>,  <26.819378, 37.700073, 34.048630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091747, 37.040752, 33.828903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266027, 37.235291, 34.131855>,  <27.370596, 37.352013, 34.313625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266027, 37.235291, 34.131855>,  <27.091747, 37.040752, 33.828903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266027, 37.235291, 34.131855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234461, -0.751078, 0.617178,
		0.869018, -0.446482, -0.213216,
		0.435701, 0.486349, 0.757384,
		27.396738, 37.381195, 34.359070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710247, 36.751286, 34.131004>,  <27.091747, 37.040752, 33.828903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710247, 36.751286, 34.131004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.537436, 36.962540, 34.423424>,  <27.433748, 37.089291, 34.598873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.537436, 36.962540, 34.423424>,  <27.710247, 36.751286, 34.131004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537436, 36.962540, 34.423424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038287, -0.799125, 0.599945,
		0.901047, 0.287183, 0.325024,
		-0.432029, 0.528134, 0.731044,
		27.407827, 37.120979, 34.642738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334312, 36.359116, 34.650021>,  <27.710247, 36.751286, 34.131004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334312, 36.359116, 34.650021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731943, 36.330410, 34.682659>,  <27.970522, 36.313187, 34.702244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.731943, 36.330410, 34.682659>,  <27.334312, 36.359116, 34.650021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731943, 36.330410, 34.682659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046398, 0.398715, 0.915900,
		-0.098266, -0.914262, 0.393024,
		0.994078, -0.071766, 0.081600,
		28.030167, 36.308880, 34.707138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484488, 36.056023, 35.240185>,  <27.334312, 36.359116, 34.650021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484488, 36.056023, 35.240185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804480, 36.279251, 35.152012>,  <27.996475, 36.413189, 35.099110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804480, 36.279251, 35.152012>,  <27.484488, 36.056023, 35.240185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804480, 36.279251, 35.152012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048976, 0.305414, 0.950959,
		0.598026, -0.771543, 0.216993,
		0.799979, 0.558071, -0.220433,
		28.044474, 36.446671, 35.085880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866970, 35.929344, 35.841522>,  <27.484488, 36.056023, 35.240185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866970, 35.929344, 35.841522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.021112, 36.254295, 35.666462>,  <28.113598, 36.449268, 35.561424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.021112, 36.254295, 35.666462>,  <27.866970, 35.929344, 35.841522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021112, 36.254295, 35.666462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107458, 0.431550, 0.895666,
		0.916490, -0.392178, 0.079003,
		0.385354, 0.812380, -0.437654,
		28.136719, 36.498009, 35.535164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635380, 35.922173, 36.015553>,  <27.866970, 35.929344, 35.841522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635380, 35.922173, 36.015553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518448, 36.294941, 35.929695>,  <28.448288, 36.518600, 35.878181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518448, 36.294941, 35.929695>,  <28.635380, 35.922173, 36.015553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518448, 36.294941, 35.929695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077169, 0.246701, 0.966014,
		0.953199, 0.265831, -0.144033,
		-0.292330, 0.931919, -0.214641,
		28.430748, 36.574516, 35.865303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073206, 36.329193, 36.389378>,  <28.635380, 35.922173, 36.015553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073206, 36.329193, 36.389378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768885, 36.575771, 36.308216>,  <28.586292, 36.723721, 36.259521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768885, 36.575771, 36.308216>,  <29.073206, 36.329193, 36.389378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768885, 36.575771, 36.308216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025796, 0.341121, 0.939665,
		0.648468, 0.709668, -0.275428,
		-0.760805, 0.616448, -0.202900,
		28.540644, 36.760704, 36.247345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318125, 36.925995, 36.799477>,  <29.073206, 36.329193, 36.389378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318125, 36.925995, 36.799477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934689, 36.993492, 36.707706>,  <28.704628, 37.033989, 36.652645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934689, 36.993492, 36.707706>,  <29.318125, 36.925995, 36.799477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934689, 36.993492, 36.707706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107981, 0.530078, 0.841045,
		0.263531, 0.830990, -0.489906,
		-0.958588, 0.168741, -0.229423,
		28.647112, 37.044113, 36.638878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118147, 37.574104, 36.967743>,  <29.318125, 36.925995, 36.799477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118147, 37.574104, 36.967743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.747089, 37.426281, 36.946217>,  <28.524454, 37.337585, 36.933300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.747089, 37.426281, 36.946217>,  <29.118147, 37.574104, 36.967743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747089, 37.426281, 36.946217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297610, 0.644467, 0.704337,
		-0.225613, 0.669392, -0.707823,
		-0.927646, -0.369563, -0.053817,
		28.468796, 37.315411, 36.930073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585720, 38.166733, 37.011223>,  <29.118147, 37.574104, 36.967743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585720, 38.166733, 37.011223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374069, 37.839970, 37.103035>,  <28.247078, 37.643913, 37.158123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374069, 37.839970, 37.103035>,  <28.585720, 38.166733, 37.011223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374069, 37.839970, 37.103035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373620, 0.467161, 0.801354,
		-0.761861, 0.338261, -0.552401,
		-0.529128, -0.816909, 0.229531,
		28.215330, 37.594898, 37.171894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863985, 38.354111, 37.075802>,  <28.585720, 38.166733, 37.011223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863985, 38.354111, 37.075802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846554, 38.008076, 37.275692>,  <27.836096, 37.800457, 37.395626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846554, 38.008076, 37.275692>,  <27.863985, 38.354111, 37.075802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846554, 38.008076, 37.275692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506867, 0.450191, 0.735129,
		-0.860922, -0.221262, -0.458101,
		-0.043576, -0.865084, 0.499730,
		27.833481, 37.748550, 37.425610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152842, 38.211746, 37.194595>,  <27.863985, 38.354111, 37.075802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152842, 38.211746, 37.194595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357391, 38.002941, 37.467651>,  <27.480122, 37.877659, 37.631485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357391, 38.002941, 37.467651>,  <27.152842, 38.211746, 37.194595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357391, 38.002941, 37.467651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549897, 0.411663, 0.726737,
		-0.660384, -0.747017, -0.076539,
		0.511376, -0.522015, 0.682638,
		27.510805, 37.846336, 37.672443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707396, 37.834702, 37.553734>,  <27.152842, 38.211746, 37.194595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707396, 37.834702, 37.553734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024679, 37.872189, 37.794411>,  <27.215050, 37.894680, 37.938816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024679, 37.872189, 37.794411>,  <26.707396, 37.834702, 37.553734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024679, 37.872189, 37.794411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581901, 0.407871, 0.703586,
		-0.179474, -0.908217, 0.378063,
		0.793209, 0.093720, 0.601694,
		27.262642, 37.900303, 37.974918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514250, 37.524662, 38.154114>,  <26.707396, 37.834702, 37.553734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514250, 37.524662, 38.154114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819532, 37.746353, 38.286991>,  <27.002703, 37.879368, 38.366718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819532, 37.746353, 38.286991>,  <26.514250, 37.524662, 38.154114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819532, 37.746353, 38.286991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573361, 0.343819, 0.743670,
		0.297947, -0.758039, 0.580176,
		0.763207, 0.554224, 0.332190,
		27.048494, 37.912621, 38.386650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603149, 37.465981, 38.889687>,  <26.514250, 37.524662, 38.154114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603149, 37.465981, 38.889687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.755489, 37.822788, 38.792313>,  <26.846893, 38.036873, 38.733891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.755489, 37.822788, 38.792313>,  <26.603149, 37.465981, 38.889687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755489, 37.822788, 38.792313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565157, 0.432942, 0.702253,
		0.731813, -0.129876, 0.669015,
		0.380850, 0.892016, -0.243432,
		26.869745, 38.090393, 38.719284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733484, 37.783886, 39.573528>,  <26.603149, 37.465981, 38.889687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733484, 37.783886, 39.573528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762081, 38.094929, 39.323658>,  <26.779240, 38.281555, 39.173737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.762081, 38.094929, 39.323658>,  <26.733484, 37.783886, 39.573528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762081, 38.094929, 39.323658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401996, 0.595627, 0.695433,
		0.912846, 0.201401, 0.355175,
		0.071491, 0.777603, -0.624678,
		26.783529, 38.328209, 39.136253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098961, 38.269669, 39.947689>,  <26.733484, 37.783886, 39.573528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098961, 38.269669, 39.947689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896292, 38.466419, 39.664467>,  <26.774691, 38.584469, 39.494534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896292, 38.466419, 39.664467>,  <27.098961, 38.269669, 39.947689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896292, 38.466419, 39.664467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343498, 0.638102, 0.689083,
		0.790755, 0.592354, -0.154349,
		-0.506671, 0.491877, -0.708054,
		26.744289, 38.613983, 39.452049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216320, 38.996609, 40.005413>,  <27.098961, 38.269669, 39.947689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216320, 38.996609, 40.005413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.894323, 39.010952, 39.768532>,  <26.701126, 39.019558, 39.626404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.894323, 39.010952, 39.768532>,  <27.216320, 38.996609, 40.005413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894323, 39.010952, 39.768532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369390, 0.750805, 0.547578,
		0.464263, 0.659550, -0.591146,
		-0.804991, 0.035857, -0.592203,
		26.652826, 39.021709, 39.590870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973293, 39.674820, 40.059475>,  <27.216320, 38.996609, 40.005413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973293, 39.674820, 40.059475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.649797, 39.510933, 39.890678>,  <26.455700, 39.412601, 39.789402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.649797, 39.510933, 39.890678>,  <26.973293, 39.674820, 40.059475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649797, 39.510933, 39.890678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560677, 0.753821, 0.342629,
		0.177722, 0.513696, -0.839364,
		-0.808737, -0.409720, -0.421988,
		26.407177, 39.388016, 39.764084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600822, 40.221813, 39.569160>,  <26.973293, 39.674820, 40.059475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600822, 40.221813, 39.569160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336153, 39.948189, 39.691963>,  <26.177351, 39.784016, 39.765644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336153, 39.948189, 39.691963>,  <26.600822, 40.221813, 39.569160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336153, 39.948189, 39.691963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677756, 0.720788, 0.145301,
		-0.320683, -0.111936, -0.940549,
		-0.661672, -0.684058, 0.307009,
		26.137651, 39.742970, 39.784065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056978, 40.456936, 39.262463>,  <26.600822, 40.221813, 39.569160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056978, 40.456936, 39.262463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.911489, 40.219677, 39.549763>,  <25.824196, 40.077320, 39.722141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.911489, 40.219677, 39.549763>,  <26.056978, 40.456936, 39.262463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911489, 40.219677, 39.549763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619453, 0.729877, 0.289063,
		-0.695690, -0.339782, -0.632900,
		-0.363721, -0.593150, 0.718247,
		25.802374, 40.041733, 39.765236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336979, 40.453869, 39.167080>,  <26.056978, 40.456936, 39.262463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336979, 40.453869, 39.167080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.399080, 40.331577, 39.542831>,  <25.436340, 40.258202, 39.768280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.399080, 40.331577, 39.542831>,  <25.336979, 40.453869, 39.167080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399080, 40.331577, 39.542831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547922, 0.764585, 0.339397,
		-0.821996, -0.567397, -0.048811,
		0.155253, -0.305728, 0.939376,
		25.445656, 40.239861, 39.824646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664703, 40.497917, 39.437981>,  <25.336979, 40.453869, 39.167080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664703, 40.497917, 39.437981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.929243, 40.502197, 39.737980>,  <25.087967, 40.504765, 39.917980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.929243, 40.502197, 39.737980>,  <24.664703, 40.497917, 39.437981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929243, 40.502197, 39.737980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503821, 0.747092, 0.433609,
		-0.555680, -0.664634, 0.499481,
		0.661349, 0.010701, 0.750001,
		25.127647, 40.505409, 39.962982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.222572, 40.374393, 40.066013>,  <24.664703, 40.497917, 39.437981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.222572, 40.374393, 40.066013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.569479, 40.571922, 40.091267>,  <24.777624, 40.690441, 40.106419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.569479, 40.571922, 40.091267>,  <24.222572, 40.374393, 40.066013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.569479, 40.571922, 40.091267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486234, 0.812978, 0.320381,
		0.106882, -0.308556, 0.945182,
		0.867267, 0.493822, 0.063137,
		24.829659, 40.720070, 40.110207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.463383, 31.469702, 44.152550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113083, 31.276850, 44.162449>,  <38.902905, 31.161139, 44.168388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.113083, 31.276850, 44.162449>,  <39.463383, 31.469702, 44.152550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113083, 31.276850, 44.162449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025817, 0.004422, 0.999657,
		-0.482075, 0.876088, 0.008575,
		-0.875750, -0.482131, 0.024750,
		38.850357, 31.132210, 44.169872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145191, 31.780514, 44.708313>,  <39.463383, 31.469702, 44.152550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145191, 31.780514, 44.708313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979233, 31.422638, 44.642113>,  <38.879658, 31.207912, 44.602394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979233, 31.422638, 44.642113>,  <39.145191, 31.780514, 44.708313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979233, 31.422638, 44.642113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070261, -0.149845, 0.986210,
		-0.907151, 0.420804, -0.000691,
		-0.414898, -0.894690, -0.165499,
		38.854763, 31.154230, 44.592464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831150, 31.616169, 45.286968>,  <39.145191, 31.780514, 44.708313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831150, 31.616169, 45.286968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.789902, 31.250933, 45.129166>,  <38.765152, 31.031792, 45.034485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.789902, 31.250933, 45.129166>,  <38.831150, 31.616169, 45.286968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789902, 31.250933, 45.129166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019153, -0.394723, 0.918601,
		-0.994485, 0.102279, 0.023214,
		-0.103117, -0.913090, -0.394505,
		38.758968, 30.977005, 45.010815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208599, 31.342245, 45.602238>,  <38.831150, 31.616169, 45.286968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208599, 31.342245, 45.602238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451977, 31.056284, 45.464417>,  <38.598003, 30.884708, 45.381725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451977, 31.056284, 45.464417>,  <38.208599, 31.342245, 45.602238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451977, 31.056284, 45.464417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142671, -0.328553, 0.933648,
		-0.780670, -0.617226, -0.097910,
		0.608441, -0.714902, -0.344552,
		38.634510, 30.841814, 45.361050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007481, 30.794783, 45.989208>,  <38.208599, 31.342245, 45.602238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007481, 30.794783, 45.989208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.371609, 30.720127, 45.841431>,  <38.590084, 30.675333, 45.752762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.371609, 30.720127, 45.841431>,  <38.007481, 30.794783, 45.989208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371609, 30.720127, 45.841431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282876, -0.371077, 0.884468,
		-0.302167, -0.909653, -0.285003,
		0.910317, -0.186637, -0.369446,
		38.644703, 30.664135, 45.730595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182621, 30.092989, 46.232197>,  <38.007481, 30.794783, 45.989208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182621, 30.092989, 46.232197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.548214, 30.228714, 46.143196>,  <38.767570, 30.310148, 46.089798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.548214, 30.228714, 46.143196>,  <38.182621, 30.092989, 46.232197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548214, 30.228714, 46.143196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395999, -0.626418, 0.671405,
		0.088439, -0.701761, -0.706902,
		0.913982, 0.339311, -0.222497,
		38.822407, 30.330507, 46.076447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683552, 29.458139, 46.211800>,  <38.182621, 30.092989, 46.232197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683552, 29.458139, 46.211800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916344, 29.780796, 46.253029>,  <39.056019, 29.974390, 46.277767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916344, 29.780796, 46.253029>,  <38.683552, 29.458139, 46.211800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916344, 29.780796, 46.253029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608525, -0.516071, 0.602800,
		0.539438, -0.288096, -0.791207,
		0.581983, 0.806642, 0.103074,
		39.090939, 30.022789, 46.283951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307327, 29.234772, 46.345951>,  <38.683552, 29.458139, 46.211800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307327, 29.234772, 46.345951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.361858, 29.610577, 46.471638>,  <39.394577, 29.836060, 46.547050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.361858, 29.610577, 46.471638>,  <39.307327, 29.234772, 46.345951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361858, 29.610577, 46.471638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652587, -0.323808, 0.685039,
		0.745348, 0.111665, -0.657258,
		0.136331, 0.939510, 0.314221,
		39.402756, 29.892429, 46.565903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055527, 29.296209, 46.448483>,  <39.307327, 29.234772, 46.345951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055527, 29.296209, 46.448483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853451, 29.558538, 46.672867>,  <39.732204, 29.715937, 46.807499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853451, 29.558538, 46.672867>,  <40.055527, 29.296209, 46.448483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853451, 29.558538, 46.672867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664267, -0.119463, 0.737887,
		0.550938, 0.745402, -0.375290,
		-0.505190, 0.655823, 0.560963,
		39.701893, 29.755285, 46.841156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547031, 29.719667, 46.696724>,  <40.055527, 29.296209, 46.448483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547031, 29.719667, 46.696724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.243725, 29.787378, 46.948559>,  <40.061741, 29.828005, 47.099659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.243725, 29.787378, 46.948559>,  <40.547031, 29.719667, 46.696724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243725, 29.787378, 46.948559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606969, -0.169167, 0.776512,
		0.237950, 0.970942, 0.025529,
		-0.758267, 0.169276, 0.629585,
		40.016243, 29.838161, 47.137436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899277, 29.859493, 47.233456>,  <40.547031, 29.719667, 46.696724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899277, 29.859493, 47.233456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.546741, 29.829824, 47.420105>,  <40.335220, 29.812023, 47.532097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.546741, 29.829824, 47.420105>,  <40.899277, 29.859493, 47.233456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546741, 29.829824, 47.420105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468371, -0.267195, 0.842161,
		0.062214, 0.960784, 0.270230,
		-0.881339, -0.074174, 0.466627,
		40.282341, 29.807571, 47.560093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000969, 30.230253, 47.935833>,  <40.899277, 29.859493, 47.233456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000969, 30.230253, 47.935833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.677170, 30.004812, 48.001637>,  <40.482891, 29.869547, 48.041119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.677170, 30.004812, 48.001637>,  <41.000969, 30.230253, 47.935833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677170, 30.004812, 48.001637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493225, -0.500805, 0.711282,
		-0.318497, 0.656920, 0.683385,
		-0.809499, -0.563604, 0.164505,
		40.434319, 29.835732, 48.050987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889622, 30.129635, 48.636105>,  <41.000969, 30.230253, 47.935833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889622, 30.129635, 48.636105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.715530, 29.802801, 48.484871>,  <40.611076, 29.606701, 48.394131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.715530, 29.802801, 48.484871>,  <40.889622, 30.129635, 48.636105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715530, 29.802801, 48.484871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617459, -0.576515, 0.535141,
		-0.655229, -0.000547, 0.755430,
		-0.435224, -0.817087, -0.378087,
		40.584965, 29.557674, 48.371445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621391, 30.571680, 49.120129>,  <40.889622, 30.129635, 48.636105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621391, 30.571680, 49.120129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253426, 30.604105, 49.273586>,  <40.032646, 30.623560, 49.365662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253426, 30.604105, 49.273586>,  <40.621391, 30.571680, 49.120129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253426, 30.604105, 49.273586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148548, 0.833424, -0.532295,
		-0.362884, -0.546656, -0.754640,
		-0.919918, 0.081061, 0.383641,
		39.977451, 30.628424, 49.388680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200432, 30.632423, 48.671001>,  <40.621391, 30.571680, 49.120129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200432, 30.632423, 48.671001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050617, 30.828512, 48.985809>,  <39.960728, 30.946165, 49.174694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050617, 30.828512, 48.985809>,  <40.200432, 30.632423, 48.671001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050617, 30.828512, 48.985809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066870, 0.860877, -0.504401,
		-0.924797, -0.136289, -0.355212,
		-0.374538, 0.490221, 0.787023,
		39.938255, 30.975578, 49.221916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588409, 30.867582, 48.402805>,  <40.200432, 30.632423, 48.671001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588409, 30.867582, 48.402805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.728889, 31.084463, 48.708138>,  <39.813179, 31.214592, 48.891338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.728889, 31.084463, 48.708138>,  <39.588409, 30.867582, 48.402805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728889, 31.084463, 48.708138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110474, 0.833565, -0.541263,
		-0.929759, 0.105766, 0.352651,
		0.351204, 0.542203, 0.763329,
		39.834251, 31.247124, 48.937138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183758, 31.466774, 48.416836>,  <39.588409, 30.867582, 48.402805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183758, 31.466774, 48.416836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.527557, 31.555216, 48.601173>,  <39.733837, 31.608280, 48.711777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.527557, 31.555216, 48.601173>,  <39.183758, 31.466774, 48.416836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527557, 31.555216, 48.601173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044971, 0.930815, -0.362715,
		-0.509155, 0.291028, 0.809978,
		0.859499, 0.221103, 0.460841,
		39.785408, 31.621548, 48.739426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104839, 32.073238, 48.811108>,  <39.183758, 31.466774, 48.416836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104839, 32.073238, 48.811108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496010, 32.059948, 48.728596>,  <39.730713, 32.051971, 48.679089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496010, 32.059948, 48.728596>,  <39.104839, 32.073238, 48.811108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496010, 32.059948, 48.728596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049849, 0.921657, -0.384789,
		0.202908, 0.386579, 0.899658,
		0.977928, -0.033229, -0.206282,
		39.789387, 32.049980, 48.666710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355877, 32.828655, 48.870773>,  <39.104839, 32.073238, 48.811108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355877, 32.828655, 48.870773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.656269, 32.645580, 48.680382>,  <39.836506, 32.535736, 48.566147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.656269, 32.645580, 48.680382>,  <39.355877, 32.828655, 48.870773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656269, 32.645580, 48.680382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037202, 0.749003, -0.661522,
		0.659276, 0.479082, 0.579512,
		0.750980, -0.457685, -0.475977,
		39.881561, 32.508274, 48.537590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685616, 33.374329, 48.650898>,  <39.355877, 32.828655, 48.870773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685616, 33.374329, 48.650898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.829613, 33.074043, 48.429329>,  <39.916012, 32.893871, 48.296387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.829613, 33.074043, 48.429329>,  <39.685616, 33.374329, 48.650898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829613, 33.074043, 48.429329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092705, 0.619576, -0.779443,
		0.928337, 0.229243, 0.292639,
		0.359994, -0.750715, -0.553923,
		39.937611, 32.848827, 48.263153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247864, 33.611473, 48.343178>,  <39.685616, 33.374329, 48.650898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247864, 33.611473, 48.343178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.127007, 33.296055, 48.128925>,  <40.054493, 33.106804, 48.000374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.127007, 33.296055, 48.128925>,  <40.247864, 33.611473, 48.343178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127007, 33.296055, 48.128925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003019, 0.562683, -0.826668,
		0.953257, -0.248157, -0.172393,
		-0.302146, -0.788547, -0.535632,
		40.036362, 33.059490, 47.968235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655594, 33.697414, 47.778118>,  <40.247864, 33.611473, 48.343178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655594, 33.697414, 47.778118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.355953, 33.460407, 47.659615>,  <40.176170, 33.318203, 47.588512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.355953, 33.460407, 47.659615>,  <40.655594, 33.697414, 47.778118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355953, 33.460407, 47.659615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014566, 0.461836, -0.886846,
		0.662296, -0.660022, -0.354592,
		-0.749101, -0.592519, -0.296259,
		40.131222, 33.282650, 47.570736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735901, 33.755966, 47.061886>,  <40.655594, 33.697414, 47.778118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735901, 33.755966, 47.061886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.375427, 33.605808, 47.148560>,  <40.159142, 33.515713, 47.200562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.375427, 33.605808, 47.148560>,  <40.735901, 33.755966, 47.061886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375427, 33.605808, 47.148560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311345, 0.212838, -0.926156,
		0.301555, -0.902097, -0.308683,
		-0.901182, -0.375394, 0.216681,
		40.105072, 33.493191, 47.213566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512856, 33.243557, 46.507103>,  <40.735901, 33.755966, 47.061886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512856, 33.243557, 46.507103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.175900, 33.362640, 46.686771>,  <39.973728, 33.434090, 46.794571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.175900, 33.362640, 46.686771>,  <40.512856, 33.243557, 46.507103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175900, 33.362640, 46.686771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459207, 0.039580, -0.887447,
		-0.281982, -0.953835, 0.103370,
		-0.842387, 0.297712, 0.449169,
		39.923183, 33.451954, 46.821522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934372, 32.953030, 46.187187>,  <40.512856, 33.243557, 46.507103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934372, 32.953030, 46.187187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724808, 33.247364, 46.358799>,  <39.599068, 33.423965, 46.461765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724808, 33.247364, 46.358799>,  <39.934372, 32.953030, 46.187187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724808, 33.247364, 46.358799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603515, 0.034750, -0.796594,
		-0.601071, -0.676268, 0.425881,
		-0.523912, 0.735835, 0.429025,
		39.567635, 33.468113, 46.487507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229752, 32.745285, 46.137188>,  <39.934372, 32.953030, 46.187187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229752, 32.745285, 46.137188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.253033, 33.142513, 46.178020>,  <39.267002, 33.380852, 46.202518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.253033, 33.142513, 46.178020>,  <39.229752, 32.745285, 46.137188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253033, 33.142513, 46.178020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477184, 0.117492, -0.870914,
		-0.876874, 0.001982, 0.480717,
		0.058207, 0.993072, 0.102079,
		39.270496, 33.440434, 46.208645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520947, 33.030453, 45.912865>,  <39.229752, 32.745285, 46.137188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520947, 33.030453, 45.912865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.793045, 33.322620, 45.888340>,  <38.956303, 33.497921, 45.873623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.793045, 33.322620, 45.888340>,  <38.520947, 33.030453, 45.912865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793045, 33.322620, 45.888340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215560, 0.119398, -0.969164,
		-0.700571, 0.672486, 0.238668,
		0.680245, 0.730416, -0.061314,
		38.997120, 33.541744, 45.869946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285343, 33.312576, 45.402431>,  <38.520947, 33.030453, 45.912865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285343, 33.312576, 45.402431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.634899, 33.505161, 45.429314>,  <38.844631, 33.620712, 45.445442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.634899, 33.505161, 45.429314>,  <38.285343, 33.312576, 45.402431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634899, 33.505161, 45.429314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097222, 0.308551, -0.946226,
		-0.476308, 0.820361, 0.316447,
		0.873887, 0.481461, 0.067208,
		38.897064, 33.649601, 45.449474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896717, 33.946922, 45.718407>,  <38.285343, 33.312576, 45.402431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896717, 33.946922, 45.718407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498425, 33.952854, 45.681957>,  <37.259449, 33.956413, 45.660088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498425, 33.952854, 45.681957>,  <37.896717, 33.946922, 45.718407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498425, 33.952854, 45.681957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090533, 0.036612, 0.995220,
		0.018096, 0.999219, -0.035113,
		-0.995729, 0.014830, -0.091125,
		37.199707, 33.957302, 45.654621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535416, 34.557529, 46.108608>,  <37.896717, 33.946922, 45.718407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535416, 34.557529, 46.108608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231010, 34.300938, 46.069916>,  <37.048367, 34.146984, 46.046700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231010, 34.300938, 46.069916>,  <37.535416, 34.557529, 46.108608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231010, 34.300938, 46.069916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249770, 0.152108, 0.956283,
		-0.598721, 0.751910, -0.275979,
		-0.761018, -0.641479, -0.096734,
		37.002705, 34.108494, 46.040897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003117, 34.735058, 46.496841>,  <37.535416, 34.557529, 46.108608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003117, 34.735058, 46.496841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.871334, 34.361202, 46.443314>,  <36.792267, 34.136887, 46.411198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.871334, 34.361202, 46.443314>,  <37.003117, 34.735058, 46.496841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871334, 34.361202, 46.443314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348741, -0.011247, 0.937152,
		-0.877405, 0.355416, -0.322242,
		-0.329454, -0.934641, -0.133817,
		36.772499, 34.080811, 46.403168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406242, 34.689884, 46.736092>,  <37.003117, 34.735058, 46.496841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406242, 34.689884, 46.736092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552391, 34.318810, 46.766792>,  <36.640079, 34.096165, 46.785213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552391, 34.318810, 46.766792>,  <36.406242, 34.689884, 46.736092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552391, 34.318810, 46.766792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292388, -0.036092, 0.955618,
		-0.883749, -0.371599, -0.284433,
		0.365373, -0.927691, 0.076754,
		36.662003, 34.040501, 46.789818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983284, 34.384575, 47.239960>,  <36.406242, 34.689884, 46.736092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983284, 34.384575, 47.239960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288750, 34.126785, 47.224659>,  <36.472031, 33.972111, 47.215477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288750, 34.126785, 47.224659>,  <35.983284, 34.384575, 47.239960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288750, 34.126785, 47.224659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123660, -0.204173, 0.971093,
		-0.633659, -0.736859, -0.235616,
		0.763665, -0.644478, -0.038256,
		36.517849, 33.933441, 47.213181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777565, 33.805687, 47.623909>,  <35.983284, 34.384575, 47.239960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777565, 33.805687, 47.623909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175091, 33.761295, 47.622787>,  <36.413609, 33.734661, 47.622112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175091, 33.761295, 47.622787>,  <35.777565, 33.805687, 47.623909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175091, 33.761295, 47.622787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025756, -0.255100, 0.966571,
		-0.107979, -0.960525, -0.256382,
		0.993820, -0.110973, -0.002806,
		36.473236, 33.728004, 47.621944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888588, 33.188744, 47.992870>,  <35.777565, 33.805687, 47.623909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888588, 33.188744, 47.992870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.255848, 33.347225, 47.995083>,  <36.476204, 33.442314, 47.996410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.255848, 33.347225, 47.995083>,  <35.888588, 33.188744, 47.992870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255848, 33.347225, 47.995083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173095, -0.413596, 0.893855,
		0.356435, -0.819732, -0.448322,
		0.918146, 0.396204, 0.005528,
		36.531292, 33.466087, 47.996742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661026, 32.479607, 47.736256>,  <35.888588, 33.188744, 47.992870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661026, 32.479607, 47.736256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508698, 32.110615, 47.761581>,  <35.417301, 31.889219, 47.776779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508698, 32.110615, 47.761581>,  <35.661026, 32.479607, 47.736256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508698, 32.110615, 47.761581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503128, 0.149275, -0.851222,
		0.775783, -0.356019, -0.520972,
		-0.380820, -0.922479, 0.063319,
		35.394451, 31.833872, 47.780579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536640, 32.357117, 47.036671>,  <35.661026, 32.479607, 47.736256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536640, 32.357117, 47.036671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310375, 32.095028, 47.236954>,  <35.174614, 31.937775, 47.357124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310375, 32.095028, 47.236954>,  <35.536640, 32.357117, 47.036671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310375, 32.095028, 47.236954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672264, 0.014758, -0.740164,
		0.477581, -0.755294, -0.448829,
		-0.565666, -0.655219, 0.500709,
		35.140675, 31.898462, 47.387165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211571, 31.859310, 46.518852>,  <35.536640, 32.357117, 47.036671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211571, 31.859310, 46.518852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973469, 31.806847, 46.835957>,  <34.830608, 31.775370, 47.026218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973469, 31.806847, 46.835957>,  <35.211571, 31.859310, 46.518852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973469, 31.806847, 46.835957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799499, -0.002139, -0.600664,
		0.080477, -0.991360, -0.103585,
		-0.595252, -0.131156, 0.792763,
		34.794891, 31.767500, 47.073784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891251, 31.241861, 46.404770>,  <35.211571, 31.859310, 46.518852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891251, 31.241861, 46.404770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642342, 31.461531, 46.627907>,  <34.492996, 31.593332, 46.761787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642342, 31.461531, 46.627907>,  <34.891251, 31.241861, 46.404770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642342, 31.461531, 46.627907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642633, 0.048526, -0.764636,
		-0.446988, -0.834298, 0.322721,
		-0.622274, 0.549174, 0.557837,
		34.455658, 31.626284, 46.795258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262138, 30.948889, 46.499905>,  <34.891251, 31.241861, 46.404770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262138, 30.948889, 46.499905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192001, 31.339632, 46.548904>,  <34.149918, 31.574078, 46.578304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192001, 31.339632, 46.548904>,  <34.262138, 30.948889, 46.499905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192001, 31.339632, 46.548904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624469, -0.014165, -0.780921,
		-0.761113, -0.213423, 0.612501,
		-0.175343, 0.976857, 0.122495,
		34.139397, 31.632689, 46.585651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644848, 31.062063, 46.107697>,  <34.262138, 30.948889, 46.499905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644848, 31.062063, 46.107697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751301, 31.437704, 46.194656>,  <33.815174, 31.663088, 46.246834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751301, 31.437704, 46.194656>,  <33.644848, 31.062063, 46.107697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751301, 31.437704, 46.194656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457169, 0.321523, -0.829228,
		-0.848629, 0.121294, 0.514895,
		0.266131, 0.939101, 0.217402,
		33.831139, 31.719435, 46.259876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060513, 31.422010, 45.964447>,  <33.644848, 31.062063, 46.107697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060513, 31.422010, 45.964447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386539, 31.651979, 45.935791>,  <33.582153, 31.789961, 45.918598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386539, 31.651979, 45.935791>,  <33.060513, 31.422010, 45.964447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386539, 31.651979, 45.935791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317243, 0.339415, -0.885525,
		-0.484796, 0.744486, 0.459036,
		0.815064, 0.574925, -0.071636,
		33.631058, 31.824457, 45.914299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.974606, 27.232737, 48.391258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.288113, 27.443169, 48.259232>,  <38.476215, 27.569427, 48.180016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.288113, 27.443169, 48.259232>,  <37.974606, 27.232737, 48.391258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288113, 27.443169, 48.259232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559389, 0.367115, -0.743176,
		-0.269796, 0.767116, 0.582016,
		0.783769, 0.526080, -0.330070,
		38.523243, 27.600992, 48.160210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709209, 27.860958, 48.113754>,  <37.974606, 27.232737, 48.391258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709209, 27.860958, 48.113754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.074329, 27.860235, 47.950397>,  <38.293404, 27.859802, 47.852383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.074329, 27.860235, 47.950397>,  <37.709209, 27.860958, 48.113754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074329, 27.860235, 47.950397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395921, 0.241375, -0.885994,
		0.100176, 0.970430, 0.219613,
		0.912804, -0.001806, -0.408394,
		38.348171, 27.859694, 47.827881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828022, 28.512354, 47.723240>,  <37.709209, 27.860958, 48.113754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828022, 28.512354, 47.723240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.108471, 28.268837, 47.574757>,  <38.276741, 28.122726, 47.485668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.108471, 28.268837, 47.574757>,  <37.828022, 28.512354, 47.723240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108471, 28.268837, 47.574757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305821, 0.213535, -0.927834,
		0.644125, 0.764050, -0.036467,
		0.701125, -0.608794, -0.371206,
		38.318810, 28.086199, 47.463394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099113, 28.896307, 47.195354>,  <37.828022, 28.512354, 47.723240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099113, 28.896307, 47.195354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.199982, 28.521978, 47.096848>,  <38.260502, 28.297380, 47.037743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.199982, 28.521978, 47.096848>,  <38.099113, 28.896307, 47.195354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199982, 28.521978, 47.096848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439912, 0.115809, -0.890542,
		0.861909, 0.332903, -0.382476,
		0.252170, -0.935823, -0.246265,
		38.275631, 28.241232, 47.022968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244011, 29.040668, 46.612518>,  <38.099113, 28.896307, 47.195354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244011, 29.040668, 46.612518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.206402, 28.642477, 46.607132>,  <38.183834, 28.403563, 46.603901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.206402, 28.642477, 46.607132>,  <38.244011, 29.040668, 46.612518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206402, 28.642477, 46.607132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459056, 0.055352, -0.886681,
		0.883418, -0.077191, -0.462185,
		-0.094027, -0.995479, -0.013464,
		38.178192, 28.343834, 46.603092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581310, 28.773642, 45.910583>,  <38.244011, 29.040668, 46.612518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581310, 28.773642, 45.910583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.321716, 28.497759, 46.039036>,  <38.165962, 28.332230, 46.116108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.321716, 28.497759, 46.039036>,  <38.581310, 28.773642, 45.910583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321716, 28.497759, 46.039036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401283, -0.048295, -0.914680,
		0.646371, -0.722475, -0.245426,
		-0.648981, -0.689708, 0.321133,
		38.127022, 28.290846, 46.135376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687901, 28.205284, 45.405609>,  <38.581310, 28.773642, 45.910583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687901, 28.205284, 45.405609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.339874, 28.157434, 45.596886>,  <38.131058, 28.128725, 45.711651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.339874, 28.157434, 45.596886>,  <38.687901, 28.205284, 45.405609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339874, 28.157434, 45.596886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444756, -0.227760, -0.866209,
		0.212531, -0.966341, 0.144964,
		-0.870070, -0.119623, 0.478193,
		38.078854, 28.121548, 45.740345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405716, 27.782066, 45.026955>,  <38.687901, 28.205284, 45.405609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405716, 27.782066, 45.026955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.096985, 27.917667, 45.242123>,  <37.911747, 27.999027, 45.371223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.096985, 27.917667, 45.242123>,  <38.405716, 27.782066, 45.026955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096985, 27.917667, 45.242123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626805, -0.263594, -0.733235,
		-0.106775, -0.903103, 0.415937,
		-0.771826, 0.339003, 0.537924,
		37.865437, 28.019369, 45.403500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815777, 27.213511, 44.997028>,  <38.405716, 27.782066, 45.026955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815777, 27.213511, 44.997028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.674099, 27.579533, 45.074196>,  <37.589092, 27.799147, 45.120499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.674099, 27.579533, 45.074196>,  <37.815777, 27.213511, 44.997028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674099, 27.579533, 45.074196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609949, -0.069668, -0.789372,
		-0.708880, -0.397261, 0.582814,
		-0.354190, 0.915057, 0.192923,
		37.567841, 27.854050, 45.132072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200459, 27.159004, 44.717197>,  <37.815777, 27.213511, 44.997028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200459, 27.159004, 44.717197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.240463, 27.553034, 44.773239>,  <37.264465, 27.789452, 44.806862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.240463, 27.553034, 44.773239>,  <37.200459, 27.159004, 44.717197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240463, 27.553034, 44.773239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274368, 0.162651, -0.947769,
		-0.956410, 0.056349, 0.286540,
		0.100012, 0.985073, 0.140101,
		37.270466, 27.848557, 44.815269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617245, 27.434702, 44.504642>,  <37.200459, 27.159004, 44.717197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617245, 27.434702, 44.504642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.872379, 27.741476, 44.476414>,  <37.025459, 27.925541, 44.459476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.872379, 27.741476, 44.476414>,  <36.617245, 27.434702, 44.504642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872379, 27.741476, 44.476414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455072, 0.301365, -0.837907,
		-0.621352, 0.566561, 0.541231,
		0.637833, 0.766935, -0.070572,
		37.063728, 27.971556, 44.455242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145027, 28.038187, 44.357830>,  <36.617245, 27.434702, 44.504642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145027, 28.038187, 44.357830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525036, 28.120865, 44.264248>,  <36.753040, 28.170471, 44.208099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.525036, 28.120865, 44.264248>,  <36.145027, 28.038187, 44.357830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525036, 28.120865, 44.264248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301874, 0.417274, -0.857178,
		-0.079552, 0.884963, 0.458815,
		0.950023, 0.206694, -0.233952,
		36.810043, 28.182873, 44.194061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841152, 28.746452, 44.675297>,  <36.145027, 28.038187, 44.357830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841152, 28.746452, 44.675297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.472961, 28.825302, 44.810272>,  <35.252048, 28.872612, 44.891258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.472961, 28.825302, 44.810272>,  <35.841152, 28.746452, 44.675297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472961, 28.825302, 44.810272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285866, -0.249110, 0.925324,
		0.266462, 0.948202, 0.172949,
		-0.920477, 0.197124, 0.337437,
		35.196819, 28.884439, 44.911503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918259, 29.073996, 45.249180>,  <35.841152, 28.746452, 44.675297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918259, 29.073996, 45.249180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535168, 28.977055, 45.311176>,  <35.305313, 28.918890, 45.348373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535168, 28.977055, 45.311176>,  <35.918259, 29.073996, 45.249180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535168, 28.977055, 45.311176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217426, -0.257029, 0.941627,
		-0.188369, 0.935522, 0.298858,
		-0.957728, -0.242353, 0.154990,
		35.247849, 28.904348, 45.357674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691696, 29.385406, 45.963524>,  <35.918259, 29.073996, 45.249180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691696, 29.385406, 45.963524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429607, 29.095657, 45.877769>,  <35.272354, 28.921808, 45.826317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429607, 29.095657, 45.877769>,  <35.691696, 29.385406, 45.963524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429607, 29.095657, 45.877769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171848, -0.419281, 0.891444,
		-0.735628, 0.547253, 0.399205,
		-0.655224, -0.724374, -0.214390,
		35.233040, 28.878345, 45.813454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335918, 29.431293, 46.535976>,  <35.691696, 29.385406, 45.963524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335918, 29.431293, 46.535976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.255707, 29.083899, 46.354637>,  <35.207581, 28.875462, 46.245834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.255707, 29.083899, 46.354637>,  <35.335918, 29.431293, 46.535976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255707, 29.083899, 46.354637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179042, -0.487438, 0.854604,
		-0.963189, 0.090204, 0.253241,
		-0.200528, -0.868485, -0.453345,
		35.195549, 28.823353, 46.218636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774288, 29.162968, 46.915092>,  <35.335918, 29.431293, 46.535976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774288, 29.162968, 46.915092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.957916, 28.861250, 46.727348>,  <35.068092, 28.680220, 46.614704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.957916, 28.861250, 46.727348>,  <34.774288, 29.162968, 46.915092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957916, 28.861250, 46.727348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128048, -0.466623, 0.875138,
		-0.879125, -0.461849, -0.117626,
		0.459068, -0.754294, -0.469359,
		35.095638, 28.634962, 46.586540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530052, 28.546911, 47.264942>,  <34.774288, 29.162968, 46.915092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530052, 28.546911, 47.264942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875401, 28.446632, 47.089787>,  <35.082607, 28.386465, 46.984692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875401, 28.446632, 47.089787>,  <34.530052, 28.546911, 47.264942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875401, 28.446632, 47.089787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205232, -0.618327, 0.758651,
		-0.460949, -0.744864, -0.482393,
		0.863369, -0.250696, -0.437888,
		35.134411, 28.371424, 46.958420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561989, 27.748077, 47.412365>,  <34.530052, 28.546911, 47.264942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561989, 27.748077, 47.412365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.927761, 27.880133, 47.318710>,  <35.147224, 27.959366, 47.262516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.927761, 27.880133, 47.318710>,  <34.561989, 27.748077, 47.412365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927761, 27.880133, 47.318710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375680, -0.477124, 0.794492,
		0.150580, -0.814470, -0.560325,
		0.914434, 0.330137, -0.234135,
		35.202091, 27.979174, 47.248470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979649, 27.436668, 47.792233>,  <34.561989, 27.748077, 47.412365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979649, 27.436668, 47.792233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.253445, 27.702911, 47.673279>,  <35.417725, 27.862658, 47.601906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.253445, 27.702911, 47.673279>,  <34.979649, 27.436668, 47.792233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253445, 27.702911, 47.673279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609399, -0.298518, 0.734520,
		0.400128, -0.683998, -0.609954,
		0.684493, 0.665607, -0.297382,
		35.458794, 27.902594, 47.584064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680077, 27.186563, 47.900726>,  <34.979649, 27.436668, 47.792233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680077, 27.186563, 47.900726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.708828, 27.585196, 47.917038>,  <35.726078, 27.824375, 47.926826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.708828, 27.585196, 47.917038>,  <35.680077, 27.186563, 47.900726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708828, 27.585196, 47.917038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650108, -0.077821, 0.755846,
		0.756434, -0.027816, -0.653478,
		0.071879, 0.996579, 0.040783,
		35.730392, 27.884169, 47.929272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368786, 27.294380, 48.133774>,  <35.680077, 27.186563, 47.900726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368786, 27.294380, 48.133774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.181850, 27.639019, 48.213009>,  <36.069687, 27.845802, 48.260551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.181850, 27.639019, 48.213009>,  <36.368786, 27.294380, 48.133774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181850, 27.639019, 48.213009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576841, 0.127379, 0.806863,
		0.669959, 0.491348, -0.556535,
		-0.467342, 0.861598, 0.198091,
		36.041649, 27.897499, 48.272438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895115, 27.792048, 48.322441>,  <36.368786, 27.294380, 48.133774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895115, 27.792048, 48.322441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.568020, 27.961578, 48.478218>,  <36.371761, 28.063297, 48.571686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.568020, 27.961578, 48.478218>,  <36.895115, 27.792048, 48.322441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568020, 27.961578, 48.478218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541935, 0.338979, 0.769025,
		0.193919, 0.839918, -0.506885,
		-0.817741, 0.423828, 0.389447,
		36.322697, 28.088726, 48.595051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174442, 28.402651, 48.684624>,  <36.895115, 27.792048, 48.322441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174442, 28.402651, 48.684624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.812588, 28.327303, 48.837543>,  <36.595474, 28.282095, 48.929295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.812588, 28.327303, 48.837543>,  <37.174442, 28.402651, 48.684624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812588, 28.327303, 48.837543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275281, 0.426535, 0.861561,
		-0.325355, 0.884638, -0.334005,
		-0.904635, -0.188368, 0.382300,
		36.541199, 28.270792, 48.952232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098682, 28.952009, 49.001720>,  <37.174442, 28.402651, 48.684624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098682, 28.952009, 49.001720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858711, 28.685526, 49.178925>,  <36.714729, 28.525635, 49.285248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858711, 28.685526, 49.178925>,  <37.098682, 28.952009, 49.001720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858711, 28.685526, 49.178925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405527, 0.224106, 0.886186,
		-0.689666, 0.711295, 0.135720,
		-0.599924, -0.666210, 0.443007,
		36.678734, 28.485662, 49.311829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800392, 29.358179, 49.470192>,  <37.098682, 28.952009, 49.001720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800392, 29.358179, 49.470192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.704865, 28.993666, 49.604374>,  <36.647549, 28.774958, 49.684883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.704865, 28.993666, 49.604374>,  <36.800392, 29.358179, 49.470192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704865, 28.993666, 49.604374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387577, 0.227289, 0.893378,
		-0.890366, 0.343366, 0.298913,
		-0.238816, -0.911284, 0.335451,
		36.633221, 28.720280, 49.705009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698822, 29.615168, 48.892006>,  <36.800392, 29.358179, 49.470192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698822, 29.615168, 48.892006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.545624, 29.858517, 49.170055>,  <36.453705, 30.004526, 49.336884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.545624, 29.858517, 49.170055>,  <36.698822, 29.615168, 48.892006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545624, 29.858517, 49.170055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426091, 0.551317, -0.717284,
		-0.819610, -0.570902, 0.048070,
		-0.382997, 0.608375, 0.695121,
		36.430725, 30.041029, 49.378593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934742, 29.653316, 48.820251>,  <36.698822, 29.615168, 48.892006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934742, 29.653316, 48.820251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.066422, 30.008087, 48.949860>,  <36.145428, 30.220949, 49.027622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.066422, 30.008087, 48.949860>,  <35.934742, 29.653316, 48.820251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066422, 30.008087, 48.949860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715784, 0.458196, -0.526982,
		-0.615858, -0.058444, 0.785686,
		0.329199, 0.886928, 0.324017,
		36.165180, 30.274166, 49.047066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320671, 29.994743, 48.922512>,  <35.934742, 29.653316, 48.820251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320671, 29.994743, 48.922512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615326, 30.265059, 48.912155>,  <35.792118, 30.427248, 48.905941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615326, 30.265059, 48.912155>,  <35.320671, 29.994743, 48.922512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615326, 30.265059, 48.912155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533251, 0.556873, -0.636816,
		-0.415937, 0.482910, 0.770581,
		0.736641, 0.675789, -0.025888,
		35.836319, 30.467794, 48.904388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043171, 30.612185, 49.176598>,  <35.320671, 29.994743, 48.922512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043171, 30.612185, 49.176598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.353905, 30.723152, 48.950478>,  <35.540344, 30.789732, 48.814804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.353905, 30.723152, 48.950478>,  <35.043171, 30.612185, 49.176598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353905, 30.723152, 48.950478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598330, 0.605017, -0.525315,
		0.196283, 0.746320, 0.635988,
		0.776836, 0.277420, -0.565300,
		35.586956, 30.806377, 48.780888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080894, 31.393890, 49.253551>,  <35.043171, 30.612185, 49.176598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080894, 31.393890, 49.253551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.271141, 31.258028, 48.928978>,  <35.385288, 31.176512, 48.734234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.271141, 31.258028, 48.928978>,  <35.080894, 31.393890, 49.253551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271141, 31.258028, 48.928978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445202, 0.702637, -0.555064,
		0.758674, 0.625249, 0.182969,
		0.475614, -0.339655, -0.811435,
		35.413826, 31.156132, 48.685547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221600, 32.007027, 49.030972>,  <35.080894, 31.393890, 49.253551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221600, 32.007027, 49.030972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.215767, 31.751564, 48.723232>,  <35.212269, 31.598286, 48.538589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.215767, 31.751564, 48.723232>,  <35.221600, 32.007027, 49.030972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215767, 31.751564, 48.723232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360009, 0.721184, -0.591851,
		0.932835, 0.268343, -0.240439,
		-0.014581, -0.638659, -0.769352,
		35.211391, 31.559967, 48.492428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699402, 32.378479, 48.695778>,  <35.221600, 32.007027, 49.030972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699402, 32.378479, 48.695778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.040844, 32.185169, 48.618000>,  <36.245708, 32.069183, 48.571335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.040844, 32.185169, 48.618000>,  <35.699402, 32.378479, 48.695778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040844, 32.185169, 48.618000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407097, -0.851753, 0.329831,
		-0.325019, -0.202386, -0.923798,
		0.853601, -0.483276, -0.194445,
		36.296925, 32.040188, 48.559666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304829, 32.669178, 48.299812>,  <35.699402, 32.378479, 48.695778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304829, 32.669178, 48.299812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.539867, 32.990730, 48.336716>,  <36.680889, 33.183662, 48.358856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.539867, 32.990730, 48.336716>,  <36.304829, 32.669178, 48.299812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539867, 32.990730, 48.336716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396105, -0.385193, 0.833503,
		0.705571, -0.453219, -0.544758,
		0.587597, 0.803877, 0.092259,
		36.716148, 33.231892, 48.364395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942535, 32.435909, 48.507351>,  <36.304829, 32.669178, 48.299812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942535, 32.435909, 48.507351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.950180, 32.818710, 48.623135>,  <36.954769, 33.048389, 48.692604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.950180, 32.818710, 48.623135>,  <36.942535, 32.435909, 48.507351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950180, 32.818710, 48.623135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556533, -0.250697, 0.792100,
		0.830606, 0.145953, -0.537393,
		0.019113, 0.956999, 0.289458,
		36.955914, 33.105812, 48.709972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641087, 32.595661, 48.615860>,  <36.942535, 32.435909, 48.507351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641087, 32.595661, 48.615860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.421349, 32.850147, 48.832542>,  <37.289505, 33.002838, 48.962551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.421349, 32.850147, 48.832542>,  <37.641087, 32.595661, 48.615860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421349, 32.850147, 48.832542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524409, -0.242227, 0.816285,
		0.650552, 0.732498, -0.200572,
		-0.549343, 0.636217, 0.541710,
		37.256546, 33.041012, 48.995056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131073, 32.980309, 49.007767>,  <37.641087, 32.595661, 48.615860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131073, 32.980309, 49.007767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.781094, 33.013592, 49.198570>,  <37.571106, 33.033562, 49.313053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.781094, 33.013592, 49.198570>,  <38.131073, 32.980309, 49.007767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781094, 33.013592, 49.198570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476587, -0.026177, 0.878738,
		0.085608, 0.996188, -0.016754,
		-0.874949, 0.083212, 0.477011,
		37.518608, 33.038555, 49.341675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288803, 33.474545, 49.637661>,  <38.131073, 32.980309, 49.007767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288803, 33.474545, 49.637661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.928619, 33.327148, 49.730095>,  <37.712509, 33.238712, 49.785553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.928619, 33.327148, 49.730095>,  <38.288803, 33.474545, 49.637661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928619, 33.327148, 49.730095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301272, -0.145209, 0.942417,
		-0.313713, 0.918222, 0.241768,
		-0.900455, -0.368486, 0.231081,
		37.658482, 33.216602, 49.799419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117218, 33.775562, 50.278915>,  <38.288803, 33.474545, 49.637661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117218, 33.775562, 50.278915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891350, 33.446678, 50.250305>,  <37.755829, 33.249348, 50.233139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891350, 33.446678, 50.250305>,  <38.117218, 33.775562, 50.278915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891350, 33.446678, 50.250305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298066, -0.283980, 0.911325,
		-0.769615, 0.493276, 0.405428,
		-0.564668, -0.822213, -0.071526,
		37.721951, 33.200016, 50.228848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790867, 33.718246, 50.943840>,  <38.117218, 33.775562, 50.278915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790867, 33.718246, 50.943840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.743256, 33.353836, 50.785923>,  <37.714687, 33.135189, 50.691174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.743256, 33.353836, 50.785923>,  <37.790867, 33.718246, 50.943840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743256, 33.353836, 50.785923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186319, -0.411047, 0.892371,
		-0.975252, 0.032663, 0.218669,
		-0.119031, -0.911029, -0.394788,
		37.707546, 33.080528, 50.667488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432770, 33.332199, 51.385792>,  <37.790867, 33.718246, 50.943840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432770, 33.332199, 51.385792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.621861, 33.051060, 51.173180>,  <37.735317, 32.882374, 51.045612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.621861, 33.051060, 51.173180>,  <37.432770, 33.332199, 51.385792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621861, 33.051060, 51.173180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354597, -0.400467, 0.844918,
		-0.806713, -0.587898, 0.059916,
		0.472731, -0.702853, -0.531529,
		37.763680, 32.840202, 51.013721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333138, 32.724838, 51.742607>,  <37.432770, 33.332199, 51.385792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333138, 32.724838, 51.742607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.666164, 32.665962, 51.528999>,  <37.865978, 32.630638, 51.400837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.666164, 32.665962, 51.528999>,  <37.333138, 32.724838, 51.742607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666164, 32.665962, 51.528999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391629, -0.525379, 0.755383,
		-0.391744, -0.838041, -0.379769,
		0.832564, -0.147188, -0.534015,
		37.915936, 32.621807, 51.368793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.385769, 34.670479, 35.572266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781727, 34.695744, 35.623051>,  <36.019302, 34.710903, 35.653522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781727, 34.695744, 35.623051>,  <35.385769, 34.670479, 35.572266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781727, 34.695744, 35.623051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122154, -0.074922, 0.989679,
		0.072028, -0.995187, -0.066449,
		0.989894, 0.063168, 0.126963,
		36.078693, 34.714695, 35.661140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669117, 33.955883, 35.850189>,  <35.385769, 34.670479, 35.572266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669117, 33.955883, 35.850189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916916, 34.257084, 35.938919>,  <36.065598, 34.437805, 35.992157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916916, 34.257084, 35.938919>,  <35.669117, 33.955883, 35.850189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916916, 34.257084, 35.938919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073253, -0.225890, 0.971395,
		0.781572, -0.618028, -0.084779,
		0.619500, 0.753004, 0.221822,
		36.102764, 34.482986, 36.005466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061119, 33.670551, 36.309044>,  <35.669117, 33.955883, 35.850189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061119, 33.670551, 36.309044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155327, 34.056610, 36.354683>,  <36.211853, 34.288246, 36.382065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155327, 34.056610, 36.354683>,  <36.061119, 33.670551, 36.309044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155327, 34.056610, 36.354683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124980, -0.086349, 0.988395,
		0.963800, -0.247047, 0.100287,
		0.235520, 0.965148, 0.114099,
		36.225983, 34.346153, 36.388912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566971, 33.637981, 36.836910>,  <36.061119, 33.670551, 36.309044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566971, 33.637981, 36.836910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405815, 34.002785, 36.867672>,  <36.309120, 34.221668, 36.886131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405815, 34.002785, 36.867672>,  <36.566971, 33.637981, 36.836910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405815, 34.002785, 36.867672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158123, -0.152124, 0.975631,
		0.901486, 0.380912, 0.205500,
		-0.402891, 0.912011, 0.076907,
		36.284946, 34.276386, 36.890743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712276, 33.723385, 37.490005>,  <36.566971, 33.637981, 36.836910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712276, 33.723385, 37.490005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478294, 34.040970, 37.423733>,  <36.337906, 34.231522, 37.383968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478294, 34.040970, 37.423733>,  <36.712276, 33.723385, 37.490005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478294, 34.040970, 37.423733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199050, 0.057493, 0.978301,
		0.786261, 0.605240, 0.124408,
		-0.584955, 0.793964, -0.165678,
		36.302807, 34.279160, 37.374031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938541, 34.174770, 37.950607>,  <36.712276, 33.723385, 37.490005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938541, 34.174770, 37.950607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563820, 34.281902, 37.860569>,  <36.338985, 34.346180, 37.806545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563820, 34.281902, 37.860569>,  <36.938541, 34.174770, 37.950607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563820, 34.281902, 37.860569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230366, 0.011998, 0.973030,
		0.263304, 0.963392, 0.050459,
		-0.936804, 0.267827, -0.225092,
		36.282780, 34.362251, 37.793041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755905, 34.657215, 38.488308>,  <36.938541, 34.174770, 37.950607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755905, 34.657215, 38.488308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407547, 34.562824, 38.315865>,  <36.198532, 34.506187, 38.212399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407547, 34.562824, 38.315865>,  <36.755905, 34.657215, 38.488308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407547, 34.562824, 38.315865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434814, -0.038903, 0.899680,
		-0.229079, 0.970978, -0.068728,
		-0.870896, -0.235981, -0.431107,
		36.146278, 34.492031, 38.186531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277653, 35.125278, 38.874191>,  <36.755905, 34.657215, 38.488308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277653, 35.125278, 38.874191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058510, 34.826511, 38.723473>,  <35.927025, 34.647251, 38.633041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058510, 34.826511, 38.723473>,  <36.277653, 35.125278, 38.874191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058510, 34.826511, 38.723473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552104, -0.015576, 0.833630,
		-0.628519, 0.664738, -0.403841,
		-0.547855, -0.746915, -0.376794,
		35.894154, 34.602436, 38.610435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537991, 35.311111, 38.986664>,  <36.277653, 35.125278, 38.874191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537991, 35.311111, 38.986664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553188, 34.914299, 38.938614>,  <35.562309, 34.676212, 38.909786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553188, 34.914299, 38.938614>,  <35.537991, 35.311111, 38.986664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553188, 34.914299, 38.938614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518978, -0.122318, 0.845991,
		-0.853943, 0.030195, -0.519490,
		0.037999, -0.992031, -0.120123,
		35.564587, 34.616688, 38.902576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997398, 35.110840, 39.197605>,  <35.537991, 35.311111, 38.986664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997398, 35.110840, 39.197605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141991, 34.738052, 39.208637>,  <35.228745, 34.514378, 39.215256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141991, 34.738052, 39.208637>,  <34.997398, 35.110840, 39.197605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141991, 34.738052, 39.208637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532150, -0.181930, 0.826872,
		-0.765603, -0.313578, -0.561713,
		0.361481, -0.931971, 0.027584,
		35.250435, 34.458462, 39.216911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377186, 34.641251, 39.418663>,  <34.997398, 35.110840, 39.197605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377186, 34.641251, 39.418663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708229, 34.427364, 39.486938>,  <34.906857, 34.299034, 39.527905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708229, 34.427364, 39.486938>,  <34.377186, 34.641251, 39.418663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708229, 34.427364, 39.486938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275161, -0.121445, 0.953697,
		-0.489228, -0.836259, -0.247643,
		0.827612, -0.534716, 0.170692,
		34.956512, 34.266949, 39.538147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276691, 33.978737, 39.700558>,  <34.377186, 34.641251, 39.418663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276691, 33.978737, 39.700558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636501, 34.112129, 39.813446>,  <34.852386, 34.192165, 39.881180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636501, 34.112129, 39.813446>,  <34.276691, 33.978737, 39.700558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636501, 34.112129, 39.813446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313605, 0.043149, 0.948573,
		0.304158, -0.941767, 0.143396,
		0.899522, 0.333486, 0.282218,
		34.906357, 34.212173, 39.898113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102581, 33.287697, 39.730549>,  <34.276691, 33.978737, 39.700558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102581, 33.287697, 39.730549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939182, 32.928604, 39.796520>,  <33.841145, 32.713146, 39.836102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939182, 32.928604, 39.796520>,  <34.102581, 33.287697, 39.730549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939182, 32.928604, 39.796520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117848, -0.127305, -0.984838,
		0.905121, -0.421738, -0.053793,
		-0.408495, -0.897737, 0.164927,
		33.816635, 32.659283, 39.845997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353973, 32.879356, 39.215054>,  <34.102581, 33.287697, 39.730549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353973, 32.879356, 39.215054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043461, 32.668152, 39.352806>,  <33.857155, 32.541431, 39.435455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043461, 32.668152, 39.352806>,  <34.353973, 32.879356, 39.215054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043461, 32.668152, 39.352806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224178, -0.279359, -0.933650,
		0.589179, -0.801977, 0.098493,
		-0.776281, -0.528007, 0.344378,
		33.810577, 32.509750, 39.456120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336334, 32.315105, 38.797512>,  <34.353973, 32.879356, 39.215054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336334, 32.315105, 38.797512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975487, 32.297726, 38.969234>,  <33.758980, 32.287296, 39.072269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975487, 32.297726, 38.969234>,  <34.336334, 32.315105, 38.797512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975487, 32.297726, 38.969234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411253, -0.214593, -0.885901,
		0.130620, -0.975736, 0.175717,
		-0.902114, -0.043452, 0.429305,
		33.704853, 32.284691, 39.098026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972004, 31.672903, 38.569263>,  <34.336334, 32.315105, 38.797512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972004, 31.672903, 38.569263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675625, 31.908800, 38.697762>,  <33.497795, 32.050339, 38.774860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675625, 31.908800, 38.697762>,  <33.972004, 31.672903, 38.569263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675625, 31.908800, 38.697762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527904, -0.215810, -0.821428,
		-0.415102, -0.778223, 0.471231,
		-0.740950, 0.589742, 0.321244,
		33.453339, 32.085724, 38.794136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384640, 31.306055, 38.410049>,  <33.972004, 31.672903, 38.569263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384640, 31.306055, 38.410049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234440, 31.673922, 38.456024>,  <33.144318, 31.894642, 38.483608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234440, 31.673922, 38.456024>,  <33.384640, 31.306055, 38.410049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234440, 31.673922, 38.456024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622059, -0.158151, -0.766832,
		-0.687052, -0.359446, 0.631473,
		-0.375503, 0.919667, 0.114938,
		33.121788, 31.949821, 38.490505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699921, 31.222473, 38.109810>,  <33.384640, 31.306055, 38.410049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699921, 31.222473, 38.109810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729382, 31.620024, 38.142757>,  <32.747059, 31.858555, 38.162525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729382, 31.620024, 38.142757>,  <32.699921, 31.222473, 38.109810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729382, 31.620024, 38.142757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638001, 0.110436, -0.762075,
		-0.766505, 0.003577, 0.642228,
		0.073651, 0.993877, 0.082367,
		32.751476, 31.918186, 38.167469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003036, 31.539461, 38.091576>,  <32.699921, 31.222473, 38.109810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003036, 31.539461, 38.091576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250237, 31.835634, 37.985870>,  <32.398556, 32.013340, 37.922447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250237, 31.835634, 37.985870>,  <32.003036, 31.539461, 38.091576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250237, 31.835634, 37.985870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531706, 0.146043, -0.834243,
		-0.579107, 0.656072, 0.483947,
		0.618000, 0.740433, -0.264262,
		32.435638, 32.057766, 37.906593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569710, 32.172634, 37.993214>,  <32.003036, 31.539461, 38.091576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569710, 32.172634, 37.993214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905724, 32.195541, 37.777412>,  <32.107330, 32.209286, 37.647934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905724, 32.195541, 37.777412>,  <31.569710, 32.172634, 37.993214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905724, 32.195541, 37.777412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539012, 0.201181, -0.817920,
		0.061700, 0.977879, 0.199866,
		0.840035, 0.057265, -0.539501,
		32.157734, 32.212719, 37.615562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436834, 32.664375, 37.480064>,  <31.569710, 32.172634, 37.993214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436834, 32.664375, 37.480064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760609, 32.501785, 37.310551>,  <31.954874, 32.404232, 37.208843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760609, 32.501785, 37.310551>,  <31.436834, 32.664375, 37.480064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760609, 32.501785, 37.310551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415731, 0.113002, -0.902440,
		0.414707, 0.906647, -0.077516,
		0.809436, -0.406474, -0.423784,
		32.003441, 32.379845, 37.183414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770424, 33.298378, 37.038185>,  <31.436834, 32.664375, 37.480064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770424, 33.298378, 37.038185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858559, 32.926933, 36.918758>,  <31.911440, 32.704067, 36.847103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858559, 32.926933, 36.918758>,  <31.770424, 33.298378, 37.038185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858559, 32.926933, 36.918758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386080, 0.198064, -0.900951,
		0.895765, 0.313781, -0.314876,
		0.220335, -0.928608, -0.298563,
		31.924660, 32.648350, 36.829189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105385, 33.337631, 36.367119>,  <31.770424, 33.298378, 37.038185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105385, 33.337631, 36.367119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010406, 32.950043, 36.339653>,  <31.953419, 32.717491, 36.323174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010406, 32.950043, 36.339653>,  <32.105385, 33.337631, 36.367119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010406, 32.950043, 36.339653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134395, 0.102773, -0.985584,
		0.962059, -0.224794, -0.154627,
		-0.237445, -0.968971, -0.068663,
		31.939173, 32.659351, 36.319054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310680, 33.177765, 35.724453>,  <32.105385, 33.337631, 36.367119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310680, 33.177765, 35.724453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095871, 32.854332, 35.820621>,  <31.966984, 32.660275, 35.878323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095871, 32.854332, 35.820621>,  <32.310680, 33.177765, 35.724453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095871, 32.854332, 35.820621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267180, -0.107296, -0.957654,
		0.800135, -0.578523, -0.158415,
		-0.537027, -0.808578, 0.240421,
		31.934763, 32.611759, 35.892750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397881, 32.598366, 35.274517>,  <32.310680, 33.177765, 35.724453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397881, 32.598366, 35.274517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043293, 32.495483, 35.428410>,  <31.830540, 32.433754, 35.520744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043293, 32.495483, 35.428410>,  <32.397881, 32.598366, 35.274517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043293, 32.495483, 35.428410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336764, -0.211703, -0.917481,
		0.317429, -0.942883, 0.101052,
		-0.886470, -0.257204, 0.384730,
		31.777351, 32.418324, 35.543827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188553, 31.916965, 34.971817>,  <32.397881, 32.598366, 35.274517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188553, 31.916965, 34.971817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860565, 32.110977, 35.093403>,  <31.663773, 32.227386, 35.166355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860565, 32.110977, 35.093403>,  <32.188553, 31.916965, 34.971817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860565, 32.110977, 35.093403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345840, 0.003355, -0.938287,
		-0.456119, -0.874490, 0.164992,
		-0.819969, 0.485032, 0.303964,
		31.614574, 32.256485, 35.184593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668852, 31.603823, 34.566650>,  <32.188553, 31.916965, 34.971817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668852, 31.603823, 34.566650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557058, 31.959574, 34.711369>,  <31.489983, 32.173023, 34.798199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557058, 31.959574, 34.711369>,  <31.668852, 31.603823, 34.566650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557058, 31.959574, 34.711369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437148, 0.217627, -0.872663,
		-0.854862, -0.402057, 0.327965,
		-0.279486, 0.889376, 0.361799,
		31.473213, 32.226387, 34.819908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023129, 30.932030, 34.567326>,  <31.668852, 31.603823, 34.566650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023129, 30.932030, 34.567326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250111, 30.628002, 34.694000>,  <32.386299, 30.445585, 34.770004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250111, 30.628002, 34.694000>,  <32.023129, 30.932030, 34.567326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250111, 30.628002, 34.694000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554199, -0.068095, 0.829594,
		-0.608985, -0.646263, -0.459871,
		0.567451, -0.760070, 0.316689,
		32.420345, 30.399981, 34.789005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627640, 30.470726, 35.087582>,  <32.023129, 30.932030, 34.567326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627640, 30.470726, 35.087582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011627, 30.425919, 35.190277>,  <32.242020, 30.399035, 35.251892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011627, 30.425919, 35.190277>,  <31.627640, 30.470726, 35.087582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011627, 30.425919, 35.190277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280090, -0.372709, 0.884668,
		-0.003412, -0.921162, -0.389164,
		0.959968, -0.112019, 0.256737,
		32.299618, 30.392313, 35.267300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547215, 29.885765, 35.353176>,  <31.627640, 30.470726, 35.087582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547215, 29.885765, 35.353176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892025, 30.030558, 35.495094>,  <32.098911, 30.117434, 35.580246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892025, 30.030558, 35.495094>,  <31.547215, 29.885765, 35.353176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892025, 30.030558, 35.495094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177723, -0.439690, 0.880391,
		0.474687, -0.821975, -0.314691,
		0.862025, 0.361982, 0.354799,
		32.150631, 30.139153, 35.601536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949821, 29.253922, 35.631695>,  <31.547215, 29.885765, 35.353176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949821, 29.253922, 35.631695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067120, 29.595085, 35.804462>,  <32.137497, 29.799784, 35.908123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067120, 29.595085, 35.804462>,  <31.949821, 29.253922, 35.631695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067120, 29.595085, 35.804462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027036, -0.444201, 0.895519,
		0.955655, -0.274285, -0.107201,
		0.293246, 0.852909, 0.431918,
		32.155094, 29.850958, 35.934036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218773, 28.887312, 36.181324>,  <31.949821, 29.253922, 35.631695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218773, 28.887312, 36.181324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263729, 29.268745, 36.293076>,  <32.290703, 29.497604, 36.360126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263729, 29.268745, 36.293076>,  <32.218773, 28.887312, 36.181324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263729, 29.268745, 36.293076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270079, -0.299887, 0.914946,
		0.956257, -0.027374, -0.291245,
		0.112386, 0.953582, 0.279376,
		32.297443, 29.554821, 36.376888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693970, 28.791063, 36.612762>,  <32.218773, 28.887312, 36.181324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693970, 28.791063, 36.612762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559029, 29.153561, 36.714672>,  <32.478062, 29.371059, 36.775818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559029, 29.153561, 36.714672>,  <32.693970, 28.791063, 36.612762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559029, 29.153561, 36.714672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168595, -0.208104, 0.963467,
		0.926157, 0.367986, -0.082583,
		-0.337357, 0.906244, 0.254777,
		32.457821, 29.425434, 36.791103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262257, 29.107403, 37.088737>,  <32.693970, 28.791063, 36.612762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262257, 29.107403, 37.088737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907471, 29.289505, 37.119804>,  <32.694599, 29.398766, 37.138443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907471, 29.289505, 37.119804>,  <33.262257, 29.107403, 37.088737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907471, 29.289505, 37.119804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070472, -0.032782, 0.996975,
		0.456423, 0.889758, -0.003006,
		-0.886968, 0.455254, 0.077665,
		32.641380, 29.426081, 37.143105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415024, 29.714138, 37.523251>,  <33.262257, 29.107403, 37.088737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415024, 29.714138, 37.523251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029041, 29.609919, 37.535694>,  <32.797451, 29.547386, 37.543159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029041, 29.609919, 37.535694>,  <33.415024, 29.714138, 37.523251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029041, 29.609919, 37.535694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075667, -0.162800, 0.983753,
		-0.251251, 0.951636, 0.176810,
		-0.964960, -0.260548, 0.031104,
		32.739552, 29.531754, 37.545025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061405, 30.060749, 38.048004>,  <33.415024, 29.714138, 37.523251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061405, 30.060749, 38.048004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793308, 29.766806, 38.006523>,  <32.632450, 29.590439, 37.981632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793308, 29.766806, 38.006523>,  <33.061405, 30.060749, 38.048004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793308, 29.766806, 38.006523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095456, -0.053215, 0.994010,
		-0.735977, 0.676127, -0.034480,
		-0.670243, -0.734860, -0.103706,
		32.592236, 29.546347, 37.975410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570301, 30.258810, 38.511364>,  <33.061405, 30.060749, 38.048004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570301, 30.258810, 38.511364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545395, 29.866493, 38.437424>,  <32.530449, 29.631104, 38.393059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545395, 29.866493, 38.437424>,  <32.570301, 30.258810, 38.511364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545395, 29.866493, 38.437424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134502, -0.175278, 0.975288,
		-0.988955, 0.085592, -0.121004,
		-0.062268, -0.980791, -0.184855,
		32.526714, 29.572256, 38.381966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005413, 30.047258, 38.981621>,  <32.570301, 30.258810, 38.511364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005413, 30.047258, 38.981621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182571, 29.709190, 38.861935>,  <32.288868, 29.506350, 38.790123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182571, 29.709190, 38.861935>,  <32.005413, 30.047258, 38.981621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182571, 29.709190, 38.861935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030642, -0.319269, 0.947168,
		-0.896049, -0.428666, -0.115506,
		0.442896, -0.845170, -0.299216,
		32.315441, 29.455639, 38.772171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635305, 29.491125, 39.243282>,  <32.005413, 30.047258, 38.981621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635305, 29.491125, 39.243282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005199, 29.344795, 39.201256>,  <32.227135, 29.256998, 39.176041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005199, 29.344795, 39.201256>,  <31.635305, 29.491125, 39.243282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005199, 29.344795, 39.201256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117320, -0.536563, 0.835665,
		-0.362080, -0.760443, -0.539097,
		0.924735, -0.365824, -0.105064,
		32.282619, 29.235048, 39.169735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652479, 28.734829, 39.381378>,  <31.635305, 29.491125, 39.243282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652479, 28.734829, 39.381378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029984, 28.850727, 39.445087>,  <32.256485, 28.920265, 39.483315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029984, 28.850727, 39.445087>,  <31.652479, 28.734829, 39.381378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029984, 28.850727, 39.445087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029631, -0.553895, 0.832059,
		0.329304, -0.780544, -0.531329,
		0.943759, 0.289744, 0.159272,
		32.313110, 28.937651, 39.492870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952528, 28.263863, 39.876057>,  <31.652479, 28.734829, 39.381378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952528, 28.263863, 39.876057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254330, 28.525673, 39.895298>,  <32.435410, 28.682760, 39.906841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254330, 28.525673, 39.895298>,  <31.952528, 28.263863, 39.876057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254330, 28.525673, 39.895298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198867, -0.297856, 0.933667,
		0.625438, -0.694892, -0.354898,
		0.754506, 0.654528, 0.048099,
		32.480682, 28.722031, 39.909729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502392, 27.924921, 40.264862>,  <31.952528, 28.263863, 39.876057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502392, 27.924921, 40.264862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621925, 28.305784, 40.290451>,  <32.693645, 28.534302, 40.305805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621925, 28.305784, 40.290451>,  <32.502392, 27.924921, 40.264862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621925, 28.305784, 40.290451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246004, -0.141636, 0.958864,
		0.922051, -0.270805, -0.276561,
		0.298837, 0.952157, 0.063977,
		32.711575, 28.591431, 40.309643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159824, 27.927458, 40.578323>,  <32.502392, 27.924921, 40.264862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159824, 27.927458, 40.578323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020191, 28.298584, 40.630939>,  <32.936413, 28.521259, 40.662510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020191, 28.298584, 40.630939>,  <33.159824, 27.927458, 40.578323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020191, 28.298584, 40.630939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409607, 0.024827, 0.911924,
		0.842831, 0.372215, -0.388706,
		-0.349082, 0.927814, 0.131537,
		32.915466, 28.576929, 40.670399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772934, 28.211878, 40.755249>,  <33.159824, 27.927458, 40.578323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772934, 28.211878, 40.755249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460136, 28.440542, 40.854591>,  <33.272457, 28.577742, 40.914196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460136, 28.440542, 40.854591>,  <33.772934, 28.211878, 40.755249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460136, 28.440542, 40.854591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328982, 0.040130, 0.943483,
		0.529386, 0.819508, -0.219448,
		-0.781998, 0.571661, 0.248359,
		33.225536, 28.612041, 40.929100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069794, 28.758121, 41.054901>,  <33.772934, 28.211878, 40.755249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069794, 28.758121, 41.054901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694447, 28.776711, 41.191902>,  <33.469238, 28.787863, 41.274105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694447, 28.776711, 41.191902>,  <34.069794, 28.758121, 41.054901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694447, 28.776711, 41.191902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341629, 0.275313, 0.898606,
		-0.052538, 0.960231, -0.274220,
		-0.938365, 0.046471, 0.342507,
		33.412937, 28.790651, 41.294655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965267, 29.459522, 41.373123>,  <34.069794, 28.758121, 41.054901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965267, 29.459522, 41.373123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701141, 29.211660, 41.542831>,  <33.542664, 29.062943, 41.644657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701141, 29.211660, 41.542831>,  <33.965267, 29.459522, 41.373123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701141, 29.211660, 41.542831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325223, 0.273278, 0.905289,
		-0.676913, 0.735761, 0.021077,
		-0.660317, -0.619657, 0.424272,
		33.503048, 29.025763, 41.670113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664928, 29.802237, 41.904900>,  <33.965267, 29.459522, 41.373123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664928, 29.802237, 41.904900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590870, 29.416174, 41.978863>,  <33.546432, 29.184536, 42.023243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590870, 29.416174, 41.978863>,  <33.664928, 29.802237, 41.904900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590870, 29.416174, 41.978863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355026, 0.109762, 0.928391,
		-0.916339, 0.237539, 0.322333,
		-0.185149, -0.965157, 0.184912,
		33.535324, 29.126627, 42.034336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284370, 29.814735, 42.523293>,  <33.664928, 29.802237, 41.904900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284370, 29.814735, 42.523293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398426, 29.431730, 42.506023>,  <33.466862, 29.201927, 42.495663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398426, 29.431730, 42.506023>,  <33.284370, 29.814735, 42.523293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398426, 29.431730, 42.506023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218089, 0.020957, 0.975704,
		-0.933344, -0.287630, 0.214799,
		0.285143, -0.957512, -0.043169,
		33.483971, 29.144476, 42.493073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948875, 29.550734, 43.099342>,  <33.284370, 29.814735, 42.523293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948875, 29.550734, 43.099342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255630, 29.308891, 43.013237>,  <33.439682, 29.163786, 42.961575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255630, 29.308891, 43.013237>,  <32.948875, 29.550734, 43.099342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255630, 29.308891, 43.013237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307995, 0.052440, 0.949941,
		-0.563050, -0.794798, 0.226431,
		0.766886, -0.604604, -0.215267,
		33.485695, 29.127510, 42.948658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047363, 29.035025, 43.672512>,  <32.948875, 29.550734, 43.099342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047363, 29.035025, 43.672512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403927, 29.009163, 43.493088>,  <33.617867, 28.993645, 43.385433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403927, 29.009163, 43.493088>,  <33.047363, 29.035025, 43.672512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403927, 29.009163, 43.493088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429368, -0.196201, 0.881560,
		-0.145001, -0.978430, -0.147137,
		0.891414, -0.064651, -0.448556,
		33.671352, 28.989765, 43.358521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470692, 28.623789, 44.152489>,  <33.047363, 29.035025, 43.672512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470692, 28.623789, 44.152489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733578, 28.766188, 43.886757>,  <33.891308, 28.851627, 43.727318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733578, 28.766188, 43.886757>,  <33.470692, 28.623789, 44.152489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733578, 28.766188, 43.886757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753611, -0.296523, 0.586639,
		0.011850, -0.886195, -0.463161,
		0.657214, 0.355995, -0.664332,
		33.930740, 28.872986, 43.687458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961163, 28.121689, 43.971107>,  <33.470692, 28.623789, 44.152489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961163, 28.121689, 43.971107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127625, 28.483541, 43.934315>,  <34.227501, 28.700653, 43.912239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127625, 28.483541, 43.934315>,  <33.961163, 28.121689, 43.971107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127625, 28.483541, 43.934315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776028, -0.300618, 0.554445,
		0.473918, -0.302112, -0.827121,
		0.416152, 0.904631, -0.091980,
		34.252472, 28.754930, 43.906719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733601, 28.008226, 43.955101>,  <33.961163, 28.121689, 43.971107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733601, 28.008226, 43.955101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675896, 28.384188, 44.078884>,  <34.641273, 28.609764, 44.153156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675896, 28.384188, 44.078884>,  <34.733601, 28.008226, 43.955101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675896, 28.384188, 44.078884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701478, -0.123434, 0.701920,
		0.697936, 0.318344, -0.641515,
		-0.144267, 0.939905, 0.309461,
		34.632614, 28.666159, 44.171722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370346, 28.273081, 44.100685>,  <34.733601, 28.008226, 43.955101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370346, 28.273081, 44.100685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128059, 28.530010, 44.288525>,  <34.982689, 28.684168, 44.401230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128059, 28.530010, 44.288525>,  <35.370346, 28.273081, 44.100685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128059, 28.530010, 44.288525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506530, -0.143865, 0.850135,
		0.613623, 0.752808, -0.238216,
		-0.605718, 0.642326, 0.469599,
		34.946342, 28.722708, 44.429405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930000, 28.641941, 43.637985>,  <35.370346, 28.273081, 44.100685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930000, 28.641941, 43.637985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324287, 28.594761, 43.589912>,  <36.560860, 28.566454, 43.561069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324287, 28.594761, 43.589912>,  <35.930000, 28.641941, 43.637985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324287, 28.594761, 43.589912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063958, 0.397990, -0.915157,
		0.155773, 0.909776, 0.384763,
		0.985720, -0.117948, -0.120184,
		36.620003, 28.559376, 43.553856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289940, 29.199081, 43.418934>,  <35.930000, 28.641941, 43.637985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289940, 29.199081, 43.418934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541012, 28.906092, 43.313488>,  <36.691654, 28.730297, 43.250221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541012, 28.906092, 43.313488>,  <36.289940, 29.199081, 43.418934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541012, 28.906092, 43.313488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011752, 0.329679, -0.944020,
		0.778381, 0.595642, 0.198326,
		0.627682, -0.732477, -0.263616,
		36.729317, 28.686348, 43.234402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835903, 29.471804, 42.945026>,  <36.289940, 29.199081, 43.418934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835903, 29.471804, 42.945026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856316, 29.076960, 42.884354>,  <36.868561, 28.840054, 42.847950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856316, 29.076960, 42.884354>,  <36.835903, 29.471804, 42.945026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856316, 29.076960, 42.884354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017409, 0.150982, -0.988383,
		0.998545, 0.053077, -0.009480,
		0.051029, -0.987111, -0.151686,
		36.871624, 28.780827, 42.838848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414722, 29.391987, 42.449211>,  <36.835903, 29.471804, 42.945026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414722, 29.391987, 42.449211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190533, 29.061014, 42.435192>,  <37.056019, 28.862431, 42.426781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190533, 29.061014, 42.435192>,  <37.414722, 29.391987, 42.449211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190533, 29.061014, 42.435192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015494, 0.052785, -0.998486,
		0.828029, -0.559080, -0.042405,
		-0.560472, -0.827432, -0.035045,
		37.022392, 28.812784, 42.424679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648224, 28.976475, 41.860691>,  <37.414722, 29.391987, 42.449211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648224, 28.976475, 41.860691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276531, 28.856733, 41.947334>,  <37.053516, 28.784889, 41.999321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276531, 28.856733, 41.947334>,  <37.648224, 28.976475, 41.860691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276531, 28.856733, 41.947334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209581, -0.055804, -0.976198,
		0.304316, -0.952509, -0.010884,
		-0.929230, -0.299354, 0.216610,
		36.997761, 28.766928, 42.012318>
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
