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
	<24.257601, 35.390423, 35.232666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228384, 35.287182, 34.847324>,  <24.210854, 35.225239, 34.616119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228384, 35.287182, 34.847324>,  <24.257601, 35.390423, 35.232666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228384, 35.287182, 34.847324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709335, 0.665563, -0.232099,
		0.701077, -0.700293, 0.134466,
		-0.073042, -0.258100, -0.963353,
		24.206470, 35.209751, 34.558319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922773, 35.421410, 34.776352>,  <24.257601, 35.390423, 35.232666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922773, 35.421410, 34.776352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601320, 35.517555, 34.558582>,  <24.408449, 35.575241, 34.427921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601320, 35.517555, 34.558582>,  <24.922773, 35.421410, 34.776352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.601320, 35.517555, 34.558582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514466, 0.740452, -0.432500,
		0.299166, -0.627660, -0.718709,
		-0.803632, 0.240362, -0.544428,
		24.360231, 35.589664, 34.395252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176065, 35.450699, 34.044804>,  <24.922773, 35.421410, 34.776352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176065, 35.450699, 34.044804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859943, 35.679977, 34.131401>,  <24.670271, 35.817543, 34.183361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859943, 35.679977, 34.131401>,  <25.176065, 35.450699, 34.044804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859943, 35.679977, 34.131401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457160, 0.786883, -0.414511,
		-0.407951, -0.228616, -0.883918,
		-0.790304, 0.573192, 0.216496,
		24.622852, 35.851936, 34.196350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.946667, 35.709793, 33.458862>,  <25.176065, 35.450699, 34.044804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.946667, 35.709793, 33.458862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911337, 35.946442, 33.779408>,  <24.890139, 36.088432, 33.971733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911337, 35.946442, 33.779408>,  <24.946667, 35.709793, 33.458862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911337, 35.946442, 33.779408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519208, 0.713914, -0.469841,
		-0.850072, 0.374574, -0.370233,
		-0.088324, 0.591626, 0.801360,
		24.884840, 36.123928, 34.019814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810513, 36.443031, 33.348179>,  <24.946667, 35.709793, 33.458862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810513, 36.443031, 33.348179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047798, 36.450882, 33.670101>,  <25.190170, 36.455593, 33.863255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047798, 36.450882, 33.670101>,  <24.810513, 36.443031, 33.348179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047798, 36.450882, 33.670101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552938, 0.716659, -0.425042,
		-0.585113, 0.697148, 0.414280,
		0.593214, 0.019626, 0.804805,
		25.225763, 36.456768, 33.911541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885891, 37.083694, 33.556847>,  <24.810513, 36.443031, 33.348179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885891, 37.083694, 33.556847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235760, 36.930141, 33.675224>,  <25.445681, 36.838009, 33.746250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235760, 36.930141, 33.675224>,  <24.885891, 37.083694, 33.556847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235760, 36.930141, 33.675224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473500, 0.807279, -0.352276,
		-0.103680, 0.448257, 0.887872,
		0.874670, -0.383883, 0.295948,
		25.498161, 36.814976, 33.764008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298323, 37.556385, 34.037224>,  <24.885891, 37.083694, 33.556847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298323, 37.556385, 34.037224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561935, 37.321922, 33.848717>,  <25.720104, 37.181244, 33.735611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561935, 37.321922, 33.848717>,  <25.298323, 37.556385, 34.037224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561935, 37.321922, 33.848717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517059, 0.808135, -0.282078,
		0.546192, -0.057776, 0.835665,
		0.659033, -0.586157, -0.471270,
		25.759645, 37.146076, 33.707336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048002, 37.714485, 34.253578>,  <25.298323, 37.556385, 34.037224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048002, 37.714485, 34.253578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097162, 37.536987, 33.898506>,  <26.126659, 37.430489, 33.685463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097162, 37.536987, 33.898506>,  <26.048002, 37.714485, 34.253578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097162, 37.536987, 33.898506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682206, 0.687392, -0.249171,
		0.720756, -0.574960, 0.387210,
		0.122902, -0.443748, -0.887684,
		26.134033, 37.403862, 33.632202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650961, 37.722610, 34.189037>,  <26.048002, 37.714485, 34.253578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650961, 37.722610, 34.189037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544483, 37.656979, 33.809097>,  <26.480597, 37.617599, 33.581135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544483, 37.656979, 33.809097>,  <26.650961, 37.722610, 34.189037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544483, 37.656979, 33.809097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556497, 0.778436, -0.290428,
		0.787053, -0.605899, -0.115901,
		-0.266192, -0.164084, -0.949852,
		26.464624, 37.607754, 33.524143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202372, 37.978046, 33.869442>,  <26.650961, 37.722610, 34.189037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202372, 37.978046, 33.869442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944082, 37.937199, 33.566757>,  <26.789108, 37.912689, 33.385147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944082, 37.937199, 33.566757>,  <27.202372, 37.978046, 33.869442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944082, 37.937199, 33.566757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379441, 0.817082, -0.434053,
		0.662619, -0.567406, -0.488862,
		-0.645725, -0.102118, -0.756711,
		26.750364, 37.906563, 33.339745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654846, 38.041527, 33.215538>,  <27.202372, 37.978046, 33.869442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654846, 38.041527, 33.215538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265236, 38.106068, 33.151989>,  <27.031469, 38.144791, 33.113861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265236, 38.106068, 33.151989>,  <27.654846, 38.041527, 33.215538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265236, 38.106068, 33.151989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224732, 0.774827, -0.590879,
		0.027758, -0.611235, -0.790962,
		-0.974025, 0.161353, -0.158872,
		26.973028, 38.154472, 33.104328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620218, 38.246113, 32.564232>,  <27.654846, 38.041527, 33.215538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620218, 38.246113, 32.564232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287729, 38.396233, 32.728291>,  <27.088236, 38.486305, 32.826725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287729, 38.396233, 32.728291>,  <27.620218, 38.246113, 32.564232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287729, 38.396233, 32.728291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211315, 0.895669, -0.391308,
		-0.514210, -0.238596, -0.823808,
		-0.831224, 0.375297, 0.410144,
		27.038363, 38.508823, 32.851334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376839, 38.595398, 32.047710>,  <27.620218, 38.246113, 32.564232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376839, 38.595398, 32.047710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161581, 38.725853, 32.358589>,  <27.032427, 38.804127, 32.545116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161581, 38.725853, 32.358589>,  <27.376839, 38.595398, 32.047710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161581, 38.725853, 32.358589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011873, 0.924946, -0.379914,
		-0.842768, -0.195222, -0.501628,
		-0.538146, 0.326135, 0.777197,
		27.000137, 38.823692, 32.591747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844473, 38.906078, 31.668449>,  <27.376839, 38.595398, 32.047710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844473, 38.906078, 31.668449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838161, 39.056965, 32.038845>,  <26.834373, 39.147499, 32.261082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838161, 39.056965, 32.038845>,  <26.844473, 38.906078, 31.668449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838161, 39.056965, 32.038845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132623, 0.917132, -0.375872,
		-0.991041, -0.128739, 0.035555,
		-0.015780, 0.377220, 0.925989,
		26.833427, 39.170132, 32.316643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244007, 39.327209, 31.729021>,  <26.844473, 38.906078, 31.668449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244007, 39.327209, 31.729021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524574, 39.443474, 31.989336>,  <26.692915, 39.513233, 32.145523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524574, 39.443474, 31.989336>,  <26.244007, 39.327209, 31.729021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524574, 39.443474, 31.989336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069354, 0.936568, -0.343555,
		-0.709366, 0.195842, 0.677087,
		0.701420, 0.290664, 0.650787,
		26.735001, 39.530674, 32.184570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058699, 40.000759, 32.012314>,  <26.244007, 39.327209, 31.729021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058699, 40.000759, 32.012314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448885, 39.980743, 32.098068>,  <26.682997, 39.968735, 32.149521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448885, 39.980743, 32.098068>,  <26.058699, 40.000759, 32.012314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448885, 39.980743, 32.098068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075757, 0.990650, -0.113462,
		-0.206705, 0.126919, 0.970137,
		0.975466, -0.050041, 0.214387,
		26.741526, 39.965733, 32.162384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184298, 40.581657, 32.493614>,  <26.058699, 40.000759, 32.012314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184298, 40.581657, 32.493614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550592, 40.506710, 32.351448>,  <26.770369, 40.461742, 32.266148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550592, 40.506710, 32.351448>,  <26.184298, 40.581657, 32.493614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550592, 40.506710, 32.351448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198366, 0.980112, -0.005600,
		0.349397, -0.065375, 0.934692,
		0.915736, -0.187367, -0.355416,
		26.825314, 40.450500, 32.244823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594067, 40.963272, 32.863060>,  <26.184298, 40.581657, 32.493614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594067, 40.963272, 32.863060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832951, 40.878677, 32.553577>,  <26.976280, 40.827919, 32.367889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832951, 40.878677, 32.553577>,  <26.594067, 40.963272, 32.863060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832951, 40.878677, 32.553577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274128, 0.960345, -0.050911,
		0.753788, -0.181689, 0.631501,
		0.597209, -0.211488, -0.773702,
		27.012114, 40.815231, 32.321468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227549, 41.350964, 32.985394>,  <26.594067, 40.963272, 32.863060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227549, 41.350964, 32.985394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270535, 41.252316, 32.600140>,  <27.296326, 41.193127, 32.368988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270535, 41.252316, 32.600140>,  <27.227549, 41.350964, 32.985394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270535, 41.252316, 32.600140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032424, 0.967362, -0.251317,
		0.993680, 0.058236, 0.095962,
		0.107466, -0.246617, -0.963136,
		27.302774, 41.178329, 32.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808271, 41.757263, 32.758148>,  <27.227549, 41.350964, 32.985394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808271, 41.757263, 32.758148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587637, 41.655487, 32.440403>,  <27.455257, 41.594421, 32.249756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587637, 41.655487, 32.440403>,  <27.808271, 41.757263, 32.758148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587637, 41.655487, 32.440403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053336, 0.961148, -0.270831,
		0.832412, -0.107018, -0.543725,
		-0.551584, -0.254443, -0.794363,
		27.422161, 41.579155, 32.202095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250790, 41.907700, 32.137165>,  <27.808271, 41.757263, 32.758148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250790, 41.907700, 32.137165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853758, 41.910973, 32.088638>,  <27.615540, 41.912937, 32.059521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853758, 41.910973, 32.088638>,  <28.250790, 41.907700, 32.137165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853758, 41.910973, 32.088638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032477, 0.979322, -0.199686,
		0.117177, -0.202145, -0.972321,
		-0.992580, 0.008179, -0.121319,
		27.555984, 41.913425, 32.052242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129251, 42.483803, 31.617544>,  <28.250790, 41.907700, 32.137165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129251, 42.483803, 31.617544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766407, 42.405216, 31.766434>,  <27.548700, 42.358063, 31.855768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766407, 42.405216, 31.766434>,  <28.129251, 42.483803, 31.617544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766407, 42.405216, 31.766434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233259, 0.970798, -0.056052,
		-0.350341, -0.137670, -0.926449,
		-0.907112, -0.196466, 0.372223,
		27.494274, 42.346275, 31.878101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832285, 43.000851, 31.271399>,  <28.129251, 42.483803, 31.617544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832285, 43.000851, 31.271399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567617, 42.908546, 31.556761>,  <27.408817, 42.853165, 31.727978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567617, 42.908546, 31.556761>,  <27.832285, 43.000851, 31.271399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567617, 42.908546, 31.556761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297603, 0.954133, 0.032600,
		-0.688204, -0.190741, -0.699995,
		-0.661670, -0.230756, 0.713403,
		27.369116, 42.839321, 31.770782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094624, 43.291855, 31.139929>,  <27.832285, 43.000851, 31.271399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094624, 43.291855, 31.139929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134020, 43.237556, 31.534264>,  <27.157658, 43.204979, 31.770864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134020, 43.237556, 31.534264>,  <27.094624, 43.291855, 31.139929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134020, 43.237556, 31.534264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371436, 0.914044, 0.162966,
		-0.923220, -0.382226, 0.039607,
		0.098492, -0.135742, 0.985836,
		27.163568, 43.196835, 31.830015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432007, 43.475876, 31.470932>,  <27.094624, 43.291855, 31.139929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432007, 43.475876, 31.470932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743132, 43.523247, 31.717827>,  <26.929806, 43.551670, 31.865965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743132, 43.523247, 31.717827>,  <26.432007, 43.475876, 31.470932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743132, 43.523247, 31.717827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226511, 0.968909, 0.099540,
		-0.586260, -0.217235, 0.780454,
		0.777812, 0.118424, 0.617239,
		26.976475, 43.558773, 31.902998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306890, 43.707523, 32.150158>,  <26.432007, 43.475876, 31.470932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306890, 43.707523, 32.150158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663414, 43.849716, 32.037590>,  <26.877329, 43.935032, 31.970049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663414, 43.849716, 32.037590>,  <26.306890, 43.707523, 32.150158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663414, 43.849716, 32.037590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370230, 0.928940, 0.000822,
		0.261718, 0.103459, 0.959583,
		0.891310, 0.355481, -0.281424,
		26.930807, 43.956360, 31.953163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433922, 44.255234, 32.606186>,  <26.306890, 43.707523, 32.150158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433922, 44.255234, 32.606186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617544, 44.325325, 32.257805>,  <26.727718, 44.367378, 32.048775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617544, 44.325325, 32.257805>,  <26.433922, 44.255234, 32.606186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617544, 44.325325, 32.257805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151020, 0.981479, 0.117861,
		0.875476, 0.077427, 0.477018,
		0.459057, 0.175224, -0.870955,
		26.755262, 44.377892, 31.996519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090437, 44.642128, 32.751820>,  <26.433922, 44.255234, 32.606186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090437, 44.642128, 32.751820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851055, 44.679443, 32.433537>,  <26.707426, 44.701832, 32.242565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851055, 44.679443, 32.433537>,  <27.090437, 44.642128, 32.751820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851055, 44.679443, 32.433537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290633, 0.900263, 0.324128,
		0.746583, 0.425234, -0.511654,
		-0.598453, 0.093285, -0.795708,
		26.671518, 44.707428, 32.194824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599478, 45.003231, 32.222164>,  <27.090437, 44.642128, 32.751820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599478, 45.003231, 32.222164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760174, 44.662865, 32.086781>,  <27.856592, 44.458645, 32.005550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760174, 44.662865, 32.086781>,  <27.599478, 45.003231, 32.222164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760174, 44.662865, 32.086781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842168, 0.198140, 0.501492,
		-0.359664, -0.486506, 0.796212,
		0.401740, -0.850913, -0.338456,
		27.880695, 44.407593, 31.985245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821642, 44.358143, 32.739845>,  <27.599478, 45.003231, 32.222164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821642, 44.358143, 32.739845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045858, 44.370575, 32.408829>,  <28.180387, 44.378033, 32.210217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045858, 44.370575, 32.408829>,  <27.821642, 44.358143, 32.739845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045858, 44.370575, 32.408829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825651, 0.056244, 0.561371,
		0.063990, -0.997933, 0.005868,
		0.560541, 0.031077, -0.827544,
		28.214020, 44.379898, 32.160564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465099, 43.936436, 32.879562>,  <27.821642, 44.358143, 32.739845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465099, 43.936436, 32.879562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518145, 44.192554, 32.576923>,  <28.549973, 44.346226, 32.395340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518145, 44.192554, 32.576923>,  <28.465099, 43.936436, 32.879562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518145, 44.192554, 32.576923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896184, 0.248619, 0.367481,
		0.423400, -0.726782, -0.540851,
		0.132613, 0.640294, -0.756596,
		28.557928, 44.384644, 32.349945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229366, 43.807652, 33.069424>,  <28.465099, 43.936436, 32.879562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229366, 43.807652, 33.069424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403479, 43.805687, 33.429535>,  <29.507946, 43.804508, 33.645603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403479, 43.805687, 33.429535>,  <29.229366, 43.807652, 33.069424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403479, 43.805687, 33.429535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405072, -0.891981, -0.200716,
		0.804020, 0.452046, -0.386273,
		0.435281, -0.004911, 0.900281,
		29.534063, 43.804214, 33.699619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909908, 43.607449, 32.915760>,  <29.229366, 43.807652, 33.069424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909908, 43.607449, 32.915760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899580, 43.550625, 33.311569>,  <29.893383, 43.516533, 33.549053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899580, 43.550625, 33.311569>,  <29.909908, 43.607449, 32.915760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899580, 43.550625, 33.311569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530633, -0.840838, -0.106865,
		0.847208, 0.522314, 0.097091,
		-0.025821, -0.142057, 0.989522,
		29.891834, 43.508007, 33.608425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614073, 43.532688, 33.341702>,  <29.909908, 43.607449, 32.915760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614073, 43.532688, 33.341702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326456, 43.311611, 33.510231>,  <30.153887, 43.178967, 33.611347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326456, 43.311611, 33.510231>,  <30.614073, 43.532688, 33.341702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326456, 43.311611, 33.510231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636848, -0.766714, 0.081089,
		0.278215, 0.326624, 0.903279,
		-0.719042, -0.552691, 0.421321,
		30.110743, 43.145805, 33.636627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958103, 43.010975, 33.502411>,  <30.614073, 43.532688, 33.341702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958103, 43.010975, 33.502411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579756, 42.885345, 33.535145>,  <30.352747, 42.809967, 33.554783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579756, 42.885345, 33.535145>,  <30.958103, 43.010975, 33.502411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579756, 42.885345, 33.535145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313384, -0.949385, -0.021419,
		0.084418, 0.005386, 0.996416,
		-0.945867, -0.314069, 0.081833,
		30.295996, 42.791126, 33.559696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965633, 42.510387, 34.040680>,  <30.958103, 43.010975, 33.502411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965633, 42.510387, 34.040680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691013, 42.485992, 33.750874>,  <30.526241, 42.471355, 33.576988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691013, 42.485992, 33.750874>,  <30.965633, 42.510387, 34.040680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691013, 42.485992, 33.750874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198768, -0.974261, -0.106337,
		-0.699386, -0.217017, 0.681001,
		-0.686550, -0.060991, -0.724520,
		30.485048, 42.467693, 33.533516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652061, 41.896477, 34.160816>,  <30.965633, 42.510387, 34.040680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652061, 41.896477, 34.160816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552673, 41.959278, 33.778484>,  <30.493040, 41.996960, 33.549084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552673, 41.959278, 33.778484>,  <30.652061, 41.896477, 34.160816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552673, 41.959278, 33.778484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145482, -0.969535, -0.197069,
		-0.957652, -0.188023, 0.218062,
		-0.248473, 0.157000, -0.955831,
		30.478132, 42.006378, 33.491734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326490, 41.277878, 34.087753>,  <30.652061, 41.896477, 34.160816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326490, 41.277878, 34.087753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312622, 41.431927, 33.718868>,  <30.304300, 41.524357, 33.497536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312622, 41.431927, 33.718868>,  <30.326490, 41.277878, 34.087753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312622, 41.431927, 33.718868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087616, -0.920389, -0.381062,
		-0.995551, 0.067589, 0.065654,
		-0.034672, 0.385119, -0.922215,
		30.302221, 41.547462, 33.442204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762993, 41.029781, 33.683712>,  <30.326490, 41.277878, 34.087753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762993, 41.029781, 33.683712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045050, 41.133873, 33.419876>,  <30.214283, 41.196327, 33.261574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045050, 41.133873, 33.419876>,  <29.762993, 41.029781, 33.683712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045050, 41.133873, 33.419876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106245, -0.880946, -0.461137,
		-0.701063, 0.395244, -0.593542,
		0.705140, 0.260225, -0.659591,
		30.256592, 41.211941, 33.222000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529285, 40.826794, 33.105770>,  <29.762993, 41.029781, 33.683712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529285, 40.826794, 33.105770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909500, 40.889103, 32.998280>,  <30.137629, 40.926487, 32.933784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909500, 40.889103, 32.998280>,  <29.529285, 40.826794, 33.105770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909500, 40.889103, 32.998280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089313, -0.965688, -0.243866,
		-0.297495, 0.207803, -0.931834,
		0.950537, 0.155774, -0.268728,
		30.194660, 40.935837, 32.917660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616848, 40.638412, 32.277531>,  <29.529285, 40.826794, 33.105770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616848, 40.638412, 32.277531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962606, 40.615753, 32.477375>,  <30.170061, 40.602158, 32.597282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962606, 40.615753, 32.477375>,  <29.616848, 40.638412, 32.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962606, 40.615753, 32.477375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153251, -0.916676, -0.369079,
		0.478886, 0.395597, -0.783691,
		0.864397, -0.056645, 0.499609,
		30.221926, 40.598759, 32.627258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136585, 40.332848, 31.811674>,  <29.616848, 40.638412, 32.277531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136585, 40.332848, 31.811674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273619, 40.249126, 32.178024>,  <30.355839, 40.198895, 32.397835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273619, 40.249126, 32.178024>,  <30.136585, 40.332848, 31.811674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273619, 40.249126, 32.178024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046010, -0.969960, -0.238874,
		0.938361, 0.123973, -0.322660,
		0.342582, -0.209304, 0.915876,
		30.376392, 40.186337, 32.452785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483074, 39.773201, 31.596521>,  <30.136585, 40.332848, 31.811674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483074, 39.773201, 31.596521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490185, 39.762558, 31.996317>,  <30.494452, 39.756172, 32.236195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490185, 39.762558, 31.996317>,  <30.483074, 39.773201, 31.596521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490185, 39.762558, 31.996317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199288, -0.979493, -0.029615,
		0.979780, 0.199712, -0.012111,
		0.017777, -0.026603, 0.999488,
		30.495518, 39.754578, 32.296162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134821, 39.382313, 31.863562>,  <30.483074, 39.773201, 31.596521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134821, 39.382313, 31.863562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840212, 39.352100, 32.132435>,  <30.663446, 39.333973, 32.293758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840212, 39.352100, 32.132435>,  <31.134821, 39.382313, 31.863562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840212, 39.352100, 32.132435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019124, -0.995674, -0.090932,
		0.676144, -0.054119, 0.734780,
		-0.736522, -0.075534, 0.672183,
		30.619255, 39.329441, 32.334091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286182, 38.830338, 32.123188>,  <31.134821, 39.382313, 31.863562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286182, 38.830338, 32.123188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909924, 38.866550, 32.254025>,  <30.684168, 38.888279, 32.332527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909924, 38.866550, 32.254025>,  <31.286182, 38.830338, 32.123188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909924, 38.866550, 32.254025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176901, -0.953274, -0.244898,
		0.289635, -0.288225, 0.912709,
		-0.940648, 0.090529, 0.327089,
		30.627729, 38.893707, 32.352150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109081, 38.294304, 32.652565>,  <31.286182, 38.830338, 32.123188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109081, 38.294304, 32.652565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760448, 38.421837, 32.503601>,  <30.551270, 38.498356, 32.414223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760448, 38.421837, 32.503601>,  <31.109081, 38.294304, 32.652565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760448, 38.421837, 32.503601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344280, -0.938865, 0.001964,
		-0.349020, 0.129927, 0.928065,
		-0.871582, 0.318829, -0.372414,
		30.498974, 38.517487, 32.391876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663975, 38.140663, 33.143986>,  <31.109081, 38.294304, 32.652565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663975, 38.140663, 33.143986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469765, 38.167690, 32.795341>,  <30.353239, 38.183907, 32.586155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469765, 38.167690, 32.795341>,  <30.663975, 38.140663, 33.143986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469765, 38.167690, 32.795341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408529, -0.898987, 0.157882,
		-0.772896, 0.432732, 0.464085,
		-0.485527, 0.067566, -0.871607,
		30.324106, 38.187962, 32.533859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991480, 37.879345, 33.287861>,  <30.663975, 38.140663, 33.143986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991480, 37.879345, 33.287861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012980, 37.834736, 32.890938>,  <30.025879, 37.807972, 32.652782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012980, 37.834736, 32.890938>,  <29.991480, 37.879345, 33.287861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012980, 37.834736, 32.890938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446582, -0.891509, 0.076003,
		-0.893127, 0.439061, -0.097723,
		0.053751, -0.111521, -0.992307,
		30.029104, 37.801281, 32.593246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397217, 37.484600, 33.218361>,  <29.991480, 37.879345, 33.287861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397217, 37.484600, 33.218361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572432, 37.464214, 32.859356>,  <29.677561, 37.451981, 32.643955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572432, 37.464214, 32.859356>,  <29.397217, 37.484600, 33.218361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572432, 37.464214, 32.859356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512351, -0.834519, -0.202667,
		-0.738660, 0.548616, -0.391666,
		0.438039, -0.050969, -0.897510,
		29.703844, 37.448925, 32.590103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936848, 37.588795, 32.714230>,  <29.397217, 37.484600, 33.218361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936848, 37.588795, 32.714230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236633, 37.354210, 32.591351>,  <29.416504, 37.213459, 32.517624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236633, 37.354210, 32.591351>,  <28.936848, 37.588795, 32.714230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236633, 37.354210, 32.591351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614631, -0.788789, 0.006350,
		-0.246041, 0.184056, -0.951623,
		0.749462, -0.586459, -0.307201,
		29.461472, 37.178272, 32.499191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645033, 37.163017, 32.174625>,  <28.936848, 37.588795, 32.714230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645033, 37.163017, 32.174625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979345, 36.972214, 32.283390>,  <29.179934, 36.857731, 32.348648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979345, 36.972214, 32.283390>,  <28.645033, 37.163017, 32.174625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979345, 36.972214, 32.283390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496143, -0.868239, 0.001885,
		0.235187, -0.136484, -0.962320,
		0.835781, -0.477005, 0.271914,
		29.230080, 36.829113, 32.364964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573387, 36.538086, 31.774227>,  <28.645033, 37.163017, 32.174625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573387, 36.538086, 31.774227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856071, 36.462986, 32.047081>,  <29.025682, 36.417927, 32.210793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856071, 36.462986, 32.047081>,  <28.573387, 36.538086, 31.774227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856071, 36.462986, 32.047081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316824, -0.946055, 0.067847,
		0.632599, -0.264065, -0.728071,
		0.706711, -0.187750, 0.682136,
		29.068085, 36.406662, 32.251720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915401, 35.964317, 31.550661>,  <28.573387, 36.538086, 31.774227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915401, 35.964317, 31.550661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991482, 35.980000, 31.943047>,  <29.037130, 35.989407, 32.178478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991482, 35.980000, 31.943047>,  <28.915401, 35.964317, 31.550661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991482, 35.980000, 31.943047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058695, -0.996961, 0.051223,
		0.979989, -0.067320, -0.187321,
		0.190200, 0.039203, 0.980962,
		29.048542, 35.991760, 32.237335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440653, 35.520206, 31.643717>,  <28.915401, 35.964317, 31.550661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440653, 35.520206, 31.643717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306446, 35.563332, 32.018055>,  <29.225922, 35.589207, 32.242657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306446, 35.563332, 32.018055>,  <29.440653, 35.520206, 31.643717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306446, 35.563332, 32.018055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036387, -0.994171, 0.101486,
		0.941331, -0.000002, 0.337484,
		-0.335516, 0.107812, 0.935845,
		29.205791, 35.595676, 32.298809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798306, 35.107265, 32.016911>,  <29.440653, 35.520206, 31.643717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798306, 35.107265, 32.016911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467239, 35.174709, 32.231030>,  <29.268599, 35.215176, 32.359501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467239, 35.174709, 32.231030>,  <29.798306, 35.107265, 32.016911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467239, 35.174709, 32.231030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068512, -0.977024, 0.201815,
		0.557023, 0.130361, 0.820202,
		-0.827666, 0.168609, 0.535293,
		29.218939, 35.225292, 32.391617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416162, 35.352409, 31.721569>,  <29.798306, 35.107265, 32.016911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416162, 35.352409, 31.721569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744034, 35.124161, 31.741642>,  <30.940756, 34.987213, 31.753685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744034, 35.124161, 31.741642>,  <30.416162, 35.352409, 31.721569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744034, 35.124161, 31.741642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469923, 0.619754, -0.628552,
		0.327565, 0.538792, 0.776147,
		0.819679, -0.570621, 0.050181,
		30.989937, 34.952976, 31.756697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993677, 35.786942, 31.960285>,  <30.416162, 35.352409, 31.721569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993677, 35.786942, 31.960285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125423, 35.492867, 31.723299>,  <31.204472, 35.316422, 31.581108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125423, 35.492867, 31.723299>,  <30.993677, 35.786942, 31.960285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125423, 35.492867, 31.723299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349792, 0.677837, -0.646670,
		0.877020, 0.005751, 0.480419,
		0.329365, -0.735190, -0.592465,
		31.224234, 35.272308, 31.545559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639418, 35.987251, 31.558161>,  <30.993677, 35.786942, 31.960285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639418, 35.987251, 31.558161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470943, 35.705891, 31.329136>,  <31.369858, 35.537075, 31.191721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470943, 35.705891, 31.329136>,  <31.639418, 35.987251, 31.558161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470943, 35.705891, 31.329136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302962, 0.485913, -0.819818,
		0.854877, -0.518761, 0.008444,
		-0.421187, -0.703402, -0.572561,
		31.344587, 35.494869, 31.157368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101814, 35.764862, 31.002975>,  <31.639418, 35.987251, 31.558161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101814, 35.764862, 31.002975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727453, 35.694664, 30.880804>,  <31.502836, 35.652546, 30.807501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727453, 35.694664, 30.880804>,  <32.101814, 35.764862, 31.002975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727453, 35.694664, 30.880804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208541, 0.422747, -0.881927,
		0.283892, -0.889093, -0.359053,
		-0.935904, -0.175495, -0.305427,
		31.446682, 35.642014, 30.789175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173660, 35.154350, 30.519148>,  <32.101814, 35.764862, 31.002975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173660, 35.154350, 30.519148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821661, 35.074772, 30.691671>,  <31.610462, 35.027023, 30.795185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821661, 35.074772, 30.691671>,  <32.173660, 35.154350, 30.519148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821661, 35.074772, 30.691671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412792, -0.769532, 0.487261,
		0.234965, 0.606828, 0.759309,
		-0.879997, -0.198948, 0.431307,
		31.557661, 35.015087, 30.821064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764547, 35.099957, 29.893812>,  <32.173660, 35.154350, 30.519148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764547, 35.099957, 29.893812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948536, 35.109840, 29.538776>,  <32.058929, 35.115772, 29.325754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948536, 35.109840, 29.538776>,  <31.764547, 35.099957, 29.893812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948536, 35.109840, 29.538776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655824, -0.683342, 0.320839,
		-0.598599, -0.729680, -0.330524,
		0.459971, 0.024712, -0.887590,
		32.086529, 35.117252, 29.272499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671608, 34.471962, 29.416021>,  <31.764547, 35.099957, 29.893812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671608, 34.471962, 29.416021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015537, 34.664715, 29.348499>,  <32.221893, 34.780365, 29.307985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015537, 34.664715, 29.348499>,  <31.671608, 34.471962, 29.416021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015537, 34.664715, 29.348499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507859, -0.772953, 0.380295,
		0.052777, -0.412716, -0.909330,
		0.859822, 0.481882, -0.168807,
		32.273483, 34.809280, 29.297857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280869, 34.401646, 29.592184>,  <31.671608, 34.471962, 29.416021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280869, 34.401646, 29.592184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415245, 34.270901, 29.238846>,  <32.495872, 34.192455, 29.026842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415245, 34.270901, 29.238846>,  <32.280869, 34.401646, 29.592184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415245, 34.270901, 29.238846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940915, 0.158952, 0.299022,
		0.042670, -0.931609, 0.360950,
		0.335945, -0.326863, -0.883347,
		32.516029, 34.172840, 28.973843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768494, 33.747555, 29.742247>,  <32.280869, 34.401646, 29.592184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768494, 33.747555, 29.742247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841396, 33.932404, 29.395092>,  <32.885139, 34.043312, 29.186800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841396, 33.932404, 29.395092>,  <32.768494, 33.747555, 29.742247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841396, 33.932404, 29.395092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974791, 0.030619, 0.221010,
		0.128707, -0.886288, -0.444892,
		0.182257, 0.462122, -0.867886,
		32.896072, 34.071041, 29.134726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247478, 33.195190, 30.201328>,  <32.768494, 33.747555, 29.742247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247478, 33.195190, 30.201328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513630, 33.274662, 30.489161>,  <33.673321, 33.322346, 30.661860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513630, 33.274662, 30.489161>,  <33.247478, 33.195190, 30.201328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513630, 33.274662, 30.489161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746430, 0.163433, 0.645082,
		0.010562, -0.966341, 0.257046,
		0.665380, 0.198681, 0.719580,
		33.713245, 33.334267, 30.705034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906757, 32.940914, 30.714413>,  <33.247478, 33.195190, 30.201328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906757, 32.940914, 30.714413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178936, 33.188705, 30.871000>,  <33.342243, 33.337379, 30.964952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178936, 33.188705, 30.871000>,  <32.906757, 32.940914, 30.714413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178936, 33.188705, 30.871000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617612, 0.197276, 0.761339,
		0.394402, -0.759825, 0.516830,
		0.680442, 0.619474, 0.391471,
		33.383068, 33.374546, 30.988441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919666, 32.926365, 31.453835>,  <32.906757, 32.940914, 30.714413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919666, 32.926365, 31.453835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092964, 33.283424, 31.404081>,  <33.196941, 33.497662, 31.374229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092964, 33.283424, 31.404081>,  <32.919666, 32.926365, 31.453835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092964, 33.283424, 31.404081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559786, 0.374676, 0.739093,
		0.706355, -0.250582, 0.662021,
		0.433246, 0.892652, -0.124382,
		33.222939, 33.551220, 31.366766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151264, 33.123196, 32.138248>,  <32.919666, 32.926365, 31.453835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151264, 33.123196, 32.138248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108982, 33.442924, 31.901636>,  <33.083614, 33.634762, 31.759670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108982, 33.442924, 31.901636>,  <33.151264, 33.123196, 32.138248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108982, 33.442924, 31.901636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497078, 0.472732, 0.727625,
		0.861243, 0.370950, 0.347356,
		-0.105706, 0.799325, -0.591528,
		33.077271, 33.682724, 31.724178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536362, 33.616062, 32.544796>,  <33.151264, 33.123196, 32.138248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536362, 33.616062, 32.544796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329239, 33.854424, 32.299271>,  <33.204964, 33.997440, 32.151955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329239, 33.854424, 32.299271>,  <33.536362, 33.616062, 32.544796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329239, 33.854424, 32.299271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468206, 0.403103, 0.786315,
		0.716002, 0.694552, 0.070278,
		-0.517808, 0.595907, -0.613816,
		33.173897, 34.033195, 32.115128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705727, 34.417183, 32.696667>,  <33.536362, 33.616062, 32.544796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705727, 34.417183, 32.696667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347530, 34.385265, 32.521519>,  <33.132614, 34.366116, 32.416431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347530, 34.385265, 32.521519>,  <33.705727, 34.417183, 32.696667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347530, 34.385265, 32.521519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418560, 0.485494, 0.767531,
		0.151342, 0.870592, -0.468152,
		-0.895490, -0.079790, -0.437871,
		33.078884, 34.361328, 32.390156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427307, 35.011147, 32.837921>,  <33.705727, 34.417183, 32.696667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427307, 35.011147, 32.837921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108810, 34.798065, 32.723225>,  <32.917713, 34.670216, 32.654408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108810, 34.798065, 32.723225>,  <33.427307, 35.011147, 32.837921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108810, 34.798065, 32.723225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577296, 0.527320, 0.623428,
		-0.180899, 0.661936, -0.727404,
		-0.796244, -0.532705, -0.286741,
		32.869938, 34.638252, 32.637203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817074, 35.414921, 32.434048>,  <33.427307, 35.011147, 32.837921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817074, 35.414921, 32.434048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637550, 35.114681, 32.628025>,  <32.529835, 34.934536, 32.744411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637550, 35.114681, 32.628025>,  <32.817074, 35.414921, 32.434048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637550, 35.114681, 32.628025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510770, 0.660758, 0.550012,
		-0.733269, -0.000844, -0.679938,
		-0.448810, -0.750598, 0.484945,
		32.502907, 34.889503, 32.773510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136929, 35.775372, 32.649231>,  <32.817074, 35.414921, 32.434048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136929, 35.775372, 32.649231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163162, 35.424969, 32.840363>,  <32.178902, 35.214729, 32.955040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163162, 35.424969, 32.840363>,  <32.136929, 35.775372, 32.649231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163162, 35.424969, 32.840363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667036, 0.317654, 0.673913,
		-0.742133, -0.362926, -0.563492,
		0.065585, -0.876003, 0.477827,
		32.182838, 35.162167, 32.983711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461863, 35.762653, 32.948818>,  <32.136929, 35.775372, 32.649231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461863, 35.762653, 32.948818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689026, 35.530151, 33.181927>,  <31.825323, 35.390648, 33.321793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689026, 35.530151, 33.181927>,  <31.461863, 35.762653, 32.948818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689026, 35.530151, 33.181927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496503, 0.322788, 0.805787,
		-0.656481, -0.746959, -0.105283,
		0.567906, -0.581257, 0.582772,
		31.859398, 35.355774, 33.356758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960247, 35.436264, 33.355392>,  <31.461863, 35.762653, 32.948818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960247, 35.436264, 33.355392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308859, 35.378262, 33.542755>,  <31.518026, 35.343460, 33.655174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308859, 35.378262, 33.542755>,  <30.960247, 35.436264, 33.355392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308859, 35.378262, 33.542755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407344, 0.317649, 0.856253,
		-0.272955, -0.937054, 0.217771,
		0.871531, -0.145011, 0.468408,
		31.570318, 35.334759, 33.683277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802263, 35.035545, 33.924065>,  <30.960247, 35.436264, 33.355392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802263, 35.035545, 33.924065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141205, 35.238140, 33.987892>,  <31.344570, 35.359699, 34.026188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141205, 35.238140, 33.987892>,  <30.802263, 35.035545, 33.924065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141205, 35.238140, 33.987892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402055, 0.415606, 0.815857,
		0.346904, -0.755475, 0.555801,
		0.847354, 0.506487, 0.159567,
		31.395411, 35.390087, 34.035763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984976, 34.943119, 34.673439>,  <30.802263, 35.035545, 33.924065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984976, 34.943119, 34.673439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194639, 35.264275, 34.559860>,  <31.320438, 35.456966, 34.491714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194639, 35.264275, 34.559860>,  <30.984976, 34.943119, 34.673439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194639, 35.264275, 34.559860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257182, 0.467088, 0.845982,
		0.811858, -0.370403, 0.451317,
		0.524159, 0.802889, -0.283948,
		31.351887, 35.505142, 34.474674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457346, 34.993423, 35.190460>,  <30.984976, 34.943119, 34.673439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457346, 34.993423, 35.190460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429279, 35.348167, 35.007793>,  <31.412439, 35.561016, 34.898193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429279, 35.348167, 35.007793>,  <31.457346, 34.993423, 35.190460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429279, 35.348167, 35.007793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197639, 0.436364, 0.877796,
		0.977760, 0.151849, 0.144660,
		-0.070168, 0.886864, -0.456671,
		31.408228, 35.614227, 34.870792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869799, 35.388760, 35.628273>,  <31.457346, 34.993423, 35.190460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869799, 35.388760, 35.628273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591688, 35.599876, 35.433121>,  <31.424822, 35.726547, 35.316029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591688, 35.599876, 35.433121>,  <31.869799, 35.388760, 35.628273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591688, 35.599876, 35.433121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177753, 0.531440, 0.828237,
		0.696417, 0.662574, -0.275680,
		-0.695275, 0.527795, -0.487878,
		31.383106, 35.758213, 35.286758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938234, 36.138485, 35.873962>,  <31.869799, 35.388760, 35.628273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938234, 36.138485, 35.873962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574833, 36.077934, 35.718163>,  <31.356792, 36.041603, 35.624683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574833, 36.077934, 35.718163>,  <31.938234, 36.138485, 35.873962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574833, 36.077934, 35.718163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417493, 0.369001, 0.830384,
		0.018028, 0.917019, -0.398436,
		-0.908501, -0.151374, -0.389502,
		31.302282, 36.032520, 35.601311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612766, 36.773792, 35.961468>,  <31.938234, 36.138485, 35.873962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612766, 36.773792, 35.961468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317148, 36.509670, 35.908085>,  <31.139778, 36.351196, 35.876057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317148, 36.509670, 35.908085>,  <31.612766, 36.773792, 35.961468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317148, 36.509670, 35.908085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461999, 0.352617, 0.813768,
		-0.490275, 0.663068, -0.565660,
		-0.739045, -0.660304, -0.133458,
		31.095434, 36.311581, 35.868046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032175, 37.165497, 35.984707>,  <31.612766, 36.773792, 35.961468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032175, 37.165497, 35.984707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928366, 36.792095, 36.083675>,  <30.866079, 36.568054, 36.143055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928366, 36.792095, 36.083675>,  <31.032175, 37.165497, 35.984707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928366, 36.792095, 36.083675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579178, 0.355460, 0.733621,
		-0.772786, 0.047093, -0.632916,
		-0.259525, -0.933504, 0.247420,
		30.850508, 36.512043, 36.157902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260221, 37.072979, 36.008930>,  <31.032175, 37.165497, 35.984707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260221, 37.072979, 36.008930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457134, 36.821320, 36.249538>,  <30.575281, 36.670322, 36.393902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457134, 36.821320, 36.249538>,  <30.260221, 37.072979, 36.008930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457134, 36.821320, 36.249538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597788, 0.257945, 0.759022,
		-0.632699, -0.733234, -0.249118,
		0.492282, -0.629153, 0.601520,
		30.604818, 36.632572, 36.429993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694880, 36.921272, 36.494694>,  <30.260221, 37.072979, 36.008930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694880, 36.921272, 36.494694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009590, 36.744133, 36.666679>,  <30.198416, 36.637852, 36.769871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009590, 36.744133, 36.666679>,  <29.694880, 36.921272, 36.494694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009590, 36.744133, 36.666679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417150, 0.131937, 0.899210,
		-0.454939, -0.886838, -0.080928,
		0.786776, -0.442845, 0.429968,
		30.245623, 36.611279, 36.795670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390968, 36.564541, 37.035892>,  <29.694880, 36.921272, 36.494694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390968, 36.564541, 37.035892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778522, 36.599987, 37.128338>,  <30.011055, 36.621254, 37.183804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778522, 36.599987, 37.128338>,  <29.390968, 36.564541, 37.035892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778522, 36.599987, 37.128338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237020, 0.063150, 0.969450,
		0.071356, -0.994058, 0.082199,
		0.968881, 0.088659, 0.231106,
		30.069187, 36.626572, 37.197670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394049, 36.148544, 37.533741>,  <29.390968, 36.564541, 37.035892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394049, 36.148544, 37.533741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728119, 36.362911, 37.583168>,  <29.928562, 36.491531, 37.612823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728119, 36.362911, 37.583168>,  <29.394049, 36.148544, 37.533741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728119, 36.362911, 37.583168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284149, 0.228104, 0.931251,
		0.470892, -0.812869, 0.342789,
		0.835177, 0.535921, 0.123563,
		29.978672, 36.523689, 37.620235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719679, 35.969772, 38.169174>,  <29.394049, 36.148544, 37.533741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719679, 35.969772, 38.169174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841257, 36.339256, 38.075905>,  <29.914204, 36.560947, 38.019943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841257, 36.339256, 38.075905>,  <29.719679, 35.969772, 38.169174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841257, 36.339256, 38.075905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247227, 0.312848, 0.917063,
		0.920051, -0.221091, 0.323456,
		0.303947, 0.923712, -0.233176,
		29.932442, 36.616371, 38.005951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914299, 36.233955, 38.764538>,  <29.719679, 35.969772, 38.169174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914299, 36.233955, 38.764538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932554, 36.579395, 38.563694>,  <29.943508, 36.786659, 38.443188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932554, 36.579395, 38.563694>,  <29.914299, 36.233955, 38.764538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932554, 36.579395, 38.563694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086262, 0.504166, 0.859288,
		0.995226, 0.004096, 0.097506,
		0.045640, 0.863597, -0.502113,
		29.946247, 36.838474, 38.413059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366796, 36.732075, 39.101166>,  <29.914299, 36.233955, 38.764538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366796, 36.732075, 39.101166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121634, 36.967506, 38.890293>,  <29.974535, 37.108765, 38.763767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121634, 36.967506, 38.890293>,  <30.366796, 36.732075, 39.101166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121634, 36.967506, 38.890293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295357, 0.448171, 0.843746,
		0.732876, 0.672846, -0.100848,
		-0.612908, 0.588575, -0.527184,
		29.937761, 37.144077, 38.732140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524197, 37.313549, 39.363529>,  <30.366796, 36.732075, 39.101166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524197, 37.313549, 39.363529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167715, 37.373829, 39.192394>,  <29.953827, 37.409996, 39.089714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167715, 37.373829, 39.192394>,  <30.524197, 37.313549, 39.363529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167715, 37.373829, 39.192394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287954, 0.540824, 0.790311,
		0.350482, 0.827526, -0.438591,
		-0.891204, 0.150696, -0.427838,
		29.900354, 37.419037, 39.064041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497530, 37.997982, 39.217018>,  <30.524197, 37.313549, 39.363529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497530, 37.997982, 39.217018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111837, 37.891975, 39.215183>,  <29.880421, 37.828373, 39.214081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111837, 37.891975, 39.215183>,  <30.497530, 37.997982, 39.217018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111837, 37.891975, 39.215183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210186, 0.753955, 0.622393,
		-0.161483, 0.601097, -0.782692,
		-0.964233, -0.265016, -0.004591,
		29.822567, 37.812469, 39.213806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096889, 38.678104, 39.167477>,  <30.497530, 37.997982, 39.217018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096889, 38.678104, 39.167477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891174, 38.378399, 39.334385>,  <29.767746, 38.198578, 39.434532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891174, 38.378399, 39.334385>,  <30.096889, 38.678104, 39.167477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891174, 38.378399, 39.334385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285956, 0.608521, 0.740224,
		-0.808541, 0.261365, -0.527209,
		-0.514286, -0.749260, 0.417275,
		29.736889, 38.153622, 39.459568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461193, 38.969688, 39.449772>,  <30.096889, 38.678104, 39.167477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461193, 38.969688, 39.449772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515907, 38.614155, 39.624706>,  <29.548737, 38.400833, 39.729668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515907, 38.614155, 39.624706>,  <29.461193, 38.969688, 39.449772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515907, 38.614155, 39.624706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153648, 0.417108, 0.895775,
		-0.978612, -0.189727, -0.079512,
		0.136787, -0.888833, 0.437338,
		29.556944, 38.347504, 39.755909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909063, 39.006432, 39.977837>,  <29.461193, 38.969688, 39.449772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909063, 39.006432, 39.977837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152521, 38.713787, 40.100666>,  <29.298595, 38.538200, 40.174362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152521, 38.713787, 40.100666>,  <28.909063, 39.006432, 39.977837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152521, 38.713787, 40.100666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110002, 0.305464, 0.945828,
		-0.785782, -0.609450, 0.105439,
		0.608643, -0.731616, 0.307069,
		29.335114, 38.494301, 40.192787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533619, 38.765965, 40.582691>,  <28.909063, 39.006432, 39.977837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533619, 38.765965, 40.582691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912203, 38.642948, 40.621941>,  <29.139353, 38.569138, 40.645493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912203, 38.642948, 40.621941>,  <28.533619, 38.765965, 40.582691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912203, 38.642948, 40.621941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071143, 0.097785, 0.992661,
		-0.314881, -0.946496, 0.070671,
		0.946461, -0.307542, 0.098127,
		29.196142, 38.550686, 40.651379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550730, 38.346848, 41.158920>,  <28.533619, 38.765965, 40.582691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550730, 38.346848, 41.158920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924902, 38.467560, 41.085278>,  <29.149406, 38.539986, 41.041092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924902, 38.467560, 41.085278>,  <28.550730, 38.346848, 41.158920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924902, 38.467560, 41.085278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101180, 0.270446, 0.957404,
		0.338719, -0.914213, 0.222449,
		0.935431, 0.301784, -0.184105,
		29.205532, 38.558094, 41.030045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918760, 38.053425, 41.645638>,  <28.550730, 38.346848, 41.158920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918760, 38.053425, 41.645638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146706, 38.359669, 41.526234>,  <29.283472, 38.543415, 41.454594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146706, 38.359669, 41.526234>,  <28.918760, 38.053425, 41.645638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146706, 38.359669, 41.526234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005216, 0.366623, 0.930355,
		0.821725, -0.528616, 0.212917,
		0.569861, 0.765606, -0.298506,
		29.317663, 38.589352, 41.436684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089607, 38.400642, 42.279694>,  <28.918760, 38.053425, 41.645638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089607, 38.400642, 42.279694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183104, 38.675217, 42.004253>,  <29.239202, 38.839962, 41.838989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183104, 38.675217, 42.004253>,  <29.089607, 38.400642, 42.279694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183104, 38.675217, 42.004253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137816, 0.677678, 0.722329,
		0.962482, -0.263739, 0.063800,
		0.233743, 0.686436, -0.688600,
		29.253227, 38.881149, 41.797672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750568, 38.615677, 42.527634>,  <29.089607, 38.400642, 42.279694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750568, 38.615677, 42.527634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631199, 38.914783, 42.290386>,  <29.559578, 39.094246, 42.148037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631199, 38.914783, 42.290386>,  <29.750568, 38.615677, 42.527634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631199, 38.914783, 42.290386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102818, 0.643008, 0.758927,
		0.948879, 0.165498, -0.268772,
		-0.298423, 0.747764, -0.593121,
		29.541672, 39.139114, 42.112450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265018, 39.159515, 42.646488>,  <29.750568, 38.615677, 42.527634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265018, 39.159515, 42.646488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913771, 39.300922, 42.517532>,  <29.703022, 39.385765, 42.440159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913771, 39.300922, 42.517532>,  <30.265018, 39.159515, 42.646488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913771, 39.300922, 42.517532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032191, 0.628641, 0.777029,
		0.477360, 0.692701, -0.540641,
		-0.878118, 0.353519, -0.322387,
		29.650335, 39.406979, 42.420815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328951, 39.885796, 42.663048>,  <30.265018, 39.159515, 42.646488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328951, 39.885796, 42.663048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940550, 39.793938, 42.689644>,  <29.707510, 39.738823, 42.705601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940550, 39.793938, 42.689644>,  <30.328951, 39.885796, 42.663048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940550, 39.793938, 42.689644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084239, 0.588903, 0.803802,
		-0.223746, 0.774891, -0.591170,
		-0.971000, -0.229647, 0.066488,
		29.649250, 39.725044, 42.709591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066292, 40.399197, 43.129604>,  <30.328951, 39.885796, 42.663048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066292, 40.399197, 43.129604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770021, 40.132236, 43.098675>,  <29.592258, 39.972061, 43.080116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770021, 40.132236, 43.098675>,  <30.066292, 40.399197, 43.129604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770021, 40.132236, 43.098675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319934, 0.249156, 0.914092,
		-0.590797, 0.701785, -0.398067,
		-0.740676, -0.667398, -0.077324,
		29.547819, 39.932018, 43.075478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416090, 40.744835, 43.491245>,  <30.066292, 40.399197, 43.129604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416090, 40.744835, 43.491245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279087, 40.369949, 43.464970>,  <29.196886, 40.145016, 43.449203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279087, 40.369949, 43.464970>,  <29.416090, 40.744835, 43.491245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279087, 40.369949, 43.464970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527713, 0.134066, 0.838776,
		-0.777309, 0.321950, -0.540499,
		-0.342506, -0.937216, -0.065687,
		29.176334, 40.088783, 43.445263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694826, 40.799313, 43.615261>,  <29.416090, 40.744835, 43.491245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694826, 40.799313, 43.615261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810030, 40.422340, 43.683231>,  <28.879152, 40.196156, 43.724014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810030, 40.422340, 43.683231>,  <28.694826, 40.799313, 43.615261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810030, 40.422340, 43.683231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445974, 0.025024, 0.894696,
		-0.847441, -0.333464, -0.413092,
		0.288012, -0.942430, 0.169923,
		28.896433, 40.139610, 43.734207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980965, 40.460941, 43.825485>,  <28.694826, 40.799313, 43.615261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980965, 40.460941, 43.825485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357481, 40.368080, 43.923527>,  <28.583391, 40.312363, 43.982353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357481, 40.368080, 43.923527>,  <27.980965, 40.460941, 43.825485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357481, 40.368080, 43.923527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201334, 0.196750, 0.959559,
		-0.270992, -0.952572, 0.138458,
		0.941291, -0.232157, 0.245103,
		28.639868, 40.298435, 43.997059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988617, 40.457550, 44.552830>,  <27.980965, 40.460941, 43.825485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988617, 40.457550, 44.552830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370441, 40.353840, 44.494053>,  <28.599537, 40.291615, 44.458786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.370441, 40.353840, 44.494053>,  <27.988617, 40.457550, 44.552830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370441, 40.353840, 44.494053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076533, -0.263251, 0.961687,
		-0.288025, -0.929233, -0.231446,
		0.954560, -0.259277, -0.146940,
		28.656811, 40.276058, 44.449970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081348, 39.815266, 44.895851>,  <27.988617, 40.457550, 44.552830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081348, 39.815266, 44.895851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427588, 40.012920, 44.863426>,  <28.635330, 40.131512, 44.843971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427588, 40.012920, 44.863426>,  <28.081348, 39.815266, 44.895851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427588, 40.012920, 44.863426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181743, -0.159172, 0.970378,
		0.466598, -0.854688, -0.227584,
		0.865596, 0.494138, -0.081064,
		28.687265, 40.161163, 44.839108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748550, 39.450150, 45.091702>,  <28.081348, 39.815266, 44.895851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748550, 39.450150, 45.091702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732796, 39.841782, 45.171547>,  <28.723343, 40.076763, 45.219456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732796, 39.841782, 45.171547>,  <28.748550, 39.450150, 45.091702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732796, 39.841782, 45.171547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127346, -0.193221, 0.972856,
		0.991076, 0.063737, -0.117072,
		-0.039386, 0.979083, 0.199614,
		28.720980, 40.135506, 45.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330591, 39.725376, 45.474625>,  <28.748550, 39.450150, 45.091702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330591, 39.725376, 45.474625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962770, 39.858757, 45.557796>,  <28.742079, 39.938786, 45.607700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962770, 39.858757, 45.557796>,  <29.330591, 39.725376, 45.474625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962770, 39.858757, 45.557796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055069, -0.414556, 0.908356,
		0.389089, 0.846731, 0.362843,
		-0.919553, 0.333450, 0.207928,
		28.686905, 39.958794, 45.620174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384302, 40.155972, 46.044941>,  <29.330591, 39.725376, 45.474625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384302, 40.155972, 46.044941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021862, 39.990990, 46.007267>,  <28.804398, 39.892002, 45.984665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021862, 39.990990, 46.007267>,  <29.384302, 40.155972, 46.044941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021862, 39.990990, 46.007267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093621, -0.412578, 0.906098,
		-0.412578, 0.812197, 0.412451,
		-0.906098, -0.412451, -0.094182,
		28.750032, 39.867256, 45.979012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933067, 40.008591, 46.680428>,  <29.384302, 40.155972, 46.044941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933067, 40.008591, 46.680428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619287, 39.812859, 46.832844>,  <28.431021, 39.695419, 46.924294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619287, 39.812859, 46.832844>,  <28.933067, 40.008591, 46.680428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619287, 39.812859, 46.832844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366047, 0.861267, 0.352461,
		-0.500651, 0.137008, -0.854739,
		-0.784448, -0.489334, 0.381043,
		28.383953, 39.666058, 46.947155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994701, 39.336205, 46.320515>,  <28.933067, 40.008591, 46.680428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994701, 39.336205, 46.320515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144939, 39.046761, 46.552143>,  <29.235083, 38.873096, 46.691120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144939, 39.046761, 46.552143>,  <28.994701, 39.336205, 46.320515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144939, 39.046761, 46.552143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659013, -0.230791, -0.715847,
		0.651636, 0.650483, 0.390183,
		0.375595, -0.723607, 0.579069,
		29.257618, 38.829678, 46.725864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815086, 39.403820, 46.622540>,  <28.994701, 39.336205, 46.320515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815086, 39.403820, 46.622540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731209, 39.013355, 46.600151>,  <29.680882, 38.779076, 46.586716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731209, 39.013355, 46.600151>,  <29.815086, 39.403820, 46.622540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731209, 39.013355, 46.600151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848508, -0.153229, -0.506513,
		0.485862, -0.153709, 0.860414,
		-0.209696, -0.976163, -0.055975,
		29.668301, 38.720505, 46.583359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504765, 39.144966, 46.751541>,  <29.815086, 39.403820, 46.622540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504765, 39.144966, 46.751541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250677, 38.930550, 46.529137>,  <30.098225, 38.801899, 46.395695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250677, 38.930550, 46.529137>,  <30.504765, 39.144966, 46.751541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250677, 38.930550, 46.529137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737185, -0.206118, -0.643485,
		0.230332, -0.818640, 0.526094,
		-0.635220, -0.536044, -0.556014,
		30.060112, 38.769737, 46.362331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802326, 38.477379, 46.628460>,  <30.504765, 39.144966, 46.751541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802326, 38.477379, 46.628460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551262, 38.541420, 46.323723>,  <30.400623, 38.579845, 46.140881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551262, 38.541420, 46.323723>,  <30.802326, 38.477379, 46.628460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551262, 38.541420, 46.323723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716911, -0.262577, -0.645826,
		-0.303442, -0.951536, 0.050029,
		-0.627664, 0.160104, -0.761844,
		30.362963, 38.589451, 46.095169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922092, 38.036819, 46.073929>,  <30.802326, 38.477379, 46.628460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922092, 38.036819, 46.073929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705498, 38.288746, 45.851177>,  <30.575541, 38.439903, 45.717525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705498, 38.288746, 45.851177>,  <30.922092, 38.036819, 46.073929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705498, 38.288746, 45.851177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610059, -0.161407, -0.775742,
		-0.578463, -0.759785, -0.296828,
		-0.541487, 0.629821, -0.556882,
		30.543051, 38.477692, 45.684113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319141, 37.647991, 45.680847>,  <30.922092, 38.036819, 46.073929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319141, 37.647991, 45.680847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361557, 37.963730, 45.438957>,  <30.387007, 38.153172, 45.293823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361557, 37.963730, 45.438957>,  <30.319141, 37.647991, 45.680847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361557, 37.963730, 45.438957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630599, -0.523602, -0.572875,
		-0.768830, -0.320591, -0.553282,
		0.106041, 0.789343, -0.604725,
		30.393370, 38.200531, 45.257538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100298, 37.479176, 45.034817>,  <30.319141, 37.647991, 45.680847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100298, 37.479176, 45.034817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350431, 37.783741, 44.966454>,  <30.500511, 37.966480, 44.925434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350431, 37.783741, 44.966454>,  <30.100298, 37.479176, 45.034817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350431, 37.783741, 44.966454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548139, -0.584467, -0.598282,
		-0.555431, 0.280443, -0.782846,
		0.625332, 0.761413, -0.170909,
		30.538031, 38.012165, 44.915180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169252, 37.545368, 44.274471>,  <30.100298, 37.479176, 45.034817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169252, 37.545368, 44.274471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502687, 37.703465, 44.428829>,  <30.702749, 37.798321, 44.521442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502687, 37.703465, 44.428829>,  <30.169252, 37.545368, 44.274471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502687, 37.703465, 44.428829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548995, -0.515518, -0.657910,
		-0.061097, 0.760280, -0.646716,
		0.833589, 0.395240, 0.385894,
		30.752764, 37.822037, 44.544598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581533, 37.616837, 43.693462>,  <30.169252, 37.545368, 44.274471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581533, 37.616837, 43.693462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845800, 37.632824, 43.993309>,  <31.004360, 37.642414, 44.173218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845800, 37.632824, 43.993309>,  <30.581533, 37.616837, 43.693462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845800, 37.632824, 43.993309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707123, -0.368336, -0.603578,
		0.251988, 0.928833, -0.271607,
		0.660666, 0.039965, 0.749615,
		31.044001, 37.644814, 44.218193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180489, 38.002705, 43.405807>,  <30.581533, 37.616837, 43.693462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180489, 38.002705, 43.405807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299467, 37.798016, 43.728214>,  <31.370853, 37.675201, 43.921658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299467, 37.798016, 43.728214>,  <31.180489, 38.002705, 43.405807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299467, 37.798016, 43.728214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828879, -0.280548, -0.483997,
		0.473800, 0.812052, 0.340712,
		0.297445, -0.511727, 0.806016,
		31.388700, 37.644497, 43.970020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854212, 38.196449, 43.511921>,  <31.180489, 38.002705, 43.405807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854212, 38.196449, 43.511921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806574, 37.850498, 43.706982>,  <31.777992, 37.642929, 43.824020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806574, 37.850498, 43.706982>,  <31.854212, 38.196449, 43.511921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806574, 37.850498, 43.706982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838234, -0.350819, -0.417481,
		0.532148, 0.359051, 0.766747,
		-0.119093, -0.864875, 0.487657,
		31.770845, 37.591034, 43.853279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457378, 38.063961, 43.775558>,  <31.854212, 38.196449, 43.511921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457378, 38.063961, 43.775558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290817, 37.700287, 43.775501>,  <32.190880, 37.482082, 43.775467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290817, 37.700287, 43.775501>,  <32.457378, 38.063961, 43.775558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290817, 37.700287, 43.775501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844559, -0.386744, -0.370337,
		0.336650, -0.154327, 0.928897,
		-0.416398, -0.909182, -0.000141,
		32.165897, 37.427532, 43.775459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055244, 37.658241, 43.841221>,  <32.457378, 38.063961, 43.775558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055244, 37.658241, 43.841221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769859, 37.405022, 43.721073>,  <32.598629, 37.253090, 43.648987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769859, 37.405022, 43.721073>,  <33.055244, 37.658241, 43.841221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769859, 37.405022, 43.721073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666229, -0.480088, -0.570661,
		0.217057, -0.607256, 0.764282,
		-0.713461, -0.633052, -0.300365,
		32.555820, 37.215107, 43.630962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289028, 36.883667, 43.894638>,  <33.055244, 37.658241, 43.841221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289028, 36.883667, 43.894638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994205, 36.908337, 43.625435>,  <32.817310, 36.923138, 43.463913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994205, 36.908337, 43.625435>,  <33.289028, 36.883667, 43.894638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994205, 36.908337, 43.625435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538035, -0.549080, -0.639555,
		-0.408977, -0.833492, 0.371524,
		-0.737059, 0.061670, -0.673008,
		32.773087, 36.926838, 43.423531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482140, 36.169827, 43.455647>,  <33.289028, 36.883667, 43.894638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482140, 36.169827, 43.455647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219193, 36.411983, 43.276154>,  <33.061424, 36.557278, 43.168457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219193, 36.411983, 43.276154>,  <33.482140, 36.169827, 43.455647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219193, 36.411983, 43.276154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255603, -0.381045, -0.888522,
		-0.708895, -0.698785, 0.095747,
		-0.657370, 0.605396, -0.448732,
		33.021980, 36.593601, 43.141533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082806, 35.778599, 43.019245>,  <33.482140, 36.169827, 43.455647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082806, 35.778599, 43.019245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017323, 36.145332, 42.873581>,  <32.978035, 36.365372, 42.786182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017323, 36.145332, 42.873581>,  <33.082806, 35.778599, 43.019245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017323, 36.145332, 42.873581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252152, -0.317989, -0.913949,
		-0.953740, -0.241441, -0.179127,
		-0.163704, 0.916837, -0.364158,
		32.968212, 36.420383, 42.764332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728554, 35.729095, 42.422234>,  <33.082806, 35.778599, 43.019245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728554, 35.729095, 42.422234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901409, 36.083733, 42.356255>,  <33.005123, 36.296516, 42.316666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901409, 36.083733, 42.356255>,  <32.728554, 35.729095, 42.422234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901409, 36.083733, 42.356255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145280, -0.248966, -0.957554,
		-0.890028, 0.389833, -0.236392,
		0.432140, 0.886593, -0.164951,
		33.031052, 36.349709, 42.306770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396885, 36.035805, 41.840801>,  <32.728554, 35.729095, 42.422234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396885, 36.035805, 41.840801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743969, 36.232437, 41.870247>,  <32.952221, 36.350418, 41.887913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743969, 36.232437, 41.870247>,  <32.396885, 36.035805, 41.840801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743969, 36.232437, 41.870247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213929, -0.235660, -0.947997,
		-0.448671, 0.838338, -0.309650,
		0.867715, 0.491582, 0.073611,
		33.004284, 36.379913, 41.892330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450729, 36.382748, 41.186672>,  <32.396885, 36.035805, 41.840801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450729, 36.382748, 41.186672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828861, 36.393379, 41.316685>,  <33.055740, 36.399757, 41.394691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828861, 36.393379, 41.316685>,  <32.450729, 36.382748, 41.186672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828861, 36.393379, 41.316685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323922, -0.191996, -0.926397,
		0.037786, 0.981036, -0.190107,
		0.945329, 0.026575, 0.325034,
		33.112461, 36.401352, 41.414196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848267, 36.748085, 40.591927>,  <32.450729, 36.382748, 41.186672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848267, 36.748085, 40.591927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083050, 36.543507, 40.842976>,  <33.223919, 36.420761, 40.993603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083050, 36.543507, 40.842976>,  <32.848267, 36.748085, 40.591927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083050, 36.543507, 40.842976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537453, -0.333620, -0.774495,
		0.605498, 0.791911, 0.079057,
		0.586956, -0.511444, 0.627621,
		33.259136, 36.390072, 41.031261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634987, 36.919525, 40.364521>,  <32.848267, 36.748085, 40.591927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634987, 36.919525, 40.364521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577286, 36.574970, 40.559334>,  <33.542667, 36.368237, 40.676224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577286, 36.574970, 40.559334>,  <33.634987, 36.919525, 40.364521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577286, 36.574970, 40.559334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677595, -0.444672, -0.585775,
		0.721150, 0.245516, 0.647815,
		-0.144248, -0.861388, 0.487036,
		33.534012, 36.316555, 40.705444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319355, 36.591370, 40.249107>,  <33.634987, 36.919525, 40.364521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319355, 36.591370, 40.249107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081799, 36.303364, 40.392700>,  <33.939266, 36.130558, 40.478855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081799, 36.303364, 40.392700>,  <34.319355, 36.591370, 40.249107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081799, 36.303364, 40.392700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471494, -0.673016, -0.569862,
		0.651911, -0.169179, 0.739182,
		-0.593890, -0.720019, 0.358980,
		33.903633, 36.087357, 40.500393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779388, 36.081879, 40.411705>,  <34.319355, 36.591370, 40.249107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779388, 36.081879, 40.411705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416443, 35.922649, 40.357693>,  <34.198677, 35.827114, 40.325287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416443, 35.922649, 40.357693>,  <34.779388, 36.081879, 40.411705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416443, 35.922649, 40.357693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404284, -0.738470, -0.539645,
		0.115101, -0.544244, 0.830993,
		-0.907362, -0.398071, -0.135031,
		34.144234, 35.803226, 40.317184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903412, 35.452625, 40.311901>,  <34.779388, 36.081879, 40.411705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903412, 35.452625, 40.311901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528698, 35.439331, 40.172573>,  <34.303871, 35.431355, 40.088978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528698, 35.439331, 40.172573>,  <34.903412, 35.452625, 40.311901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528698, 35.439331, 40.172573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245875, -0.770797, -0.587723,
		-0.248953, -0.636214, 0.730243,
		-0.936786, -0.033233, -0.348321,
		34.247662, 35.429359, 40.068077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658638, 34.804462, 40.404922>,  <34.903412, 35.452625, 40.311901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658638, 34.804462, 40.404922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444225, 34.943523, 40.097206>,  <34.315578, 35.026958, 39.912579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444225, 34.943523, 40.097206>,  <34.658638, 34.804462, 40.404922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444225, 34.943523, 40.097206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331201, -0.751602, -0.570439,
		-0.776513, -0.560564, 0.287742,
		-0.536035, 0.347653, -0.769288,
		34.283417, 35.047821, 39.866421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366112, 34.210304, 40.090340>,  <34.658638, 34.804462, 40.404922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366112, 34.210304, 40.090340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316757, 34.479271, 39.798412>,  <34.287144, 34.640652, 39.623257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316757, 34.479271, 39.798412>,  <34.366112, 34.210304, 40.090340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316757, 34.479271, 39.798412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047570, -0.730585, -0.681163,
		-0.991218, -0.118763, 0.058157,
		-0.123386, 0.672415, -0.729818,
		34.279743, 34.680996, 39.579468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909252, 33.901814, 39.575970>,  <34.366112, 34.210304, 40.090340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909252, 33.901814, 39.575970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105587, 34.192871, 39.384293>,  <34.223389, 34.367504, 39.269287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105587, 34.192871, 39.384293>,  <33.909252, 33.901814, 39.575970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105587, 34.192871, 39.384293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169519, -0.619247, -0.766679,
		-0.854603, 0.295080, -0.427296,
		0.490833, 0.727641, -0.479188,
		34.252838, 34.411163, 39.240536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572678, 34.045578, 38.997871>,  <33.909252, 33.901814, 39.575970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572678, 34.045578, 38.997871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950588, 34.151524, 38.920670>,  <34.177334, 34.215092, 38.874348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950588, 34.151524, 38.920670>,  <33.572678, 34.045578, 38.997871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950588, 34.151524, 38.920670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018315, -0.545323, -0.838026,
		-0.327209, 0.795281, -0.510356,
		0.944775, 0.264862, -0.193000,
		34.234020, 34.230984, 38.862770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595699, 34.409756, 38.272869>,  <33.572678, 34.045578, 38.997871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595699, 34.409756, 38.272869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952248, 34.255531, 38.368198>,  <34.166176, 34.162994, 38.425396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952248, 34.255531, 38.368198>,  <33.595699, 34.409756, 38.272869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952248, 34.255531, 38.368198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026668, -0.480266, -0.876717,
		0.452490, 0.787836, -0.417813,
		0.891371, -0.385563, 0.238326,
		34.219658, 34.139862, 38.439697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934525, 34.530983, 37.676949>,  <33.595699, 34.409756, 38.272869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934525, 34.530983, 37.676949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154572, 34.263554, 37.877102>,  <34.286598, 34.103096, 37.997192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154572, 34.263554, 37.877102>,  <33.934525, 34.530983, 37.676949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154572, 34.263554, 37.877102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276753, -0.419377, -0.864599,
		0.787896, 0.614111, -0.045676,
		0.550115, -0.668573, 0.500383,
		34.319607, 34.062981, 38.027218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482651, 34.564362, 37.278210>,  <33.934525, 34.530983, 37.676949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482651, 34.564362, 37.278210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519871, 34.228397, 37.492085>,  <34.542202, 34.026817, 37.620411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519871, 34.228397, 37.492085>,  <34.482651, 34.564362, 37.278210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519871, 34.228397, 37.492085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354250, -0.473950, -0.806150,
		0.930510, 0.264426, 0.253437,
		0.093050, -0.839911, 0.534688,
		34.547787, 33.976425, 37.652493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084270, 34.131924, 37.060505>,  <34.482651, 34.564362, 37.278210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084270, 34.131924, 37.060505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883839, 33.834808, 37.238125>,  <34.763580, 33.656540, 37.344696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883839, 33.834808, 37.238125>,  <35.084270, 34.131924, 37.060505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883839, 33.834808, 37.238125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292254, -0.628216, -0.721063,
		0.814559, -0.231534, 0.531869,
		-0.501079, -0.742790, 0.444052,
		34.733513, 33.611973, 37.371342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442432, 33.551548, 36.845116>,  <35.084270, 34.131924, 37.060505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442432, 33.551548, 36.845116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085346, 33.406559, 36.952209>,  <34.871094, 33.319565, 37.016468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085346, 33.406559, 36.952209>,  <35.442432, 33.551548, 36.845116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085346, 33.406559, 36.952209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047677, -0.666777, -0.743731,
		0.448101, -0.651172, 0.612521,
		-0.892711, -0.362470, 0.267738,
		34.817532, 33.297817, 37.032532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506477, 32.955711, 36.744144>,  <35.442432, 33.551548, 36.845116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506477, 32.955711, 36.744144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106701, 32.968777, 36.747147>,  <34.866837, 32.976616, 36.748947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106701, 32.968777, 36.747147>,  <35.506477, 32.955711, 36.744144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106701, 32.968777, 36.747147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026729, -0.641640, -0.766540,
		-0.020219, -0.766310, 0.642153,
		-0.999438, 0.032663, 0.007509,
		34.806870, 32.978577, 36.749401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270500, 32.207478, 36.752926>,  <35.506477, 32.955711, 36.744144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270500, 32.207478, 36.752926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985867, 32.438923, 36.593498>,  <34.815086, 32.577789, 36.497841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985867, 32.438923, 36.593498>,  <35.270500, 32.207478, 36.752926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985867, 32.438923, 36.593498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084655, -0.633751, -0.768891,
		-0.697490, -0.513383, 0.499945,
		-0.711576, 0.578617, -0.398575,
		34.772392, 32.612507, 36.473927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831863, 31.747978, 36.231392>,  <35.270500, 32.207478, 36.752926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831863, 31.747978, 36.231392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777256, 32.128380, 36.120434>,  <34.744492, 32.356621, 36.053860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777256, 32.128380, 36.120434>,  <34.831863, 31.747978, 36.231392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777256, 32.128380, 36.120434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037989, -0.274790, -0.960754,
		-0.989908, -0.141702, 0.001387,
		-0.136522, 0.951005, -0.277399,
		34.736301, 32.413681, 36.037212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319225, 31.772545, 35.613426>,  <34.831863, 31.747978, 36.231392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319225, 31.772545, 35.613426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508785, 32.124733, 35.607834>,  <34.622520, 32.336044, 35.604481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508785, 32.124733, 35.607834>,  <34.319225, 31.772545, 35.613426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508785, 32.124733, 35.607834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048724, -0.042065, -0.997926,
		-0.879231, 0.472233, -0.062835,
		0.473896, 0.880470, -0.013976,
		34.650955, 32.388874, 35.603642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940815, 32.065189, 35.112762>,  <34.319225, 31.772545, 35.613426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940815, 32.065189, 35.112762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272564, 32.286911, 35.140747>,  <34.471611, 32.419945, 35.157539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272564, 32.286911, 35.140747>,  <33.940815, 32.065189, 35.112762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272564, 32.286911, 35.140747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136955, -0.080304, -0.987317,
		-0.541657, 0.828430, -0.142516,
		0.829368, 0.554306, 0.069961,
		34.521374, 32.453201, 35.161736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779575, 32.490253, 34.659977>,  <33.940815, 32.065189, 35.112762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779575, 32.490253, 34.659977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176956, 32.489864, 34.705669>,  <34.415386, 32.489632, 34.733086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176956, 32.489864, 34.705669>,  <33.779575, 32.490253, 34.659977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176956, 32.489864, 34.705669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113995, -0.055800, -0.991913,
		0.007335, 0.998441, -0.055324,
		0.993454, -0.000969, 0.114226,
		34.474991, 32.489574, 34.739937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968678, 32.904957, 34.093102>,  <33.779575, 32.490253, 34.659977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968678, 32.904957, 34.093102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315426, 32.732048, 34.192440>,  <34.523476, 32.628304, 34.252045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315426, 32.732048, 34.192440>,  <33.968678, 32.904957, 34.093102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315426, 32.732048, 34.192440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171830, -0.208558, -0.962797,
		0.467989, 0.877292, -0.106514,
		0.866868, -0.432276, 0.248348,
		34.575485, 32.602364, 34.266945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559231, 33.361923, 33.762684>,  <33.968678, 32.904957, 34.093102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559231, 33.361923, 33.762684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697422, 32.994488, 33.839458>,  <34.780338, 32.774025, 33.885521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697422, 32.994488, 33.839458>,  <34.559231, 33.361923, 33.762684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697422, 32.994488, 33.839458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470758, -0.007285, -0.882232,
		0.811807, 0.395149, 0.429916,
		0.345481, -0.918588, 0.191933,
		34.801067, 32.718910, 33.897038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253284, 33.230892, 33.362129>,  <34.559231, 33.361923, 33.762684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253284, 33.230892, 33.362129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115898, 32.872288, 33.474056>,  <35.033466, 32.657124, 33.541214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115898, 32.872288, 33.474056>,  <35.253284, 33.230892, 33.362129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115898, 32.872288, 33.474056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439483, -0.416736, -0.795729,
		0.829991, -0.150331, 0.537137,
		-0.343467, -0.896511, 0.279819,
		35.012859, 32.603336, 33.558002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885643, 32.820717, 33.439377>,  <35.253284, 33.230892, 33.362129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885643, 32.820717, 33.439377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551918, 32.613529, 33.363880>,  <35.351681, 32.489216, 33.318581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551918, 32.613529, 33.363880>,  <35.885643, 32.820717, 33.439377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551918, 32.613529, 33.363880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378310, -0.288902, -0.879441,
		0.400995, -0.805136, 0.436988,
		-0.834316, -0.517968, -0.188743,
		35.301624, 32.458138, 33.307259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456146, 32.530941, 33.890354>,  <35.885643, 32.820717, 33.439377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456146, 32.530941, 33.890354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289764, 32.188995, 33.766296>,  <36.189938, 31.983828, 33.691860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289764, 32.188995, 33.766296>,  <36.456146, 32.530941, 33.890354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289764, 32.188995, 33.766296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653208, -0.043581, -0.755923,
		0.632696, -0.517016, 0.576533,
		-0.415950, -0.854866, -0.310146,
		36.164978, 31.932535, 33.673252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750679, 33.284428, 34.238136>,  <36.456146, 32.530941, 33.890354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750679, 33.284428, 34.238136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131294, 33.165512, 34.206642>,  <37.359661, 33.094162, 34.187744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131294, 33.165512, 34.206642>,  <36.750679, 33.284428, 34.238136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131294, 33.165512, 34.206642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209089, 0.437628, 0.874507,
		-0.225523, -0.848588, 0.478579,
		0.951536, -0.297288, -0.078735,
		37.416756, 33.076324, 34.183022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996803, 32.942921, 34.851475>,  <36.750679, 33.284428, 34.238136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996803, 32.942921, 34.851475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300777, 33.137730, 34.679283>,  <37.483162, 33.254616, 34.575966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300777, 33.137730, 34.679283>,  <36.996803, 32.942921, 34.851475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300777, 33.137730, 34.679283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096287, 0.570625, 0.815546,
		0.642832, -0.661209, 0.386742,
		0.759932, 0.487021, -0.430482,
		37.528755, 33.283836, 34.550140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507027, 33.040436, 35.299648>,  <36.996803, 32.942921, 34.851475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507027, 33.040436, 35.299648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613293, 33.316193, 35.030083>,  <37.677052, 33.481647, 34.868343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613293, 33.316193, 35.030083>,  <37.507027, 33.040436, 35.299648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613293, 33.316193, 35.030083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247836, 0.626706, 0.738794,
		0.931665, -0.363293, -0.004361,
		0.265665, 0.689389, -0.673917,
		37.692993, 33.523010, 34.827908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126450, 33.236244, 35.510418>,  <37.507027, 33.040436, 35.299648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126450, 33.236244, 35.510418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943844, 33.528782, 35.307747>,  <37.834278, 33.704304, 35.186142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943844, 33.528782, 35.307747>,  <38.126450, 33.236244, 35.510418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943844, 33.528782, 35.307747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162377, 0.628410, 0.760746,
		0.874772, 0.265020, -0.405634,
		-0.456518, 0.731345, -0.506682,
		37.806889, 33.748184, 35.155743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512169, 33.808701, 35.596317>,  <38.126450, 33.236244, 35.510418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512169, 33.808701, 35.596317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172657, 33.992470, 35.491627>,  <37.968948, 34.102730, 35.428810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172657, 33.992470, 35.491627>,  <38.512169, 33.808701, 35.596317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172657, 33.992470, 35.491627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153891, 0.688224, 0.708989,
		0.505853, 0.561499, -0.654853,
		-0.848782, 0.459420, -0.261730,
		37.918022, 34.130295, 35.413109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613132, 34.594421, 35.451427>,  <38.512169, 33.808701, 35.596317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613132, 34.594421, 35.451427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222378, 34.565544, 35.531906>,  <37.987926, 34.548218, 35.580193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222378, 34.565544, 35.531906>,  <38.613132, 34.594421, 35.451427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222378, 34.565544, 35.531906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088455, 0.720341, 0.687957,
		-0.194596, 0.689853, -0.697305,
		-0.976887, -0.072194, 0.201196,
		37.929310, 34.543884, 35.592266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329155, 35.228851, 35.521351>,  <38.613132, 34.594421, 35.451427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329155, 35.228851, 35.521351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045986, 35.017082, 35.708351>,  <37.876083, 34.890018, 35.820549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045986, 35.017082, 35.708351>,  <38.329155, 35.228851, 35.521351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045986, 35.017082, 35.708351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004675, 0.665403, 0.746469,
		-0.706274, 0.526257, -0.473529,
		-0.707923, -0.529426, 0.467497,
		37.833611, 34.858253, 35.848598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840916, 35.720474, 35.631935>,  <38.329155, 35.228851, 35.521351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840916, 35.720474, 35.631935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747799, 35.432426, 35.893387>,  <37.691929, 35.259598, 36.050259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747799, 35.432426, 35.893387>,  <37.840916, 35.720474, 35.631935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747799, 35.432426, 35.893387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256346, 0.693763, 0.673037,
		-0.938135, -0.010882, -0.346100,
		-0.232788, -0.720121, 0.653633,
		37.677963, 35.216389, 36.089478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259502, 35.987724, 35.922249>,  <37.840916, 35.720474, 35.631935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259502, 35.987724, 35.922249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405209, 35.702072, 36.161358>,  <37.492634, 35.530682, 36.304825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405209, 35.702072, 36.161358>,  <37.259502, 35.987724, 35.922249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405209, 35.702072, 36.161358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125055, 0.598552, 0.791263,
		-0.922859, -0.362987, 0.128729,
		0.364269, -0.714126, 0.597773,
		37.514488, 35.487835, 36.340691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829502, 36.030411, 36.513779>,  <37.259502, 35.987724, 35.922249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829502, 36.030411, 36.513779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131363, 35.809078, 36.654823>,  <37.312477, 35.676281, 36.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131363, 35.809078, 36.654823>,  <36.829502, 36.030411, 36.513779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131363, 35.809078, 36.654823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037924, 0.499724, 0.865354,
		-0.655030, -0.666412, 0.356133,
		0.754650, -0.553327, 0.352608,
		37.357758, 35.643082, 36.760605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638485, 35.716255, 37.235218>,  <36.829502, 36.030411, 36.513779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638485, 35.716255, 37.235218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037949, 35.715755, 37.214527>,  <37.277626, 35.715458, 37.202114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037949, 35.715755, 37.214527>,  <36.638485, 35.716255, 37.235218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037949, 35.715755, 37.214527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044298, 0.537186, 0.842300,
		0.026736, -0.843463, 0.536522,
		0.998661, -0.001247, -0.051726,
		37.337547, 35.715382, 37.199009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836800, 35.497692, 37.920918>,  <36.638485, 35.716255, 37.235218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836800, 35.497692, 37.920918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146778, 35.692936, 37.760311>,  <37.332764, 35.810081, 37.663948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146778, 35.692936, 37.760311>,  <36.836800, 35.497692, 37.920918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146778, 35.692936, 37.760311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120643, 0.509355, 0.852058,
		0.620408, -0.708737, 0.335835,
		0.774945, 0.488107, -0.401512,
		37.379261, 35.839367, 37.639858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470573, 35.361309, 38.318268>,  <36.836800, 35.497692, 37.920918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470573, 35.361309, 38.318268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476585, 35.721378, 38.144161>,  <37.480190, 35.937420, 38.039696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476585, 35.721378, 38.144161>,  <37.470573, 35.361309, 38.318268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476585, 35.721378, 38.144161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066754, 0.435248, 0.897832,
		0.997656, 0.015565, 0.066631,
		0.015026, 0.900176, -0.435267,
		37.481094, 35.991432, 38.013580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038017, 35.702709, 38.610420>,  <37.470573, 35.361309, 38.318268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038017, 35.702709, 38.610420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756321, 35.965168, 38.501968>,  <37.587303, 36.122643, 38.436897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756321, 35.965168, 38.501968>,  <38.038017, 35.702709, 38.610420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756321, 35.965168, 38.501968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027751, 0.356163, 0.934012,
		0.709415, 0.665296, -0.232618,
		-0.704244, 0.656147, -0.271130,
		37.545048, 36.162010, 38.420628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318111, 36.388878, 38.827557>,  <38.038017, 35.702709, 38.610420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318111, 36.388878, 38.827557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919491, 36.369377, 38.800724>,  <37.680317, 36.357677, 38.784626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919491, 36.369377, 38.800724>,  <38.318111, 36.388878, 38.827557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919491, 36.369377, 38.800724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077591, 0.262758, 0.961737,
		-0.029260, 0.963630, -0.265636,
		-0.996556, -0.048752, -0.067081,
		37.620525, 36.354752, 38.780602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062817, 36.952717, 39.221985>,  <38.318111, 36.388878, 38.827557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062817, 36.952717, 39.221985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723583, 36.743950, 39.185394>,  <37.520042, 36.618690, 39.163441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723583, 36.743950, 39.185394>,  <38.062817, 36.952717, 39.221985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723583, 36.743950, 39.185394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255020, 0.250706, 0.933869,
		-0.464464, 0.815324, -0.345717,
		-0.848079, -0.521913, -0.091480,
		37.469158, 36.587376, 39.157951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510780, 37.443138, 39.421875>,  <38.062817, 36.952717, 39.221985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510780, 37.443138, 39.421875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375675, 37.068184, 39.455879>,  <37.294613, 36.843212, 39.476280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375675, 37.068184, 39.455879>,  <37.510780, 37.443138, 39.421875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375675, 37.068184, 39.455879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524226, 0.262362, 0.810156,
		-0.781731, 0.229076, -0.580017,
		-0.337762, -0.937385, 0.085009,
		37.274345, 36.786968, 39.481380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900902, 37.560768, 39.507767>,  <37.510780, 37.443138, 39.421875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900902, 37.560768, 39.507767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928646, 37.181484, 39.631763>,  <36.945293, 36.953915, 39.706161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928646, 37.181484, 39.631763>,  <36.900902, 37.560768, 39.507767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928646, 37.181484, 39.631763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592948, 0.210703, 0.777185,
		-0.802247, -0.237717, -0.547622,
		0.069364, -0.948206, 0.309990,
		36.949455, 36.897022, 39.724762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292149, 37.404575, 39.711563>,  <36.900902, 37.560768, 39.507767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292149, 37.404575, 39.711563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505791, 37.124737, 39.901424>,  <36.633976, 36.956833, 40.015339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505791, 37.124737, 39.901424>,  <36.292149, 37.404575, 39.711563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505791, 37.124737, 39.901424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520019, 0.170801, 0.836903,
		-0.666568, -0.693821, -0.272579,
		0.534105, -0.699599, 0.474651,
		36.666023, 36.914856, 40.043819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807613, 36.869701, 39.968842>,  <36.292149, 37.404575, 39.711563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807613, 36.869701, 39.968842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137760, 36.836475, 40.192223>,  <36.335846, 36.816540, 40.326252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137760, 36.836475, 40.192223>,  <35.807613, 36.869701, 39.968842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137760, 36.836475, 40.192223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533006, 0.211601, 0.819225,
		-0.186221, -0.973820, 0.130372,
		0.825365, -0.083068, 0.558456,
		36.385368, 36.811554, 40.359760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620663, 36.467648, 40.513805>,  <35.807613, 36.869701, 39.968842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620663, 36.467648, 40.513805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947212, 36.667221, 40.630142>,  <36.143143, 36.786964, 40.699944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947212, 36.667221, 40.630142>,  <35.620663, 36.467648, 40.513805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947212, 36.667221, 40.630142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423073, 0.173871, 0.889257,
		0.393115, -0.849017, 0.353032,
		0.816376, 0.498938, 0.290845,
		36.192123, 36.816902, 40.717396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765942, 36.261684, 41.147270>,  <35.620663, 36.467648, 40.513805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765942, 36.261684, 41.147270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988472, 36.593952, 41.138477>,  <36.121990, 36.793312, 41.133202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988472, 36.593952, 41.138477>,  <35.765942, 36.261684, 41.147270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988472, 36.593952, 41.138477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403643, 0.293265, 0.866642,
		0.726344, -0.473261, 0.498446,
		0.556324, 0.830674, -0.021982,
		36.155369, 36.843155, 41.131882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969193, 36.426380, 41.869617>,  <35.765942, 36.261684, 41.147270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969193, 36.426380, 41.869617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009121, 36.775169, 41.677914>,  <36.033077, 36.984444, 41.562893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009121, 36.775169, 41.677914>,  <35.969193, 36.426380, 41.869617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009121, 36.775169, 41.677914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442715, 0.470285, 0.763437,
		0.891089, 0.135968, 0.432982,
		0.099823, 0.871977, -0.479261,
		36.039066, 37.036762, 41.534134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156235, 36.949554, 42.337509>,  <35.969193, 36.426380, 41.869617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156235, 36.949554, 42.337509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028397, 37.175415, 42.033134>,  <35.951694, 37.310932, 41.850510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028397, 37.175415, 42.033134>,  <36.156235, 36.949554, 42.337509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028397, 37.175415, 42.033134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600731, 0.500303, 0.623554,
		0.732791, 0.656403, 0.179311,
		-0.319593, 0.564653, -0.760939,
		35.932518, 37.344810, 41.804852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141960, 37.715130, 42.537914>,  <36.156235, 36.949554, 42.337509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141960, 37.715130, 42.537914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902027, 37.724686, 42.218006>,  <35.758068, 37.730419, 42.026062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902027, 37.724686, 42.218006>,  <36.141960, 37.715130, 42.537914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902027, 37.724686, 42.218006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670454, 0.530525, 0.518686,
		0.436691, 0.847333, -0.302207,
		-0.599828, 0.023890, -0.799772,
		35.722080, 37.731853, 41.978073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973232, 38.463276, 42.410881>,  <36.141960, 37.715130, 42.537914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973232, 38.463276, 42.410881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693771, 38.211525, 42.274788>,  <35.526093, 38.060474, 42.193130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693771, 38.211525, 42.274788>,  <35.973232, 38.463276, 42.410881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693771, 38.211525, 42.274788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666714, 0.400202, 0.628753,
		-0.259563, 0.666121, -0.699221,
		-0.698655, -0.629382, -0.340234,
		35.484177, 38.022709, 42.172718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435955, 38.921165, 42.109165>,  <35.973232, 38.463276, 42.410881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435955, 38.921165, 42.109165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308163, 38.549080, 42.181427>,  <35.231487, 38.325829, 42.224785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308163, 38.549080, 42.181427>,  <35.435955, 38.921165, 42.109165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308163, 38.549080, 42.181427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844849, 0.365955, 0.390265,
		-0.429142, -0.027947, -0.902805,
		-0.319479, -0.930213, 0.180657,
		35.212318, 38.270016, 42.235622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679073, 38.997211, 42.049683>,  <35.435955, 38.921165, 42.109165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679073, 38.997211, 42.049683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772179, 38.673561, 42.265511>,  <34.828041, 38.479370, 42.395008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772179, 38.673561, 42.265511>,  <34.679073, 38.997211, 42.049683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772179, 38.673561, 42.265511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650903, 0.282612, 0.704596,
		-0.722597, -0.515210, -0.460882,
		0.232764, -0.809129, 0.539567,
		34.842007, 38.430824, 42.427380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097382, 38.857063, 42.387169>,  <34.679073, 38.997211, 42.049683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097382, 38.857063, 42.387169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345909, 38.649971, 42.622429>,  <34.495026, 38.525715, 42.763584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345909, 38.649971, 42.622429>,  <34.097382, 38.857063, 42.387169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345909, 38.649971, 42.622429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531285, 0.273360, 0.801880,
		-0.575932, -0.810698, -0.105218,
		0.621320, -0.517729, 0.588148,
		34.532307, 38.494652, 42.798874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651627, 38.331337, 42.713917>,  <34.097382, 38.857063, 42.387169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651627, 38.331337, 42.713917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973827, 38.380497, 42.945797>,  <34.167149, 38.409992, 43.084927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973827, 38.380497, 42.945797>,  <33.651627, 38.331337, 42.713917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973827, 38.380497, 42.945797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531477, 0.582508, 0.614993,
		-0.262097, -0.803479, 0.534533,
		0.805504, 0.122904, 0.579705,
		34.215477, 38.417370, 43.119709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456280, 38.182648, 43.397926>,  <33.651627, 38.331337, 42.713917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456280, 38.182648, 43.397926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791641, 38.395813, 43.443699>,  <33.992859, 38.523712, 43.471165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791641, 38.395813, 43.443699>,  <33.456280, 38.182648, 43.397926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791641, 38.395813, 43.443699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399698, 0.458365, 0.793816,
		0.370576, -0.711275, 0.597295,
		0.838400, 0.532906, 0.114436,
		34.043159, 38.555687, 43.478027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683235, 37.960377, 44.097836>,  <33.456280, 38.182648, 43.397926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683235, 37.960377, 44.097836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846115, 38.309353, 43.989735>,  <33.943844, 38.518738, 43.924873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846115, 38.309353, 43.989735>,  <33.683235, 37.960377, 44.097836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846115, 38.309353, 43.989735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433459, 0.445044, 0.783613,
		0.803929, -0.201945, 0.559389,
		0.407200, 0.872442, -0.270248,
		33.968277, 38.571087, 43.908661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938694, 38.204113, 44.749958>,  <33.683235, 37.960377, 44.097836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938694, 38.204113, 44.749958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892990, 38.528858, 44.520931>,  <33.865570, 38.723705, 44.383514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892990, 38.528858, 44.520931>,  <33.938694, 38.204113, 44.749958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892990, 38.528858, 44.520931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542927, 0.431629, 0.720366,
		0.831971, 0.393166, 0.391464,
		-0.114256, 0.811860, -0.572564,
		33.858715, 38.772415, 44.349163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198414, 38.735245, 45.184631>,  <33.938694, 38.204113, 44.749958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198414, 38.735245, 45.184631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960323, 38.866600, 44.891273>,  <33.817471, 38.945415, 44.715260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960323, 38.866600, 44.891273>,  <34.198414, 38.735245, 45.184631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960323, 38.866600, 44.891273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575852, 0.462234, 0.674340,
		0.560447, 0.823710, -0.086028,
		-0.595226, 0.328393, -0.733392,
		33.781757, 38.965118, 44.671257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182930, 39.494469, 45.251541>,  <34.198414, 38.735245, 45.184631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182930, 39.494469, 45.251541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861320, 39.434467, 45.021393>,  <33.668354, 39.398468, 44.883305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861320, 39.434467, 45.021393>,  <34.182930, 39.494469, 45.251541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861320, 39.434467, 45.021393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513607, 0.662762, 0.544935,
		0.299592, 0.733653, -0.609917,
		-0.804022, -0.149999, -0.575368,
		33.620113, 39.389469, 44.848782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841751, 40.144135, 45.103741>,  <34.182930, 39.494469, 45.251541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841751, 40.144135, 45.103741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549580, 39.874325, 45.060841>,  <33.374279, 39.712440, 45.035103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549580, 39.874325, 45.060841>,  <33.841751, 40.144135, 45.103741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549580, 39.874325, 45.060841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650697, 0.639538, 0.409371,
		-0.207542, 0.368799, -0.906043,
		-0.730424, -0.674521, -0.107246,
		33.330452, 39.671967, 45.028667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470356, 40.511585, 44.776249>,  <33.841751, 40.144135, 45.103741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470356, 40.511585, 44.776249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214630, 40.226891, 44.892670>,  <33.061195, 40.056076, 44.962521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214630, 40.226891, 44.892670>,  <33.470356, 40.511585, 44.776249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214630, 40.226891, 44.892670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536111, 0.683913, 0.494821,
		-0.551233, 0.160313, -0.818805,
		-0.639318, -0.711732, 0.291049,
		33.022835, 40.013371, 44.979984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679024, 40.647732, 44.488003>,  <33.470356, 40.511585, 44.776249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679024, 40.647732, 44.488003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670864, 40.421024, 44.817451>,  <32.665966, 40.285000, 45.015121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670864, 40.421024, 44.817451>,  <32.679024, 40.647732, 44.488003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670864, 40.421024, 44.817451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623223, 0.651370, 0.432793,
		-0.781778, -0.504472, -0.366513,
		-0.020404, -0.566767, 0.823626,
		32.664742, 40.250996, 45.064541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188148, 40.604851, 45.064178>,  <32.679024, 40.647732, 44.488003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188148, 40.604851, 45.064178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112011, 40.978436, 44.943192>,  <32.066326, 41.202587, 44.870598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112011, 40.978436, 44.943192>,  <32.188148, 40.604851, 45.064178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112011, 40.978436, 44.943192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194642, -0.266083, -0.944095,
		-0.962228, -0.238578, -0.131140,
		-0.190346, 0.933959, -0.302470,
		32.054909, 41.258625, 44.852451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783686, 40.504993, 44.492874>,  <32.188148, 40.604851, 45.064178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783686, 40.504993, 44.492874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953222, 40.866077, 44.463291>,  <32.054943, 41.082729, 44.445541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953222, 40.866077, 44.463291>,  <31.783686, 40.504993, 44.492874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953222, 40.866077, 44.463291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167340, -0.158292, -0.973109,
		-0.890144, 0.400068, -0.218150,
		0.423841, 0.902712, -0.073955,
		32.080376, 41.136890, 44.441105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661510, 40.894165, 43.736973>,  <31.783686, 40.504993, 44.492874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661510, 40.894165, 43.736973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981018, 41.103214, 43.856190>,  <32.172722, 41.228645, 43.927719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981018, 41.103214, 43.856190>,  <31.661510, 40.894165, 43.736973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981018, 41.103214, 43.856190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326035, 0.040325, -0.944497,
		-0.505635, 0.851609, -0.138184,
		0.798770, 0.522624, 0.298044,
		32.220650, 41.260002, 43.945602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715668, 41.481911, 43.243164>,  <31.661510, 40.894165, 43.736973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715668, 41.481911, 43.243164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090332, 41.422199, 43.369896>,  <32.315132, 41.386372, 43.445934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090332, 41.422199, 43.369896>,  <31.715668, 41.481911, 43.243164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090332, 41.422199, 43.369896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312780, -0.050503, -0.948482,
		0.157593, 0.987504, -0.000611,
		0.936661, -0.149283, 0.316831,
		32.371330, 41.377415, 43.464947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062347, 41.758595, 42.753284>,  <31.715668, 41.481911, 43.243164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062347, 41.758595, 42.753284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361408, 41.608292, 42.972309>,  <32.540844, 41.518108, 43.103725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361408, 41.608292, 42.972309>,  <32.062347, 41.758595, 42.753284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361408, 41.608292, 42.972309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493421, -0.237531, -0.836728,
		0.444473, 0.895758, 0.007818,
		0.747649, -0.375760, 0.547562,
		32.585705, 41.495564, 43.136578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618881, 42.057980, 42.477234>,  <32.062347, 41.758595, 42.753284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618881, 42.057980, 42.477234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720139, 41.721283, 42.667976>,  <32.780895, 41.519264, 42.782421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720139, 41.721283, 42.667976>,  <32.618881, 42.057980, 42.477234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720139, 41.721283, 42.667976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620004, -0.237216, -0.747879,
		0.742638, 0.484974, 0.461833,
		0.253147, -0.841742, 0.476852,
		32.796082, 41.468761, 42.811031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339405, 42.035671, 42.507599>,  <32.618881, 42.057980, 42.477234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339405, 42.035671, 42.507599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244877, 41.649345, 42.550220>,  <33.188160, 41.417549, 42.575794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244877, 41.649345, 42.550220>,  <33.339405, 42.035671, 42.507599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244877, 41.649345, 42.550220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729639, -0.248804, -0.636964,
		0.641701, -0.072783, 0.763494,
		-0.236320, -0.965815, 0.106553,
		33.173981, 41.359600, 42.582188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928963, 41.673218, 42.708851>,  <33.339405, 42.035671, 42.507599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928963, 41.673218, 42.708851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691059, 41.418034, 42.513191>,  <33.548317, 41.264923, 42.395794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691059, 41.418034, 42.513191>,  <33.928963, 41.673218, 42.708851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691059, 41.418034, 42.513191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733912, -0.182568, -0.654250,
		0.328085, -0.748112, 0.576792,
		-0.594756, -0.637964, -0.489150,
		33.512630, 41.226643, 42.366447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412701, 41.130302, 42.554169>,  <33.928963, 41.673218, 42.708851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412701, 41.130302, 42.554169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107388, 41.063927, 42.304413>,  <33.924198, 41.024101, 42.154560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107388, 41.063927, 42.304413>,  <34.412701, 41.130302, 42.554169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107388, 41.063927, 42.304413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645737, -0.165091, -0.745499,
		0.020624, -0.972219, 0.233162,
		-0.763282, -0.165936, -0.624393,
		33.878403, 41.014145, 42.117096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622494, 40.527828, 42.194309>,  <34.412701, 41.130302, 42.554169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622494, 40.527828, 42.194309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333706, 40.670887, 41.957378>,  <34.160435, 40.756721, 41.815220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333706, 40.670887, 41.957378>,  <34.622494, 40.527828, 42.194309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333706, 40.670887, 41.957378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502417, -0.317633, -0.804168,
		-0.475749, -0.878179, 0.049634,
		-0.721969, 0.357645, -0.592326,
		34.117115, 40.778179, 41.779682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598446, 39.980354, 41.830795>,  <34.622494, 40.527828, 42.194309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598446, 39.980354, 41.830795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390682, 40.259796, 41.633953>,  <34.266022, 40.427460, 41.515846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390682, 40.259796, 41.633953>,  <34.598446, 39.980354, 41.830795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390682, 40.259796, 41.633953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477470, -0.240331, -0.845141,
		-0.708685, -0.673942, -0.208730,
		-0.519412, 0.698601, -0.492106,
		34.234859, 40.469376, 41.486320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322903, 39.656475, 41.251560>,  <34.598446, 39.980354, 41.830795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322903, 39.656475, 41.251560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357147, 40.041813, 41.149868>,  <34.377693, 40.273018, 41.088852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357147, 40.041813, 41.149868>,  <34.322903, 39.656475, 41.251560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357147, 40.041813, 41.149868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463670, -0.264372, -0.845646,
		-0.881862, -0.045483, -0.469309,
		0.085610, 0.963348, -0.254229,
		34.382832, 40.330818, 41.073601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064796, 39.681705, 40.526386>,  <34.322903, 39.656475, 41.251560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064796, 39.681705, 40.526386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298008, 39.994995, 40.612766>,  <34.437935, 40.182968, 40.664593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298008, 39.994995, 40.612766>,  <34.064796, 39.681705, 40.526386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298008, 39.994995, 40.612766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521626, -0.157087, -0.838588,
		-0.622879, 0.601568, -0.500137,
		0.583033, 0.783223, 0.215947,
		34.472919, 40.229961, 40.677551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028343, 40.179329, 39.928158>,  <34.064796, 39.681705, 40.526386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028343, 40.179329, 39.928158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366302, 40.202686, 40.140850>,  <34.569077, 40.216702, 40.268467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366302, 40.202686, 40.140850>,  <34.028343, 40.179329, 39.928158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366302, 40.202686, 40.140850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521089, -0.314474, -0.793456,
		0.120883, 0.947469, -0.296126,
		0.844898, 0.058393, 0.531730,
		34.619774, 40.220203, 40.300369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551182, 40.446804, 39.432880>,  <34.028343, 40.179329, 39.928158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551182, 40.446804, 39.432880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777653, 40.319847, 39.737171>,  <34.913536, 40.243675, 39.919746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777653, 40.319847, 39.737171>,  <34.551182, 40.446804, 39.432880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777653, 40.319847, 39.737171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644601, -0.404722, -0.648606,
		0.513744, 0.857592, -0.024555,
		0.566177, -0.317389, 0.760728,
		34.947506, 40.224628, 39.965389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232178, 40.774792, 39.263546>,  <34.551182, 40.446804, 39.432880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232178, 40.774792, 39.263546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303516, 40.462334, 39.502880>,  <35.346321, 40.274860, 39.646481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303516, 40.462334, 39.502880>,  <35.232178, 40.774792, 39.263546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303516, 40.462334, 39.502880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663392, -0.353640, -0.659431,
		0.726707, 0.514538, 0.455135,
		0.178349, -0.781146, 0.598333,
		35.357021, 40.227989, 39.682381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910446, 40.728165, 39.274845>,  <35.232178, 40.774792, 39.263546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910446, 40.728165, 39.274845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769650, 40.365829, 39.369125>,  <35.685173, 40.148426, 39.425694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769650, 40.365829, 39.369125>,  <35.910446, 40.728165, 39.274845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769650, 40.365829, 39.369125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581779, -0.408998, -0.703032,
		0.733237, -0.110333, 0.670962,
		-0.351990, -0.905841, 0.235703,
		35.664051, 40.094078, 39.439835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544075, 40.241184, 39.300797>,  <35.910446, 40.728165, 39.274845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544075, 40.241184, 39.300797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229370, 39.999264, 39.251442>,  <36.040546, 39.854111, 39.221828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229370, 39.999264, 39.251442>,  <36.544075, 40.241184, 39.300797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229370, 39.999264, 39.251442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555485, -0.606566, -0.568783,
		0.269161, -0.516034, 0.813180,
		-0.786759, -0.604803, -0.123385,
		35.993343, 39.817822, 39.214428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816521, 39.675667, 39.488735>,  <36.544075, 40.241184, 39.300797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816521, 39.675667, 39.488735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494137, 39.568821, 39.277420>,  <36.300709, 39.504715, 39.150631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494137, 39.568821, 39.277420>,  <36.816521, 39.675667, 39.488735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494137, 39.568821, 39.277420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526049, -0.732440, -0.432209,
		-0.271487, -0.626245, 0.730829,
		-0.805957, -0.267113, -0.528284,
		36.252350, 39.488686, 39.118935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853062, 39.012154, 39.481339>,  <36.816521, 39.675667, 39.488735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853062, 39.012154, 39.481339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619991, 39.079140, 39.163235>,  <36.480148, 39.119331, 38.972370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619991, 39.079140, 39.163235>,  <36.853062, 39.012154, 39.481339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619991, 39.079140, 39.163235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544202, -0.646366, -0.534840,
		-0.603599, -0.744423, 0.285487,
		-0.582677, 0.167467, -0.795263,
		36.445190, 39.129379, 38.924656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833580, 38.447330, 39.189556>,  <36.853062, 39.012154, 39.481339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833580, 38.447330, 39.189556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677490, 38.661213, 38.889740>,  <36.583836, 38.789543, 38.709850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677490, 38.661213, 38.889740>,  <36.833580, 38.447330, 39.189556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677490, 38.661213, 38.889740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495044, -0.564553, -0.660463,
		-0.776309, -0.628787, -0.044399,
		-0.390225, 0.534703, -0.749545,
		36.560421, 38.821625, 38.664875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611633, 37.986767, 38.634560>,  <36.833580, 38.447330, 39.189556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611633, 37.986767, 38.634560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633320, 38.322361, 38.417984>,  <36.646332, 38.523720, 38.288036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633320, 38.322361, 38.417984>,  <36.611633, 37.986767, 38.634560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633320, 38.322361, 38.417984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328971, -0.526973, -0.783631,
		-0.942782, -0.135636, -0.304572,
		0.054213, 0.838989, -0.541441,
		36.649582, 38.574059, 38.255550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375820, 37.794258, 38.018250>,  <36.611633, 37.986767, 38.634560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375820, 37.794258, 38.018250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612946, 38.110378, 37.956295>,  <36.755222, 38.300053, 37.919121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612946, 38.110378, 37.956295>,  <36.375820, 37.794258, 38.018250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612946, 38.110378, 37.956295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412459, -0.463134, -0.784464,
		-0.691700, 0.401156, -0.600520,
		0.592814, 0.790305, -0.154889,
		36.790791, 38.347469, 37.909828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485165, 37.756496, 37.349609>,  <36.375820, 37.794258, 38.018250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485165, 37.756496, 37.349609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775764, 38.022686, 37.418140>,  <36.950123, 38.182400, 37.459259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775764, 38.022686, 37.418140>,  <36.485165, 37.756496, 37.349609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775764, 38.022686, 37.418140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516392, -0.364211, -0.775042,
		-0.453370, 0.651535, -0.608241,
		0.726495, 0.665471, 0.171326,
		36.993713, 38.222328, 37.469540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586109, 38.124527, 36.763115>,  <36.485165, 37.756496, 37.349609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586109, 38.124527, 36.763115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904495, 38.105370, 37.004494>,  <37.095528, 38.093876, 37.149319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904495, 38.105370, 37.004494>,  <36.586109, 38.124527, 36.763115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904495, 38.105370, 37.004494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557865, -0.328958, -0.761954,
		0.235002, 0.943129, -0.235120,
		0.795965, -0.047895, 0.603444,
		37.143284, 38.091000, 37.185528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141617, 38.529491, 36.352604>,  <36.586109, 38.124527, 36.763115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141617, 38.529491, 36.352604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316742, 38.279388, 36.611023>,  <37.421818, 38.129326, 36.766075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316742, 38.279388, 36.611023>,  <37.141617, 38.529491, 36.352604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316742, 38.279388, 36.611023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687240, -0.230564, -0.688870,
		0.579673, 0.745586, 0.328755,
		0.437813, -0.625253, 0.646049,
		37.448086, 38.091812, 36.804836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801182, 38.596188, 36.068653>,  <37.141617, 38.529491, 36.352604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801182, 38.596188, 36.068653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799896, 38.268620, 36.298210>,  <37.799126, 38.072079, 36.435944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799896, 38.268620, 36.298210>,  <37.801182, 38.596188, 36.068653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799896, 38.268620, 36.298210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741893, -0.386760, -0.547733,
		0.670510, 0.424008, 0.608796,
		-0.003215, -0.818922, 0.573896,
		37.798931, 38.022942, 36.470379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501637, 38.481617, 36.195259>,  <37.801182, 38.596188, 36.068653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501637, 38.481617, 36.195259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380508, 38.109951, 36.280075>,  <38.307831, 37.886951, 36.330963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380508, 38.109951, 36.280075>,  <38.501637, 38.481617, 36.195259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380508, 38.109951, 36.280075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695142, -0.367539, -0.617813,
		0.651981, -0.039686, 0.757196,
		-0.302817, -0.929161, 0.212041,
		38.289661, 37.831203, 36.343689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139858, 38.097176, 36.475479>,  <38.501637, 38.481617, 36.195259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139858, 38.097176, 36.475479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887070, 37.812820, 36.352032>,  <38.735397, 37.642208, 36.277962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887070, 37.812820, 36.352032>,  <39.139858, 38.097176, 36.475479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887070, 37.812820, 36.352032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737899, -0.430224, -0.520012,
		0.236896, -0.556362, 0.796456,
		-0.631969, -0.710893, -0.308621,
		38.697479, 37.599552, 36.259445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539566, 37.559750, 36.415165>,  <39.139858, 38.097176, 36.475479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539566, 37.559750, 36.415165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214046, 37.468895, 36.201199>,  <39.018734, 37.414383, 36.072819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214046, 37.468895, 36.201199>,  <39.539566, 37.559750, 36.415165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214046, 37.468895, 36.201199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570580, -0.137559, -0.809640,
		0.110318, -0.964098, 0.241547,
		-0.813799, -0.227140, -0.534919,
		38.969906, 37.400753, 36.040722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706680, 36.922184, 36.051846>,  <39.539566, 37.559750, 36.415165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706680, 36.922184, 36.051846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377563, 37.055454, 35.867664>,  <39.180096, 37.135418, 35.757156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377563, 37.055454, 35.867664>,  <39.706680, 36.922184, 36.051846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377563, 37.055454, 35.867664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439267, -0.141294, -0.887176,
		-0.360646, -0.932217, -0.030099,
		-0.822788, 0.333177, -0.460449,
		39.130726, 37.155407, 35.729530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561001, 36.471790, 35.566574>,  <39.706680, 36.922184, 36.051846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561001, 36.471790, 35.566574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390385, 36.798225, 35.410591>,  <39.288013, 36.994087, 35.317001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390385, 36.798225, 35.410591>,  <39.561001, 36.471790, 35.566574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390385, 36.798225, 35.410591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486093, -0.156753, -0.859734,
		-0.762743, -0.556269, -0.329831,
		-0.426541, 0.816084, -0.389961,
		39.262421, 37.043049, 35.293602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386810, 36.338345, 34.841934>,  <39.561001, 36.471790, 35.566574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386810, 36.338345, 34.841934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402885, 36.737122, 34.868755>,  <39.412533, 36.976387, 34.884850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402885, 36.737122, 34.868755>,  <39.386810, 36.338345, 34.841934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402885, 36.737122, 34.868755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373853, 0.047231, -0.926285,
		-0.926617, 0.062298, -0.370810,
		0.040192, 0.996940, 0.067055,
		39.414944, 37.036205, 34.888870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162945, 36.550831, 34.147995>,  <39.386810, 36.338345, 34.841934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162945, 36.550831, 34.147995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343052, 36.870537, 34.307209>,  <39.451115, 37.062363, 34.402737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343052, 36.870537, 34.307209>,  <39.162945, 36.550831, 34.147995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343052, 36.870537, 34.307209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409578, 0.211234, -0.887483,
		-0.793416, 0.562628, -0.232252,
		0.450264, 0.799268, 0.398037,
		39.478130, 37.110317, 34.426620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969074, 37.116539, 33.711777>,  <39.162945, 36.550831, 34.147995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969074, 37.116539, 33.711777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305927, 37.231819, 33.894093>,  <39.508041, 37.300987, 34.003483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305927, 37.231819, 33.894093>,  <38.969074, 37.116539, 33.711777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305927, 37.231819, 33.894093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366265, 0.314661, -0.875693,
		-0.395798, 0.904393, 0.159428,
		0.842137, 0.288204, 0.455790,
		39.558567, 37.318279, 34.030830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133347, 37.820251, 33.494312>,  <38.969074, 37.116539, 33.711777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133347, 37.820251, 33.494312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489510, 37.690880, 33.622421>,  <39.703205, 37.613258, 33.699287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489510, 37.690880, 33.622421>,  <39.133347, 37.820251, 33.494312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489510, 37.690880, 33.622421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423640, 0.331531, -0.842981,
		0.166464, 0.886274, 0.432214,
		0.890404, -0.323429, 0.320273,
		39.756630, 37.593853, 33.718502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622093, 38.361729, 33.419823>,  <39.133347, 37.820251, 33.494312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622093, 38.361729, 33.419823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858734, 38.040466, 33.447948>,  <40.000717, 37.847710, 33.464825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858734, 38.040466, 33.447948>,  <39.622093, 38.361729, 33.419823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858734, 38.040466, 33.447948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494309, 0.292435, -0.818621,
		0.636918, 0.519058, 0.570013,
		0.591603, -0.803157, 0.070318,
		40.036217, 37.799519, 33.469044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207558, 38.690502, 33.100327>,  <39.622093, 38.361729, 33.419823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207558, 38.690502, 33.100327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266808, 38.295006, 33.108902>,  <40.302357, 38.057709, 33.114048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266808, 38.295006, 33.108902>,  <40.207558, 38.690502, 33.100327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266808, 38.295006, 33.108902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280625, 0.021231, -0.959583,
		0.948319, 0.148153, 0.280609,
		0.148123, -0.988737, 0.021442,
		40.311245, 37.998386, 33.115334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957905, 38.527115, 32.887108>,  <40.207558, 38.690502, 33.100327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957905, 38.527115, 32.887108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745964, 38.192795, 32.829556>,  <40.618797, 37.992203, 32.795025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745964, 38.192795, 32.829556>,  <40.957905, 38.527115, 32.887108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745964, 38.192795, 32.829556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361179, -0.068882, -0.929949,
		0.767336, -0.544703, 0.338369,
		-0.529853, -0.835795, -0.143880,
		40.587009, 37.942055, 32.786392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471565, 38.060108, 32.527386>,  <40.957905, 38.527115, 32.887108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471565, 38.060108, 32.527386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112717, 37.910957, 32.432613>,  <40.897408, 37.821468, 32.375748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112717, 37.910957, 32.432613>,  <41.471565, 38.060108, 32.527386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112717, 37.910957, 32.432613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383090, -0.389472, -0.837588,
		0.220037, -0.842185, 0.492248,
		-0.897121, -0.372876, -0.236934,
		40.843582, 37.799095, 32.361534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412228, 37.324188, 32.607384>,  <41.471565, 38.060108, 32.527386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412228, 37.324188, 32.607384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212742, 37.495594, 32.306011>,  <41.093052, 37.598438, 32.125187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212742, 37.495594, 32.306011>,  <41.412228, 37.324188, 32.607384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212742, 37.495594, 32.306011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313107, -0.721482, -0.617598,
		-0.808238, -0.543909, 0.225642,
		-0.498714, 0.428516, -0.753431,
		41.063126, 37.624149, 32.079983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841434, 36.939854, 32.310471>,  <41.412228, 37.324188, 32.607384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841434, 36.939854, 32.310471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057449, 37.161976, 32.057491>,  <41.187057, 37.295250, 31.905703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057449, 37.161976, 32.057491>,  <40.841434, 36.939854, 32.310471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057449, 37.161976, 32.057491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342281, -0.831405, -0.437732,
		-0.768900, 0.019915, -0.639059,
		0.540035, 0.555310, -0.632451,
		41.219460, 37.328568, 31.867756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861267, 36.584515, 31.609234>,  <40.841434, 36.939854, 32.310471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861267, 36.584515, 31.609234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176552, 36.827869, 31.646278>,  <41.365723, 36.973885, 31.668505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176552, 36.827869, 31.646278>,  <40.861267, 36.584515, 31.609234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176552, 36.827869, 31.646278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571080, -0.667046, -0.478453,
		-0.229309, 0.430014, -0.873216,
		0.788216, 0.608390, 0.092613,
		41.413017, 37.010387, 31.674063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097870, 36.863052, 30.967670>,  <40.861267, 36.584515, 31.609234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097870, 36.863052, 30.967670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354916, 36.775547, 31.261391>,  <41.509144, 36.723045, 31.437622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354916, 36.775547, 31.261391>,  <41.097870, 36.863052, 30.967670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354916, 36.775547, 31.261391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314163, -0.798872, -0.512937,
		0.698823, 0.560308, -0.444636,
		0.642610, -0.218764, 0.734299,
		41.547699, 36.709919, 31.481680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877541, 36.877075, 30.837214>,  <41.097870, 36.863052, 30.967670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877541, 36.877075, 30.837214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749310, 36.586624, 31.080513>,  <41.672371, 36.412354, 31.226492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749310, 36.586624, 31.080513>,  <41.877541, 36.877075, 30.837214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749310, 36.586624, 31.080513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375137, -0.686962, -0.622379,
		0.869770, 0.028652, 0.492625,
		-0.320582, -0.726128, 0.608247,
		41.653133, 36.368786, 31.262987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421974, 36.424046, 30.764988>,  <41.877541, 36.877075, 30.837214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421974, 36.424046, 30.764988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112564, 36.217480, 30.911945>,  <41.926918, 36.093540, 31.000120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112564, 36.217480, 30.911945>,  <42.421974, 36.424046, 30.764988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112564, 36.217480, 30.911945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257963, -0.786053, -0.561761,
		0.578892, -0.339762, 0.741247,
		-0.773524, -0.516413, 0.367393,
		41.880508, 36.062557, 31.022163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681976, 35.780876, 31.211798>,  <42.421974, 36.424046, 30.764988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681976, 35.780876, 31.211798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337543, 35.774754, 31.008503>,  <42.130882, 35.771080, 30.886526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337543, 35.774754, 31.008503>,  <42.681976, 35.780876, 31.211798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337543, 35.774754, 31.008503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290120, -0.835659, -0.466373,
		-0.417574, -0.549035, 0.724011,
		-0.861082, -0.015305, -0.508236,
		42.079220, 35.770161, 30.856031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351158, 36.160713, 30.987265>,  <42.681976, 35.780876, 31.211798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351158, 36.160713, 30.987265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694420, 36.064442, 31.168659>,  <43.900375, 36.006680, 31.277496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694420, 36.064442, 31.168659>,  <43.351158, 36.160713, 30.987265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694420, 36.064442, 31.168659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237949, 0.969161, 0.064092,
		-0.454926, 0.052906, 0.888956,
		0.858151, -0.240683, 0.453485,
		43.951866, 35.992237, 31.304705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303883, 36.422249, 31.605976>,  <43.351158, 36.160713, 30.987265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303883, 36.422249, 31.605976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685463, 36.395947, 31.488913>,  <43.914413, 36.380165, 31.418674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685463, 36.395947, 31.488913>,  <43.303883, 36.422249, 31.605976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685463, 36.395947, 31.488913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070219, 0.997520, 0.004767,
		0.291621, -0.025098, 0.956204,
		0.953953, -0.065754, -0.292660,
		43.971649, 36.376221, 31.401114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664146, 36.747784, 32.131561>,  <43.303883, 36.422249, 31.605976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664146, 36.747784, 32.131561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880283, 36.759258, 31.795179>,  <44.009968, 36.766144, 31.593349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880283, 36.759258, 31.795179>,  <43.664146, 36.747784, 32.131561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880283, 36.759258, 31.795179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000400, 0.999427, 0.033834,
		0.841443, -0.017946, 0.540047,
		0.540345, 0.028686, -0.840954,
		44.042385, 36.767864, 31.542892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071568, 37.338715, 32.123943>,  <43.664146, 36.747784, 32.131561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071568, 37.338715, 32.123943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117668, 37.226078, 31.742908>,  <44.145329, 37.158497, 31.514288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117668, 37.226078, 31.742908>,  <44.071568, 37.338715, 32.123943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117668, 37.226078, 31.742908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304186, 0.922913, -0.236015,
		0.945616, -0.262565, 0.192018,
		0.115247, -0.281588, -0.952589,
		44.152241, 37.141602, 31.457132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710247, 37.573391, 31.894764>,  <44.071568, 37.338715, 32.123943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710247, 37.573391, 31.894764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508774, 37.511467, 31.554802>,  <44.387890, 37.474312, 31.350824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508774, 37.511467, 31.554802>,  <44.710247, 37.573391, 31.894764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508774, 37.511467, 31.554802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242485, 0.918927, -0.311087,
		0.829161, -0.362778, -0.425306,
		-0.503680, -0.154811, -0.849906,
		44.357670, 37.465023, 31.299829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113640, 37.875687, 31.337988>,  <44.710247, 37.573391, 31.894764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113640, 37.875687, 31.337988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742138, 37.848251, 31.192274>,  <44.519238, 37.831791, 31.104847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742138, 37.848251, 31.192274>,  <45.113640, 37.875687, 31.337988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742138, 37.848251, 31.192274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060938, 0.941111, -0.332560,
		0.365640, -0.331067, -0.869886,
		-0.928759, -0.068588, -0.364283,
		44.463509, 37.827675, 31.082989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212029, 38.230602, 30.725388>,  <45.113640, 37.875687, 31.337988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212029, 38.230602, 30.725388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822849, 38.224960, 30.817623>,  <44.589340, 38.221577, 30.872965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822849, 38.224960, 30.817623>,  <45.212029, 38.230602, 30.725388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822849, 38.224960, 30.817623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117226, 0.890218, -0.440192,
		-0.199066, -0.455316, -0.867791,
		-0.972950, -0.014100, 0.230587,
		44.530964, 38.220730, 30.886799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855473, 38.530975, 30.179193>,  <45.212029, 38.230602, 30.725388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855473, 38.530975, 30.179193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576675, 38.599430, 30.457735>,  <44.409397, 38.640503, 30.624861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576675, 38.599430, 30.457735>,  <44.855473, 38.530975, 30.179193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576675, 38.599430, 30.457735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165993, 0.906219, -0.388861,
		-0.697600, -0.386624, -0.603222,
		-0.696994, 0.171139, 0.696355,
		44.367577, 38.650772, 30.666641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389420, 39.044006, 29.895201>,  <44.855473, 38.530975, 30.179193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389420, 39.044006, 29.895201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243633, 39.055946, 30.267496>,  <44.156162, 39.063110, 30.490873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243633, 39.055946, 30.267496>,  <44.389420, 39.044006, 29.895201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243633, 39.055946, 30.267496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327802, 0.931400, -0.158239,
		-0.871612, -0.362771, -0.329680,
		-0.364469, 0.029853, 0.930737,
		44.134293, 39.064903, 30.546717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610443, 39.164879, 29.863480>,  <44.389420, 39.044006, 29.895201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610443, 39.164879, 29.863480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772030, 39.274502, 30.212582>,  <43.868984, 39.340275, 30.422043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772030, 39.274502, 30.212582>,  <43.610443, 39.164879, 29.863480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772030, 39.274502, 30.212582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402622, 0.909956, -0.099375,
		-0.821403, -0.311246, 0.477936,
		0.403971, 0.274054, 0.872755,
		43.893223, 39.356720, 30.474409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124557, 39.552658, 30.332333>,  <43.610443, 39.164879, 29.863480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124557, 39.552658, 30.332333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444283, 39.699051, 30.522978>,  <43.636116, 39.786884, 30.637365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444283, 39.699051, 30.522978>,  <43.124557, 39.552658, 30.332333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444283, 39.699051, 30.522978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429914, 0.902435, 0.028037,
		-0.419851, -0.227312, 0.878666,
		0.799312, 0.365979, 0.476613,
		43.684074, 39.808846, 30.665962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826492, 39.929176, 30.794403>,  <43.124557, 39.552658, 30.332333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826492, 39.929176, 30.794403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201942, 40.066540, 30.807436>,  <43.427212, 40.148956, 30.815256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201942, 40.066540, 30.807436>,  <42.826492, 39.929176, 30.794403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201942, 40.066540, 30.807436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342582, 0.916955, 0.204526,
		0.040360, -0.203135, 0.978319,
		0.938621, 0.343409, 0.032582,
		43.483528, 40.169563, 30.817211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830647, 40.393692, 31.411320>,  <42.826492, 39.929176, 30.794403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830647, 40.393692, 31.411320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149040, 40.468758, 31.181126>,  <43.340076, 40.513798, 31.043009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149040, 40.468758, 31.181126>,  <42.830647, 40.393692, 31.411320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149040, 40.468758, 31.181126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028670, 0.961348, 0.273841,
		0.604633, -0.201475, 0.770602,
		0.795988, 0.187667, -0.575485,
		43.387836, 40.525059, 31.008480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410786, 40.749779, 31.786985>,  <42.830647, 40.393692, 31.411320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410786, 40.749779, 31.786985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421593, 40.839550, 31.397339>,  <43.428078, 40.893414, 31.163551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421593, 40.839550, 31.397339>,  <43.410786, 40.749779, 31.786985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421593, 40.839550, 31.397339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037207, 0.974022, 0.223378,
		0.998942, 0.030208, 0.034669,
		0.027021, 0.224431, -0.974115,
		43.429699, 40.906879, 31.105104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373707, 41.440411, 31.841837>,  <43.410786, 40.749779, 31.786985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373707, 41.440411, 31.841837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403408, 41.410072, 31.444096>,  <43.421230, 41.391869, 31.205452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403408, 41.410072, 31.444096>,  <43.373707, 41.440411, 31.841837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403408, 41.410072, 31.444096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007494, 0.997033, -0.076606,
		0.997211, 0.013140, 0.073466,
		0.074255, -0.075842, -0.994351,
		43.425686, 41.387321, 31.145790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012909, 41.797157, 31.414547>,  <43.373707, 41.440411, 31.841837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012909, 41.797157, 31.414547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694382, 41.781239, 31.173119>,  <43.503265, 41.771687, 31.028261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694382, 41.781239, 31.173119>,  <44.012909, 41.797157, 31.414547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694382, 41.781239, 31.173119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088211, 0.979526, -0.180961,
		0.598413, -0.197344, -0.776504,
		-0.796317, -0.039793, -0.603569,
		43.455486, 41.769302, 30.992048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193058, 42.106537, 30.780708>,  <44.012909, 41.797157, 31.414547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193058, 42.106537, 30.780708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793095, 42.103317, 30.784960>,  <43.553116, 42.101387, 30.787510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793095, 42.103317, 30.784960>,  <44.193058, 42.106537, 30.780708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793095, 42.103317, 30.784960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009798, 0.984280, -0.176346,
		-0.009040, -0.176434, -0.984271,
		-0.999911, -0.008049, 0.010627,
		43.493122, 42.100903, 30.788147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983990, 42.594158, 30.278187>,  <44.193058, 42.106537, 30.780708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983990, 42.594158, 30.278187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661770, 42.551636, 30.511353>,  <43.468437, 42.526123, 30.651251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661770, 42.551636, 30.511353>,  <43.983990, 42.594158, 30.278187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661770, 42.551636, 30.511353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038746, 0.991120, 0.127199,
		-0.591258, 0.079880, -0.802516,
		-0.805551, -0.106302, 0.582913,
		43.420105, 42.519745, 30.686226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615429, 43.097580, 30.122118>,  <43.983990, 42.594158, 30.278187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615429, 43.097580, 30.122118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453941, 42.999676, 30.474733>,  <43.357048, 42.940933, 30.686302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453941, 42.999676, 30.474733>,  <43.615429, 43.097580, 30.122118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453941, 42.999676, 30.474733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013825, 0.965072, 0.261619,
		-0.914780, 0.093433, -0.392998,
		-0.403715, -0.244757, 0.881537,
		43.332829, 42.926250, 30.739195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943367, 43.480923, 30.188192>,  <43.615429, 43.097580, 30.122118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943367, 43.480923, 30.188192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057346, 43.382385, 30.558731>,  <43.125736, 43.323265, 30.781054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057346, 43.382385, 30.558731>,  <42.943367, 43.480923, 30.188192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057346, 43.382385, 30.558731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162566, 0.939993, 0.299976,
		-0.944656, -0.236071, 0.227806,
		0.284952, -0.246341, 0.926347,
		43.142834, 43.308483, 30.836636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632324, 44.041935, 30.578897>,  <42.943367, 43.480923, 30.188192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632324, 44.041935, 30.578897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913765, 43.869328, 30.804726>,  <43.082630, 43.765762, 30.940222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913765, 43.869328, 30.804726>,  <42.632324, 44.041935, 30.578897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913765, 43.869328, 30.804726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206993, 0.884506, 0.418095,
		-0.679782, -0.177309, 0.711659,
		0.703598, -0.431521, 0.564570,
		43.124844, 43.739872, 30.974096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585251, 44.215359, 31.410002>,  <42.632324, 44.041935, 30.578897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585251, 44.215359, 31.410002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956703, 44.151966, 31.275822>,  <43.179573, 44.113930, 31.195312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956703, 44.151966, 31.275822>,  <42.585251, 44.215359, 31.410002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956703, 44.151966, 31.275822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277981, 0.896024, 0.346218,
		0.245704, -0.414758, 0.876131,
		0.928631, -0.158480, -0.335452,
		43.235294, 44.104424, 31.175186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112541, 44.112881, 31.946047>,  <42.585251, 44.215359, 31.410002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112541, 44.112881, 31.946047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253414, 44.261246, 31.602327>,  <43.337936, 44.350266, 31.396095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253414, 44.261246, 31.602327>,  <43.112541, 44.112881, 31.946047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253414, 44.261246, 31.602327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023110, 0.921286, 0.388198,
		0.935645, -0.116858, 0.333035,
		0.352184, 0.370912, -0.859296,
		43.359070, 44.372520, 31.344538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818680, 44.495197, 31.935520>,  <43.112541, 44.112881, 31.946047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818680, 44.495197, 31.935520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569363, 44.646297, 31.661644>,  <43.419773, 44.736958, 31.497318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569363, 44.646297, 31.661644>,  <43.818680, 44.495197, 31.935520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569363, 44.646297, 31.661644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070650, 0.899203, 0.431789,
		0.778787, 0.220760, -0.587159,
		-0.623297, 0.377755, -0.684691,
		43.382374, 44.759624, 31.456236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186794, 45.106865, 31.471031>,  <43.818680, 44.495197, 31.935520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186794, 45.106865, 31.471031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788528, 45.113201, 31.507679>,  <43.549568, 45.117004, 31.529667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788528, 45.113201, 31.507679>,  <44.186794, 45.106865, 31.471031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788528, 45.113201, 31.507679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062777, 0.841397, 0.536760,
		-0.068586, 0.540186, -0.838746,
		-0.995668, 0.015840, 0.091619,
		43.489826, 45.117954, 31.535164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834515, 45.313686, 31.747356>,  <44.186794, 45.106865, 31.471031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834515, 45.313686, 31.747356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228439, 45.269207, 31.800692>,  <45.464794, 45.242519, 31.832693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228439, 45.269207, 31.800692>,  <44.834515, 45.313686, 31.747356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228439, 45.269207, 31.800692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167260, -0.813570, 0.556891,
		0.046557, -0.570736, -0.819813,
		0.984813, -0.111195, 0.133339,
		45.523884, 45.235847, 31.840693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017307, 44.676201, 31.588743>,  <44.834515, 45.313686, 31.747356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017307, 44.676201, 31.588743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230553, 44.823208, 31.893562>,  <45.358501, 44.911411, 32.076454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230553, 44.823208, 31.893562>,  <45.017307, 44.676201, 31.588743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230553, 44.823208, 31.893562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308895, -0.753989, 0.579729,
		0.787638, -0.544455, -0.288438,
		0.533115, 0.367519, 0.762049,
		45.390488, 44.933464, 32.122177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371597, 44.183353, 31.909857>,  <45.017307, 44.676201, 31.588743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371597, 44.183353, 31.909857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299908, 44.465660, 32.184017>,  <45.256893, 44.635044, 32.348515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299908, 44.465660, 32.184017>,  <45.371597, 44.183353, 31.909857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299908, 44.465660, 32.184017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386701, -0.691143, 0.610560,
		0.904622, -0.155618, 0.396789,
		-0.179224, 0.705765, 0.685401,
		45.246140, 44.677391, 32.389637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733303, 43.949108, 32.522160>,  <45.371597, 44.183353, 31.909857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733303, 43.949108, 32.522160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390755, 44.152863, 32.555984>,  <45.185226, 44.275116, 32.576279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390755, 44.152863, 32.555984>,  <45.733303, 43.949108, 32.522160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390755, 44.152863, 32.555984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356529, -0.701777, 0.616763,
		0.373520, 0.498027, 0.782593,
		-0.856371, 0.509390, 0.084566,
		45.133842, 44.305679, 32.581356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544388, 43.906906, 33.214378>,  <45.733303, 43.949108, 32.522160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544388, 43.906906, 33.214378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218334, 43.979534, 32.994347>,  <45.022701, 44.023109, 32.862328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218334, 43.979534, 32.994347>,  <45.544388, 43.906906, 33.214378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218334, 43.979534, 32.994347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458510, -0.782571, 0.421132,
		-0.354010, 0.595496, 0.721153,
		-0.815135, 0.181571, -0.550078,
		44.973793, 44.034004, 32.829323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877731, 43.963100, 33.650986>,  <45.544388, 43.906906, 33.214378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877731, 43.963100, 33.650986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814148, 43.806831, 33.288307>,  <44.775997, 43.713070, 33.070698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814148, 43.806831, 33.288307>,  <44.877731, 43.963100, 33.650986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814148, 43.806831, 33.288307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192076, -0.888591, 0.416548,
		-0.968421, 0.240368, 0.066207,
		-0.158956, -0.390677, -0.906700,
		44.766460, 43.689629, 33.016296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281761, 43.504978, 33.699299>,  <44.877731, 43.963100, 33.650986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281761, 43.504978, 33.699299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428883, 43.397350, 33.343250>,  <44.517155, 43.332771, 33.129620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428883, 43.397350, 33.343250>,  <44.281761, 43.504978, 33.699299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428883, 43.397350, 33.343250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371315, -0.920094, 0.124704,
		-0.852554, 0.284651, -0.438321,
		0.367800, -0.269072, -0.890125,
		44.539223, 43.316628, 33.076214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672409, 43.212891, 33.435673>,  <44.281761, 43.504978, 33.699299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672409, 43.212891, 33.435673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021080, 43.098663, 33.276356>,  <44.230282, 43.030128, 33.180763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021080, 43.098663, 33.276356>,  <43.672409, 43.212891, 33.435673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021080, 43.098663, 33.276356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241573, -0.957468, 0.157791,
		-0.426414, -0.041325, -0.903584,
		0.871673, -0.285565, -0.398295,
		44.282581, 43.012993, 33.156868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516113, 42.678642, 33.003082>,  <43.672409, 43.212891, 33.435673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516113, 42.678642, 33.003082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905430, 42.637791, 33.085331>,  <44.139019, 42.613281, 33.134682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905430, 42.637791, 33.085331>,  <43.516113, 42.678642, 33.003082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905430, 42.637791, 33.085331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166814, -0.929937, 0.327705,
		0.157748, -0.353252, -0.922133,
		0.973287, -0.102130, 0.205622,
		44.197414, 42.607151, 33.147018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645195, 41.951851, 32.714653>,  <43.516113, 42.678642, 33.003082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645195, 41.951851, 32.714653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946617, 42.067055, 32.951031>,  <44.127468, 42.136177, 33.092857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946617, 42.067055, 32.951031>,  <43.645195, 41.951851, 32.714653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946617, 42.067055, 32.951031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254478, -0.956635, 0.141737,
		0.606137, 0.043576, -0.794165,
		0.753551, 0.288010, 0.590942,
		44.172684, 42.153458, 33.128315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260681, 41.716911, 32.439919>,  <43.645195, 41.951851, 32.714653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260681, 41.716911, 32.439919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324600, 41.771568, 32.830978>,  <44.362949, 41.804363, 33.065613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324600, 41.771568, 32.830978>,  <44.260681, 41.716911, 32.439919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324600, 41.771568, 32.830978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202247, -0.973897, 0.103062,
		0.966210, 0.181258, -0.183259,
		0.159795, 0.136643, 0.977647,
		44.372540, 41.812561, 33.124271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937740, 41.668335, 32.549854>,  <44.260681, 41.716911, 32.439919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937740, 41.668335, 32.549854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772953, 41.565994, 32.899670>,  <44.674080, 41.504589, 33.109558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772953, 41.565994, 32.899670>,  <44.937740, 41.668335, 32.549854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772953, 41.565994, 32.899670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609110, -0.791143, 0.055476,
		0.677694, 0.555546, 0.481768,
		-0.411967, -0.255854, 0.874541,
		44.649364, 41.489239, 33.162033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371788, 41.131630, 32.765865>,  <44.937740, 41.668335, 32.549854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371788, 41.131630, 32.765865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099033, 41.112930, 33.057850>,  <44.935379, 41.101711, 33.233040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099033, 41.112930, 33.057850>,  <45.371788, 41.131630, 32.765865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.099033, 41.112930, 33.057850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313991, -0.920037, 0.234395,
		0.660632, 0.389033, 0.642043,
		-0.681890, -0.046747, 0.729959,
		44.894466, 41.098907, 33.276836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799618, 41.033009, 33.413292>,  <45.371788, 41.131630, 32.765865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799618, 41.033009, 33.413292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427979, 40.891346, 33.455887>,  <45.204994, 40.806347, 33.481445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427979, 40.891346, 33.455887>,  <45.799618, 41.033009, 33.413292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427979, 40.891346, 33.455887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369818, -0.891293, 0.262356,
		0.001994, 0.283136, 0.959078,
		-0.929102, -0.354161, 0.106486,
		45.149246, 40.785099, 33.487831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855556, 40.490665, 33.902046>,  <45.799618, 41.033009, 33.413292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855556, 40.490665, 33.902046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494415, 40.405720, 33.752510>,  <45.277729, 40.354752, 33.662788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494415, 40.405720, 33.752510>,  <45.855556, 40.490665, 33.902046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494415, 40.405720, 33.752510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168559, -0.974726, 0.146620,
		-0.395532, 0.069361, 0.915830,
		-0.902852, -0.212364, -0.373844,
		45.223560, 40.342010, 33.640358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506134, 39.971916, 34.331738>,  <45.855556, 40.490665, 33.902046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506134, 39.971916, 34.331738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332916, 39.941689, 33.972458>,  <45.228985, 39.923553, 33.756889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332916, 39.941689, 33.972458>,  <45.506134, 39.971916, 34.331738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332916, 39.941689, 33.972458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039931, -0.997110, 0.064634,
		-0.900487, -0.007876, 0.434811,
		-0.433045, -0.075565, -0.898199,
		45.203003, 39.919018, 33.702999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938416, 39.539776, 34.470226>,  <45.506134, 39.971916, 34.331738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938416, 39.539776, 34.470226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036514, 39.531647, 34.082527>,  <45.095375, 39.526768, 33.849907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036514, 39.531647, 34.082527>,  <44.938416, 39.539776, 34.470226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036514, 39.531647, 34.082527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154293, -0.986219, 0.059718,
		-0.957102, -0.164194, -0.238736,
		0.245252, -0.020321, -0.969246,
		45.110088, 39.525551, 33.791752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442863, 39.023197, 34.251808>,  <44.938416, 39.539776, 34.470226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442863, 39.023197, 34.251808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703613, 39.022408, 33.948479>,  <44.860062, 39.021935, 33.766479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703613, 39.022408, 33.948479>,  <44.442863, 39.023197, 34.251808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703613, 39.022408, 33.948479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009503, -0.999939, -0.005570,
		-0.758268, 0.010837, -0.651853,
		0.651874, -0.001971, -0.758325,
		44.899174, 39.021816, 33.720982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181049, 38.486977, 33.780933>,  <44.442863, 39.023197, 34.251808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181049, 38.486977, 33.780933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557323, 38.550797, 33.661163>,  <44.783089, 38.589088, 33.589302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557323, 38.550797, 33.661163>,  <44.181049, 38.486977, 33.780933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557323, 38.550797, 33.661163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077811, -0.960455, -0.267342,
		-0.330237, 0.228187, -0.915901,
		0.940685, 0.159554, -0.299422,
		44.839531, 38.598663, 33.571335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269600, 38.193962, 33.199059>,  <44.181049, 38.486977, 33.780933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269600, 38.193962, 33.199059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646557, 38.215904, 33.331047>,  <44.872730, 38.229069, 33.410240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646557, 38.215904, 33.331047>,  <44.269600, 38.193962, 33.199059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646557, 38.215904, 33.331047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115211, -0.979331, -0.166245,
		0.314031, 0.194685, -0.929238,
		0.942396, 0.054853, 0.329970,
		44.929276, 38.232361, 33.430038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593575, 37.753075, 32.845863>,  <44.269600, 38.193962, 33.199059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593575, 37.753075, 32.845863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836823, 37.796612, 33.160400>,  <44.982773, 37.822735, 33.349125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836823, 37.796612, 33.160400>,  <44.593575, 37.753075, 32.845863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836823, 37.796612, 33.160400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269257, -0.960117, -0.075336,
		0.746786, 0.257543, -0.613174,
		0.608121, 0.108842, 0.786347,
		45.019260, 37.829266, 33.396305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154629, 37.382168, 32.571976>,  <44.593575, 37.753075, 32.845863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154629, 37.382168, 32.571976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218056, 37.387627, 32.966877>,  <45.256111, 37.390903, 33.203819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.218056, 37.387627, 32.966877>,  <45.154629, 37.382168, 32.571976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218056, 37.387627, 32.966877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267348, -0.963144, -0.029625,
		0.950464, 0.268638, -0.156368,
		0.158564, 0.013647, 0.987254,
		45.265625, 37.391720, 33.263054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784805, 37.228024, 32.681618>,  <45.154629, 37.382168, 32.571976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784805, 37.228024, 32.681618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614021, 37.149834, 33.034775>,  <45.511551, 37.102921, 33.246670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614021, 37.149834, 33.034775>,  <45.784805, 37.228024, 32.681618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614021, 37.149834, 33.034775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416553, -0.909111, 0.000166,
		0.802614, 0.367842, 0.469579,
		-0.426960, -0.195471, 0.882891,
		45.485931, 37.091194, 33.299641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255058, 37.168739, 33.152336>,  <45.784805, 37.228024, 32.681618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255058, 37.168739, 33.152336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965275, 36.962212, 33.335014>,  <45.791405, 36.838295, 33.444622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965275, 36.962212, 33.335014>,  <46.255058, 37.168739, 33.152336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965275, 36.962212, 33.335014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555148, -0.829764, -0.057458,
		0.408619, 0.211910, 0.887764,
		-0.724459, -0.516319, 0.456699,
		45.747936, 36.807316, 33.472023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610352, 36.697186, 33.520180>,  <46.255058, 37.168739, 33.152336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610352, 36.697186, 33.520180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231468, 36.571434, 33.494987>,  <46.004139, 36.495983, 33.479874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231468, 36.571434, 33.494987>,  <46.610352, 36.697186, 33.520180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231468, 36.571434, 33.494987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320610, -0.930657, -0.176317,
		-0.003181, -0.187200, 0.982317,
		-0.947206, -0.314380, -0.062978,
		45.947308, 36.477119, 33.476093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448570, 36.133121, 34.091896>,  <46.610352, 36.697186, 33.520180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448570, 36.133121, 34.091896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219299, 36.122894, 33.764282>,  <46.081738, 36.116756, 33.567715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219299, 36.122894, 33.764282>,  <46.448570, 36.133121, 34.091896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219299, 36.122894, 33.764282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245530, -0.958949, -0.141886,
		-0.781784, -0.282423, 0.555923,
		-0.573174, -0.025571, -0.819034,
		46.047348, 36.115223, 33.518570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.112091, 35.597904, 34.188148>,  <46.448570, 36.133121, 34.091896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.112091, 35.597904, 34.188148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124760, 35.629074, 33.789566>,  <46.132362, 35.647774, 33.550415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.124760, 35.629074, 33.789566>,  <46.112091, 35.597904, 34.188148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124760, 35.629074, 33.789566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268093, -0.961086, -0.066633,
		-0.962872, -0.265032, -0.051334,
		0.031676, 0.077921, -0.996456,
		46.134262, 35.652451, 33.490627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490891, 34.937431, 33.832752>,  <46.112091, 35.597904, 34.188148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490891, 34.937431, 33.832752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226009, 35.031841, 33.548283>,  <46.067081, 35.088490, 33.377602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226009, 35.031841, 33.548283>,  <46.490891, 34.937431, 33.832752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226009, 35.031841, 33.548283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177726, -0.872541, -0.455067,
		-0.727940, -0.427743, 0.535854,
		-0.662206, 0.236026, -0.711178,
		46.027348, 35.102650, 33.334930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831673, 34.462940, 34.286022>,  <46.490891, 34.937431, 33.832752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831673, 34.462940, 34.286022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208557, 34.543423, 34.178883>,  <47.434689, 34.591713, 34.114597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208557, 34.543423, 34.178883>,  <46.831673, 34.462940, 34.286022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.208557, 34.543423, 34.178883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078280, 0.645173, 0.760016,
		0.325734, -0.737066, 0.592141,
		0.942215, 0.201210, -0.267852,
		47.491222, 34.603786, 34.098526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249893, 34.400917, 34.842113>,  <46.831673, 34.462940, 34.286022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249893, 34.400917, 34.842113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379696, 34.688976, 34.596813>,  <47.457577, 34.861813, 34.449635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.379696, 34.688976, 34.596813>,  <47.249893, 34.400917, 34.842113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.379696, 34.688976, 34.596813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177199, 0.590575, 0.787287,
		0.929137, -0.364149, 0.064036,
		0.324508, 0.720151, -0.613252,
		47.477047, 34.905022, 34.412838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.606682, 34.795498, 35.345493>,  <47.249893, 34.400917, 34.842113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.606682, 34.795498, 35.345493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637424, 35.006004, 35.006756>,  <47.655872, 35.132309, 34.803513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637424, 35.006004, 35.006756>,  <47.606682, 34.795498, 35.345493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637424, 35.006004, 35.006756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408506, 0.758169, 0.508235,
		0.909514, -0.385002, -0.156710,
		0.076859, 0.526264, -0.846841,
		47.660480, 35.163883, 34.752705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.790970, 40.650928, 36.092468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.470669, 40.482811, 36.263184>,  <31.278488, 40.381939, 36.365612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.470669, 40.482811, 36.263184>,  <31.790970, 40.650928, 36.092468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470669, 40.482811, 36.263184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023252, -0.733785, -0.678983,
		0.598546, -0.533773, 0.597352,
		-0.800751, -0.420292, 0.426793,
		31.230444, 40.356724, 36.391220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922346, 39.956482, 35.915569>,  <31.790970, 40.650928, 36.092468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922346, 39.956482, 35.915569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.544147, 39.966675, 36.045422>,  <31.317228, 39.972790, 36.123333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.544147, 39.966675, 36.045422>,  <31.922346, 39.956482, 35.915569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544147, 39.966675, 36.045422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211761, -0.805449, -0.553543,
		0.247367, -0.592117, 0.766946,
		-0.945499, 0.025481, 0.324628,
		31.260498, 39.974319, 36.142811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743629, 39.358971, 36.425198>,  <31.922346, 39.956482, 35.915569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743629, 39.358971, 36.425198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.415733, 39.478710, 36.229885>,  <31.218996, 39.550556, 36.112698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.415733, 39.478710, 36.229885>,  <31.743629, 39.358971, 36.425198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415733, 39.478710, 36.229885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025709, -0.870910, -0.490770,
		-0.572161, -0.389750, 0.721614,
		-0.819739, 0.299352, -0.488280,
		31.169811, 39.568516, 36.083401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401361, 38.783901, 36.360741>,  <31.743629, 39.358971, 36.425198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401361, 38.783901, 36.360741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.229738, 39.029243, 36.095497>,  <31.126764, 39.176449, 35.936352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.229738, 39.029243, 36.095497>,  <31.401361, 38.783901, 36.360741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229738, 39.029243, 36.095497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005420, -0.732350, -0.680907,
		-0.903261, -0.295742, 0.310895,
		-0.429057, 0.613352, -0.663106,
		31.101021, 39.213249, 35.896564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949482, 38.412148, 36.053726>,  <31.401361, 38.783901, 36.360741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949482, 38.412148, 36.053726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.017538, 38.693417, 35.777580>,  <31.058372, 38.862179, 35.611893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.017538, 38.693417, 35.777580>,  <30.949482, 38.412148, 36.053726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017538, 38.693417, 35.777580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041884, -0.705107, -0.707863,
		-0.984529, 0.091522, -0.149419,
		0.170141, 0.703170, -0.690365,
		31.068581, 38.904369, 35.570469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555244, 38.266041, 35.513481>,  <30.949482, 38.412148, 36.053726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555244, 38.266041, 35.513481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.852201, 38.490570, 35.367184>,  <31.030375, 38.625290, 35.279408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.852201, 38.490570, 35.367184>,  <30.555244, 38.266041, 35.513481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852201, 38.490570, 35.367184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090314, -0.624776, -0.775563,
		-0.663851, 0.542740, -0.514524,
		0.742391, 0.561327, -0.365741,
		31.074919, 38.658970, 35.257462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418205, 38.430462, 34.791264>,  <30.555244, 38.266041, 35.513481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418205, 38.430462, 34.791264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.814762, 38.456516, 34.836693>,  <31.052696, 38.472149, 34.863949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.814762, 38.456516, 34.836693>,  <30.418205, 38.430462, 34.791264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814762, 38.456516, 34.836693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130761, -0.535815, -0.834149,
		0.006517, 0.841819, -0.539721,
		0.991392, 0.065138, 0.113570,
		31.112181, 38.476059, 34.870762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700609, 38.571774, 34.090881>,  <30.418205, 38.430462, 34.791264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700609, 38.571774, 34.090881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.002426, 38.433289, 34.313881>,  <31.183516, 38.350197, 34.447681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.002426, 38.433289, 34.313881>,  <30.700609, 38.571774, 34.090881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002426, 38.433289, 34.313881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358347, -0.494325, -0.791979,
		0.549775, 0.797360, -0.248926,
		0.754543, -0.346208, 0.557499,
		31.228788, 38.329426, 34.481129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173130, 38.582363, 33.617390>,  <30.700609, 38.571774, 34.090881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173130, 38.582363, 33.617390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.360840, 38.367455, 33.897709>,  <31.473465, 38.238510, 34.065899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.360840, 38.367455, 33.897709>,  <31.173130, 38.582363, 33.617390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360840, 38.367455, 33.897709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573498, -0.418032, -0.704521,
		0.671477, 0.732520, 0.111954,
		0.469275, -0.537275, 0.700797,
		31.501623, 38.206272, 34.107948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902052, 38.630104, 33.470932>,  <31.173130, 38.582363, 33.617390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902052, 38.630104, 33.470932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.866997, 38.305195, 33.701591>,  <31.845963, 38.110249, 33.839989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.866997, 38.305195, 33.701591>,  <31.902052, 38.630104, 33.470932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866997, 38.305195, 33.701591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835049, -0.375538, -0.402076,
		0.543151, 0.446294, 0.711202,
		-0.087639, -0.812277, 0.576651,
		31.840706, 38.061512, 33.874588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649132, 38.429302, 33.717731>,  <31.902052, 38.630104, 33.470932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649132, 38.429302, 33.717731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.420719, 38.101330, 33.733955>,  <32.283672, 37.904549, 33.743690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.420719, 38.101330, 33.733955>,  <32.649132, 38.429302, 33.717731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420719, 38.101330, 33.733955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764060, -0.548893, -0.339011,
		0.300229, -0.162593, 0.939908,
		-0.571029, -0.819927, 0.040562,
		32.249409, 37.855350, 33.746124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038151, 37.970959, 33.974651>,  <32.649132, 38.429302, 33.717731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038151, 37.970959, 33.974651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.767006, 37.755676, 33.774315>,  <32.604321, 37.626507, 33.654114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.767006, 37.755676, 33.774315>,  <33.038151, 37.970959, 33.974651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767006, 37.755676, 33.774315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734957, -0.478924, -0.480073,
		0.018513, -0.693519, 0.720200,
		-0.677860, -0.538204, -0.500841,
		32.563648, 37.594215, 33.624062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355713, 37.326595, 33.901421>,  <33.038151, 37.970959, 33.974651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355713, 37.326595, 33.901421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.065254, 37.326210, 33.626404>,  <32.890980, 37.325977, 33.461395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.065254, 37.326210, 33.626404>,  <33.355713, 37.326595, 33.901421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065254, 37.326210, 33.626404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614792, -0.448593, -0.648687,
		-0.307799, -0.893736, 0.326338,
		-0.726148, -0.000965, -0.687538,
		32.847408, 37.325920, 33.420143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338051, 36.603737, 33.619629>,  <33.355713, 37.326595, 33.901421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338051, 36.603737, 33.619629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.169769, 36.863415, 33.366154>,  <33.068802, 37.019222, 33.214069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.169769, 36.863415, 33.366154>,  <33.338051, 36.603737, 33.619629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169769, 36.863415, 33.366154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622530, -0.301511, -0.722183,
		-0.659900, -0.698311, -0.277297,
		-0.420700, 0.649194, -0.633686,
		33.043560, 37.058174, 33.176048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193821, 36.280727, 33.055237>,  <33.338051, 36.603737, 33.619629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193821, 36.280727, 33.055237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.175289, 36.646885, 32.895287>,  <33.164169, 36.866581, 32.799316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.175289, 36.646885, 32.895287>,  <33.193821, 36.280727, 33.055237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175289, 36.646885, 32.895287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673142, -0.267161, -0.689568,
		-0.738060, -0.301124, -0.603814,
		-0.046330, 0.915396, -0.399880,
		33.161388, 36.921505, 32.775322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142689, 36.253666, 32.360256>,  <33.193821, 36.280727, 33.055237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142689, 36.253666, 32.360256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.275280, 36.630058, 32.387627>,  <33.354836, 36.855892, 32.404049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.275280, 36.630058, 32.387627>,  <33.142689, 36.253666, 32.360256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275280, 36.630058, 32.387627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679356, -0.187731, -0.709389,
		-0.654673, 0.281635, -0.701488,
		0.331480, 0.940977, 0.068428,
		33.374725, 36.912350, 32.408154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238586, 36.591026, 31.653749>,  <33.142689, 36.253666, 32.360256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238586, 36.591026, 31.653749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490139, 36.766544, 31.910486>,  <33.641071, 36.871857, 32.064529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490139, 36.766544, 31.910486>,  <33.238586, 36.591026, 31.653749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490139, 36.766544, 31.910486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753393, -0.139944, -0.642506,
		-0.192108, 0.887621, -0.418596,
		0.628882, 0.438798, 0.641843,
		33.678802, 36.898186, 32.103039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946472, 36.751987, 31.268021>,  <33.238586, 36.591026, 31.653749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946472, 36.751987, 31.268021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.075027, 36.816750, 31.641222>,  <34.152161, 36.855606, 31.865143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.075027, 36.816750, 31.641222>,  <33.946472, 36.751987, 31.268021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075027, 36.816750, 31.641222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939922, -0.174349, -0.293513,
		0.115147, 0.971282, -0.208212,
		0.321385, 0.161906, 0.933005,
		34.171444, 36.865322, 31.921124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433876, 37.301292, 31.266031>,  <33.946472, 36.751987, 31.268021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433876, 37.301292, 31.266031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503613, 37.094597, 31.601313>,  <34.545452, 36.970581, 31.802483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.503613, 37.094597, 31.601313>,  <34.433876, 37.301292, 31.266031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503613, 37.094597, 31.601313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956384, -0.113762, -0.269049,
		0.234384, 0.848551, 0.474369,
		0.174337, -0.516740, 0.838204,
		34.555912, 36.939575, 31.852774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112656, 37.494606, 31.529678>,  <34.433876, 37.301292, 31.266031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112656, 37.494606, 31.529678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069038, 37.125809, 31.678289>,  <35.042866, 36.904530, 31.767456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069038, 37.125809, 31.678289>,  <35.112656, 37.494606, 31.529678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069038, 37.125809, 31.678289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977144, -0.168037, -0.130202,
		0.182476, 0.348840, 0.919246,
		-0.109047, -0.921995, 0.371529,
		35.036324, 36.849209, 31.789747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727512, 37.466507, 31.856340>,  <35.112656, 37.494606, 31.529678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727512, 37.466507, 31.856340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611221, 37.084934, 31.826694>,  <35.541447, 36.855991, 31.808907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611221, 37.084934, 31.826694>,  <35.727512, 37.466507, 31.856340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611221, 37.084934, 31.826694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956766, -0.290555, -0.013292,
		-0.008856, -0.074777, 0.997161,
		-0.290725, -0.953932, -0.074117,
		35.524002, 36.798756, 31.804459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172085, 37.108910, 32.214573>,  <35.727512, 37.466507, 31.856340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172085, 37.108910, 32.214573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033913, 36.813023, 31.983576>,  <35.951012, 36.635490, 31.844976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033913, 36.813023, 31.983576>,  <36.172085, 37.108910, 32.214573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033913, 36.813023, 31.983576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925026, -0.372080, -0.076702,
		-0.158138, -0.560694, 0.812782,
		-0.345427, -0.739715, -0.577496,
		35.930286, 36.591106, 31.810328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417679, 36.445030, 32.426197>,  <36.172085, 37.108910, 32.214573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417679, 36.445030, 32.426197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341568, 36.422775, 32.034138>,  <36.295902, 36.409424, 31.798901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341568, 36.422775, 32.034138>,  <36.417679, 36.445030, 32.426197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341568, 36.422775, 32.034138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939443, -0.300184, -0.165337,
		-0.285028, -0.952258, 0.109382,
		-0.190279, -0.055633, -0.980153,
		36.284485, 36.406086, 31.740091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165516, 36.160641, 32.197411>,  <36.417679, 36.445030, 32.426197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165516, 36.160641, 32.197411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292091, 36.539978, 32.188309>,  <37.368034, 36.767578, 32.182850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292091, 36.539978, 32.188309>,  <37.165516, 36.160641, 32.197411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292091, 36.539978, 32.188309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011117, 0.020275, 0.999733,
		0.948549, -0.316603, -0.004127,
		0.316435, 0.948341, -0.022751,
		37.387020, 36.824482, 32.181484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565945, 36.218472, 32.781979>,  <37.165516, 36.160641, 32.197411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565945, 36.218472, 32.781979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493187, 36.596706, 32.674068>,  <37.449532, 36.823647, 32.609322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.493187, 36.596706, 32.674068>,  <37.565945, 36.218472, 32.781979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493187, 36.596706, 32.674068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240517, 0.223238, 0.944625,
		0.953450, 0.236708, 0.186824,
		-0.181894, 0.945587, -0.269778,
		37.438618, 36.880383, 32.593136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877712, 36.618042, 33.214600>,  <37.565945, 36.218472, 32.781979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877712, 36.618042, 33.214600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598602, 36.883148, 33.105900>,  <37.431137, 37.042213, 33.040680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598602, 36.883148, 33.105900>,  <37.877712, 36.618042, 33.214600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598602, 36.883148, 33.105900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086690, 0.298452, 0.950480,
		0.711051, 0.686779, -0.150798,
		-0.697776, 0.662767, -0.271752,
		37.389271, 37.081978, 33.024376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009331, 37.212772, 33.654613>,  <37.877712, 36.618042, 33.214600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009331, 37.212772, 33.654613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645004, 37.267723, 33.498898>,  <37.426407, 37.300694, 33.405468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645004, 37.267723, 33.498898>,  <38.009331, 37.212772, 33.654613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645004, 37.267723, 33.498898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328126, 0.331299, 0.884632,
		0.250498, 0.933471, -0.256675,
		-0.910815, 0.137377, -0.389286,
		37.371761, 37.308937, 33.382111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823864, 37.799816, 33.971741>,  <38.009331, 37.212772, 33.654613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823864, 37.799816, 33.971741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484280, 37.641705, 33.831444>,  <37.280529, 37.546837, 33.747265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484280, 37.641705, 33.831444>,  <37.823864, 37.799816, 33.971741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484280, 37.641705, 33.831444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501321, 0.392453, 0.771141,
		-0.167161, 0.830505, -0.531336,
		-0.848961, -0.395275, -0.350746,
		37.229591, 37.523121, 33.726219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370064, 38.371075, 33.946461>,  <37.823864, 37.799816, 33.971741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370064, 38.371075, 33.946461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161289, 38.029953, 33.939415>,  <37.036026, 37.825279, 33.935188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161289, 38.029953, 33.939415>,  <37.370064, 38.371075, 33.946461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161289, 38.029953, 33.939415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640528, 0.378213, 0.668340,
		-0.563300, 0.360113, -0.743647,
		-0.521935, -0.852803, -0.017615,
		37.004707, 37.774113, 33.934132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705620, 38.469181, 33.792969>,  <37.370064, 38.371075, 33.946461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705620, 38.469181, 33.792969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631573, 38.111694, 33.956436>,  <36.587143, 37.897202, 34.054516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631573, 38.111694, 33.956436>,  <36.705620, 38.469181, 33.792969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631573, 38.111694, 33.956436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710538, 0.409000, 0.572586,
		-0.678872, -0.184376, -0.710731,
		-0.185118, -0.893714, 0.408664,
		36.576038, 37.843578, 34.079037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047020, 38.513000, 33.937340>,  <36.705620, 38.469181, 33.792969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047020, 38.513000, 33.937340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155922, 38.209499, 34.174042>,  <36.221264, 38.027401, 34.316063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155922, 38.209499, 34.174042>,  <36.047020, 38.513000, 33.937340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155922, 38.209499, 34.174042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688386, 0.276107, 0.670738,
		-0.672311, -0.589967, -0.447142,
		0.272255, -0.758751, 0.591755,
		36.237598, 37.981873, 34.351570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486046, 38.064110, 34.170864>,  <36.047020, 38.513000, 33.937340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486046, 38.064110, 34.170864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775230, 38.024097, 34.444309>,  <35.948742, 38.000088, 34.608376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775230, 38.024097, 34.444309>,  <35.486046, 38.064110, 34.170864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775230, 38.024097, 34.444309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599907, 0.399910, 0.692953,
		-0.342702, -0.911079, 0.229107,
		0.722957, -0.100034, 0.683612,
		35.992119, 37.994087, 34.649391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087196, 37.831669, 34.692451>,  <35.486046, 38.064110, 34.170864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087196, 37.831669, 34.692451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424084, 37.971542, 34.856590>,  <35.626217, 38.055466, 34.955074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424084, 37.971542, 34.856590>,  <35.087196, 37.831669, 34.692451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424084, 37.971542, 34.856590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539126, 0.542287, 0.644413,
		0.002810, -0.763969, 0.645247,
		0.842221, 0.349680, 0.410351,
		35.676750, 38.076447, 34.979694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984402, 37.774853, 35.427799>,  <35.087196, 37.831669, 34.692451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984402, 37.774853, 35.427799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263363, 38.058189, 35.384197>,  <35.430740, 38.228191, 35.358036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263363, 38.058189, 35.384197>,  <34.984402, 37.774853, 35.427799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263363, 38.058189, 35.384197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427527, 0.533258, 0.729970,
		0.575200, -0.462477, 0.674730,
		0.697399, 0.708344, -0.109008,
		35.472584, 38.270691, 35.351494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302227, 37.871613, 36.005322>,  <34.984402, 37.774853, 35.427799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302227, 37.871613, 36.005322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386631, 38.219479, 35.826813>,  <35.437275, 38.428196, 35.719707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386631, 38.219479, 35.826813>,  <35.302227, 37.871613, 36.005322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386631, 38.219479, 35.826813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341398, 0.493371, 0.800020,
		0.915927, -0.016455, 0.401007,
		0.211009, 0.869663, -0.446275,
		35.449932, 38.480377, 35.692932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279346, 38.337360, 36.498280>,  <35.302227, 37.871613, 36.005322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279346, 38.337360, 36.498280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307858, 38.626785, 36.223652>,  <35.324963, 38.800442, 36.058876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307858, 38.626785, 36.223652>,  <35.279346, 38.337360, 36.498280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307858, 38.626785, 36.223652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085450, 0.690218, 0.718538,
		0.993790, 0.007451, 0.111026,
		0.071279, 0.723563, -0.686569,
		35.329243, 38.843853, 36.017681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792522, 38.872646, 36.751064>,  <35.279346, 38.337360, 36.498280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792522, 38.872646, 36.751064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536034, 39.043056, 36.495773>,  <35.382141, 39.145302, 36.342598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536034, 39.043056, 36.495773>,  <35.792522, 38.872646, 36.751064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536034, 39.043056, 36.495773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209842, 0.702667, 0.679871,
		0.738102, 0.569878, -0.361171,
		-0.641226, 0.426026, -0.638225,
		35.343666, 39.170864, 36.304306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677639, 39.498970, 37.010380>,  <35.792522, 38.872646, 36.751064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677639, 39.498970, 37.010380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408459, 39.522964, 36.715481>,  <35.246948, 39.537361, 36.538540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408459, 39.522964, 36.715481>,  <35.677639, 39.498970, 37.010380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408459, 39.522964, 36.715481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431312, 0.777900, 0.456992,
		0.600920, 0.625518, -0.497616,
		-0.672952, 0.059988, -0.737249,
		35.206573, 39.540962, 36.494305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729786, 40.168388, 36.687336>,  <35.677639, 39.498970, 37.010380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729786, 40.168388, 36.687336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354435, 40.044254, 36.626503>,  <35.129223, 39.969772, 36.590004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354435, 40.044254, 36.626503>,  <35.729786, 40.168388, 36.687336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354435, 40.044254, 36.626503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344384, 0.802769, 0.486786,
		-0.028982, 0.509166, -0.860180,
		-0.938381, -0.310340, -0.152083,
		35.072922, 39.951153, 36.580879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355133, 40.733448, 36.399918>,  <35.729786, 40.168388, 36.687336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355133, 40.733448, 36.399918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.067551, 40.489784, 36.533802>,  <34.895000, 40.343586, 36.614132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.067551, 40.489784, 36.533802>,  <35.355133, 40.733448, 36.399918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067551, 40.489784, 36.533802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380777, 0.748055, 0.543527,
		-0.581474, 0.263324, -0.769772,
		-0.718956, -0.609158, 0.334707,
		34.851864, 40.307037, 36.634212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.726898, 40.881416, 36.161160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860641, 40.651642, 36.460018>,  <33.940887, 40.513779, 36.639336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860641, 40.651642, 36.460018>,  <33.726898, 40.881416, 36.161160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860641, 40.651642, 36.460018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158153, 0.747336, 0.645351,
		-0.929083, -0.333940, 0.159027,
		0.334355, -0.574433, 0.747150,
		33.960949, 40.479313, 36.684162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179722, 40.740620, 36.693920>,  <33.726898, 40.881416, 36.161160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179722, 40.740620, 36.693920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525917, 40.672890, 36.882496>,  <33.733635, 40.632252, 36.995644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525917, 40.672890, 36.882496>,  <33.179722, 40.740620, 36.693920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525917, 40.672890, 36.882496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302400, 0.573688, 0.761207,
		-0.399355, -0.801380, 0.445316,
		0.865489, -0.169328, 0.471442,
		33.785564, 40.622093, 37.023930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033150, 40.300774, 37.337040>,  <33.179722, 40.740620, 36.693920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033150, 40.300774, 37.337040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380058, 40.494480, 37.383205>,  <33.588203, 40.610703, 37.410904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380058, 40.494480, 37.383205>,  <33.033150, 40.300774, 37.337040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380058, 40.494480, 37.383205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407796, 0.558093, 0.722658,
		0.285543, -0.673810, 0.681502,
		0.867276, 0.484264, 0.115418,
		33.640240, 40.639759, 37.417831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395348, 40.151573, 37.967274>,  <33.033150, 40.300774, 37.337040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395348, 40.151573, 37.967274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545620, 40.515110, 37.894745>,  <33.635784, 40.733231, 37.851227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545620, 40.515110, 37.894745>,  <33.395348, 40.151573, 37.967274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545620, 40.515110, 37.894745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486303, 0.359880, 0.796238,
		0.788908, -0.210950, 0.577170,
		0.375678, 0.908838, -0.181327,
		33.658325, 40.787762, 37.840347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561310, 40.437401, 38.615349>,  <33.395348, 40.151573, 37.967274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561310, 40.437401, 38.615349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582863, 40.747082, 38.363094>,  <33.595795, 40.932892, 38.211742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582863, 40.747082, 38.363094>,  <33.561310, 40.437401, 38.615349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582863, 40.747082, 38.363094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377803, 0.600412, 0.704819,
		0.924317, 0.200282, 0.324847,
		0.053880, 0.774205, -0.630638,
		33.599026, 40.979343, 38.173904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907963, 40.985672, 38.940498>,  <33.561310, 40.437401, 38.615349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907963, 40.985672, 38.940498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712383, 41.187859, 38.656120>,  <33.595036, 41.309170, 38.485493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712383, 41.187859, 38.656120>,  <33.907963, 40.985672, 38.940498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712383, 41.187859, 38.656120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182279, 0.737811, 0.649930,
		0.853055, 0.447372, -0.268616,
		-0.488948, 0.505463, -0.710940,
		33.565701, 41.339497, 38.442837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040012, 41.707798, 39.070160>,  <33.907963, 40.985672, 38.940498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040012, 41.707798, 39.070160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727932, 41.735146, 38.821445>,  <33.540684, 41.751553, 38.672218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727932, 41.735146, 38.821445>,  <34.040012, 41.707798, 39.070160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727932, 41.735146, 38.821445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377723, 0.740837, 0.555416,
		0.498613, 0.668197, -0.552176,
		-0.780199, 0.068368, -0.621784,
		33.493874, 41.755657, 38.634911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848621, 42.431431, 39.079731>,  <34.040012, 41.707798, 39.070160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848621, 42.431431, 39.079731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526421, 42.231651, 38.952160>,  <33.333099, 42.111782, 38.875618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526421, 42.231651, 38.952160>,  <33.848621, 42.431431, 39.079731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526421, 42.231651, 38.952160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589458, 0.620044, 0.517769,
		-0.060852, 0.605057, -0.793853,
		-0.805504, -0.499450, -0.318925,
		33.284771, 42.081818, 38.856483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466042, 42.950111, 38.889851>,  <33.848621, 42.431431, 39.079731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466042, 42.950111, 38.889851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230019, 42.637363, 38.970367>,  <33.088406, 42.449715, 39.018677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230019, 42.637363, 38.970367>,  <33.466042, 42.950111, 38.889851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230019, 42.637363, 38.970367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521879, 0.559599, 0.643809,
		-0.616015, 0.274835, -0.738235,
		-0.590057, -0.781866, 0.201291,
		33.053001, 42.402805, 39.030754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769169, 43.193691, 38.853973>,  <33.466042, 42.950111, 38.889851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769169, 43.193691, 38.853973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757347, 42.868244, 39.086235>,  <32.750256, 42.672977, 39.225594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757347, 42.868244, 39.086235>,  <32.769169, 43.193691, 38.853973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757347, 42.868244, 39.086235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538295, 0.502430, 0.676611,
		-0.842238, -0.292566, -0.452814,
		-0.029554, -0.813615, 0.580653,
		32.748482, 42.624161, 39.260429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279804, 43.384956, 39.273643>,  <32.769169, 43.193691, 38.853973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279804, 43.384956, 39.273643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388622, 43.044743, 39.453682>,  <32.453915, 42.840614, 39.561707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388622, 43.044743, 39.453682>,  <32.279804, 43.384956, 39.273643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388622, 43.044743, 39.453682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661697, 0.174262, 0.729240,
		-0.698676, -0.496214, -0.515387,
		0.272047, -0.850532, 0.450096,
		32.470238, 42.789581, 39.588711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697315, 42.998325, 39.466793>,  <32.279804, 43.384956, 39.273643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697315, 42.998325, 39.466793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989037, 42.872158, 39.709652>,  <32.164070, 42.796459, 39.855366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989037, 42.872158, 39.709652>,  <31.697315, 42.998325, 39.466793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989037, 42.872158, 39.709652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551233, 0.254782, 0.794499,
		-0.405289, -0.914110, 0.011945,
		0.729304, -0.315418, 0.607148,
		32.207829, 42.777534, 39.891796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378407, 42.786324, 39.991524>,  <31.697315, 42.998325, 39.466793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378407, 42.786324, 39.991524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741318, 42.820026, 40.156322>,  <31.959064, 42.840248, 40.255203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741318, 42.820026, 40.156322>,  <31.378407, 42.786324, 39.991524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741318, 42.820026, 40.156322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418125, 0.076163, 0.905191,
		0.044887, -0.993529, 0.104330,
		0.907280, 0.084255, 0.412001,
		32.013500, 42.845303, 40.279922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294561, 42.526165, 40.706573>,  <31.378407, 42.786324, 39.991524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294561, 42.526165, 40.706573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642477, 42.723473, 40.701679>,  <31.851227, 42.841858, 40.698742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642477, 42.723473, 40.701679>,  <31.294561, 42.526165, 40.706573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642477, 42.723473, 40.701679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186527, 0.351662, 0.917356,
		0.456808, -0.795624, 0.397880,
		0.869789, 0.493271, -0.012237,
		31.903414, 42.871452, 40.698009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607382, 42.386059, 41.323235>,  <31.294561, 42.526165, 40.706573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607382, 42.386059, 41.323235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780519, 42.726471, 41.204311>,  <31.884403, 42.930717, 41.132957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780519, 42.726471, 41.204311>,  <31.607382, 42.386059, 41.323235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780519, 42.726471, 41.204311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194247, 0.410112, 0.891110,
		0.880291, -0.327962, 0.342825,
		0.432846, 0.851028, -0.297313,
		31.910374, 42.981781, 41.115116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149414, 42.528545, 41.865021>,  <31.607382, 42.386059, 41.323235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149414, 42.528545, 41.865021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011787, 42.850410, 41.671471>,  <31.929213, 43.043530, 41.555340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011787, 42.850410, 41.671471>,  <32.149414, 42.528545, 41.865021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011787, 42.850410, 41.671471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303318, 0.392458, 0.868317,
		0.888605, 0.445524, 0.109039,
		-0.344062, 0.804665, -0.483876,
		31.908569, 43.091808, 41.526306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515091, 43.259693, 42.067806>,  <32.149414, 42.528545, 41.865021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515091, 43.259693, 42.067806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.154774, 43.338650, 41.913094>,  <31.938581, 43.386024, 41.820267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.154774, 43.338650, 41.913094>,  <32.515091, 43.259693, 42.067806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154774, 43.338650, 41.913094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218140, 0.564462, 0.796114,
		0.375473, 0.801510, -0.465405,
		-0.900797, 0.197396, -0.386781,
		31.884535, 43.397869, 41.797058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306782, 43.673397, 42.522476>,  <32.515091, 43.259693, 42.067806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306782, 43.673397, 42.522476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.967274, 43.672714, 42.310970>,  <31.763569, 43.672302, 42.184067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.967274, 43.672714, 42.310970>,  <32.306782, 43.673397, 42.522476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967274, 43.672714, 42.310970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471077, 0.456639, 0.754697,
		0.240164, 0.889650, -0.388386,
		-0.848768, -0.001709, -0.528762,
		31.712643, 43.672203, 42.152340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997482, 44.188251, 42.828262>,  <32.306782, 43.673397, 42.522476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997482, 44.188251, 42.828262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.701731, 43.996513, 42.639141>,  <31.524281, 43.881470, 42.525669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.701731, 43.996513, 42.639141>,  <31.997482, 44.188251, 42.828262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701731, 43.996513, 42.639141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662615, 0.393508, 0.637254,
		-0.119411, 0.784461, -0.608573,
		-0.739380, -0.479345, -0.472806,
		31.479918, 43.852711, 42.497299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459375, 44.608963, 42.970219>,  <31.997482, 44.188251, 42.828262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459375, 44.608963, 42.970219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.300753, 44.267010, 42.836407>,  <31.205580, 44.061836, 42.756119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.300753, 44.267010, 42.836407>,  <31.459375, 44.608963, 42.970219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300753, 44.267010, 42.836407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853850, 0.209636, 0.476437,
		-0.337170, 0.474576, -0.813077,
		-0.396556, -0.854886, -0.334533,
		31.181786, 44.010544, 42.736046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796240, 44.792336, 42.735996>,  <31.459375, 44.608963, 42.970219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796240, 44.792336, 42.735996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.774176, 44.398926, 42.804852>,  <30.760937, 44.162880, 42.846165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.774176, 44.398926, 42.804852>,  <30.796240, 44.792336, 42.735996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774176, 44.398926, 42.804852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780561, 0.149984, 0.606819,
		-0.622641, -0.100892, -0.775976,
		-0.055161, -0.983527, 0.172138,
		30.757627, 44.103867, 42.856495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085325, 44.569458, 42.553692>,  <30.796240, 44.792336, 42.735996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085325, 44.569458, 42.553692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231331, 44.299091, 42.809784>,  <30.318933, 44.136871, 42.963440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231331, 44.299091, 42.809784>,  <30.085325, 44.569458, 42.553692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231331, 44.299091, 42.809784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779271, 0.154461, 0.607354,
		-0.509414, -0.720606, -0.470345,
		0.365013, -0.675920, 0.640232,
		30.340836, 44.096313, 43.001854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502947, 44.157879, 42.825096>,  <30.085325, 44.569458, 42.553692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502947, 44.157879, 42.825096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814211, 44.159798, 43.076313>,  <30.000969, 44.160950, 43.227043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814211, 44.159798, 43.076313>,  <29.502947, 44.157879, 42.825096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814211, 44.159798, 43.076313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621253, 0.152741, 0.768580,
		-0.092246, -0.988255, 0.121833,
		0.778162, 0.004791, 0.628046,
		30.047659, 44.161236, 43.264725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564125, 43.438595, 43.170551>,  <29.502947, 44.157879, 42.825096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564125, 43.438595, 43.170551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.535975, 43.176163, 43.471111>,  <29.519085, 43.018703, 43.651447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.535975, 43.176163, 43.471111>,  <29.564125, 43.438595, 43.170551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535975, 43.176163, 43.471111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886853, -0.303692, -0.348230,
		0.456661, -0.690889, -0.560475,
		-0.070377, -0.656081, 0.751401,
		29.514862, 42.979340, 43.696533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958748, 43.126019, 43.208733>,  <29.564125, 43.438595, 43.170551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958748, 43.126019, 43.208733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.600849, 42.959507, 43.144058>,  <28.386110, 42.859600, 43.105251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.600849, 42.959507, 43.144058>,  <28.958748, 43.126019, 43.208733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600849, 42.959507, 43.144058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405116, -0.604252, -0.686120,
		0.187916, -0.679405, 0.709293,
		-0.894745, -0.416279, -0.161689,
		28.332426, 42.834625, 43.095551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969757, 42.373501, 43.369511>,  <28.958748, 43.126019, 43.208733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969757, 42.373501, 43.369511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.700722, 42.476437, 43.091980>,  <28.539301, 42.538197, 42.925461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.700722, 42.476437, 43.091980>,  <28.969757, 42.373501, 43.369511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700722, 42.476437, 43.091980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444282, -0.609392, -0.656700,
		-0.591801, -0.749949, 0.295547,
		-0.672595, 0.257329, -0.693828,
		28.498945, 42.553638, 42.883831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596634, 41.792645, 43.120399>,  <28.969757, 42.373501, 43.369511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596634, 41.792645, 43.120399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.606358, 42.066982, 42.829464>,  <28.612192, 42.231586, 42.654903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.606358, 42.066982, 42.829464>,  <28.596634, 41.792645, 43.120399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606358, 42.066982, 42.829464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329523, -0.692391, -0.641879,
		-0.943835, -0.224073, -0.242832,
		0.024307, 0.685847, -0.727340,
		28.613649, 42.272736, 42.611263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407646, 41.410652, 42.541222>,  <28.596634, 41.792645, 43.120399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407646, 41.410652, 42.541222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.534746, 41.766495, 42.409988>,  <28.611006, 41.980000, 42.331249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.534746, 41.766495, 42.409988>,  <28.407646, 41.410652, 42.541222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534746, 41.766495, 42.409988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628442, -0.456692, -0.629676,
		-0.709996, -0.006101, -0.704180,
		0.317752, 0.889604, -0.328083,
		28.630072, 42.033375, 42.311562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249760, 41.383896, 41.901718>,  <28.407646, 41.410652, 42.541222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249760, 41.383896, 41.901718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.530972, 41.667385, 41.925243>,  <28.699697, 41.837479, 41.939358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.530972, 41.667385, 41.925243>,  <28.249760, 41.383896, 41.901718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530972, 41.667385, 41.925243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484863, -0.417179, -0.768680,
		-0.520249, 0.568918, -0.636924,
		0.703028, 0.708727, 0.058810,
		28.741880, 41.880005, 41.942886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510159, 41.495068, 41.211193>,  <28.249760, 41.383896, 41.901718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510159, 41.495068, 41.211193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.803238, 41.658428, 41.428947>,  <28.979086, 41.756447, 41.559601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.803238, 41.658428, 41.428947>,  <28.510159, 41.495068, 41.211193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803238, 41.658428, 41.428947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673820, -0.323104, -0.664507,
		-0.095493, 0.853704, -0.511929,
		0.732699, 0.408404, 0.544389,
		29.023048, 41.780949, 41.592262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934820, 41.797482, 40.695869>,  <28.510159, 41.495068, 41.211193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934820, 41.797482, 40.695869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170544, 41.760212, 41.016876>,  <29.311977, 41.737850, 41.209480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170544, 41.760212, 41.016876>,  <28.934820, 41.797482, 40.695869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170544, 41.760212, 41.016876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781060, -0.188237, -0.595409,
		0.206541, 0.977694, -0.038154,
		0.589310, -0.093176, 0.802516,
		29.347336, 41.732258, 41.257629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428501, 42.183365, 40.583569>,  <28.934820, 41.797482, 40.695869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428501, 42.183365, 40.583569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.560438, 41.917046, 40.851273>,  <29.639601, 41.757256, 41.011894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.560438, 41.917046, 40.851273>,  <29.428501, 42.183365, 40.583569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560438, 41.917046, 40.851273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780266, -0.206794, -0.590273,
		0.531403, 0.716901, 0.451291,
		0.329843, -0.665799, 0.669264,
		29.659391, 41.717304, 41.052052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140224, 42.252693, 40.496906>,  <29.428501, 42.183365, 40.583569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140224, 42.252693, 40.496906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122597, 41.907967, 40.699024>,  <30.112020, 41.701130, 40.820297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122597, 41.907967, 40.699024>,  <30.140224, 42.252693, 40.496906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122597, 41.907967, 40.699024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720960, -0.377566, -0.581086,
		0.691574, 0.338691, 0.637976,
		-0.044070, -0.861819, 0.505297,
		30.109375, 41.649422, 40.850613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839319, 42.068203, 40.417507>,  <30.140224, 42.252693, 40.496906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839319, 42.068203, 40.417507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608810, 41.759651, 40.525494>,  <30.470505, 41.574520, 40.590286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608810, 41.759651, 40.525494>,  <30.839319, 42.068203, 40.417507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608810, 41.759651, 40.525494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515050, -0.599264, -0.612868,
		0.634534, -0.214134, 0.742639,
		-0.576273, -0.771382, 0.269964,
		30.435928, 41.528236, 40.606483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177763, 41.458710, 40.617435>,  <30.839319, 42.068203, 40.417507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177763, 41.458710, 40.617435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.820232, 41.327881, 40.494732>,  <30.605715, 41.249382, 40.421112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.820232, 41.327881, 40.494732>,  <31.177763, 41.458710, 40.617435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820232, 41.327881, 40.494732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435504, -0.470193, -0.767630,
		0.106840, -0.819719, 0.562713,
		-0.893824, -0.327077, -0.306756,
		30.552086, 41.229759, 40.402706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253876, 40.844688, 40.304798>,  <31.177763, 41.458710, 40.617435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253876, 40.844688, 40.304798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.884933, 40.928371, 40.174881>,  <30.663568, 40.978580, 40.096931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.884933, 40.928371, 40.174881>,  <31.253876, 40.844688, 40.304798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884933, 40.928371, 40.174881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190782, -0.484390, -0.853797,
		-0.335947, -0.849470, 0.406867,
		-0.922357, 0.209207, -0.324792,
		30.608227, 40.991135, 40.077442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016693, 40.234360, 40.061531>,  <31.253876, 40.844688, 40.304798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016693, 40.234360, 40.061531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.782961, 40.500751, 39.876049>,  <30.642721, 40.660587, 39.764759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.782961, 40.500751, 39.876049>,  <31.016693, 40.234360, 40.061531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782961, 40.500751, 39.876049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380178, -0.280167, -0.881459,
		-0.716953, -0.691354, -0.089482,
		-0.584331, 0.665984, -0.463705,
		30.607662, 40.700546, 39.736938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655846, 39.899849, 39.479347>,  <31.016693, 40.234360, 40.061531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655846, 39.899849, 39.479347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608379, 40.280552, 39.366150>,  <30.579901, 40.508972, 39.298233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608379, 40.280552, 39.366150>,  <30.655846, 39.899849, 39.479347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608379, 40.280552, 39.366150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198916, -0.256440, -0.945870,
		-0.972806, -0.168533, -0.158889,
		-0.118665, 0.951754, -0.282991,
		30.572781, 40.566078, 39.281254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510603, 39.816055, 38.818493>,  <30.655846, 39.899849, 39.479347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510603, 39.816055, 38.818493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608208, 40.203598, 38.835308>,  <30.666771, 40.436123, 38.845398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608208, 40.203598, 38.835308>,  <30.510603, 39.816055, 38.818493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608208, 40.203598, 38.835308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343518, -0.045821, -0.938028,
		-0.906892, 0.243332, -0.344002,
		0.244014, 0.968860, 0.042034,
		30.681412, 40.494255, 38.847919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083578, 40.126167, 38.272266>,  <30.510603, 39.816055, 38.818493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083578, 40.126167, 38.272266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382164, 40.378361, 38.357380>,  <30.561316, 40.529678, 38.408447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382164, 40.378361, 38.357380>,  <30.083578, 40.126167, 38.272266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382164, 40.378361, 38.357380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237478, 0.046304, -0.970289,
		-0.621604, 0.774820, -0.115162,
		0.746467, 0.630484, 0.212786,
		30.606104, 40.567505, 38.421215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994606, 40.672684, 37.868847>,  <30.083578, 40.126167, 38.272266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994606, 40.672684, 37.868847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382267, 40.694370, 37.965015>,  <30.614864, 40.707382, 38.022717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382267, 40.694370, 37.965015>,  <29.994606, 40.672684, 37.868847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382267, 40.694370, 37.965015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236895, 0.064159, -0.969414,
		-0.067980, 0.996466, 0.049337,
		0.969154, 0.054213, 0.240420,
		30.673014, 40.710632, 38.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170418, 41.263317, 37.506184>,  <29.994606, 40.672684, 37.868847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170418, 41.263317, 37.506184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.477419, 41.018688, 37.583035>,  <30.661619, 40.871910, 37.629147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.477419, 41.018688, 37.583035>,  <30.170418, 41.263317, 37.506184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477419, 41.018688, 37.583035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189242, -0.070195, -0.979418,
		0.612474, 0.788066, 0.061861,
		0.767504, -0.611575, 0.192128,
		30.707670, 40.835217, 37.640675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484631, 41.362106, 36.867538>,  <30.170418, 41.263317, 37.506184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484631, 41.362106, 36.867538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722647, 41.076191, 37.014507>,  <30.865456, 40.904640, 37.102688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722647, 41.076191, 37.014507>,  <30.484631, 41.362106, 36.867538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722647, 41.076191, 37.014507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107939, -0.381953, -0.917857,
		0.796415, 0.585821, -0.150124,
		0.595040, -0.714791, 0.367426,
		30.901159, 40.861755, 37.124737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089926, 41.311638, 36.382236>,  <30.484631, 41.362106, 36.867538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089926, 41.311638, 36.382236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047243, 40.958256, 36.564720>,  <31.021633, 40.746227, 36.674210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047243, 40.958256, 36.564720>,  <31.089926, 41.311638, 36.382236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047243, 40.958256, 36.564720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096495, -0.465866, -0.879578,
		0.989597, -0.049834, 0.134959,
		-0.106706, -0.883451, 0.456211,
		31.015232, 40.693222, 36.701584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.101643, 43.258163, 31.675730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773048, 43.398556, 31.495964>,  <43.575890, 43.482792, 31.388105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773048, 43.398556, 31.495964>,  <44.101643, 43.258163, 31.675730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773048, 43.398556, 31.495964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315931, -0.936252, -0.153687,
		-0.474706, 0.015732, 0.880004,
		-0.821488, 0.350977, -0.449415,
		43.526604, 43.503849, 31.361139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571060, 42.882702, 31.983269>,  <44.101643, 43.258163, 31.675730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571060, 42.882702, 31.983269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417301, 43.014645, 31.638378>,  <43.325047, 43.093811, 31.431444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417301, 43.014645, 31.638378>,  <43.571060, 42.882702, 31.983269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417301, 43.014645, 31.638378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332294, -0.920821, -0.204128,
		-0.861290, 0.208047, 0.463568,
		-0.384395, 0.329854, -0.862227,
		43.301983, 43.113602, 31.379709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900005, 42.643135, 31.886852>,  <43.571060, 42.882702, 31.983269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900005, 42.643135, 31.886852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.035748, 42.719589, 31.518438>,  <43.117195, 42.765461, 31.297390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.035748, 42.719589, 31.518438>,  <42.900005, 42.643135, 31.886852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035748, 42.719589, 31.518438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432203, -0.837981, -0.333149,
		-0.835486, 0.511130, -0.201766,
		0.339358, 0.191137, -0.921033,
		43.137554, 42.776932, 31.242128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335709, 42.519352, 31.410505>,  <42.900005, 42.643135, 31.886852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335709, 42.519352, 31.410505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670116, 42.508545, 31.191290>,  <42.870762, 42.502060, 31.059761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670116, 42.508545, 31.191290>,  <42.335709, 42.519352, 31.410505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670116, 42.508545, 31.191290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133116, -0.978937, -0.154799,
		-0.532310, 0.202367, -0.822006,
		0.836018, -0.027021, -0.548037,
		42.920921, 42.500439, 31.026878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191242, 42.094700, 30.826090>,  <42.335709, 42.519352, 31.410505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191242, 42.094700, 30.826090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591106, 42.102703, 30.832832>,  <42.831024, 42.107506, 30.836878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591106, 42.102703, 30.832832>,  <42.191242, 42.094700, 30.826090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591106, 42.102703, 30.832832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024254, -0.950368, -0.310180,
		0.009811, 0.310483, -0.950528,
		0.999658, 0.020011, 0.016855,
		42.891003, 42.108707, 30.837889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462746, 41.707848, 30.230303>,  <42.191242, 42.094700, 30.826090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462746, 41.707848, 30.230303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.781414, 41.714977, 30.471966>,  <42.972614, 41.719257, 30.616962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.781414, 41.714977, 30.471966>,  <42.462746, 41.707848, 30.230303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781414, 41.714977, 30.471966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162169, -0.969219, -0.185245,
		0.582258, 0.245554, -0.775035,
		0.796666, 0.017826, 0.604157,
		43.020412, 41.720325, 30.653214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986511, 41.241268, 29.968363>,  <42.462746, 41.707848, 30.230303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986511, 41.241268, 29.968363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166706, 41.286304, 30.322624>,  <43.274822, 41.313324, 30.535181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166706, 41.286304, 30.322624>,  <42.986511, 41.241268, 29.968363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166706, 41.286304, 30.322624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539316, -0.824877, -0.169460,
		0.711478, 0.553987, -0.432317,
		0.450487, 0.112588, 0.885655,
		43.301853, 41.320080, 30.588322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721203, 40.939327, 29.914614>,  <42.986511, 41.241268, 29.968363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721203, 40.939327, 29.914614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641296, 40.956070, 30.306194>,  <43.593353, 40.966114, 30.541142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641296, 40.956070, 30.306194>,  <43.721203, 40.939327, 29.914614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641296, 40.956070, 30.306194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445589, -0.885923, 0.128805,
		0.872665, 0.461940, 0.158324,
		-0.199763, 0.041856, 0.978950,
		43.581367, 40.968628, 30.599880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349556, 40.797924, 30.201447>,  <43.721203, 40.939327, 29.914614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349556, 40.797924, 30.201447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051929, 40.735638, 30.461330>,  <43.873356, 40.698265, 30.617260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.051929, 40.735638, 30.461330>,  <44.349556, 40.797924, 30.201447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051929, 40.735638, 30.461330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293252, -0.949896, 0.108174,
		0.600310, 0.271017, 0.752448,
		-0.744064, -0.155719, 0.649708,
		43.828709, 40.688923, 30.656242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713860, 40.580490, 30.745470>,  <44.349556, 40.797924, 30.201447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713860, 40.580490, 30.745470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335609, 40.458256, 30.790033>,  <44.108658, 40.384914, 30.816771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335609, 40.458256, 30.790033>,  <44.713860, 40.580490, 30.745470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335609, 40.458256, 30.790033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323485, -0.919304, 0.224137,
		0.033925, 0.247988, 0.968169,
		-0.945625, -0.305584, 0.111407,
		44.051922, 40.366581, 30.823456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727303, 40.111786, 31.342426>,  <44.713860, 40.580490, 30.745470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727303, 40.111786, 31.342426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397362, 40.031288, 31.131098>,  <44.199398, 39.982990, 31.004301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397362, 40.031288, 31.131098>,  <44.727303, 40.111786, 31.342426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397362, 40.031288, 31.131098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078665, -0.966265, 0.245240,
		-0.559850, 0.160726, 0.812856,
		-0.824851, -0.201241, -0.528320,
		44.149906, 39.970917, 30.972601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547901, 39.442913, 31.701693>,  <44.727303, 40.111786, 31.342426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547901, 39.442913, 31.701693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.327862, 39.450089, 31.367731>,  <44.195839, 39.454395, 31.167355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.327862, 39.450089, 31.367731>,  <44.547901, 39.442913, 31.701693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327862, 39.450089, 31.367731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026174, -0.999649, -0.004233,
		-0.834687, 0.019524, 0.550378,
		-0.550102, 0.017939, -0.834905,
		44.162830, 39.455471, 31.117260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873306, 39.139126, 31.832932>,  <44.547901, 39.442913, 31.701693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873306, 39.139126, 31.832932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.952892, 39.112682, 31.441822>,  <44.000645, 39.096817, 31.207155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.952892, 39.112682, 31.441822>,  <43.873306, 39.139126, 31.832932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952892, 39.112682, 31.441822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150526, -0.983821, 0.097152,
		-0.968378, -0.166510, -0.185791,
		0.198962, -0.066113, -0.977775,
		44.012581, 39.092850, 31.148489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357975, 38.704426, 31.537888>,  <43.873306, 39.139126, 31.832932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357975, 38.704426, 31.537888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653614, 38.701809, 31.268461>,  <43.830997, 38.700241, 31.106806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653614, 38.701809, 31.268461>,  <43.357975, 38.704426, 31.537888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653614, 38.701809, 31.268461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083155, -0.991419, 0.100867,
		-0.668447, -0.130561, -0.732211,
		0.739097, -0.006538, -0.673567,
		43.875343, 38.699848, 31.066391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179356, 38.184937, 31.028145>,  <43.357975, 38.704426, 31.537888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179356, 38.184937, 31.028145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576851, 38.196201, 30.984892>,  <43.815350, 38.202961, 30.958941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576851, 38.196201, 30.984892>,  <43.179356, 38.184937, 31.028145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576851, 38.196201, 30.984892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020466, -0.997224, -0.071595,
		-0.109850, 0.068934, -0.991555,
		0.993737, 0.028158, -0.108134,
		43.874973, 38.204647, 30.952452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278309, 37.635357, 30.619234>,  <43.179356, 38.184937, 31.028145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278309, 37.635357, 30.619234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.646217, 37.714508, 30.754807>,  <43.866962, 37.761997, 30.836149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.646217, 37.714508, 30.754807>,  <43.278309, 37.635357, 30.619234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646217, 37.714508, 30.754807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198104, -0.979580, 0.034310,
		0.338798, 0.035586, -0.940186,
		0.919767, 0.197879, 0.338930,
		43.922146, 37.773872, 30.856485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711281, 37.265766, 30.179207>,  <43.278309, 37.635357, 30.619234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711281, 37.265766, 30.179207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903599, 37.331192, 30.523783>,  <44.018990, 37.370449, 30.730528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903599, 37.331192, 30.523783>,  <43.711281, 37.265766, 30.179207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903599, 37.331192, 30.523783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287043, -0.957673, 0.021632,
		0.828518, 0.236870, -0.507396,
		0.480796, 0.163567, 0.861442,
		44.047836, 37.380260, 30.782215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320534, 36.913368, 30.170734>,  <43.711281, 37.265766, 30.179207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320534, 36.913368, 30.170734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275253, 36.974720, 30.563398>,  <44.248085, 37.011532, 30.798998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275253, 36.974720, 30.563398>,  <44.320534, 36.913368, 30.170734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275253, 36.974720, 30.563398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238312, -0.954979, 0.176697,
		0.964568, 0.253945, 0.071555,
		-0.113205, 0.153384, 0.981661,
		44.241291, 37.020737, 30.857897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869541, 36.512589, 30.508768>,  <44.320534, 36.913368, 30.170734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869541, 36.512589, 30.508768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.640949, 36.606262, 30.823364>,  <44.503792, 36.662468, 31.012121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.640949, 36.606262, 30.823364>,  <44.869541, 36.512589, 30.508768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640949, 36.606262, 30.823364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061277, -0.943562, 0.325477,
		0.818324, 0.234198, 0.524879,
		-0.571482, 0.234183, 0.786490,
		44.469505, 36.676517, 31.059311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241276, 36.195488, 31.032415>,  <44.869541, 36.512589, 30.508768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241276, 36.195488, 31.032415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.862801, 36.254971, 31.147390>,  <44.635715, 36.290661, 31.216375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.862801, 36.254971, 31.147390>,  <45.241276, 36.195488, 31.032415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862801, 36.254971, 31.147390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041865, -0.936960, 0.346919,
		0.320907, 0.316216, 0.892763,
		-0.946185, 0.148704, 0.287439,
		44.578945, 36.299583, 31.233622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198261, 35.745029, 31.567924>,  <45.241276, 36.195488, 31.032415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198261, 35.745029, 31.567924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823540, 35.812717, 31.445446>,  <44.598705, 35.853333, 31.371960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.823540, 35.812717, 31.445446>,  <45.198261, 35.745029, 31.567924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823540, 35.812717, 31.445446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250258, -0.935741, 0.248514,
		-0.244465, 0.309437, 0.918959,
		-0.936807, 0.169224, -0.306195,
		44.542496, 35.863483, 31.353588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713089, 35.606857, 32.118401>,  <45.198261, 35.745029, 31.567924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713089, 35.606857, 32.118401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.562515, 35.552544, 31.751827>,  <44.472172, 35.519955, 31.531881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.562515, 35.552544, 31.751827>,  <44.713089, 35.606857, 32.118401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562515, 35.552544, 31.751827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305174, -0.915818, 0.261049,
		-0.874738, 0.377941, 0.303307,
		-0.376435, -0.135788, -0.916438,
		44.449585, 35.511806, 31.476896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149361, 36.008453, 32.643894>,  <44.713089, 35.606857, 32.118401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149361, 36.008453, 32.643894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.431789, 36.004791, 32.927128>,  <45.601246, 36.002594, 33.097069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.431789, 36.004791, 32.927128>,  <45.149361, 36.008453, 32.643894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431789, 36.004791, 32.927128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514523, 0.680387, 0.521862,
		-0.486546, -0.732796, 0.475692,
		0.706072, -0.009156, 0.708080,
		45.643612, 36.002045, 33.139553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743702, 36.000347, 33.279552>,  <45.149361, 36.008453, 32.643894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743702, 36.000347, 33.279552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.115261, 36.135334, 33.340557>,  <45.338196, 36.216324, 33.377159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.115261, 36.135334, 33.340557>,  <44.743702, 36.000347, 33.279552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115261, 36.135334, 33.340557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366098, 0.774737, 0.515515,
		0.055809, -0.534697, 0.843199,
		0.928901, 0.337464, 0.152514,
		45.393932, 36.236572, 33.386311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752392, 36.265606, 34.024212>,  <44.743702, 36.000347, 33.279552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752392, 36.265606, 34.024212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.063572, 36.425991, 33.830708>,  <45.250278, 36.522224, 33.714607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.063572, 36.425991, 33.830708>,  <44.752392, 36.265606, 34.024212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063572, 36.425991, 33.830708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228210, 0.897647, 0.377029,
		0.585420, -0.182911, 0.789828,
		0.777949, 0.400966, -0.483758,
		45.296955, 36.546280, 33.685581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922150, 36.829147, 34.413998>,  <44.752392, 36.265606, 34.024212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922150, 36.829147, 34.413998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140144, 36.904484, 34.087193>,  <45.270943, 36.949688, 33.891109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140144, 36.904484, 34.087193>,  <44.922150, 36.829147, 34.413998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140144, 36.904484, 34.087193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010150, 0.975854, 0.218190,
		0.838384, -0.110618, 0.533738,
		0.544986, 0.188344, -0.817017,
		45.303638, 36.960987, 33.842087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462299, 37.455383, 34.573578>,  <44.922150, 36.829147, 34.413998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462299, 37.455383, 34.573578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.396614, 37.433765, 34.179600>,  <45.357201, 37.420795, 33.943214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.396614, 37.433765, 34.179600>,  <45.462299, 37.455383, 34.573578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396614, 37.433765, 34.179600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132735, 0.988206, -0.076355,
		0.977453, -0.143275, -0.155107,
		-0.164217, -0.054045, -0.984943,
		45.347347, 37.417553, 33.884117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949665, 37.912258, 34.313087>,  <45.462299, 37.455383, 34.573578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949665, 37.912258, 34.313087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.664799, 37.883148, 34.033794>,  <45.493877, 37.865681, 33.866219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.664799, 37.883148, 34.033794>,  <45.949665, 37.912258, 34.313087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664799, 37.883148, 34.033794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155925, 0.953370, -0.258405,
		0.684477, -0.292899, -0.667610,
		-0.712165, -0.072776, -0.698230,
		45.451149, 37.861317, 33.824326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160709, 38.423141, 33.856739>,  <45.949665, 37.912258, 34.313087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160709, 38.423141, 33.856739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785412, 38.366646, 33.730412>,  <45.560234, 38.332748, 33.654613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785412, 38.366646, 33.730412>,  <46.160709, 38.423141, 33.856739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785412, 38.366646, 33.730412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028065, 0.940933, -0.337429,
		0.344822, -0.307729, -0.886792,
		-0.938249, -0.141241, -0.315818,
		45.503937, 38.324272, 33.635666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127277, 38.902676, 33.265236>,  <46.160709, 38.423141, 33.856739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127277, 38.902676, 33.265236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746677, 38.797207, 33.328636>,  <45.518318, 38.733925, 33.366676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746677, 38.797207, 33.328636>,  <46.127277, 38.902676, 33.265236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746677, 38.797207, 33.328636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293823, 0.931548, -0.214209,
		-0.091167, -0.250390, -0.963843,
		-0.951502, -0.263671, 0.158497,
		45.461227, 38.718105, 33.376186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731895, 39.017387, 32.707687>,  <46.127277, 38.902676, 33.265236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731895, 39.017387, 32.707687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481365, 39.033241, 33.019112>,  <45.331047, 39.042751, 33.205967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481365, 39.033241, 33.019112>,  <45.731895, 39.017387, 32.707687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481365, 39.033241, 33.019112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232080, 0.943944, -0.234752,
		-0.744218, -0.327718, -0.582014,
		-0.626321, 0.039633, 0.778557,
		45.293468, 39.045132, 33.252678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067047, 39.327763, 32.480488>,  <45.731895, 39.017387, 32.707687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067047, 39.327763, 32.480488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109741, 39.394867, 32.872501>,  <45.135357, 39.435131, 33.107708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109741, 39.394867, 32.872501>,  <45.067047, 39.327763, 32.480488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109741, 39.394867, 32.872501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093485, 0.982990, -0.158087,
		-0.989883, -0.074745, 0.120598,
		0.106731, 0.167761, 0.980033,
		45.141762, 39.445194, 33.166512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560200, 39.747456, 32.549366>,  <45.067047, 39.327763, 32.480488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560200, 39.747456, 32.549366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747555, 39.824730, 32.894222>,  <44.859966, 39.871094, 33.101135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747555, 39.824730, 32.894222>,  <44.560200, 39.747456, 32.549366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747555, 39.824730, 32.894222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270148, 0.960384, -0.068427,
		-0.841209, -0.200856, 0.502021,
		0.468389, 0.193182, 0.862145,
		44.888073, 39.882683, 33.152866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119972, 40.180882, 32.999233>,  <44.560200, 39.747456, 32.549366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119972, 40.180882, 32.999233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442184, 40.224773, 33.232155>,  <44.635513, 40.251110, 33.371910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442184, 40.224773, 33.232155>,  <44.119972, 40.180882, 32.999233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442184, 40.224773, 33.232155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264728, 0.945824, 0.187980,
		-0.530133, -0.305576, 0.790937,
		0.805530, 0.109729, 0.582307,
		44.683842, 40.257690, 33.406845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847347, 40.582470, 33.665600>,  <44.119972, 40.180882, 32.999233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847347, 40.582470, 33.665600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.237125, 40.627728, 33.587986>,  <44.470993, 40.654881, 33.541416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.237125, 40.627728, 33.587986>,  <43.847347, 40.582470, 33.665600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237125, 40.627728, 33.587986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072178, 0.975781, 0.206497,
		0.212697, -0.187216, 0.959015,
		0.974449, 0.113141, -0.194033,
		44.529461, 40.661671, 33.529778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000889, 40.996967, 34.184692>,  <43.847347, 40.582470, 33.665600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000889, 40.996967, 34.184692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265099, 41.052235, 33.889500>,  <44.423626, 41.085396, 33.712383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265099, 41.052235, 33.889500>,  <44.000889, 40.996967, 34.184692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265099, 41.052235, 33.889500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119207, 0.989753, 0.078609,
		0.741279, 0.036049, 0.670228,
		0.660526, 0.138167, -0.737980,
		44.463257, 41.093685, 33.668106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352276, 41.492393, 34.426624>,  <44.000889, 40.996967, 34.184692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352276, 41.492393, 34.426624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.457867, 41.497974, 34.040852>,  <44.521221, 41.501324, 33.809387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.457867, 41.497974, 34.040852>,  <44.352276, 41.492393, 34.426624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457867, 41.497974, 34.040852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053379, 0.998152, 0.029046,
		0.963051, -0.059147, 0.262745,
		0.263977, 0.013948, -0.964428,
		44.537060, 41.502159, 33.751522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841805, 42.045723, 34.281048>,  <44.352276, 41.492393, 34.426624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841805, 42.045723, 34.281048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692638, 41.957298, 33.920589>,  <44.603138, 41.904243, 33.704315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692638, 41.957298, 33.920589>,  <44.841805, 42.045723, 34.281048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692638, 41.957298, 33.920589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053407, 0.964479, -0.258703,
		0.926326, -0.144603, -0.347864,
		-0.372917, -0.221065, -0.901146,
		44.580765, 41.890980, 33.650246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317181, 42.412746, 33.854416>,  <44.841805, 42.045723, 34.281048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317181, 42.412746, 33.854416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978535, 42.336117, 33.655800>,  <44.775349, 42.290138, 33.536633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978535, 42.336117, 33.655800>,  <45.317181, 42.412746, 33.854416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978535, 42.336117, 33.655800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054821, 0.896613, -0.439409,
		0.529380, -0.399229, -0.748580,
		-0.846611, -0.191576, -0.496536,
		44.724552, 42.278645, 33.506840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479576, 42.539768, 33.147038>,  <45.317181, 42.412746, 33.854416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479576, 42.539768, 33.147038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.080215, 42.533863, 33.125229>,  <44.840599, 42.530319, 33.112144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.080215, 42.533863, 33.125229>,  <45.479576, 42.539768, 33.147038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080215, 42.533863, 33.125229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014727, 0.863810, -0.503603,
		0.054535, -0.503602, -0.862213,
		-0.998403, -0.014766, -0.054524,
		44.780693, 42.529434, 33.108871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332150, 42.591625, 32.479469>,  <45.479576, 42.539768, 33.147038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332150, 42.591625, 32.479469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.004581, 42.714539, 32.673355>,  <44.808041, 42.788288, 32.789684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.004581, 42.714539, 32.673355>,  <45.332150, 42.591625, 32.479469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004581, 42.714539, 32.673355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065448, 0.889077, -0.453055,
		-0.570160, -0.339294, -0.748196,
		-0.818922, 0.307282, 0.484710,
		44.758904, 42.806725, 32.818768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973705, 42.942947, 31.963480>,  <45.332150, 42.591625, 32.479469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973705, 42.942947, 31.963480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827847, 43.066616, 32.314808>,  <44.740334, 43.140816, 32.525604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827847, 43.066616, 32.314808>,  <44.973705, 42.942947, 31.963480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827847, 43.066616, 32.314808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207953, 0.946483, -0.246830,
		-0.907629, 0.092645, -0.409422,
		-0.364644, 0.309171, 0.878321,
		44.718452, 43.159367, 32.578304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.525192, 39.034859, 35.290314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196430, 38.807053, 35.285873>,  <35.999172, 38.670368, 35.283211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196430, 38.807053, 35.285873>,  <36.525192, 39.034859, 35.290314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196430, 38.807053, 35.285873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508407, -0.724646, -0.465200,
		0.256896, -0.387993, 0.885136,
		-0.821904, -0.569517, -0.011100,
		35.949860, 38.636196, 35.282543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757259, 38.429253, 35.613373>,  <36.525192, 39.034859, 35.290314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757259, 38.429253, 35.613373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430805, 38.342529, 35.399117>,  <36.234932, 38.290493, 35.270565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430805, 38.342529, 35.399117>,  <36.757259, 38.429253, 35.613373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430805, 38.342529, 35.399117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490960, -0.749029, -0.444875,
		-0.304754, -0.626057, 0.717758,
		-0.816139, -0.216812, -0.535639,
		36.185963, 38.277485, 35.238426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715664, 37.729195, 35.642830>,  <36.757259, 38.429253, 35.613373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715664, 37.729195, 35.642830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506207, 37.809807, 35.311726>,  <36.380531, 37.858173, 35.113064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506207, 37.809807, 35.311726>,  <36.715664, 37.729195, 35.642830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506207, 37.809807, 35.311726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537658, -0.675515, -0.504583,
		-0.660848, -0.709273, 0.245379,
		-0.523645, 0.201523, -0.827759,
		36.349113, 37.870266, 35.063396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599300, 37.145767, 35.303795>,  <36.715664, 37.729195, 35.642830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599300, 37.145767, 35.303795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510082, 37.388691, 34.998791>,  <36.456551, 37.534443, 34.815788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510082, 37.388691, 34.998791>,  <36.599300, 37.145767, 35.303795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510082, 37.388691, 34.998791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505596, -0.596709, -0.623146,
		-0.833440, -0.524516, -0.173958,
		-0.223048, 0.607307, -0.762514,
		36.443169, 37.570885, 34.770035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725494, 36.750603, 34.775414>,  <36.599300, 37.145767, 35.303795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725494, 36.750603, 34.775414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648357, 37.083698, 34.567814>,  <36.602074, 37.283554, 34.443253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648357, 37.083698, 34.567814>,  <36.725494, 36.750603, 34.775414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648357, 37.083698, 34.567814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440841, -0.399017, -0.804018,
		-0.876625, -0.383847, -0.290156,
		-0.192842, 0.832735, -0.519004,
		36.590504, 37.333519, 34.412113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403664, 36.577492, 34.035686>,  <36.725494, 36.750603, 34.775414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403664, 36.577492, 34.035686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558987, 36.944027, 33.996624>,  <36.652180, 37.163948, 33.973186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558987, 36.944027, 33.996624>,  <36.403664, 36.577492, 34.035686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558987, 36.944027, 33.996624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270640, -0.214699, -0.938434,
		-0.880892, 0.337971, -0.331368,
		0.388307, 0.916341, -0.097658,
		36.675480, 37.218929, 33.967327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183151, 36.833641, 33.376244>,  <36.403664, 36.577492, 34.035686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183151, 36.833641, 33.376244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488892, 37.073742, 33.470451>,  <36.672337, 37.217804, 33.526978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488892, 37.073742, 33.470451>,  <36.183151, 36.833641, 33.376244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488892, 37.073742, 33.470451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301806, -0.010263, -0.953314,
		-0.569810, 0.799746, -0.189004,
		0.764349, 0.600251, 0.235520,
		36.718197, 37.253819, 33.541107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151527, 37.400620, 32.977055>,  <36.183151, 36.833641, 33.376244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151527, 37.400620, 32.977055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533199, 37.403549, 33.096718>,  <36.762203, 37.405308, 33.168514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533199, 37.403549, 33.096718>,  <36.151527, 37.400620, 32.977055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533199, 37.403549, 33.096718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295964, 0.124499, -0.947051,
		-0.044177, 0.992193, 0.116628,
		0.954177, 0.007320, 0.299154,
		36.819454, 37.405746, 33.186462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496098, 37.864685, 32.524601>,  <36.151527, 37.400620, 32.977055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496098, 37.864685, 32.524601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783813, 37.644447, 32.694054>,  <36.956444, 37.512306, 32.795723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783813, 37.644447, 32.694054>,  <36.496098, 37.864685, 32.524601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783813, 37.644447, 32.694054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430731, -0.124978, -0.893785,
		0.545058, 0.825364, 0.147262,
		0.719293, -0.550595, 0.423630,
		36.999603, 37.479267, 32.821144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286762, 38.150188, 32.388981>,  <36.496098, 37.864685, 32.524601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286762, 38.150188, 32.388981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305290, 37.754711, 32.446030>,  <37.316406, 37.517426, 32.480259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305290, 37.754711, 32.446030>,  <37.286762, 38.150188, 32.388981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305290, 37.754711, 32.446030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339605, -0.118683, -0.933050,
		0.939427, 0.091650, 0.330268,
		0.046317, -0.988693, 0.142618,
		37.319183, 37.458103, 32.488815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875523, 37.959770, 31.972691>,  <37.286762, 38.150188, 32.388981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875523, 37.959770, 31.972691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716518, 37.600956, 32.049961>,  <37.621117, 37.385670, 32.096325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716518, 37.600956, 32.049961>,  <37.875523, 37.959770, 31.972691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716518, 37.600956, 32.049961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313498, -0.330622, -0.890173,
		0.862383, -0.293293, 0.412644,
		-0.397511, -0.897033, 0.193176,
		37.597263, 37.331844, 32.107914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451977, 37.480301, 32.041191>,  <37.875523, 37.959770, 31.972691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451977, 37.480301, 32.041191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102715, 37.348049, 31.897928>,  <37.893158, 37.268696, 31.811970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102715, 37.348049, 31.897928>,  <38.451977, 37.480301, 32.041191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102715, 37.348049, 31.897928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419977, -0.137346, -0.897082,
		0.247413, -0.933712, 0.258783,
		-0.873159, -0.330632, -0.358156,
		37.840767, 37.248859, 31.790482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940056, 37.383114, 32.639156>,  <38.451977, 37.480301, 32.041191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940056, 37.383114, 32.639156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314373, 37.435623, 32.770039>,  <39.538963, 37.467129, 32.848568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314373, 37.435623, 32.770039>,  <38.940056, 37.383114, 32.639156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314373, 37.435623, 32.770039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305854, 0.159312, -0.938655,
		-0.175347, 0.978461, 0.108932,
		0.935792, 0.131273, 0.327201,
		39.595112, 37.475006, 32.868198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250965, 38.039867, 32.457409>,  <38.940056, 37.383114, 32.639156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250965, 38.039867, 32.457409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591618, 37.961838, 32.262814>,  <39.796009, 37.915020, 32.146057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591618, 37.961838, 32.262814>,  <39.250965, 38.039867, 32.457409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591618, 37.961838, 32.262814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071161, -0.876537, 0.476045,
		-0.519293, -0.440033, -0.732602,
		0.851628, -0.195074, -0.486493,
		39.847107, 37.903316, 32.116867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586014, 37.386112, 32.252228>,  <39.250965, 38.039867, 32.457409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586014, 37.386112, 32.252228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966015, 37.508492, 32.277195>,  <40.194016, 37.581921, 32.292175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966015, 37.508492, 32.277195>,  <39.586014, 37.386112, 32.252228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966015, 37.508492, 32.277195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006722, -0.219873, 0.975505,
		0.312181, -0.926309, -0.210936,
		0.949999, 0.305952, 0.062413,
		40.251015, 37.600277, 32.295918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968777, 36.834850, 32.613281>,  <39.586014, 37.386112, 32.252228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968777, 36.834850, 32.613281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185619, 37.168167, 32.656624>,  <40.315727, 37.368156, 32.682629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185619, 37.168167, 32.656624>,  <39.968777, 36.834850, 32.613281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185619, 37.168167, 32.656624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054759, -0.093639, 0.994099,
		0.838521, -0.544845, -0.005132,
		0.542111, 0.833292, 0.108353,
		40.348251, 37.418156, 32.689129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489429, 36.706772, 33.029938>,  <39.968777, 36.834850, 32.613281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489429, 36.706772, 33.029938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439178, 37.101402, 33.071686>,  <40.409027, 37.338181, 33.096733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439178, 37.101402, 33.071686>,  <40.489429, 36.706772, 33.029938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439178, 37.101402, 33.071686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253292, -0.133613, 0.958118,
		0.959199, 0.093926, 0.266676,
		-0.125624, 0.986573, 0.104371,
		40.401493, 37.397373, 33.102997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936069, 36.868416, 33.574505>,  <40.489429, 36.706772, 33.029938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936069, 36.868416, 33.574505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647865, 37.144852, 33.551636>,  <40.474945, 37.310715, 33.537914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647865, 37.144852, 33.551636>,  <40.936069, 36.868416, 33.574505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647865, 37.144852, 33.551636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195651, -0.123499, 0.972866,
		0.665276, 0.712141, 0.224194,
		-0.720506, 0.691088, -0.057171,
		40.431713, 37.352177, 33.534485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943932, 37.228748, 34.171745>,  <40.936069, 36.868416, 33.574505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943932, 37.228748, 34.171745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570778, 37.295597, 34.044121>,  <40.346886, 37.335709, 33.967545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570778, 37.295597, 34.044121>,  <40.943932, 37.228748, 34.171745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570778, 37.295597, 34.044121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309278, 0.082327, 0.947402,
		0.184601, 0.982493, -0.025114,
		-0.932882, 0.167124, -0.319061,
		40.290913, 37.345734, 33.948402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575542, 37.629128, 34.732708>,  <40.943932, 37.228748, 34.171745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575542, 37.629128, 34.732708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270187, 37.502911, 34.507259>,  <40.086975, 37.427181, 34.371990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270187, 37.502911, 34.507259>,  <40.575542, 37.629128, 34.732708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270187, 37.502911, 34.507259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626402, 0.148658, 0.765193,
		-0.157662, 0.937195, -0.311139,
		-0.763389, -0.315540, -0.563624,
		40.041172, 37.408249, 34.338173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120731, 38.100716, 34.937008>,  <40.575542, 37.629128, 34.732708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120731, 38.100716, 34.937008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930088, 37.780884, 34.790848>,  <39.815701, 37.588985, 34.703152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930088, 37.780884, 34.790848>,  <40.120731, 38.100716, 34.937008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930088, 37.780884, 34.790848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659904, 0.050776, 0.749632,
		-0.580837, 0.598409, -0.551847,
		-0.476607, -0.799581, -0.365400,
		39.787106, 37.541008, 34.681229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440365, 38.299900, 34.996304>,  <40.120731, 38.100716, 34.937008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440365, 38.299900, 34.996304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423721, 37.902657, 34.952492>,  <39.413734, 37.664310, 34.926205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423721, 37.902657, 34.952492>,  <39.440365, 38.299900, 34.996304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423721, 37.902657, 34.952492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699000, -0.049393, 0.713414,
		-0.713910, 0.106242, -0.692131,
		-0.041608, -0.993113, -0.109525,
		39.411240, 37.604721, 34.919636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710400, 38.188843, 34.882896>,  <39.440365, 38.299900, 34.996304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710400, 38.188843, 34.882896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908657, 37.872028, 35.025455>,  <39.027611, 37.681938, 35.110989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908657, 37.872028, 35.025455>,  <38.710400, 38.188843, 34.882896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908657, 37.872028, 35.025455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568642, 0.014238, 0.822462,
		-0.656495, -0.610306, -0.443329,
		0.495641, -0.792037, 0.356393,
		39.057350, 37.634418, 35.132374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192497, 37.634140, 34.916409>,  <38.710400, 38.188843, 34.882896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192497, 37.634140, 34.916409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461185, 37.472076, 35.164486>,  <38.622398, 37.374840, 35.313332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461185, 37.472076, 35.164486>,  <38.192497, 37.634140, 34.916409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461185, 37.472076, 35.164486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678366, -0.000004, 0.734724,
		-0.297675, -0.914248, -0.274846,
		0.671721, -0.405156, 0.620194,
		38.662701, 37.350529, 35.350544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927891, 37.064453, 35.289806>,  <38.192497, 37.634140, 34.916409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927891, 37.064453, 35.289806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231956, 37.176914, 35.524105>,  <38.414394, 37.244392, 35.664684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231956, 37.176914, 35.524105>,  <37.927891, 37.064453, 35.289806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231956, 37.176914, 35.524105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609363, -0.004317, 0.792880,
		0.225449, -0.959654, 0.168042,
		0.760164, 0.281152, 0.585751,
		38.460007, 37.261261, 35.699829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861633, 36.740604, 35.873341>,  <37.927891, 37.064453, 35.289806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861633, 36.740604, 35.873341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112240, 37.021893, 36.007782>,  <38.262604, 37.190666, 36.088448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112240, 37.021893, 36.007782>,  <37.861633, 36.740604, 35.873341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112240, 37.021893, 36.007782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524192, 0.061041, 0.849409,
		0.576804, -0.708349, 0.406865,
		0.626514, 0.703218, 0.336102,
		38.300194, 37.232857, 36.108612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824352, 36.635841, 36.575138>,  <37.861633, 36.740604, 35.873341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824352, 36.635841, 36.575138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987957, 36.997051, 36.522594>,  <38.086121, 37.213779, 36.491070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987957, 36.997051, 36.522594>,  <37.824352, 36.635841, 36.575138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987957, 36.997051, 36.522594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556230, 0.360826, 0.748607,
		0.723410, -0.233121, 0.649871,
		0.409007, 0.903028, -0.131356,
		38.110661, 37.267960, 36.483189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923336, 36.980724, 37.201550>,  <37.824352, 36.635841, 36.575138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923336, 36.980724, 37.201550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925472, 37.312450, 36.978046>,  <37.926754, 37.511486, 36.843945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925472, 37.312450, 36.978046>,  <37.923336, 36.980724, 37.201550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925472, 37.312450, 36.978046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631043, 0.436253, 0.641458,
		0.775729, 0.349173, 0.525663,
		0.005342, 0.829314, -0.558757,
		37.927074, 37.561245, 36.810421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401794, 36.378651, 37.132805>,  <37.923336, 36.980724, 37.201550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401794, 36.378651, 37.132805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106136, 36.193890, 37.328892>,  <37.928741, 36.083035, 37.446545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106136, 36.193890, 37.328892>,  <38.401794, 36.378651, 37.132805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106136, 36.193890, 37.328892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099002, -0.794416, -0.599251,
		0.666232, -0.394400, 0.632917,
		-0.739143, -0.461901, 0.490219,
		37.884392, 36.055321, 37.475956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659569, 35.699646, 37.150532>,  <38.401794, 36.378651, 37.132805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659569, 35.699646, 37.150532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259838, 35.705757, 37.163864>,  <38.020000, 35.709423, 37.171864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259838, 35.705757, 37.163864>,  <38.659569, 35.699646, 37.150532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259838, 35.705757, 37.163864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033594, -0.745627, -0.665516,
		0.014685, -0.666188, 0.745639,
		-0.999328, 0.015276, 0.033329,
		37.960041, 35.710339, 37.173862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467804, 35.004383, 37.089458>,  <38.659569, 35.699646, 37.150532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467804, 35.004383, 37.089458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130478, 35.199070, 36.998310>,  <37.928082, 35.315880, 36.943619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130478, 35.199070, 36.998310>,  <38.467804, 35.004383, 37.089458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130478, 35.199070, 36.998310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209921, -0.688662, -0.694030,
		-0.494722, -0.537451, 0.682932,
		-0.843317, 0.486714, -0.227874,
		37.877483, 35.345085, 36.929947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893764, 34.516895, 37.147522>,  <38.467804, 35.004383, 37.089458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893764, 34.516895, 37.147522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806114, 34.820881, 36.902756>,  <37.753525, 35.003273, 36.755898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806114, 34.820881, 36.902756>,  <37.893764, 34.516895, 37.147522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806114, 34.820881, 36.902756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260962, -0.649958, -0.713760,
		-0.940150, 0.003284, 0.340744,
		-0.219126, 0.759963, -0.611915,
		37.740376, 35.048870, 36.719181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253571, 34.330173, 36.945000>,  <37.893764, 34.516895, 37.147522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253571, 34.330173, 36.945000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383194, 34.582962, 36.663406>,  <37.460968, 34.734634, 36.494450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383194, 34.582962, 36.663406>,  <37.253571, 34.330173, 36.945000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383194, 34.582962, 36.663406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322762, -0.625636, -0.710214,
		-0.889276, 0.457370, 0.001236,
		0.324057, 0.631975, -0.703984,
		37.480412, 34.772556, 36.452209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826164, 34.247612, 36.420986>,  <37.253571, 34.330173, 36.945000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826164, 34.247612, 36.420986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126572, 34.429932, 36.229897>,  <37.306816, 34.539322, 36.115242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126572, 34.429932, 36.229897>,  <36.826164, 34.247612, 36.420986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126572, 34.429932, 36.229897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079942, -0.655427, -0.751016,
		-0.655427, 0.602215, -0.455798,
		0.751016, 0.455798, -0.477727,
		37.351875, 34.566669, 36.086578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601311, 34.403015, 35.726940>,  <36.826164, 34.247612, 36.420986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601311, 34.403015, 35.726940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997414, 34.436798, 35.682659>,  <37.235077, 34.457069, 35.656090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997414, 34.436798, 35.682659>,  <36.601311, 34.403015, 35.726940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997414, 34.436798, 35.682659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048644, -0.535121, -0.843373,
		-0.130472, 0.840542, -0.525800,
		0.990258, 0.084460, -0.110706,
		37.294491, 34.462135, 35.649448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742313, 34.478916, 35.042755>,  <36.601311, 34.403015, 35.726940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742313, 34.478916, 35.042755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105423, 34.372097, 35.172142>,  <37.323288, 34.308006, 35.249775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105423, 34.372097, 35.172142>,  <36.742313, 34.478916, 35.042755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105423, 34.372097, 35.172142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176476, -0.456437, -0.872079,
		0.380533, 0.848734, -0.367213,
		0.907772, -0.267050, 0.323471,
		37.377754, 34.291981, 35.269184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306435, 34.672581, 34.415794>,  <36.742313, 34.478916, 35.042755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306435, 34.672581, 34.415794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463795, 34.385281, 34.645355>,  <37.558208, 34.212902, 34.783092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463795, 34.385281, 34.645355>,  <37.306435, 34.672581, 34.415794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463795, 34.385281, 34.645355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306952, -0.485801, -0.818399,
		0.866614, 0.498116, 0.029355,
		0.393397, -0.718247, 0.573900,
		37.581814, 34.169807, 34.817524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975685, 34.585724, 34.140335>,  <37.306435, 34.672581, 34.415794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975685, 34.585724, 34.140335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879803, 34.243675, 34.324207>,  <37.822273, 34.038448, 34.434532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879803, 34.243675, 34.324207>,  <37.975685, 34.585724, 34.140335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879803, 34.243675, 34.324207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283324, -0.514494, -0.809335,
		0.928583, -0.063766, 0.365606,
		-0.239710, -0.855120, 0.459684,
		37.807888, 33.987141, 34.462112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421261, 34.074127, 34.067966>,  <37.975685, 34.585724, 34.140335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421261, 34.074127, 34.067966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080509, 33.874687, 34.132088>,  <37.876057, 33.755024, 34.170559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080509, 33.874687, 34.132088>,  <38.421261, 34.074127, 34.067966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080509, 33.874687, 34.132088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182314, -0.569248, -0.801697,
		0.490978, -0.653725, 0.575833,
		-0.851882, -0.498598, 0.160305,
		37.824944, 33.725109, 34.180180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526619, 33.321945, 34.155235>,  <38.421261, 34.074127, 34.067966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526619, 33.321945, 34.155235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195545, 33.441509, 33.965248>,  <37.996902, 33.513248, 33.851257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195545, 33.441509, 33.965248>,  <38.526619, 33.321945, 34.155235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195545, 33.441509, 33.965248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192969, -0.643158, -0.741020,
		-0.526975, -0.704984, 0.474651,
		-0.827683, 0.298907, -0.474968,
		37.947239, 33.531181, 33.822758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.338459, 37.363930, 41.119907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991016, 37.199757, 41.008869>,  <36.782551, 37.101254, 40.942245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991016, 37.199757, 41.008869>,  <37.338459, 37.363930, 41.119907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991016, 37.199757, 41.008869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481357, -0.566100, -0.669198,
		0.117514, -0.714896, 0.689286,
		-0.868611, -0.410433, -0.277596,
		36.730434, 37.076626, 40.925591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390759, 36.620651, 41.118137>,  <37.338459, 37.363930, 41.119907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390759, 36.620651, 41.118137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097034, 36.717686, 40.864544>,  <36.920799, 36.775906, 40.712387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097034, 36.717686, 40.864544>,  <37.390759, 36.620651, 41.118137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097034, 36.717686, 40.864544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460890, -0.507518, -0.728015,
		-0.498353, -0.826792, 0.260882,
		-0.734320, 0.242570, -0.633983,
		36.876740, 36.790462, 40.674347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358391, 35.962116, 40.782799>,  <37.390759, 36.620651, 41.118137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358391, 35.962116, 40.782799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133575, 36.202221, 40.555183>,  <36.998688, 36.346283, 40.418613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133575, 36.202221, 40.555183>,  <37.358391, 35.962116, 40.782799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133575, 36.202221, 40.555183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273662, -0.514276, -0.812791,
		-0.780530, -0.612540, 0.124772,
		-0.562034, 0.600262, -0.569037,
		36.964966, 36.382301, 40.384472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008327, 35.677834, 40.178799>,  <37.358391, 35.962116, 40.782799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008327, 35.677834, 40.178799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010128, 36.062305, 40.068443>,  <37.011208, 36.292988, 40.002232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010128, 36.062305, 40.068443>,  <37.008327, 35.677834, 40.178799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010128, 36.062305, 40.068443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459863, -0.246981, -0.852952,
		-0.887978, -0.123028, -0.443124,
		0.004506, 0.961179, -0.275890,
		37.011478, 36.350658, 39.985676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756012, 35.604866, 39.549599>,  <37.008327, 35.677834, 40.178799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756012, 35.604866, 39.549599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920597, 35.969437, 39.550488>,  <37.019348, 36.188179, 39.551022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920597, 35.969437, 39.550488>,  <36.756012, 35.604866, 39.549599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920597, 35.969437, 39.550488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206344, -0.090778, -0.974260,
		-0.887763, 0.401328, -0.225418,
		0.411461, 0.911425, 0.002222,
		37.044037, 36.242863, 39.551155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287872, 36.019371, 39.029350>,  <36.756012, 35.604866, 39.549599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287872, 36.019371, 39.029350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.645676, 36.193069, 39.071835>,  <36.860359, 36.297291, 39.097324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.645676, 36.193069, 39.071835>,  <36.287872, 36.019371, 39.029350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645676, 36.193069, 39.071835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048776, 0.141366, -0.988755,
		-0.444382, 0.889630, 0.105272,
		0.894508, 0.434250, 0.106213,
		36.914028, 36.323345, 39.103699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284599, 36.525391, 38.560093>,  <36.287872, 36.019371, 39.029350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284599, 36.525391, 38.560093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.669907, 36.454952, 38.641197>,  <36.901089, 36.412689, 38.689861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.669907, 36.454952, 38.641197>,  <36.284599, 36.525391, 38.560093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669907, 36.454952, 38.641197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213528, 0.044321, -0.975931,
		0.162872, 0.983375, 0.080295,
		0.963264, -0.176097, 0.202759,
		36.958885, 36.402122, 38.702026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659760, 37.024136, 38.151295>,  <36.284599, 36.525391, 38.560093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659760, 37.024136, 38.151295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960403, 36.767681, 38.213299>,  <37.140789, 36.613808, 38.250500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960403, 36.767681, 38.213299>,  <36.659760, 37.024136, 38.151295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960403, 36.767681, 38.213299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201759, -0.000276, -0.979435,
		0.627990, 0.767430, 0.129147,
		0.751613, -0.641132, 0.155009,
		37.185886, 36.575340, 38.259800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333927, 37.243896, 37.765873>,  <36.659760, 37.024136, 38.151295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333927, 37.243896, 37.765873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368793, 36.851521, 37.835335>,  <37.389713, 36.616093, 37.877010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368793, 36.851521, 37.835335>,  <37.333927, 37.243896, 37.765873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368793, 36.851521, 37.835335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209527, -0.152361, -0.965860,
		0.973910, 0.120574, 0.192253,
		0.087166, -0.980942, 0.173650,
		37.394943, 36.557240, 37.887428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107773, 37.618153, 37.757572>,  <37.333927, 37.243896, 37.765873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107773, 37.618153, 37.757572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.941975, 37.757565, 37.421307>,  <37.842495, 37.841209, 37.219547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.941975, 37.757565, 37.421307>,  <38.107773, 37.618153, 37.757572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941975, 37.757565, 37.421307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453654, 0.721669, 0.522868,
		0.788919, 0.598098, -0.141016,
		-0.414494, 0.348528, -0.840668,
		37.817627, 37.862122, 37.169106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251087, 38.236732, 37.789562>,  <38.107773, 37.618153, 37.757572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251087, 38.236732, 37.789562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913807, 38.200550, 37.577587>,  <37.711441, 38.178841, 37.450401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913807, 38.200550, 37.577587>,  <38.251087, 38.236732, 37.789562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913807, 38.200550, 37.577587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439089, 0.684642, 0.581779,
		0.310192, 0.723245, -0.617007,
		-0.843197, -0.090458, -0.529939,
		37.660847, 38.173412, 37.418606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034153, 38.876064, 37.819431>,  <38.251087, 38.236732, 37.789562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034153, 38.876064, 37.819431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700569, 38.684292, 37.710144>,  <37.500420, 38.569229, 37.644573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700569, 38.684292, 37.710144>,  <38.034153, 38.876064, 37.819431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700569, 38.684292, 37.710144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547381, 0.656075, 0.519558,
		-0.069844, 0.582845, -0.809576,
		-0.833964, -0.479434, -0.273215,
		37.450378, 38.540462, 37.628178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560726, 39.364597, 37.869568>,  <38.034153, 38.876064, 37.819431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560726, 39.364597, 37.869568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312267, 39.051132, 37.872272>,  <37.163193, 38.863052, 37.873894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312267, 39.051132, 37.872272>,  <37.560726, 39.364597, 37.869568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312267, 39.051132, 37.872272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568186, 0.456265, 0.684826,
		-0.539754, 0.421542, -0.728676,
		-0.621152, -0.783661, 0.006757,
		37.125923, 38.816032, 37.874298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893162, 39.590019, 37.539608>,  <37.560726, 39.364597, 37.869568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893162, 39.590019, 37.539608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798912, 39.272099, 37.763309>,  <36.742363, 39.081345, 37.897530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798912, 39.272099, 37.763309>,  <36.893162, 39.590019, 37.539608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798912, 39.272099, 37.763309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624226, 0.564830, 0.539731,
		-0.744864, -0.221925, -0.629228,
		-0.235627, -0.794806, 0.559253,
		36.728226, 39.033657, 37.931084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179260, 39.543556, 37.626572>,  <36.893162, 39.590019, 37.539608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179260, 39.543556, 37.626572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.302673, 39.332298, 37.943020>,  <36.376720, 39.205544, 38.132889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.302673, 39.332298, 37.943020>,  <36.179260, 39.543556, 37.626572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302673, 39.332298, 37.943020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670337, 0.469353, 0.574767,
		-0.674874, -0.707651, -0.209225,
		0.308534, -0.528146, 0.791119,
		36.395233, 39.173855, 38.180355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632576, 39.492516, 37.914745>,  <36.179260, 39.543556, 37.626572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632576, 39.492516, 37.914745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864162, 39.367008, 38.215771>,  <36.003113, 39.291706, 38.396385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864162, 39.367008, 38.215771>,  <35.632576, 39.492516, 37.914745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864162, 39.367008, 38.215771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707726, 0.264938, 0.654928,
		-0.404878, -0.911788, -0.068672,
		0.578962, -0.313767, 0.752564,
		36.037849, 39.272877, 38.441540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188992, 39.173763, 38.404736>,  <35.632576, 39.492516, 37.914745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188992, 39.173763, 38.404736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515514, 39.248489, 38.623367>,  <35.711430, 39.293327, 38.754547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515514, 39.248489, 38.623367>,  <35.188992, 39.173763, 38.404736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515514, 39.248489, 38.623367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560304, 0.486057, 0.670677,
		-0.140373, -0.853726, 0.501445,
		0.816306, 0.186817, 0.546575,
		35.760406, 39.304535, 38.787338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050079, 38.980289, 39.119343>,  <35.188992, 39.173763, 38.404736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050079, 38.980289, 39.119343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335999, 39.259521, 39.136032>,  <35.507549, 39.427059, 39.146046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335999, 39.259521, 39.136032>,  <35.050079, 38.980289, 39.119343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335999, 39.259521, 39.136032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455857, 0.419872, 0.784794,
		0.530334, -0.579990, 0.618351,
		0.714801, 0.698083, 0.041720,
		35.550438, 39.468945, 39.148548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179932, 38.959385, 39.822060>,  <35.050079, 38.980289, 39.119343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179932, 38.959385, 39.822060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.332535, 39.311085, 39.707954>,  <35.424095, 39.522102, 39.639492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.332535, 39.311085, 39.707954>,  <35.179932, 38.959385, 39.822060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332535, 39.311085, 39.707954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421187, 0.440060, 0.793063,
		0.822832, -0.182409, 0.538214,
		0.381508, 0.879246, -0.285267,
		35.446987, 39.574860, 39.622375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521851, 39.208534, 40.449005>,  <35.179932, 38.959385, 39.822060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521851, 39.208534, 40.449005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447945, 39.507332, 40.193550>,  <35.403603, 39.686611, 40.040276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447945, 39.507332, 40.193550>,  <35.521851, 39.208534, 40.449005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447945, 39.507332, 40.193550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415264, 0.529631, 0.739626,
		0.890740, 0.401862, 0.212342,
		-0.184765, 0.746993, -0.638642,
		35.392517, 39.731430, 40.001957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791729, 39.842773, 40.824387>,  <35.521851, 39.208534, 40.449005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791729, 39.842773, 40.824387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.508568, 39.932983, 40.556652>,  <35.338669, 39.987110, 40.396011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.508568, 39.932983, 40.556652>,  <35.791729, 39.842773, 40.824387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508568, 39.932983, 40.556652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445695, 0.592524, 0.671022,
		0.547927, 0.773340, -0.318938,
		-0.707906, 0.225522, -0.669334,
		35.296196, 40.000641, 40.355850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723499, 40.610378, 40.828537>,  <35.791729, 39.842773, 40.824387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723499, 40.610378, 40.828537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384411, 40.453369, 40.685825>,  <35.180958, 40.359165, 40.600197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384411, 40.453369, 40.685825>,  <35.723499, 40.610378, 40.828537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384411, 40.453369, 40.685825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522123, 0.498845, 0.691767,
		-0.093551, 0.772711, -0.627826,
		-0.847724, -0.392518, -0.356783,
		35.130093, 40.335613, 40.578789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302925, 41.191837, 40.883640>,  <35.723499, 40.610378, 40.828537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302925, 41.191837, 40.883640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.040970, 40.893898, 40.832550>,  <34.883797, 40.715134, 40.801895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.040970, 40.893898, 40.832550>,  <35.302925, 41.191837, 40.883640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040970, 40.893898, 40.832550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462495, 0.261360, 0.847225,
		-0.597674, 0.613913, -0.515652,
		-0.654893, -0.744850, -0.127724,
		34.844501, 40.670444, 40.794231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.627724, 37.293011, 39.359859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.995924, 37.446224, 39.328976>,  <29.216845, 37.538155, 39.310448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.995924, 37.446224, 39.328976>,  <28.627724, 37.293011, 39.359859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995924, 37.446224, 39.328976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062058, -0.338394, -0.938956,
		-0.385779, 0.859519, -0.335262,
		0.920502, 0.383036, -0.077205,
		29.272074, 37.561134, 39.305813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699673, 37.572201, 38.617664>,  <28.627724, 37.293011, 39.359859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699673, 37.572201, 38.617664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.070858, 37.538582, 38.762890>,  <29.293570, 37.518410, 38.850025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.070858, 37.538582, 38.762890>,  <28.699673, 37.572201, 38.617664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070858, 37.538582, 38.762890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335278, -0.237048, -0.911810,
		0.162696, 0.967856, -0.191794,
		0.927965, -0.084044, 0.363068,
		29.349247, 37.513371, 38.871811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070841, 37.834534, 38.031956>,  <28.699673, 37.572201, 38.617664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070841, 37.834534, 38.031956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.342337, 37.633434, 38.246078>,  <29.505234, 37.512775, 38.374554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.342337, 37.633434, 38.246078>,  <29.070841, 37.834534, 38.031956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342337, 37.633434, 38.246078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526861, -0.174441, -0.831858,
		0.511595, 0.846649, 0.146479,
		0.678739, -0.502749, 0.535309,
		29.545958, 37.482609, 38.406670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793171, 37.933064, 37.771389>,  <29.070841, 37.834534, 38.031956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793171, 37.933064, 37.771389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.845215, 37.586330, 37.963921>,  <29.876442, 37.378292, 38.079441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.845215, 37.586330, 37.963921>,  <29.793171, 37.933064, 37.771389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845215, 37.586330, 37.963921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616088, -0.309684, -0.724246,
		0.776857, 0.390774, 0.493749,
		0.130110, -0.866828, 0.481331,
		29.884249, 37.326283, 38.108318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483047, 37.790760, 37.734261>,  <29.793171, 37.933064, 37.771389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483047, 37.790760, 37.734261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.322763, 37.432755, 37.812634>,  <30.226593, 37.217953, 37.859657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.322763, 37.432755, 37.812634>,  <30.483047, 37.790760, 37.734261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322763, 37.432755, 37.812634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465674, -0.383120, -0.797726,
		0.789038, -0.228416, 0.570302,
		-0.400708, -0.895011, 0.195929,
		30.202551, 37.164249, 37.871410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018190, 37.256123, 37.707527>,  <30.483047, 37.790760, 37.734261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018190, 37.256123, 37.707527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.677338, 37.053055, 37.656700>,  <30.472826, 36.931213, 37.626205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.677338, 37.053055, 37.656700>,  <31.018190, 37.256123, 37.707527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677338, 37.053055, 37.656700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449169, -0.584894, -0.675386,
		0.268552, -0.632592, 0.726435,
		-0.852131, -0.507668, -0.127067,
		30.421698, 36.900753, 37.618580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295675, 36.580074, 37.653881>,  <31.018190, 37.256123, 37.707527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295675, 36.580074, 37.653881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.925636, 36.587433, 37.502167>,  <30.703613, 36.591846, 37.411137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.925636, 36.587433, 37.502167>,  <31.295675, 36.580074, 37.653881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925636, 36.587433, 37.502167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310601, -0.537966, -0.783658,
		-0.218457, -0.842766, 0.491957,
		-0.925097, 0.018393, -0.379286,
		30.648108, 36.592949, 37.388382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148542, 35.961525, 37.428146>,  <31.295675, 36.580074, 37.653881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148542, 35.961525, 37.428146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.870129, 36.163830, 37.224285>,  <30.703081, 36.285213, 37.101971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.870129, 36.163830, 37.224285>,  <31.148542, 35.961525, 37.428146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870129, 36.163830, 37.224285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298508, -0.441725, -0.846033,
		-0.653017, -0.741001, 0.156481,
		-0.696033, 0.505763, -0.509648,
		30.661318, 36.315559, 37.071392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979012, 35.511837, 36.962536>,  <31.148542, 35.961525, 37.428146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979012, 35.511837, 36.962536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.857603, 35.854782, 36.796253>,  <30.784758, 36.060547, 36.696484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.857603, 35.854782, 36.796253>,  <30.979012, 35.511837, 36.962536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857603, 35.854782, 36.796253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203506, -0.367890, -0.907327,
		-0.930839, -0.359990, -0.062816,
		-0.303519, 0.857359, -0.415707,
		30.766546, 36.111988, 36.671539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577990, 35.306942, 36.451126>,  <30.979012, 35.511837, 36.962536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577990, 35.306942, 36.451126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626717, 35.689533, 36.345066>,  <30.655952, 35.919090, 36.281429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626717, 35.689533, 36.345066>,  <30.577990, 35.306942, 36.451126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626717, 35.689533, 36.345066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319765, -0.290718, -0.901795,
		-0.939633, 0.025069, -0.341264,
		0.121819, 0.956481, -0.265152,
		30.663261, 35.976479, 36.265522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230347, 35.356968, 35.739201>,  <30.577990, 35.306942, 36.451126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230347, 35.356968, 35.739201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.495527, 35.653454, 35.781349>,  <30.654634, 35.831345, 35.806637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.495527, 35.653454, 35.781349>,  <30.230347, 35.356968, 35.739201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495527, 35.653454, 35.781349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233127, -0.070636, -0.969878,
		-0.711442, 0.667544, -0.219624,
		0.662950, 0.741212, 0.105369,
		30.694412, 35.875816, 35.812962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140135, 35.893719, 35.150967>,  <30.230347, 35.356968, 35.739201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140135, 35.893719, 35.150967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.506504, 35.936062, 35.305824>,  <30.726326, 35.961468, 35.398739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.506504, 35.936062, 35.305824>,  <30.140135, 35.893719, 35.150967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506504, 35.936062, 35.305824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369046, 0.157062, -0.916044,
		-0.157772, 0.981899, 0.104791,
		0.915922, 0.105853, 0.387146,
		30.781281, 35.967819, 35.421967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458557, 36.498737, 34.772175>,  <30.140135, 35.893719, 35.150967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458557, 36.498737, 34.772175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.765831, 36.284977, 34.913200>,  <30.950195, 36.156719, 34.997814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.765831, 36.284977, 34.913200>,  <30.458557, 36.498737, 34.772175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765831, 36.284977, 34.913200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491689, 0.139756, -0.859483,
		0.410039, 0.833594, 0.370119,
		0.768186, -0.534405, 0.352564,
		30.996286, 36.124657, 35.018970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110758, 36.853943, 34.419559>,  <30.458557, 36.498737, 34.772175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110758, 36.853943, 34.419559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.221153, 36.489368, 34.541618>,  <31.287392, 36.270622, 34.614853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.221153, 36.489368, 34.541618>,  <31.110758, 36.853943, 34.419559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221153, 36.489368, 34.541618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438364, -0.163172, -0.883862,
		0.855375, 0.377702, 0.354507,
		0.275991, -0.911436, 0.305144,
		31.303951, 36.215939, 34.633163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825985, 37.070950, 34.677372>,  <31.110758, 36.853943, 34.419559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825985, 37.070950, 34.677372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.845285, 37.387836, 34.434040>,  <31.856867, 37.577969, 34.288040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.845285, 37.387836, 34.434040>,  <31.825985, 37.070950, 34.677372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845285, 37.387836, 34.434040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584049, 0.516445, 0.626237,
		0.810283, 0.325075, 0.487614,
		0.048252, 0.792220, -0.608326,
		31.859760, 37.625504, 34.251541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065567, 37.631119, 35.124542>,  <31.825985, 37.070950, 34.677372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065567, 37.631119, 35.124542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.909468, 37.798813, 34.796654>,  <31.815809, 37.899429, 34.599918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.909468, 37.798813, 34.796654>,  <32.065567, 37.631119, 35.124542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909468, 37.798813, 34.796654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456795, 0.684854, 0.567727,
		0.799403, 0.596000, -0.075756,
		-0.390247, 0.419238, -0.819724,
		31.792395, 37.924583, 34.550735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368652, 38.202755, 35.108040>,  <32.065567, 37.631119, 35.124542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368652, 38.202755, 35.108040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033398, 38.234287, 34.892143>,  <31.832245, 38.253208, 34.762608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.033398, 38.234287, 34.892143>,  <32.368652, 38.202755, 35.108040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033398, 38.234287, 34.892143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356291, 0.670123, 0.651146,
		0.413021, 0.738052, -0.533566,
		-0.838135, 0.078832, -0.539737,
		31.781958, 38.257938, 34.730221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371273, 38.838638, 35.009308>,  <32.368652, 38.202755, 35.108040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371273, 38.838638, 35.009308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000248, 38.697144, 34.961143>,  <31.777634, 38.612247, 34.932247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000248, 38.697144, 34.961143>,  <32.371273, 38.838638, 35.009308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000248, 38.697144, 34.961143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333596, 0.638735, 0.693348,
		-0.168356, 0.683291, -0.710472,
		-0.927561, -0.353740, -0.120408,
		31.721979, 38.591022, 34.925022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978212, 39.460880, 34.927277>,  <32.371273, 38.838638, 35.009308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978212, 39.460880, 34.927277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.704636, 39.187870, 35.030342>,  <31.540489, 39.024063, 35.092182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.704636, 39.187870, 35.030342>,  <31.978212, 39.460880, 34.927277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704636, 39.187870, 35.030342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498582, 0.695131, 0.517888,
		-0.532580, 0.225737, -0.815721,
		-0.683940, -0.682521, 0.257665,
		31.499454, 38.983112, 35.107643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339668, 39.859554, 34.775017>,  <31.978212, 39.460880, 34.927277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339668, 39.859554, 34.775017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.246914, 39.553196, 35.014896>,  <31.191261, 39.369381, 35.158825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.246914, 39.553196, 35.014896>,  <31.339668, 39.859554, 34.775017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246914, 39.553196, 35.014896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311473, 0.642503, 0.700124,
		-0.921528, -0.024439, -0.387543,
		-0.231887, -0.765893, 0.599697,
		31.177347, 39.323429, 35.194805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632977, 39.988113, 34.969208>,  <31.339668, 39.859554, 34.775017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632977, 39.988113, 34.969208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.782753, 39.753628, 35.256580>,  <30.872620, 39.612934, 35.429005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.782753, 39.753628, 35.256580>,  <30.632977, 39.988113, 34.969208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782753, 39.753628, 35.256580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439450, 0.570067, 0.694196,
		-0.816503, -0.575650, -0.044157,
		0.374442, -0.586218, 0.718431,
		30.895086, 39.577763, 35.472111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055769, 40.027882, 35.589718>,  <30.632977, 39.988113, 34.969208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055769, 40.027882, 35.589718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.384783, 39.872993, 35.756332>,  <30.582191, 39.780060, 35.856300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.384783, 39.872993, 35.756332>,  <30.055769, 40.027882, 35.589718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384783, 39.872993, 35.756332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163542, 0.540435, 0.825339,
		-0.544696, -0.746990, 0.381199,
		0.822533, -0.387216, 0.416537,
		30.631542, 39.756828, 35.881294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982393, 40.095657, 36.337368>,  <30.055769, 40.027882, 35.589718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982393, 40.095657, 36.337368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374834, 40.047108, 36.277092>,  <30.610298, 40.017979, 36.240925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374834, 40.047108, 36.277092>,  <29.982393, 40.095657, 36.337368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374834, 40.047108, 36.277092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193054, 0.561453, 0.804675,
		-0.013063, -0.818559, 0.574274,
		0.981101, -0.121378, -0.150692,
		30.669165, 40.010693, 36.231884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201265, 39.706188, 36.881813>,  <29.982393, 40.095657, 36.337368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201265, 39.706188, 36.881813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.498991, 39.930454, 36.736679>,  <30.677628, 40.065014, 36.649601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.498991, 39.930454, 36.736679>,  <30.201265, 39.706188, 36.881813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498991, 39.930454, 36.736679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176635, 0.358679, 0.916597,
		0.644045, -0.746327, 0.167937,
		0.744316, 0.560666, -0.362833,
		30.722286, 40.098652, 36.627831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758320, 39.568714, 37.318584>,  <30.201265, 39.706188, 36.881813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758320, 39.568714, 37.318584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.852209, 39.910667, 37.133511>,  <30.908543, 40.115841, 37.022465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.852209, 39.910667, 37.133511>,  <30.758320, 39.568714, 37.318584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852209, 39.910667, 37.133511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252488, 0.406029, 0.878288,
		0.938698, -0.322978, -0.120543,
		0.234724, 0.854884, -0.462686,
		30.922626, 40.167133, 36.994705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369272, 39.755527, 37.593369>,  <30.758320, 39.568714, 37.318584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369272, 39.755527, 37.593369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.223991, 40.098412, 37.447342>,  <31.136824, 40.304142, 37.359726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.223991, 40.098412, 37.447342>,  <31.369272, 39.755527, 37.593369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223991, 40.098412, 37.447342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202346, 0.455048, 0.867172,
		0.909472, 0.241089, -0.338727,
		-0.363203, 0.857209, -0.365070,
		31.115030, 40.355576, 37.337822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823925, 40.234360, 37.766182>,  <31.369272, 39.755527, 37.593369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823925, 40.234360, 37.766182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.462263, 40.401680, 37.731491>,  <31.245266, 40.502071, 37.710678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.462263, 40.401680, 37.731491>,  <31.823925, 40.234360, 37.766182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462263, 40.401680, 37.731491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016879, 0.237832, 0.971160,
		0.426867, 0.876617, -0.222098,
		-0.904157, 0.418305, -0.086726,
		31.191015, 40.527172, 37.705475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930573, 40.688274, 38.269165>,  <31.823925, 40.234360, 37.766182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930573, 40.688274, 38.269165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536137, 40.700726, 38.203854>,  <31.299475, 40.708199, 38.164665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536137, 40.700726, 38.203854>,  <31.930573, 40.688274, 38.269165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536137, 40.700726, 38.203854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152739, 0.217840, 0.963959,
		0.065579, 0.975488, -0.210054,
		-0.986088, 0.031132, -0.163281,
		31.240311, 40.710064, 38.154869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298130, 41.426109, 38.336815>,  <31.930573, 40.688274, 38.269165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298130, 41.426109, 38.336815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597416, 41.643147, 38.489532>,  <32.776989, 41.773369, 38.581161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.597416, 41.643147, 38.489532>,  <32.298130, 41.426109, 38.336815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597416, 41.643147, 38.489532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578887, -0.252771, -0.775240,
		-0.324135, 0.801060, -0.503228,
		0.748215, 0.542595, 0.381792,
		32.821880, 41.805923, 38.604069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486767, 41.778091, 37.824070>,  <32.298130, 41.426109, 38.336815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486767, 41.778091, 37.824070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.806824, 41.773045, 38.063938>,  <32.998859, 41.770016, 38.207859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.806824, 41.773045, 38.063938>,  <32.486767, 41.778091, 37.824070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806824, 41.773045, 38.063938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550105, -0.383049, -0.742063,
		0.239068, 0.923642, -0.299554,
		0.800144, -0.012617, 0.599675,
		33.046867, 41.769260, 38.243839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069145, 42.034134, 37.477131>,  <32.486767, 41.778091, 37.824070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069145, 42.034134, 37.477131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256809, 41.839748, 37.772083>,  <33.369408, 41.723118, 37.949055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256809, 41.839748, 37.772083>,  <33.069145, 42.034134, 37.477131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256809, 41.839748, 37.772083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529382, -0.513564, -0.675283,
		0.706857, 0.707168, 0.016320,
		0.469157, -0.485968, 0.737379,
		33.397556, 41.693958, 37.993298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811211, 41.977444, 37.303371>,  <33.069145, 42.034134, 37.477131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811211, 41.977444, 37.303371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732208, 41.684090, 37.563568>,  <33.684807, 41.508076, 37.719685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732208, 41.684090, 37.563568>,  <33.811211, 41.977444, 37.303371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732208, 41.684090, 37.563568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624179, -0.605749, -0.493425,
		0.755905, 0.308568, 0.577403,
		-0.197506, -0.733385, 0.650490,
		33.672955, 41.464073, 37.758717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471203, 41.711933, 37.512016>,  <33.811211, 41.977444, 37.303371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471203, 41.711933, 37.512016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181232, 41.444332, 37.577648>,  <34.007252, 41.283772, 37.617027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181232, 41.444332, 37.577648>,  <34.471203, 41.711933, 37.512016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181232, 41.444332, 37.577648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545474, -0.702998, -0.456346,
		0.420642, -0.241317, 0.874543,
		-0.724926, -0.668999, 0.164079,
		33.963753, 41.243633, 37.626873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831825, 41.145458, 37.476154>,  <34.471203, 41.711933, 37.512016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831825, 41.145458, 37.476154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.462368, 40.992161, 37.475491>,  <34.240692, 40.900181, 37.475094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.462368, 40.992161, 37.475491>,  <34.831825, 41.145458, 37.476154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462368, 40.992161, 37.475491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306344, -0.735699, -0.604070,
		0.230287, -0.558454, 0.796930,
		-0.923646, -0.383244, -0.001657,
		34.185276, 40.877186, 37.474995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909714, 40.401966, 37.642609>,  <34.831825, 41.145458, 37.476154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909714, 40.401966, 37.642609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557507, 40.454391, 37.460396>,  <34.346184, 40.485847, 37.351067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557507, 40.454391, 37.460396>,  <34.909714, 40.401966, 37.642609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557507, 40.454391, 37.460396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234123, -0.715370, -0.658355,
		-0.412161, -0.686345, 0.599212,
		-0.880517, 0.131059, -0.455537,
		34.293350, 40.493710, 37.323734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612823, 39.783043, 37.539051>,  <34.909714, 40.401966, 37.642609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612823, 39.783043, 37.539051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424564, 40.008160, 37.267242>,  <34.311607, 40.143230, 37.104156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424564, 40.008160, 37.267242>,  <34.612823, 39.783043, 37.539051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424564, 40.008160, 37.267242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116576, -0.723737, -0.680158,
		-0.874584, -0.399333, 0.275020,
		-0.470652, 0.562794, -0.679521,
		34.283367, 40.176998, 37.063385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043186, 39.467010, 37.146435>,  <34.612823, 39.783043, 37.539051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043186, 39.467010, 37.146435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259842, 39.750404, 36.965469>,  <34.389835, 39.920441, 36.856892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259842, 39.750404, 36.965469>,  <34.043186, 39.467010, 37.146435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259842, 39.750404, 36.965469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300175, -0.665727, -0.683157,
		-0.785189, 0.234222, -0.573253,
		0.541640, 0.708483, -0.452414,
		34.422333, 39.962948, 36.829746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863159, 39.516048, 36.437004>,  <34.043186, 39.467010, 37.146435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863159, 39.516048, 36.437004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239708, 39.640583, 36.488991>,  <34.465637, 39.715302, 36.520184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239708, 39.640583, 36.488991>,  <33.863159, 39.516048, 36.437004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239708, 39.640583, 36.488991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295811, -0.576460, -0.761702,
		-0.162221, 0.755490, -0.634759,
		0.941372, 0.311333, 0.129968,
		34.522118, 39.733982, 36.527981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125999, 39.503208, 35.815536>,  <33.863159, 39.516048, 36.437004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125999, 39.503208, 35.815536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477356, 39.536434, 36.003807>,  <34.688168, 39.556370, 36.116768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477356, 39.536434, 36.003807>,  <34.125999, 39.503208, 35.815536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477356, 39.536434, 36.003807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405855, -0.649736, -0.642749,
		0.252422, 0.755608, -0.604433,
		0.878388, 0.083068, 0.470675,
		34.740871, 39.561356, 36.145008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639423, 39.665844, 35.343319>,  <34.125999, 39.503208, 35.815536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639423, 39.665844, 35.343319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834839, 39.502090, 35.651535>,  <34.952087, 39.403839, 35.836464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834839, 39.502090, 35.651535>,  <34.639423, 39.665844, 35.343319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834839, 39.502090, 35.651535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427873, -0.657232, -0.620461,
		0.760430, 0.632814, -0.145920,
		0.488539, -0.409382, 0.770543,
		34.981400, 39.379276, 35.882698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131828, 39.577183, 34.993168>,  <34.639423, 39.665844, 35.343319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131828, 39.577183, 34.993168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213768, 39.368504, 35.324436>,  <35.262932, 39.243294, 35.523197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213768, 39.368504, 35.324436>,  <35.131828, 39.577183, 34.993168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213768, 39.368504, 35.324436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576897, -0.619174, -0.532741,
		0.790713, 0.586900, 0.174131,
		0.204848, -0.521701, 0.828170,
		35.275223, 39.211994, 35.572887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888680, 39.449387, 34.963863>,  <35.131828, 39.577183, 34.993168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888680, 39.449387, 34.963863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755341, 39.164616, 35.211102>,  <35.675339, 38.993752, 35.359444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755341, 39.164616, 35.211102>,  <35.888680, 39.449387, 34.963863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755341, 39.164616, 35.211102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576291, -0.672718, -0.464046,
		0.746170, 0.201515, 0.634525,
		-0.333344, -0.711928, 0.618093,
		35.655338, 38.951038, 35.396530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.850149, 43.378002, 32.852020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.529409, 43.444736, 32.622517>,  <27.336966, 43.484779, 32.484814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.529409, 43.444736, 32.622517>,  <27.850149, 43.378002, 32.852020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529409, 43.444736, 32.622517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001068, -0.960626, -0.277841,
		-0.597526, -0.222174, 0.770455,
		-0.801849, 0.166840, -0.573762,
		27.288855, 43.494789, 32.450386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215374, 43.126030, 33.092033>,  <27.850149, 43.378002, 32.852020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215374, 43.126030, 33.092033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193321, 43.145908, 32.693138>,  <27.180090, 43.157837, 32.453800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193321, 43.145908, 32.693138>,  <27.215374, 43.126030, 33.092033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193321, 43.145908, 32.693138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010935, -0.998731, -0.049170,
		-0.998419, 0.008194, 0.055611,
		-0.055137, 0.049700, -0.997241,
		27.176781, 43.160820, 32.393967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794180, 42.540997, 32.875595>,  <27.215374, 43.126030, 33.092033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794180, 42.540997, 32.875595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.946711, 42.637470, 32.518627>,  <27.038229, 42.695354, 32.304447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.946711, 42.637470, 32.518627>,  <26.794180, 42.540997, 32.875595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946711, 42.637470, 32.518627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026415, -0.967815, -0.250274,
		-0.924062, 0.071863, -0.375426,
		0.381329, 0.241186, -0.892422,
		27.061110, 42.709827, 32.250900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323730, 42.122108, 32.320873>,  <26.794180, 42.540997, 32.875595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323730, 42.122108, 32.320873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688774, 42.211815, 32.184143>,  <26.907801, 42.265636, 32.102104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688774, 42.211815, 32.184143>,  <26.323730, 42.122108, 32.320873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688774, 42.211815, 32.184143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065675, -0.905679, -0.418847,
		-0.403518, 0.359795, -0.841261,
		0.912611, 0.224262, -0.341829,
		26.962557, 42.279095, 32.081596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320772, 41.977684, 31.626215>,  <26.323730, 42.122108, 32.320873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320772, 41.977684, 31.626215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.701574, 41.951077, 31.745724>,  <26.930056, 41.935112, 31.817429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.701574, 41.951077, 31.745724>,  <26.320772, 41.977684, 31.626215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701574, 41.951077, 31.745724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061641, -0.997767, -0.025717,
		0.299815, 0.006066, -0.953978,
		0.952004, -0.066514, 0.298772,
		26.987175, 41.931122, 31.835356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607500, 41.456856, 31.165638>,  <26.320772, 41.977684, 31.626215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607500, 41.456856, 31.165638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826698, 41.481663, 31.499310>,  <26.958218, 41.496548, 31.699512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.826698, 41.481663, 31.499310>,  <26.607500, 41.456856, 31.165638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826698, 41.481663, 31.499310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080924, -0.988639, 0.126662,
		0.832556, -0.136916, -0.536753,
		0.547997, 0.062017, 0.834178,
		26.991098, 41.500267, 31.749563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189102, 40.953773, 31.092033>,  <26.607500, 41.456856, 31.165638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189102, 40.953773, 31.092033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221460, 41.038158, 31.481689>,  <27.240875, 41.088791, 31.715483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221460, 41.038158, 31.481689>,  <27.189102, 40.953773, 31.092033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221460, 41.038158, 31.481689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040109, -0.975863, 0.214667,
		0.995915, -0.056438, -0.070483,
		0.080897, 0.210963, 0.974141,
		27.245729, 41.101448, 31.773932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829365, 40.523251, 31.377153>,  <27.189102, 40.953773, 31.092033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829365, 40.523251, 31.377153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555763, 40.610561, 31.655575>,  <27.391602, 40.662949, 31.822628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555763, 40.610561, 31.655575>,  <27.829365, 40.523251, 31.377153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555763, 40.610561, 31.655575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100902, -0.973320, 0.206073,
		0.722467, 0.070721, 0.687779,
		-0.684003, 0.218279, 0.696056,
		27.350563, 40.676044, 31.864391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962648, 40.078068, 31.759363>,  <27.829365, 40.523251, 31.377153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962648, 40.078068, 31.759363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612429, 40.195045, 31.913191>,  <27.402298, 40.265232, 32.005489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612429, 40.195045, 31.913191>,  <27.962648, 40.078068, 31.759363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612429, 40.195045, 31.913191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173517, -0.933224, 0.314620,
		0.450898, 0.208735, 0.867825,
		-0.875547, 0.292444, 0.384570,
		27.349764, 40.282780, 32.028561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946165, 39.961010, 32.519138>,  <27.962648, 40.078068, 31.759363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946165, 39.961010, 32.519138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559521, 39.961983, 32.416641>,  <27.327534, 39.962566, 32.355145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559521, 39.961983, 32.416641>,  <27.946165, 39.961010, 32.519138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559521, 39.961983, 32.416641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100174, -0.923973, 0.369106,
		-0.235864, 0.382450, 0.893364,
		-0.966609, 0.002433, -0.256244,
		27.269539, 39.962711, 32.339767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637966, 39.914989, 33.090473>,  <27.946165, 39.961010, 32.519138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637966, 39.914989, 33.090473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391602, 39.781128, 32.805191>,  <27.243782, 39.700809, 32.634022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391602, 39.781128, 32.805191>,  <27.637966, 39.914989, 33.090473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391602, 39.781128, 32.805191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008638, -0.908106, 0.418652,
		-0.787767, 0.251692, 0.562204,
		-0.615912, -0.334656, -0.713202,
		27.206827, 39.680733, 32.591232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169077, 39.624786, 33.479774>,  <27.637966, 39.914989, 33.090473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169077, 39.624786, 33.479774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048349, 39.502728, 33.118492>,  <26.975914, 39.429493, 32.901722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048349, 39.502728, 33.118492>,  <27.169077, 39.624786, 33.479774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048349, 39.502728, 33.118492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280712, -0.876948, 0.390081,
		-0.911102, 0.371275, 0.179019,
		-0.301818, -0.305150, -0.903211,
		26.957804, 39.411182, 32.847530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407639, 39.411472, 33.568901>,  <27.169077, 39.624786, 33.479774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407639, 39.411472, 33.568901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579239, 39.218540, 33.263401>,  <26.682199, 39.102783, 33.080101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579239, 39.218540, 33.263401>,  <26.407639, 39.411472, 33.568901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579239, 39.218540, 33.263401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293680, -0.874052, 0.387021,
		-0.854229, 0.058266, -0.516621,
		0.429003, -0.482326, -0.763752,
		26.707939, 39.073841, 33.034275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976707, 38.890842, 33.440960>,  <26.407639, 39.411472, 33.568901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976707, 38.890842, 33.440960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294020, 38.769764, 33.229649>,  <26.484407, 38.697117, 33.102863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294020, 38.769764, 33.229649>,  <25.976707, 38.890842, 33.440960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294020, 38.769764, 33.229649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316288, -0.946276, 0.067262,
		-0.520257, 0.113731, -0.846403,
		0.793281, -0.302701, -0.528278,
		26.532003, 38.678955, 33.071167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770426, 38.461479, 32.899235>,  <25.976707, 38.890842, 33.440960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770426, 38.461479, 32.899235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.154360, 38.360252, 32.947681>,  <26.384720, 38.299515, 32.976749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.154360, 38.360252, 32.947681>,  <25.770426, 38.461479, 32.899235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154360, 38.360252, 32.947681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257612, -0.965970, 0.023212,
		0.111125, -0.053482, -0.992366,
		0.959837, -0.253066, 0.121121,
		26.442310, 38.284332, 32.984016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908525, 37.943066, 32.355259>,  <25.770426, 38.461479, 32.899235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908525, 37.943066, 32.355259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167757, 37.933643, 32.659744>,  <26.323296, 37.927990, 32.842434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167757, 37.933643, 32.659744>,  <25.908525, 37.943066, 32.355259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167757, 37.933643, 32.659744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181527, -0.975491, 0.124360,
		0.739624, -0.218775, -0.636469,
		0.648077, -0.023556, 0.761210,
		26.362181, 37.926575, 32.888107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444147, 37.382961, 32.248421>,  <25.908525, 37.943066, 32.355259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444147, 37.382961, 32.248421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.399519, 37.448868, 32.640423>,  <26.372742, 37.488411, 32.875622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.399519, 37.448868, 32.640423>,  <26.444147, 37.382961, 32.248421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399519, 37.448868, 32.640423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180633, -0.973094, 0.143040,
		0.977202, -0.161061, 0.138332,
		-0.111572, 0.164766, 0.980002,
		26.366047, 37.498299, 32.934422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422480, 36.743114, 32.507053>,  <26.444147, 37.382961, 32.248421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422480, 36.743114, 32.507053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311296, 36.950497, 32.830521>,  <26.244587, 37.074928, 33.024601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311296, 36.950497, 32.830521>,  <26.422480, 36.743114, 32.507053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311296, 36.950497, 32.830521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307441, -0.845574, 0.436445,
		0.910066, -0.127304, 0.394428,
		-0.277957, 0.518457, 0.808667,
		26.227909, 37.106033, 33.073120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792559, 36.474655, 33.107231>,  <26.422480, 36.743114, 32.507053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792559, 36.474655, 33.107231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.451571, 36.642509, 33.231941>,  <26.246977, 36.743221, 33.306767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.451571, 36.642509, 33.231941>,  <26.792559, 36.474655, 33.107231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451571, 36.642509, 33.231941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304059, -0.883121, 0.357274,
		0.425257, 0.209768, 0.880428,
		-0.852470, 0.419636, 0.311772,
		26.195829, 36.768398, 33.325474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699295, 36.757618, 33.792217>,  <26.792559, 36.474655, 33.107231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699295, 36.757618, 33.792217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093784, 36.819111, 33.816658>,  <27.330477, 36.856007, 33.831322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093784, 36.819111, 33.816658>,  <26.699295, 36.757618, 33.792217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093784, 36.819111, 33.816658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107258, -0.875419, 0.471314,
		0.125950, -0.458266, -0.879846,
		0.986222, 0.153732, 0.061106,
		27.389650, 36.865231, 33.834991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010870, 36.021904, 33.821533>,  <26.699295, 36.757618, 33.792217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010870, 36.021904, 33.821533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271849, 36.295372, 33.952320>,  <27.428436, 36.459454, 34.030792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271849, 36.295372, 33.952320>,  <27.010870, 36.021904, 33.821533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271849, 36.295372, 33.952320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456052, -0.698792, 0.551095,
		0.605251, -0.210445, -0.767713,
		0.652447, 0.683668, 0.326971,
		27.467583, 36.500473, 34.050411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731529, 35.748173, 33.719490>,  <27.010870, 36.021904, 33.821533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731529, 35.748173, 33.719490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512909, 36.075729, 33.649406>,  <27.381737, 36.272263, 33.607357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512909, 36.075729, 33.649406>,  <27.731529, 35.748173, 33.719490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512909, 36.075729, 33.649406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155293, -0.106489, -0.982112,
		-0.822902, -0.563982, -0.068967,
		-0.546550, 0.818892, -0.175212,
		27.348944, 36.321396, 33.596844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160400, 35.467289, 33.056950>,  <27.731529, 35.748173, 33.719490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160400, 35.467289, 33.056950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499725, 35.377342, 32.865200>,  <28.703320, 35.323376, 32.750149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499725, 35.377342, 32.865200>,  <28.160400, 35.467289, 33.056950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499725, 35.377342, 32.865200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383843, 0.884790, 0.264217,
		0.364735, -0.408144, 0.836891,
		0.848312, -0.224866, -0.479377,
		28.754219, 35.309883, 32.721386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754150, 35.644283, 33.566494>,  <28.160400, 35.467289, 33.056950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754150, 35.644283, 33.566494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856129, 35.644547, 33.179710>,  <28.917315, 35.644703, 32.947639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856129, 35.644547, 33.179710>,  <28.754150, 35.644283, 33.566494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856129, 35.644547, 33.179710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334792, 0.938089, 0.088907,
		0.907148, -0.346395, 0.238942,
		0.254945, 0.000656, -0.966955,
		28.932611, 35.644745, 32.889626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345264, 36.104034, 33.571362>,  <28.754150, 35.644283, 33.566494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345264, 36.104034, 33.571362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265202, 36.059734, 33.181969>,  <29.217165, 36.033154, 32.948334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265202, 36.059734, 33.181969>,  <29.345264, 36.104034, 33.571362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265202, 36.059734, 33.181969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434034, 0.880754, -0.189437,
		0.878381, -0.460443, -0.128218,
		-0.200154, -0.110747, -0.973485,
		29.205154, 36.026512, 32.889923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026821, 36.223278, 33.189583>,  <29.345264, 36.104034, 33.571362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026821, 36.223278, 33.189583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752123, 36.264221, 32.901722>,  <29.587303, 36.288788, 32.729004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752123, 36.264221, 32.901722>,  <30.026821, 36.223278, 33.189583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752123, 36.264221, 32.901722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534554, 0.742005, -0.404574,
		0.492577, -0.662534, -0.564283,
		-0.686746, 0.102356, -0.719656,
		29.546099, 36.294930, 32.685825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396309, 36.234898, 32.573051>,  <30.026821, 36.223278, 33.189583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396309, 36.234898, 32.573051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.039780, 36.409592, 32.524384>,  <29.825861, 36.514408, 32.495182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.039780, 36.409592, 32.524384>,  <30.396309, 36.234898, 32.573051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039780, 36.409592, 32.524384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444912, 0.791035, -0.419900,
		-0.087135, -0.428402, -0.899377,
		-0.891325, 0.436732, -0.121674,
		29.772383, 36.540611, 32.487881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462421, 36.470505, 31.938284>,  <30.396309, 36.234898, 32.573051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462421, 36.470505, 31.938284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.196798, 36.687820, 32.143753>,  <30.037424, 36.818211, 32.267036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.196798, 36.687820, 32.143753>,  <30.462421, 36.470505, 31.938284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196798, 36.687820, 32.143753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393627, 0.838138, -0.377602,
		-0.635677, -0.048553, -0.770427,
		-0.664057, 0.543293, 0.513673,
		29.997581, 36.850807, 32.297855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412514, 37.113457, 31.547243>,  <30.462421, 36.470505, 31.938284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412514, 37.113457, 31.547243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.163172, 37.217445, 31.842226>,  <30.013567, 37.279839, 32.019215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.163172, 37.217445, 31.842226>,  <30.412514, 37.113457, 31.547243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163172, 37.217445, 31.842226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132526, 0.964594, -0.228024,
		-0.770628, -0.044407, -0.635736,
		-0.623353, 0.259973, 0.737459,
		29.976166, 37.295437, 32.063465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958261, 37.714981, 31.324009>,  <30.412514, 37.113457, 31.547243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958261, 37.714981, 31.324009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993925, 37.730965, 31.722095>,  <30.015324, 37.740555, 31.960947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993925, 37.730965, 31.722095>,  <29.958261, 37.714981, 31.324009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993925, 37.730965, 31.722095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021252, 0.999044, -0.038211,
		-0.995790, -0.017743, 0.089924,
		0.089160, 0.039961, 0.995215,
		30.020674, 37.742954, 32.020660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537409, 38.258404, 31.523329>,  <29.958261, 37.714981, 31.324009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537409, 38.258404, 31.523329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801903, 38.240547, 31.822868>,  <29.960600, 38.229832, 32.002594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801903, 38.240547, 31.822868>,  <29.537409, 38.258404, 31.523329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801903, 38.240547, 31.822868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048019, 0.998699, 0.017137,
		-0.748641, 0.024628, 0.662518,
		0.661234, -0.044643, 0.748850,
		30.000273, 38.227154, 32.047523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303278, 38.769817, 32.100792>,  <29.537409, 38.258404, 31.523329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303278, 38.769817, 32.100792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686489, 38.701378, 32.192795>,  <29.916416, 38.660313, 32.247997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.686489, 38.701378, 32.192795>,  <29.303278, 38.769817, 32.100792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686489, 38.701378, 32.192795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066967, 0.913727, 0.400773,
		-0.278736, -0.368549, 0.886836,
		0.958030, -0.171098, 0.230008,
		29.973898, 38.650047, 32.261799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414160, 39.037762, 32.802959>,  <29.303278, 38.769817, 32.100792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414160, 39.037762, 32.802959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.786266, 38.981743, 32.667320>,  <30.009531, 38.948132, 32.585938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.786266, 38.981743, 32.667320>,  <29.414160, 39.037762, 32.802959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786266, 38.981743, 32.667320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314511, 0.780323, 0.540536,
		0.188907, -0.609493, 0.769955,
		0.930267, -0.140048, -0.339101,
		30.065346, 38.939728, 32.565590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773310, 39.180462, 33.315960>,  <29.414160, 39.037762, 32.802959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773310, 39.180462, 33.315960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.010490, 39.249344, 33.001316>,  <30.152800, 39.290672, 32.812531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.010490, 39.249344, 33.001316>,  <29.773310, 39.180462, 33.315960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010490, 39.249344, 33.001316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167327, 0.929193, 0.329549,
		0.787660, -0.327028, 0.522154,
		0.592954, 0.172202, -0.786608,
		30.188377, 39.301006, 32.765335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318844, 39.684025, 33.576710>,  <29.773310, 39.180462, 33.315960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318844, 39.684025, 33.576710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.359671, 39.718254, 33.180275>,  <30.384167, 39.738792, 32.942413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.359671, 39.718254, 33.180275>,  <30.318844, 39.684025, 33.576710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359671, 39.718254, 33.180275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281940, 0.952952, 0.111316,
		0.953988, -0.290789, 0.073136,
		0.102065, 0.085575, -0.991090,
		30.390291, 39.743927, 32.882950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061016, 39.957771, 33.471752>,  <30.318844, 39.684025, 33.576710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061016, 39.957771, 33.471752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.854717, 40.066257, 33.146679>,  <30.730938, 40.131351, 32.951637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.854717, 40.066257, 33.146679>,  <31.061016, 39.957771, 33.471752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854717, 40.066257, 33.146679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310018, 0.943368, 0.118091,
		0.798684, -0.191040, -0.570620,
		-0.515745, 0.271220, -0.812679,
		30.699993, 40.147625, 32.902874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406618, 40.454994, 33.178905>,  <31.061016, 39.957771, 33.471752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406618, 40.454994, 33.178905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.045628, 40.502224, 33.013210>,  <30.829033, 40.530563, 32.913795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.045628, 40.502224, 33.013210>,  <31.406618, 40.454994, 33.178905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045628, 40.502224, 33.013210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091382, 0.992288, 0.083749,
		0.420930, 0.037728, -0.906308,
		-0.902479, 0.118073, -0.414236,
		30.774883, 40.537647, 32.888939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441545, 41.061581, 32.645420>,  <31.406618, 40.454994, 33.178905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441545, 41.061581, 32.645420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.052311, 41.022793, 32.729034>,  <30.818769, 40.999519, 32.779205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.052311, 41.022793, 32.729034>,  <31.441545, 41.061581, 32.645420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052311, 41.022793, 32.729034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042742, 0.967358, 0.249783,
		-0.226438, 0.234126, -0.945468,
		-0.973087, -0.096972, 0.209039,
		30.760386, 40.993702, 32.791748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077324, 41.648087, 32.301815>,  <31.441545, 41.061581, 32.645420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077324, 41.648087, 32.301815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.840868, 41.508190, 32.592533>,  <30.698994, 41.424252, 32.766964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.840868, 41.508190, 32.592533>,  <31.077324, 41.648087, 32.301815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840868, 41.508190, 32.592533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246142, 0.936336, 0.250378,
		-0.768094, -0.030887, -0.639592,
		-0.591140, -0.349744, 0.726796,
		30.663527, 41.403267, 32.810574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409441, 41.957165, 32.161171>,  <31.077324, 41.648087, 32.301815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409441, 41.957165, 32.161171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.413116, 41.842957, 32.544502>,  <30.415321, 41.774433, 32.774502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.413116, 41.842957, 32.544502>,  <30.409441, 41.957165, 32.161171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413116, 41.842957, 32.544502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262588, 0.924046, 0.277823,
		-0.964864, -0.254199, -0.066484,
		0.009188, -0.285519, 0.958329,
		30.415873, 41.757301, 32.832001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011580, 42.483383, 32.400742>,  <30.409441, 41.957165, 32.161171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011580, 42.483383, 32.400742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154858, 42.287178, 32.718506>,  <30.240824, 42.169456, 32.909164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154858, 42.287178, 32.718506>,  <30.011580, 42.483383, 32.400742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154858, 42.287178, 32.718506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357864, 0.713757, 0.602067,
		-0.862340, -0.499949, 0.080127,
		0.358194, -0.490511, 0.794415,
		30.262316, 42.140026, 32.956829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464420, 42.302483, 32.711365>,  <30.011580, 42.483383, 32.400742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464420, 42.302483, 32.711365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789133, 42.371071, 32.934654>,  <29.983961, 42.412224, 33.068626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789133, 42.371071, 32.934654>,  <29.464420, 42.302483, 32.711365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789133, 42.371071, 32.934654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437938, 0.811103, 0.387715,
		-0.386291, -0.559205, 0.733531,
		0.811781, 0.171471, 0.558220,
		30.032667, 42.422512, 33.102119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.300354, 41.582443, 40.794228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290089, 41.186283, 40.848560>,  <34.283928, 40.948586, 40.881161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290089, 41.186283, 40.848560>,  <34.300354, 41.582443, 40.794228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290089, 41.186283, 40.848560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763795, 0.107090, 0.636513,
		-0.644948, -0.087413, -0.759211,
		-0.025664, -0.990399, 0.135833,
		34.282391, 40.889164, 40.889309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616428, 41.435665, 40.828266>,  <34.300354, 41.582443, 40.794228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616428, 41.435665, 40.828266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805500, 41.143131, 41.024925>,  <33.918941, 40.967609, 41.142921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805500, 41.143131, 41.024925>,  <33.616428, 41.435665, 40.828266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805500, 41.143131, 41.024925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714604, 0.008371, 0.699479,
		-0.515669, -0.681967, -0.518658,
		0.472680, -0.731335, 0.491653,
		33.947304, 40.923729, 41.172421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088936, 41.120235, 41.105259>,  <33.616428, 41.435665, 40.828266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088936, 41.120235, 41.105259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408062, 41.002682, 41.315830>,  <33.599537, 40.932152, 41.442173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408062, 41.002682, 41.315830>,  <33.088936, 41.120235, 41.105259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408062, 41.002682, 41.315830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536797, 0.051259, 0.842153,
		-0.274479, -0.954466, -0.116860,
		0.797816, -0.293884, 0.526424,
		33.647408, 40.914516, 41.473759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782784, 40.641472, 41.500965>,  <33.088936, 41.120235, 41.105259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782784, 40.641472, 41.500965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121262, 40.755432, 41.681087>,  <33.324348, 40.823807, 41.789162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121262, 40.755432, 41.681087>,  <32.782784, 40.641472, 41.500965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121262, 40.755432, 41.681087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491039, 0.088722, 0.866608,
		0.206950, -0.954440, 0.214977,
		0.846199, 0.284906, 0.450306,
		33.375122, 40.840904, 41.816181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846783, 40.142826, 42.128456>,  <32.782784, 40.641472, 41.500965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846783, 40.142826, 42.128456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058170, 40.480442, 42.164955>,  <33.185001, 40.683010, 42.186855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058170, 40.480442, 42.164955>,  <32.846783, 40.142826, 42.128456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058170, 40.480442, 42.164955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437901, 0.178929, 0.881038,
		0.727301, -0.505555, 0.464162,
		0.528465, 0.844037, 0.091248,
		33.216709, 40.733654, 42.192329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800491, 40.171612, 42.787014>,  <32.846783, 40.142826, 42.128456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800491, 40.171612, 42.787014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929592, 40.544048, 42.719017>,  <33.007053, 40.767509, 42.678219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929592, 40.544048, 42.719017>,  <32.800491, 40.171612, 42.787014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929592, 40.544048, 42.719017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393174, 0.295262, 0.870767,
		0.860958, -0.214202, 0.461378,
		0.322747, 0.931095, -0.169989,
		33.026417, 40.823376, 42.668022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190128, 40.324673, 43.404060>,  <32.800491, 40.171612, 42.787014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190128, 40.324673, 43.404060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083126, 40.659725, 43.213558>,  <33.018925, 40.860756, 43.099258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083126, 40.659725, 43.213558>,  <33.190128, 40.324673, 43.404060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083126, 40.659725, 43.213558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347912, 0.376961, 0.858404,
		0.898554, 0.395322, 0.190582,
		-0.267504, 0.837628, -0.476257,
		33.002876, 40.911015, 43.070683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480408, 40.758286, 43.844376>,  <33.190128, 40.324673, 43.404060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480408, 40.758286, 43.844376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217728, 40.964676, 43.624374>,  <33.060120, 41.088512, 43.492374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217728, 40.964676, 43.624374>,  <33.480408, 40.758286, 43.844376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217728, 40.964676, 43.624374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298556, 0.491848, 0.817893,
		0.692535, 0.701321, -0.168949,
		-0.656703, 0.515979, -0.550006,
		33.020718, 41.119469, 43.459373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554482, 41.492699, 44.023693>,  <33.480408, 40.758286, 43.844376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554482, 41.492699, 44.023693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188274, 41.410530, 43.885342>,  <32.968552, 41.361229, 43.802330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188274, 41.410530, 43.885342>,  <33.554482, 41.492699, 44.023693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188274, 41.410530, 43.885342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402223, 0.482392, 0.778148,
		0.007004, 0.851529, -0.524261,
		-0.915515, -0.205419, -0.345883,
		32.913620, 41.348904, 43.781578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216640, 41.942322, 44.305019>,  <33.554482, 41.492699, 44.023693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216640, 41.942322, 44.305019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906574, 41.716850, 44.190910>,  <32.720535, 41.581566, 44.122444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906574, 41.716850, 44.190910>,  <33.216640, 41.942322, 44.305019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906574, 41.716850, 44.190910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538784, 0.354066, 0.764427,
		-0.329889, 0.746258, -0.578163,
		-0.775168, -0.563681, -0.285269,
		32.674023, 41.547745, 44.105331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579727, 42.324505, 44.291412>,  <33.216640, 41.942322, 44.305019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579727, 42.324505, 44.291412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420776, 41.958851, 44.323551>,  <32.325405, 41.739460, 44.342834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420776, 41.958851, 44.323551>,  <32.579727, 42.324505, 44.291412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420776, 41.958851, 44.323551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572808, 0.315492, 0.756542,
		-0.716928, 0.254608, -0.648991,
		-0.397373, -0.914133, 0.080343,
		32.301563, 41.684612, 44.347652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868137, 42.449226, 44.383659>,  <32.579727, 42.324505, 44.291412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868137, 42.449226, 44.383659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956251, 42.101742, 44.561115>,  <32.009121, 41.893250, 44.667587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956251, 42.101742, 44.561115>,  <31.868137, 42.449226, 44.383659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956251, 42.101742, 44.561115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619926, 0.226462, 0.751270,
		-0.753105, -0.440515, -0.488652,
		0.220285, -0.868713, 0.443636,
		32.022335, 41.841129, 44.694206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206127, 42.008244, 44.594585>,  <31.868137, 42.449226, 44.383659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206127, 42.008244, 44.594585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508339, 41.896820, 44.831764>,  <31.689667, 41.829967, 44.974072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.508339, 41.896820, 44.831764>,  <31.206127, 42.008244, 44.594585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508339, 41.896820, 44.831764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558213, 0.200003, 0.805231,
		-0.342892, -0.939365, -0.004385,
		0.755529, -0.278555, 0.592945,
		31.734997, 41.813255, 45.009647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211414, 42.703094, 44.257820>,  <31.206127, 42.008244, 44.594585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211414, 42.703094, 44.257820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339830, 43.028172, 44.063313>,  <31.416880, 43.223217, 43.946606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339830, 43.028172, 44.063313>,  <31.211414, 42.703094, 44.257820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339830, 43.028172, 44.063313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799377, 0.507869, 0.321038,
		0.507869, 0.285650, 0.812695,
		-0.321038, -0.812695, 0.486273,
		31.436142, 43.271980, 43.917431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851950, 43.280960, 43.880550>,  <31.211414, 42.703094, 44.257820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851950, 43.280960, 43.880550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.683153, 43.504745, 43.595196>,  <30.581875, 43.639019, 43.423985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.683153, 43.504745, 43.595196>,  <30.851950, 43.280960, 43.880550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683153, 43.504745, 43.595196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750015, -0.226621, -0.621386,
		-0.509313, -0.797270, -0.323976,
		-0.421992, 0.559467, -0.713386,
		30.556555, 43.672585, 43.381180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752518, 42.885147, 43.275002>,  <30.851950, 43.280960, 43.880550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752518, 42.885147, 43.275002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.772905, 43.255173, 43.124454>,  <30.785137, 43.477188, 43.034126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.772905, 43.255173, 43.124454>,  <30.752518, 42.885147, 43.275002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772905, 43.255173, 43.124454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669454, -0.311301, -0.674480,
		-0.741103, -0.217584, -0.635157,
		0.050969, 0.925067, -0.376369,
		30.788197, 43.532692, 43.011543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691010, 42.784710, 42.529839>,  <30.752518, 42.885147, 43.275002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691010, 42.784710, 42.529839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.792301, 43.170631, 42.558186>,  <30.853075, 43.402184, 42.575195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.792301, 43.170631, 42.558186>,  <30.691010, 42.784710, 42.529839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792301, 43.170631, 42.558186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473077, -0.059599, -0.879003,
		-0.843845, 0.256114, -0.471521,
		0.253227, 0.964808, 0.070869,
		30.868269, 43.460075, 42.579445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492365, 43.256153, 41.867180>,  <30.691010, 42.784710, 42.529839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492365, 43.256153, 41.867180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.795198, 43.441502, 42.051403>,  <30.976898, 43.552711, 42.161938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.795198, 43.441502, 42.051403>,  <30.492365, 43.256153, 41.867180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795198, 43.441502, 42.051403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465112, 0.112772, -0.878040,
		-0.458796, 0.878959, -0.130142,
		0.757085, 0.463372, 0.460553,
		31.022324, 43.580513, 42.189568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656460, 43.849098, 41.601791>,  <30.492365, 43.256153, 41.867180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656460, 43.849098, 41.601791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.995003, 43.714214, 41.766701>,  <31.198130, 43.633286, 41.865646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.995003, 43.714214, 41.766701>,  <30.656460, 43.849098, 41.601791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995003, 43.714214, 41.766701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464720, 0.089363, -0.880937,
		0.260216, 0.937180, 0.232340,
		0.846359, -0.337207, 0.412272,
		31.248911, 43.613052, 41.890381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098061, 44.189980, 41.235451>,  <30.656460, 43.849098, 41.601791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098061, 44.189980, 41.235451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.320656, 43.894363, 41.387318>,  <31.454212, 43.716995, 41.478439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.320656, 43.894363, 41.387318>,  <31.098061, 44.189980, 41.235451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320656, 43.894363, 41.387318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493949, -0.073164, -0.866407,
		0.668084, 0.669681, 0.324332,
		0.556487, -0.739036, 0.379668,
		31.487602, 43.672653, 41.501217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679636, 44.245762, 40.847225>,  <31.098061, 44.189980, 41.235451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679636, 44.245762, 40.847225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731354, 43.899246, 41.040234>,  <31.762384, 43.691338, 41.156036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731354, 43.899246, 41.040234>,  <31.679636, 44.245762, 40.847225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731354, 43.899246, 41.040234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507107, -0.360394, -0.782917,
		0.852130, 0.345915, 0.392705,
		0.129294, -0.866290, 0.482519,
		31.770142, 43.639359, 41.184990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368694, 44.121796, 40.746071>,  <31.679636, 44.245762, 40.847225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368694, 44.121796, 40.746071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.198227, 43.773708, 40.844944>,  <32.095947, 43.564857, 40.904266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.198227, 43.773708, 40.844944>,  <32.368694, 44.121796, 40.746071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198227, 43.773708, 40.844944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568983, -0.470270, -0.674614,
		0.703304, -0.146858, 0.695554,
		-0.426171, -0.870217, 0.247183,
		32.070377, 43.512642, 40.919098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954655, 43.637787, 40.898998>,  <32.368694, 44.121796, 40.746071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954655, 43.637787, 40.898998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626518, 43.422832, 40.820766>,  <32.429634, 43.293861, 40.773827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626518, 43.422832, 40.820766>,  <32.954655, 43.637787, 40.898998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626518, 43.422832, 40.820766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501470, -0.511590, -0.697713,
		0.274887, -0.670441, 0.689163,
		-0.820345, -0.537387, -0.195577,
		32.380413, 43.261616, 40.762093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140350, 42.982319, 40.878876>,  <32.954655, 43.637787, 40.898998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140350, 42.982319, 40.878876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.794575, 42.947746, 40.680775>,  <32.587109, 42.927002, 40.561913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.794575, 42.947746, 40.680775>,  <33.140350, 42.982319, 40.878876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794575, 42.947746, 40.680775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399735, -0.715598, -0.572827,
		-0.304894, -0.693144, 0.653139,
		-0.864437, -0.086431, -0.495256,
		32.535244, 42.921818, 40.532196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011227, 42.305496, 40.749992>,  <33.140350, 42.982319, 40.878876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011227, 42.305496, 40.749992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776054, 42.477894, 40.476181>,  <32.634953, 42.581333, 40.311893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776054, 42.477894, 40.476181>,  <33.011227, 42.305496, 40.749992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776054, 42.477894, 40.476181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379050, -0.600789, -0.703829,
		-0.714605, -0.673272, 0.189852,
		-0.587930, 0.430996, -0.684530,
		32.599674, 42.607193, 40.270821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972034, 41.731937, 40.319931>,  <33.011227, 42.305496, 40.749992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972034, 41.731937, 40.319931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.812786, 42.013988, 40.085224>,  <32.717239, 42.183220, 39.944401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.812786, 42.013988, 40.085224>,  <32.972034, 41.731937, 40.319931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812786, 42.013988, 40.085224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404797, -0.438956, -0.802157,
		-0.823191, -0.556872, -0.110679,
		-0.398116, 0.705131, -0.586765,
		32.693352, 42.225529, 39.909195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552914, 41.466267, 39.819038>,  <32.972034, 41.731937, 40.319931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552914, 41.466267, 39.819038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622932, 41.816704, 39.639339>,  <32.664944, 42.026966, 39.531521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622932, 41.816704, 39.639339>,  <32.552914, 41.466267, 39.819038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622932, 41.816704, 39.639339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218044, -0.479455, -0.850047,
		-0.960113, 0.050841, -0.274953,
		0.175044, 0.876092, -0.449245,
		32.675446, 42.079533, 39.504566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228992, 41.392395, 39.165474>,  <32.552914, 41.466267, 39.819038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228992, 41.392395, 39.165474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479607, 41.701958, 39.128548>,  <32.629974, 41.887695, 39.106392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479607, 41.701958, 39.128548>,  <32.228992, 41.392395, 39.165474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479607, 41.701958, 39.128548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347956, -0.383729, -0.855382,
		-0.697413, 0.503802, -0.509705,
		0.626532, 0.773909, -0.092317,
		32.667564, 41.934132, 39.100853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615284, 41.380943, 38.559803>,  <32.228992, 41.392395, 39.165474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615284, 41.380943, 38.559803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.341436, 41.090603, 38.533150>,  <31.177128, 40.916401, 38.517159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.341436, 41.090603, 38.533150>,  <31.615284, 41.380943, 38.559803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341436, 41.090603, 38.533150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293907, 0.191239, 0.936507,
		-0.667019, 0.660736, -0.344258,
		-0.684619, -0.725848, -0.066635,
		31.136051, 40.872849, 38.513161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167261, 41.704166, 38.865768>,  <31.615284, 41.380943, 38.559803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167261, 41.704166, 38.865768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.016121, 41.333820, 38.866436>,  <30.925436, 41.111614, 38.866837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.016121, 41.333820, 38.866436>,  <31.167261, 41.704166, 38.865768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016121, 41.333820, 38.866436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465369, 0.191474, 0.864158,
		-0.800412, 0.325749, -0.503217,
		-0.377852, -0.925865, 0.001664,
		30.902765, 41.056061, 38.866936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517776, 41.795799, 38.882675>,  <31.167261, 41.704166, 38.865768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517776, 41.795799, 38.882675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550694, 41.416298, 39.004715>,  <30.570444, 41.188595, 39.077938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.550694, 41.416298, 39.004715>,  <30.517776, 41.795799, 38.882675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550694, 41.416298, 39.004715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555401, 0.210533, 0.804491,
		-0.827501, -0.235657, -0.509616,
		0.082293, -0.948758, 0.305100,
		30.575382, 41.131672, 39.096245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910931, 41.670048, 39.258274>,  <30.517776, 41.795799, 38.882675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910931, 41.670048, 39.258274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.143232, 41.374603, 39.395199>,  <30.282614, 41.197338, 39.477356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.143232, 41.374603, 39.395199>,  <29.910931, 41.670048, 39.258274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143232, 41.374603, 39.395199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467678, 0.041471, 0.882926,
		-0.666333, -0.672857, -0.321346,
		0.580756, -0.738609, 0.342314,
		30.317459, 41.153019, 39.497894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442192, 41.155281, 39.615898>,  <29.910931, 41.670048, 39.258274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442192, 41.155281, 39.615898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.819242, 41.155006, 39.749435>,  <30.045473, 41.154842, 39.829559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.819242, 41.155006, 39.749435>,  <29.442192, 41.155281, 39.615898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819242, 41.155006, 39.749435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330568, 0.137868, 0.933658,
		-0.046667, -0.990450, 0.129732,
		0.942628, -0.000686, 0.333845,
		30.102032, 41.154800, 39.849590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371813, 40.717579, 40.193489>,  <29.442192, 41.155281, 39.615898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371813, 40.717579, 40.193489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.734943, 40.865238, 40.273067>,  <29.952822, 40.953835, 40.320816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.734943, 40.865238, 40.273067>,  <29.371813, 40.717579, 40.193489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734943, 40.865238, 40.273067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317010, 0.293576, 0.901841,
		0.274498, -0.881788, 0.383537,
		0.907830, 0.369139, 0.198950,
		30.007292, 40.975983, 40.332752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563738, 40.539822, 40.835781>,  <29.371813, 40.717579, 40.193489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563738, 40.539822, 40.835781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.824707, 40.837631, 40.779179>,  <29.981289, 41.016319, 40.745216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.824707, 40.837631, 40.779179>,  <29.563738, 40.539822, 40.835781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824707, 40.837631, 40.779179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144807, 0.305753, 0.941035,
		0.743893, -0.593459, 0.307293,
		0.652421, 0.744528, -0.141511,
		30.020433, 41.060989, 40.736725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422274, 39.791969, 40.933334>,  <29.563738, 40.539822, 40.835781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422274, 39.791969, 40.933334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.412075, 39.511551, 41.218395>,  <29.405956, 39.343300, 41.389431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.412075, 39.511551, 41.218395>,  <29.422274, 39.791969, 40.933334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412075, 39.511551, 41.218395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268574, -0.691483, -0.670612,
		0.962922, 0.174303, 0.205914,
		-0.025497, -0.701050, 0.712657,
		29.404427, 39.301235, 41.432194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069693, 39.466942, 40.962223>,  <29.422274, 39.791969, 40.933334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069693, 39.466942, 40.962223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.818275, 39.196899, 41.116711>,  <29.667425, 39.034874, 41.209404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.818275, 39.196899, 41.116711>,  <30.069693, 39.466942, 40.962223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818275, 39.196899, 41.116711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238748, -0.640067, -0.730283,
		0.740224, -0.366807, 0.563491,
		-0.628545, -0.675105, 0.386219,
		29.629711, 38.994370, 41.232574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474274, 38.798611, 40.917828>,  <30.069693, 39.466942, 40.962223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474274, 38.798611, 40.917828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079668, 38.738613, 40.944035>,  <29.842905, 38.702614, 40.959759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079668, 38.738613, 40.944035>,  <30.474274, 38.798611, 40.917828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079668, 38.738613, 40.944035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015635, -0.484807, -0.874482,
		0.162935, -0.861663, 0.480613,
		-0.986513, -0.149998, 0.065520,
		29.783714, 38.693615, 40.963692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452290, 38.185272, 40.653522>,  <30.474274, 38.798611, 40.917828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452290, 38.185272, 40.653522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.067333, 38.291111, 40.678146>,  <29.836359, 38.354614, 40.692921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.067333, 38.291111, 40.678146>,  <30.452290, 38.185272, 40.653522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067333, 38.291111, 40.678146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206080, -0.563421, -0.800055,
		-0.177009, -0.782653, 0.596760,
		-0.962392, 0.264597, 0.061559,
		29.778616, 38.370491, 40.696613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081711, 37.585213, 40.646698>,  <30.452290, 38.185272, 40.653522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081711, 37.585213, 40.646698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841547, 37.872604, 40.506245>,  <29.697449, 38.045040, 40.421974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841547, 37.872604, 40.506245>,  <30.081711, 37.585213, 40.646698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841547, 37.872604, 40.506245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240792, -0.581131, -0.777371,
		-0.762579, -0.382192, 0.521921,
		-0.600410, 0.718482, -0.351130,
		29.661425, 38.088150, 40.400906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739048, 37.201698, 40.265587>,  <30.081711, 37.585213, 40.646698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739048, 37.201698, 40.265587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635952, 37.573963, 40.161716>,  <29.574095, 37.797321, 40.099396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635952, 37.573963, 40.161716>,  <29.739048, 37.201698, 40.265587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635952, 37.573963, 40.161716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252837, -0.324352, -0.911520,
		-0.932546, -0.169282, 0.318905,
		-0.257742, 0.930666, -0.259673,
		29.558630, 37.853165, 40.083817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008970, 37.174557, 40.010471>,  <29.739048, 37.201698, 40.265587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008970, 37.174557, 40.010471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.235035, 37.460594, 39.845921>,  <29.370674, 37.632217, 39.747189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.235035, 37.460594, 39.845921>,  <29.008970, 37.174557, 40.010471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235035, 37.460594, 39.845921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149980, -0.401280, -0.903593,
		-0.811232, 0.572375, -0.119538,
		0.565162, 0.715095, -0.411376,
		29.404583, 37.675121, 39.722507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.751724, 39.322273, 45.964283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694645, 39.619450, 45.702694>,  <32.660397, 39.797756, 45.545738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694645, 39.619450, 45.702694>,  <32.751724, 39.322273, 45.964283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694645, 39.619450, 45.702694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226352, -0.618731, -0.752287,
		-0.963537, -0.255377, -0.079876,
		-0.142695, 0.742937, -0.653975,
		32.651836, 39.842331, 45.506500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342571, 39.060379, 45.486774>,  <32.751724, 39.322273, 45.964283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342571, 39.060379, 45.486774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.545380, 39.358372, 45.313366>,  <32.667065, 39.537167, 45.209320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.545380, 39.358372, 45.313366>,  <32.342571, 39.060379, 45.486774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545380, 39.358372, 45.313366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350355, -0.637661, -0.686032,
		-0.787516, 0.195947, -0.584314,
		0.507020, 0.744979, -0.433517,
		32.697487, 39.581863, 45.183311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513065, 38.774010, 44.746170>,  <32.342571, 39.060379, 45.486774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513065, 38.774010, 44.746170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745213, 39.092651, 44.813820>,  <32.884499, 39.283836, 44.854408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.745213, 39.092651, 44.813820>,  <32.513065, 38.774010, 44.746170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745213, 39.092651, 44.813820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640434, -0.318188, -0.699000,
		-0.503011, 0.513988, -0.694836,
		0.580366, 0.796600, 0.169123,
		32.919323, 39.331631, 44.864555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676792, 39.045559, 44.055069>,  <32.513065, 38.774010, 44.746170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676792, 39.045559, 44.055069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.959839, 39.144287, 44.319901>,  <33.129669, 39.203522, 44.478802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.959839, 39.144287, 44.319901>,  <32.676792, 39.045559, 44.055069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959839, 39.144287, 44.319901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706556, -0.237641, -0.666562,
		-0.007180, 0.939472, -0.342549,
		0.707621, 0.246816, 0.662084,
		33.172127, 39.218330, 44.518524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155750, 39.557678, 43.729786>,  <32.676792, 39.045559, 44.055069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155750, 39.557678, 43.729786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.349861, 39.359165, 44.017731>,  <33.466328, 39.240059, 44.190498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.349861, 39.359165, 44.017731>,  <33.155750, 39.557678, 43.729786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349861, 39.359165, 44.017731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772754, -0.141769, -0.618670,
		0.409090, 0.856508, 0.314706,
		0.485280, -0.496282, 0.719866,
		33.495445, 39.210281, 44.233692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824303, 39.889095, 43.736389>,  <33.155750, 39.557678, 43.729786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824303, 39.889095, 43.736389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838470, 39.523399, 43.897835>,  <33.846970, 39.303982, 43.994701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838470, 39.523399, 43.897835>,  <33.824303, 39.889095, 43.736389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838470, 39.523399, 43.897835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692319, -0.268817, -0.669651,
		0.720722, 0.303148, 0.623426,
		0.035416, -0.914242, 0.403617,
		33.849094, 39.249126, 44.018921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526005, 39.702347, 43.519459>,  <33.824303, 39.889095, 43.736389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526005, 39.702347, 43.519459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352062, 39.363907, 43.642757>,  <34.247696, 39.160843, 43.716736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352062, 39.363907, 43.642757>,  <34.526005, 39.702347, 43.519459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352062, 39.363907, 43.642757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699585, -0.532955, -0.475962,
		0.566993, 0.008671, 0.823677,
		-0.434855, -0.846099, 0.308248,
		34.221607, 39.110077, 43.735233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102821, 39.267773, 43.729359>,  <34.526005, 39.702347, 43.519459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102821, 39.267773, 43.729359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780834, 39.045269, 43.646801>,  <34.587643, 38.911766, 43.597267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780834, 39.045269, 43.646801>,  <35.102821, 39.267773, 43.729359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780834, 39.045269, 43.646801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539728, -0.542063, -0.644097,
		0.246404, -0.629877, 0.736573,
		-0.804971, -0.556257, -0.206396,
		34.539341, 38.878391, 43.584881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313648, 38.599060, 43.801167>,  <35.102821, 39.267773, 43.729359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313648, 38.599060, 43.801167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978271, 38.574844, 43.584518>,  <34.777046, 38.560314, 43.454529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978271, 38.574844, 43.584518>,  <35.313648, 38.599060, 43.801167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978271, 38.574844, 43.584518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479652, -0.553809, -0.680610,
		-0.258747, -0.830440, 0.493375,
		-0.838441, -0.060542, -0.541618,
		34.726738, 38.556683, 43.422031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351944, 37.955338, 43.581043>,  <35.313648, 38.599060, 43.801167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351944, 37.955338, 43.581043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.086617, 38.090046, 43.313732>,  <34.927422, 38.170872, 43.153343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.086617, 38.090046, 43.313732>,  <35.351944, 37.955338, 43.581043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086617, 38.090046, 43.313732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310237, -0.688913, -0.655097,
		-0.681006, -0.641860, 0.352486,
		-0.663312, 0.336771, -0.668283,
		34.887623, 38.191074, 43.113247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984859, 37.378071, 43.149937>,  <35.351944, 37.955338, 43.581043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984859, 37.378071, 43.149937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.948055, 37.703091, 42.919704>,  <34.925972, 37.898102, 42.781567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.948055, 37.703091, 42.919704>,  <34.984859, 37.378071, 43.149937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948055, 37.703091, 42.919704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349375, -0.514939, -0.782800,
		-0.932454, -0.273121, -0.236504,
		-0.092014, 0.812553, -0.575579,
		34.920452, 37.946857, 42.747032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727425, 37.090336, 42.525993>,  <34.984859, 37.378071, 43.149937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727425, 37.090336, 42.525993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.872993, 37.449261, 42.426075>,  <34.960335, 37.664616, 42.366123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.872993, 37.449261, 42.426075>,  <34.727425, 37.090336, 42.525993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872993, 37.449261, 42.426075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689169, -0.439815, -0.575855,
		-0.626584, 0.037414, -0.778455,
		0.363922, 0.897309, -0.249796,
		34.982170, 37.718452, 42.351135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097473, 37.066818, 42.119812>,  <34.727425, 37.090336, 42.525993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097473, 37.066818, 42.119812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.767426, 36.859718, 42.029377>,  <33.569397, 36.735458, 41.975117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.767426, 36.859718, 42.029377>,  <34.097473, 37.066818, 42.119812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767426, 36.859718, 42.029377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460581, 0.384719, 0.799911,
		-0.327174, 0.764152, -0.555904,
		-0.825120, -0.517748, -0.226083,
		33.519890, 36.704395, 41.961552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599285, 37.487717, 42.302311>,  <34.097473, 37.066818, 42.119812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599285, 37.487717, 42.302311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.409992, 37.135704, 42.286316>,  <33.296417, 36.924496, 42.276718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.409992, 37.135704, 42.286316>,  <33.599285, 37.487717, 42.302311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409992, 37.135704, 42.286316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465808, 0.211447, 0.859251,
		-0.747711, 0.425254, -0.509988,
		-0.473235, -0.880028, -0.039985,
		33.268021, 36.871696, 42.274319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875607, 37.633469, 42.358902>,  <33.599285, 37.487717, 42.302311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875607, 37.633469, 42.358902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932503, 37.256157, 42.478893>,  <32.966640, 37.029770, 42.550888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932503, 37.256157, 42.478893>,  <32.875607, 37.633469, 42.358902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932503, 37.256157, 42.478893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583117, 0.165037, 0.795448,
		-0.799839, -0.288065, -0.526570,
		0.142237, -0.943282, 0.299978,
		32.975174, 36.973171, 42.568886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241756, 37.415138, 42.456486>,  <32.875607, 37.633469, 42.358902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241756, 37.415138, 42.456486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.465237, 37.165409, 42.674866>,  <32.599327, 37.015572, 42.805893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.465237, 37.165409, 42.674866>,  <32.241756, 37.415138, 42.456486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465237, 37.165409, 42.674866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628061, 0.111422, 0.770146,
		-0.541654, -0.773176, -0.329864,
		0.558704, -0.624327, 0.545954,
		32.632847, 36.978111, 42.838654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774191, 36.960999, 42.623039>,  <32.241756, 37.415138, 42.456486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774191, 36.960999, 42.623039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.083042, 36.950363, 42.877003>,  <32.268353, 36.943981, 43.029381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.083042, 36.950363, 42.877003>,  <31.774191, 36.960999, 42.623039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083042, 36.950363, 42.877003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634458, 0.023982, 0.772585,
		-0.035773, -0.999359, 0.001644,
		0.772129, -0.026595, 0.634909,
		32.314682, 36.942387, 43.067474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683815, 36.422947, 43.112705>,  <31.774191, 36.960999, 42.623039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683815, 36.422947, 43.112705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.952560, 36.677269, 43.264679>,  <32.113808, 36.829865, 43.355862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.952560, 36.677269, 43.264679>,  <31.683815, 36.422947, 43.112705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952560, 36.677269, 43.264679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630770, 0.222282, 0.743451,
		0.388240, -0.739148, 0.550391,
		0.671862, 0.635808, 0.379934,
		32.154118, 36.868011, 43.378658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568256, 36.252808, 43.832424>,  <31.683815, 36.422947, 43.112705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568256, 36.252808, 43.832424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.759800, 36.603748, 43.820129>,  <31.874725, 36.814312, 43.812752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.759800, 36.603748, 43.820129>,  <31.568256, 36.252808, 43.832424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759800, 36.603748, 43.820129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506762, 0.304839, 0.806391,
		0.716859, -0.370572, 0.590584,
		0.478859, 0.877354, -0.030735,
		31.903458, 36.866955, 43.810909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726894, 36.478497, 44.489819>,  <31.568256, 36.252808, 43.832424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726894, 36.478497, 44.489819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.727530, 36.823421, 44.287266>,  <31.727911, 37.030376, 44.165733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.727530, 36.823421, 44.287266>,  <31.726894, 36.478497, 44.489819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727530, 36.823421, 44.287266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474852, 0.446299, 0.758507,
		0.880064, 0.239253, 0.410177,
		0.001587, 0.862308, -0.506381,
		31.728006, 37.082115, 44.135353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929255, 36.977371, 44.904331>,  <31.726894, 36.478497, 44.489819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929255, 36.977371, 44.904331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.735163, 37.177177, 44.617268>,  <31.618708, 37.297062, 44.445030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.735163, 37.177177, 44.617268>,  <31.929255, 36.977371, 44.904331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735163, 37.177177, 44.617268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413490, 0.592097, 0.691699,
		0.770439, 0.632378, -0.080758,
		-0.485231, 0.499519, -0.717657,
		31.589594, 37.327034, 44.401970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910381, 37.671146, 45.173801>,  <31.929255, 36.977371, 44.904331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910381, 37.671146, 45.173801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.637444, 37.662319, 44.881523>,  <31.473680, 37.657021, 44.706154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.637444, 37.662319, 44.881523>,  <31.910381, 37.671146, 45.173801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637444, 37.662319, 44.881523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572426, 0.637820, 0.515281,
		0.454682, 0.769870, -0.447845,
		-0.682343, -0.022070, -0.730699,
		31.432741, 37.655697, 44.662315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681067, 38.438244, 45.117588>,  <31.910381, 37.671146, 45.173801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681067, 38.438244, 45.117588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.403788, 38.223083, 44.925694>,  <31.237421, 38.093987, 44.810558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.403788, 38.223083, 44.925694>,  <31.681067, 38.438244, 45.117588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403788, 38.223083, 44.925694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704335, 0.646792, 0.292528,
		0.152939, 0.540673, -0.827214,
		-0.693197, -0.537896, -0.479734,
		31.195827, 38.061714, 44.781773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378941, 38.984241, 44.838402>,  <31.681067, 38.438244, 45.117588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378941, 38.984241, 44.838402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.119720, 38.680473, 44.861427>,  <30.964188, 38.498211, 44.875240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.119720, 38.680473, 44.861427>,  <31.378941, 38.984241, 44.838402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119720, 38.680473, 44.861427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623010, 0.572079, 0.533463,
		-0.438051, 0.309850, -0.843862,
		-0.648050, -0.759419, 0.057560,
		30.925306, 38.452648, 44.878696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716902, 39.205803, 44.522453>,  <31.378941, 38.984241, 44.838402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716902, 39.205803, 44.522453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.695181, 38.917324, 44.798691>,  <30.682148, 38.744236, 44.964436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.695181, 38.917324, 44.798691>,  <30.716902, 39.205803, 44.522453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695181, 38.917324, 44.798691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553937, 0.597192, 0.580099,
		-0.830785, -0.351046, -0.431928,
		-0.054303, -0.721199, 0.690596,
		30.678890, 38.700966, 45.005871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063684, 39.294796, 44.767879>,  <30.716902, 39.205803, 44.522453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063684, 39.294796, 44.767879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.220222, 39.064545, 45.055073>,  <30.314146, 38.926395, 45.227390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.220222, 39.064545, 45.055073>,  <30.063684, 39.294796, 44.767879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220222, 39.064545, 45.055073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681065, 0.343528, 0.646637,
		-0.618870, -0.742051, -0.257603,
		0.391344, -0.575629, 0.717985,
		30.337626, 38.891857, 45.270470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789110, 39.560959, 44.201210>,  <30.063684, 39.294796, 44.767879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789110, 39.560959, 44.201210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.398481, 39.645592, 44.216896>,  <29.164104, 39.696373, 44.226307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.398481, 39.645592, 44.216896>,  <29.789110, 39.560959, 44.201210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398481, 39.645592, 44.216896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048162, -0.037312, -0.998142,
		-0.209724, -0.976648, 0.046628,
		-0.976574, 0.211580, 0.039212,
		29.105509, 39.709064, 44.228661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393429, 38.938808, 43.907181>,  <29.789110, 39.560959, 44.201210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393429, 38.938808, 43.907181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.230280, 39.302635, 43.875359>,  <29.132391, 39.520931, 43.856266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.230280, 39.302635, 43.875359>,  <29.393429, 38.938808, 43.907181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230280, 39.302635, 43.875359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097407, -0.129986, -0.986720,
		-0.907829, -0.394705, 0.141616,
		-0.407872, 0.909566, -0.079558,
		29.107918, 39.575504, 43.851490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785522, 38.878029, 43.567295>,  <29.393429, 38.938808, 43.907181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785522, 38.878029, 43.567295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.894794, 39.258121, 43.507393>,  <28.960358, 39.486179, 43.471451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.894794, 39.258121, 43.507393>,  <28.785522, 38.878029, 43.567295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894794, 39.258121, 43.507393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203718, -0.209290, -0.956398,
		-0.940144, 0.230762, -0.250754,
		0.273181, 0.950235, -0.149752,
		28.976749, 39.543194, 43.462467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564241, 39.043385, 42.854080>,  <28.785522, 38.878029, 43.567295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564241, 39.043385, 42.854080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.832937, 39.331100, 42.924942>,  <28.994154, 39.503731, 42.967461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.832937, 39.331100, 42.924942>,  <28.564241, 39.043385, 42.854080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832937, 39.331100, 42.924942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316058, -0.061997, -0.946712,
		-0.669981, 0.691934, -0.268985,
		0.671738, 0.719294, 0.177155,
		29.034458, 39.546890, 42.978088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372282, 39.664558, 42.455090>,  <28.564241, 39.043385, 42.854080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372282, 39.664558, 42.455090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.763393, 39.694199, 42.533527>,  <28.998060, 39.711983, 42.580589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.763393, 39.694199, 42.533527>,  <28.372282, 39.664558, 42.455090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763393, 39.694199, 42.533527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195334, 0.017493, -0.980581,
		-0.076090, 0.997097, 0.002631,
		0.977781, 0.074098, 0.196098,
		29.056728, 39.716427, 42.592358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630934, 40.022640, 41.890766>,  <28.372282, 39.664558, 42.455090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630934, 40.022640, 41.890766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.939711, 39.832722, 42.059845>,  <29.124977, 39.718773, 42.161293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.939711, 39.832722, 42.059845>,  <28.630934, 40.022640, 41.890766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939711, 39.832722, 42.059845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367990, -0.208440, -0.906166,
		0.518349, 0.855058, 0.013815,
		0.771944, -0.474794, 0.422697,
		29.171293, 39.690285, 42.186653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274313, 40.231190, 41.528378>,  <28.630934, 40.022640, 41.890766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274313, 40.231190, 41.528378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.335993, 39.868828, 41.686138>,  <29.373001, 39.651409, 41.780796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.335993, 39.868828, 41.686138>,  <29.274313, 40.231190, 41.528378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335993, 39.868828, 41.686138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256292, -0.348839, -0.901458,
		0.954221, 0.240086, 0.178386,
		0.154199, -0.905908, 0.394401,
		29.382252, 39.597054, 41.804459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932552, 40.599133, 41.547150>,  <29.274313, 40.231190, 41.528378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932552, 40.599133, 41.547150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012442, 40.916943, 41.317772>,  <30.060375, 41.107628, 41.180145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012442, 40.916943, 41.317772>,  <29.932552, 40.599133, 41.547150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012442, 40.916943, 41.317772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365480, 0.603403, 0.708751,
		0.909140, 0.068029, 0.410897,
		0.199721, 0.794529, -0.573442,
		30.072357, 41.155300, 41.145741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163515, 41.039162, 42.030071>,  <29.932552, 40.599133, 41.547150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163515, 41.039162, 42.030071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.006378, 41.234211, 41.718201>,  <29.912096, 41.351238, 41.531078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.006378, 41.234211, 41.718201>,  <30.163515, 41.039162, 42.030071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006378, 41.234211, 41.718201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432469, 0.650274, 0.624591,
		0.811569, 0.582553, -0.044574,
		-0.392843, 0.487621, -0.779679,
		29.888525, 41.380497, 41.484299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177357, 41.693184, 42.256172>,  <30.163515, 41.039162, 42.030071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177357, 41.693184, 42.256172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.910969, 41.680481, 41.958054>,  <29.751135, 41.672859, 41.779182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.910969, 41.680481, 41.958054>,  <30.177357, 41.693184, 42.256172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910969, 41.680481, 41.958054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623833, 0.571545, 0.533075,
		0.409041, 0.819956, -0.400447,
		-0.665971, -0.031762, -0.745301,
		29.711178, 41.670952, 41.734463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946419, 42.331341, 42.326649>,  <30.177357, 41.693184, 42.256172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946419, 42.331341, 42.326649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676308, 42.149406, 42.094398>,  <29.514240, 42.040245, 41.955048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676308, 42.149406, 42.094398>,  <29.946419, 42.331341, 42.326649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676308, 42.149406, 42.094398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729174, 0.530081, 0.432804,
		0.110923, 0.715639, -0.689607,
		-0.675279, -0.454835, -0.580623,
		29.473724, 42.012955, 41.920212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571922, 42.891003, 42.039394>,  <29.946419, 42.331341, 42.326649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571922, 42.891003, 42.039394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.327324, 42.580276, 41.979229>,  <29.180565, 42.393841, 41.943130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.327324, 42.580276, 41.979229>,  <29.571922, 42.891003, 42.039394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327324, 42.580276, 41.979229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774377, 0.548499, 0.315417,
		-0.162518, 0.309357, -0.936956,
		-0.611496, -0.776818, -0.150418,
		29.143875, 42.347233, 41.934105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984314, 43.086826, 41.597733>,  <29.571922, 42.891003, 42.039394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984314, 43.086826, 41.597733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.865810, 42.776669, 41.820801>,  <28.794708, 42.590576, 41.954643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.865810, 42.776669, 41.820801>,  <28.984314, 43.086826, 41.597733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865810, 42.776669, 41.820801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775741, 0.535970, 0.333109,
		-0.557185, -0.333921, -0.760291,
		-0.296261, -0.775392, 0.557671,
		28.776932, 42.544052, 41.988102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234140, 43.144447, 41.758137>,  <28.984314, 43.086826, 41.597733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234140, 43.144447, 41.758137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.336370, 42.850475, 42.009392>,  <28.397709, 42.674091, 42.160145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.336370, 42.850475, 42.009392>,  <28.234140, 43.144447, 41.758137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336370, 42.850475, 42.009392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803829, 0.199456, 0.560426,
		-0.537160, -0.648148, -0.539781,
		0.255576, -0.734930, 0.628140,
		28.413044, 42.629997, 42.197834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616882, 42.832870, 41.940983>,  <28.234140, 43.144447, 41.758137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616882, 42.832870, 41.940983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.877787, 42.740070, 42.229630>,  <28.034330, 42.684391, 42.402817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.877787, 42.740070, 42.229630>,  <27.616882, 42.832870, 41.940983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877787, 42.740070, 42.229630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586235, 0.449091, 0.674275,
		-0.480503, -0.862840, 0.156918,
		0.652262, -0.232000, 0.721616,
		28.073465, 42.670471, 42.446114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211338, 42.493038, 42.432014>,  <27.616882, 42.832870, 41.940983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211338, 42.493038, 42.432014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.548735, 42.623657, 42.602608>,  <27.751173, 42.702030, 42.704964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.548735, 42.623657, 42.602608>,  <27.211338, 42.493038, 42.432014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548735, 42.623657, 42.602608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536470, 0.472481, 0.699258,
		0.026836, -0.818613, 0.573718,
		0.843493, 0.326548, 0.426482,
		27.801783, 42.721622, 42.730553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.503410, 35.474361, 31.354113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626678, 35.828983, 31.492126>,  <35.700642, 36.041756, 31.574936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626678, 35.828983, 31.492126>,  <35.503410, 35.474361, 31.354113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626678, 35.828983, 31.492126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907749, 0.165514, 0.385484,
		0.284645, -0.432000, 0.855776,
		0.308172, 0.886556, 0.345035,
		35.719131, 36.094952, 31.595636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075726, 35.614986, 31.954987>,  <35.503410, 35.474361, 31.354113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075726, 35.614986, 31.954987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227325, 35.983170, 31.916788>,  <35.318287, 36.204079, 31.893869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227325, 35.983170, 31.916788>,  <35.075726, 35.614986, 31.954987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227325, 35.983170, 31.916788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816750, 0.381235, 0.433104,
		0.435061, -0.086147, 0.896271,
		0.379001, 0.920456, -0.095500,
		35.341026, 36.259308, 31.888138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843925, 35.823170, 32.537666>,  <35.075726, 35.614986, 31.954987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843925, 35.823170, 32.537666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915241, 36.154522, 32.325253>,  <34.958031, 36.353333, 32.197803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915241, 36.154522, 32.325253>,  <34.843925, 35.823170, 32.537666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915241, 36.154522, 32.325253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788055, 0.443381, 0.427063,
		0.589222, 0.342344, 0.731860,
		0.178290, 0.828380, -0.531035,
		34.968727, 36.403034, 32.165943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806332, 36.378754, 32.968708>,  <34.843925, 35.823170, 32.537666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806332, 36.378754, 32.968708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718941, 36.528450, 32.608219>,  <34.666504, 36.618267, 32.391926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718941, 36.528450, 32.608219>,  <34.806332, 36.378754, 32.968708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718941, 36.528450, 32.608219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871443, 0.340790, 0.352776,
		0.439152, 0.862441, 0.251676,
		-0.218479, 0.374243, -0.901226,
		34.653397, 36.640724, 32.337852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579540, 37.133072, 33.106434>,  <34.806332, 36.378754, 32.968708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579540, 37.133072, 33.106434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437939, 37.048969, 32.741913>,  <34.352978, 36.998508, 32.523201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437939, 37.048969, 32.741913>,  <34.579540, 37.133072, 33.106434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437939, 37.048969, 32.741913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900058, 0.341350, 0.270881,
		0.254117, 0.916118, -0.310084,
		-0.354006, -0.210258, -0.911302,
		34.331738, 36.985893, 32.468521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303490, 37.725815, 32.884117>,  <34.579540, 37.133072, 33.106434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303490, 37.725815, 32.884117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123310, 37.461231, 32.644260>,  <34.015202, 37.302479, 32.500347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123310, 37.461231, 32.644260>,  <34.303490, 37.725815, 32.884117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123310, 37.461231, 32.644260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885536, 0.416537, 0.205727,
		0.113691, 0.623671, -0.773375,
		-0.450445, -0.661462, -0.599639,
		33.988178, 37.262791, 32.464367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830555, 38.089642, 32.399414>,  <34.303490, 37.725815, 32.884117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830555, 38.089642, 32.399414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688522, 37.719193, 32.450356>,  <33.603302, 37.496925, 32.480923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688522, 37.719193, 32.450356>,  <33.830555, 38.089642, 32.399414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688522, 37.719193, 32.450356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913479, 0.372687, 0.163280,
		-0.198681, -0.058361, -0.978325,
		-0.355079, -0.926120, 0.127357,
		33.581997, 37.441357, 32.488564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118507, 38.212143, 32.503208>,  <33.830555, 38.089642, 32.399414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118507, 38.212143, 32.503208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133324, 37.821045, 32.585804>,  <33.142212, 37.586384, 32.635361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133324, 37.821045, 32.585804>,  <33.118507, 38.212143, 32.503208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133324, 37.821045, 32.585804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927861, 0.043085, 0.370430,
		-0.371083, -0.205315, -0.905617,
		0.037036, -0.977747, 0.206492,
		33.144436, 37.527721, 32.647751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481762, 37.866520, 32.291374>,  <33.118507, 38.212143, 32.503208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481762, 37.866520, 32.291374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635311, 37.607773, 32.554947>,  <32.727440, 37.452522, 32.713093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635311, 37.607773, 32.554947>,  <32.481762, 37.866520, 32.291374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635311, 37.607773, 32.554947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841729, 0.048256, 0.537740,
		-0.379646, -0.761070, -0.525967,
		0.383877, -0.646872, 0.658935,
		32.750473, 37.413712, 32.752628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926203, 37.290768, 32.469654>,  <32.481762, 37.866520, 32.291374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926203, 37.290768, 32.469654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191051, 37.311726, 32.768677>,  <32.349960, 37.324303, 32.948090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191051, 37.311726, 32.768677>,  <31.926203, 37.290768, 32.469654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191051, 37.311726, 32.768677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749373, 0.054025, 0.659941,
		-0.005808, -0.997164, 0.075035,
		0.662123, 0.052396, 0.747561,
		32.389687, 37.327446, 32.992947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698208, 36.898975, 32.961666>,  <31.926203, 37.290768, 32.469654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698208, 36.898975, 32.961666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956034, 37.121887, 33.171040>,  <32.110729, 37.255634, 33.296665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956034, 37.121887, 33.171040>,  <31.698208, 36.898975, 32.961666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956034, 37.121887, 33.171040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713836, 0.193457, 0.673062,
		0.273820, -0.807476, 0.522500,
		0.644562, 0.557277, 0.523433,
		32.149403, 37.289070, 33.328072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443624, 36.713154, 33.541344>,  <31.698208, 36.898975, 32.961666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443624, 36.713154, 33.541344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666756, 37.041489, 33.590408>,  <31.800634, 37.238491, 33.619846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666756, 37.041489, 33.590408>,  <31.443624, 36.713154, 33.541344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666756, 37.041489, 33.590408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640942, 0.332165, 0.691997,
		0.527275, -0.464636, 0.711403,
		0.557830, 0.820841, 0.122663,
		31.834105, 37.287743, 33.627209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026367, 36.599880, 34.175579>,  <31.443624, 36.713154, 33.541344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026367, 36.599880, 34.175579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822315, 36.270763, 34.275799>,  <31.699884, 36.073292, 34.335930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822315, 36.270763, 34.275799>,  <32.026367, 36.599880, 34.175579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822315, 36.270763, 34.275799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652519, -0.560010, -0.510498,
		0.560344, -0.096936, 0.822568,
		-0.510132, -0.822795, 0.250546,
		31.669275, 36.023926, 34.350964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535316, 36.061588, 34.296200>,  <32.026367, 36.599880, 34.175579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535316, 36.061588, 34.296200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196743, 35.856525, 34.238594>,  <31.993599, 35.733490, 34.204029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196743, 35.856525, 34.238594>,  <32.535316, 36.061588, 34.296200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196743, 35.856525, 34.238594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521061, -0.741623, -0.422482,
		0.109780, -0.432643, 0.894856,
		-0.846430, -0.512655, -0.144018,
		31.942814, 35.702728, 34.195389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696198, 35.401234, 34.334354>,  <32.535316, 36.061588, 34.296200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696198, 35.401234, 34.334354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350521, 35.363708, 34.136620>,  <32.143116, 35.341194, 34.017979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350521, 35.363708, 34.136620>,  <32.696198, 35.401234, 34.334354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350521, 35.363708, 34.136620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450141, -0.583122, -0.676271,
		-0.224817, -0.806950, 0.546159,
		-0.864194, -0.093812, -0.494337,
		32.091263, 35.335564, 33.988319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630169, 34.654430, 34.150017>,  <32.696198, 35.401234, 34.334354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630169, 34.654430, 34.150017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393501, 34.848228, 33.892277>,  <32.251499, 34.964508, 33.737633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393501, 34.848228, 33.892277>,  <32.630169, 34.654430, 34.150017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393501, 34.848228, 33.892277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402745, -0.514739, -0.756862,
		-0.698371, -0.707322, 0.109427,
		-0.591671, 0.484500, -0.644349,
		32.216000, 34.993580, 33.698971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379360, 34.141060, 33.687878>,  <32.630169, 34.654430, 34.150017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379360, 34.141060, 33.687878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336342, 34.488441, 33.494293>,  <32.310532, 34.696873, 33.378143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336342, 34.488441, 33.494293>,  <32.379360, 34.141060, 33.687878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336342, 34.488441, 33.494293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402828, -0.406969, -0.819821,
		-0.908935, -0.283122, -0.306070,
		-0.107548, 0.868457, -0.483958,
		32.304077, 34.748978, 33.349106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871881, 33.881931, 33.164028>,  <32.379360, 34.141060, 33.687878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871881, 33.881931, 33.164028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095371, 34.192612, 33.047707>,  <32.229465, 34.379021, 32.977913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095371, 34.192612, 33.047707>,  <31.871881, 33.881931, 33.164028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095371, 34.192612, 33.047707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283729, -0.508485, -0.812982,
		-0.779312, 0.371723, -0.504475,
		0.558722, 0.776701, -0.290800,
		32.262989, 34.425621, 32.960468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787485, 33.984386, 32.388237>,  <31.871881, 33.881931, 33.164028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787485, 33.984386, 32.388237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136295, 34.166611, 32.459827>,  <32.345581, 34.275944, 32.502781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136295, 34.166611, 32.459827>,  <31.787485, 33.984386, 32.388237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136295, 34.166611, 32.459827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406495, -0.470384, -0.783263,
		-0.272634, 0.755781, -0.595371,
		0.872028, 0.455559, 0.178978,
		32.397903, 34.303280, 32.513519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979111, 34.251698, 31.718735>,  <31.787485, 33.984386, 32.388237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979111, 34.251698, 31.718735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318073, 34.300743, 31.925371>,  <32.521450, 34.330170, 32.049351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318073, 34.300743, 31.925371>,  <31.979111, 34.251698, 31.718735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318073, 34.300743, 31.925371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507036, -0.475551, -0.718864,
		0.157521, 0.871101, -0.465156,
		0.847408, 0.122615, 0.516589,
		32.572296, 34.337528, 32.080349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375614, 34.697964, 31.340204>,  <31.979111, 34.251698, 31.718735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375614, 34.697964, 31.340204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594151, 34.454159, 31.569992>,  <32.725273, 34.307877, 31.707865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594151, 34.454159, 31.569992>,  <32.375614, 34.697964, 31.340204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594151, 34.454159, 31.569992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418575, -0.395398, -0.817591,
		0.725472, 0.687140, 0.039104,
		0.546337, -0.609508, 0.574470,
		32.758053, 34.271305, 31.742332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019115, 34.745163, 31.040150>,  <32.375614, 34.697964, 31.340204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019115, 34.745163, 31.040150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047718, 34.422363, 31.274633>,  <33.064880, 34.228683, 31.415323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047718, 34.422363, 31.274633>,  <33.019115, 34.745163, 31.040150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047718, 34.422363, 31.274633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815695, -0.290928, -0.500003,
		0.574046, 0.513925, 0.637458,
		0.071509, -0.806996, 0.586212,
		33.069172, 34.180264, 31.450497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806446, 34.705688, 31.186087>,  <33.019115, 34.745163, 31.040150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806446, 34.705688, 31.186087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624237, 34.355232, 31.249178>,  <33.514912, 34.144958, 31.287033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624237, 34.355232, 31.249178>,  <33.806446, 34.705688, 31.186087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624237, 34.355232, 31.249178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828795, -0.482053, -0.284120,
		0.324963, 0.001303, 0.945726,
		-0.455520, -0.876141, 0.157730,
		33.487579, 34.092388, 31.296497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192192, 34.257248, 31.565390>,  <33.806446, 34.705688, 31.186087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192192, 34.257248, 31.565390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961273, 33.997063, 31.367954>,  <33.822723, 33.840954, 31.249493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961273, 33.997063, 31.367954>,  <34.192192, 34.257248, 31.565390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961273, 33.997063, 31.367954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807957, -0.542437, -0.230145,
		-0.118041, -0.531660, 0.838692,
		-0.577297, -0.650460, -0.493588,
		33.788086, 33.801926, 31.219877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509777, 33.601959, 31.698944>,  <34.192192, 34.257248, 31.565390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509777, 33.601959, 31.698944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282257, 33.530567, 31.377792>,  <34.145744, 33.487732, 31.185102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282257, 33.530567, 31.377792>,  <34.509777, 33.601959, 31.698944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282257, 33.530567, 31.377792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750731, -0.511411, -0.418164,
		-0.335966, -0.840596, 0.424883,
		-0.568797, -0.178484, -0.802878,
		34.111618, 33.477020, 31.136929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693790, 32.885670, 31.514330>,  <34.509777, 33.601959, 31.698944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693790, 32.885670, 31.514330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538414, 32.563900, 31.334541>,  <34.445190, 32.370838, 31.226667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538414, 32.563900, 31.334541>,  <34.693790, 32.885670, 31.514330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538414, 32.563900, 31.334541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582930, -0.592281, 0.556234,
		-0.713660, -0.045949, 0.698984,
		-0.388436, -0.804420, -0.449472,
		34.421883, 32.322575, 31.199699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170300, 32.452957, 31.928383>,  <34.693790, 32.885670, 31.514330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170300, 32.452957, 31.928383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411755, 32.274254, 31.664253>,  <34.556629, 32.167034, 31.505775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411755, 32.274254, 31.664253>,  <34.170300, 32.452957, 31.928383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411755, 32.274254, 31.664253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483190, -0.453791, 0.748733,
		-0.634149, -0.771028, -0.058059,
		0.603641, -0.446756, -0.660324,
		34.592846, 32.140228, 31.466156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135574, 31.732391, 32.098000>,  <34.170300, 32.452957, 31.928383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135574, 31.732391, 32.098000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461018, 31.858885, 31.902843>,  <34.656284, 31.934782, 31.785749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461018, 31.858885, 31.902843>,  <34.135574, 31.732391, 32.098000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461018, 31.858885, 31.902843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580845, -0.479258, 0.657975,
		-0.025751, -0.818722, -0.573612,
		0.813607, 0.316236, -0.487892,
		34.705101, 31.953756, 31.756475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385128, 32.130405, 32.655609>,  <34.135574, 31.732391, 32.098000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385128, 32.130405, 32.655609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733753, 31.972399, 32.771770>,  <34.942928, 31.877594, 32.841469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733753, 31.972399, 32.771770>,  <34.385128, 32.130405, 32.655609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733753, 31.972399, 32.771770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184929, 0.283702, 0.940912,
		-0.454066, -0.873770, 0.174214,
		0.871565, -0.395019, 0.290404,
		34.995224, 31.853893, 32.858891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353783, 31.577349, 33.176559>,  <34.385128, 32.130405, 32.655609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353783, 31.577349, 33.176559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689819, 31.790228, 33.218540>,  <34.891441, 31.917955, 33.243729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689819, 31.790228, 33.218540>,  <34.353783, 31.577349, 33.176559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689819, 31.790228, 33.218540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203206, 0.129364, 0.970552,
		0.502950, -0.836677, 0.216824,
		0.840088, 0.532199, 0.104954,
		34.941845, 31.949888, 33.250027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723927, 31.356289, 33.766945>,  <34.353783, 31.577349, 33.176559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723927, 31.356289, 33.766945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848392, 31.734381, 33.727516>,  <34.923073, 31.961235, 33.703861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848392, 31.734381, 33.727516>,  <34.723927, 31.356289, 33.766945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848392, 31.734381, 33.727516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168268, 0.156877, 0.973178,
		0.935340, -0.286234, 0.207866,
		0.311166, 0.945230, -0.098569,
		34.941742, 32.017948, 33.697945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186115, 31.493559, 34.330860>,  <34.723927, 31.356289, 33.766945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186115, 31.493559, 34.330860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084610, 31.847494, 34.174568>,  <35.023708, 32.059856, 34.080791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084610, 31.847494, 34.174568>,  <35.186115, 31.493559, 34.330860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084610, 31.847494, 34.174568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144839, 0.364636, 0.919816,
		0.956362, 0.290005, 0.035629,
		-0.253759, 0.884838, -0.390728,
		35.008484, 32.112946, 34.057350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613270, 31.932028, 34.642811>,  <35.186115, 31.493559, 34.330860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613270, 31.932028, 34.642811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297230, 32.141296, 34.515038>,  <35.107605, 32.266857, 34.438374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297230, 32.141296, 34.515038>,  <35.613270, 31.932028, 34.642811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297230, 32.141296, 34.515038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133385, 0.361898, 0.922626,
		0.598295, 0.771571, -0.216151,
		-0.790096, 0.523171, -0.319437,
		35.060200, 32.298248, 34.419205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732895, 32.610867, 34.924915>,  <35.613270, 31.932028, 34.642811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732895, 32.610867, 34.924915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341892, 32.573277, 34.849384>,  <35.107292, 32.550724, 34.804066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341892, 32.573277, 34.849384>,  <35.732895, 32.610867, 34.924915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341892, 32.573277, 34.849384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210899, 0.421575, 0.881928,
		-0.003274, 0.901911, -0.431910,
		-0.977502, -0.093976, -0.188832,
		35.048641, 32.545082, 34.792736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517445, 33.261665, 35.093452>,  <35.732895, 32.610867, 34.924915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517445, 33.261665, 35.093452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210957, 33.005398, 35.113213>,  <35.027061, 32.851635, 35.125069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210957, 33.005398, 35.113213>,  <35.517445, 33.261665, 35.093452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210957, 33.005398, 35.113213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308858, 0.434611, 0.846003,
		-0.563479, 0.632971, -0.530886,
		-0.766223, -0.640673, 0.049396,
		34.981091, 32.813194, 35.128033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178333, 33.611343, 35.562675>,  <35.517445, 33.261665, 35.093452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178333, 33.611343, 35.562675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994942, 33.255939, 35.555161>,  <34.884907, 33.042698, 35.550652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994942, 33.255939, 35.555161>,  <35.178333, 33.611343, 35.562675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994942, 33.255939, 35.555161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382910, 0.178417, 0.906393,
		-0.801986, 0.422752, -0.422018,
		-0.458474, -0.888509, -0.018788,
		34.857399, 32.989388, 35.549522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427319, 33.662403, 35.703274>,  <35.178333, 33.611343, 35.562675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427319, 33.662403, 35.703274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487797, 33.277210, 35.792542>,  <34.524082, 33.046093, 35.846100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487797, 33.277210, 35.792542>,  <34.427319, 33.662403, 35.703274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487797, 33.277210, 35.792542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408892, 0.144616, 0.901051,
		-0.899971, -0.227484, -0.371891,
		0.151194, -0.962984, 0.223166,
		34.533154, 32.988316, 35.859493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844418, 33.384041, 36.038391>,  <34.427319, 33.662403, 35.703274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844418, 33.384041, 36.038391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138321, 33.148750, 36.173512>,  <34.314663, 33.007576, 36.254585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138321, 33.148750, 36.173512>,  <33.844418, 33.384041, 36.038391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138321, 33.148750, 36.173512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173726, 0.318205, 0.931968,
		-0.655701, -0.743461, 0.131614,
		0.734762, -0.588228, 0.337806,
		34.358749, 32.972282, 36.274853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575417, 33.214546, 36.655552>,  <33.844418, 33.384041, 36.038391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575417, 33.214546, 36.655552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953236, 33.086887, 36.686462>,  <34.179928, 33.010292, 36.705009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953236, 33.086887, 36.686462>,  <33.575417, 33.214546, 36.655552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953236, 33.086887, 36.686462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028479, 0.314054, 0.948978,
		-0.327132, -0.894156, 0.305728,
		0.944549, -0.319148, 0.077272,
		34.236599, 32.991142, 36.709644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620102, 32.815445, 37.326550>,  <33.575417, 33.214546, 36.655552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620102, 32.815445, 37.326550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974716, 32.974785, 37.232422>,  <34.187485, 33.070389, 37.175945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974716, 32.974785, 37.232422>,  <33.620102, 32.815445, 37.326550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974716, 32.974785, 37.232422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086596, 0.356765, 0.930172,
		0.454487, -0.845007, 0.281789,
		0.886534, 0.398349, -0.235319,
		34.240677, 33.094288, 37.161827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178688, 32.570236, 37.824383>,  <33.620102, 32.815445, 37.326550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178688, 32.570236, 37.824383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330948, 32.914089, 37.688068>,  <34.422302, 33.120399, 37.606277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330948, 32.914089, 37.688068>,  <34.178688, 32.570236, 37.824383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330948, 32.914089, 37.688068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125299, 0.317187, 0.940050,
		0.916192, -0.400528, 0.013025,
		0.380647, 0.859634, -0.340790,
		34.445141, 33.171978, 37.585831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590069, 32.799835, 38.340103>,  <34.178688, 32.570236, 37.824383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590069, 32.799835, 38.340103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584564, 33.140984, 38.131325>,  <34.581261, 33.345673, 38.006058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584564, 33.140984, 38.131325>,  <34.590069, 32.799835, 38.340103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584564, 33.140984, 38.131325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017162, 0.522120, 0.852699,
		0.999758, 0.002776, -0.021821,
		-0.013760, 0.852868, -0.521946,
		34.580437, 33.396843, 37.974739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033855, 33.187397, 38.693558>,  <34.590069, 32.799835, 38.340103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033855, 33.187397, 38.693558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834923, 33.463081, 38.482784>,  <34.715565, 33.628490, 38.356319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834923, 33.463081, 38.482784>,  <35.033855, 33.187397, 38.693558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834923, 33.463081, 38.482784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029131, 0.620295, 0.783828,
		0.867073, 0.374470, -0.328568,
		-0.497329, 0.689207, -0.526932,
		34.685722, 33.669842, 38.324703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423920, 33.863472, 38.728836>,  <35.033855, 33.187397, 38.693558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423920, 33.863472, 38.728836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044155, 33.950310, 38.638073>,  <34.816296, 34.002411, 38.583614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044155, 33.950310, 38.638073>,  <35.423920, 33.863472, 38.728836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044155, 33.950310, 38.638073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009934, 0.742958, 0.669264,
		0.313870, 0.633155, -0.707531,
		-0.949414, 0.217090, -0.226903,
		34.759331, 34.015438, 38.570004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375954, 34.689758, 38.537022>,  <35.423920, 33.863472, 38.728836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375954, 34.689758, 38.537022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034046, 34.527740, 38.666824>,  <34.828903, 34.430531, 38.744705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034046, 34.527740, 38.666824>,  <35.375954, 34.689758, 38.537022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034046, 34.527740, 38.666824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104682, 0.746949, 0.656589,
		-0.508342, 0.527261, -0.680870,
		-0.854769, -0.405047, 0.324511,
		34.777615, 34.406227, 38.764179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952503, 35.306713, 38.673561>,  <35.375954, 34.689758, 38.537022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952503, 35.306713, 38.673561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738983, 35.024040, 38.859318>,  <34.610870, 34.854435, 38.970772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738983, 35.024040, 38.859318>,  <34.952503, 35.306713, 38.673561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738983, 35.024040, 38.859318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403849, 0.695547, 0.594239,
		-0.742944, 0.129660, -0.656675,
		-0.533797, -0.706684, 0.464390,
		34.578842, 34.812035, 38.998634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223736, 35.543407, 38.656563>,  <34.952503, 35.306713, 38.673561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223736, 35.543407, 38.656563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243439, 35.278774, 38.955864>,  <34.255260, 35.119995, 39.135445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243439, 35.278774, 38.955864>,  <34.223736, 35.543407, 38.656563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243439, 35.278774, 38.955864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440017, 0.658166, 0.610904,
		-0.896637, -0.359335, -0.258688,
		0.049259, -0.661586, 0.748249,
		34.258217, 35.080299, 39.180340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584198, 35.532166, 38.929668>,  <34.223736, 35.543407, 38.656563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584198, 35.532166, 38.929668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793171, 35.379726, 39.234779>,  <33.918556, 35.288265, 39.417847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793171, 35.379726, 39.234779>,  <33.584198, 35.532166, 38.929668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793171, 35.379726, 39.234779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383457, 0.693999, 0.609366,
		-0.761593, -0.610845, 0.216434,
		0.522434, -0.381096, 0.762777,
		33.949902, 35.265396, 39.463612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149769, 35.527412, 39.456596>,  <33.584198, 35.532166, 38.929668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149769, 35.527412, 39.456596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492386, 35.494560, 39.660393>,  <33.697956, 35.474850, 39.782673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492386, 35.494560, 39.660393>,  <33.149769, 35.527412, 39.456596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492386, 35.494560, 39.660393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366226, 0.598852, 0.712219,
		-0.363604, -0.796638, 0.482867,
		0.856546, -0.082127, 0.509494,
		33.749352, 35.469921, 39.813240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930920, 35.343346, 40.129929>,  <33.149769, 35.527412, 39.456596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930920, 35.343346, 40.129929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306118, 35.470177, 40.185951>,  <33.531239, 35.546276, 40.219566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306118, 35.470177, 40.185951>,  <32.930920, 35.343346, 40.129929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306118, 35.470177, 40.185951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268680, 0.409772, 0.871722,
		0.219013, -0.855306, 0.469559,
		0.938000, 0.317079, 0.140058,
		33.587517, 35.565300, 40.227970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058708, 35.195885, 40.885303>,  <32.930920, 35.343346, 40.129929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058708, 35.195885, 40.885303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317085, 35.471230, 40.753296>,  <33.472111, 35.636436, 40.674091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317085, 35.471230, 40.753296>,  <33.058708, 35.195885, 40.885303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317085, 35.471230, 40.753296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185988, 0.561189, 0.806520,
		0.740384, -0.459585, 0.490523,
		0.645941, 0.688367, -0.330018,
		33.510868, 35.677738, 40.654289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636646, 35.206470, 41.373440>,  <33.058708, 35.195885, 40.885303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636646, 35.206470, 41.373440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591278, 35.542900, 41.161880>,  <33.564056, 35.744759, 41.034946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591278, 35.542900, 41.161880>,  <33.636646, 35.206470, 41.373440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591278, 35.542900, 41.161880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168422, 0.508350, 0.844521,
		0.979168, 0.184862, 0.083998,
		-0.113420, 0.841075, -0.528894,
		33.557251, 35.795223, 41.003212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076908, 35.720436, 41.691982>,  <33.636646, 35.206470, 41.373440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076908, 35.720436, 41.691982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810658, 35.913227, 41.464077>,  <33.650906, 36.028904, 41.327332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810658, 35.913227, 41.464077>,  <34.076908, 35.720436, 41.691982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810658, 35.913227, 41.464077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090964, 0.705379, 0.702970,
		0.740718, 0.519745, -0.425677,
		-0.665629, 0.481981, -0.569765,
		33.610970, 36.057823, 41.293148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356846, 36.393017, 41.874004>,  <34.076908, 35.720436, 41.691982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356846, 36.393017, 41.874004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983147, 36.385338, 41.731560>,  <33.758926, 36.380730, 41.646095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983147, 36.385338, 41.731560>,  <34.356846, 36.393017, 41.874004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983147, 36.385338, 41.731560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327271, 0.442870, 0.834721,
		0.141687, 0.896380, -0.420032,
		-0.934248, -0.019196, -0.356108,
		33.702873, 36.379578, 41.624729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658306, 37.099197, 41.658508>,  <34.356846, 36.393017, 41.874004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658306, 37.099197, 41.658508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904522, 37.375370, 41.810520>,  <35.052250, 37.541073, 41.901730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904522, 37.375370, 41.810520>,  <34.658306, 37.099197, 41.658508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904522, 37.375370, 41.810520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639129, -0.155171, -0.753284,
		-0.461119, 0.706562, -0.536786,
		0.615536, 0.690428, 0.380032,
		35.089184, 37.582500, 41.924530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984478, 37.342636, 41.043564>,  <34.658306, 37.099197, 41.658508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984478, 37.342636, 41.043564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210320, 37.474743, 41.346123>,  <35.345825, 37.554008, 41.527660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210320, 37.474743, 41.346123>,  <34.984478, 37.342636, 41.043564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210320, 37.474743, 41.346123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812642, -0.062180, -0.579436,
		-0.144337, 0.941837, -0.303497,
		0.564606, 0.330268, 0.756401,
		35.379700, 37.573822, 41.573044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404110, 37.860397, 40.721718>,  <34.984478, 37.342636, 41.043564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404110, 37.860397, 40.721718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567455, 37.694149, 41.046803>,  <35.665462, 37.594402, 41.241852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567455, 37.694149, 41.046803>,  <35.404110, 37.860397, 40.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567455, 37.694149, 41.046803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786104, -0.292432, -0.544540,
		0.463983, 0.861247, 0.207301,
		0.408362, -0.415617, 0.812713,
		35.689964, 37.569466, 41.290615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149158, 38.063396, 40.791168>,  <35.404110, 37.860397, 40.721718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149158, 38.063396, 40.791168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108479, 37.755375, 41.043098>,  <36.084068, 37.570564, 41.194256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108479, 37.755375, 41.043098>,  <36.149158, 38.063396, 40.791168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108479, 37.755375, 41.043098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796357, -0.442455, -0.412369,
		0.596214, 0.459627, 0.658233,
		-0.101702, -0.770050, 0.629826,
		36.077969, 37.524361, 41.232048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803547, 37.960148, 41.136620>,  <36.149158, 38.063396, 40.791168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803547, 37.960148, 41.136620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593399, 37.620251, 41.119068>,  <36.467312, 37.416313, 41.108536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593399, 37.620251, 41.119068>,  <36.803547, 37.960148, 41.136620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593399, 37.620251, 41.119068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716423, -0.413943, -0.561596,
		0.459048, -0.326481, 0.826247,
		-0.525370, -0.849742, -0.043879,
		36.435787, 37.365330, 41.105904>
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
