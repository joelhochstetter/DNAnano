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
	<24.153154, 35.223782, 34.850334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394588, 35.076847, 35.133389>,  <24.539450, 34.988686, 35.303223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394588, 35.076847, 35.133389>,  <24.153154, 35.223782, 34.850334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394588, 35.076847, 35.133389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530563, -0.847552, 0.012579,
		0.595137, -0.383037, -0.706466,
		0.603585, -0.367339, 0.707635,
		24.575665, 34.966644, 35.345680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.900200, 34.567005, 34.734016>,  <24.153154, 35.223782, 34.850334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.900200, 34.567005, 34.734016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144142, 34.409328, 34.459007>,  <24.290508, 34.314720, 34.294003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144142, 34.409328, 34.459007>,  <23.900200, 34.567005, 34.734016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.144142, 34.409328, 34.459007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618770, 0.778884, 0.102294,
		0.495174, -0.487802, 0.718924,
		0.609858, -0.394195, -0.687520,
		24.327099, 34.291069, 34.252750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.563988, 34.453117, 35.084053>,  <23.900200, 34.567005, 34.734016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.563988, 34.453117, 35.084053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633154, 34.496899, 34.692520>,  <24.674654, 34.523167, 34.457600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633154, 34.496899, 34.692520>,  <24.563988, 34.453117, 35.084053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633154, 34.496899, 34.692520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763264, 0.613234, 0.203402,
		0.622518, -0.782282, 0.022495,
		0.172913, 0.109452, -0.978837,
		24.685028, 34.529736, 34.398869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225296, 34.361240, 35.087139>,  <24.563988, 34.453117, 35.084053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225296, 34.361240, 35.087139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186539, 34.503220, 34.715199>,  <25.163284, 34.588406, 34.492035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186539, 34.503220, 34.715199>,  <25.225296, 34.361240, 35.087139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186539, 34.503220, 34.715199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827443, 0.547928, 0.122936,
		0.553127, -0.757488, -0.346789,
		-0.096893, 0.354947, -0.929852,
		25.157471, 34.609703, 34.436241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847473, 34.160480, 34.597816>,  <25.225296, 34.361240, 35.087139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847473, 34.160480, 34.597816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652630, 34.500698, 34.518517>,  <25.535723, 34.704826, 34.470936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652630, 34.500698, 34.518517>,  <25.847473, 34.160480, 34.597816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652630, 34.500698, 34.518517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869478, 0.493622, -0.018596,
		0.082046, -0.181436, -0.979974,
		-0.487111, 0.850540, -0.198254,
		25.506496, 34.755859, 34.459042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361629, 33.736347, 34.417759>,  <25.847473, 34.160480, 34.597816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361629, 33.736347, 34.417759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461462, 33.550404, 34.077969>,  <25.521362, 33.438839, 33.874092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461462, 33.550404, 34.077969>,  <25.361629, 33.736347, 34.417759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461462, 33.550404, 34.077969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762167, 0.446832, -0.468447,
		0.597336, 0.764361, -0.242779,
		0.249581, -0.464859, -0.849480,
		25.536337, 33.410946, 33.823124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462673, 34.242268, 33.930710>,  <25.361629, 33.736347, 34.417759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462673, 34.242268, 33.930710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344349, 33.898685, 33.763527>,  <25.273355, 33.692535, 33.663219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344349, 33.898685, 33.763527>,  <25.462673, 34.242268, 33.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344349, 33.898685, 33.763527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651273, 0.501430, -0.569571,
		0.698814, 0.103720, -0.707744,
		-0.295808, -0.858959, -0.417956,
		25.255606, 33.640999, 33.638142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165258, 34.267540, 33.891796>,  <25.462673, 34.242268, 33.930710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165258, 34.267540, 33.891796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003138, 34.607140, 34.027401>,  <25.905865, 34.810898, 34.108765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003138, 34.607140, 34.027401>,  <26.165258, 34.267540, 33.891796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003138, 34.607140, 34.027401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909414, 0.412268, 0.054788,
		-0.093249, 0.330507, -0.939186,
		-0.405303, 0.849000, 0.339011,
		25.881546, 34.861839, 34.129105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399008, 34.723221, 33.454975>,  <26.165258, 34.267540, 33.891796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399008, 34.723221, 33.454975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279449, 34.982376, 33.735229>,  <26.207714, 35.137871, 33.903381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279449, 34.982376, 33.735229>,  <26.399008, 34.723221, 33.454975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279449, 34.982376, 33.735229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872476, 0.482959, -0.074400,
		-0.386584, 0.589055, -0.709625,
		-0.298894, 0.647893, 0.700641,
		26.189781, 35.176743, 33.945423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651222, 35.412647, 33.215195>,  <26.399008, 34.723221, 33.454975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651222, 35.412647, 33.215195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609497, 35.464119, 33.609669>,  <26.584461, 35.495003, 33.846352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609497, 35.464119, 33.609669>,  <26.651222, 35.412647, 33.215195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609497, 35.464119, 33.609669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845872, 0.533013, 0.019923,
		-0.523086, 0.836264, -0.164448,
		-0.104314, 0.128681, 0.986185,
		26.578203, 35.502724, 33.905525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860331, 36.153187, 33.440918>,  <26.651222, 35.412647, 33.215195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860331, 36.153187, 33.440918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916370, 35.905350, 33.749844>,  <26.949995, 35.756645, 33.935200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916370, 35.905350, 33.749844>,  <26.860331, 36.153187, 33.440918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916370, 35.905350, 33.749844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886898, 0.425316, 0.180327,
		-0.440209, 0.659702, 0.609105,
		0.140101, -0.619596, 0.772316,
		26.958401, 35.719471, 33.981537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027699, 36.532253, 34.043747>,  <26.860331, 36.153187, 33.440918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027699, 36.532253, 34.043747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202290, 36.176533, 34.098335>,  <27.307045, 35.963100, 34.131088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202290, 36.176533, 34.098335>,  <27.027699, 36.532253, 34.043747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202290, 36.176533, 34.098335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887349, 0.450561, 0.098014,
		-0.148654, 0.078318, 0.985783,
		0.436479, -0.889304, 0.136473,
		27.333233, 35.909740, 34.139278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666256, 36.386497, 34.400784>,  <27.027699, 36.532253, 34.043747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666256, 36.386497, 34.400784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993910, 36.517956, 34.588833>,  <28.190502, 36.596832, 34.701660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993910, 36.517956, 34.588833>,  <27.666256, 36.386497, 34.400784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993910, 36.517956, 34.588833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130419, -0.904832, 0.405303,
		0.558581, -0.270684, -0.784039,
		0.819133, 0.328648, 0.470119,
		28.239649, 36.616550, 34.729870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914795, 36.049175, 33.756687>,  <27.666256, 36.386497, 34.400784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914795, 36.049175, 33.756687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046017, 35.868294, 34.088444>,  <28.124750, 35.759766, 34.287498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046017, 35.868294, 34.088444>,  <27.914795, 36.049175, 33.756687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046017, 35.868294, 34.088444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926850, -0.323754, 0.190086,
		0.182563, -0.831083, -0.525330,
		0.328055, -0.452200, 0.829395,
		28.144434, 35.732635, 34.337261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984436, 35.270473, 33.906811>,  <27.914795, 36.049175, 33.756687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984436, 35.270473, 33.906811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889984, 35.480850, 34.233643>,  <27.833313, 35.607079, 34.429741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889984, 35.480850, 34.233643>,  <27.984436, 35.270473, 33.906811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889984, 35.480850, 34.233643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962591, -0.241606, -0.122662,
		0.132899, -0.815481, 0.563319,
		-0.236130, 0.525944, 0.817084,
		27.819145, 35.638634, 34.478767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590574, 34.874443, 34.558178>,  <27.984436, 35.270473, 33.906811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590574, 34.874443, 34.558178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479431, 35.256817, 34.520267>,  <27.412745, 35.486240, 34.497520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479431, 35.256817, 34.520267>,  <27.590574, 34.874443, 34.558178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479431, 35.256817, 34.520267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960185, -0.273406, 0.057385,
		0.028943, 0.106949, 0.993843,
		-0.277860, 0.955934, -0.094777,
		27.396072, 35.543598, 34.491833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041155, 35.040756, 35.072105>,  <27.590574, 34.874443, 34.558178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041155, 35.040756, 35.072105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015522, 35.268993, 34.744614>,  <27.000143, 35.405937, 34.548119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015522, 35.268993, 34.744614>,  <27.041155, 35.040756, 35.072105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015522, 35.268993, 34.744614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986974, -0.157549, -0.032552,
		-0.147564, 0.805977, 0.573259,
		-0.064080, 0.570596, -0.818727,
		26.996298, 35.440170, 34.498997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524836, 35.567726, 35.186359>,  <27.041155, 35.040756, 35.072105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524836, 35.567726, 35.186359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532719, 35.567158, 34.786438>,  <26.537449, 35.566814, 34.546486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532719, 35.567158, 34.786438>,  <26.524836, 35.567726, 35.186359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532719, 35.567158, 34.786438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999768, -0.008766, -0.019693,
		-0.008736, 0.999960, -0.001597,
		0.019706, -0.001425, -0.999805,
		26.538630, 35.566730, 34.486496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970695, 35.919617, 34.957481>,  <26.524836, 35.567726, 35.186359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970695, 35.919617, 34.957481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021063, 35.693962, 34.631073>,  <26.051283, 35.558567, 34.435226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021063, 35.693962, 34.631073>,  <25.970695, 35.919617, 34.957481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021063, 35.693962, 34.631073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911504, -0.390447, 0.129277,
		-0.391543, 0.727529, -0.563378,
		0.125916, -0.564139, -0.816022,
		26.058838, 35.524719, 34.386265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339228, 35.999462, 34.399979>,  <25.970695, 35.919617, 34.957481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339228, 35.999462, 34.399979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511803, 35.644623, 34.334343>,  <25.615347, 35.431721, 34.294960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511803, 35.644623, 34.334343>,  <25.339228, 35.999462, 34.399979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511803, 35.644623, 34.334343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899552, -0.436797, -0.003771,
		-0.068328, 0.149234, -0.986438,
		0.431436, -0.887095, -0.164089,
		25.641233, 35.378494, 34.285118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958183, 35.710045, 33.835651>,  <25.339228, 35.999462, 34.399979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958183, 35.710045, 33.835651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139889, 35.423107, 34.046955>,  <25.248913, 35.250946, 34.173737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139889, 35.423107, 34.046955>,  <24.958183, 35.710045, 33.835651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139889, 35.423107, 34.046955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763639, -0.618931, -0.183793,
		0.458801, -0.319911, -0.828950,
		0.454265, -0.717344, 0.528262,
		25.276169, 35.207905, 34.205433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.636530, 35.249142, 33.367359>,  <24.958183, 35.710045, 33.835651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.636530, 35.249142, 33.367359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827394, 35.058857, 33.662930>,  <24.941914, 34.944687, 33.840271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827394, 35.058857, 33.662930>,  <24.636530, 35.249142, 33.367359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827394, 35.058857, 33.662930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549921, -0.817488, -0.171171,
		0.685493, -0.324677, -0.651678,
		0.477164, -0.475708, 0.738930,
		24.970543, 34.916145, 33.884609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.895794, 34.595264, 33.106335>,  <24.636530, 35.249142, 33.367359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.895794, 34.595264, 33.106335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836178, 34.577240, 33.501457>,  <24.800409, 34.566425, 33.738529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836178, 34.577240, 33.501457>,  <24.895794, 34.595264, 33.106335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836178, 34.577240, 33.501457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540016, -0.833130, -0.119483,
		0.828354, -0.551238, 0.099834,
		-0.149039, -0.045062, 0.987804,
		24.791466, 34.563721, 33.797798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023478, 33.899548, 33.218903>,  <24.895794, 34.595264, 33.106335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023478, 33.899548, 33.218903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818005, 34.026772, 33.537643>,  <24.694721, 34.103107, 33.728886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818005, 34.026772, 33.537643>,  <25.023478, 33.899548, 33.218903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818005, 34.026772, 33.537643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556639, -0.830302, -0.027420,
		0.652905, -0.457643, 0.603555,
		-0.513681, 0.318059, 0.796850,
		24.663900, 34.122189, 33.776699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615814, 33.855270, 32.747601>,  <25.023478, 33.899548, 33.218903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615814, 33.855270, 32.747601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801762, 33.636681, 33.026245>,  <25.913330, 33.505527, 33.193432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801762, 33.636681, 33.026245>,  <25.615814, 33.855270, 32.747601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801762, 33.636681, 33.026245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355414, -0.605439, -0.712127,
		0.810911, 0.578632, -0.087227,
		0.464870, -0.546470, 0.696611,
		25.941223, 33.472740, 33.235229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324602, 33.755768, 32.628143>,  <25.615814, 33.855270, 32.747601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324602, 33.755768, 32.628143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181423, 33.435211, 32.819828>,  <26.095516, 33.242878, 32.934837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181423, 33.435211, 32.819828>,  <26.324602, 33.755768, 32.628143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181423, 33.435211, 32.819828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591462, -0.591720, -0.547759,
		0.722528, 0.087365, 0.685799,
		-0.357946, -0.801395, 0.479208,
		26.074039, 33.194794, 32.963589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846397, 33.385841, 32.895370>,  <26.324602, 33.755768, 32.628143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846397, 33.385841, 32.895370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534231, 33.144691, 32.829037>,  <26.346931, 33.000004, 32.789238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534231, 33.144691, 32.829037>,  <26.846397, 33.385841, 32.895370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534231, 33.144691, 32.829037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554780, -0.545310, -0.628376,
		0.288399, -0.582395, 0.760028,
		-0.780414, -0.602871, -0.165834,
		26.300108, 32.963829, 32.779285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886734, 32.711143, 33.132118>,  <26.846397, 33.385841, 32.895370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886734, 32.711143, 33.132118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685513, 32.738152, 32.787472>,  <26.564779, 32.754356, 32.580685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685513, 32.738152, 32.787472>,  <26.886734, 32.711143, 33.132118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685513, 32.738152, 32.787472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649250, -0.628504, -0.428320,
		-0.570449, -0.774870, 0.272332,
		-0.503054, 0.067523, -0.861613,
		26.534597, 32.758408, 32.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580141, 31.965197, 32.830803>,  <26.886734, 32.711143, 33.132118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580141, 31.965197, 32.830803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688154, 32.264565, 32.588497>,  <26.752962, 32.444187, 32.443115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688154, 32.264565, 32.588497>,  <26.580141, 31.965197, 32.830803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688154, 32.264565, 32.588497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815041, -0.512632, -0.270034,
		-0.512632, -0.420801, -0.748422,
		0.270034, 0.748422, -0.605761,
		26.769165, 32.489090, 32.406769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714884, 31.620234, 32.155643>,  <26.580141, 31.965197, 32.830803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714884, 31.620234, 32.155643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919331, 31.948086, 32.259155>,  <27.042000, 32.144798, 32.321262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919331, 31.948086, 32.259155>,  <26.714884, 31.620234, 32.155643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919331, 31.948086, 32.259155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858890, -0.498484, -0.117562,
		0.032640, 0.282351, -0.958756,
		0.511118, 0.819629, 0.258779,
		27.072666, 32.193974, 32.336788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333057, 31.244585, 32.284012>,  <26.714884, 31.620234, 32.155643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333057, 31.244585, 32.284012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389025, 30.887697, 32.112259>,  <27.422606, 30.673565, 32.009209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389025, 30.887697, 32.112259>,  <27.333057, 31.244585, 32.284012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389025, 30.887697, 32.112259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536763, 0.296056, -0.790086,
		0.832050, 0.341025, -0.437486,
		0.139919, -0.892218, -0.429383,
		27.431000, 30.620031, 31.983444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714197, 31.250866, 31.687504>,  <27.333057, 31.244585, 32.284012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714197, 31.250866, 31.687504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471973, 30.935476, 31.644407>,  <27.326639, 30.746243, 31.618549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471973, 30.935476, 31.644407>,  <27.714197, 31.250866, 31.687504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471973, 30.935476, 31.644407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455808, 0.454629, -0.765213,
		0.652334, -0.414270, -0.634697,
		-0.605556, -0.788474, -0.107743,
		27.290306, 30.698935, 31.612085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730001, 31.085897, 31.011311>,  <27.714197, 31.250866, 31.687504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730001, 31.085897, 31.011311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384792, 30.910675, 31.111946>,  <27.177666, 30.805542, 31.172327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384792, 30.910675, 31.111946>,  <27.730001, 31.085897, 31.011311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384792, 30.910675, 31.111946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468491, 0.507757, -0.722979,
		0.188961, -0.741814, -0.643432,
		-0.863024, -0.438057, 0.251587,
		27.125885, 30.779259, 31.187422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418449, 30.922192, 30.406860>,  <27.730001, 31.085897, 31.011311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418449, 30.922192, 30.406860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130850, 30.924797, 30.684853>,  <26.958290, 30.926361, 30.851648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130850, 30.924797, 30.684853>,  <27.418449, 30.922192, 30.406860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130850, 30.924797, 30.684853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559069, 0.588637, -0.583908,
		-0.412896, -0.808371, -0.419586,
		-0.718998, 0.006515, 0.694981,
		26.915150, 30.926752, 30.893347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912989, 31.179762, 29.977057>,  <27.418449, 30.922192, 30.406860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912989, 31.179762, 29.977057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751837, 31.211197, 30.341805>,  <26.655146, 31.230059, 30.560654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751837, 31.211197, 30.341805>,  <26.912989, 31.179762, 29.977057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751837, 31.211197, 30.341805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683177, 0.637177, -0.356755,
		-0.609061, -0.766700, -0.203016,
		-0.402881, 0.078590, 0.911872,
		26.630972, 31.234774, 30.615366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214685, 31.225351, 29.928905>,  <26.912989, 31.179762, 29.977057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214685, 31.225351, 29.928905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305082, 31.420876, 30.265949>,  <26.359320, 31.538191, 30.468176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305082, 31.420876, 30.265949>,  <26.214685, 31.225351, 29.928905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305082, 31.420876, 30.265949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807593, 0.577704, -0.118536,
		-0.544721, -0.653698, 0.525318,
		0.225992, 0.488812, 0.842609,
		26.372879, 31.567518, 30.518732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574057, 30.767954, 30.366007>,  <26.214685, 31.225351, 29.928905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574057, 30.767954, 30.366007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710594, 31.045729, 30.619381>,  <25.792517, 31.212395, 30.771406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710594, 31.045729, 30.619381>,  <25.574057, 30.767954, 30.366007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710594, 31.045729, 30.619381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609928, 0.676405, -0.412874,
		-0.715174, -0.245419, 0.654443,
		0.341342, 0.694439, 0.633435,
		25.812996, 31.254061, 30.809412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948658, 31.076286, 30.583038>,  <25.574057, 30.767954, 30.366007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948658, 31.076286, 30.583038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267982, 31.316299, 30.562416>,  <25.459578, 31.460308, 30.550043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267982, 31.316299, 30.562416>,  <24.948658, 31.076286, 30.583038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267982, 31.316299, 30.562416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448632, 0.535395, -0.715599,
		-0.401779, 0.594401, 0.696606,
		0.798312, 0.600033, -0.051557,
		25.507477, 31.496309, 30.546949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.704115, 31.724300, 30.470375>,  <24.948658, 31.076286, 30.583038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.704115, 31.724300, 30.470375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081617, 31.719427, 30.338209>,  <25.308119, 31.716503, 30.258909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081617, 31.719427, 30.338209>,  <24.704115, 31.724300, 30.470375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081617, 31.719427, 30.338209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227257, 0.701953, -0.674993,
		0.240158, 0.712119, 0.659705,
		0.943758, -0.012182, -0.330413,
		25.364744, 31.715773, 30.239084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638012, 32.414497, 30.122112>,  <24.704115, 31.724300, 30.470375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638012, 32.414497, 30.122112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919981, 32.563499, 29.880676>,  <25.089163, 32.652901, 29.735815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919981, 32.563499, 29.880676>,  <24.638012, 32.414497, 30.122112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919981, 32.563499, 29.880676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708548, -0.408605, 0.575327,
		-0.032318, -0.833235, -0.551974,
		0.704922, 0.372506, -0.603592,
		25.131458, 32.675251, 29.699598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132608, 31.894960, 29.768513>,  <24.638012, 32.414497, 30.122112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132608, 31.894960, 29.768513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322109, 32.246281, 29.794277>,  <25.435810, 32.457073, 29.809736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322109, 32.246281, 29.794277>,  <25.132608, 31.894960, 29.768513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322109, 32.246281, 29.794277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671394, -0.407539, 0.618985,
		0.569904, -0.250001, -0.782757,
		0.473751, 0.878300, 0.064409,
		25.464235, 32.509769, 29.813601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881947, 31.906590, 29.531418>,  <25.132608, 31.894960, 29.768513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881947, 31.906590, 29.531418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697794, 32.124733, 29.811600>,  <25.587303, 32.255619, 29.979708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697794, 32.124733, 29.811600>,  <25.881947, 31.906590, 29.531418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697794, 32.124733, 29.811600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622065, -0.364726, 0.692827,
		0.633312, 0.754692, -0.171335,
		-0.460381, 0.545357, 0.700453,
		25.559679, 32.288342, 30.021736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412937, 32.283657, 29.892246>,  <25.881947, 31.906590, 29.531418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412937, 32.283657, 29.892246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094152, 32.176819, 30.108955>,  <25.902882, 32.112717, 30.238981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094152, 32.176819, 30.108955>,  <26.412937, 32.283657, 29.892246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094152, 32.176819, 30.108955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595698, -0.496022, 0.631749,
		0.099997, 0.826211, 0.554415,
		-0.796960, -0.267091, 0.541772,
		25.855064, 32.096691, 30.271486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537888, 32.278286, 30.571005>,  <26.412937, 32.283657, 29.892246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537888, 32.278286, 30.571005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211111, 32.047600, 30.572302>,  <26.015045, 31.909189, 30.573080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211111, 32.047600, 30.572302>,  <26.537888, 32.278286, 30.571005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211111, 32.047600, 30.572302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445125, -0.626944, 0.639379,
		-0.366707, 0.523776, 0.768885,
		-0.816939, -0.576714, 0.003241,
		25.966030, 31.874586, 30.573275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310734, 31.970985, 31.240683>,  <26.537888, 32.278286, 30.571005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310734, 31.970985, 31.240683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212244, 31.698767, 30.964645>,  <26.153151, 31.535435, 30.799023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212244, 31.698767, 30.964645>,  <26.310734, 31.970985, 31.240683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212244, 31.698767, 30.964645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241584, -0.732635, 0.636305,
		-0.938621, -0.010040, 0.344804,
		-0.246227, -0.680548, -0.690092,
		26.138376, 31.494602, 30.757618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106544, 31.519035, 31.683626>,  <26.310734, 31.970985, 31.240683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106544, 31.519035, 31.683626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242590, 31.353628, 31.345793>,  <26.324217, 31.254383, 31.143093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242590, 31.353628, 31.345793>,  <26.106544, 31.519035, 31.683626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242590, 31.353628, 31.345793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539160, -0.650103, 0.535419,
		-0.770473, -0.637470, 0.001843,
		0.340115, -0.413519, -0.844585,
		26.344624, 31.229572, 31.092417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960434, 30.814377, 31.704882>,  <26.106544, 31.519035, 31.683626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960434, 30.814377, 31.704882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250736, 30.829666, 31.430124>,  <26.424917, 30.838840, 31.265270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250736, 30.829666, 31.430124>,  <25.960434, 30.814377, 31.704882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250736, 30.829666, 31.430124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474994, -0.750109, 0.460126,
		-0.497657, -0.660208, -0.562550,
		0.725753, 0.038223, -0.686892,
		26.468462, 30.841133, 31.224056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089388, 30.152451, 31.598900>,  <25.960434, 30.814377, 31.704882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089388, 30.152451, 31.598900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412691, 30.348719, 31.468695>,  <26.606674, 30.466480, 31.390572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412691, 30.348719, 31.468695>,  <26.089388, 30.152451, 31.598900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412691, 30.348719, 31.468695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587693, -0.637966, 0.497610,
		0.036498, -0.593499, -0.804007,
		0.808260, 0.490671, -0.325511,
		26.655169, 30.495920, 31.371042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612679, 29.647091, 31.379856>,  <26.089388, 30.152451, 31.598900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612679, 29.647091, 31.379856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809031, 29.984556, 31.466824>,  <26.926842, 30.187035, 31.519003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809031, 29.984556, 31.466824>,  <26.612679, 29.647091, 31.379856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809031, 29.984556, 31.466824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720863, -0.533459, 0.442469,
		0.489277, -0.060472, -0.870029,
		0.490882, 0.843661, 0.217417,
		26.956295, 30.237654, 31.532049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170549, 29.663166, 31.024548>,  <26.612679, 29.647091, 31.379856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170549, 29.663166, 31.024548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229580, 29.867245, 31.363468>,  <27.264997, 29.989693, 31.566820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229580, 29.867245, 31.363468>,  <27.170549, 29.663166, 31.024548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229580, 29.867245, 31.363468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629020, -0.709519, 0.317674,
		0.763253, 0.486089, -0.425631,
		0.147575, 0.510196, 0.847303,
		27.273853, 30.020304, 31.617659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874842, 29.906065, 31.080479>,  <27.170549, 29.663166, 31.024548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874842, 29.906065, 31.080479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711061, 29.835262, 31.438478>,  <27.612793, 29.792780, 31.653278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711061, 29.835262, 31.438478>,  <27.874842, 29.906065, 31.080479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711061, 29.835262, 31.438478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698301, -0.692128, 0.182578,
		0.587135, 0.699734, 0.406996,
		-0.409449, -0.177008, 0.894997,
		27.588226, 29.782160, 31.706978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396431, 29.928564, 31.542671>,  <27.874842, 29.906065, 31.080479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396431, 29.928564, 31.542671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118210, 29.669344, 31.666759>,  <27.951277, 29.513811, 31.741213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118210, 29.669344, 31.666759>,  <28.396431, 29.928564, 31.542671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118210, 29.669344, 31.666759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668414, -0.742012, -0.051395,
		0.263494, 0.171608, 0.949275,
		-0.695553, -0.648051, 0.310220,
		27.909544, 29.474928, 31.759825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650513, 29.536520, 32.114449>,  <28.396431, 29.928564, 31.542671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650513, 29.536520, 32.114449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367760, 29.321548, 31.930496>,  <28.198109, 29.192566, 31.820126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367760, 29.321548, 31.930496>,  <28.650513, 29.536520, 32.114449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367760, 29.321548, 31.930496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593205, -0.804550, 0.028403,
		-0.385261, -0.252726, 0.887526,
		-0.706881, -0.537428, -0.459881,
		28.155695, 29.160320, 31.792532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395302, 28.944672, 32.554626>,  <28.650513, 29.536520, 32.114449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395302, 28.944672, 32.554626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349743, 28.857269, 32.166962>,  <28.322409, 28.804829, 31.934362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349743, 28.857269, 32.166962>,  <28.395302, 28.944672, 32.554626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349743, 28.857269, 32.166962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411237, -0.898388, 0.154218,
		-0.904385, -0.380993, 0.192179,
		-0.113895, -0.218504, -0.969167,
		28.315575, 28.791718, 31.876211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135895, 28.287846, 32.438614>,  <28.395302, 28.944672, 32.554626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135895, 28.287846, 32.438614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419348, 28.414944, 32.186623>,  <28.589420, 28.491203, 32.035427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419348, 28.414944, 32.186623>,  <28.135895, 28.287846, 32.438614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419348, 28.414944, 32.186623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603235, -0.735964, 0.307350,
		-0.365984, -0.597826, -0.713204,
		0.708634, 0.317745, -0.629981,
		28.631939, 28.510267, 31.997629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302210, 27.867979, 31.906565>,  <28.135895, 28.287846, 32.438614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302210, 27.867979, 31.906565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586802, 28.092369, 32.075848>,  <28.757557, 28.227003, 32.177418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586802, 28.092369, 32.075848>,  <28.302210, 27.867979, 31.906565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586802, 28.092369, 32.075848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394328, -0.817215, 0.420315,
		0.581636, -0.132164, -0.802641,
		0.711481, 0.560974, 0.423206,
		28.800245, 28.260662, 32.202808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024912, 27.708755, 31.752680>,  <28.302210, 27.867979, 31.906565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024912, 27.708755, 31.752680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057232, 27.863649, 32.120052>,  <29.076624, 27.956587, 32.340477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057232, 27.863649, 32.120052>,  <29.024912, 27.708755, 31.752680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057232, 27.863649, 32.120052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616185, -0.743678, 0.259345,
		0.783446, 0.544969, -0.298698,
		0.080800, 0.387236, 0.918433,
		29.081472, 27.979820, 32.395584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594849, 27.538696, 32.003838>,  <29.024912, 27.708755, 31.752680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594849, 27.538696, 32.003838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451536, 27.648867, 32.360661>,  <29.365547, 27.714970, 32.574757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451536, 27.648867, 32.360661>,  <29.594849, 27.538696, 32.003838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451536, 27.648867, 32.360661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597923, -0.666135, 0.445817,
		0.717022, 0.693113, 0.073982,
		-0.358284, 0.275425, 0.892061,
		29.344051, 27.731495, 32.628281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096348, 27.835775, 32.440392>,  <29.594849, 27.538696, 32.003838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096348, 27.835775, 32.440392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815256, 27.616577, 32.621883>,  <29.646601, 27.485058, 32.730778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815256, 27.616577, 32.621883>,  <30.096348, 27.835775, 32.440392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815256, 27.616577, 32.621883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704115, -0.627076, 0.333164,
		0.101952, 0.553603, 0.826516,
		-0.702729, -0.547996, 0.453732,
		29.604437, 27.452179, 32.758003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142286, 27.709124, 33.299061>,  <30.096348, 27.835775, 32.440392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142286, 27.709124, 33.299061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975658, 27.431101, 33.064671>,  <29.875683, 27.264286, 32.924038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975658, 27.431101, 33.064671>,  <30.142286, 27.709124, 33.299061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975658, 27.431101, 33.064671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690526, -0.661154, 0.293340,
		-0.591307, -0.282434, 0.755372,
		-0.416568, -0.695058, -0.585973,
		29.850687, 27.222584, 32.888878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863405, 27.601311, 33.435867>,  <30.142286, 27.709124, 33.299061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863405, 27.601311, 33.435867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067329, 27.645134, 33.094555>,  <31.189684, 27.671429, 32.889767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067329, 27.645134, 33.094555>,  <30.863405, 27.601311, 33.435867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067329, 27.645134, 33.094555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764795, -0.511898, 0.391214,
		-0.393933, -0.852031, -0.344760,
		0.509808, 0.109558, -0.853283,
		31.220272, 27.678001, 32.838570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655701, 27.592138, 33.389397>,  <30.863405, 27.601311, 33.435867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655701, 27.592138, 33.389397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045734, 27.656315, 33.450680>,  <32.279755, 27.694820, 33.487450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045734, 27.656315, 33.450680>,  <31.655701, 27.592138, 33.389397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045734, 27.656315, 33.450680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089963, 0.345301, -0.934170,
		-0.202780, 0.924677, 0.322264,
		0.975083, 0.160439, 0.153206,
		32.338261, 27.704447, 33.496643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729252, 28.376905, 33.230686>,  <31.655701, 27.592138, 33.389397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729252, 28.376905, 33.230686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034752, 28.132423, 33.147633>,  <32.218052, 27.985733, 33.097801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034752, 28.132423, 33.147633>,  <31.729252, 28.376905, 33.230686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034752, 28.132423, 33.147633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081942, 0.410855, -0.908011,
		0.640291, 0.676479, 0.363874,
		0.763750, -0.611207, -0.207635,
		32.263878, 27.949060, 33.085342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855705, 28.688936, 32.672459>,  <31.729252, 28.376905, 33.230686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855705, 28.688936, 32.672459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137112, 28.407160, 32.710049>,  <32.305954, 28.238094, 32.732601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137112, 28.407160, 32.710049>,  <31.855705, 28.688936, 32.672459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137112, 28.407160, 32.710049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233559, 0.104285, -0.966734,
		0.671205, 0.702061, 0.237895,
		0.703515, -0.704439, 0.093976,
		32.348167, 28.195827, 32.738243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339378, 28.930712, 32.328606>,  <31.855705, 28.688936, 32.672459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339378, 28.930712, 32.328606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369148, 28.532686, 32.302361>,  <32.387009, 28.293871, 32.286613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369148, 28.532686, 32.302361>,  <32.339378, 28.930712, 32.328606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369148, 28.532686, 32.302361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142772, 0.075747, -0.986853,
		0.986953, 0.064079, 0.147705,
		0.074425, -0.995066, -0.065610,
		32.391476, 28.234167, 32.282677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062077, 28.612032, 32.343655>,  <32.339378, 28.930712, 32.328606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062077, 28.612032, 32.343655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761715, 28.457197, 32.129623>,  <32.581497, 28.364296, 32.001205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761715, 28.457197, 32.129623>,  <33.062077, 28.612032, 32.343655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761715, 28.457197, 32.129623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385475, 0.400976, -0.831040,
		0.536237, -0.830290, -0.151883,
		-0.750906, -0.387087, -0.535074,
		32.536442, 28.341072, 31.969101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393936, 28.310987, 31.783455>,  <33.062077, 28.612032, 32.343655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393936, 28.310987, 31.783455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007778, 28.376417, 31.702206>,  <32.776085, 28.415674, 31.653456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007778, 28.376417, 31.702206>,  <33.393936, 28.310987, 31.783455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007778, 28.376417, 31.702206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258989, 0.692827, -0.672991,
		0.030645, -0.702307, -0.711214,
		-0.965394, 0.163573, -0.203122,
		32.718159, 28.425489, 31.641270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226925, 28.210018, 31.015623>,  <33.393936, 28.310987, 31.783455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226925, 28.210018, 31.015623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980667, 28.464273, 31.201931>,  <32.832912, 28.616827, 31.313715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980667, 28.464273, 31.201931>,  <33.226925, 28.210018, 31.015623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980667, 28.464273, 31.201931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157547, 0.678413, -0.717590,
		-0.772111, -0.368403, -0.517807,
		-0.615648, 0.635638, 0.465769,
		32.795971, 28.654964, 31.341661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691856, 28.386646, 30.631281>,  <33.226925, 28.210018, 31.015623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691856, 28.386646, 30.631281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698776, 28.715023, 30.859581>,  <32.702927, 28.912048, 30.996561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698776, 28.715023, 30.859581>,  <32.691856, 28.386646, 30.631281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698776, 28.715023, 30.859581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094152, 0.566963, -0.818345,
		-0.995408, 0.067894, -0.067484,
		0.017300, 0.820940, 0.570752,
		32.703968, 28.961306, 31.030807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288334, 28.877726, 30.336611>,  <32.691856, 28.386646, 30.631281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288334, 28.877726, 30.336611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531105, 29.090137, 30.573135>,  <32.676769, 29.217585, 30.715050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531105, 29.090137, 30.573135>,  <32.288334, 28.877726, 30.336611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531105, 29.090137, 30.573135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238271, 0.588211, -0.772810,
		-0.758199, 0.609932, 0.230473,
		0.606928, 0.531028, 0.591310,
		32.713184, 29.249447, 30.750528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038654, 29.486374, 30.110519>,  <32.288334, 28.877726, 30.336611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038654, 29.486374, 30.110519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368568, 29.567091, 30.321806>,  <32.566517, 29.615520, 30.448578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368568, 29.567091, 30.321806>,  <32.038654, 29.486374, 30.110519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368568, 29.567091, 30.321806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203118, 0.766070, -0.609820,
		-0.527707, 0.610259, 0.590854,
		0.824784, 0.201793, 0.528216,
		32.616005, 29.627628, 30.480270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129707, 30.250116, 30.171347>,  <32.038654, 29.486374, 30.110519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129707, 30.250116, 30.171347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493805, 30.098221, 30.237373>,  <32.712265, 30.007084, 30.276989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493805, 30.098221, 30.237373>,  <32.129707, 30.250116, 30.171347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493805, 30.098221, 30.237373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389068, 0.647986, -0.654783,
		0.141685, 0.660237, 0.737572,
		0.910248, -0.379738, 0.165067,
		32.766880, 29.984299, 30.286894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629463, 30.801151, 30.303406>,  <32.129707, 30.250116, 30.171347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629463, 30.801151, 30.303406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850090, 30.486929, 30.191210>,  <32.982468, 30.298395, 30.123892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850090, 30.486929, 30.191210>,  <32.629463, 30.801151, 30.303406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850090, 30.486929, 30.191210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605510, 0.608355, -0.513091,
		0.573698, 0.113166, 0.811212,
		0.551569, -0.785555, -0.280489,
		33.015560, 30.251263, 30.107063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306915, 30.972502, 30.309984>,  <32.629463, 30.801151, 30.303406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306915, 30.972502, 30.309984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320858, 30.679935, 30.037567>,  <33.329224, 30.504396, 29.874117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320858, 30.679935, 30.037567>,  <33.306915, 30.972502, 30.309984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320858, 30.679935, 30.037567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471964, 0.612724, -0.633892,
		0.880929, -0.299334, 0.366557,
		0.034853, -0.731416, -0.681041,
		33.331314, 30.460510, 29.833256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031975, 30.963116, 29.935961>,  <33.306915, 30.972502, 30.309984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031975, 30.963116, 29.935961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801796, 30.740131, 29.696594>,  <33.663689, 30.606340, 29.552975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801796, 30.740131, 29.696594>,  <34.031975, 30.963116, 29.935961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801796, 30.740131, 29.696594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369857, 0.475220, -0.798356,
		0.729433, -0.680736, -0.067281,
		-0.575442, -0.557463, -0.598416,
		33.629162, 30.572893, 29.517069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538940, 30.776257, 29.457973>,  <34.031975, 30.963116, 29.935961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538940, 30.776257, 29.457973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186428, 30.713888, 29.279522>,  <33.974922, 30.676468, 29.172451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186428, 30.713888, 29.279522>,  <34.538940, 30.776257, 29.457973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186428, 30.713888, 29.279522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298284, 0.548703, -0.780994,
		0.366565, -0.821349, -0.437054,
		-0.881281, -0.155919, -0.446131,
		33.922043, 30.667112, 29.145683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583153, 30.526209, 28.737535>,  <34.538940, 30.776257, 29.457973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583153, 30.526209, 28.737535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213158, 30.678177, 28.740545>,  <33.991161, 30.769358, 28.742352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213158, 30.678177, 28.740545>,  <34.583153, 30.526209, 28.737535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213158, 30.678177, 28.740545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199105, 0.501438, -0.841972,
		-0.323655, -0.777317, -0.539469,
		-0.924989, 0.379919, 0.007525,
		33.935661, 30.792152, 28.742804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460274, 30.681480, 27.948832>,  <34.583153, 30.526209, 28.737535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460274, 30.681480, 27.948832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185360, 30.869827, 28.170073>,  <34.020412, 30.982836, 28.302816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185360, 30.869827, 28.170073>,  <34.460274, 30.681480, 27.948832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185360, 30.869827, 28.170073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045162, 0.787667, -0.614443,
		-0.724982, -0.397319, -0.562618,
		-0.687286, 0.470869, 0.553101,
		33.979176, 31.011087, 28.336002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941284, 30.828936, 27.538385>,  <34.460274, 30.681480, 27.948832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941284, 30.828936, 27.538385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887207, 31.095430, 27.831738>,  <33.854759, 31.255327, 28.007750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887207, 31.095430, 27.831738>,  <33.941284, 30.828936, 27.538385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887207, 31.095430, 27.831738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013719, 0.738847, -0.673733,
		-0.990724, -0.101148, -0.090749,
		-0.135196, 0.666239, 0.733381,
		33.846649, 31.295301, 28.051752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478378, 31.309513, 27.239502>,  <33.941284, 30.828936, 27.538385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478378, 31.309513, 27.239502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620850, 31.509077, 27.555534>,  <33.706333, 31.628815, 27.745153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620850, 31.509077, 27.555534>,  <33.478378, 31.309513, 27.239502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620850, 31.509077, 27.555534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201776, 0.866649, -0.456295,
		-0.912373, 0.003102, 0.409348,
		0.356176, 0.498908, 0.790082,
		33.727703, 31.658751, 27.792559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014668, 31.769468, 27.421440>,  <33.478378, 31.309513, 27.239502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014668, 31.769468, 27.421440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336758, 31.937820, 27.588522>,  <33.530010, 32.038834, 27.688770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336758, 31.937820, 27.588522>,  <33.014668, 31.769468, 27.421440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336758, 31.937820, 27.588522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296431, 0.895797, -0.331173,
		-0.513562, 0.142848, 0.846078,
		0.805222, 0.420882, 0.417703,
		33.578323, 32.064083, 27.713833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790825, 32.288532, 27.837982>,  <33.014668, 31.769468, 27.421440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790825, 32.288532, 27.837982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170517, 32.391975, 27.766323>,  <33.398331, 32.454041, 27.723328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170517, 32.391975, 27.766323>,  <32.790825, 32.288532, 27.837982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170517, 32.391975, 27.766323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296829, 0.924879, -0.237677,
		0.104223, 0.278785, 0.954681,
		0.949226, 0.258605, -0.179145,
		33.455284, 32.469559, 27.712580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832306, 32.967861, 28.030642>,  <32.790825, 32.288532, 27.837982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832306, 32.967861, 28.030642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126518, 32.915497, 27.764753>,  <33.303047, 32.884079, 27.605221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126518, 32.915497, 27.764753>,  <32.832306, 32.967861, 28.030642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126518, 32.915497, 27.764753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220987, 0.881132, -0.418057,
		0.640432, 0.454390, 0.619174,
		0.735535, -0.130908, -0.664719,
		33.347179, 32.876225, 27.565338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168114, 33.669140, 28.066055>,  <32.832306, 32.967861, 28.030642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168114, 33.669140, 28.066055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265240, 33.467159, 27.734739>,  <33.323517, 33.345970, 27.535950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265240, 33.467159, 27.734739>,  <33.168114, 33.669140, 28.066055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265240, 33.467159, 27.734739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009614, 0.852550, -0.522557,
		0.970025, 0.134848, 0.202156,
		0.242814, -0.504950, -0.828291,
		33.338085, 33.315674, 27.486252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565136, 34.093651, 27.802576>,  <33.168114, 33.669140, 28.066055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565136, 34.093651, 27.802576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473846, 33.859947, 27.491051>,  <33.419071, 33.719723, 27.304136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473846, 33.859947, 27.491051>,  <33.565136, 34.093651, 27.802576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473846, 33.859947, 27.491051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090439, 0.809188, -0.580547,
		0.969399, -0.062060, -0.237517,
		-0.228225, -0.584263, -0.778813,
		33.405380, 33.684669, 27.257406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988739, 34.279785, 27.223574>,  <33.565136, 34.093651, 27.802576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988739, 34.279785, 27.223574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692482, 34.078362, 27.045643>,  <33.514729, 33.957508, 26.938885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692482, 34.078362, 27.045643>,  <33.988739, 34.279785, 27.223574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692482, 34.078362, 27.045643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019981, 0.678260, -0.734550,
		0.671610, -0.535146, -0.512405,
		-0.740636, -0.503570, -0.444834,
		33.470287, 33.927292, 26.912195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215916, 34.324448, 26.619308>,  <33.988739, 34.279785, 27.223574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215916, 34.324448, 26.619308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823853, 34.249069, 26.594715>,  <33.588615, 34.203842, 26.579960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823853, 34.249069, 26.594715>,  <34.215916, 34.324448, 26.619308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823853, 34.249069, 26.594715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075053, 0.639894, -0.764790,
		0.183462, -0.745000, -0.641340,
		-0.980158, -0.188445, -0.061482,
		33.529804, 34.192535, 26.576271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011490, 34.300003, 25.872086>,  <34.215916, 34.324448, 26.619308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011490, 34.300003, 25.872086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661446, 34.361481, 26.055632>,  <33.451420, 34.398369, 26.165760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661446, 34.361481, 26.055632>,  <34.011490, 34.300003, 25.872086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661446, 34.361481, 26.055632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255255, 0.658979, -0.707525,
		-0.411127, -0.736290, -0.537449,
		-0.875111, 0.153696, 0.458866,
		33.398911, 34.407589, 26.193291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493126, 34.203953, 25.366579>,  <34.011490, 34.300003, 25.872086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493126, 34.203953, 25.366579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351837, 34.424767, 25.668701>,  <33.267063, 34.557255, 25.849974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351837, 34.424767, 25.668701>,  <33.493126, 34.203953, 25.366579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351837, 34.424767, 25.668701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249708, 0.722426, -0.644785,
		-0.901597, -0.416360, -0.117332,
		-0.353226, 0.552037, 0.755305,
		33.245869, 34.590378, 25.895292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026821, 34.599228, 24.975683>,  <33.493126, 34.203953, 25.366579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026821, 34.599228, 24.975683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000080, 34.783794, 25.329548>,  <32.984035, 34.894535, 25.541866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000080, 34.783794, 25.329548>,  <33.026821, 34.599228, 24.975683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000080, 34.783794, 25.329548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456971, 0.774028, -0.438245,
		-0.886966, -0.433560, 0.159112,
		-0.066848, 0.461419, 0.884661,
		32.980026, 34.922218, 25.594946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325130, 34.752537, 25.054926>,  <33.026821, 34.599228, 24.975683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325130, 34.752537, 25.054926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557674, 35.002335, 25.263548>,  <32.697201, 35.152214, 25.388721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557674, 35.002335, 25.263548>,  <32.325130, 34.752537, 25.054926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557674, 35.002335, 25.263548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490069, 0.780454, -0.388231,
		-0.649500, -0.029896, 0.759774,
		0.581362, 0.624497, 0.521556,
		32.732082, 35.189682, 25.420015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850458, 35.233707, 25.411587>,  <32.325130, 34.752537, 25.054926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850458, 35.233707, 25.411587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205116, 35.418392, 25.401146>,  <32.417912, 35.529202, 25.394882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205116, 35.418392, 25.401146>,  <31.850458, 35.233707, 25.411587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205116, 35.418392, 25.401146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461304, 0.879074, -0.120113,
		-0.032514, 0.118537, 0.992417,
		0.886646, 0.461711, -0.026100,
		32.471111, 35.556904, 25.393316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790375, 35.849529, 25.818443>,  <31.850458, 35.233707, 25.411587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790375, 35.849529, 25.818443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104504, 35.908966, 25.578045>,  <32.292980, 35.944630, 25.433807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104504, 35.908966, 25.578045>,  <31.790375, 35.849529, 25.818443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104504, 35.908966, 25.578045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406984, 0.855434, -0.320307,
		0.466515, 0.496138, 0.732264,
		0.785320, 0.148592, -0.600994,
		32.340099, 35.953545, 25.397747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925957, 36.504978, 25.899641>,  <31.790375, 35.849529, 25.818443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925957, 36.504978, 25.899641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088203, 36.407635, 25.547220>,  <32.185551, 36.349228, 25.335768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088203, 36.407635, 25.547220>,  <31.925957, 36.504978, 25.899641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088203, 36.407635, 25.547220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503761, 0.744777, -0.437643,
		0.762692, 0.621354, 0.179498,
		0.405617, -0.243363, -0.881050,
		32.209888, 36.334625, 25.282906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185249, 37.153255, 25.761684>,  <31.925957, 36.504978, 25.899641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185249, 37.153255, 25.761684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207306, 36.946308, 25.420092>,  <32.220539, 36.822140, 25.215136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207306, 36.946308, 25.420092>,  <32.185249, 37.153255, 25.761684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207306, 36.946308, 25.420092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308525, 0.804602, -0.507373,
		0.949617, 0.291450, -0.115258,
		0.055137, -0.517370, -0.853984,
		32.223846, 36.791096, 25.163897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502254, 37.585617, 25.313534>,  <32.185249, 37.153255, 25.761684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502254, 37.585617, 25.313534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305698, 37.315285, 25.093792>,  <32.187763, 37.153084, 24.961946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305698, 37.315285, 25.093792>,  <32.502254, 37.585617, 25.313534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305698, 37.315285, 25.093792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314232, 0.725850, -0.611883,
		0.812278, -0.128047, -0.569042,
		-0.491389, -0.675830, -0.549355,
		32.158283, 37.112537, 24.928986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507545, 37.890976, 24.749334>,  <32.502254, 37.585617, 25.313534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507545, 37.890976, 24.749334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243656, 37.599411, 24.676174>,  <32.085323, 37.424473, 24.632278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243656, 37.599411, 24.676174>,  <32.507545, 37.890976, 24.749334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243656, 37.599411, 24.676174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562612, 0.640397, -0.522839,
		0.498235, -0.242024, -0.832578,
		-0.659720, -0.728915, -0.182902,
		32.045742, 37.380737, 24.621304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447147, 37.810280, 23.991390>,  <32.507545, 37.890976, 24.749334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447147, 37.810280, 23.991390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116383, 37.678982, 24.174025>,  <31.917925, 37.600201, 24.283606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116383, 37.678982, 24.174025>,  <32.447147, 37.810280, 23.991390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116383, 37.678982, 24.174025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525507, 0.740081, -0.419670,
		-0.200156, -0.586970, -0.784477,
		-0.826910, -0.328249, 0.456588,
		31.868309, 37.580505, 24.311001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956388, 37.810425, 23.450144>,  <32.447147, 37.810280, 23.991390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956388, 37.810425, 23.450144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748133, 37.800182, 23.791500>,  <31.623178, 37.794037, 23.996315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748133, 37.800182, 23.791500>,  <31.956388, 37.810425, 23.450144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748133, 37.800182, 23.791500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673302, 0.626920, -0.391963,
		-0.524973, -0.778663, -0.343638,
		-0.520641, -0.025602, 0.853392,
		31.591940, 37.792503, 24.047518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312294, 37.810848, 23.235867>,  <31.956388, 37.810425, 23.450144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312294, 37.810848, 23.235867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297651, 37.930202, 23.617363>,  <31.288866, 38.001816, 23.846262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297651, 37.930202, 23.617363>,  <31.312294, 37.810848, 23.235867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297651, 37.930202, 23.617363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691970, 0.681001, -0.239616,
		-0.720998, -0.668733, 0.181545,
		-0.036607, 0.298386, 0.953743,
		31.286669, 38.019718, 23.903486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652735, 37.995327, 23.281178>,  <31.312294, 37.810848, 23.235867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652735, 37.995327, 23.281178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797621, 38.192009, 23.597918>,  <30.884552, 38.310017, 23.787962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797621, 38.192009, 23.597918>,  <30.652735, 37.995327, 23.281178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797621, 38.192009, 23.597918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639878, 0.748903, -0.172338,
		-0.677758, -0.444263, 0.585897,
		0.362217, 0.491706, 0.791849,
		30.906286, 38.339520, 23.835472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077316, 38.135372, 23.807774>,  <30.652735, 37.995327, 23.281178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077316, 38.135372, 23.807774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367758, 38.407234, 23.849413>,  <30.542023, 38.570351, 23.874397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367758, 38.407234, 23.849413>,  <30.077316, 38.135372, 23.807774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367758, 38.407234, 23.849413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681738, 0.731333, -0.019636,
		-0.089477, -0.056711, 0.994373,
		0.726104, 0.679659, 0.104099,
		30.585588, 38.611134, 23.880642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779135, 38.608620, 24.265739>,  <30.077316, 38.135372, 23.807774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779135, 38.608620, 24.265739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074448, 38.814621, 24.091515>,  <30.251635, 38.938221, 23.986979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074448, 38.814621, 24.091515>,  <29.779135, 38.608620, 24.265739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074448, 38.814621, 24.091515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634259, 0.749774, -0.188558,
		0.229467, 0.415469, 0.880188,
		0.738282, 0.515000, -0.435564,
		30.295933, 38.969120, 23.960846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839775, 39.207809, 24.598150>,  <29.779135, 38.608620, 24.265739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839775, 39.207809, 24.598150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008181, 39.296329, 24.246292>,  <30.109224, 39.349442, 24.035177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008181, 39.296329, 24.246292>,  <29.839775, 39.207809, 24.598150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008181, 39.296329, 24.246292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644689, 0.755193, -0.118571,
		0.638063, 0.617018, 0.460613,
		0.421012, 0.221297, -0.879645,
		30.134485, 39.362717, 23.982399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843561, 39.918488, 24.591925>,  <29.839775, 39.207809, 24.598150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843561, 39.918488, 24.591925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888359, 39.809792, 24.209593>,  <29.915237, 39.744576, 23.980194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888359, 39.809792, 24.209593>,  <29.843561, 39.918488, 24.591925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888359, 39.809792, 24.209593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569553, 0.770656, -0.285830,
		0.814289, 0.576408, -0.068461,
		0.111995, -0.271741, -0.955832,
		29.921957, 39.728268, 23.922844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966932, 40.542622, 24.261181>,  <29.843561, 39.918488, 24.591925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966932, 40.542622, 24.261181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853479, 40.308235, 23.957550>,  <29.785408, 40.167603, 23.775372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853479, 40.308235, 23.957550>,  <29.966932, 40.542622, 24.261181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853479, 40.308235, 23.957550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440771, 0.782672, -0.439484,
		0.851630, 0.209927, -0.480268,
		-0.283633, -0.585965, -0.759076,
		29.768391, 40.132446, 23.729828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012386, 40.989693, 23.706362>,  <29.966932, 40.542622, 24.261181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012386, 40.989693, 23.706362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788870, 40.690392, 23.563328>,  <29.654760, 40.510811, 23.477507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788870, 40.690392, 23.563328>,  <30.012386, 40.989693, 23.706362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788870, 40.690392, 23.563328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544830, 0.656304, -0.521943,
		0.625231, -0.096833, -0.774409,
		-0.558789, -0.748257, -0.357584,
		29.621233, 40.465916, 23.456053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106094, 41.072239, 23.037722>,  <30.012386, 40.989693, 23.706362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106094, 41.072239, 23.037722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768023, 40.864265, 23.087257>,  <29.565180, 40.739479, 23.116978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768023, 40.864265, 23.087257>,  <30.106094, 41.072239, 23.037722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768023, 40.864265, 23.087257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511648, 0.720058, -0.468756,
		0.154553, -0.459545, -0.874604,
		-0.845180, -0.519937, 0.123838,
		29.514469, 40.708282, 23.124409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884506, 40.802372, 22.395622>,  <30.106094, 41.072239, 23.037722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884506, 40.802372, 22.395622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562458, 40.830841, 22.631153>,  <29.369230, 40.847923, 22.772472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562458, 40.830841, 22.631153>,  <29.884506, 40.802372, 22.395622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562458, 40.830841, 22.631153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377372, 0.704431, -0.601138,
		-0.457576, -0.706195, -0.540290,
		-0.805118, 0.071176, 0.588829,
		29.320923, 40.852192, 22.807802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413509, 41.011303, 21.938953>,  <29.884506, 40.802372, 22.395622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413509, 41.011303, 21.938953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227097, 41.061775, 22.289244>,  <29.115250, 41.092060, 22.499418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227097, 41.061775, 22.289244>,  <29.413509, 41.011303, 21.938953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227097, 41.061775, 22.289244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546466, 0.737373, -0.397058,
		-0.695838, -0.663595, -0.274683,
		-0.466030, 0.126183, 0.875725,
		29.087288, 41.099628, 22.551962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692949, 40.913872, 21.898800>,  <29.413509, 41.011303, 21.938953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692949, 40.913872, 21.898800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789793, 41.183212, 22.178221>,  <28.847898, 41.344818, 22.345873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789793, 41.183212, 22.178221>,  <28.692949, 40.913872, 21.898800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789793, 41.183212, 22.178221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489809, 0.706319, -0.511078,
		-0.837538, -0.218421, 0.500822,
		0.242110, 0.673355, 0.698553,
		28.862427, 41.385220, 22.387787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425798, 41.533134, 21.639351>,  <28.692949, 40.913872, 21.898800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425798, 41.533134, 21.639351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432133, 41.874683, 21.847445>,  <28.435934, 42.079613, 21.972301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432133, 41.874683, 21.847445>,  <28.425798, 41.533134, 21.639351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432133, 41.874683, 21.847445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479981, 0.449940, -0.753109,
		-0.877136, 0.261631, -0.402718,
		0.015837, 0.853876, 0.520236,
		28.436884, 42.130848, 22.003515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133934, 42.027756, 21.165470>,  <28.425798, 41.533134, 21.639351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133934, 42.027756, 21.165470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375599, 42.186867, 21.441662>,  <28.520597, 42.282333, 21.607378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375599, 42.186867, 21.441662>,  <28.133934, 42.027756, 21.165470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375599, 42.186867, 21.441662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600428, 0.342448, -0.722645,
		-0.523906, 0.851177, -0.031943,
		0.604160, 0.397778, 0.690481,
		28.556847, 42.306202, 21.648806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056561, 42.790642, 21.096405>,  <28.133934, 42.027756, 21.165470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056561, 42.790642, 21.096405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837585, 42.684742, 21.413950>,  <27.706202, 42.621201, 21.604477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837585, 42.684742, 21.413950>,  <28.056561, 42.790642, 21.096405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837585, 42.684742, 21.413950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803170, 0.100186, 0.587266,
		-0.235014, 0.959098, 0.157796,
		-0.547436, -0.264753, 0.793864,
		27.673355, 42.605316, 21.652109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093407, 43.370056, 21.620756>,  <28.056561, 42.790642, 21.096405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093407, 43.370056, 21.620756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029530, 43.008633, 21.779789>,  <27.991203, 42.791779, 21.875208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029530, 43.008633, 21.779789>,  <28.093407, 43.370056, 21.620756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029530, 43.008633, 21.779789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708710, 0.175426, 0.683342,
		-0.687189, 0.390896, 0.612350,
		-0.159694, -0.903563, 0.397582,
		27.981621, 42.737564, 21.899063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643911, 43.393414, 22.284430>,  <28.093407, 43.370056, 21.620756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643911, 43.393414, 22.284430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936155, 43.124691, 22.235634>,  <28.111502, 42.963455, 22.206356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936155, 43.124691, 22.235634>,  <27.643911, 43.393414, 22.284430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936155, 43.124691, 22.235634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563970, 0.493043, 0.662455,
		-0.384899, -0.552794, 0.739102,
		0.730610, -0.671810, -0.121987,
		28.155338, 42.923149, 22.199038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812096, 43.095798, 22.852966>,  <27.643911, 43.393414, 22.284430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812096, 43.095798, 22.852966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129641, 43.134750, 22.612867>,  <28.320168, 43.158123, 22.468807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129641, 43.134750, 22.612867>,  <27.812096, 43.095798, 22.852966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129641, 43.134750, 22.612867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531444, 0.368644, 0.762672,
		0.295547, -0.924456, 0.240901,
		0.793864, 0.097380, -0.600249,
		28.367800, 43.163963, 22.432793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182705, 42.690399, 23.065027>,  <27.812096, 43.095798, 22.852966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182705, 42.690399, 23.065027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197174, 43.053547, 23.232101>,  <27.205856, 43.271435, 23.332346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197174, 43.053547, 23.232101>,  <27.182705, 42.690399, 23.065027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197174, 43.053547, 23.232101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931256, -0.121014, 0.343683,
		0.362566, -0.401402, 0.841084,
		0.036173, 0.907872, 0.417683,
		27.208025, 43.325909, 23.357407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148853, 42.720860, 23.874279>,  <27.182705, 42.690399, 23.065027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148853, 42.720860, 23.874279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994469, 43.044472, 23.696966>,  <26.901838, 43.238640, 23.590578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994469, 43.044472, 23.696966>,  <27.148853, 42.720860, 23.874279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994469, 43.044472, 23.696966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869832, -0.159093, 0.466992,
		0.307288, 0.565823, 0.765127,
		-0.385961, 0.809033, -0.443284,
		26.878681, 43.287182, 23.563982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810722, 43.235397, 24.385862>,  <27.148853, 42.720860, 23.874279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810722, 43.235397, 24.385862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629158, 43.203640, 24.030861>,  <26.520220, 43.184586, 23.817860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629158, 43.203640, 24.030861>,  <26.810722, 43.235397, 24.385862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629158, 43.203640, 24.030861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875939, -0.142885, 0.460776,
		-0.163394, 0.986550, -0.004688,
		-0.453909, -0.079394, -0.887504,
		26.492985, 43.179821, 23.764610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941401, 42.883579, 25.040146>,  <26.810722, 43.235397, 24.385862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941401, 42.883579, 25.040146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218508, 42.667046, 24.849556>,  <27.384771, 42.537125, 24.735203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218508, 42.667046, 24.849556>,  <26.941401, 42.883579, 25.040146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218508, 42.667046, 24.849556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007488, -0.655268, 0.755359,
		-0.721120, -0.526858, -0.449896,
		0.692769, -0.541336, -0.476472,
		27.426338, 42.504642, 24.706614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788618, 42.199306, 25.044773>,  <26.941401, 42.883579, 25.040146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788618, 42.199306, 25.044773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183552, 42.190681, 24.981897>,  <27.420511, 42.185505, 24.944172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183552, 42.190681, 24.981897>,  <26.788618, 42.199306, 25.044773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183552, 42.190681, 24.981897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073797, -0.814601, 0.575308,
		-0.140453, -0.579620, -0.802691,
		0.987333, -0.021567, -0.157187,
		27.479752, 42.184212, 24.934742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963078, 41.462833, 24.866072>,  <26.788618, 42.199306, 25.044773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963078, 41.462833, 24.866072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277697, 41.653236, 25.023430>,  <27.466469, 41.767479, 25.117846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277697, 41.653236, 25.023430>,  <26.963078, 41.462833, 24.866072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277697, 41.653236, 25.023430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140847, -0.758544, 0.636218,
		0.601252, -0.445008, -0.663675,
		0.786549, 0.476004, 0.393398,
		27.513660, 41.796036, 25.141449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558744, 40.910770, 25.032635>,  <26.963078, 41.462833, 24.866072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558744, 40.910770, 25.032635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676535, 41.221188, 25.255720>,  <27.747210, 41.407436, 25.389572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676535, 41.221188, 25.255720>,  <27.558744, 40.910770, 25.032635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676535, 41.221188, 25.255720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224921, -0.623477, 0.748790,
		0.928814, -0.095058, -0.358146,
		0.294475, 0.776041, 0.557714,
		27.764877, 41.453999, 25.423035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239031, 40.812992, 25.348711>,  <27.558744, 40.910770, 25.032635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239031, 40.812992, 25.348711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070387, 41.083958, 25.589828>,  <27.969200, 41.246536, 25.734499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070387, 41.083958, 25.589828>,  <28.239031, 40.812992, 25.348711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070387, 41.083958, 25.589828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243638, -0.555692, 0.794888,
		0.873434, 0.481994, 0.069240,
		-0.421608, 0.677413, 0.602793,
		27.943905, 41.287182, 25.770666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668030, 40.751526, 25.911928>,  <28.239031, 40.812992, 25.348711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668030, 40.751526, 25.911928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382914, 40.988598, 26.061947>,  <28.211843, 41.130840, 26.151958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382914, 40.988598, 26.061947>,  <28.668030, 40.751526, 25.911928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382914, 40.988598, 26.061947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129514, -0.414310, 0.900874,
		0.689316, 0.690707, 0.218555,
		-0.712790, 0.592681, 0.375046,
		28.169077, 41.166401, 26.174461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970640, 41.148369, 26.439947>,  <28.668030, 40.751526, 25.911928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970640, 41.148369, 26.439947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577808, 41.115753, 26.507910>,  <28.342110, 41.096184, 26.548687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577808, 41.115753, 26.507910>,  <28.970640, 41.148369, 26.439947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577808, 41.115753, 26.507910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187973, -0.358933, 0.914239,
		-0.013565, 0.929794, 0.367829,
		-0.982081, -0.081543, 0.169907,
		28.283184, 41.091290, 26.558882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903683, 41.407185, 27.190285>,  <28.970640, 41.148369, 26.439947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903683, 41.407185, 27.190285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589785, 41.187962, 27.074488>,  <28.401445, 41.056427, 27.005009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589785, 41.187962, 27.074488>,  <28.903683, 41.407185, 27.190285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589785, 41.187962, 27.074488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126265, -0.598621, 0.791018,
		-0.606823, 0.584193, 0.538965,
		-0.784744, -0.548061, -0.289494,
		28.354362, 41.023544, 26.987640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617716, 41.247189, 27.773983>,  <28.903683, 41.407185, 27.190285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617716, 41.247189, 27.773983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445341, 40.985012, 27.525888>,  <28.341915, 40.827705, 27.377031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445341, 40.985012, 27.525888>,  <28.617716, 41.247189, 27.773983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445341, 40.985012, 27.525888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050864, -0.703884, 0.708491,
		-0.900946, 0.273769, 0.336669,
		-0.430939, -0.655437, -0.620237,
		28.316059, 40.788380, 27.339817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244480, 40.821579, 28.264841>,  <28.617716, 41.247189, 27.773983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244480, 40.821579, 28.264841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250004, 40.621449, 27.918550>,  <28.253319, 40.501369, 27.710777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250004, 40.621449, 27.918550>,  <28.244480, 40.821579, 28.264841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250004, 40.621449, 27.918550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034342, -0.865534, 0.499671,
		-0.999315, 0.022831, -0.029134,
		0.013808, -0.500329, -0.865725,
		28.254147, 40.471348, 27.658833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709192, 40.292091, 28.276525>,  <28.244480, 40.821579, 28.264841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709192, 40.292091, 28.276525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000624, 40.185627, 28.024071>,  <28.175482, 40.121750, 27.872599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000624, 40.185627, 28.024071>,  <27.709192, 40.292091, 28.276525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000624, 40.185627, 28.024071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185776, -0.810093, 0.556090,
		-0.659288, -0.522405, -0.540770,
		0.728578, -0.266161, -0.631135,
		28.219196, 40.105778, 27.834730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491640, 39.633373, 28.103537>,  <27.709192, 40.292091, 28.276525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491640, 39.633373, 28.103537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884249, 39.672215, 28.037577>,  <28.119814, 39.695518, 27.998001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884249, 39.672215, 28.037577>,  <27.491640, 39.633373, 28.103537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884249, 39.672215, 28.037577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156754, -0.902227, 0.401764,
		-0.109765, -0.420187, -0.900774,
		0.981519, 0.097100, -0.164899,
		28.178705, 39.701344, 27.988108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651402, 38.986675, 28.108072>,  <27.491640, 39.633373, 28.103537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651402, 38.986675, 28.108072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026228, 39.125381, 28.091755>,  <28.251123, 39.208603, 28.081964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026228, 39.125381, 28.091755>,  <27.651402, 38.986675, 28.108072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026228, 39.125381, 28.091755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322160, -0.813650, 0.483929,
		0.134616, -0.466615, -0.874156,
		0.937066, 0.346762, -0.040795,
		28.307348, 39.229408, 28.079517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077417, 38.485710, 28.066952>,  <27.651402, 38.986675, 28.108072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077417, 38.485710, 28.066952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339165, 38.762714, 28.188431>,  <28.496214, 38.928917, 28.261318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339165, 38.762714, 28.188431>,  <28.077417, 38.485710, 28.066952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339165, 38.762714, 28.188431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492308, -0.695002, 0.524028,
		0.573965, -0.193394, -0.795716,
		0.654368, 0.692511, 0.303697,
		28.535475, 38.970467, 28.279539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743427, 38.244011, 27.779852>,  <28.077417, 38.485710, 28.066952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743427, 38.244011, 27.779852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780170, 38.467747, 28.109386>,  <28.802216, 38.601986, 28.307106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780170, 38.467747, 28.109386>,  <28.743427, 38.244011, 27.779852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780170, 38.467747, 28.109386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246523, -0.814352, 0.525411,
		0.964774, 0.154831, -0.212694,
		0.091858, 0.559337, 0.823835,
		28.807728, 38.635548, 28.356537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256683, 38.010933, 28.093103>,  <28.743427, 38.244011, 27.779852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256683, 38.010933, 28.093103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121099, 38.199959, 28.418505>,  <29.039749, 38.313374, 28.613745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121099, 38.199959, 28.418505>,  <29.256683, 38.010933, 28.093103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121099, 38.199959, 28.418505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282013, -0.773892, 0.567062,
		0.897539, 0.421628, 0.129047,
		-0.338958, 0.472568, 0.813503,
		29.019411, 38.341728, 28.662556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743250, 37.996731, 28.559408>,  <29.256683, 38.010933, 28.093103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743250, 37.996731, 28.559408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406506, 38.016495, 28.774380>,  <29.204458, 38.028351, 28.903362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406506, 38.016495, 28.774380>,  <29.743250, 37.996731, 28.559408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406506, 38.016495, 28.774380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367318, -0.677124, 0.637637,
		0.395408, 0.734209, 0.551896,
		-0.841861, 0.049405, 0.537428,
		29.153948, 38.031315, 28.935608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044224, 38.025108, 29.234890>,  <29.743250, 37.996731, 28.559408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044224, 38.025108, 29.234890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665213, 37.907524, 29.285135>,  <29.437805, 37.836975, 29.315283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665213, 37.907524, 29.285135>,  <30.044224, 38.025108, 29.234890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665213, 37.907524, 29.285135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289370, -0.621714, 0.727830,
		-0.135858, 0.725987, 0.674155,
		-0.947527, -0.293961, 0.125614,
		29.380955, 37.819336, 29.322819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989340, 37.850033, 29.905550>,  <30.044224, 38.025108, 29.234890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989340, 37.850033, 29.905550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653542, 37.665585, 29.790575>,  <29.452063, 37.554916, 29.721590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653542, 37.665585, 29.790575>,  <29.989340, 37.850033, 29.905550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653542, 37.665585, 29.790575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149686, -0.704778, 0.693457,
		-0.522343, 0.539128, 0.660680,
		-0.839495, -0.461117, -0.287436,
		29.401693, 37.527248, 29.704344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837084, 37.580437, 30.510132>,  <29.989340, 37.850033, 29.905550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837084, 37.580437, 30.510132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627302, 37.378391, 30.235964>,  <29.501432, 37.257164, 30.071463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627302, 37.378391, 30.235964>,  <29.837084, 37.580437, 30.510132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627302, 37.378391, 30.235964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155791, -0.848356, 0.505986,
		-0.837064, 0.158584, 0.523618,
		-0.524455, -0.505117, -0.685422,
		29.469965, 37.226856, 30.030336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528238, 37.180069, 30.970396>,  <29.837084, 37.580437, 30.510132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528238, 37.180069, 30.970396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463745, 37.016399, 30.611156>,  <29.425049, 36.918198, 30.395613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463745, 37.016399, 30.611156>,  <29.528238, 37.180069, 30.970396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463745, 37.016399, 30.611156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001717, -0.910120, 0.414343,
		-0.986915, 0.065264, 0.147444,
		-0.161233, -0.409174, -0.898098,
		29.415375, 36.893646, 30.341726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920078, 36.646008, 31.103329>,  <29.528238, 37.180069, 30.970396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920078, 36.646008, 31.103329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137045, 36.568539, 30.776337>,  <29.267225, 36.522057, 30.580141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137045, 36.568539, 30.776337>,  <28.920078, 36.646008, 31.103329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137045, 36.568539, 30.776337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119517, -0.945377, 0.303277,
		-0.831566, -0.262205, -0.489639,
		0.542414, -0.193675, -0.817482,
		29.299768, 36.510437, 30.531092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580616, 36.021038, 30.763132>,  <28.920078, 36.646008, 31.103329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580616, 36.021038, 30.763132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963196, 36.056675, 30.651943>,  <29.192743, 36.078056, 30.585230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963196, 36.056675, 30.651943>,  <28.580616, 36.021038, 30.763132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963196, 36.056675, 30.651943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178161, -0.932514, 0.314127,
		-0.231225, -0.349970, -0.907775,
		0.956448, 0.089096, -0.277971,
		29.250130, 36.083405, 30.568552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799139, 35.442005, 30.445261>,  <28.580616, 36.021038, 30.763132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799139, 35.442005, 30.445261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166342, 35.570900, 30.537722>,  <29.386663, 35.648235, 30.593199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166342, 35.570900, 30.537722>,  <28.799139, 35.442005, 30.445261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166342, 35.570900, 30.537722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307778, -0.946488, 0.097122,
		0.250078, -0.018015, -0.968058,
		0.918005, 0.322235, 0.231151,
		29.441744, 35.667572, 30.607067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207071, 34.959930, 30.255796>,  <28.799139, 35.442005, 30.445261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207071, 34.959930, 30.255796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452482, 35.147194, 30.510168>,  <29.599730, 35.259552, 30.662792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452482, 35.147194, 30.510168>,  <29.207071, 34.959930, 30.255796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452482, 35.147194, 30.510168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359894, -0.882583, 0.302529,
		0.702894, 0.043258, -0.709978,
		0.613527, 0.468163, 0.635931,
		29.636539, 35.287643, 30.700947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920769, 34.618519, 30.200687>,  <29.207071, 34.959930, 30.255796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920769, 34.618519, 30.200687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935141, 34.790329, 30.561623>,  <29.943764, 34.893414, 30.778185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935141, 34.790329, 30.561623>,  <29.920769, 34.618519, 30.200687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935141, 34.790329, 30.561623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518277, -0.780016, 0.350661,
		0.854457, 0.455063, -0.250640,
		0.035931, 0.429527, 0.902339,
		29.945919, 34.919186, 30.832325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631630, 34.609715, 30.416582>,  <29.920769, 34.618519, 30.200687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631630, 34.609715, 30.416582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418871, 34.665955, 30.750605>,  <30.291216, 34.699699, 30.951017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418871, 34.665955, 30.750605>,  <30.631630, 34.609715, 30.416582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418871, 34.665955, 30.750605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471446, -0.769997, 0.429934,
		0.703438, 0.622364, 0.343275,
		-0.531896, 0.140596, 0.835056,
		30.259302, 34.708134, 31.001122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103119, 34.519352, 30.927288>,  <30.631630, 34.609715, 30.416582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103119, 34.519352, 30.927288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746925, 34.493275, 31.107418>,  <30.533209, 34.477631, 31.215496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746925, 34.493275, 31.107418>,  <31.103119, 34.519352, 30.927288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746925, 34.493275, 31.107418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282265, -0.855386, 0.434328,
		0.356887, 0.513872, 0.780107,
		-0.890482, -0.065191, 0.450324,
		30.479780, 34.473717, 31.242516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302641, 34.471409, 31.673157>,  <31.103119, 34.519352, 30.927288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302641, 34.471409, 31.673157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932478, 34.323433, 31.640259>,  <30.710381, 34.234646, 31.620520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932478, 34.323433, 31.640259>,  <31.302641, 34.471409, 31.673157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932478, 34.323433, 31.640259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280627, -0.814781, 0.507327,
		-0.254691, 0.446405, 0.857820,
		-0.925408, -0.369939, -0.082244,
		30.654856, 34.212452, 31.615585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072266, 34.316078, 32.355667>,  <31.302641, 34.471409, 31.673157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072266, 34.316078, 32.355667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830479, 34.099953, 32.121510>,  <30.685408, 33.970280, 31.981014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830479, 34.099953, 32.121510>,  <31.072266, 34.316078, 32.355667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830479, 34.099953, 32.121510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164863, -0.803773, 0.571638,
		-0.779385, 0.249026, 0.574931,
		-0.604466, -0.540310, -0.585393,
		30.649139, 33.937859, 31.945892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756994, 33.861946, 32.752846>,  <31.072266, 34.316078, 32.355667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756994, 33.861946, 32.752846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676600, 33.694607, 32.398537>,  <30.628363, 33.594204, 32.185951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676600, 33.694607, 32.398537>,  <30.756994, 33.861946, 32.752846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676600, 33.694607, 32.398537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110723, -0.908130, 0.403782,
		-0.973317, -0.016921, 0.228841,
		-0.200985, -0.418346, -0.885772,
		30.616304, 33.569103, 32.132805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285934, 33.341473, 32.879265>,  <30.756994, 33.861946, 32.752846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285934, 33.341473, 32.879265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501163, 33.246399, 32.555790>,  <30.630301, 33.189354, 32.361706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501163, 33.246399, 32.555790>,  <30.285934, 33.341473, 32.879265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501163, 33.246399, 32.555790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323505, -0.827708, 0.458524,
		-0.778345, -0.508335, -0.368475,
		0.538073, -0.237686, -0.808692,
		30.662586, 33.175095, 32.313183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325901, 32.655106, 32.940536>,  <30.285934, 33.341473, 32.879265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325901, 32.655106, 32.940536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590578, 32.692646, 32.642986>,  <30.749384, 32.715172, 32.464455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590578, 32.692646, 32.642986>,  <30.325901, 32.655106, 32.940536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590578, 32.692646, 32.642986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537417, -0.751192, 0.383267,
		-0.522826, -0.653378, -0.547494,
		0.661691, 0.093850, -0.743879,
		30.789085, 32.720802, 32.419823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345682, 31.960217, 32.572746>,  <30.325901, 32.655106, 32.940536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345682, 31.960217, 32.572746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685572, 32.157410, 32.497986>,  <30.889505, 32.275726, 32.453129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685572, 32.157410, 32.497986>,  <30.345682, 31.960217, 32.572746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685572, 32.157410, 32.497986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527226, -0.795246, 0.299360,
		-0.001056, -0.352915, -0.935655,
		0.849725, 0.492985, -0.186905,
		30.940489, 32.305305, 32.441914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803871, 31.602486, 31.983297>,  <30.345682, 31.960217, 32.572746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803871, 31.602486, 31.983297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023642, 31.826149, 32.231644>,  <31.155504, 31.960346, 32.380650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023642, 31.826149, 32.231644>,  <30.803871, 31.602486, 31.983297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023642, 31.826149, 32.231644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556879, -0.799026, 0.226810,
		0.622909, 0.221131, -0.750390,
		0.549426, 0.559158, 0.620864,
		31.188469, 31.993896, 32.417904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524687, 31.368729, 31.907072>,  <30.803871, 31.602486, 31.983297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524687, 31.368729, 31.907072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534042, 31.565727, 32.255074>,  <31.539656, 31.683926, 32.463875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534042, 31.565727, 32.255074>,  <31.524687, 31.368729, 31.907072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534042, 31.565727, 32.255074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653052, -0.666436, 0.359704,
		0.756952, 0.559743, -0.337210,
		0.023388, 0.492494, 0.870001,
		31.541059, 31.713476, 32.516075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211521, 31.197811, 32.112083>,  <31.524687, 31.368729, 31.907072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211521, 31.197811, 32.112083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069859, 31.351000, 32.453354>,  <31.984861, 31.442913, 32.658115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069859, 31.351000, 32.453354>,  <32.211521, 31.197811, 32.112083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069859, 31.351000, 32.453354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588043, -0.618184, 0.521588,
		0.727171, 0.686428, -0.006268,
		-0.354158, 0.382970, 0.853174,
		31.963612, 31.465891, 32.709305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804958, 31.463362, 32.495056>,  <32.211521, 31.197811, 32.112083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804958, 31.463362, 32.495056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497379, 31.395271, 32.741550>,  <32.312832, 31.354418, 32.889446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497379, 31.395271, 32.741550>,  <32.804958, 31.463362, 32.495056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497379, 31.395271, 32.741550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474836, -0.797486, 0.372218,
		0.428075, 0.578826, 0.694055,
		-0.768949, -0.170225, 0.616232,
		32.266693, 31.344204, 32.926418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132477, 31.191792, 32.978256>,  <32.804958, 31.463362, 32.495056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132477, 31.191792, 32.978256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757854, 31.064480, 33.036987>,  <32.533081, 30.988092, 33.072227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757854, 31.064480, 33.036987>,  <33.132477, 31.191792, 32.978256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757854, 31.064480, 33.036987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331059, -0.940843, 0.072208,
		0.115160, 0.116236, 0.986523,
		-0.936557, -0.318281, 0.146829,
		32.476887, 30.968996, 33.081036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579365, 31.726913, 33.186466>,  <33.132477, 31.191792, 32.978256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579365, 31.726913, 33.186466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661362, 31.974361, 33.489857>,  <33.710560, 32.122829, 33.671890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661362, 31.974361, 33.489857>,  <33.579365, 31.726913, 33.186466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661362, 31.974361, 33.489857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534521, 0.719927, -0.442711,
		-0.819917, -0.314667, 0.478248,
		0.204997, 0.618619, 0.758476,
		33.722862, 32.159946, 33.717400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964317, 32.076572, 33.428642>,  <33.579365, 31.726913, 33.186466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964317, 32.076572, 33.428642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270798, 32.311817, 33.532230>,  <33.454685, 32.452965, 33.594383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270798, 32.311817, 33.532230>,  <32.964317, 32.076572, 33.428642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270798, 32.311817, 33.532230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425361, 0.766242, -0.481602,
		-0.481668, 0.258848, 0.837253,
		0.766201, 0.588108, 0.258971,
		33.500656, 32.488251, 33.609921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692905, 32.646381, 33.705555>,  <32.964317, 32.076572, 33.428642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692905, 32.646381, 33.705555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069847, 32.754875, 33.627174>,  <33.296013, 32.819973, 33.580147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069847, 32.754875, 33.627174>,  <32.692905, 32.646381, 33.705555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069847, 32.754875, 33.627174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334470, 0.746292, -0.575480,
		-0.009850, 0.607848, 0.793992,
		0.942355, 0.271235, -0.195956,
		33.352554, 32.836246, 33.568386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689625, 33.447388, 33.759953>,  <32.692905, 32.646381, 33.705555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689625, 33.447388, 33.759953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026684, 33.366589, 33.560299>,  <33.228920, 33.318108, 33.440506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026684, 33.366589, 33.560299>,  <32.689625, 33.447388, 33.759953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026684, 33.366589, 33.560299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116502, 0.836616, -0.535258,
		0.525706, 0.509186, 0.681441,
		0.842651, -0.202000, -0.499135,
		33.279480, 33.305988, 33.410557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987301, 34.059738, 33.817802>,  <32.689625, 33.447388, 33.759953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987301, 34.059738, 33.817802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144829, 33.886627, 33.493431>,  <33.239346, 33.782761, 33.298809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144829, 33.886627, 33.493431>,  <32.987301, 34.059738, 33.817802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144829, 33.886627, 33.493431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077352, 0.863491, -0.498397,
		0.915926, 0.259007, 0.306586,
		0.393823, -0.432779, -0.810929,
		33.262974, 33.756794, 33.250153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359558, 34.546234, 33.530617>,  <32.987301, 34.059738, 33.817802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359558, 34.546234, 33.530617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333359, 34.278717, 33.234394>,  <33.317638, 34.118206, 33.056660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333359, 34.278717, 33.234394>,  <33.359558, 34.546234, 33.530617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333359, 34.278717, 33.234394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241228, 0.730755, -0.638597,
		0.968256, 0.136817, -0.209195,
		-0.065499, -0.668789, -0.740562,
		33.313709, 34.078079, 33.012226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855419, 34.810417, 33.032482>,  <33.359558, 34.546234, 33.530617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855419, 34.810417, 33.032482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616096, 34.567078, 32.823887>,  <33.472504, 34.421074, 32.698730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616096, 34.567078, 32.823887>,  <33.855419, 34.810417, 33.032482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616096, 34.567078, 32.823887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169932, 0.732355, -0.659378,
		0.783043, -0.305891, -0.541548,
		-0.598303, -0.608347, -0.521485,
		33.436604, 34.384575, 32.667442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965424, 34.922001, 32.426220>,  <33.855419, 34.810417, 33.032482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965424, 34.922001, 32.426220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583046, 34.804581, 32.425423>,  <33.353619, 34.734131, 32.424942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583046, 34.804581, 32.425423>,  <33.965424, 34.922001, 32.426220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583046, 34.804581, 32.425423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251633, 0.822910, -0.509412,
		0.151178, -0.486467, -0.860520,
		-0.955943, -0.293547, -0.001995,
		33.296265, 34.716518, 32.424824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717297, 35.046822, 31.702801>,  <33.965424, 34.922001, 32.426220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717297, 35.046822, 31.702801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396500, 35.019268, 31.940142>,  <33.204021, 35.002735, 32.082546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396500, 35.019268, 31.940142>,  <33.717297, 35.046822, 31.702801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396500, 35.019268, 31.940142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327362, 0.881561, -0.340125,
		-0.499647, -0.467018, -0.729553,
		-0.801989, -0.068886, 0.593353,
		33.155903, 34.998604, 32.118149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211174, 35.258316, 31.311251>,  <33.717297, 35.046822, 31.702801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211174, 35.258316, 31.311251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053909, 35.302250, 31.676405>,  <32.959549, 35.328609, 31.895498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053909, 35.302250, 31.676405>,  <33.211174, 35.258316, 31.311251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053909, 35.302250, 31.676405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378634, 0.885412, -0.269597,
		-0.837890, -0.451645, -0.306524,
		-0.393162, 0.109832, 0.912886,
		32.935959, 35.335201, 31.950272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592033, 35.385227, 31.150522>,  <33.211174, 35.258316, 31.311251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592033, 35.385227, 31.150522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665867, 35.531528, 31.515413>,  <32.710167, 35.619308, 31.734348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665867, 35.531528, 31.515413>,  <32.592033, 35.385227, 31.150522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665867, 35.531528, 31.515413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507238, 0.830457, -0.230328,
		-0.841807, -0.420201, 0.338811,
		0.184584, 0.365749, 0.912226,
		32.721241, 35.641254, 31.789082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948233, 35.617428, 31.412489>,  <32.592033, 35.385227, 31.150522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948233, 35.617428, 31.412489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234638, 35.815060, 31.609755>,  <32.406483, 35.933640, 31.728115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234638, 35.815060, 31.609755>,  <31.948233, 35.617428, 31.412489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234638, 35.815060, 31.609755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505358, 0.854229, -0.122093,
		-0.481600, -0.161805, 0.861325,
		0.716013, 0.494077, 0.493166,
		32.449444, 35.963284, 31.757704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512186, 36.065147, 31.922369>,  <31.948233, 35.617428, 31.412489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512186, 36.065147, 31.922369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871967, 36.239933, 31.925121>,  <32.087837, 36.344807, 31.926773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871967, 36.239933, 31.925121>,  <31.512186, 36.065147, 31.922369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871967, 36.239933, 31.925121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435871, 0.895832, 0.086610,
		0.031681, -0.080901, 0.996219,
		0.899451, 0.436966, 0.006882,
		32.141804, 36.371021, 31.927185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377329, 36.628139, 32.315701>,  <31.512186, 36.065147, 31.922369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377329, 36.628139, 32.315701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703344, 36.715603, 32.101074>,  <31.898952, 36.768082, 31.972300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703344, 36.715603, 32.101074>,  <31.377329, 36.628139, 32.315701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703344, 36.715603, 32.101074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331830, 0.935301, -0.122890,
		0.474976, 0.278207, 0.834864,
		0.815038, 0.218663, -0.536563,
		31.947855, 36.781200, 31.940105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505093, 37.214573, 32.524479>,  <31.377329, 36.628139, 32.315701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505093, 37.214573, 32.524479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706974, 37.215420, 32.179161>,  <31.828102, 37.215927, 31.971972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706974, 37.215420, 32.179161>,  <31.505093, 37.214573, 32.524479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706974, 37.215420, 32.179161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325833, 0.926503, -0.188216,
		0.799443, 0.376282, 0.468298,
		0.504702, 0.002119, -0.863291,
		31.858385, 37.216057, 31.920174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740740, 37.825993, 32.511909>,  <31.505093, 37.214573, 32.524479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740740, 37.825993, 32.511909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750977, 37.739613, 32.121483>,  <31.757118, 37.687786, 31.887226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750977, 37.739613, 32.121483>,  <31.740740, 37.825993, 32.511909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750977, 37.739613, 32.121483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216608, 0.951995, -0.216300,
		0.975923, 0.216960, -0.022411,
		0.025593, -0.215946, -0.976070,
		31.758654, 37.674828, 31.828663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106091, 38.279171, 32.255325>,  <31.740740, 37.825993, 32.511909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106091, 38.279171, 32.255325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888010, 38.152164, 31.944986>,  <31.757162, 38.075962, 31.758783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888010, 38.152164, 31.944986>,  <32.106091, 38.279171, 32.255325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888010, 38.152164, 31.944986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182191, 0.948253, -0.260042,
		0.818268, -0.000422, -0.574836,
		-0.545200, -0.317514, -0.775849,
		31.724449, 38.056911, 31.712233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177219, 38.806976, 31.754660>,  <32.106091, 38.279171, 32.255325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177219, 38.806976, 31.754660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894735, 38.580780, 31.584257>,  <31.725245, 38.445061, 31.482016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894735, 38.580780, 31.584257>,  <32.177219, 38.806976, 31.754660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894735, 38.580780, 31.584257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284867, 0.777807, -0.560239,
		0.648161, -0.274294, -0.710388,
		-0.706215, -0.565491, -0.426006,
		31.682871, 38.411133, 31.456455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158710, 39.013779, 31.028845>,  <32.177219, 38.806976, 31.754660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158710, 39.013779, 31.028845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804354, 38.848938, 31.114048>,  <31.591740, 38.750034, 31.165171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804354, 38.848938, 31.114048>,  <32.158710, 39.013779, 31.028845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804354, 38.848938, 31.114048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462521, 0.749275, -0.473985,
		0.035729, -0.518418, -0.854380,
		-0.885888, -0.412104, 0.213008,
		31.538588, 38.725307, 31.177950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800352, 38.817108, 30.387627>,  <32.158710, 39.013779, 31.028845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800352, 38.817108, 30.387627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522707, 38.893436, 30.665272>,  <31.356119, 38.939236, 30.831860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522707, 38.893436, 30.665272>,  <31.800352, 38.817108, 30.387627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522707, 38.893436, 30.665272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442721, 0.647155, -0.620636,
		-0.567631, -0.738090, -0.364716,
		-0.694113, 0.190825, 0.694113,
		31.314472, 38.950684, 30.873507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103434, 38.812569, 30.089472>,  <31.800352, 38.817108, 30.387627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103434, 38.812569, 30.089472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069649, 39.034519, 30.420525>,  <31.049377, 39.167690, 30.619156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069649, 39.034519, 30.420525>,  <31.103434, 38.812569, 30.089472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069649, 39.034519, 30.420525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541124, 0.671905, -0.505695,
		-0.836690, -0.490564, 0.243508,
		-0.084462, 0.554879, 0.827633,
		31.044310, 39.200981, 30.668814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308636, 38.930153, 30.302603>,  <31.103434, 38.812569, 30.089472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308636, 38.930153, 30.302603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544851, 39.237839, 30.400234>,  <30.686581, 39.422451, 30.458813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544851, 39.237839, 30.400234>,  <30.308636, 38.930153, 30.302603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544851, 39.237839, 30.400234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539986, 0.601403, -0.588838,
		-0.599732, 0.215932, 0.770516,
		0.590539, 0.769213, 0.244080,
		30.722013, 39.468601, 30.473459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818190, 39.565029, 30.419403>,  <30.308636, 38.930153, 30.302603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818190, 39.565029, 30.419403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172810, 39.750057, 30.416504>,  <30.385582, 39.861076, 30.414764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172810, 39.750057, 30.416504>,  <29.818190, 39.565029, 30.419403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172810, 39.750057, 30.416504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417868, 0.793954, -0.441614,
		-0.198525, 0.394542, 0.897176,
		0.886552, 0.462572, -0.007246,
		30.438776, 39.888828, 30.414330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678757, 40.189468, 30.718998>,  <29.818190, 39.565029, 30.419403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678757, 40.189468, 30.718998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011593, 40.215935, 30.498726>,  <30.211294, 40.231815, 30.366562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011593, 40.215935, 30.498726>,  <29.678757, 40.189468, 30.718998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011593, 40.215935, 30.498726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401037, 0.757634, -0.514937,
		0.383141, 0.649317, 0.656956,
		0.832089, 0.066170, -0.550680,
		30.261219, 40.235786, 30.333521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827703, 40.826530, 30.660780>,  <29.678757, 40.189468, 30.718998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827703, 40.826530, 30.660780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016369, 40.664494, 30.347492>,  <30.129568, 40.567272, 30.159519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016369, 40.664494, 30.347492>,  <29.827703, 40.826530, 30.660780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016369, 40.664494, 30.347492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408584, 0.686716, -0.601232,
		0.781404, 0.603591, 0.158385,
		0.471664, -0.405091, -0.783220,
		30.157867, 40.542965, 30.112526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973770, 41.450184, 30.239588>,  <29.827703, 40.826530, 30.660780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973770, 41.450184, 30.239588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032539, 41.158001, 29.972803>,  <30.067801, 40.982689, 29.812733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032539, 41.158001, 29.972803>,  <29.973770, 41.450184, 30.239588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032539, 41.158001, 29.972803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214451, 0.634719, -0.742390,
		0.965621, 0.252106, -0.063392,
		0.146924, -0.730462, -0.666962,
		30.076616, 40.938862, 29.772715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546402, 41.706692, 29.811869>,  <29.973770, 41.450184, 30.239588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546402, 41.706692, 29.811869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340765, 41.416958, 29.628111>,  <30.217382, 41.243118, 29.517857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340765, 41.416958, 29.628111>,  <30.546402, 41.706692, 29.811869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340765, 41.416958, 29.628111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197371, 0.621114, -0.758460,
		0.834718, -0.299248, -0.462274,
		-0.514092, -0.724339, -0.459393,
		30.186537, 41.199657, 29.490294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714355, 41.839733, 29.219465>,  <30.546402, 41.706692, 29.811869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714355, 41.839733, 29.219465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394306, 41.613533, 29.139446>,  <30.202276, 41.477814, 29.091434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394306, 41.613533, 29.139446>,  <30.714355, 41.839733, 29.219465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394306, 41.613533, 29.139446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259554, 0.627062, -0.734456,
		0.540775, -0.535730, -0.648502,
		-0.800121, -0.565497, -0.200049,
		30.154270, 41.443886, 29.079432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604969, 41.891315, 28.457754>,  <30.714355, 41.839733, 29.219465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604969, 41.891315, 28.457754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253334, 41.747601, 28.583046>,  <30.042353, 41.661369, 28.658220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253334, 41.747601, 28.583046>,  <30.604969, 41.891315, 28.457754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253334, 41.747601, 28.583046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467232, 0.519496, -0.715414,
		0.094319, -0.775265, -0.624555,
		-0.879089, -0.359289, 0.313230,
		29.989607, 41.639812, 28.677015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139841, 41.589951, 27.926807>,  <30.604969, 41.891315, 28.457754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139841, 41.589951, 27.926807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911379, 41.716583, 28.229742>,  <29.774302, 41.792564, 28.411503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911379, 41.716583, 28.229742>,  <30.139841, 41.589951, 27.926807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911379, 41.716583, 28.229742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376731, 0.718618, -0.584518,
		-0.729285, -0.619162, -0.291174,
		-0.571154, 0.316586, 0.757335,
		29.740032, 41.811558, 28.456942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506578, 41.595058, 27.685133>,  <30.139841, 41.589951, 27.926807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506578, 41.595058, 27.685133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517908, 41.859501, 27.985035>,  <29.524706, 42.018166, 28.164976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517908, 41.859501, 27.985035>,  <29.506578, 41.595058, 27.685133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517908, 41.859501, 27.985035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203502, 0.738161, -0.643199,
		-0.978665, -0.134358, 0.155444,
		0.028324, 0.661109, 0.749755,
		29.526405, 42.057835, 28.209961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039865, 42.040001, 27.509050>,  <29.506578, 41.595058, 27.685133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039865, 42.040001, 27.509050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217587, 42.251991, 27.797970>,  <29.324219, 42.379185, 27.971321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217587, 42.251991, 27.797970>,  <29.039865, 42.040001, 27.509050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217587, 42.251991, 27.797970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178428, 0.842445, -0.508380,
		-0.877929, 0.096996, 0.468864,
		0.444303, 0.529980, 0.722300,
		29.350878, 42.410984, 28.014660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593752, 42.510483, 27.731562>,  <29.039865, 42.040001, 27.509050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593752, 42.510483, 27.731562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955463, 42.641228, 27.841425>,  <29.172491, 42.719677, 27.907343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955463, 42.641228, 27.841425>,  <28.593752, 42.510483, 27.731562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955463, 42.641228, 27.841425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151659, 0.847287, -0.509023,
		-0.399097, 0.418645, 0.815756,
		0.904279, 0.326866, 0.274659,
		29.226748, 42.739288, 27.923822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496412, 43.247181, 27.853199>,  <28.593752, 42.510483, 27.731562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496412, 43.247181, 27.853199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892927, 43.217644, 27.809570>,  <29.130836, 43.199921, 27.783392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892927, 43.217644, 27.809570>,  <28.496412, 43.247181, 27.853199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892927, 43.217644, 27.809570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015636, 0.888208, -0.459176,
		0.130785, 0.453470, 0.881624,
		0.991287, -0.073838, -0.109074,
		29.190313, 43.195492, 27.776848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776457, 43.911743, 28.050177>,  <28.496412, 43.247181, 27.853199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776457, 43.911743, 28.050177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059959, 43.726051, 27.837702>,  <29.230061, 43.614635, 27.710217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059959, 43.726051, 27.837702>,  <28.776457, 43.911743, 28.050177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059959, 43.726051, 27.837702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126381, 0.824345, -0.551800,
		0.694039, 0.323961, 0.642930,
		0.708758, -0.464225, -0.531185,
		29.272587, 43.586784, 27.678347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448231, 44.381577, 28.080780>,  <28.776457, 43.911743, 28.050177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448231, 44.381577, 28.080780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457153, 44.146336, 27.757389>,  <29.462507, 44.005192, 27.563354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457153, 44.146336, 27.757389>,  <29.448231, 44.381577, 28.080780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457153, 44.146336, 27.757389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172735, 0.798784, -0.576286,
		0.984716, -0.126799, 0.119403,
		0.022304, -0.588103, -0.808478,
		29.463844, 43.969906, 27.514845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086632, 44.564644, 27.817062>,  <29.448231, 44.381577, 28.080780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086632, 44.564644, 27.817062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890598, 44.411865, 27.503647>,  <29.772978, 44.320198, 27.315598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890598, 44.411865, 27.503647>,  <30.086632, 44.564644, 27.817062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890598, 44.411865, 27.503647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384880, 0.711704, -0.587660,
		0.782104, -0.589572, -0.201791,
		-0.490083, -0.381945, -0.783541,
		29.743574, 44.297283, 27.268585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568872, 44.320328, 27.235403>,  <30.086632, 44.564644, 27.817062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568872, 44.320328, 27.235403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208397, 44.423958, 27.096415>,  <29.992111, 44.486134, 27.013021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208397, 44.423958, 27.096415>,  <30.568872, 44.320328, 27.235403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208397, 44.423958, 27.096415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426737, 0.670629, -0.606755,
		0.075832, -0.695082, -0.714920,
		-0.901190, 0.259071, -0.347473,
		29.938040, 44.501678, 26.992172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292549, 44.450863, 26.483355>,  <30.568872, 44.320328, 27.235403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292549, 44.450863, 26.483355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656696, 44.588280, 26.391090>,  <30.875185, 44.670731, 26.335732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656696, 44.588280, 26.391090>,  <30.292549, 44.450863, 26.483355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656696, 44.588280, 26.391090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407444, -0.646907, 0.644593,
		0.072232, -0.680799, -0.728900,
		0.910369, 0.343547, -0.230660,
		30.929808, 44.691345, 26.321892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697599, 43.816910, 26.393467>,  <30.292549, 44.450863, 26.483355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697599, 43.816910, 26.393467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946688, 44.123386, 26.456924>,  <31.096142, 44.307274, 26.494999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946688, 44.123386, 26.456924>,  <30.697599, 43.816910, 26.393467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946688, 44.123386, 26.456924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615639, -0.604928, 0.505026,
		0.482915, -0.216824, -0.848399,
		0.622722, 0.766192, 0.158644,
		31.133505, 44.353245, 26.504517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350155, 43.605202, 26.115099>,  <30.697599, 43.816910, 26.393467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350155, 43.605202, 26.115099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419041, 43.896141, 26.380821>,  <31.460373, 44.070705, 26.540255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419041, 43.896141, 26.380821>,  <31.350155, 43.605202, 26.115099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419041, 43.896141, 26.380821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588214, -0.616881, 0.522936,
		0.790156, 0.300697, -0.534073,
		0.172214, 0.727350, 0.664307,
		31.470705, 44.114346, 26.580112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967287, 43.521870, 26.357777>,  <31.350155, 43.605202, 26.115099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967287, 43.521870, 26.357777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826534, 43.754116, 26.651461>,  <31.742083, 43.893463, 26.827671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826534, 43.754116, 26.651461>,  <31.967287, 43.521870, 26.357777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826534, 43.754116, 26.651461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638106, -0.425079, 0.641973,
		0.684837, 0.694403, -0.220916,
		-0.351881, 0.580614, 0.734212,
		31.720970, 43.928299, 26.871725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538700, 43.719135, 26.568003>,  <31.967287, 43.521870, 26.357777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538700, 43.719135, 26.568003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267818, 43.747997, 26.860901>,  <32.105289, 43.765316, 27.036640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267818, 43.747997, 26.860901>,  <32.538700, 43.719135, 26.568003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267818, 43.747997, 26.860901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609510, -0.502467, 0.613208,
		0.412176, 0.861580, 0.296295,
		-0.677206, 0.072155, 0.732247,
		32.064655, 43.769642, 27.080576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891918, 43.880829, 27.207821>,  <32.538700, 43.719135, 26.568003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891918, 43.880829, 27.207821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542625, 43.727688, 27.328419>,  <32.333050, 43.635803, 27.400778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542625, 43.727688, 27.328419>,  <32.891918, 43.880829, 27.207821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542625, 43.727688, 27.328419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474189, -0.524955, 0.706801,
		-0.112329, 0.760163, 0.639949,
		-0.873228, -0.382851, 0.301494,
		32.280659, 43.612831, 27.418867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948643, 43.702702, 27.907322>,  <32.891918, 43.880829, 27.207821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948643, 43.702702, 27.907322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627522, 43.476212, 27.832600>,  <32.434849, 43.340317, 27.787766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627522, 43.476212, 27.832600>,  <32.948643, 43.702702, 27.907322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627522, 43.476212, 27.832600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338247, -0.690508, 0.639365,
		-0.491016, 0.450097, 0.745866,
		-0.802803, -0.566225, -0.186806,
		32.386681, 43.306343, 27.776558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692303, 43.586437, 28.534758>,  <32.948643, 43.702702, 27.907322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692303, 43.586437, 28.534758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561829, 43.296062, 28.292562>,  <32.483543, 43.121838, 28.147245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561829, 43.296062, 28.292562>,  <32.692303, 43.586437, 28.534758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561829, 43.296062, 28.292562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262827, -0.684908, 0.679576,
		-0.908035, 0.062527, 0.414201,
		-0.326181, -0.725942, -0.605487,
		32.463974, 43.078281, 28.110916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267300, 43.163944, 29.057308>,  <32.692303, 43.586437, 28.534758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267300, 43.163944, 29.057308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342457, 42.942394, 28.732861>,  <32.387550, 42.809464, 28.538191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342457, 42.942394, 28.732861>,  <32.267300, 43.163944, 29.057308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342457, 42.942394, 28.732861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400532, -0.710834, 0.578177,
		-0.896812, -0.433513, 0.088289,
		0.187889, -0.553879, -0.811120,
		32.398823, 42.776230, 28.489525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864229, 42.519268, 29.053892>,  <32.267300, 43.163944, 29.057308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864229, 42.519268, 29.053892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192795, 42.455002, 28.834997>,  <32.389935, 42.416443, 28.703661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192795, 42.455002, 28.834997>,  <31.864229, 42.519268, 29.053892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192795, 42.455002, 28.834997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259155, -0.749584, 0.609067,
		-0.508055, -0.642115, -0.574080,
		0.821412, -0.160664, -0.547238,
		32.439217, 42.406803, 28.670826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930517, 41.933060, 29.182602>,  <31.864229, 42.519268, 29.053892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930517, 41.933060, 29.182602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280537, 42.015217, 29.007282>,  <32.490547, 42.064510, 28.902090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280537, 42.015217, 29.007282>,  <31.930517, 41.933060, 29.182602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280537, 42.015217, 29.007282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402172, -0.812394, 0.422223,
		-0.269351, -0.545737, -0.793486,
		0.875047, 0.205392, -0.438300,
		32.543053, 42.076836, 28.875792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121334, 41.396538, 28.819189>,  <31.930517, 41.933060, 29.182602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121334, 41.396538, 28.819189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488655, 41.544964, 28.874367>,  <32.709049, 41.634018, 28.907473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488655, 41.544964, 28.874367>,  <32.121334, 41.396538, 28.819189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488655, 41.544964, 28.874367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323751, -0.904464, 0.277723,
		0.227817, -0.210376, -0.950706,
		0.918305, 0.371063, 0.137943,
		32.764145, 41.656284, 28.915751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531353, 40.902061, 28.639874>,  <32.121334, 41.396538, 28.819189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531353, 40.902061, 28.639874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739983, 41.138439, 28.886042>,  <32.865162, 41.280266, 29.033743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739983, 41.138439, 28.886042>,  <32.531353, 40.902061, 28.639874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739983, 41.138439, 28.886042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370643, -0.806622, 0.460418,
		0.768494, -0.012041, -0.639744,
		0.521576, 0.590945, 0.615421,
		32.896454, 41.315723, 29.070667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285812, 40.788765, 28.516766>,  <32.531353, 40.902061, 28.639874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285812, 40.788765, 28.516766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211403, 40.919628, 28.887358>,  <33.166759, 40.998146, 29.109713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211403, 40.919628, 28.887358>,  <33.285812, 40.788765, 28.516766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211403, 40.919628, 28.887358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531662, -0.759450, 0.374927,
		0.826276, 0.562318, -0.032666,
		-0.186020, 0.327160, 0.926479,
		33.155598, 41.017776, 29.165302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832314, 40.541862, 28.809694>,  <33.285812, 40.788765, 28.516766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832314, 40.541862, 28.809694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588696, 40.635296, 29.112879>,  <33.442524, 40.691357, 29.294790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588696, 40.635296, 29.112879>,  <33.832314, 40.541862, 28.809694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588696, 40.635296, 29.112879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385658, -0.747852, 0.540357,
		0.693061, 0.621415, 0.365390,
		-0.609043, 0.233585, 0.757960,
		33.405983, 40.705372, 29.340267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257355, 40.417122, 29.305290>,  <33.832314, 40.541862, 28.809694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257355, 40.417122, 29.305290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906765, 40.445705, 29.495737>,  <33.696411, 40.462856, 29.610004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906765, 40.445705, 29.495737>,  <34.257355, 40.417122, 29.305290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906765, 40.445705, 29.495737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300982, -0.690528, 0.657709,
		0.375771, 0.719767, 0.583721,
		-0.876474, 0.071458, 0.476117,
		33.643822, 40.467144, 29.638573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348755, 40.571495, 29.978712>,  <34.257355, 40.417122, 29.305290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348755, 40.571495, 29.978712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990982, 40.394524, 29.952618>,  <33.776318, 40.288342, 29.936960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990982, 40.394524, 29.952618>,  <34.348755, 40.571495, 29.978712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990982, 40.394524, 29.952618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323563, -0.740905, 0.588530,
		-0.308717, 0.505289, 0.805839,
		-0.894428, -0.442428, -0.065237,
		33.722652, 40.261795, 29.933046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104031, 40.427223, 30.598047>,  <34.348755, 40.571495, 29.978712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104031, 40.427223, 30.598047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892296, 40.153118, 30.397957>,  <33.765255, 39.988655, 30.277903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892296, 40.153118, 30.397957>,  <34.104031, 40.427223, 30.598047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892296, 40.153118, 30.397957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463072, -0.727388, 0.506429,
		-0.710893, 0.036430, 0.702356,
		-0.529334, -0.685259, -0.500226,
		33.733494, 39.947540, 30.247889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050301, 39.915421, 31.073151>,  <34.104031, 40.427223, 30.598047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050301, 39.915421, 31.073151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944481, 39.727879, 30.736061>,  <33.880989, 39.615353, 30.533808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944481, 39.727879, 30.736061>,  <34.050301, 39.915421, 31.073151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944481, 39.727879, 30.736061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392339, -0.850598, 0.350076,
		-0.880956, -0.238021, 0.408977,
		-0.264549, -0.468859, -0.842725,
		33.865116, 39.587219, 30.483244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683762, 39.353436, 31.266352>,  <34.050301, 39.915421, 31.073151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683762, 39.353436, 31.266352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785358, 39.249809, 30.893606>,  <33.846317, 39.187634, 30.669958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785358, 39.249809, 30.893606>,  <33.683762, 39.353436, 31.266352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785358, 39.249809, 30.893606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194369, -0.930134, 0.311563,
		-0.947475, -0.260260, -0.185892,
		0.253992, -0.259067, -0.931865,
		33.861557, 39.172089, 30.614046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378738, 38.704697, 31.212887>,  <33.683762, 39.353436, 31.266352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378738, 38.704697, 31.212887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667599, 38.678043, 30.937479>,  <33.840916, 38.662052, 30.772234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667599, 38.678043, 30.937479>,  <33.378738, 38.704697, 31.212887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667599, 38.678043, 30.937479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120929, -0.967862, 0.220499,
		-0.681084, -0.242495, -0.690884,
		0.722150, -0.066630, -0.688520,
		33.884243, 38.658054, 30.730923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325642, 38.064812, 30.875214>,  <33.378738, 38.704697, 31.212887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325642, 38.064812, 30.875214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698601, 38.186115, 30.796556>,  <33.922375, 38.258896, 30.749361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698601, 38.186115, 30.796556>,  <33.325642, 38.064812, 30.875214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698601, 38.186115, 30.796556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352821, -0.881735, 0.313146,
		-0.078425, -0.361357, -0.929124,
		0.932399, 0.303256, -0.196644,
		33.978321, 38.277092, 30.737564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638988, 37.515198, 30.573225>,  <33.325642, 38.064812, 30.875214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638988, 37.515198, 30.573225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944920, 37.730358, 30.715040>,  <34.128479, 37.859455, 30.800129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944920, 37.730358, 30.715040>,  <33.638988, 37.515198, 30.573225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944920, 37.730358, 30.715040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300156, -0.784472, 0.542689,
		0.570042, -0.308645, -0.761440,
		0.764826, 0.537906, 0.354540,
		34.174366, 37.891731, 30.821402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241470, 37.146229, 30.463144>,  <33.638988, 37.515198, 30.573225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241470, 37.146229, 30.463144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315891, 37.399261, 30.763868>,  <34.360542, 37.551083, 30.944304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315891, 37.399261, 30.763868>,  <34.241470, 37.146229, 30.463144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315891, 37.399261, 30.763868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499830, -0.719700, 0.481873,
		0.845905, 0.286125, -0.450087,
		0.186052, 0.632585, 0.751812,
		34.371708, 37.589039, 30.989412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956253, 37.054131, 30.581997>,  <34.241470, 37.146229, 30.463144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956253, 37.054131, 30.581997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804924, 37.219734, 30.913168>,  <34.714127, 37.319096, 31.111872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804924, 37.219734, 30.913168>,  <34.956253, 37.054131, 30.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804924, 37.219734, 30.913168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599347, -0.572062, 0.559936,
		0.705444, 0.708056, -0.031708,
		-0.378327, 0.414008, 0.827929,
		34.691425, 37.343937, 31.161547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502148, 37.215607, 31.074568>,  <34.956253, 37.054131, 30.581997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502148, 37.215607, 31.074568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182323, 37.200882, 31.314352>,  <34.990429, 37.192047, 31.458223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182323, 37.200882, 31.314352>,  <35.502148, 37.215607, 31.074568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182323, 37.200882, 31.314352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543849, -0.467878, 0.696648,
		0.254827, 0.883026, 0.394117,
		-0.799557, -0.036815, 0.599460,
		34.942455, 37.189838, 31.494190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753979, 37.240772, 31.800446>,  <35.502148, 37.215607, 31.074568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753979, 37.240772, 31.800446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382988, 37.095776, 31.837080>,  <35.160393, 37.008778, 31.859060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382988, 37.095776, 31.837080>,  <35.753979, 37.240772, 31.800446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382988, 37.095776, 31.837080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306304, -0.596227, 0.742085,
		-0.214394, 0.716319, 0.664019,
		-0.927477, -0.362491, 0.091584,
		35.104744, 36.987030, 31.864555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688168, 37.241734, 32.439655>,  <35.753979, 37.240772, 31.800446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688168, 37.241734, 32.439655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413868, 36.975414, 32.322033>,  <35.249290, 36.815624, 32.251457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413868, 36.975414, 32.322033>,  <35.688168, 37.241734, 32.439655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413868, 36.975414, 32.322033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298775, -0.625906, 0.720399,
		-0.663691, 0.406153, 0.628135,
		-0.685746, -0.665794, -0.294060,
		35.208145, 36.775677, 32.233814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493847, 36.966915, 33.015434>,  <35.688168, 37.241734, 32.439655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493847, 36.966915, 33.015434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359295, 36.707779, 32.742043>,  <35.278564, 36.552296, 32.578007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359295, 36.707779, 32.742043>,  <35.493847, 36.966915, 33.015434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359295, 36.707779, 32.742043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254653, -0.761311, 0.596287,
		-0.906644, 0.026526, 0.421063,
		-0.336376, -0.647844, -0.683483,
		35.258381, 36.513424, 32.536999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227314, 36.422012, 33.401245>,  <35.493847, 36.966915, 33.015434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227314, 36.422012, 33.401245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264359, 36.249279, 33.042370>,  <35.286583, 36.145638, 32.827045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264359, 36.249279, 33.042370>,  <35.227314, 36.422012, 33.401245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264359, 36.249279, 33.042370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306708, -0.844873, 0.438315,
		-0.947288, -0.315765, 0.054207,
		0.092606, -0.431836, -0.897185,
		35.292141, 36.119728, 32.773212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926880, 35.838490, 33.543911>,  <35.227314, 36.422012, 33.401245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926880, 35.838490, 33.543911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180714, 35.823051, 33.235153>,  <35.333015, 35.813789, 33.049900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180714, 35.823051, 33.235153>,  <34.926880, 35.838490, 33.543911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180714, 35.823051, 33.235153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438278, -0.804658, 0.400546,
		-0.636566, -0.592482, -0.493708,
		0.634583, -0.038592, -0.771890,
		35.371090, 35.811474, 33.003586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992542, 35.157547, 33.380291>,  <34.926880, 35.838490, 33.543911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992542, 35.157547, 33.380291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309555, 35.310097, 33.189945>,  <35.499763, 35.401627, 33.075737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309555, 35.310097, 33.189945>,  <34.992542, 35.157547, 33.380291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309555, 35.310097, 33.189945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421916, -0.906326, -0.023668,
		-0.440311, -0.182016, -0.879202,
		0.792536, 0.381371, -0.475860,
		35.547318, 35.424507, 33.047188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244392, 34.664059, 32.840748>,  <34.992542, 35.157547, 33.380291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244392, 34.664059, 32.840748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548916, 34.912724, 32.914444>,  <35.731628, 35.061924, 32.958660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548916, 34.912724, 32.914444>,  <35.244392, 34.664059, 32.840748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548916, 34.912724, 32.914444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637688, -0.769293, -0.039275,
		0.117316, 0.147386, -0.982097,
		0.761309, 0.621663, 0.184237,
		35.777309, 35.099224, 32.969715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863720, 34.428780, 32.424381>,  <35.244392, 34.664059, 32.840748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863720, 34.428780, 32.424381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014805, 34.623653, 32.739338>,  <36.105457, 34.740578, 32.928310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014805, 34.623653, 32.739338>,  <35.863720, 34.428780, 32.424381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014805, 34.623653, 32.739338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567490, -0.793751, 0.218893,
		0.731633, 0.364156, -0.576285,
		0.377716, 0.487185, 0.787389,
		36.128120, 34.769810, 32.975555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447613, 34.167885, 32.470432>,  <35.863720, 34.428780, 32.424381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447613, 34.167885, 32.470432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418884, 34.340931, 32.829918>,  <36.401646, 34.444759, 33.045609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418884, 34.340931, 32.829918>,  <36.447613, 34.167885, 32.470432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418884, 34.340931, 32.829918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665026, -0.650757, 0.366409,
		0.743358, 0.623984, -0.240962,
		-0.071826, 0.432619, 0.898711,
		36.397335, 34.470718, 33.099533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093781, 34.479179, 32.603245>,  <36.447613, 34.167885, 32.470432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093781, 34.479179, 32.603245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910706, 34.416348, 32.953297>,  <36.800861, 34.378647, 33.163326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910706, 34.416348, 32.953297>,  <37.093781, 34.479179, 32.603245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910706, 34.416348, 32.953297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821348, -0.451591, 0.348501,
		0.340458, 0.878289, 0.335704,
		-0.457685, -0.157080, 0.875129,
		36.773399, 34.369225, 33.215836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541039, 34.613514, 33.253841>,  <37.093781, 34.479179, 32.603245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541039, 34.613514, 33.253841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261002, 34.361691, 33.388618>,  <37.092979, 34.210598, 33.469482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261002, 34.361691, 33.388618>,  <37.541039, 34.613514, 33.253841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261002, 34.361691, 33.388618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706026, -0.539756, 0.458466,
		-0.106767, 0.558855, 0.822363,
		-0.700092, -0.629559, 0.336938,
		37.050976, 34.172821, 33.489700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832848, 34.274849, 33.830112>,  <37.541039, 34.613514, 33.253841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832848, 34.274849, 33.830112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526089, 34.033855, 33.741680>,  <37.342033, 33.889259, 33.688622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526089, 34.033855, 33.741680>,  <37.832848, 34.274849, 33.830112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526089, 34.033855, 33.741680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518461, -0.784656, 0.339873,
		-0.378238, 0.146029, 0.914118,
		-0.766899, -0.602487, -0.221077,
		37.296021, 33.853107, 33.675358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704048, 33.890907, 34.417416>,  <37.832848, 34.274849, 33.830112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704048, 33.890907, 34.417416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553890, 33.668037, 34.121136>,  <37.463795, 33.534313, 33.943367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553890, 33.668037, 34.121136>,  <37.704048, 33.890907, 34.417416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553890, 33.668037, 34.121136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421035, -0.814442, 0.399267,
		-0.825717, -0.161975, 0.540330,
		-0.375396, -0.557179, -0.740695,
		37.441273, 33.500885, 33.898926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500107, 33.215183, 34.727802>,  <37.704048, 33.890907, 34.417416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500107, 33.215183, 34.727802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487354, 33.121155, 34.339222>,  <37.479702, 33.064739, 34.106071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487354, 33.121155, 34.339222>,  <37.500107, 33.215183, 34.727802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487354, 33.121155, 34.339222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483106, -0.854495, 0.190915,
		-0.874982, -0.463229, 0.140804,
		-0.031879, -0.235071, -0.971455,
		37.477791, 33.050632, 34.047787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257126, 32.473461, 34.668518>,  <37.500107, 33.215183, 34.727802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257126, 32.473461, 34.668518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433655, 32.556412, 34.319294>,  <37.539574, 32.606182, 34.109760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433655, 32.556412, 34.319294>,  <37.257126, 32.473461, 34.668518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433655, 32.556412, 34.319294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512102, -0.857144, 0.055270,
		-0.736875, -0.471487, -0.484475,
		0.441324, 0.207374, -0.873057,
		37.566051, 32.618626, 34.057377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394894, 31.976181, 34.140533>,  <37.257126, 32.473461, 34.668518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394894, 31.976181, 34.140533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674931, 32.230576, 34.010677>,  <37.842953, 32.383213, 33.932762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674931, 32.230576, 34.010677>,  <37.394894, 31.976181, 34.140533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674931, 32.230576, 34.010677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713961, -0.630697, 0.304107,
		-0.011342, -0.444685, -0.895615,
		0.700094, 0.635985, -0.324641,
		37.884960, 32.421371, 33.913284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011585, 31.696531, 33.754959>,  <37.394894, 31.976181, 34.140533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011585, 31.696531, 33.754959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131992, 32.024300, 33.950077>,  <38.204235, 32.220959, 34.067146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131992, 32.024300, 33.950077>,  <38.011585, 31.696531, 33.754959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131992, 32.024300, 33.950077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699401, -0.537420, 0.471188,
		0.648249, 0.199326, -0.734876,
		0.301017, 0.819420, 0.487791,
		38.222298, 32.270126, 34.096413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709507, 32.088512, 33.519642>,  <38.011585, 31.696531, 33.754959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709507, 32.088512, 33.519642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624329, 32.102966, 33.910202>,  <38.573223, 32.111637, 34.144539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624329, 32.102966, 33.910202>,  <38.709507, 32.088512, 33.519642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624329, 32.102966, 33.910202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784512, -0.589347, 0.192903,
		0.582407, 0.807072, 0.097150,
		-0.212942, 0.036132, 0.976397,
		38.560448, 32.113808, 34.203121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318108, 32.358376, 33.953789>,  <38.709507, 32.088512, 33.519642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318108, 32.358376, 33.953789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092972, 32.117737, 34.180519>,  <38.957890, 31.973352, 34.316559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092972, 32.117737, 34.180519>,  <39.318108, 32.358376, 33.953789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092972, 32.117737, 34.180519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812982, -0.526732, 0.248220,
		0.149237, 0.600527, 0.785555,
		-0.562840, -0.601598, 0.566825,
		38.924118, 31.937258, 34.350567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836975, 31.821278, 34.320576>,  <39.318108, 32.358376, 33.953789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836975, 31.821278, 34.320576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805714, 32.015232, 34.669006>,  <39.786957, 32.131603, 34.878063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805714, 32.015232, 34.669006>,  <39.836975, 31.821278, 34.320576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805714, 32.015232, 34.669006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965261, -0.255322, 0.055517,
		0.249325, -0.836478, 0.487999,
		-0.078158, 0.484888, 0.871077,
		39.782265, 32.160698, 34.930328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581356, 31.414667, 34.903671>,  <39.836975, 31.821278, 34.320576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581356, 31.414667, 34.903671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472588, 31.790949, 34.984798>,  <39.407326, 32.016716, 35.033474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472588, 31.790949, 34.984798>,  <39.581356, 31.414667, 34.903671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472588, 31.790949, 34.984798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900816, -0.322964, 0.290215,
		0.338509, -0.103784, 0.935222,
		-0.271923, 0.940704, 0.202817,
		39.391010, 32.073158, 35.045643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249275, 31.395559, 35.555187>,  <39.581356, 31.414667, 34.903671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249275, 31.395559, 35.555187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126667, 31.706301, 35.335175>,  <39.053101, 31.892746, 35.203167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126667, 31.706301, 35.335175>,  <39.249275, 31.395559, 35.555187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126667, 31.706301, 35.335175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935515, -0.139238, 0.324690,
		0.175651, 0.614093, 0.769439,
		-0.306525, 0.776854, -0.550036,
		39.034710, 31.939358, 35.170162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717419, 30.895849, 35.700615>,  <39.249275, 31.395559, 35.555187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717419, 30.895849, 35.700615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916969, 30.555117, 35.764500>,  <40.036697, 30.350677, 35.802830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916969, 30.555117, 35.764500>,  <39.717419, 30.895849, 35.700615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916969, 30.555117, 35.764500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630555, 0.483169, 0.607411,
		-0.594579, -0.202316, 0.778167,
		0.498875, -0.851831, 0.159711,
		40.066631, 30.299568, 35.812412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700367, 30.642471, 36.504360>,  <39.717419, 30.895849, 35.700615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700367, 30.642471, 36.504360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042908, 30.554537, 36.317455>,  <40.248432, 30.501776, 36.205315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042908, 30.554537, 36.317455>,  <39.700367, 30.642471, 36.504360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042908, 30.554537, 36.317455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515940, 0.326409, 0.791999,
		-0.021594, -0.919308, 0.392945,
		0.856353, -0.219838, -0.467259,
		40.299812, 30.488585, 36.177277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199486, 30.844797, 37.012077>,  <39.700367, 30.642471, 36.504360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199486, 30.844797, 37.012077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439037, 30.679480, 36.737698>,  <40.582767, 30.580290, 36.573071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439037, 30.679480, 36.737698>,  <40.199486, 30.844797, 37.012077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439037, 30.679480, 36.737698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798177, 0.238270, 0.553300,
		-0.065232, -0.878873, 0.472575,
		0.598881, -0.413292, -0.685953,
		40.618702, 30.555492, 36.531910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574936, 30.480415, 37.469765>,  <40.199486, 30.844797, 37.012077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574936, 30.480415, 37.469765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755596, 30.554174, 37.120590>,  <40.863991, 30.598431, 36.911087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755596, 30.554174, 37.120590>,  <40.574936, 30.480415, 37.469765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755596, 30.554174, 37.120590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842389, 0.234199, 0.485316,
		0.293931, -0.954541, -0.049560,
		0.451647, 0.184398, -0.872933,
		40.891090, 30.609493, 36.858711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896263, 29.715878, 37.488167>,  <40.574936, 30.480415, 37.469765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896263, 29.715878, 37.488167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085358, 29.365820, 37.529430>,  <41.198814, 29.155785, 37.554188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085358, 29.365820, 37.529430>,  <40.896263, 29.715878, 37.488167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085358, 29.365820, 37.529430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792390, -0.370948, 0.484268,
		-0.385540, -0.310671, -0.868817,
		0.472734, -0.875147, 0.103157,
		41.227180, 29.103277, 37.560379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548496, 30.113539, 37.393295>,  <40.896263, 29.715878, 37.488167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548496, 30.113539, 37.393295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412231, 30.137280, 37.017971>,  <41.330475, 30.151524, 36.792778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412231, 30.137280, 37.017971>,  <41.548496, 30.113539, 37.393295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412231, 30.137280, 37.017971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788971, 0.560839, -0.250966,
		0.511347, -0.825795, -0.237881,
		-0.340659, 0.059351, -0.938312,
		41.310032, 30.155085, 36.736477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092052, 29.835285, 36.873608>,  <41.548496, 30.113539, 37.393295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092052, 29.835285, 36.873608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874348, 30.141937, 36.737339>,  <41.743725, 30.325928, 36.655579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874348, 30.141937, 36.737339>,  <42.092052, 29.835285, 36.873608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874348, 30.141937, 36.737339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838858, 0.492687, -0.231468,
		-0.009606, -0.411754, -0.911245,
		-0.544266, 0.766628, -0.340670,
		41.711067, 30.371925, 36.635139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467625, 29.979536, 36.296692>,  <42.092052, 29.835285, 36.873608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467625, 29.979536, 36.296692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267979, 30.303848, 36.419018>,  <42.148190, 30.498436, 36.492413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267979, 30.303848, 36.419018>,  <42.467625, 29.979536, 36.296692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267979, 30.303848, 36.419018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812932, 0.560311, -0.158726,
		-0.300041, 0.169381, -0.938768,
		-0.499117, 0.810779, 0.305811,
		42.118244, 30.547081, 36.510761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871708, 30.563156, 36.128239>,  <42.467625, 29.979536, 36.296692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871708, 30.563156, 36.128239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618210, 30.791061, 36.337521>,  <42.466110, 30.927805, 36.463089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618210, 30.791061, 36.337521>,  <42.871708, 30.563156, 36.128239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618210, 30.791061, 36.337521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710944, 0.695562, 0.103694,
		-0.304838, 0.437683, -0.845876,
		-0.633744, 0.569761, 0.523202,
		42.428085, 30.961990, 36.494480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038883, 31.231718, 35.911995>,  <42.871708, 30.563156, 36.128239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038883, 31.231718, 35.911995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863499, 31.248997, 36.271080>,  <42.758270, 31.259363, 36.486530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863499, 31.248997, 36.271080>,  <43.038883, 31.231718, 35.911995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863499, 31.248997, 36.271080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606581, 0.751266, 0.260114,
		-0.663186, 0.658584, -0.355599,
		-0.438457, 0.043196, 0.897714,
		42.731960, 31.261955, 36.540394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858295, 31.787994, 35.944824>,  <43.038883, 31.231718, 35.911995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858295, 31.787994, 35.944824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895927, 31.669834, 36.325115>,  <42.918507, 31.598938, 36.553291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895927, 31.669834, 36.325115>,  <42.858295, 31.787994, 35.944824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895927, 31.669834, 36.325115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683099, 0.713860, 0.154206,
		-0.724241, 0.634936, 0.268945,
		0.094078, -0.295399, 0.950731,
		42.924152, 31.581215, 36.610332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957783, 32.349701, 36.245598>,  <42.858295, 31.787994, 35.944824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957783, 32.349701, 36.245598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097893, 32.106937, 36.530964>,  <43.181957, 31.961279, 36.702183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097893, 32.106937, 36.530964>,  <42.957783, 32.349701, 36.245598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097893, 32.106937, 36.530964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675290, 0.691452, 0.256667,
		-0.649069, 0.391860, 0.652040,
		0.350276, -0.606910, 0.713419,
		43.202976, 31.924864, 36.744991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008320, 32.919601, 36.811283>,  <42.957783, 32.349701, 36.245598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008320, 32.919601, 36.811283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005039, 32.689087, 37.138168>,  <43.003071, 32.550777, 37.334297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005039, 32.689087, 37.138168>,  <43.008320, 32.919601, 36.811283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005039, 32.689087, 37.138168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997981, 0.046756, 0.042992,
		-0.062985, 0.815911, 0.574737,
		-0.008205, -0.576284, 0.817208,
		43.002579, 32.516201, 37.383331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695240, 33.265934, 36.643570>,  <43.008320, 32.919601, 36.811283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695240, 33.265934, 36.643570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922970, 33.085625, 36.918575>,  <44.059608, 32.977440, 37.083580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922970, 33.085625, 36.918575>,  <43.695240, 33.265934, 36.643570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922970, 33.085625, 36.918575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576266, -0.815249, -0.057326,
		0.586337, -0.363555, -0.723904,
		0.569321, -0.450773, 0.687515,
		44.093765, 32.950394, 37.124828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053059, 32.558037, 36.389858>,  <43.695240, 33.265934, 36.643570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053059, 32.558037, 36.389858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005138, 32.549473, 36.786884>,  <43.976387, 32.544334, 37.025101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005138, 32.549473, 36.786884>,  <44.053059, 32.558037, 36.389858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005138, 32.549473, 36.786884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445784, -0.892155, -0.073046,
		0.887088, -0.451221, 0.097335,
		-0.119797, -0.021408, 0.992567,
		43.969200, 32.543049, 37.084656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329376, 31.860312, 36.744976>,  <44.053059, 32.558037, 36.389858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329376, 31.860312, 36.744976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039661, 32.038780, 36.955246>,  <43.865833, 32.145863, 37.081409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039661, 32.038780, 36.955246>,  <44.329376, 31.860312, 36.744976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039661, 32.038780, 36.955246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561302, -0.824321, -0.073723,
		0.400431, -0.348459, 0.847485,
		-0.724289, 0.446174, 0.525674,
		43.822376, 32.172634, 37.112949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100155, 31.286257, 37.107513>,  <44.329376, 31.860312, 36.744976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100155, 31.286257, 37.107513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841671, 31.582493, 37.181198>,  <43.686581, 31.760235, 37.225410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841671, 31.582493, 37.181198>,  <44.100155, 31.286257, 37.107513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841671, 31.582493, 37.181198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710466, -0.671943, 0.209118,
		0.278651, 0.004259, 0.960383,
		-0.646214, 0.740590, 0.184212,
		43.647808, 31.804670, 37.236462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520306, 31.032890, 37.524662>,  <44.100155, 31.286257, 37.107513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520306, 31.032890, 37.524662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399651, 31.364780, 37.336803>,  <43.327255, 31.563915, 37.224087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399651, 31.364780, 37.336803>,  <43.520306, 31.032890, 37.524662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399651, 31.364780, 37.336803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938088, -0.346273, -0.009253,
		-0.170303, 0.437779, 0.882806,
		-0.301641, 0.829726, -0.469647,
		43.309158, 31.613699, 37.195908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929077, 31.226397, 37.848103>,  <43.520306, 31.032890, 37.524662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929077, 31.226397, 37.848103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951805, 31.336163, 37.464130>,  <42.965443, 31.402021, 37.233746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951805, 31.336163, 37.464130>,  <42.929077, 31.226397, 37.848103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951805, 31.336163, 37.464130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919620, -0.359928, -0.157326,
		-0.388678, 0.891711, 0.231906,
		0.056820, 0.274414, -0.959932,
		42.968849, 31.418488, 37.176151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237743, 31.414421, 37.732288>,  <42.929077, 31.226397, 37.848103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237743, 31.414421, 37.732288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374935, 31.366966, 37.359558>,  <42.457249, 31.338493, 37.135921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374935, 31.366966, 37.359558>,  <42.237743, 31.414421, 37.732288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374935, 31.366966, 37.359558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804447, -0.549289, -0.226157,
		-0.485009, 0.827168, -0.283832,
		0.342976, -0.118639, -0.931822,
		42.477829, 31.331375, 37.080013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685909, 31.578272, 37.338696>,  <42.237743, 31.414421, 37.732288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685909, 31.578272, 37.338696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930130, 31.395500, 37.079948>,  <42.076664, 31.285837, 36.924702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930130, 31.395500, 37.079948>,  <41.685909, 31.578272, 37.338696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930130, 31.395500, 37.079948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788360, -0.428584, -0.441367,
		-0.075562, 0.779442, -0.621901,
		0.610556, -0.456931, -0.646865,
		42.113297, 31.258421, 36.885887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324890, 31.632284, 36.768684>,  <41.685909, 31.578272, 37.338696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324890, 31.632284, 36.768684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553768, 31.306326, 36.731712>,  <41.691093, 31.110752, 36.709530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553768, 31.306326, 36.731712>,  <41.324890, 31.632284, 36.768684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553768, 31.306326, 36.731712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752084, -0.476439, -0.455385,
		0.327054, 0.330083, -0.885484,
		0.572194, -0.814893, -0.092429,
		41.725426, 31.061857, 36.703983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189625, 31.389214, 36.100155>,  <41.324890, 31.632284, 36.768684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189625, 31.389214, 36.100155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340584, 31.085733, 36.312550>,  <41.431160, 30.903646, 36.439987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340584, 31.085733, 36.312550>,  <41.189625, 31.389214, 36.100155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340584, 31.085733, 36.312550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698254, -0.609775, -0.374988,
		0.608285, -0.229242, -0.759893,
		0.377401, -0.758698, 0.530986,
		41.453804, 30.858124, 36.471844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373478, 30.806013, 35.723156>,  <41.189625, 31.389214, 36.100155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373478, 30.806013, 35.723156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285606, 30.655485, 36.083183>,  <41.232883, 30.565168, 36.299198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285606, 30.655485, 36.083183>,  <41.373478, 30.806013, 35.723156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285606, 30.655485, 36.083183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698416, -0.583495, -0.414425,
		0.681142, -0.719664, -0.134645,
		-0.219682, -0.376321, 0.900068,
		41.219704, 30.542589, 36.353203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438450, 30.143946, 35.709633>,  <41.373478, 30.806013, 35.723156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438450, 30.143946, 35.709633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170101, 30.220142, 35.996307>,  <41.009090, 30.265862, 36.168312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170101, 30.220142, 35.996307>,  <41.438450, 30.143946, 35.709633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170101, 30.220142, 35.996307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709599, -0.445630, -0.545787,
		0.215410, -0.874715, 0.434134,
		-0.670871, 0.190494, 0.716690,
		40.968842, 30.277290, 36.211315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170307, 29.557985, 35.800583>,  <41.438450, 30.143946, 35.709633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170307, 29.557985, 35.800583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888519, 29.787800, 35.967262>,  <40.719448, 29.925688, 36.067268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888519, 29.787800, 35.967262>,  <41.170307, 29.557985, 35.800583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888519, 29.787800, 35.967262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703349, -0.486546, -0.518241,
		-0.095007, -0.658166, 0.746855,
		-0.704467, 0.574535, 0.416695,
		40.677177, 29.960161, 36.092270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600002, 29.125635, 36.087261>,  <41.170307, 29.557985, 35.800583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600002, 29.125635, 36.087261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457939, 29.490814, 36.006874>,  <40.372700, 29.709923, 35.958641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457939, 29.490814, 36.006874>,  <40.600002, 29.125635, 36.087261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457939, 29.490814, 36.006874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750808, -0.406659, -0.520495,
		-0.556911, -0.033968, 0.829877,
		-0.355157, 0.912948, -0.200969,
		40.351391, 29.764698, 35.946583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915600, 29.136452, 36.177494>,  <40.600002, 29.125635, 36.087261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915600, 29.136452, 36.177494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007019, 29.409763, 35.900108>,  <40.061871, 29.573751, 35.733677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007019, 29.409763, 35.900108>,  <39.915600, 29.136452, 36.177494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007019, 29.409763, 35.900108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608710, -0.455607, -0.649534,
		-0.759761, 0.570570, 0.311790,
		0.228551, 0.683280, -0.693464,
		40.075584, 29.614748, 35.692070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400032, 29.632130, 35.950542>,  <39.915600, 29.136452, 36.177494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400032, 29.632130, 35.950542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642376, 29.541828, 35.645397>,  <39.787785, 29.487648, 35.462311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642376, 29.541828, 35.645397>,  <39.400032, 29.632130, 35.950542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642376, 29.541828, 35.645397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795188, -0.201509, -0.571900,
		-0.024616, 0.953116, -0.301603,
		0.605863, -0.225754, -0.762867,
		39.824135, 29.474102, 35.416538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184410, 29.926941, 35.403755>,  <39.400032, 29.632130, 35.950542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184410, 29.926941, 35.403755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409580, 29.624443, 35.270363>,  <39.544682, 29.442944, 35.190327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409580, 29.624443, 35.270363>,  <39.184410, 29.926941, 35.403755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409580, 29.624443, 35.270363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758775, -0.312885, -0.571282,
		0.327687, 0.574626, -0.749950,
		0.562922, -0.756245, -0.333484,
		39.578457, 29.397570, 35.170319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899841, 29.978580, 35.234516>,  <39.184410, 29.926941, 35.403755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899841, 29.978580, 35.234516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741325, 29.886642, 34.878960>,  <39.646214, 29.831480, 34.665627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741325, 29.886642, 34.878960>,  <39.899841, 29.978580, 35.234516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741325, 29.886642, 34.878960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196886, 0.924360, -0.326794,
		0.896765, -0.304516, -0.321065,
		-0.396294, -0.229844, -0.888888,
		39.622437, 29.817690, 34.612293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402454, 30.296347, 34.801598>,  <39.899841, 29.978580, 35.234516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402454, 30.296347, 34.801598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024426, 30.292393, 34.670910>,  <39.797607, 30.290020, 34.592495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024426, 30.292393, 34.670910>,  <40.402454, 30.296347, 34.801598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024426, 30.292393, 34.670910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085303, 0.957446, -0.275718,
		0.315544, -0.288443, -0.904009,
		-0.945069, -0.009887, -0.326721,
		39.740906, 30.289427, 34.572895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355160, 30.528444, 34.045441>,  <40.402454, 30.296347, 34.801598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355160, 30.528444, 34.045441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008434, 30.619135, 34.223083>,  <39.800400, 30.673550, 34.329670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008434, 30.619135, 34.223083>,  <40.355160, 30.528444, 34.045441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008434, 30.619135, 34.223083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162999, 0.970557, -0.177346,
		-0.471240, -0.081337, -0.878247,
		-0.866813, 0.226725, 0.444107,
		39.748390, 30.687153, 34.356316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790855, 31.017435, 33.680206>,  <40.355160, 30.528444, 34.045441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790855, 31.017435, 33.680206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788120, 31.037764, 34.079681>,  <39.786480, 31.049961, 34.319366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788120, 31.037764, 34.079681>,  <39.790855, 31.017435, 33.680206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788120, 31.037764, 34.079681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255217, 0.965721, -0.047397,
		-0.966860, 0.254557, -0.019577,
		-0.006840, 0.050823, 0.998684,
		39.786068, 31.053011, 34.379288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682842, 31.038122, 32.885258>,  <39.790855, 31.017435, 33.680206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682842, 31.038122, 32.885258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844784, 31.122387, 32.529346>,  <39.941948, 31.172947, 32.315800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844784, 31.122387, 32.529346>,  <39.682842, 31.038122, 32.885258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844784, 31.122387, 32.529346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567316, 0.705288, 0.425115,
		0.717109, -0.676897, 0.166026,
		0.404855, 0.210664, -0.889782,
		39.966240, 31.185587, 32.262413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272552, 30.963018, 32.917782>,  <39.682842, 31.038122, 32.885258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272552, 30.963018, 32.917782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187321, 31.244598, 32.646770>,  <40.136181, 31.413548, 32.484161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187321, 31.244598, 32.646770>,  <40.272552, 30.963018, 32.917782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187321, 31.244598, 32.646770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607954, 0.638384, 0.472078,
		0.764845, -0.311316, -0.563998,
		-0.213082, 0.703951, -0.677531,
		40.123398, 31.455784, 32.443512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576073, 31.580246, 33.317070>,  <40.272552, 30.963018, 32.917782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576073, 31.580246, 33.317070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388599, 31.686495, 32.980076>,  <40.276115, 31.750244, 32.777878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388599, 31.686495, 32.980076>,  <40.576073, 31.580246, 33.317070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388599, 31.686495, 32.980076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332979, 0.936494, 0.110023,
		0.818205, -0.228963, -0.527367,
		-0.468685, 0.265623, -0.842484,
		40.247993, 31.766182, 32.727329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043930, 31.891247, 32.801380>,  <40.576073, 31.580246, 33.317070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043930, 31.891247, 32.801380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673317, 32.039646, 32.776413>,  <40.450951, 32.128685, 32.761433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673317, 32.039646, 32.776413>,  <41.043930, 31.891247, 32.801380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673317, 32.039646, 32.776413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363152, 0.925309, 0.109193,
		0.098268, 0.078503, -0.992059,
		-0.926533, 0.370999, -0.062420,
		40.395355, 32.150948, 32.757687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094398, 32.519375, 32.277374>,  <41.043930, 31.891247, 32.801380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094398, 32.519375, 32.277374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828339, 32.523514, 32.576031>,  <40.668701, 32.525997, 32.755222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828339, 32.523514, 32.576031>,  <41.094398, 32.519375, 32.277374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828339, 32.523514, 32.576031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303261, 0.917470, 0.257454,
		-0.682354, 0.397671, -0.613393,
		-0.665151, 0.010343, 0.746637,
		40.628792, 32.526615, 32.800022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518452, 33.070271, 32.375343>,  <41.094398, 32.519375, 32.277374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518452, 33.070271, 32.375343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650833, 32.964386, 32.737644>,  <40.730263, 32.900856, 32.955025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650833, 32.964386, 32.737644>,  <40.518452, 33.070271, 32.375343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650833, 32.964386, 32.737644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167069, 0.961121, 0.219851,
		-0.928738, 0.078562, 0.362317,
		0.330958, -0.264716, 0.905755,
		40.750122, 32.884972, 33.009369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232121, 33.411980, 32.976887>,  <40.518452, 33.070271, 32.375343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232121, 33.411980, 32.976887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607006, 33.320152, 33.081905>,  <40.831936, 33.265053, 33.144917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607006, 33.320152, 33.081905>,  <40.232121, 33.411980, 32.976887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607006, 33.320152, 33.081905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186996, 0.966218, 0.177353,
		-0.294391, -0.117123, 0.948481,
		0.937212, -0.229573, 0.262545,
		40.888168, 33.251282, 33.160667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324028, 33.691830, 33.672020>,  <40.232121, 33.411980, 32.976887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324028, 33.691830, 33.672020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683720, 33.665936, 33.498959>,  <40.899536, 33.650398, 33.395123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683720, 33.665936, 33.498959>,  <40.324028, 33.691830, 33.672020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683720, 33.665936, 33.498959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186201, 0.951570, 0.244628,
		0.395863, -0.300538, 0.867738,
		0.899234, -0.064735, -0.432652,
		40.953491, 33.646515, 33.369164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037807, 33.722485, 34.058624>,  <40.324028, 33.691830, 33.672020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037807, 33.722485, 34.058624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223156, 33.565403, 34.376385>,  <41.334366, 33.471153, 34.567039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223156, 33.565403, 34.376385>,  <41.037807, 33.722485, 34.058624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223156, 33.565403, 34.376385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543302, -0.582304, -0.604768,
		0.700078, 0.711830, -0.056464,
		0.463371, -0.392708, 0.794398,
		41.362167, 33.447590, 34.614704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938339, 33.753334, 34.262863>,  <41.037807, 33.722485, 34.058624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938339, 33.753334, 34.262863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815048, 34.049294, 34.023682>,  <41.741074, 34.226868, 33.880173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815048, 34.049294, 34.023682>,  <41.938339, 33.753334, 34.262863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815048, 34.049294, 34.023682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190998, 0.567623, 0.800827,
		0.931940, 0.361048, -0.033641,
		-0.308232, 0.739898, -0.597950,
		41.722580, 34.271263, 33.844296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207260, 34.434910, 34.449825>,  <41.938339, 33.753334, 34.262863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207260, 34.434910, 34.449825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843204, 34.494934, 34.295357>,  <41.624771, 34.530949, 34.202675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843204, 34.494934, 34.295357>,  <42.207260, 34.434910, 34.449825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843204, 34.494934, 34.295357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272613, 0.484963, 0.830959,
		0.311975, 0.861564, -0.400475,
		-0.910140, 0.150064, -0.386170,
		41.570164, 34.539951, 34.179504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162857, 35.083080, 34.326241>,  <42.207260, 34.434910, 34.449825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162857, 35.083080, 34.326241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808804, 34.911144, 34.397537>,  <41.596371, 34.807983, 34.440315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808804, 34.911144, 34.397537>,  <42.162857, 35.083080, 34.326241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808804, 34.911144, 34.397537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054623, 0.476373, 0.877545,
		-0.462113, 0.767011, -0.445135,
		-0.885137, -0.429840, 0.178242,
		41.543262, 34.782192, 34.451012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305798, 34.956860, 33.531921>,  <42.162857, 35.083080, 34.326241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305798, 34.956860, 33.531921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287636, 35.326221, 33.684376>,  <42.276737, 35.547836, 33.775848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287636, 35.326221, 33.684376>,  <42.305798, 34.956860, 33.531921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287636, 35.326221, 33.684376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787570, -0.201623, 0.582307,
		0.614550, 0.326614, -0.718089,
		-0.045406, 0.923402, 0.381138,
		42.274014, 35.603241, 33.798717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900295, 35.444721, 33.443100>,  <42.305798, 34.956860, 33.531921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900295, 35.444721, 33.443100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683403, 35.479485, 33.777390>,  <42.553268, 35.500343, 33.977962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683403, 35.479485, 33.777390>,  <42.900295, 35.444721, 33.443100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683403, 35.479485, 33.777390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807947, -0.219140, 0.546992,
		0.230678, 0.971815, 0.048607,
		-0.542227, 0.086907, 0.835726,
		42.520737, 35.505558, 34.028107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450706, 35.628262, 33.858898>,  <42.900295, 35.444721, 33.443100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450706, 35.628262, 33.858898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156609, 35.446331, 34.059914>,  <42.980148, 35.337173, 34.180523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156609, 35.446331, 34.059914>,  <43.450706, 35.628262, 33.858898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156609, 35.446331, 34.059914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677640, -0.477291, 0.559461,
		-0.014599, 0.751883, 0.659135,
		-0.735248, -0.454824, 0.502538,
		42.936035, 35.309883, 34.210674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102333, 35.588249, 34.279053>,  <43.450706, 35.628262, 33.858898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102333, 35.588249, 34.279053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195133, 35.820286, 34.591377>,  <44.250813, 35.959507, 34.778770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195133, 35.820286, 34.591377>,  <44.102333, 35.588249, 34.279053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195133, 35.820286, 34.591377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918917, -0.393961, 0.019647,
		0.319006, 0.712943, -0.624457,
		0.232005, 0.580092, 0.780812,
		44.264736, 35.994312, 34.825623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867447, 35.655354, 34.386856>,  <44.102333, 35.588249, 34.279053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867447, 35.655354, 34.386856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734184, 35.706062, 34.760582>,  <44.654228, 35.736488, 34.984818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734184, 35.706062, 34.760582>,  <44.867447, 35.655354, 34.386856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734184, 35.706062, 34.760582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836636, -0.417207, 0.354935,
		0.434796, 0.899926, 0.032934,
		-0.333156, 0.126770, 0.934311,
		44.634239, 35.744095, 35.040874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151970, 36.105282, 34.874638>,  <44.867447, 35.655354, 34.386856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151970, 36.105282, 34.874638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987801, 35.773659, 35.026546>,  <44.889301, 35.574684, 35.117691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987801, 35.773659, 35.026546>,  <45.151970, 36.105282, 34.874638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987801, 35.773659, 35.026546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911790, -0.366741, 0.184768,
		-0.013906, 0.422102, 0.906442,
		-0.410421, -0.829054, 0.379769,
		44.864674, 35.524944, 35.140476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224422, 36.031464, 35.605770>,  <45.151970, 36.105282, 34.874638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224422, 36.031464, 35.605770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240189, 35.684097, 35.408062>,  <45.249649, 35.475677, 35.289436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240189, 35.684097, 35.408062>,  <45.224422, 36.031464, 35.605770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240189, 35.684097, 35.408062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990692, -0.030538, 0.132651,
		-0.130290, -0.494899, 0.859127,
		0.039413, -0.868414, -0.494271,
		45.252014, 35.423573, 35.259781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683510, 35.478668, 35.987789>,  <45.224422, 36.031464, 35.605770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683510, 35.478668, 35.987789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676655, 35.388180, 35.598217>,  <45.672543, 35.333889, 35.364475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676655, 35.388180, 35.598217>,  <45.683510, 35.478668, 35.987789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676655, 35.388180, 35.598217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956320, -0.288000, 0.050066,
		-0.291817, -0.930528, 0.221272,
		-0.017138, -0.226217, -0.973926,
		45.671513, 35.320316, 35.306038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806129, 34.794128, 35.724125>,  <45.683510, 35.478668, 35.987789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806129, 34.794128, 35.724125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950729, 35.073380, 35.476921>,  <46.037491, 35.240929, 35.328598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950729, 35.073380, 35.476921>,  <45.806129, 34.794128, 35.724125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950729, 35.073380, 35.476921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878425, -0.477213, -0.025246,
		-0.312547, -0.533749, -0.785765,
		0.361502, 0.698126, -0.618010,
		46.059181, 35.282818, 35.291519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159489, 34.528610, 35.027020>,  <45.806129, 34.794128, 35.724125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159489, 34.528610, 35.027020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350178, 34.859673, 35.145493>,  <46.464592, 35.058311, 35.216576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350178, 34.859673, 35.145493>,  <46.159489, 34.528610, 35.027020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350178, 34.859673, 35.145493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845798, -0.523665, 0.101985,
		0.239507, 0.201890, -0.949672,
		0.476720, 0.827657, 0.296180,
		46.493195, 35.107971, 35.234348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.755009, 34.689682, 34.689316>,  <46.159489, 34.528610, 35.027020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.755009, 34.689682, 34.689316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847668, 34.859554, 35.039398>,  <46.903263, 34.961479, 35.249447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847668, 34.859554, 35.039398>,  <46.755009, 34.689682, 34.689316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847668, 34.859554, 35.039398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949758, -0.293383, -0.109020,
		0.210471, 0.856488, -0.471307,
		0.231648, 0.424682, 0.875205,
		46.917164, 34.986958, 35.301960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336777, 35.087334, 34.613800>,  <46.755009, 34.689682, 34.689316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336777, 35.087334, 34.613800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300648, 34.976624, 34.996471>,  <47.278969, 34.910198, 35.226074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300648, 34.976624, 34.996471>,  <47.336777, 35.087334, 34.613800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.300648, 34.976624, 34.996471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951121, -0.308818, 0.000455,
		0.295314, 0.909959, 0.291143,
		-0.090325, -0.276778, 0.956680,
		47.273552, 34.893589, 35.283474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.956402, 35.243176, 34.881569>,  <47.336777, 35.087334, 34.613800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.956402, 35.243176, 34.881569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.784935, 34.953754, 35.097984>,  <47.682056, 34.780102, 35.227833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.784935, 34.953754, 35.097984>,  <47.956402, 35.243176, 34.881569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.784935, 34.953754, 35.097984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878529, -0.473548, 0.062764,
		0.210795, 0.502225, 0.838651,
		-0.428663, -0.723549, 0.541041,
		47.656338, 34.736691, 35.260296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.404907, 37.432068, 27.931257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.353008, 37.298203, 27.557913>,  <34.321869, 37.217884, 27.333906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.353008, 37.298203, 27.557913>,  <34.404907, 37.432068, 27.931257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353008, 37.298203, 27.557913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218815, -0.927775, 0.302245,
		-0.967102, -0.165020, 0.193602,
		-0.129743, -0.334665, -0.933363,
		34.314087, 37.197803, 27.277905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984684, 36.833420, 27.955727>,  <34.404907, 37.432068, 27.931257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984684, 36.833420, 27.955727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.180019, 36.793400, 27.608967>,  <34.297222, 36.769390, 27.400911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.180019, 36.793400, 27.608967>,  <33.984684, 36.833420, 27.955727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180019, 36.793400, 27.608967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367075, -0.877695, 0.308072,
		-0.791696, -0.468661, -0.391887,
		0.488339, -0.100047, -0.866901,
		34.326519, 36.763386, 27.348896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812317, 36.216190, 27.650068>,  <33.984684, 36.833420, 27.955727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812317, 36.216190, 27.650068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162441, 36.291801, 27.472034>,  <34.372517, 36.337170, 27.365215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.162441, 36.291801, 27.472034>,  <33.812317, 36.216190, 27.650068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162441, 36.291801, 27.472034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314552, -0.921655, 0.227174,
		-0.367270, -0.338850, -0.866195,
		0.875311, 0.189029, -0.445082,
		34.425034, 36.348511, 27.338511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004757, 35.541649, 27.283161>,  <33.812317, 36.216190, 27.650068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004757, 35.541649, 27.283161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.341473, 35.751884, 27.332392>,  <34.543503, 35.878025, 27.361931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.341473, 35.751884, 27.332392>,  <34.004757, 35.541649, 27.283161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341473, 35.751884, 27.332392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519182, -0.850723, 0.081977,
		0.147791, -0.005108, -0.989005,
		0.841789, 0.525589, 0.123078,
		34.594009, 35.909561, 27.369314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441288, 35.231724, 26.831097>,  <34.004757, 35.541649, 27.283161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441288, 35.231724, 26.831097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661457, 35.425049, 27.103405>,  <34.793560, 35.541042, 27.266790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661457, 35.425049, 27.103405>,  <34.441288, 35.231724, 26.831097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661457, 35.425049, 27.103405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462852, -0.855275, 0.232967,
		0.694841, 0.186866, -0.694462,
		0.550422, 0.483308, 0.680771,
		34.826584, 35.570042, 27.307636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017365, 34.943062, 26.730011>,  <34.441288, 35.231724, 26.831097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017365, 34.943062, 26.730011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061764, 35.105934, 27.092642>,  <35.088406, 35.203659, 27.310221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061764, 35.105934, 27.092642>,  <35.017365, 34.943062, 26.730011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061764, 35.105934, 27.092642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448574, -0.834532, 0.319901,
		0.886826, 0.371158, -0.275285,
		0.111001, 0.407182, 0.906577,
		35.095062, 35.228088, 27.364614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732777, 34.827621, 26.897453>,  <35.017365, 34.943062, 26.730011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732777, 34.827621, 26.897453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553532, 34.885792, 27.250280>,  <35.445984, 34.920692, 27.461977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553532, 34.885792, 27.250280>,  <35.732777, 34.827621, 26.897453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553532, 34.885792, 27.250280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462643, -0.806555, 0.368010,
		0.764955, 0.572993, 0.294148,
		-0.448113, 0.145426, 0.882069,
		35.419098, 34.929420, 27.514900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112350, 34.360497, 27.271164>,  <35.732777, 34.827621, 26.897453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112350, 34.360497, 27.271164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866787, 34.467033, 27.568398>,  <35.719448, 34.530956, 27.746738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866787, 34.467033, 27.568398>,  <36.112350, 34.360497, 27.271164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866787, 34.467033, 27.568398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283472, -0.804180, 0.522435,
		0.736719, 0.531373, 0.418197,
		-0.613913, 0.266341, 0.743084,
		35.682613, 34.546936, 27.791323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469959, 34.327488, 27.799961>,  <36.112350, 34.360497, 27.271164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469959, 34.327488, 27.799961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110237, 34.289349, 27.970680>,  <35.894402, 34.266464, 28.073111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110237, 34.289349, 27.970680>,  <36.469959, 34.327488, 27.799961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110237, 34.289349, 27.970680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350980, -0.739561, 0.574336,
		0.260880, 0.666302, 0.698558,
		-0.899308, -0.095347, 0.426796,
		35.840446, 34.260746, 28.098719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482719, 34.358047, 28.530945>,  <36.469959, 34.327488, 27.799961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482719, 34.358047, 28.530945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.149071, 34.146698, 28.467627>,  <35.948879, 34.019890, 28.429636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.149071, 34.146698, 28.467627>,  <36.482719, 34.358047, 28.530945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149071, 34.146698, 28.467627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261510, -0.631520, 0.729928,
		-0.485641, 0.567455, 0.664942,
		-0.834126, -0.528372, -0.158297,
		35.898834, 33.988186, 28.420137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272507, 34.164463, 29.194407>,  <36.482719, 34.358047, 28.530945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272507, 34.164463, 29.194407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068802, 33.920815, 28.951220>,  <35.946579, 33.774624, 28.805307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068802, 33.920815, 28.951220>,  <36.272507, 34.164463, 29.194407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068802, 33.920815, 28.951220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315708, -0.789412, 0.526457,
		-0.800612, 0.076166, 0.594323,
		-0.509263, -0.609120, -0.607966,
		35.916023, 33.738079, 28.768829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817249, 33.813503, 29.565001>,  <36.272507, 34.164463, 29.194407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817249, 33.813503, 29.565001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875454, 33.588531, 29.239426>,  <35.910378, 33.453548, 29.044081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875454, 33.588531, 29.239426>,  <35.817249, 33.813503, 29.565001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875454, 33.588531, 29.239426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267562, -0.769667, 0.579675,
		-0.952489, -0.302131, 0.038487,
		0.145515, -0.562432, -0.813939,
		35.919109, 33.419804, 28.995245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390697, 33.172504, 29.744717>,  <35.817249, 33.813503, 29.565001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390697, 33.172504, 29.744717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639835, 33.084049, 29.444540>,  <35.789318, 33.030975, 29.264433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639835, 33.084049, 29.444540>,  <35.390697, 33.172504, 29.744717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639835, 33.084049, 29.444540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251359, -0.851800, 0.459626,
		-0.740868, -0.474905, -0.474953,
		0.622844, -0.221138, -0.750443,
		35.826687, 33.017708, 29.219408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225136, 32.460331, 29.691622>,  <35.390697, 33.172504, 29.744717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225136, 32.460331, 29.691622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.582348, 32.542980, 29.531719>,  <35.796677, 32.592567, 29.435778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.582348, 32.542980, 29.531719>,  <35.225136, 32.460331, 29.691622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582348, 32.542980, 29.531719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366026, -0.850289, 0.378197,
		-0.261765, -0.484063, -0.834962,
		0.893030, 0.206619, -0.399756,
		35.850258, 32.604965, 29.411793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417725, 31.916838, 29.390717>,  <35.225136, 32.460331, 29.691622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417725, 31.916838, 29.390717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765949, 32.104443, 29.450251>,  <35.974884, 32.217007, 29.485971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765949, 32.104443, 29.450251>,  <35.417725, 31.916838, 29.390717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765949, 32.104443, 29.450251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410831, -0.859272, 0.304746,
		0.270821, -0.204153, -0.940732,
		0.870560, 0.469013, 0.148837,
		36.027119, 32.245148, 29.494902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020695, 31.395763, 29.279831>,  <35.417725, 31.916838, 29.390717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020695, 31.395763, 29.279831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139122, 31.703354, 29.506466>,  <36.210178, 31.887909, 29.642447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139122, 31.703354, 29.506466>,  <36.020695, 31.395763, 29.279831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139122, 31.703354, 29.506466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645713, -0.598237, 0.474518,
		0.703847, 0.225365, -0.673654,
		0.296065, 0.768976, 0.566588,
		36.227943, 31.934046, 29.676443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764694, 31.298326, 29.219002>,  <36.020695, 31.395763, 29.279831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764694, 31.298326, 29.219002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733749, 31.560940, 29.519129>,  <36.715183, 31.718508, 29.699205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733749, 31.560940, 29.519129>,  <36.764694, 31.298326, 29.219002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733749, 31.560940, 29.519129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598238, -0.571471, 0.561722,
		0.797575, 0.492325, -0.348554,
		-0.077361, 0.656534, 0.750319,
		36.710541, 31.757900, 29.744225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463161, 31.437063, 29.418272>,  <36.764694, 31.298326, 29.219002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463161, 31.437063, 29.418272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213722, 31.518509, 29.720179>,  <37.064060, 31.567377, 29.901321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213722, 31.518509, 29.720179>,  <37.463161, 31.437063, 29.418272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213722, 31.518509, 29.720179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574485, -0.535436, 0.619093,
		0.530184, 0.819664, 0.216922,
		-0.623596, 0.203615, 0.754764,
		37.026642, 31.579594, 29.946608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897243, 31.757977, 30.110601>,  <37.463161, 31.437063, 29.418272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897243, 31.757977, 30.110601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543137, 31.609816, 30.223104>,  <37.330673, 31.520920, 30.290607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543137, 31.609816, 30.223104>,  <37.897243, 31.757977, 30.110601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543137, 31.609816, 30.223104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454285, -0.559097, 0.693567,
		-0.099647, 0.741763, 0.663218,
		-0.885266, -0.370402, 0.281259,
		37.277557, 31.498695, 30.307482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909569, 31.817858, 30.870571>,  <37.897243, 31.757977, 30.110601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909569, 31.817858, 30.870571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622849, 31.552700, 30.784071>,  <37.450817, 31.393606, 30.732170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622849, 31.552700, 30.784071>,  <37.909569, 31.817858, 30.870571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622849, 31.552700, 30.784071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467398, -0.686941, 0.556463,
		-0.517428, 0.297799, 0.802237,
		-0.716804, -0.662893, -0.216252,
		37.407806, 31.353832, 30.719196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914589, 31.415453, 31.480658>,  <37.909569, 31.817858, 30.870571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914589, 31.415453, 31.480658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736183, 31.198954, 31.195528>,  <37.629139, 31.069054, 31.024450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736183, 31.198954, 31.195528>,  <37.914589, 31.415453, 31.480658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736183, 31.198954, 31.195528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154542, -0.831039, 0.534313,
		-0.881581, 0.128152, 0.454304,
		-0.446017, -0.541249, -0.712824,
		37.602379, 31.036579, 30.981680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179867, 32.214096, 31.603251>,  <37.914589, 31.415453, 31.480658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179867, 32.214096, 31.603251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217903, 32.393429, 31.958767>,  <38.240726, 32.501030, 32.172077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217903, 32.393429, 31.958767>,  <38.179867, 32.214096, 31.603251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217903, 32.393429, 31.958767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074562, 0.887123, -0.455471,
		-0.992672, 0.109582, 0.050929,
		0.095091, 0.448336, 0.888793,
		38.246429, 32.527931, 32.225403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842678, 32.883652, 31.472059>,  <38.179867, 32.214096, 31.603251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842678, 32.883652, 31.472059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038532, 32.903126, 31.820286>,  <38.156044, 32.914810, 32.029221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038532, 32.903126, 31.820286>,  <37.842678, 32.883652, 31.472059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038532, 32.903126, 31.820286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151688, 0.978459, -0.140031,
		-0.858632, 0.200619, 0.471703,
		0.489635, 0.048684, 0.870567,
		38.185421, 32.917732, 32.081455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591507, 33.460056, 31.886005>,  <37.842678, 32.883652, 31.472059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591507, 33.460056, 31.886005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982620, 33.379917, 31.910685>,  <38.217289, 33.331833, 31.925493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982620, 33.379917, 31.910685>,  <37.591507, 33.460056, 31.886005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982620, 33.379917, 31.910685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208227, 0.894159, -0.396385,
		0.024246, 0.400425, 0.916009,
		0.977780, -0.200348, 0.061699,
		38.275955, 33.319813, 31.929193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828732, 34.003212, 32.177277>,  <37.591507, 33.460056, 31.886005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828732, 34.003212, 32.177277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165985, 33.846806, 32.029636>,  <38.368336, 33.752960, 31.941053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165985, 33.846806, 32.029636>,  <37.828732, 34.003212, 32.177277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165985, 33.846806, 32.029636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297541, 0.911034, -0.285459,
		0.447880, 0.130858, 0.884466,
		0.843133, -0.391016, -0.369098,
		38.418926, 33.729500, 31.918907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281525, 34.467514, 32.257591>,  <37.828732, 34.003212, 32.177277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281525, 34.467514, 32.257591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502346, 34.276466, 31.984207>,  <38.634838, 34.161839, 31.820177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502346, 34.276466, 31.984207>,  <38.281525, 34.467514, 32.257591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502346, 34.276466, 31.984207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419467, 0.867491, -0.267408,
		0.720614, -0.139065, 0.679247,
		0.552054, -0.477620, -0.683459,
		38.667961, 34.133179, 31.779169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875553, 34.760120, 32.254288>,  <38.281525, 34.467514, 32.257591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875553, 34.760120, 32.254288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.893776, 34.558765, 31.909145>,  <38.904709, 34.437950, 31.702061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.893776, 34.558765, 31.909145>,  <38.875553, 34.760120, 32.254288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893776, 34.558765, 31.909145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195952, 0.851477, -0.486405,
		0.979555, -0.146917, 0.137435,
		0.045561, -0.503391, -0.862857,
		38.907444, 34.407749, 31.650288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565990, 34.793343, 32.005333>,  <38.875553, 34.760120, 32.254288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565990, 34.793343, 32.005333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.302341, 34.759399, 31.706442>,  <39.144150, 34.739033, 31.527107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.302341, 34.759399, 31.706442>,  <39.565990, 34.793343, 32.005333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302341, 34.759399, 31.706442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186468, 0.944143, -0.271706,
		0.728550, -0.318422, -0.606484,
		-0.659125, -0.084861, -0.747231,
		39.104603, 34.733940, 31.482273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851597, 35.124306, 31.490519>,  <39.565990, 34.793343, 32.005333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851597, 35.124306, 31.490519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483456, 35.099323, 31.336088>,  <39.262573, 35.084332, 31.243429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483456, 35.099323, 31.336088>,  <39.851597, 35.124306, 31.490519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483456, 35.099323, 31.336088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106232, 0.910125, -0.400484,
		0.376392, -0.409599, -0.830998,
		-0.920350, -0.062460, -0.386076,
		39.207352, 35.080585, 31.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903374, 35.362015, 30.723352>,  <39.851597, 35.124306, 31.490519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903374, 35.362015, 30.723352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524529, 35.400818, 30.845709>,  <39.297222, 35.424099, 30.919123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524529, 35.400818, 30.845709>,  <39.903374, 35.362015, 30.723352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524529, 35.400818, 30.845709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093715, 0.828049, -0.552769,
		-0.306917, -0.552200, -0.775163,
		-0.947111, 0.097010, 0.305891,
		39.240395, 35.429920, 30.937477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544952, 35.619343, 30.128439>,  <39.903374, 35.362015, 30.723352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544952, 35.619343, 30.128439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283413, 35.691917, 30.422258>,  <39.126488, 35.735462, 30.598551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283413, 35.691917, 30.422258>,  <39.544952, 35.619343, 30.128439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283413, 35.691917, 30.422258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257552, 0.859478, -0.441548,
		-0.711440, -0.477890, -0.515241,
		-0.653850, 0.181434, 0.734549,
		39.087257, 35.746349, 30.642624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838268, 35.757927, 29.760065>,  <39.544952, 35.619343, 30.128439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838268, 35.757927, 29.760065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.824429, 35.919914, 30.125534>,  <38.816124, 36.017109, 30.344816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.824429, 35.919914, 30.125534>,  <38.838268, 35.757927, 29.760065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824429, 35.919914, 30.125534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533793, 0.765406, -0.359469,
		-0.844907, -0.500151, 0.189686,
		-0.034602, 0.404971, 0.913674,
		38.814049, 36.041405, 30.399637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147606, 35.987202, 29.785004>,  <38.838268, 35.757927, 29.760065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147606, 35.987202, 29.785004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341908, 36.190189, 30.069683>,  <38.458488, 36.311981, 30.240492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341908, 36.190189, 30.069683>,  <38.147606, 35.987202, 29.785004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341908, 36.190189, 30.069683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639468, 0.761411, -0.106464,
		-0.595924, -0.403394, 0.694369,
		0.485753, 0.507471, 0.711700,
		38.487633, 36.342430, 30.283194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635124, 36.356972, 30.192358>,  <38.147606, 35.987202, 29.785004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635124, 36.356972, 30.192358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973164, 36.563019, 30.249565>,  <38.175987, 36.686646, 30.283890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973164, 36.563019, 30.249565>,  <37.635124, 36.356972, 30.192358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973164, 36.563019, 30.249565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524526, 0.850650, 0.035614,
		-0.103312, -0.105114, 0.989079,
		0.845103, 0.515118, 0.143017,
		38.226696, 36.717556, 30.292471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459373, 36.778301, 30.708971>,  <37.635124, 36.356972, 30.192358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459373, 36.778301, 30.708971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774738, 36.946110, 30.529009>,  <37.963955, 37.046795, 30.421032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774738, 36.946110, 30.529009>,  <37.459373, 36.778301, 30.708971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774738, 36.946110, 30.529009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535251, 0.828300, -0.165606,
		0.303181, 0.371378, 0.877588,
		0.788408, 0.419521, -0.449905,
		38.011261, 37.071964, 30.394037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577118, 37.396297, 31.012310>,  <37.459373, 36.778301, 30.708971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577118, 37.396297, 31.012310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749805, 37.433472, 30.653427>,  <37.853416, 37.455776, 30.438097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749805, 37.433472, 30.653427>,  <37.577118, 37.396297, 31.012310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749805, 37.433472, 30.653427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595825, 0.776166, -0.206299,
		0.677208, 0.623642, 0.390461,
		0.431719, 0.092939, -0.897207,
		37.879322, 37.461353, 30.384264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672478, 38.152809, 30.907721>,  <37.577118, 37.396297, 31.012310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672478, 38.152809, 30.907721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.718529, 37.989368, 30.545551>,  <37.746159, 37.891304, 30.328249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.718529, 37.989368, 30.545551>,  <37.672478, 38.152809, 30.907721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718529, 37.989368, 30.545551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535390, 0.742241, -0.403033,
		0.836722, 0.531153, -0.133311,
		0.115123, -0.408600, -0.905424,
		37.753067, 37.866787, 30.273924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650940, 38.782284, 30.403477>,  <37.672478, 38.152809, 30.907721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650940, 38.782284, 30.403477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594921, 38.481277, 30.146072>,  <37.561310, 38.300674, 29.991631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594921, 38.481277, 30.146072>,  <37.650940, 38.782284, 30.403477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594921, 38.481277, 30.146072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462477, 0.624381, -0.629494,
		0.875500, 0.209450, -0.435465,
		-0.140049, -0.752515, -0.643511,
		37.552906, 38.255524, 29.953018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881973, 39.049179, 29.763803>,  <37.650940, 38.782284, 30.403477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881973, 39.049179, 29.763803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641705, 38.738152, 29.689415>,  <37.497543, 38.551537, 29.644783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641705, 38.738152, 29.689415>,  <37.881973, 39.049179, 29.763803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641705, 38.738152, 29.689415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532666, 0.562681, -0.632185,
		0.596212, -0.280669, -0.752168,
		-0.600665, -0.777570, -0.185974,
		37.461506, 38.504883, 29.633623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854294, 38.917191, 28.976961>,  <37.881973, 39.049179, 29.763803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854294, 38.917191, 28.976961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533848, 38.770061, 29.165819>,  <37.341579, 38.681786, 29.279135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533848, 38.770061, 29.165819>,  <37.854294, 38.917191, 28.976961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533848, 38.770061, 29.165819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589805, 0.351099, -0.727227,
		0.101722, -0.861066, -0.498215,
		-0.801114, -0.367824, 0.472147,
		37.293514, 38.659714, 29.307463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.367233, 38.770248, 28.415159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.153423, 38.780571, 28.753063>,  <37.025139, 38.786762, 28.955805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.153423, 38.780571, 28.753063>,  <37.367233, 38.770248, 28.415159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153423, 38.780571, 28.753063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695114, 0.555119, -0.456792,
		-0.480729, -0.831371, -0.278787,
		-0.534523, 0.025804, 0.844759,
		36.993065, 38.788311, 29.006491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750637, 38.668884, 28.137909>,  <37.367233, 38.770248, 28.415159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750637, 38.668884, 28.137909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.689358, 38.812733, 28.506083>,  <36.652592, 38.899044, 28.726986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.689358, 38.812733, 28.506083>,  <36.750637, 38.668884, 28.137909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689358, 38.812733, 28.506083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701416, 0.616534, -0.357632,
		-0.696093, -0.700397, 0.157794,
		-0.153199, 0.359625, 0.920434,
		36.643398, 38.920620, 28.782213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223213, 38.385002, 28.438147>,  <36.750637, 38.668884, 28.137909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223213, 38.385002, 28.438147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250767, 38.751991, 28.594858>,  <36.267300, 38.972187, 28.688885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250767, 38.751991, 28.594858>,  <36.223213, 38.385002, 28.438147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250767, 38.751991, 28.594858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752969, 0.305433, -0.582879,
		-0.654441, -0.254847, 0.711871,
		0.068884, 0.917476, 0.391780,
		36.271431, 39.027233, 28.712393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538326, 38.665802, 28.642162>,  <36.223213, 38.385002, 28.438147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538326, 38.665802, 28.642162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763355, 38.996063, 28.625172>,  <35.898373, 39.194221, 28.614977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763355, 38.996063, 28.625172>,  <35.538326, 38.665802, 28.642162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763355, 38.996063, 28.625172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746877, 0.485518, -0.454363,
		-0.354524, 0.287338, 0.889803,
		0.562572, 0.825657, -0.042479,
		35.932125, 39.243759, 28.612429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134769, 39.180717, 28.771738>,  <35.538326, 38.665802, 28.642162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134769, 39.180717, 28.771738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421711, 39.382671, 28.579697>,  <35.593876, 39.503841, 28.464472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421711, 39.382671, 28.579697>,  <35.134769, 39.180717, 28.771738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421711, 39.382671, 28.579697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696678, 0.526663, -0.487100,
		0.006925, 0.683901, 0.729542,
		0.717351, 0.504882, -0.480106,
		35.636917, 39.534138, 28.435665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850681, 39.975967, 28.800341>,  <35.134769, 39.180717, 28.771738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850681, 39.975967, 28.800341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126709, 39.959831, 28.511293>,  <35.292328, 39.950150, 28.337866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126709, 39.959831, 28.511293>,  <34.850681, 39.975967, 28.800341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126709, 39.959831, 28.511293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576814, 0.572396, -0.582794,
		0.437135, 0.818985, 0.371723,
		0.690072, -0.040345, -0.722616,
		35.333729, 39.947727, 28.294508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041882, 40.711182, 28.559374>,  <34.850681, 39.975967, 28.800341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041882, 40.711182, 28.559374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154049, 40.460590, 28.268473>,  <35.221348, 40.310238, 28.093931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154049, 40.460590, 28.268473>,  <35.041882, 40.711182, 28.559374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154049, 40.460590, 28.268473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605141, 0.472742, -0.640562,
		0.745099, 0.619713, -0.246542,
		0.280414, -0.626475, -0.727254,
		35.238174, 40.272648, 28.050297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355900, 41.079254, 28.040009>,  <35.041882, 40.711182, 28.559374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355900, 41.079254, 28.040009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220940, 40.746025, 27.864666>,  <35.139965, 40.546089, 27.759460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220940, 40.746025, 27.864666>,  <35.355900, 41.079254, 28.040009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220940, 40.746025, 27.864666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445091, 0.551500, -0.705508,
		0.829492, -0.042928, -0.556867,
		-0.337398, -0.833070, -0.438358,
		35.119720, 40.496105, 27.733158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641739, 41.113316, 27.334482>,  <35.355900, 41.079254, 28.040009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641739, 41.113316, 27.334482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331982, 40.867905, 27.272652>,  <35.146126, 40.720657, 27.235554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331982, 40.867905, 27.272652>,  <35.641739, 41.113316, 27.334482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331982, 40.867905, 27.272652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267939, 0.539328, -0.798332,
		0.573169, -0.576807, -0.582041,
		-0.774394, -0.613531, -0.154577,
		35.099663, 40.683846, 27.226280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702290, 40.901096, 26.668367>,  <35.641739, 41.113316, 27.334482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702290, 40.901096, 26.668367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320667, 40.838673, 26.770679>,  <35.091694, 40.801220, 26.832067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320667, 40.838673, 26.770679>,  <35.702290, 40.901096, 26.668367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320667, 40.838673, 26.770679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298686, 0.563099, -0.770524,
		-0.023783, -0.811520, -0.583840,
		-0.954055, -0.156060, 0.255782,
		35.034451, 40.791855, 26.847414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304882, 40.913162, 25.945274>,  <35.702290, 40.901096, 26.668367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304882, 40.913162, 25.945274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009460, 40.937317, 26.213869>,  <34.832207, 40.951809, 26.375027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009460, 40.937317, 26.213869>,  <35.304882, 40.913162, 25.945274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009460, 40.937317, 26.213869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562856, 0.493030, -0.663412,
		-0.371127, -0.867914, -0.330136,
		-0.738551, 0.060391, 0.671487,
		34.787895, 40.955433, 26.415316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657593, 40.818493, 25.642056>,  <35.304882, 40.913162, 25.945274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657593, 40.818493, 25.642056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584621, 41.035507, 25.970049>,  <34.540840, 41.165714, 26.166845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584621, 41.035507, 25.970049>,  <34.657593, 40.818493, 25.642056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584621, 41.035507, 25.970049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554335, 0.632043, -0.541511,
		-0.812055, -0.553332, 0.185447,
		-0.182425, 0.542537, 0.819985,
		34.529896, 41.198269, 26.216043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005203, 41.179485, 25.451477>,  <34.657593, 40.818493, 25.642056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005203, 41.179485, 25.451477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151112, 41.385838, 25.761524>,  <34.238655, 41.509651, 25.947552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151112, 41.385838, 25.761524>,  <34.005203, 41.179485, 25.451477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151112, 41.385838, 25.761524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388044, 0.840964, -0.377097,
		-0.846384, -0.163227, 0.506943,
		0.364768, 0.515885, 0.775117,
		34.260544, 41.540604, 25.994059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457035, 41.662479, 25.675432>,  <34.005203, 41.179485, 25.451477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457035, 41.662479, 25.675432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772408, 41.824455, 25.860643>,  <33.961632, 41.921642, 25.971771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772408, 41.824455, 25.860643>,  <33.457035, 41.662479, 25.675432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772408, 41.824455, 25.860643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360545, 0.914109, -0.185505,
		-0.498378, -0.020685, 0.866713,
		0.788433, 0.404940, 0.463030,
		34.008938, 41.945938, 25.999552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106457, 42.192810, 26.088005>,  <33.457035, 41.662479, 25.675432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106457, 42.192810, 26.088005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496529, 42.280792, 26.077818>,  <33.730572, 42.333580, 26.071705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496529, 42.280792, 26.077818>,  <33.106457, 42.192810, 26.088005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496529, 42.280792, 26.077818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221327, 0.964871, -0.141558,
		-0.006563, 0.143681, 0.989602,
		0.975178, 0.219954, -0.025468,
		33.789082, 42.346779, 26.070177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157627, 42.793045, 26.534527>,  <33.106457, 42.192810, 26.088005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157627, 42.793045, 26.534527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449776, 42.786133, 26.261395>,  <33.625065, 42.781986, 26.097515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449776, 42.786133, 26.261395>,  <33.157627, 42.793045, 26.534527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449776, 42.786133, 26.261395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139034, 0.974990, -0.173388,
		0.668752, 0.221574, 0.709701,
		0.730370, -0.017281, -0.682833,
		33.668888, 42.780949, 26.056545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407894, 43.462566, 26.560762>,  <33.157627, 42.793045, 26.534527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407894, 43.462566, 26.560762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559597, 43.343899, 26.210186>,  <33.650620, 43.272697, 25.999840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559597, 43.343899, 26.210186>,  <33.407894, 43.462566, 26.560762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559597, 43.343899, 26.210186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394267, 0.805100, -0.443134,
		0.837087, 0.513614, 0.188374,
		0.379260, -0.296672, -0.876440,
		33.673374, 43.254898, 25.947254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614285, 44.045612, 26.207481>,  <33.407894, 43.462566, 26.560762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614285, 44.045612, 26.207481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.558601, 43.777149, 25.916229>,  <33.525192, 43.616070, 25.741478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.558601, 43.777149, 25.916229>,  <33.614285, 44.045612, 26.207481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558601, 43.777149, 25.916229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422793, 0.705184, -0.569176,
		0.895471, 0.228614, -0.381927,
		-0.139207, -0.671156, -0.728128,
		33.516838, 43.575802, 25.697790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976757, 44.345768, 25.627043>,  <33.614285, 44.045612, 26.207481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976757, 44.345768, 25.627043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724026, 44.092667, 25.447973>,  <33.572388, 43.940807, 25.340532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724026, 44.092667, 25.447973>,  <33.976757, 44.345768, 25.627043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724026, 44.092667, 25.447973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439121, 0.768148, -0.465962,
		0.638718, -0.097828, -0.763197,
		-0.631832, -0.632755, -0.447672,
		33.534477, 43.902840, 25.313671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769203, 44.704712, 25.044367>,  <33.976757, 44.345768, 25.627043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769203, 44.704712, 25.044367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481224, 44.430855, 25.089878>,  <33.308437, 44.266541, 25.117186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481224, 44.430855, 25.089878>,  <33.769203, 44.704712, 25.044367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481224, 44.430855, 25.089878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627045, 0.571393, -0.529457,
		0.297474, -0.452527, -0.840672,
		-0.719947, -0.684639, 0.113780,
		33.265240, 44.225464, 25.124012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443302, 44.789425, 24.482721>,  <33.769203, 44.704712, 25.044367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443302, 44.789425, 24.482721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166004, 44.620983, 24.716675>,  <32.999626, 44.519920, 24.857046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166004, 44.620983, 24.716675>,  <33.443302, 44.789425, 24.482721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166004, 44.620983, 24.716675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720672, 0.397298, -0.568142,
		0.006872, -0.815370, -0.578900,
		-0.693242, -0.421101, 0.584884,
		32.958031, 44.494652, 24.892139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001217, 44.536602, 24.027931>,  <33.443302, 44.789425, 24.482721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001217, 44.536602, 24.027931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762787, 44.538280, 24.349098>,  <32.619728, 44.539288, 24.541800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762787, 44.538280, 24.349098>,  <33.001217, 44.536602, 24.027931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762787, 44.538280, 24.349098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768980, 0.284728, -0.572364,
		-0.231016, -0.958599, -0.166491,
		-0.596072, 0.004197, 0.802920,
		32.583965, 44.539539, 24.589973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516296, 44.052525, 23.926483>,  <33.001217, 44.536602, 24.027931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516296, 44.052525, 23.926483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.384346, 44.365299, 24.138054>,  <32.305176, 44.552963, 24.264996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.384346, 44.365299, 24.138054>,  <32.516296, 44.052525, 23.926483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384346, 44.365299, 24.138054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742529, 0.131077, -0.656864,
		-0.582954, -0.609424, 0.537370,
		-0.329872, 0.781934, 0.528927,
		32.285385, 44.599880, 24.296732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765528, 43.965004, 24.230789>,  <32.516296, 44.052525, 23.926483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765528, 43.965004, 24.230789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.899221, 44.319168, 24.101582>,  <31.979439, 44.531666, 24.024057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.899221, 44.319168, 24.101582>,  <31.765528, 43.965004, 24.230789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899221, 44.319168, 24.101582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704886, 0.007326, -0.709283,
		-0.625637, 0.464760, 0.626559,
		0.334236, 0.885406, -0.323020,
		31.999493, 44.584789, 24.004675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968157, 43.405685, 23.655069>,  <31.765528, 43.965004, 24.230789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968157, 43.405685, 23.655069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732285, 43.353218, 23.336304>,  <31.590761, 43.321735, 23.145044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732285, 43.353218, 23.336304>,  <31.968157, 43.405685, 23.655069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732285, 43.353218, 23.336304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159772, -0.986168, 0.044100,
		-0.791676, -0.101320, 0.602481,
		-0.589679, -0.131172, -0.796914,
		31.555380, 43.313866, 23.097229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337322, 42.971703, 23.812508>,  <31.968157, 43.405685, 23.655069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337322, 42.971703, 23.812508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.415079, 42.917797, 23.423859>,  <31.461733, 42.885452, 23.190670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.415079, 42.917797, 23.423859>,  <31.337322, 42.971703, 23.812508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415079, 42.917797, 23.423859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242776, -0.953091, 0.180770,
		-0.950405, -0.271028, -0.152560,
		0.194397, -0.134767, -0.971621,
		31.473396, 42.877365, 23.132372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101086, 42.239624, 23.608873>,  <31.337322, 42.971703, 23.812508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101086, 42.239624, 23.608873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365841, 42.360054, 23.334280>,  <31.524694, 42.432312, 23.169525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365841, 42.360054, 23.334280>,  <31.101086, 42.239624, 23.608873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365841, 42.360054, 23.334280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410240, -0.911967, -0.004431,
		-0.627383, -0.278689, -0.727134,
		0.661887, 0.301079, -0.686482,
		31.564407, 42.450378, 23.128336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072657, 41.736565, 23.250347>,  <31.101086, 42.239624, 23.608873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072657, 41.736565, 23.250347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435482, 41.868267, 23.145411>,  <31.653177, 41.947289, 23.082449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435482, 41.868267, 23.145411>,  <31.072657, 41.736565, 23.250347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435482, 41.868267, 23.145411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357328, -0.931628, 0.066231,
		-0.222596, -0.153818, -0.962700,
		0.907065, 0.329257, -0.262340,
		31.707602, 41.967045, 23.066710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310446, 41.162590, 22.930523>,  <31.072657, 41.736565, 23.250347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310446, 41.162590, 22.930523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.654440, 41.363964, 22.963936>,  <31.860836, 41.484787, 22.983984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.654440, 41.363964, 22.963936>,  <31.310446, 41.162590, 22.930523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654440, 41.363964, 22.963936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478556, -0.852429, 0.210593,
		0.177225, -0.141132, -0.973998,
		0.859986, 0.503435, 0.083533,
		31.912436, 41.514996, 22.988997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838427, 40.655659, 22.706581>,  <31.310446, 41.162590, 22.930523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838427, 40.655659, 22.706581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045319, 40.936638, 22.902149>,  <32.169453, 41.105225, 23.019489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045319, 40.936638, 22.902149>,  <31.838427, 40.655659, 22.706581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045319, 40.936638, 22.902149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581001, -0.707656, 0.402069,
		0.628420, 0.076101, -0.774143,
		0.517229, 0.702446, 0.488920,
		32.200489, 41.147373, 23.048824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653755, 40.445736, 22.694132>,  <31.838427, 40.655659, 22.706581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653755, 40.445736, 22.694132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.560173, 40.695404, 22.992308>,  <32.504025, 40.845203, 23.171213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.560173, 40.695404, 22.992308>,  <32.653755, 40.445736, 22.694132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560173, 40.695404, 22.992308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400231, -0.636911, 0.658908,
		0.886048, 0.452502, -0.100803,
		-0.233954, 0.624168, 0.745439,
		32.489986, 40.882656, 23.215939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256214, 40.456097, 23.109234>,  <32.653755, 40.445736, 22.694132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256214, 40.456097, 23.109234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931225, 40.549866, 23.322748>,  <32.736229, 40.606129, 23.450857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931225, 40.549866, 23.322748>,  <33.256214, 40.456097, 23.109234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931225, 40.549866, 23.322748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285773, -0.637909, 0.715126,
		0.508147, 0.733566, 0.451296,
		-0.812478, 0.234421, 0.533785,
		32.687481, 40.620193, 23.482883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458645, 40.813793, 23.729542>,  <33.256214, 40.456097, 23.109234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458645, 40.813793, 23.729542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104111, 40.667568, 23.843229>,  <32.891392, 40.579834, 23.911442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104111, 40.667568, 23.843229>,  <33.458645, 40.813793, 23.729542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104111, 40.667568, 23.843229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427854, -0.411809, 0.804583,
		-0.177083, 0.834731, 0.521407,
		-0.886331, -0.365564, 0.284219,
		32.838211, 40.557899, 23.928495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538105, 40.917698, 24.391926>,  <33.458645, 40.813793, 23.729542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538105, 40.917698, 24.391926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249882, 40.646614, 24.333273>,  <33.076946, 40.483963, 24.298080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249882, 40.646614, 24.333273>,  <33.538105, 40.917698, 24.391926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249882, 40.646614, 24.333273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413950, -0.590091, 0.693136,
		-0.556274, 0.438746, 0.705734,
		-0.720558, -0.677713, -0.146634,
		33.033714, 40.443302, 24.289282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370052, 40.769352, 25.047573>,  <33.538105, 40.917698, 24.391926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370052, 40.769352, 25.047573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.222191, 40.469372, 24.828146>,  <33.133476, 40.289383, 24.696489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.222191, 40.469372, 24.828146>,  <33.370052, 40.769352, 25.047573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222191, 40.469372, 24.828146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325315, -0.657477, 0.679628,
		-0.870361, 0.072768, 0.487008,
		-0.369652, -0.749952, -0.548570,
		33.111294, 40.244385, 24.663574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858295, 40.405926, 25.574528>,  <33.370052, 40.769352, 25.047573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858295, 40.405926, 25.574528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998959, 40.197010, 25.263773>,  <33.083359, 40.071659, 25.077320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998959, 40.197010, 25.263773>,  <32.858295, 40.405926, 25.574528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998959, 40.197010, 25.263773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235226, -0.753965, 0.613355,
		-0.906093, -0.398436, -0.142284,
		0.351660, -0.522288, -0.776885,
		33.104458, 40.040325, 25.030708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754871, 39.733608, 25.804279>,  <32.858295, 40.405926, 25.574528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754871, 39.733608, 25.804279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015179, 39.683880, 25.504667>,  <33.171364, 39.654045, 25.324900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015179, 39.683880, 25.504667>,  <32.754871, 39.733608, 25.804279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015179, 39.683880, 25.504667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417242, -0.765649, 0.489582,
		-0.634356, -0.631132, -0.446391,
		0.650770, -0.124316, -0.749028,
		33.210411, 39.646584, 25.279959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697956, 39.072430, 25.478565>,  <32.754871, 39.733608, 25.804279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697956, 39.072430, 25.478565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075150, 39.190975, 25.417959>,  <33.301464, 39.262100, 25.381596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075150, 39.190975, 25.417959>,  <32.697956, 39.072430, 25.478565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075150, 39.190975, 25.417959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332094, -0.868317, 0.368428,
		-0.022375, -0.397737, -0.917227,
		0.942981, 0.296362, -0.151515,
		33.358044, 39.279884, 25.372505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013031, 38.466434, 25.347479>,  <32.697956, 39.072430, 25.478565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013031, 38.466434, 25.347479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326492, 38.709103, 25.400911>,  <33.514568, 38.854702, 25.432970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326492, 38.709103, 25.400911>,  <33.013031, 38.466434, 25.347479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326492, 38.709103, 25.400911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525463, -0.762065, 0.378345,
		0.331328, -0.226299, -0.915975,
		0.783652, 0.606668, 0.133582,
		33.561588, 38.891102, 25.440987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636311, 38.085896, 25.075733>,  <33.013031, 38.466434, 25.347479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636311, 38.085896, 25.075733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803333, 38.358463, 25.316170>,  <33.903549, 38.522003, 25.460432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803333, 38.358463, 25.316170>,  <33.636311, 38.085896, 25.075733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803333, 38.358463, 25.316170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565097, -0.712775, 0.415472,
		0.711554, 0.166190, -0.682695,
		0.417560, 0.681420, 0.601091,
		33.928600, 38.562889, 25.496496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296898, 38.047249, 25.045404>,  <33.636311, 38.085896, 25.075733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296898, 38.047249, 25.045404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248360, 38.227974, 25.398933>,  <34.219238, 38.336411, 25.611050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248360, 38.227974, 25.398933>,  <34.296898, 38.047249, 25.045404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248360, 38.227974, 25.398933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499162, -0.741850, 0.447768,
		0.857970, 0.495503, -0.135510,
		-0.121343, 0.451814, 0.883822,
		34.211956, 38.363518, 25.664080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930851, 38.159710, 25.359131>,  <34.296898, 38.047249, 25.045404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930851, 38.159710, 25.359131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682316, 38.182102, 25.671749>,  <34.533195, 38.195538, 25.859320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.682316, 38.182102, 25.671749>,  <34.930851, 38.159710, 25.359131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682316, 38.182102, 25.671749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482485, -0.758576, 0.437917,
		0.617376, 0.649176, 0.444317,
		-0.621333, 0.055983, 0.781544,
		34.495914, 38.198898, 25.906212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364853, 38.026821, 25.971687>,  <34.930851, 38.159710, 25.359131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364853, 38.026821, 25.971687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007393, 37.963993, 26.139839>,  <34.792915, 37.926296, 26.240730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007393, 37.963993, 26.139839>,  <35.364853, 38.026821, 25.971687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007393, 37.963993, 26.139839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422214, -0.611707, 0.668992,
		0.152072, 0.775335, 0.612968,
		-0.893650, -0.157069, 0.420381,
		34.739300, 37.916874, 26.265953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475956, 37.995090, 26.698776>,  <35.364853, 38.026821, 25.971687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475956, 37.995090, 26.698776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139587, 37.782211, 26.659540>,  <34.937767, 37.654484, 26.636000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139587, 37.782211, 26.659540>,  <35.475956, 37.995090, 26.698776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139587, 37.782211, 26.659540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382359, -0.712576, 0.588249,
		-0.382961, 0.457165, 0.802709,
		-0.840918, -0.532199, -0.098088,
		34.887314, 37.622551, 26.630114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.315247, 37.449871, 30.561699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981258, 37.237789, 30.502766>,  <38.780865, 37.110538, 30.467405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981258, 37.237789, 30.502766>,  <39.315247, 37.449871, 30.561699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981258, 37.237789, 30.502766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430840, -0.796417, 0.424377,
		-0.342345, 0.290866, 0.893419,
		-0.834971, -0.530204, -0.147332,
		38.730766, 37.078728, 30.458567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171349, 37.003056, 31.176498>,  <39.315247, 37.449871, 30.561699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171349, 37.003056, 31.176498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.951683, 36.802715, 30.908895>,  <38.819885, 36.682510, 30.748333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.951683, 36.802715, 30.908895>,  <39.171349, 37.003056, 31.176498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951683, 36.802715, 30.908895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202505, -0.856413, 0.474919,
		-0.810809, 0.125330, 0.571735,
		-0.549163, -0.500848, -0.669007,
		38.786934, 36.652462, 30.708193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739231, 36.624390, 31.589832>,  <39.171349, 37.003056, 31.176498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739231, 36.624390, 31.589832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.743599, 36.451694, 31.229059>,  <38.746220, 36.348076, 31.012594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.743599, 36.451694, 31.229059>,  <38.739231, 36.624390, 31.589832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743599, 36.451694, 31.229059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137377, -0.892787, 0.429022,
		-0.990459, -0.128590, 0.049562,
		0.010919, -0.431737, -0.901934,
		38.746876, 36.322174, 30.958479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272301, 36.137691, 31.502617>,  <38.739231, 36.624390, 31.589832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272301, 36.137691, 31.502617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.522923, 36.005527, 31.220268>,  <38.673294, 35.926228, 31.050859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.522923, 36.005527, 31.220268>,  <38.272301, 36.137691, 31.502617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522923, 36.005527, 31.220268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060392, -0.882384, 0.466638,
		-0.777033, -0.335004, -0.532909,
		0.626556, -0.330410, -0.705873,
		38.710888, 35.906403, 31.008507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948845, 35.557343, 31.287273>,  <38.272301, 36.137691, 31.502617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948845, 35.557343, 31.287273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332249, 35.515339, 31.181271>,  <38.562290, 35.490139, 31.117670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332249, 35.515339, 31.181271>,  <37.948845, 35.557343, 31.287273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332249, 35.515339, 31.181271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042296, -0.971777, 0.232079,
		-0.281895, -0.211242, -0.935901,
		0.958512, -0.105007, -0.265005,
		38.619801, 35.483837, 31.101768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997929, 35.015003, 30.827309>,  <37.948845, 35.557343, 31.287273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997929, 35.015003, 30.827309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363514, 35.057590, 30.983942>,  <38.582867, 35.083141, 31.077923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363514, 35.057590, 30.983942>,  <37.997929, 35.015003, 30.827309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363514, 35.057590, 30.983942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076036, -0.992808, 0.092466,
		0.398612, -0.054736, -0.915485,
		0.913962, 0.106468, 0.391584,
		38.637703, 35.089531, 31.101418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430958, 34.593540, 30.390869>,  <37.997929, 35.015003, 30.827309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430958, 34.593540, 30.390869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623440, 34.638275, 30.738646>,  <38.738930, 34.665115, 30.947311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623440, 34.638275, 30.738646>,  <38.430958, 34.593540, 30.390869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623440, 34.638275, 30.738646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068584, -0.993591, 0.089848,
		0.873919, 0.016394, -0.485795,
		0.481208, 0.111837, 0.869443,
		38.767803, 34.671825, 30.999479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987724, 33.957531, 30.430206>,  <38.430958, 34.593540, 30.390869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987724, 33.957531, 30.430206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936703, 34.089394, 30.804384>,  <38.906090, 34.168510, 31.028891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936703, 34.089394, 30.804384>,  <38.987724, 33.957531, 30.430206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936703, 34.089394, 30.804384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025287, -0.943924, 0.329193,
		0.991509, 0.018336, 0.128741,
		-0.127558, 0.329653, 0.935445,
		38.898434, 34.188290, 31.085018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299103, 33.471607, 30.843937>,  <38.987724, 33.957531, 30.430206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299103, 33.471607, 30.843937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114384, 33.671173, 31.137285>,  <39.003551, 33.790913, 31.313293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114384, 33.671173, 31.137285>,  <39.299103, 33.471607, 30.843937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114384, 33.671173, 31.137285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125333, -0.855219, 0.502883,
		0.878087, 0.140314, 0.457467,
		-0.461796, 0.498911, 0.733371,
		38.975845, 33.820847, 31.357296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556309, 33.243771, 31.399090>,  <39.299103, 33.471607, 30.843937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556309, 33.243771, 31.399090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202358, 33.380238, 31.525961>,  <38.989990, 33.462116, 31.602083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202358, 33.380238, 31.525961>,  <39.556309, 33.243771, 31.399090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202358, 33.380238, 31.525961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152428, -0.855463, 0.494923,
		0.440185, 0.389598, 0.808981,
		-0.884875, 0.341169, 0.317176,
		38.936897, 33.482590, 31.621115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575703, 33.107887, 32.104710>,  <39.556309, 33.243771, 31.399090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575703, 33.107887, 32.104710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.186882, 33.179287, 32.043720>,  <38.953590, 33.222126, 32.007126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.186882, 33.179287, 32.043720>,  <39.575703, 33.107887, 32.104710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186882, 33.179287, 32.043720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234717, -0.726703, 0.645609,
		0.004438, 0.663355, 0.748291,
		-0.972054, 0.178502, -0.152476,
		38.895267, 33.232838, 31.997978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289406, 33.295387, 32.820724>,  <39.575703, 33.107887, 32.104710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289406, 33.295387, 32.820724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016762, 33.138847, 32.573418>,  <38.853176, 33.044922, 32.425034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.016762, 33.138847, 32.573418>,  <39.289406, 33.295387, 32.820724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016762, 33.138847, 32.573418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127873, -0.768242, 0.627258,
		-0.720454, 0.506606, 0.473599,
		-0.681612, -0.391350, -0.618264,
		38.812279, 33.021442, 32.387939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522354, 33.140457, 33.136299>,  <39.289406, 33.295387, 32.820724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522354, 33.140457, 33.136299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.679512, 32.894142, 32.863113>,  <38.773808, 32.746353, 32.699203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.679512, 32.894142, 32.863113>,  <38.522354, 33.140457, 33.136299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679512, 32.894142, 32.863113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205238, -0.782673, 0.587623,
		-0.896387, -0.090706, -0.433894,
		0.392897, -0.615789, -0.682961,
		38.797382, 32.709404, 32.658226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024872, 32.538429, 33.051411>,  <38.522354, 33.140457, 33.136299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024872, 32.538429, 33.051411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396389, 32.458477, 32.926586>,  <38.619301, 32.410503, 32.851692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396389, 32.458477, 32.926586>,  <38.024872, 32.538429, 33.051411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396389, 32.458477, 32.926586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031513, -0.881621, 0.470905,
		-0.369250, -0.427540, -0.825145,
		0.928796, -0.199885, -0.312066,
		38.675026, 32.398510, 32.832966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495884, 32.899910, 32.718369>,  <38.024872, 32.538429, 33.051411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495884, 32.899910, 32.718369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476974, 32.917446, 33.117535>,  <37.465630, 32.927967, 33.357037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476974, 32.917446, 33.117535>,  <37.495884, 32.899910, 32.718369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476974, 32.917446, 33.117535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665706, 0.743448, -0.064193,
		-0.744716, -0.667355, -0.005960,
		-0.047270, 0.043838, 0.997920,
		37.462791, 32.930599, 33.416912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837410, 32.886757, 32.817841>,  <37.495884, 32.899910, 32.718369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837410, 32.886757, 32.817841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005623, 33.041344, 33.146183>,  <37.106548, 33.134094, 33.343189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005623, 33.041344, 33.146183>,  <36.837410, 32.886757, 32.817841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005623, 33.041344, 33.146183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633647, 0.772632, -0.039141,
		-0.649343, -0.503670, 0.569798,
		0.420530, 0.386466, 0.820852,
		37.131783, 33.157284, 33.392437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296440, 33.136360, 33.316063>,  <36.837410, 32.886757, 32.817841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296440, 33.136360, 33.316063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599205, 33.357742, 33.455074>,  <36.780865, 33.490570, 33.538483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599205, 33.357742, 33.455074>,  <36.296440, 33.136360, 33.316063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599205, 33.357742, 33.455074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552240, 0.826030, -0.112719,
		-0.349456, -0.106603, 0.930869,
		0.756909, 0.553454, 0.347531,
		36.826279, 33.523777, 33.559334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035610, 33.561359, 33.911732>,  <36.296440, 33.136360, 33.316063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035610, 33.561359, 33.911732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356995, 33.745148, 33.760292>,  <36.549828, 33.855419, 33.669430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.356995, 33.745148, 33.760292>,  <36.035610, 33.561359, 33.911732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356995, 33.745148, 33.760292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515924, 0.854693, -0.057638,
		0.297103, 0.241638, 0.923764,
		0.803463, 0.459467, -0.378599,
		36.598034, 33.882988, 33.646713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985569, 34.182030, 34.257084>,  <36.035610, 33.561359, 33.911732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985569, 34.182030, 34.257084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.252205, 34.241589, 33.964924>,  <36.412186, 34.277325, 33.789627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.252205, 34.241589, 33.964924>,  <35.985569, 34.182030, 34.257084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252205, 34.241589, 33.964924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417051, 0.886636, -0.199861,
		0.617843, 0.437841, 0.653120,
		0.666588, 0.148902, -0.730404,
		36.452183, 34.286259, 33.745804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213654, 34.894394, 34.259506>,  <35.985569, 34.182030, 34.257084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213654, 34.894394, 34.259506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.306164, 34.782227, 33.886868>,  <36.361671, 34.714928, 33.663284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.306164, 34.782227, 33.886868>,  <36.213654, 34.894394, 34.259506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306164, 34.782227, 33.886868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473191, 0.804244, -0.359559,
		0.850059, 0.523982, 0.053314,
		0.231280, -0.280418, -0.931598,
		36.375549, 34.698101, 33.607388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600628, 35.481506, 33.940430>,  <36.213654, 34.894394, 34.259506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600628, 35.481506, 33.940430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463394, 35.257332, 33.638912>,  <36.381054, 35.122826, 33.458004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463394, 35.257332, 33.638912>,  <36.600628, 35.481506, 33.940430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463394, 35.257332, 33.638912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447538, 0.803088, -0.393395,
		0.825834, 0.202381, -0.526346,
		-0.343087, -0.560439, -0.753790,
		36.360466, 35.089199, 33.412777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728607, 35.935547, 33.234642>,  <36.600628, 35.481506, 33.940430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728607, 35.935547, 33.234642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448895, 35.659191, 33.161224>,  <36.281067, 35.493378, 33.117176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448895, 35.659191, 33.161224>,  <36.728607, 35.935547, 33.234642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448895, 35.659191, 33.161224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547558, 0.682733, -0.483793,
		0.459555, -0.237807, -0.855720,
		-0.699278, -0.690886, -0.183541,
		36.239113, 35.451927, 33.106163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590664, 35.889671, 32.481594>,  <36.728607, 35.935547, 33.234642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590664, 35.889671, 32.481594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.261677, 35.732269, 32.645885>,  <36.064285, 35.637829, 32.744461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.261677, 35.732269, 32.645885>,  <36.590664, 35.889671, 32.481594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261677, 35.732269, 32.645885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568807, 0.571177, -0.591789,
		-0.001730, -0.720355, -0.693603,
		-0.822469, -0.393503, 0.410731,
		36.014935, 35.614220, 32.769104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165485, 35.669041, 31.945370>,  <36.590664, 35.889671, 32.481594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165485, 35.669041, 31.945370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.933743, 35.741425, 32.263264>,  <35.794697, 35.784855, 32.453999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.933743, 35.741425, 32.263264>,  <36.165485, 35.669041, 31.945370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933743, 35.741425, 32.263264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520743, 0.667920, -0.531704,
		-0.627036, -0.721897, -0.292729,
		-0.579356, 0.180961, 0.794733,
		35.759937, 35.795712, 32.501682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568699, 35.860374, 31.557856>,  <36.165485, 35.669041, 31.945370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568699, 35.860374, 31.557856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.460049, 35.912075, 31.939329>,  <35.394859, 35.943096, 32.168213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.460049, 35.912075, 31.939329>,  <35.568699, 35.860374, 31.557856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460049, 35.912075, 31.939329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672231, 0.683653, -0.284120,
		-0.688711, -0.718271, -0.098812,
		-0.271628, 0.129252, 0.953683,
		35.378559, 35.950851, 32.225433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904247, 35.659985, 31.590427>,  <35.568699, 35.860374, 31.557856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904247, 35.659985, 31.590427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.005390, 35.908520, 31.887075>,  <35.066078, 36.057640, 32.065063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.005390, 35.908520, 31.887075>,  <34.904247, 35.659985, 31.590427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005390, 35.908520, 31.887075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632564, 0.686173, -0.359207,
		-0.732069, -0.378293, 0.566541,
		0.252860, 0.621337, 0.741621,
		35.081249, 36.094921, 32.109562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181725, 35.995674, 31.819067>,  <34.904247, 35.659985, 31.590427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181725, 35.995674, 31.819067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.482483, 36.237362, 31.924576>,  <34.662937, 36.382374, 31.987881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.482483, 36.237362, 31.924576>,  <34.181725, 35.995674, 31.819067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482483, 36.237362, 31.924576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473071, 0.773121, -0.422478,
		-0.459197, 0.192876, 0.867143,
		0.751893, 0.604221, 0.263771,
		34.708050, 36.418629, 32.003708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877724, 36.486031, 32.079617>,  <34.181725, 35.995674, 31.819067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877724, 36.486031, 32.079617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.242771, 36.628162, 31.998749>,  <34.461800, 36.713440, 31.950228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.242771, 36.628162, 31.998749>,  <33.877724, 36.486031, 32.079617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242771, 36.628162, 31.998749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407086, 0.744356, -0.529353,
		-0.037607, 0.565397, 0.823961,
		0.912615, 0.355331, -0.202172,
		34.516556, 36.734760, 31.938097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277794, 36.559364, 32.579926>,  <33.877724, 36.486031, 32.079617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277794, 36.559364, 32.579926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.023163, 36.380119, 32.328861>,  <32.870384, 36.272572, 32.178223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.023163, 36.380119, 32.328861>,  <33.277794, 36.559364, 32.579926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023163, 36.380119, 32.328861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255403, -0.890439, 0.376680,
		-0.727690, 0.079481, 0.681286,
		-0.636582, -0.448109, -0.627664,
		32.832188, 36.245686, 32.140564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888336, 36.014439, 33.025112>,  <33.277794, 36.559364, 32.579926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888336, 36.014439, 33.025112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.831516, 35.935131, 32.637192>,  <32.797424, 35.887547, 32.404442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.831516, 35.935131, 32.637192>,  <32.888336, 36.014439, 33.025112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831516, 35.935131, 32.637192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097180, -0.977794, 0.185673,
		-0.985077, -0.067870, 0.158164,
		-0.142050, -0.198272, -0.969799,
		32.788902, 35.875648, 32.346252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511600, 35.423801, 33.137428>,  <32.888336, 36.014439, 33.025112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511600, 35.423801, 33.137428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.615047, 35.399071, 32.751827>,  <32.677116, 35.384232, 32.520466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.615047, 35.399071, 32.751827>,  <32.511600, 35.423801, 33.137428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615047, 35.399071, 32.751827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299050, -0.943798, 0.140762,
		-0.918523, -0.324687, -0.225594,
		0.258619, -0.061829, -0.963999,
		32.692635, 35.380524, 32.462627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068626, 34.810047, 32.745857>,  <32.511600, 35.423801, 33.137428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068626, 34.810047, 32.745857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.411495, 34.859673, 32.545910>,  <32.617214, 34.889446, 32.425941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.411495, 34.859673, 32.545910>,  <32.068626, 34.810047, 32.745857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411495, 34.859673, 32.545910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308077, -0.901281, 0.304600,
		-0.412733, -0.415092, -0.810771,
		0.857170, 0.124061, -0.499869,
		32.668648, 34.896893, 32.395950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152332, 34.192890, 32.327457>,  <32.068626, 34.810047, 32.745857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152332, 34.192890, 32.327457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513309, 34.360359, 32.368088>,  <32.729897, 34.460838, 32.392464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513309, 34.360359, 32.368088>,  <32.152332, 34.192890, 32.327457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513309, 34.360359, 32.368088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378008, -0.882606, 0.279493,
		0.206663, -0.213831, -0.954760,
		0.902441, 0.418668, 0.101572,
		32.784042, 34.485958, 32.398560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585949, 33.627308, 32.039825>,  <32.152332, 34.192890, 32.327457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585949, 33.627308, 32.039825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.839516, 33.863113, 32.240074>,  <32.991657, 34.004597, 32.360222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.839516, 33.863113, 32.240074>,  <32.585949, 33.627308, 32.039825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839516, 33.863113, 32.240074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440957, -0.807276, 0.392254,
		0.635379, -0.027903, -0.771696,
		0.633916, 0.589514, 0.500622,
		33.029690, 34.039967, 32.390263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248074, 33.219654, 32.052368>,  <32.585949, 33.627308, 32.039825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248074, 33.219654, 32.052368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.258926, 33.482182, 32.353966>,  <33.265438, 33.639698, 32.534924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.258926, 33.482182, 32.353966>,  <33.248074, 33.219654, 32.052368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258926, 33.482182, 32.353966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493036, -0.664936, 0.561049,
		0.869586, 0.356522, -0.341632,
		0.027136, 0.656317, 0.753997,
		33.267067, 33.679077, 32.580166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929546, 33.228390, 32.262127>,  <33.248074, 33.219654, 32.052368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929546, 33.228390, 32.262127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.714973, 33.385696, 32.560814>,  <33.586231, 33.480080, 32.740025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.714973, 33.385696, 32.560814>,  <33.929546, 33.228390, 32.262127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714973, 33.385696, 32.560814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376570, -0.680292, 0.628806,
		0.755271, 0.618503, 0.216840,
		-0.536433, 0.393264, 0.746715,
		33.554043, 33.503677, 32.784828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382679, 33.216885, 32.705242>,  <33.929546, 33.228390, 32.262127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382679, 33.216885, 32.705242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.044575, 33.238346, 32.917900>,  <33.841713, 33.251225, 33.045494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.044575, 33.238346, 32.917900>,  <34.382679, 33.216885, 32.705242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044575, 33.238346, 32.917900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412720, -0.566396, 0.713342,
		0.339399, 0.822384, 0.456609,
		-0.845263, 0.053656, 0.531649,
		33.790997, 33.254444, 33.077396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605457, 33.215492, 33.379990>,  <34.382679, 33.216885, 32.705242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605457, 33.215492, 33.379990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.224426, 33.114517, 33.447948>,  <33.995808, 33.053932, 33.488724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.224426, 33.114517, 33.447948>,  <34.605457, 33.215492, 33.379990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224426, 33.114517, 33.447948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298582, -0.667832, 0.681798,
		-0.058653, 0.700195, 0.711538,
		-0.952580, -0.252442, 0.169896,
		33.938652, 33.038784, 33.498917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499199, 33.122730, 34.083164>,  <34.605457, 33.215492, 33.379990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499199, 33.122730, 34.083164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.182777, 32.926811, 33.936562>,  <33.992924, 32.809261, 33.848598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.182777, 32.926811, 33.936562>,  <34.499199, 33.122730, 34.083164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182777, 32.926811, 33.936562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160139, -0.744033, 0.648668,
		-0.590408, 0.454442, 0.667009,
		-0.791059, -0.489793, -0.366509,
		33.945461, 32.779873, 33.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131283, 32.851597, 34.722313>,  <34.499199, 33.122730, 34.083164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131283, 32.851597, 34.722313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.033825, 32.643650, 34.394810>,  <33.975349, 32.518883, 34.198307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.033825, 32.643650, 34.394810>,  <34.131283, 32.851597, 34.722313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033825, 32.643650, 34.394810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096721, -0.853020, 0.512838,
		-0.965029, 0.045761, 0.258119,
		-0.243649, -0.519869, -0.818762,
		33.960732, 32.487690, 34.149181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.665258, 39.536221, 31.865873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745020, 39.429161, 31.488811>,  <30.792877, 39.364925, 31.262573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745020, 39.429161, 31.488811>,  <30.665258, 39.536221, 31.865873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745020, 39.429161, 31.488811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174187, -0.936974, 0.302885,
		-0.964312, -0.224595, -0.140214,
		0.199403, -0.267653, -0.942656,
		30.804840, 39.348866, 31.206015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327801, 38.906223, 31.740845>,  <30.665258, 39.536221, 31.865873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327801, 38.906223, 31.740845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620398, 38.930218, 31.469162>,  <30.795956, 38.944614, 31.306152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620398, 38.930218, 31.469162>,  <30.327801, 38.906223, 31.740845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620398, 38.930218, 31.469162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301553, -0.921871, 0.243350,
		-0.611545, -0.382826, -0.692429,
		0.731491, 0.059984, -0.679208,
		30.839846, 38.948212, 31.265400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376875, 38.243599, 31.526379>,  <30.327801, 38.906223, 31.740845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376875, 38.243599, 31.526379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730125, 38.393761, 31.413837>,  <30.942076, 38.483856, 31.346313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730125, 38.393761, 31.413837>,  <30.376875, 38.243599, 31.526379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730125, 38.393761, 31.413837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409782, -0.909255, 0.073039,
		-0.228402, -0.179796, -0.956821,
		0.883126, 0.375405, -0.281352,
		30.995064, 38.506382, 31.329432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599848, 37.699814, 31.030872>,  <30.376875, 38.243599, 31.526379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599848, 37.699814, 31.030872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911610, 37.906429, 31.172697>,  <31.098667, 38.030399, 31.257792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911610, 37.906429, 31.172697>,  <30.599848, 37.699814, 31.030872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911610, 37.906429, 31.172697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548313, -0.836175, 0.012864,
		0.303120, 0.184385, -0.934944,
		0.779405, 0.516541, 0.354562,
		31.145432, 38.061390, 31.279066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212627, 37.529591, 30.632696>,  <30.599848, 37.699814, 31.030872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212627, 37.529591, 30.632696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376049, 37.684376, 30.963354>,  <31.474102, 37.777248, 31.161749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376049, 37.684376, 30.963354>,  <31.212627, 37.529591, 30.632696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376049, 37.684376, 30.963354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516260, -0.844856, 0.140338,
		0.752701, 0.369427, -0.544944,
		0.408554, 0.386965, 0.826644,
		31.498615, 37.800465, 31.211348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743389, 37.194901, 30.650974>,  <31.212627, 37.529591, 30.632696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743389, 37.194901, 30.650974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781483, 37.376034, 31.005573>,  <31.804338, 37.484715, 31.218332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781483, 37.376034, 31.005573>,  <31.743389, 37.194901, 30.650974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781483, 37.376034, 31.005573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494484, -0.794422, 0.352675,
		0.863954, 0.404772, -0.299572,
		0.095233, 0.452828, 0.886497,
		31.810053, 37.511883, 31.271523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464615, 37.038860, 30.819046>,  <31.743389, 37.194901, 30.650974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464615, 37.038860, 30.819046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281322, 37.112411, 31.166887>,  <32.171349, 37.156544, 31.375593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281322, 37.112411, 31.166887>,  <32.464615, 37.038860, 30.819046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281322, 37.112411, 31.166887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442300, -0.801458, 0.402535,
		0.770970, 0.569081, 0.285923,
		-0.458230, 0.183879, 0.869605,
		32.143852, 37.167576, 31.427769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004925, 37.087700, 31.298811>,  <32.464615, 37.038860, 30.819046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004925, 37.087700, 31.298811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672321, 36.990818, 31.498783>,  <32.472759, 36.932690, 31.618767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672321, 36.990818, 31.498783>,  <33.004925, 37.087700, 31.298811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672321, 36.990818, 31.498783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505135, -0.704135, 0.499031,
		0.231153, 0.667481, 0.707840,
		-0.831509, -0.242202, 0.499931,
		32.422867, 36.918156, 31.648762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309998, 36.901398, 31.952858>,  <33.004925, 37.087700, 31.298811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309998, 36.901398, 31.952858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940094, 36.750282, 31.934561>,  <32.718151, 36.659615, 31.923582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940094, 36.750282, 31.934561>,  <33.309998, 36.901398, 31.952858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940094, 36.750282, 31.934561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353483, -0.897289, 0.264427,
		-0.140943, 0.228362, 0.963320,
		-0.924762, -0.377787, -0.045745,
		32.662666, 36.636948, 31.920837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905666, 37.296936, 32.211796>,  <33.309998, 36.901398, 31.952858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905666, 37.296936, 32.211796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232948, 37.244205, 31.987953>,  <34.429317, 37.212566, 31.853647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232948, 37.244205, 31.987953>,  <33.905666, 37.296936, 32.211796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232948, 37.244205, 31.987953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158475, 0.883936, -0.439935,
		0.552651, 0.448641, 0.702351,
		0.818207, -0.131826, -0.559607,
		34.478409, 37.204659, 31.820070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189194, 37.980293, 32.199352>,  <33.905666, 37.296936, 32.211796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189194, 37.980293, 32.199352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351887, 37.781719, 31.892595>,  <34.449501, 37.662575, 31.708540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351887, 37.781719, 31.892595>,  <34.189194, 37.980293, 32.199352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351887, 37.781719, 31.892595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157533, 0.788779, -0.594147,
		0.899863, 0.362469, 0.242616,
		0.406731, -0.496431, -0.766894,
		34.473907, 37.632790, 31.662527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612858, 38.430168, 31.871681>,  <34.189194, 37.980293, 32.199352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612858, 38.430168, 31.871681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568737, 38.143829, 31.595884>,  <34.542263, 37.972027, 31.430407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568737, 38.143829, 31.595884>,  <34.612858, 38.430168, 31.871681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568737, 38.143829, 31.595884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089595, 0.698061, -0.710411,
		0.989851, -0.016587, -0.141136,
		-0.110305, -0.715846, -0.689490,
		34.535645, 37.929077, 31.389038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129692, 38.664528, 31.218401>,  <34.612858, 38.430168, 31.871681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129692, 38.664528, 31.218401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822853, 38.423908, 31.129232>,  <34.638748, 38.279537, 31.075731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822853, 38.423908, 31.129232>,  <35.129692, 38.664528, 31.218401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822853, 38.423908, 31.129232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343683, 0.678760, -0.648973,
		0.541699, -0.421214, -0.727420,
		-0.767101, -0.601551, -0.222920,
		34.592724, 38.243443, 31.062357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278549, 38.602985, 30.599413>,  <35.129692, 38.664528, 31.218401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278549, 38.602985, 30.599413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890251, 38.525085, 30.655581>,  <34.657272, 38.478344, 30.689281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890251, 38.525085, 30.655581>,  <35.278549, 38.602985, 30.599413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890251, 38.525085, 30.655581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236602, 0.676541, -0.697360,
		0.040812, -0.710185, -0.702831,
		-0.970749, -0.194752, 0.140420,
		34.599026, 38.466660, 30.697706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896145, 38.674038, 29.937542>,  <35.278549, 38.602985, 30.599413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896145, 38.674038, 29.937542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591816, 38.698944, 30.195927>,  <34.409218, 38.713886, 30.350958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591816, 38.698944, 30.195927>,  <34.896145, 38.674038, 29.937542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591816, 38.698944, 30.195927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328059, 0.821935, -0.465618,
		-0.559929, -0.566168, -0.604924,
		-0.760826, 0.062262, 0.645962,
		34.363567, 38.717621, 30.389715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246445, 38.719616, 29.452564>,  <34.896145, 38.674038, 29.937542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246445, 38.719616, 29.452564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140915, 38.870930, 29.807484>,  <34.077599, 38.961720, 30.020435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140915, 38.870930, 29.807484>,  <34.246445, 38.719616, 29.452564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140915, 38.870930, 29.807484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515904, 0.721917, -0.461171,
		-0.815010, -0.579428, 0.004701,
		-0.263822, 0.378284, 0.887299,
		34.061768, 38.984413, 30.073673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611401, 39.021950, 29.285736>,  <34.246445, 38.719616, 29.452564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611401, 39.021950, 29.285736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675121, 39.184914, 29.645433>,  <33.713352, 39.282692, 29.861252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675121, 39.184914, 29.645433>,  <33.611401, 39.021950, 29.285736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675121, 39.184914, 29.645433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589169, 0.770117, -0.244539,
		-0.792151, -0.490850, 0.362717,
		0.159303, 0.407413, 0.899243,
		33.722912, 39.307137, 29.915207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908302, 39.208466, 29.561571>,  <33.611401, 39.021950, 29.285736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908302, 39.208466, 29.561571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176201, 39.422455, 29.767576>,  <33.336941, 39.550850, 29.891180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176201, 39.422455, 29.767576>,  <32.908302, 39.208466, 29.561571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176201, 39.422455, 29.767576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530264, 0.830066, -0.172658,
		-0.519862, -0.157455, 0.839614,
		0.669749, 0.534975, 0.515012,
		33.377125, 39.582947, 29.922079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562138, 39.843193, 29.664011>,  <32.908302, 39.208466, 29.561571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562138, 39.843193, 29.664011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926701, 39.963966, 29.775854>,  <33.145439, 40.036430, 29.842960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926701, 39.963966, 29.775854>,  <32.562138, 39.843193, 29.664011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926701, 39.963966, 29.775854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201576, 0.919921, -0.336321,
		-0.358764, 0.250162, 0.899282,
		0.911403, 0.301933, 0.279608,
		33.200123, 40.054546, 29.859737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422634, 40.468594, 30.020679>,  <32.562138, 39.843193, 29.664011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422634, 40.468594, 30.020679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814018, 40.450100, 29.940201>,  <33.048847, 40.439003, 29.891914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814018, 40.450100, 29.940201>,  <32.422634, 40.468594, 30.020679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814018, 40.450100, 29.940201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043842, 0.905822, -0.421383,
		0.201731, 0.421127, 0.884283,
		0.978459, -0.046237, -0.201196,
		33.107555, 40.436230, 29.879843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785927, 41.026283, 30.411482>,  <32.422634, 40.468594, 30.020679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785927, 41.026283, 30.411482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958145, 40.924450, 30.065115>,  <33.061478, 40.863350, 29.857294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958145, 40.924450, 30.065115>,  <32.785927, 41.026283, 30.411482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958145, 40.924450, 30.065115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016364, 0.957035, -0.289510,
		0.902419, 0.138819, 0.407885,
		0.430550, -0.254585, -0.865918,
		33.087311, 40.848076, 29.805340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186329, 41.607948, 30.317629>,  <32.785927, 41.026283, 30.411482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186329, 41.607948, 30.317629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199570, 41.425774, 29.961767>,  <33.207512, 41.316471, 29.748251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199570, 41.425774, 29.961767>,  <33.186329, 41.607948, 30.317629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199570, 41.425774, 29.961767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035382, 0.890118, -0.454355,
		0.998826, -0.016439, 0.045575,
		0.033098, -0.455434, -0.889654,
		33.209499, 41.289143, 29.694870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594521, 42.030624, 29.841610>,  <33.186329, 41.607948, 30.317629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594521, 42.030624, 29.841610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383202, 41.805031, 29.587734>,  <33.256413, 41.669678, 29.435410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383202, 41.805031, 29.587734>,  <33.594521, 42.030624, 29.841610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383202, 41.805031, 29.587734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089656, 0.780396, -0.618825,
		0.844313, -0.270020, -0.462844,
		-0.528296, -0.563979, -0.634689,
		33.224712, 41.635838, 29.397327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.286732, 36.162567, 23.996845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.247684, 36.334503, 24.355890>,  <32.224258, 36.437664, 24.571318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.247684, 36.334503, 24.355890>,  <32.286732, 36.162567, 23.996845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247684, 36.334503, 24.355890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559431, -0.722243, 0.406697,
		0.823109, 0.541852, -0.169965,
		-0.097614, 0.429840, 0.897613,
		32.218399, 36.463455, 24.625174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922722, 36.106094, 24.201145>,  <32.286732, 36.162567, 23.996845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922722, 36.106094, 24.201145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677692, 36.155006, 24.513504>,  <32.530674, 36.184353, 24.700920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677692, 36.155006, 24.513504>,  <32.922722, 36.106094, 24.201145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677692, 36.155006, 24.513504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443244, -0.764856, 0.467471,
		0.654436, 0.632489, 0.414332,
		-0.612575, 0.122280, 0.780897,
		32.493919, 36.191689, 24.747772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438412, 36.178627, 24.667013>,  <32.922722, 36.106094, 24.201145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438412, 36.178627, 24.667013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.097935, 36.120861, 24.868855>,  <32.893650, 36.086201, 24.989960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.097935, 36.120861, 24.868855>,  <33.438412, 36.178627, 24.667013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097935, 36.120861, 24.868855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482610, -0.593262, 0.644304,
		0.206317, 0.791950, 0.574672,
		-0.851188, -0.144411, 0.504603,
		32.842579, 36.077538, 25.020235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626045, 36.149830, 25.433388>,  <33.438412, 36.178627, 24.667013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626045, 36.149830, 25.433388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.274384, 35.961292, 25.405346>,  <33.063385, 35.848167, 25.388521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.274384, 35.961292, 25.405346>,  <33.626045, 36.149830, 25.433388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274384, 35.961292, 25.405346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353842, -0.744238, 0.566486,
		-0.319186, 0.473224, 0.821084,
		-0.879156, -0.471349, -0.070104,
		33.010635, 35.819889, 25.384315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460445, 36.022839, 26.114695>,  <33.626045, 36.149830, 25.433388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460445, 36.022839, 26.114695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.248608, 35.778408, 25.879366>,  <33.121506, 35.631752, 25.738169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.248608, 35.778408, 25.879366>,  <33.460445, 36.022839, 26.114695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248608, 35.778408, 25.879366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204872, -0.765179, 0.610351,
		-0.823139, 0.202708, 0.530426,
		-0.529594, -0.611073, -0.588320,
		33.089729, 35.595085, 25.702869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982361, 35.690037, 26.652555>,  <33.460445, 36.022839, 26.114695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982361, 35.690037, 26.652555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.984711, 35.447655, 26.334366>,  <32.986122, 35.302223, 26.143452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.984711, 35.447655, 26.334366>,  <32.982361, 35.690037, 26.652555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984711, 35.447655, 26.334366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100884, -0.791070, 0.603349,
		-0.994881, -0.083794, 0.056485,
		0.005873, -0.605959, -0.795474,
		32.986473, 35.265865, 26.095724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589787, 35.242176, 26.794399>,  <32.982361, 35.690037, 26.652555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589787, 35.242176, 26.794399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774364, 35.038624, 26.503716>,  <32.885113, 34.916492, 26.329306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774364, 35.038624, 26.503716>,  <32.589787, 35.242176, 26.794399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774364, 35.038624, 26.503716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105290, -0.781931, 0.614409,
		-0.880897, -0.360033, -0.307241,
		0.461449, -0.508881, -0.726708,
		32.912800, 34.885960, 26.285704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253784, 34.592804, 26.746094>,  <32.589787, 35.242176, 26.794399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253784, 34.592804, 26.746094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.612030, 34.522079, 26.582823>,  <32.826977, 34.479645, 26.484859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.612030, 34.522079, 26.582823>,  <32.253784, 34.592804, 26.746094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612030, 34.522079, 26.582823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146924, -0.748532, 0.646617,
		-0.419862, -0.639092, -0.644420,
		0.895617, -0.176809, -0.408178,
		32.880714, 34.469036, 26.460369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230408, 33.863762, 26.661285>,  <32.253784, 34.592804, 26.746094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230408, 33.863762, 26.661285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.609112, 33.989147, 26.631943>,  <32.836334, 34.064377, 26.614338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.609112, 33.989147, 26.631943>,  <32.230408, 33.863762, 26.661285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609112, 33.989147, 26.631943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316649, -0.865609, 0.387885,
		0.058090, -0.390463, -0.918784,
		0.946762, 0.313464, -0.073357,
		32.893139, 34.083187, 26.609936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512913, 33.327656, 26.276384>,  <32.230408, 33.863762, 26.661285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512913, 33.327656, 26.276384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.807606, 33.520523, 26.466011>,  <32.984421, 33.636246, 26.579788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.807606, 33.520523, 26.466011>,  <32.512913, 33.327656, 26.276384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807606, 33.520523, 26.466011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297820, -0.860808, 0.412689,
		0.607068, -0.162853, -0.777784,
		0.736730, 0.482170, 0.474068,
		33.028625, 33.665173, 26.608231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187843, 32.945480, 26.190624>,  <32.512913, 33.327656, 26.276384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187843, 32.945480, 26.190624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.231056, 33.166103, 26.521469>,  <33.256985, 33.298477, 26.719976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.231056, 33.166103, 26.521469>,  <33.187843, 32.945480, 26.190624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231056, 33.166103, 26.521469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309856, -0.809220, 0.499152,
		0.944626, 0.202364, -0.258321,
		0.108029, 0.551554, 0.827114,
		33.263466, 33.331570, 26.769604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755428, 32.786476, 26.407530>,  <33.187843, 32.945480, 26.190624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755428, 32.786476, 26.407530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.613045, 32.951374, 26.742992>,  <33.527615, 33.050312, 26.944269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.613045, 32.951374, 26.742992>,  <33.755428, 32.786476, 26.407530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613045, 32.951374, 26.742992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505494, -0.669867, 0.543832,
		0.785982, 0.617518, 0.030057,
		-0.355961, 0.412249, 0.838656,
		33.506256, 33.075050, 26.994589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416233, 32.864727, 26.857094>,  <33.755428, 32.786476, 26.407530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416233, 32.864727, 26.857094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.070728, 32.850208, 27.058130>,  <33.863426, 32.841496, 27.178753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.070728, 32.850208, 27.058130>,  <34.416233, 32.864727, 26.857094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070728, 32.850208, 27.058130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423891, -0.591630, 0.685777,
		0.272458, 0.805392, 0.526413,
		-0.863761, -0.036296, 0.502593,
		33.811600, 32.839321, 27.208908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657234, 32.906929, 27.538204>,  <34.416233, 32.864727, 26.857094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657234, 32.906929, 27.538204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291485, 32.747147, 27.564619>,  <34.072037, 32.651276, 27.580467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291485, 32.747147, 27.564619>,  <34.657234, 32.906929, 27.538204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291485, 32.747147, 27.564619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362276, -0.734376, 0.573975,
		-0.180781, 0.548750, 0.816206,
		-0.914371, -0.399456, 0.066038,
		34.017174, 32.627312, 27.584431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781803, 33.456703, 28.145763>,  <34.657234, 32.906929, 27.538204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781803, 33.456703, 28.145763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.133587, 33.628693, 28.227413>,  <35.344658, 33.731888, 28.276403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.133587, 33.628693, 28.227413>,  <34.781803, 33.456703, 28.145763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133587, 33.628693, 28.227413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336967, 0.865348, -0.370980,
		-0.336151, 0.257480, 0.905928,
		0.879463, 0.429973, 0.204125,
		35.397427, 33.757683, 28.288651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635841, 34.011818, 28.556547>,  <34.781803, 33.456703, 28.145763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635841, 34.011818, 28.556547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.004162, 34.099373, 28.427423>,  <35.225155, 34.151905, 28.349949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.004162, 34.099373, 28.427423>,  <34.635841, 34.011818, 28.556547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004162, 34.099373, 28.427423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331095, 0.876141, -0.350361,
		0.206138, 0.429495, 0.879228,
		0.920806, 0.218885, -0.322809,
		35.280403, 34.165039, 28.330580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770817, 34.682674, 28.667900>,  <34.635841, 34.011818, 28.556547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770817, 34.682674, 28.667900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081543, 34.646538, 28.418617>,  <35.267979, 34.624855, 28.269047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081543, 34.646538, 28.418617>,  <34.770817, 34.682674, 28.667900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081543, 34.646538, 28.418617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082743, 0.966434, -0.243228,
		0.624263, 0.240510, 0.743270,
		0.776820, -0.090338, -0.623209,
		35.314590, 34.619438, 28.231655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158546, 35.165871, 28.794575>,  <34.770817, 34.682674, 28.667900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158546, 35.165871, 28.794575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.225727, 35.120800, 28.402842>,  <35.266037, 35.093758, 28.167801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.225727, 35.120800, 28.402842>,  <35.158546, 35.165871, 28.794575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225727, 35.120800, 28.402842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358499, 0.918444, -0.167152,
		0.918298, 0.379164, 0.113859,
		0.167951, -0.112677, -0.979335,
		35.276112, 35.086998, 28.109041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215515, 35.782955, 28.570545>,  <35.158546, 35.165871, 28.794575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215515, 35.782955, 28.570545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241226, 35.624622, 28.204117>,  <35.256653, 35.529621, 27.984261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241226, 35.624622, 28.204117>,  <35.215515, 35.782955, 28.570545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241226, 35.624622, 28.204117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353590, 0.849380, -0.391825,
		0.933189, 0.349099, -0.085366,
		0.064278, -0.395831, -0.916071,
		35.260509, 35.505875, 27.929296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667667, 36.186062, 28.075907>,  <35.215515, 35.782955, 28.570545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667667, 36.186062, 28.075907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406845, 35.979168, 27.854174>,  <35.250351, 35.855030, 27.721134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406845, 35.979168, 27.854174>,  <35.667667, 36.186062, 28.075907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406845, 35.979168, 27.854174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263389, 0.840150, -0.474103,
		0.710946, -0.163138, -0.684063,
		-0.652060, -0.517236, -0.554333,
		35.211227, 35.823997, 27.687874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738255, 36.518204, 27.392962>,  <35.667667, 36.186062, 28.075907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738255, 36.518204, 27.392962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.385986, 36.328751, 27.389025>,  <35.174625, 36.215080, 27.386662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.385986, 36.328751, 27.389025>,  <35.738255, 36.518204, 27.392962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385986, 36.328751, 27.389025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414441, 0.780339, -0.468306,
		0.229487, -0.408342, -0.883512,
		-0.880667, -0.473634, -0.009844,
		35.121788, 36.186661, 27.386072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580757, 36.610981, 26.743715>,  <35.738255, 36.518204, 27.392962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580757, 36.610981, 26.743715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.239376, 36.538971, 26.939352>,  <35.034546, 36.495766, 27.056734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.239376, 36.538971, 26.939352>,  <35.580757, 36.610981, 26.743715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239376, 36.538971, 26.939352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388824, 0.844836, -0.367516,
		-0.347039, -0.503828, -0.791025,
		-0.853452, -0.180027, 0.489091,
		34.983341, 36.484962, 27.086079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952415, 36.615974, 26.269657>,  <35.580757, 36.610981, 26.743715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952415, 36.615974, 26.269657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779388, 36.685665, 26.623499>,  <34.675571, 36.727478, 26.835804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779388, 36.685665, 26.623499>,  <34.952415, 36.615974, 26.269657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779388, 36.685665, 26.623499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285342, 0.904263, -0.317628,
		-0.855256, -0.389812, -0.341442,
		-0.432569, 0.174226, 0.884607,
		34.649616, 36.737934, 26.888882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273556, 36.810822, 25.975708>,  <34.952415, 36.615974, 26.269657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273556, 36.810822, 25.975708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.343491, 36.944939, 26.346008>,  <34.385452, 37.025410, 26.568188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.343491, 36.944939, 26.346008>,  <34.273556, 36.810822, 25.975708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343491, 36.944939, 26.346008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321371, 0.908169, -0.268234,
		-0.930673, -0.250612, 0.266534,
		0.174835, 0.335295, 0.925748,
		34.395943, 37.045528, 26.623734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759605, 37.058796, 26.444231>,  <34.273556, 36.810822, 25.975708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759605, 37.058796, 26.444231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.102039, 37.246830, 26.530148>,  <34.307499, 37.359650, 26.581697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.102039, 37.246830, 26.530148>,  <33.759605, 37.058796, 26.444231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102039, 37.246830, 26.530148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330629, 0.817544, -0.471494,
		-0.397244, 0.332623, 0.855312,
		0.856085, 0.470090, 0.214789,
		34.358864, 37.387856, 26.594584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627216, 37.684612, 26.817585>,  <33.759605, 37.058796, 26.444231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627216, 37.684612, 26.817585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.970230, 37.753677, 26.623751>,  <34.176037, 37.795116, 26.507450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.970230, 37.753677, 26.623751>,  <33.627216, 37.684612, 26.817585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970230, 37.753677, 26.623751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352850, 0.882894, -0.309832,
		0.374344, 0.436678, 0.818034,
		0.857533, 0.172660, -0.484588,
		34.227489, 37.805477, 26.478374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862411, 38.350639, 27.025755>,  <33.627216, 37.684612, 26.817585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862411, 38.350639, 27.025755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.047211, 38.308369, 26.673531>,  <34.158089, 38.283005, 26.462196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.047211, 38.308369, 26.673531>,  <33.862411, 38.350639, 27.025755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047211, 38.308369, 26.673531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308282, 0.911826, -0.271174,
		0.831577, 0.396743, 0.388683,
		0.461998, -0.105678, -0.880562,
		34.185810, 38.276665, 26.409363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187824, 38.987446, 26.839991>,  <33.862411, 38.350639, 27.025755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187824, 38.987446, 26.839991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.191410, 38.798225, 26.487595>,  <34.193562, 38.684692, 26.276157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.191410, 38.798225, 26.487595>,  <34.187824, 38.987446, 26.839991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191410, 38.798225, 26.487595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393581, 0.808244, -0.437991,
		0.919246, 0.350666, -0.178942,
		0.008960, -0.473050, -0.880990,
		34.194099, 38.656311, 26.223297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744007, 39.359371, 27.232384>,  <34.187824, 38.987446, 26.839991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744007, 39.359371, 27.232384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879204, 39.717251, 27.349192>,  <34.960320, 39.931980, 27.419275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879204, 39.717251, 27.349192>,  <34.744007, 39.359371, 27.232384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879204, 39.717251, 27.349192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611423, -0.444622, 0.654579,
		0.715490, -0.042693, -0.697317,
		0.337988, 0.894700, 0.292019,
		34.980598, 39.985661, 27.436798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526756, 39.358585, 27.204062>,  <34.744007, 39.359371, 27.232384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526756, 39.358585, 27.204062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.450432, 39.654892, 27.461697>,  <35.404636, 39.832676, 27.616278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.450432, 39.654892, 27.461697>,  <35.526756, 39.358585, 27.204062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450432, 39.654892, 27.461697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785700, -0.278075, 0.552584,
		0.588443, 0.611502, -0.528962,
		-0.190815, 0.740770, 0.644088,
		35.393188, 39.877125, 27.654922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214474, 39.719536, 27.384251>,  <35.526756, 39.358585, 27.204062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214474, 39.719536, 27.384251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.936008, 39.772671, 27.666447>,  <35.768929, 39.804554, 27.835764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.936008, 39.772671, 27.666447>,  <36.214474, 39.719536, 27.384251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936008, 39.772671, 27.666447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672748, -0.222255, 0.705700,
		0.250544, 0.965897, 0.065357,
		-0.696159, 0.132840, 0.705490,
		35.727161, 39.812523, 27.878094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620502, 40.139866, 27.895451>,  <36.214474, 39.719536, 27.384251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620502, 40.139866, 27.895451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315411, 39.976315, 28.095873>,  <36.132355, 39.878185, 28.216125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315411, 39.976315, 28.095873>,  <36.620502, 40.139866, 27.895451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315411, 39.976315, 28.095873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607474, -0.187205, 0.771965,
		-0.221841, 0.893181, 0.391171,
		-0.762733, -0.408880, 0.501054,
		36.086590, 39.853649, 28.246189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754925, 40.266586, 28.609165>,  <36.620502, 40.139866, 27.895451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754925, 40.266586, 28.609165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.492264, 39.964939, 28.604883>,  <36.334667, 39.783951, 28.602314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.492264, 39.964939, 28.604883>,  <36.754925, 40.266586, 28.609165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492264, 39.964939, 28.604883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539595, -0.479680, 0.691913,
		-0.526919, 0.448570, 0.721901,
		-0.656653, -0.754117, -0.010706,
		36.295269, 39.738705, 28.601671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634163, 40.107674, 29.245689>,  <36.754925, 40.266586, 28.609165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634163, 40.107674, 29.245689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501053, 39.770638, 29.076309>,  <36.421188, 39.568417, 28.974682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501053, 39.770638, 29.076309>,  <36.634163, 40.107674, 29.245689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501053, 39.770638, 29.076309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417842, -0.534301, 0.734799,
		-0.845383, 0.067584, 0.529868,
		-0.332770, -0.842588, -0.423450,
		36.401222, 39.517860, 28.949274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498993, 39.567299, 29.857203>,  <36.634163, 40.107674, 29.245689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498993, 39.567299, 29.857203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516357, 39.366688, 29.511583>,  <36.526775, 39.246319, 29.304211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516357, 39.366688, 29.511583>,  <36.498993, 39.567299, 29.857203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516357, 39.366688, 29.511583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385145, -0.789612, 0.477678,
		-0.921834, -0.353522, 0.158882,
		0.043415, -0.501533, -0.864049,
		36.529381, 39.216228, 29.252369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295868, 38.847397, 30.065681>,  <36.498993, 39.567299, 29.857203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295868, 38.847397, 30.065681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491333, 38.811302, 29.718563>,  <36.608612, 38.789646, 29.510292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491333, 38.811302, 29.718563>,  <36.295868, 38.847397, 30.065681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491333, 38.811302, 29.718563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608517, -0.677529, 0.413112,
		-0.625235, -0.729939, -0.276169,
		0.488660, -0.090239, -0.867795,
		36.637932, 38.784229, 29.458225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294830, 38.061794, 29.842340>,  <36.295868, 38.847397, 30.065681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294830, 38.061794, 29.842340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604988, 38.240406, 29.663731>,  <36.791080, 38.347572, 29.556564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604988, 38.240406, 29.663731>,  <36.294830, 38.061794, 29.842340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604988, 38.240406, 29.663731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618753, -0.678492, 0.395971,
		-0.126151, -0.583320, -0.802386,
		0.775390, 0.446528, -0.446523,
		36.837605, 38.374363, 29.529774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620163, 37.542278, 29.376928>,  <36.294830, 38.061794, 29.842340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620163, 37.542278, 29.376928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885578, 37.824703, 29.475874>,  <37.044827, 37.994160, 29.535242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885578, 37.824703, 29.475874>,  <36.620163, 37.542278, 29.376928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885578, 37.824703, 29.475874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670253, -0.707920, 0.222734,
		0.332380, 0.018004, -0.942974,
		0.663539, 0.706063, 0.247366,
		37.084641, 38.036522, 29.550083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264454, 37.294109, 29.200109>,  <36.620163, 37.542278, 29.376928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264454, 37.294109, 29.200109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365860, 37.582592, 29.457972>,  <37.426704, 37.755684, 29.612690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365860, 37.582592, 29.457972>,  <37.264454, 37.294109, 29.200109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365860, 37.582592, 29.457972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698052, -0.597755, 0.394223,
		0.669665, 0.350062, -0.654985,
		0.253518, 0.721211, 0.644657,
		37.441914, 37.798954, 29.651369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934101, 37.353672, 29.081398>,  <37.264454, 37.294109, 29.200109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934101, 37.353672, 29.081398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.880703, 37.499489, 29.450026>,  <37.848663, 37.586979, 29.671202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.880703, 37.499489, 29.450026>,  <37.934101, 37.353672, 29.081398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880703, 37.499489, 29.450026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825121, -0.474199, 0.307100,
		0.548958, 0.801402, -0.237487,
		-0.133495, 0.364541, 0.921569,
		37.840656, 37.608852, 29.726496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609455, 37.562794, 29.252817>,  <37.934101, 37.353672, 29.081398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609455, 37.562794, 29.252817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.400757, 37.553406, 29.593927>,  <38.275536, 37.547775, 29.798594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.400757, 37.553406, 29.593927>,  <38.609455, 37.562794, 29.252817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400757, 37.553406, 29.593927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728884, -0.531691, 0.431316,
		0.443292, 0.846613, 0.294514,
		-0.521748, -0.023468, 0.852777,
		38.244232, 37.546364, 29.849760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045223, 37.626919, 29.838783>,  <38.609455, 37.562794, 29.252817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045223, 37.626919, 29.838783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727444, 37.445095, 29.999893>,  <38.536777, 37.336002, 30.096560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727444, 37.445095, 29.999893>,  <39.045223, 37.626919, 29.838783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727444, 37.445095, 29.999893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606644, -0.625461, 0.490695,
		0.028872, 0.634174, 0.772651,
		-0.794449, -0.454556, 0.402776,
		38.489109, 37.308727, 30.120726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.925095, 42.139885, 29.028406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550449, 42.006500, 28.985399>,  <33.325661, 41.926468, 28.959595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550449, 42.006500, 28.985399>,  <33.925095, 42.139885, 29.028406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550449, 42.006500, 28.985399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152439, 0.664152, -0.731891,
		0.315465, -0.669109, -0.672886,
		-0.936613, -0.333460, -0.107519,
		33.269466, 41.906464, 28.953144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703403, 42.276684, 28.337973>,  <33.925095, 42.139885, 29.028406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703403, 42.276684, 28.337973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345673, 42.200470, 28.499895>,  <33.131035, 42.154739, 28.597048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345673, 42.200470, 28.499895>,  <33.703403, 42.276684, 28.337973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345673, 42.200470, 28.499895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436187, 0.572657, -0.694122,
		-0.099559, -0.797346, -0.595254,
		-0.894331, -0.190536, 0.404805,
		33.077374, 42.143311, 28.621336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358620, 41.989155, 27.817230>,  <33.703403, 42.276684, 28.337973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358620, 41.989155, 27.817230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081097, 42.127235, 28.070044>,  <32.914581, 42.210083, 28.221731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081097, 42.127235, 28.070044>,  <33.358620, 41.989155, 27.817230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081097, 42.127235, 28.070044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560554, 0.292108, -0.774888,
		-0.452117, -0.891911, -0.009160,
		-0.693807, 0.345205, 0.632032,
		32.872955, 42.230797, 28.259653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706303, 42.017319, 27.430445>,  <33.358620, 41.989155, 27.817230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706303, 42.017319, 27.430445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.613190, 42.254894, 27.738482>,  <32.557323, 42.397442, 27.923304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.613190, 42.254894, 27.738482>,  <32.706303, 42.017319, 27.430445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613190, 42.254894, 27.738482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624402, 0.515810, -0.586568,
		-0.745610, -0.617391, 0.250787,
		-0.232783, 0.593943, 0.770093,
		32.543354, 42.433079, 27.969509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950748, 42.017345, 27.505354>,  <32.706303, 42.017319, 27.430445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950748, 42.017345, 27.505354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.104191, 42.343987, 27.677868>,  <32.196255, 42.539970, 27.781376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.104191, 42.343987, 27.677868>,  <31.950748, 42.017345, 27.505354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104191, 42.343987, 27.677868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680021, 0.565753, -0.466363,
		-0.624835, -0.114385, 0.772332,
		0.383605, 0.816602, 0.431287,
		32.219273, 42.588966, 27.807255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412315, 42.464077, 27.647867>,  <31.950748, 42.017345, 27.505354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412315, 42.464077, 27.647867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711466, 42.728142, 27.675777>,  <31.890955, 42.886581, 27.692524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711466, 42.728142, 27.675777>,  <31.412315, 42.464077, 27.647867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711466, 42.728142, 27.675777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506631, 0.635521, -0.582613,
		-0.428963, 0.400371, 0.809749,
		0.747874, 0.660164, 0.069775,
		31.935827, 42.926189, 27.696711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140144, 43.148697, 27.749277>,  <31.412315, 42.464077, 27.647867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140144, 43.148697, 27.749277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.503220, 43.269314, 27.632540>,  <31.721066, 43.341682, 27.562498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.503220, 43.269314, 27.632540>,  <31.140144, 43.148697, 27.749277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503220, 43.269314, 27.632540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410311, 0.783585, -0.466519,
		0.088008, 0.543200, 0.834978,
		0.907689, 0.301543, -0.291843,
		31.775526, 43.359776, 27.544987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168339, 43.900219, 28.012304>,  <31.140144, 43.148697, 27.749277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168339, 43.900219, 28.012304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445278, 43.863220, 27.726059>,  <31.611441, 43.841022, 27.554312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445278, 43.863220, 27.726059>,  <31.168339, 43.900219, 28.012304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445278, 43.863220, 27.726059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451496, 0.718080, -0.529634,
		0.562856, 0.689786, 0.455399,
		0.692347, -0.092497, -0.715611,
		31.652983, 43.835472, 27.511375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411379, 44.660152, 27.888205>,  <31.168339, 43.900219, 28.012304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411379, 44.660152, 27.888205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.490559, 44.431789, 27.569487>,  <31.538067, 44.294773, 27.378256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.490559, 44.431789, 27.569487>,  <31.411379, 44.660152, 27.888205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490559, 44.431789, 27.569487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335798, 0.724198, -0.602310,
		0.920900, 0.386790, -0.048353,
		0.197950, -0.570904, -0.796797,
		31.549944, 44.260517, 27.330448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760208, 45.043610, 27.396830>,  <31.411379, 44.660152, 27.888205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760208, 45.043610, 27.396830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663383, 44.752892, 27.139717>,  <31.605289, 44.578461, 26.985449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663383, 44.752892, 27.139717>,  <31.760208, 45.043610, 27.396830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663383, 44.752892, 27.139717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384672, 0.680081, -0.624113,
		0.890749, 0.096188, -0.444200,
		-0.242060, -0.726800, -0.642782,
		31.590765, 44.534851, 26.946882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940018, 45.282307, 26.827068>,  <31.760208, 45.043610, 27.396830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940018, 45.282307, 26.827068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673763, 44.996117, 26.742201>,  <31.514009, 44.824402, 26.691280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673763, 44.996117, 26.742201>,  <31.940018, 45.282307, 26.827068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673763, 44.996117, 26.742201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383168, 0.571632, -0.725548,
		0.640399, -0.401653, -0.654648,
		-0.665636, -0.715480, -0.212172,
		31.474072, 44.781471, 26.678551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105820, 45.236786, 26.134748>,  <31.940018, 45.282307, 26.827068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105820, 45.236786, 26.134748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.742601, 45.078514, 26.189711>,  <31.524670, 44.983551, 26.222687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.742601, 45.078514, 26.189711>,  <32.105820, 45.236786, 26.134748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742601, 45.078514, 26.189711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366114, 0.590418, -0.719282,
		0.203482, -0.703449, -0.680995,
		-0.908050, -0.395683, 0.137404,
		31.470186, 44.959808, 26.230932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655319, 45.258949, 25.591120>,  <32.105820, 45.236786, 26.134748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655319, 45.258949, 25.591120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602924, 45.112591, 25.222563>,  <32.571487, 45.024776, 25.001429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602924, 45.112591, 25.222563>,  <32.655319, 45.258949, 25.591120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602924, 45.112591, 25.222563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264850, 0.882705, -0.388183,
		0.955352, -0.294877, -0.018715,
		-0.130986, -0.365895, -0.921392,
		32.563629, 45.002823, 24.946146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977577, 45.174545, 25.238644>,  <32.655319, 45.258949, 25.591120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977577, 45.174545, 25.238644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984520, 44.858273, 24.993851>,  <31.988686, 44.668510, 24.846975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984520, 44.858273, 24.993851>,  <31.977577, 45.174545, 25.238644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984520, 44.858273, 24.993851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708126, -0.422392, 0.565812,
		-0.705873, -0.443180, 0.552571,
		0.017355, -0.790681, -0.611982,
		31.989727, 44.621067, 24.810257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840000, 44.517567, 25.634310>,  <31.977577, 45.174545, 25.238644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840000, 44.517567, 25.634310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.057453, 44.476948, 25.301046>,  <32.187923, 44.452576, 25.101088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.057453, 44.476948, 25.301046>,  <31.840000, 44.517567, 25.634310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057453, 44.476948, 25.301046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607719, -0.637051, 0.474178,
		-0.578915, -0.764104, -0.284610,
		0.543632, -0.101546, -0.833158,
		32.220543, 44.446484, 25.051098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113918, 43.870701, 25.715260>,  <31.840000, 44.517567, 25.634310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113918, 43.870701, 25.715260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.363609, 44.037457, 25.450975>,  <32.513424, 44.137508, 25.292404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.363609, 44.037457, 25.450975>,  <32.113918, 43.870701, 25.715260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363609, 44.037457, 25.450975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751101, -0.552892, 0.360773,
		-0.214901, -0.721467, -0.658258,
		0.624231, 0.416887, -0.660712,
		32.550880, 44.162521, 25.252762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297562, 43.332684, 25.224602>,  <32.113918, 43.870701, 25.715260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297562, 43.332684, 25.224602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602150, 43.590626, 25.198305>,  <32.784904, 43.745392, 25.182528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602150, 43.590626, 25.198305>,  <32.297562, 43.332684, 25.224602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602150, 43.590626, 25.198305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648154, -0.756373, 0.088296,
		0.007211, -0.109847, -0.993922,
		0.761475, 0.644851, -0.065743,
		32.830593, 43.784081, 25.178581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666847, 43.042702, 24.778868>,  <32.297562, 43.332684, 25.224602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666847, 43.042702, 24.778868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917416, 43.292828, 24.965017>,  <33.067757, 43.442902, 25.076708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917416, 43.292828, 24.965017>,  <32.666847, 43.042702, 24.778868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917416, 43.292828, 24.965017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656495, -0.745121, 0.117515,
		0.420245, 0.231902, -0.877277,
		0.626426, 0.625313, 0.465376,
		33.105343, 43.480423, 25.104630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339058, 42.717278, 24.757681>,  <32.666847, 43.042702, 24.778868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339058, 42.717278, 24.757681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438339, 42.994743, 25.028156>,  <33.497906, 43.161221, 25.190441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438339, 42.994743, 25.028156>,  <33.339058, 42.717278, 24.757681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438339, 42.994743, 25.028156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713923, -0.602789, 0.356314,
		0.654760, 0.394311, -0.644831,
		0.248199, 0.693660, 0.676190,
		33.512798, 43.202843, 25.231014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091846, 42.829311, 24.790951>,  <33.339058, 42.717278, 24.757681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091846, 42.829311, 24.790951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965565, 42.957584, 25.148161>,  <33.889793, 43.034550, 25.362488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965565, 42.957584, 25.148161>,  <34.091846, 42.829311, 24.790951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965565, 42.957584, 25.148161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723188, -0.527965, 0.445255,
		0.614271, 0.786395, -0.065231,
		-0.315706, 0.320681, 0.893025,
		33.870853, 43.053787, 25.416069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648422, 42.891273, 25.217649>,  <34.091846, 42.829311, 24.790951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648422, 42.891273, 25.217649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345627, 42.838223, 25.473577>,  <34.163948, 42.806393, 25.627134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345627, 42.838223, 25.473577>,  <34.648422, 42.891273, 25.217649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345627, 42.838223, 25.473577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528880, -0.699405, 0.480749,
		0.383732, 0.702312, 0.599590,
		-0.756992, -0.132632, 0.639822,
		34.118530, 42.798431, 25.665524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012157, 42.623970, 25.726986>,  <34.648422, 42.891273, 25.217649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012157, 42.623970, 25.726986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639282, 42.537312, 25.842978>,  <34.415558, 42.485317, 25.912573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639282, 42.537312, 25.842978>,  <35.012157, 42.623970, 25.726986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639282, 42.537312, 25.842978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346653, -0.764894, 0.542927,
		0.104181, 0.606633, 0.788126,
		-0.932190, -0.216643, 0.289979,
		34.359627, 42.472317, 25.929972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118416, 42.391983, 26.457966>,  <35.012157, 42.623970, 25.726986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118416, 42.391983, 26.457966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770893, 42.255684, 26.314264>,  <34.562378, 42.173904, 26.228043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770893, 42.255684, 26.314264>,  <35.118416, 42.391983, 26.457966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770893, 42.255684, 26.314264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146210, -0.869746, 0.471343,
		-0.473068, 0.356980, 0.805464,
		-0.868809, -0.340744, -0.359255,
		34.510250, 42.153461, 26.206488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792744, 42.151524, 26.998005>,  <35.118416, 42.391983, 26.457966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792744, 42.151524, 26.998005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614059, 41.955830, 26.698380>,  <34.506847, 41.838413, 26.518604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614059, 41.955830, 26.698380>,  <34.792744, 42.151524, 26.998005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614059, 41.955830, 26.698380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035804, -0.826798, 0.561359,
		-0.893961, 0.277585, 0.351824,
		-0.446712, -0.489236, -0.749064,
		34.480045, 41.809059, 26.473660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225323, 41.824230, 27.308632>,  <34.792744, 42.151524, 26.998005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225323, 41.824230, 27.308632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313328, 41.623688, 26.973911>,  <34.366131, 41.503365, 26.773079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313328, 41.623688, 26.973911>,  <34.225323, 41.824230, 27.308632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313328, 41.623688, 26.973911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079346, -0.845783, 0.527594,
		-0.972264, -0.182476, -0.146305,
		0.220016, -0.501352, -0.836803,
		34.379333, 41.473282, 26.722870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916138, 41.189182, 27.316904>,  <34.225323, 41.824230, 27.308632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916138, 41.189182, 27.316904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190449, 41.109245, 27.036968>,  <34.355034, 41.061283, 26.869007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190449, 41.109245, 27.036968>,  <33.916138, 41.189182, 27.316904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190449, 41.109245, 27.036968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220120, -0.859583, 0.461156,
		-0.693726, -0.470298, -0.545494,
		0.685778, -0.199842, -0.699837,
		34.396183, 41.049294, 26.827017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805172, 40.435787, 27.124887>,  <33.916138, 41.189182, 27.316904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805172, 40.435787, 27.124887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181122, 40.548779, 27.048113>,  <34.406693, 40.616573, 27.002048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181122, 40.548779, 27.048113>,  <33.805172, 40.435787, 27.124887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181122, 40.548779, 27.048113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334776, -0.650920, 0.681343,
		0.067529, -0.704634, -0.706350,
		0.939875, 0.282479, -0.191939,
		34.463085, 40.633522, 26.990532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204044, 39.785061, 27.033764>,  <33.805172, 40.435787, 27.124887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204044, 39.785061, 27.033764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.473656, 40.069714, 27.113026>,  <34.635422, 40.240505, 27.160583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.473656, 40.069714, 27.113026>,  <34.204044, 39.785061, 27.033764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473656, 40.069714, 27.113026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505941, -0.640174, 0.578101,
		0.538251, -0.289401, -0.791539,
		0.674025, 0.711635, 0.198155,
		34.675865, 40.283203, 27.172472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367542, 39.511299, 26.287548>,  <34.204044, 39.785061, 27.033764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367542, 39.511299, 26.287548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248302, 39.226486, 26.033260>,  <34.176758, 39.055599, 25.880688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248302, 39.226486, 26.033260>,  <34.367542, 39.511299, 26.287548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248302, 39.226486, 26.033260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357656, 0.700802, -0.617219,
		0.884997, 0.043376, -0.463573,
		-0.298100, -0.712036, -0.635721,
		34.158871, 39.012875, 25.842545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540031, 39.741283, 25.666237>,  <34.367542, 39.511299, 26.287548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540031, 39.741283, 25.666237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235687, 39.487347, 25.612484>,  <34.053082, 39.334984, 25.580233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235687, 39.487347, 25.612484>,  <34.540031, 39.741283, 25.666237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235687, 39.487347, 25.612484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439990, 0.656929, -0.612253,
		0.476966, -0.406713, -0.779158,
		-0.760863, -0.634845, -0.134383,
		34.007427, 39.296894, 25.572168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468460, 39.809273, 24.903393>,  <34.540031, 39.741283, 25.666237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468460, 39.809273, 24.903393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148148, 39.612144, 25.039555>,  <33.955959, 39.493870, 25.121252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148148, 39.612144, 25.039555>,  <34.468460, 39.809273, 24.903393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148148, 39.612144, 25.039555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597779, 0.622040, -0.505695,
		0.037470, -0.608439, -0.792715,
		-0.800785, -0.492816, 0.340404,
		33.907913, 39.464298, 25.141676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069214, 39.446148, 24.288774>,  <34.468460, 39.809273, 24.903393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069214, 39.446148, 24.288774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828846, 39.519737, 24.599913>,  <33.684624, 39.563892, 24.786596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828846, 39.519737, 24.599913>,  <34.069214, 39.446148, 24.288774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828846, 39.519737, 24.599913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639276, 0.473542, -0.605875,
		-0.479811, -0.861342, -0.166949,
		-0.600923, 0.183978, 0.777846,
		33.648571, 39.574932, 24.833267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434395, 39.185478, 24.104734>,  <34.069214, 39.446148, 24.288774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434395, 39.185478, 24.104734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331829, 39.444729, 24.391562>,  <33.270290, 39.600277, 24.563658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331829, 39.444729, 24.391562>,  <33.434395, 39.185478, 24.104734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331829, 39.444729, 24.391562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568190, 0.499086, -0.654273,
		-0.781930, -0.575194, 0.240286,
		-0.256411, 0.648124, 0.717070,
		33.254906, 39.639168, 24.606682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730438, 39.297215, 23.933723>,  <33.434395, 39.185478, 24.104734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730438, 39.297215, 23.933723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.820999, 39.591694, 24.188833>,  <32.875336, 39.768379, 24.341900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.820999, 39.591694, 24.188833>,  <32.730438, 39.297215, 23.933723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820999, 39.591694, 24.188833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710114, 0.572930, -0.409254,
		-0.666692, -0.360236, 0.652497,
		0.226407, 0.736194, 0.637776,
		32.888920, 39.812553, 24.380167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142654, 39.517605, 24.042664>,  <32.730438, 39.297215, 23.933723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142654, 39.517605, 24.042664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.396324, 39.810192, 24.142895>,  <32.548527, 39.985744, 24.203033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.396324, 39.810192, 24.142895>,  <32.142654, 39.517605, 24.042664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396324, 39.810192, 24.142895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593961, 0.668354, -0.447786,
		-0.495013, 0.135140, 0.858312,
		0.634170, 0.731464, 0.250576,
		32.586575, 40.029633, 24.218067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528564, 39.400143, 24.150469>,  <32.142654, 39.517605, 24.042664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528564, 39.400143, 24.150469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225264, 39.140923, 24.121958>,  <31.043283, 38.985390, 24.104851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225264, 39.140923, 24.121958>,  <31.528564, 39.400143, 24.150469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225264, 39.140923, 24.121958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567444, -0.709835, 0.417303,
		-0.321028, 0.275976, 0.905968,
		-0.758254, -0.648052, -0.071276,
		30.997787, 38.946507, 24.100574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549120, 38.996235, 24.752398>,  <31.528564, 39.400143, 24.150469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549120, 38.996235, 24.752398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350786, 38.785629, 24.476156>,  <31.231785, 38.659267, 24.310411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350786, 38.785629, 24.476156>,  <31.549120, 38.996235, 24.752398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350786, 38.785629, 24.476156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361257, -0.848224, 0.387310,
		-0.789709, -0.057443, 0.610786,
		-0.495836, -0.526513, -0.690602,
		31.202036, 38.627674, 24.268976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273573, 38.472210, 25.058899>,  <31.549120, 38.996235, 24.752398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273573, 38.472210, 25.058899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241283, 38.310890, 24.694298>,  <31.221910, 38.214100, 24.475538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241283, 38.310890, 24.694298>,  <31.273573, 38.472210, 25.058899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241283, 38.310890, 24.694298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283685, -0.885960, 0.366875,
		-0.955514, -0.228964, 0.185927,
		-0.080723, -0.403299, -0.911501,
		31.217066, 38.189899, 24.420847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991289, 37.751606, 25.182364>,  <31.273573, 38.472210, 25.058899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991289, 37.751606, 25.182364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.163612, 37.759060, 24.821463>,  <31.267006, 37.763531, 24.604921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.163612, 37.759060, 24.821463>,  <30.991289, 37.751606, 25.182364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163612, 37.759060, 24.821463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446358, -0.873329, 0.195092,
		-0.784328, -0.486774, -0.384554,
		0.430807, 0.018633, -0.902252,
		31.292854, 37.764648, 24.550787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826088, 37.123108, 24.907343>,  <30.991289, 37.751606, 25.182364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826088, 37.123108, 24.907343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.152031, 37.269577, 24.727596>,  <31.347597, 37.357460, 24.619749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.152031, 37.269577, 24.727596>,  <30.826088, 37.123108, 24.907343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152031, 37.269577, 24.727596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522896, -0.798910, 0.297189,
		-0.250180, -0.477138, -0.842466,
		0.814855, 0.366171, -0.449365,
		31.396488, 37.379429, 24.592787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052814, 36.567005, 24.519753>,  <30.826088, 37.123108, 24.907343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052814, 36.567005, 24.519753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355598, 36.824001, 24.567440>,  <31.537270, 36.978199, 24.596052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355598, 36.824001, 24.567440>,  <31.052814, 36.567005, 24.519753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355598, 36.824001, 24.567440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637921, -0.766108, 0.078332,
		0.141661, 0.016758, -0.989773,
		0.756960, 0.642494, 0.119218,
		31.582687, 37.016750, 24.603205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540030, 36.250851, 24.130527>,  <31.052814, 36.567005, 24.519753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540030, 36.250851, 24.130527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721745, 36.527294, 24.355383>,  <31.830774, 36.693161, 24.490295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721745, 36.527294, 24.355383>,  <31.540030, 36.250851, 24.130527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721745, 36.527294, 24.355383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703003, -0.665690, 0.250287,
		0.547184, 0.281481, -0.788263,
		0.454287, 0.691104, 0.562137,
		31.858030, 36.734627, 24.524023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.836363, 44.298946, 26.410040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217190, 44.314915, 26.531347>,  <29.445686, 44.324493, 26.604132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217190, 44.314915, 26.531347>,  <28.836363, 44.298946, 26.410040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217190, 44.314915, 26.531347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090359, -0.910499, 0.403518,
		0.292232, -0.411580, -0.863251,
		0.952069, 0.039918, 0.303267,
		29.502811, 44.326889, 26.622328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099638, 43.660591, 26.362747>,  <28.836363, 44.298946, 26.410040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099638, 43.660591, 26.362747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.327705, 43.834732, 26.641424>,  <29.464546, 43.939217, 26.808630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.327705, 43.834732, 26.641424>,  <29.099638, 43.660591, 26.362747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327705, 43.834732, 26.641424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007972, -0.845069, 0.534597,
		0.821491, -0.310364, -0.478360,
		0.570167, 0.435353, 0.696691,
		29.498755, 43.965340, 26.850431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677515, 43.194241, 26.498577>,  <29.099638, 43.660591, 26.362747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677515, 43.194241, 26.498577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620705, 43.440002, 26.809019>,  <29.586618, 43.587460, 26.995285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620705, 43.440002, 26.809019>,  <29.677515, 43.194241, 26.498577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620705, 43.440002, 26.809019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062119, -0.776975, 0.626459,
		0.987912, 0.137183, 0.072184,
		-0.142025, 0.614402, 0.776105,
		29.578096, 43.624325, 27.041851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213100, 43.010300, 26.915640>,  <29.677515, 43.194241, 26.498577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213100, 43.010300, 26.915640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.926399, 43.177135, 27.139175>,  <29.754377, 43.277237, 27.273296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.926399, 43.177135, 27.139175>,  <30.213100, 43.010300, 26.915640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926399, 43.177135, 27.139175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138109, -0.700621, 0.700040,
		0.683511, 0.578938, 0.444571,
		-0.716755, 0.417086, 0.558839,
		29.711372, 43.302261, 27.306828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450367, 42.960102, 27.598228>,  <30.213100, 43.010300, 26.915640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450367, 42.960102, 27.598228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066284, 43.043030, 27.673084>,  <29.835835, 43.092785, 27.717999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066284, 43.043030, 27.673084>,  <30.450367, 42.960102, 27.598228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066284, 43.043030, 27.673084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049850, -0.532072, 0.845230,
		0.274805, 0.820925, 0.500564,
		-0.960207, 0.207320, 0.187139,
		29.778221, 43.105225, 27.729225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410570, 43.184605, 28.343273>,  <30.450367, 42.960102, 27.598228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410570, 43.184605, 28.343273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.065077, 43.043861, 28.198965>,  <29.857780, 42.959415, 28.112381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.065077, 43.043861, 28.198965>,  <30.410570, 43.184605, 28.343273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065077, 43.043861, 28.198965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046581, -0.768566, 0.638072,
		-0.501788, 0.534321, 0.680228,
		-0.863736, -0.351863, -0.360768,
		29.805956, 42.938301, 28.090734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969877, 43.109364, 28.906910>,  <30.410570, 43.184605, 28.343273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969877, 43.109364, 28.906910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.792755, 42.879681, 28.631460>,  <29.686481, 42.741871, 28.466190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.792755, 42.879681, 28.631460>,  <29.969877, 43.109364, 28.906910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792755, 42.879681, 28.631460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070658, -0.743289, 0.665228,
		-0.893829, 0.343224, 0.288560,
		-0.442806, -0.574211, -0.688625,
		29.659914, 42.707417, 28.424873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364101, 42.844784, 29.232075>,  <29.969877, 43.109364, 28.906910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364101, 42.844784, 29.232075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422668, 42.603188, 28.918705>,  <29.457809, 42.458229, 28.730682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422668, 42.603188, 28.918705>,  <29.364101, 42.844784, 29.232075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422668, 42.603188, 28.918705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012081, -0.792993, 0.609111,
		-0.989149, -0.079720, -0.123405,
		0.146418, -0.603992, -0.783426,
		29.466595, 42.421989, 28.683678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981838, 42.314743, 29.384718>,  <29.364101, 42.844784, 29.232075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981838, 42.314743, 29.384718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.201504, 42.150505, 29.093559>,  <29.333303, 42.051964, 28.918865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.201504, 42.150505, 29.093559>,  <28.981838, 42.314743, 29.384718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201504, 42.150505, 29.093559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083740, -0.839568, 0.536762,
		-0.831497, -0.355734, -0.426694,
		0.549182, -0.410584, -0.727887,
		29.366253, 42.027328, 28.875191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820833, 41.572670, 29.358664>,  <28.981838, 42.314743, 29.384718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820833, 41.572670, 29.358664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178619, 41.622417, 29.186869>,  <29.393291, 41.652267, 29.083792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178619, 41.622417, 29.186869>,  <28.820833, 41.572670, 29.358664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178619, 41.622417, 29.186869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286207, -0.897231, 0.336247,
		-0.343530, -0.423685, -0.838140,
		0.894468, 0.124371, -0.429487,
		29.446960, 41.659729, 29.058022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968683, 40.923996, 29.079498>,  <28.820833, 41.572670, 29.358664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968683, 40.923996, 29.079498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341690, 41.066917, 29.058533>,  <29.565495, 41.152672, 29.045954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341690, 41.066917, 29.058533>,  <28.968683, 40.923996, 29.079498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341690, 41.066917, 29.058533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342605, -0.829424, 0.441222,
		0.114179, -0.429403, -0.895866,
		0.932515, 0.357307, -0.052413,
		29.621445, 41.174110, 29.042809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418522, 40.405079, 28.823767>,  <28.968683, 40.923996, 29.079498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418522, 40.405079, 28.823767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658680, 40.648022, 29.031860>,  <29.802774, 40.793785, 29.156717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658680, 40.648022, 29.031860>,  <29.418522, 40.405079, 28.823767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658680, 40.648022, 29.031860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511505, -0.791719, 0.333981,
		0.614726, 0.065583, -0.786009,
		0.600396, 0.607354, 0.520236,
		29.838799, 40.830227, 29.187931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529978, 39.828201, 28.201622>,  <29.418522, 40.405079, 28.823767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529978, 39.828201, 28.201622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162073, 39.672115, 28.184809>,  <28.941330, 39.578465, 28.174721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162073, 39.672115, 28.184809>,  <29.529978, 39.828201, 28.201622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162073, 39.672115, 28.184809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280724, 0.728942, -0.624370,
		0.274279, -0.562473, -0.779997,
		-0.919764, -0.390216, -0.042034,
		28.886145, 39.555050, 28.172199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366199, 39.809719, 27.461851>,  <29.529978, 39.828201, 28.201622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366199, 39.809719, 27.461851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.004440, 39.764275, 27.626366>,  <28.787384, 39.737007, 27.725075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.004440, 39.764275, 27.626366>,  <29.366199, 39.809719, 27.461851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004440, 39.764275, 27.626366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383896, 0.637387, -0.668103,
		-0.186247, -0.762123, -0.620065,
		-0.904398, -0.113608, 0.411287,
		28.733120, 39.730190, 27.749752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013258, 39.579044, 26.878328>,  <29.366199, 39.809719, 27.461851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013258, 39.579044, 26.878328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.785986, 39.737438, 27.166874>,  <28.649624, 39.832474, 27.340002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.785986, 39.737438, 27.166874>,  <29.013258, 39.579044, 26.878328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785986, 39.737438, 27.166874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377587, 0.653424, -0.656098,
		-0.731164, -0.645159, -0.221742,
		-0.568179, 0.395989, 0.721364,
		28.615532, 39.856236, 27.383284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408533, 39.706310, 26.548201>,  <29.013258, 39.579044, 26.878328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408533, 39.706310, 26.548201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379208, 39.936474, 26.874031>,  <28.361612, 40.074570, 27.069529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379208, 39.936474, 26.874031>,  <28.408533, 39.706310, 26.548201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379208, 39.936474, 26.874031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480540, 0.695326, -0.534419,
		-0.873903, -0.430617, 0.225528,
		-0.073314, 0.575405, 0.814576,
		28.357214, 40.109097, 27.118404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656849, 39.936211, 26.559610>,  <28.408533, 39.706310, 26.548201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656849, 39.936211, 26.559610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.864511, 40.203468, 26.772799>,  <27.989109, 40.363823, 26.900711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.864511, 40.203468, 26.772799>,  <27.656849, 39.936211, 26.559610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864511, 40.203468, 26.772799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425465, 0.742869, -0.516842,
		-0.741255, 0.041560, 0.669936,
		0.519154, 0.668146, 0.532973,
		28.020258, 40.403912, 26.932690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176016, 40.398296, 26.713837>,  <27.656849, 39.936211, 26.559610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176016, 40.398296, 26.713837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.531406, 40.565224, 26.790209>,  <27.744640, 40.665379, 26.836033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.531406, 40.565224, 26.790209>,  <27.176016, 40.398296, 26.713837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531406, 40.565224, 26.790209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268484, 0.810082, -0.521233,
		-0.372192, 0.411841, 0.831782,
		0.888476, 0.417319, 0.190933,
		27.797949, 40.690418, 26.847488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985209, 41.082928, 26.809364>,  <27.176016, 40.398296, 26.713837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985209, 41.082928, 26.809364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.378738, 41.087879, 26.737883>,  <27.614857, 41.090851, 26.694994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.378738, 41.087879, 26.737883>,  <26.985209, 41.082928, 26.809364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378738, 41.087879, 26.737883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119763, 0.787312, -0.604810,
		0.133213, 0.616430, 0.776059,
		0.983825, 0.012374, -0.178706,
		27.673885, 41.091591, 26.684271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093374, 41.726494, 26.528877>,  <26.985209, 41.082928, 26.809364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093374, 41.726494, 26.528877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.459389, 41.599285, 26.429619>,  <27.678997, 41.522961, 26.370064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.459389, 41.599285, 26.429619>,  <27.093374, 41.726494, 26.528877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459389, 41.599285, 26.429619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050232, 0.700219, -0.712158,
		0.400236, 0.639184, 0.656699,
		0.915034, -0.318019, -0.248145,
		27.733898, 41.503880, 26.355175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555342, 42.275127, 26.550953>,  <27.093374, 41.726494, 26.528877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555342, 42.275127, 26.550953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677477, 41.986263, 26.302677>,  <27.750759, 41.812946, 26.153711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677477, 41.986263, 26.302677>,  <27.555342, 42.275127, 26.550953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677477, 41.986263, 26.302677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007599, 0.653644, -0.756764,
		0.952213, 0.226354, 0.205071,
		0.305340, -0.722159, -0.620688,
		27.769079, 41.769615, 26.116470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146461, 42.552063, 26.037125>,  <27.555342, 42.275127, 26.550953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146461, 42.552063, 26.037125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.032337, 42.213886, 25.856539>,  <27.963863, 42.010979, 25.748188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.032337, 42.213886, 25.856539>,  <28.146461, 42.552063, 26.037125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032337, 42.213886, 25.856539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020632, 0.476352, -0.879013,
		0.958213, -0.241477, -0.153352,
		-0.285311, -0.845445, -0.451464,
		27.946743, 41.960251, 25.721100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641745, 42.414829, 25.454235>,  <28.146461, 42.552063, 26.037125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641745, 42.414829, 25.454235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307121, 42.218212, 25.357441>,  <28.106348, 42.100243, 25.299364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.307121, 42.218212, 25.357441>,  <28.641745, 42.414829, 25.454235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307121, 42.218212, 25.357441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010996, 0.426529, -0.904407,
		0.547769, -0.759249, -0.351412,
		-0.836557, -0.491542, -0.241988,
		28.056154, 42.070751, 25.284845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771801, 42.142754, 24.753654>,  <28.641745, 42.414829, 25.454235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771801, 42.142754, 24.753654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374275, 42.152115, 24.797073>,  <28.135759, 42.157734, 24.823126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374275, 42.152115, 24.797073>,  <28.771801, 42.142754, 24.753654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374275, 42.152115, 24.797073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092297, 0.369393, -0.924678,
		-0.061741, -0.928978, -0.364948,
		-0.993815, 0.023407, 0.108548,
		28.076130, 42.159138, 24.829638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504267, 42.049191, 24.081566>,  <28.771801, 42.142754, 24.753654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504267, 42.049191, 24.081566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.205564, 42.214249, 24.290211>,  <28.026342, 42.313282, 24.415398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.205564, 42.214249, 24.290211>,  <28.504267, 42.049191, 24.081566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205564, 42.214249, 24.290211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351474, 0.420970, -0.836212,
		-0.564642, -0.807779, -0.169328,
		-0.746757, 0.412645, 0.521611,
		27.981537, 42.338043, 24.446693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543020, 41.358524, 23.662371>,  <28.504267, 42.049191, 24.081566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543020, 41.358524, 23.662371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688635, 41.273621, 23.299620>,  <28.776005, 41.222679, 23.081970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688635, 41.273621, 23.299620>,  <28.543020, 41.358524, 23.662371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688635, 41.273621, 23.299620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392722, -0.847915, 0.356102,
		-0.844540, -0.485784, -0.225313,
		0.364036, -0.212257, -0.906876,
		28.797846, 41.209946, 23.027557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220514, 40.667797, 23.424986>,  <28.543020, 41.358524, 23.662371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220514, 40.667797, 23.424986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562180, 40.735767, 23.228405>,  <28.767179, 40.776550, 23.110456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562180, 40.735767, 23.228405>,  <28.220514, 40.667797, 23.424986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562180, 40.735767, 23.228405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392939, -0.829936, 0.395986,
		-0.340588, -0.531350, -0.775672,
		0.854166, 0.169924, -0.491454,
		28.818430, 40.786743, 23.080969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458118, 39.951694, 23.199247>,  <28.220514, 40.667797, 23.424986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458118, 39.951694, 23.199247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787394, 40.174763, 23.156616>,  <28.984959, 40.308605, 23.131039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787394, 40.174763, 23.156616>,  <28.458118, 39.951694, 23.199247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787394, 40.174763, 23.156616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564204, -0.782482, 0.263431,
		0.063515, -0.276984, -0.958773,
		0.823189, 0.557675, -0.106576,
		29.034349, 40.342064, 23.124643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879133, 39.496208, 22.972855>,  <28.458118, 39.951694, 23.199247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879133, 39.496208, 22.972855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113422, 39.790157, 23.109613>,  <29.253996, 39.966526, 23.191668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113422, 39.790157, 23.109613>,  <28.879133, 39.496208, 22.972855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113422, 39.790157, 23.109613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658840, -0.677375, 0.327250,
		0.472078, 0.033577, -0.880917,
		0.585723, 0.734871, 0.341896,
		29.289139, 40.010620, 23.212183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513777, 39.463966, 22.676857>,  <28.879133, 39.496208, 22.972855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513777, 39.463966, 22.676857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605015, 39.672218, 23.005957>,  <29.659758, 39.797169, 23.203417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605015, 39.672218, 23.005957>,  <29.513777, 39.463966, 22.676857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605015, 39.672218, 23.005957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790884, -0.591932, 0.155307,
		0.567869, 0.615275, -0.546773,
		0.228096, 0.520628, 0.822751,
		29.673443, 39.828407, 23.252783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195955, 39.517536, 22.659798>,  <29.513777, 39.463966, 22.676857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195955, 39.517536, 22.659798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.143517, 39.604973, 23.046585>,  <30.112053, 39.657436, 23.278658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.143517, 39.604973, 23.046585>,  <30.195955, 39.517536, 22.659798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143517, 39.604973, 23.046585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826465, -0.514588, 0.228375,
		0.547512, 0.829106, -0.113196,
		-0.131098, 0.218591, 0.966970,
		30.104187, 39.670551, 23.336676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835564, 39.751255, 22.977043>,  <30.195955, 39.517536, 22.659798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835564, 39.751255, 22.977043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.622303, 39.599453, 23.279491>,  <30.494347, 39.508369, 23.460960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.622303, 39.599453, 23.279491>,  <30.835564, 39.751255, 22.977043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622303, 39.599453, 23.279491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783771, -0.558046, 0.272558,
		0.318512, 0.737942, 0.594972,
		-0.533153, -0.379509, 0.756122,
		30.462357, 39.485600, 23.506329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238039, 39.761742, 23.610088>,  <30.835564, 39.751255, 22.977043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238039, 39.761742, 23.610088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.960369, 39.494980, 23.718426>,  <30.793766, 39.334923, 23.783428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.960369, 39.494980, 23.718426>,  <31.238039, 39.761742, 23.610088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960369, 39.494980, 23.718426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715578, -0.598666, 0.359926,
		-0.077892, 0.443661, 0.892803,
		-0.694176, -0.666906, 0.270843,
		30.752117, 39.294907, 23.799679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622486, 40.167419, 24.115980>,  <31.238039, 39.761742, 23.610088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622486, 40.167419, 24.115980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002728, 40.288315, 24.087671>,  <32.230873, 40.360851, 24.070686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002728, 40.288315, 24.087671>,  <31.622486, 40.167419, 24.115980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002728, 40.288315, 24.087671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279480, 0.734116, -0.618842,
		-0.135081, 0.608052, 0.782321,
		0.950602, 0.302236, -0.070773,
		32.287907, 40.378986, 24.066439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731112, 40.968853, 24.207129>,  <31.622486, 40.167419, 24.115980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731112, 40.968853, 24.207129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049492, 40.876720, 23.983196>,  <32.240520, 40.821442, 23.848837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049492, 40.876720, 23.983196>,  <31.731112, 40.968853, 24.207129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049492, 40.876720, 23.983196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126223, 0.841312, -0.525606,
		0.592056, 0.489020, 0.640570,
		0.795951, -0.230333, -0.559829,
		32.288277, 40.807621, 23.815247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148861, 41.553818, 24.193903>,  <31.731112, 40.968853, 24.207129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148861, 41.553818, 24.193903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309006, 41.361885, 23.881628>,  <32.405094, 41.246727, 23.694263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309006, 41.361885, 23.881628>,  <32.148861, 41.553818, 24.193903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309006, 41.361885, 23.881628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133770, 0.812217, -0.567811,
		0.906539, 0.331764, 0.260997,
		0.400365, -0.479829, -0.780687,
		32.429115, 41.217937, 23.647423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670586, 41.988163, 23.877096>,  <32.148861, 41.553818, 24.193903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670586, 41.988163, 23.877096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.536491, 41.740734, 23.592846>,  <32.456036, 41.592278, 23.422297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.536491, 41.740734, 23.592846>,  <32.670586, 41.988163, 23.877096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536491, 41.740734, 23.592846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198700, 0.783726, -0.588465,
		0.920941, -0.056076, -0.385646,
		-0.335239, -0.618569, -0.710624,
		32.435921, 41.555164, 23.379660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896877, 42.300434, 23.213947>,  <32.670586, 41.988163, 23.877096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896877, 42.300434, 23.213947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.600479, 42.044807, 23.131472>,  <32.422642, 41.891430, 23.081985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.600479, 42.044807, 23.131472>,  <32.896877, 42.300434, 23.213947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600479, 42.044807, 23.131472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493351, 0.726408, -0.478473,
		0.455556, -0.252823, -0.853551,
		-0.740995, -0.639071, -0.206189,
		32.378181, 41.853085, 23.069614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811272, 42.312527, 22.505316>,  <32.896877, 42.300434, 23.213947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811272, 42.312527, 22.505316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.479019, 42.214470, 22.705296>,  <32.279667, 42.155636, 22.825283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.479019, 42.214470, 22.705296>,  <32.811272, 42.312527, 22.505316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479019, 42.214470, 22.705296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490048, 0.748167, -0.447325,
		-0.264386, -0.616563, -0.741586,
		-0.830634, -0.245147, 0.499951,
		32.229828, 42.140926, 22.855280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328671, 42.775532, 22.187214>,  <32.811272, 42.312527, 22.505316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328671, 42.775532, 22.187214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.093624, 42.666561, 22.491974>,  <31.952597, 42.601181, 22.674829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.093624, 42.666561, 22.491974>,  <32.328671, 42.775532, 22.187214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093624, 42.666561, 22.491974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606532, 0.771548, -0.191917,
		-0.535560, -0.574890, -0.618609,
		-0.587618, -0.272423, 0.761899,
		31.917339, 42.584835, 22.720543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672716, 42.906887, 21.837185>,  <32.328671, 42.775532, 22.187214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672716, 42.906887, 21.837185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.592485, 42.892918, 22.228807>,  <31.544346, 42.884537, 22.463781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.592485, 42.892918, 22.228807>,  <31.672716, 42.906887, 21.837185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592485, 42.892918, 22.228807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545433, 0.834135, -0.081990,
		-0.813801, -0.550454, -0.186356,
		-0.200578, -0.034921, 0.979055,
		31.532312, 42.882442, 22.522524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945728, 43.063923, 21.906342>,  <31.672716, 42.906887, 21.837185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945728, 43.063923, 21.906342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129179, 43.146637, 22.252035>,  <31.239250, 43.196266, 22.459452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129179, 43.146637, 22.252035>,  <30.945728, 43.063923, 21.906342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129179, 43.146637, 22.252035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441435, 0.897079, 0.019610,
		-0.771230, -0.390497, 0.502709,
		0.458627, 0.206790, 0.864233,
		31.266768, 43.208675, 22.511305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.701538, 30.097435, 30.367441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534473, 30.268431, 30.688143>,  <37.434235, 30.371027, 30.880564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534473, 30.268431, 30.688143>,  <37.701538, 30.097435, 30.367441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534473, 30.268431, 30.688143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318060, 0.757788, -0.569733,
		-0.851114, -0.492963, -0.180533,
		-0.417663, 0.427487, 0.801756,
		37.409176, 30.396677, 30.928669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963322, 30.191061, 30.263691>,  <37.701538, 30.097435, 30.367441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963322, 30.191061, 30.263691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090591, 30.461830, 30.529182>,  <37.166954, 30.624292, 30.688478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090591, 30.461830, 30.529182>,  <36.963322, 30.191061, 30.263691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090591, 30.461830, 30.529182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391976, 0.731403, -0.558036,
		-0.863202, -0.082611, 0.498054,
		0.318178, 0.676924, 0.663730,
		37.186047, 30.664907, 30.728302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375633, 30.546257, 30.544014>,  <36.963322, 30.191061, 30.263691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375633, 30.546257, 30.544014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697594, 30.779123, 30.590000>,  <36.890770, 30.918844, 30.617592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697594, 30.779123, 30.590000>,  <36.375633, 30.546257, 30.544014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697594, 30.779123, 30.590000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477055, 0.750038, -0.458106,
		-0.352925, 0.313884, 0.881431,
		0.804899, 0.582168, 0.114967,
		36.939064, 30.953773, 30.624491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178860, 31.121187, 30.890554>,  <36.375633, 30.546257, 30.544014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178860, 31.121187, 30.890554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502056, 31.220634, 30.676886>,  <36.695972, 31.280304, 30.548685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502056, 31.220634, 30.676886>,  <36.178860, 31.121187, 30.890554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502056, 31.220634, 30.676886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507830, 0.753579, -0.417406,
		0.298765, 0.608528, 0.735141,
		0.807990, 0.248620, -0.534172,
		36.744453, 31.295221, 30.516634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135746, 31.826288, 30.855539>,  <36.178860, 31.121187, 30.890554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135746, 31.826288, 30.855539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398495, 31.736483, 30.567617>,  <36.556145, 31.682600, 30.394865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398495, 31.736483, 30.567617>,  <36.135746, 31.826288, 30.855539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398495, 31.736483, 30.567617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278444, 0.814934, -0.508283,
		0.700708, 0.534301, 0.472791,
		0.656869, -0.224512, -0.719803,
		36.595554, 31.669128, 30.351677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557800, 32.414150, 30.836485>,  <36.135746, 31.826288, 30.855539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557800, 32.414150, 30.836485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578846, 32.218384, 30.488300>,  <36.591473, 32.100925, 30.279390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578846, 32.218384, 30.488300>,  <36.557800, 32.414150, 30.836485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578846, 32.218384, 30.488300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360181, 0.803697, -0.473647,
		0.931398, 0.338444, -0.133993,
		0.052613, -0.489416, -0.870462,
		36.594631, 32.071560, 30.227161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820072, 32.841114, 30.351976>,  <36.557800, 32.414150, 30.836485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820072, 32.841114, 30.351976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630783, 32.576103, 30.119726>,  <36.517212, 32.417099, 29.980375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630783, 32.576103, 30.119726>,  <36.820072, 32.841114, 30.351976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630783, 32.576103, 30.119726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244180, 0.731915, -0.636142,
		0.846428, -0.159257, -0.508132,
		-0.473219, -0.662523, -0.580626,
		36.488815, 32.377346, 29.945539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130459, 32.878284, 29.638041>,  <36.820072, 32.841114, 30.351976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130459, 32.878284, 29.638041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783031, 32.682968, 29.604191>,  <36.574574, 32.565781, 29.583881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783031, 32.682968, 29.604191>,  <37.130459, 32.878284, 29.638041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783031, 32.682968, 29.604191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290633, 0.640223, -0.711089,
		0.401394, -0.593036, -0.697991,
		-0.868570, -0.488286, -0.084626,
		36.522461, 32.536484, 29.578802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990101, 33.035576, 28.919205>,  <37.130459, 32.878284, 29.638041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990101, 33.035576, 28.919205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645828, 32.877811, 29.047998>,  <36.439266, 32.783154, 29.125275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645828, 32.877811, 29.047998>,  <36.990101, 33.035576, 28.919205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645828, 32.877811, 29.047998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492384, 0.483835, -0.723506,
		0.129570, -0.781246, -0.610627,
		-0.860680, -0.394408, 0.321983,
		36.387623, 32.759487, 29.144592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701286, 32.612091, 28.286184>,  <36.990101, 33.035576, 28.919205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701286, 32.612091, 28.286184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432198, 32.738464, 28.553804>,  <36.270744, 32.814289, 28.714376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432198, 32.738464, 28.553804>,  <36.701286, 32.612091, 28.286184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432198, 32.738464, 28.553804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484559, 0.495230, -0.721076,
		-0.559148, -0.809278, -0.180063,
		-0.672724, 0.315937, 0.669049,
		36.230381, 32.833244, 28.754519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984024, 32.658581, 27.982307>,  <36.701286, 32.612091, 28.286184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984024, 32.658581, 27.982307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947674, 32.897846, 28.300791>,  <35.925865, 33.041405, 28.491880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947674, 32.897846, 28.300791>,  <35.984024, 32.658581, 27.982307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947674, 32.897846, 28.300791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260959, 0.757275, -0.598694,
		-0.961063, -0.262182, 0.087279,
		-0.090873, 0.598160, 0.796208,
		35.920410, 33.077293, 28.539654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291828, 32.906475, 27.965509>,  <35.984024, 32.658581, 27.982307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291828, 32.906475, 27.965509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492687, 33.158768, 28.202160>,  <35.613205, 33.310143, 28.344151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492687, 33.158768, 28.202160>,  <35.291828, 32.906475, 27.965509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492687, 33.158768, 28.202160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431989, 0.775614, -0.460227,
		-0.749152, -0.024472, 0.661945,
		0.502151, 0.630733, 0.591625,
		35.643333, 33.347988, 28.379648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654156, 32.580425, 28.246489>,  <35.291828, 32.906475, 27.965509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654156, 32.580425, 28.246489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311420, 32.438591, 28.096773>,  <34.105778, 32.353489, 28.006945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311420, 32.438591, 28.096773>,  <34.654156, 32.580425, 28.246489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311420, 32.438591, 28.096773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088166, -0.816030, 0.571245,
		-0.507988, 0.456466, 0.730470,
		-0.856840, -0.354588, -0.374289,
		34.054367, 32.332214, 27.984486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361168, 32.247677, 28.753666>,  <34.654156, 32.580425, 28.246489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361168, 32.247677, 28.753666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124969, 32.081913, 28.476660>,  <33.983250, 31.982454, 28.310455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124969, 32.081913, 28.476660>,  <34.361168, 32.247677, 28.753666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124969, 32.081913, 28.476660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139552, -0.792734, 0.593379,
		-0.794883, 0.447030, 0.410274,
		-0.590496, -0.414412, -0.692515,
		33.947823, 31.957590, 28.268906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711536, 32.148956, 29.055931>,  <34.361168, 32.247677, 28.753666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711536, 32.148956, 29.055931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742012, 31.886791, 28.755363>,  <33.760300, 31.729492, 28.575024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742012, 31.886791, 28.755363>,  <33.711536, 32.148956, 29.055931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742012, 31.886791, 28.755363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214896, -0.746691, 0.629502,
		-0.973661, 0.113514, -0.197737,
		0.076191, -0.655414, -0.751417,
		33.764870, 31.690166, 28.529938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103249, 31.755989, 28.969358>,  <33.711536, 32.148956, 29.055931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103249, 31.755989, 28.969358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370678, 31.516811, 28.792509>,  <33.531136, 31.373304, 28.686399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370678, 31.516811, 28.792509>,  <33.103249, 31.755989, 28.969358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370678, 31.516811, 28.792509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281989, -0.753982, 0.593290,
		-0.688107, -0.271984, -0.672706,
		0.668574, -0.597942, -0.442124,
		33.571251, 31.337429, 28.659872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713856, 31.166899, 28.786934>,  <33.103249, 31.755989, 28.969358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713856, 31.166899, 28.786934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094326, 31.046076, 28.761572>,  <33.322609, 30.973583, 28.746355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094326, 31.046076, 28.761572>,  <32.713856, 31.166899, 28.786934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094326, 31.046076, 28.761572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218499, -0.804115, 0.552863,
		-0.217981, -0.512018, -0.830856,
		0.951179, -0.302055, -0.063406,
		33.379681, 30.955460, 28.742550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750107, 30.407320, 28.564228>,  <32.713856, 31.166899, 28.786934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750107, 30.407320, 28.564228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104599, 30.475475, 28.736536>,  <33.317295, 30.516369, 28.839922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104599, 30.475475, 28.736536>,  <32.750107, 30.407320, 28.564228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104599, 30.475475, 28.736536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152465, -0.770808, 0.618555,
		0.437437, -0.613859, -0.657135,
		0.886230, 0.170389, 0.430772,
		33.370468, 30.526592, 28.865768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796490, 29.785278, 28.887733>,  <32.750107, 30.407320, 28.564228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796490, 29.785278, 28.887733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060932, 30.036097, 29.052538>,  <33.219597, 30.186586, 29.151421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060932, 30.036097, 29.052538>,  <32.796490, 29.785278, 28.887733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060932, 30.036097, 29.052538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017701, -0.535945, 0.844067,
		0.750083, -0.565312, -0.343218,
		0.661107, 0.627045, 0.412010,
		33.259266, 30.224211, 29.176142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427547, 29.442089, 29.013540>,  <32.796490, 29.785278, 28.887733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427547, 29.442089, 29.013540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386578, 29.746305, 29.270004>,  <33.361996, 29.928835, 29.423883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386578, 29.746305, 29.270004>,  <33.427547, 29.442089, 29.013540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386578, 29.746305, 29.270004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096581, -0.649108, 0.754540,
		0.990041, 0.015361, 0.139939,
		-0.102426, 0.760541, 0.641160,
		33.355850, 29.974468, 29.462353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765884, 29.331234, 29.662018>,  <33.427547, 29.442089, 29.013540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765884, 29.331234, 29.662018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505482, 29.606400, 29.790373>,  <33.349239, 29.771500, 29.867386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505482, 29.606400, 29.790373>,  <33.765884, 29.331234, 29.662018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505482, 29.606400, 29.790373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200412, -0.563500, 0.801438,
		0.732141, 0.457429, 0.504707,
		-0.651003, 0.687915, 0.320887,
		33.310181, 29.812775, 29.886639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973282, 29.603960, 30.357437>,  <33.765884, 29.331234, 29.662018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973282, 29.603960, 30.357437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582718, 29.674885, 30.308144>,  <33.348381, 29.717440, 30.278566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582718, 29.674885, 30.308144>,  <33.973282, 29.603960, 30.357437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582718, 29.674885, 30.308144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175862, -0.321836, 0.930319,
		0.125295, 0.930044, 0.345425,
		-0.976409, 0.177311, -0.123235,
		33.289795, 29.728079, 30.271173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838757, 29.675886, 31.066757>,  <33.973282, 29.603960, 30.357437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838757, 29.675886, 31.066757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481087, 29.674006, 30.887682>,  <33.266483, 29.672878, 30.780237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481087, 29.674006, 30.887682>,  <33.838757, 29.675886, 31.066757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481087, 29.674006, 30.887682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427370, -0.289022, 0.856633,
		-0.133418, 0.957311, 0.256429,
		-0.894178, -0.004701, -0.447687,
		33.212833, 29.672596, 30.753376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412434, 29.961271, 31.584623>,  <33.838757, 29.675886, 31.066757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412434, 29.961271, 31.584623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205513, 29.738852, 31.324404>,  <33.081360, 29.605400, 31.168272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205513, 29.738852, 31.324404>,  <33.412434, 29.961271, 31.584623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205513, 29.738852, 31.324404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465348, -0.455198, 0.759108,
		-0.718229, 0.695417, -0.023283,
		-0.517299, -0.556048, -0.650548,
		33.050323, 29.572037, 31.129240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707714, 29.991293, 31.783743>,  <33.412434, 29.961271, 31.584623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707714, 29.991293, 31.783743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721802, 29.657742, 31.563412>,  <32.730255, 29.457611, 31.431213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721802, 29.657742, 31.563412>,  <32.707714, 29.991293, 31.783743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721802, 29.657742, 31.563412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457072, -0.503586, 0.733134,
		-0.888732, 0.225944, -0.398879,
		0.035223, -0.833877, -0.550826,
		32.732368, 29.407579, 31.398165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157452, 29.637251, 31.980679>,  <32.707714, 29.991293, 31.783743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157452, 29.637251, 31.980679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.355465, 29.336515, 31.806469>,  <32.474274, 29.156075, 31.701942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.355465, 29.336515, 31.806469>,  <32.157452, 29.637251, 31.980679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355465, 29.336515, 31.806469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350342, -0.631418, 0.691789,
		-0.795111, -0.189876, -0.575974,
		0.495034, -0.751837, -0.435526,
		32.503975, 29.110964, 31.675812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384712, 29.900534, 32.688755>,  <32.157452, 29.637251, 31.980679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384712, 29.900534, 32.688755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418365, 30.025686, 33.067177>,  <32.438557, 30.100779, 33.294231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418365, 30.025686, 33.067177>,  <32.384712, 29.900534, 32.688755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418365, 30.025686, 33.067177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465196, 0.851943, -0.240388,
		-0.881201, -0.419878, 0.217227,
		0.084131, 0.312884, 0.946058,
		32.443604, 30.119551, 33.350994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748718, 30.060614, 32.919922>,  <32.384712, 29.900534, 32.688755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748718, 30.060614, 32.919922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000999, 30.258154, 33.159363>,  <32.152367, 30.376678, 33.303028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000999, 30.258154, 33.159363>,  <31.748718, 30.060614, 32.919922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000999, 30.258154, 33.159363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482370, 0.853735, -0.196101,
		-0.607892, -0.165067, 0.776672,
		0.630703, 0.493852, 0.598602,
		32.190208, 30.406309, 33.338943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319611, 30.471037, 33.378323>,  <31.748718, 30.060614, 32.919922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319611, 30.471037, 33.378323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674477, 30.653347, 33.349461>,  <31.887396, 30.762733, 33.332142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674477, 30.653347, 33.349461>,  <31.319611, 30.471037, 33.378323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674477, 30.653347, 33.349461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460903, 0.867592, -0.186689,
		-0.022486, 0.198881, 0.979766,
		0.887165, 0.455775, -0.072156,
		31.940626, 30.790079, 33.327812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296661, 31.113707, 33.790009>,  <31.319611, 30.471037, 33.378323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296661, 31.113707, 33.790009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.576700, 31.171272, 33.510250>,  <31.744724, 31.205811, 33.342396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.576700, 31.171272, 33.510250>,  <31.296661, 31.113707, 33.790009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576700, 31.171272, 33.510250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312643, 0.942381, -0.119046,
		0.641962, 0.302004, 0.704754,
		0.700099, 0.143913, -0.699393,
		31.786730, 31.214447, 33.300434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376692, 31.868059, 33.787643>,  <31.296661, 31.113707, 33.790009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376692, 31.868059, 33.787643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.575228, 31.772619, 33.453766>,  <31.694349, 31.715355, 33.253441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.575228, 31.772619, 33.453766>,  <31.376692, 31.868059, 33.787643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575228, 31.772619, 33.453766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331109, 0.836777, -0.436086,
		0.802503, 0.492823, 0.336325,
		0.496342, -0.238600, -0.834694,
		31.724131, 31.701038, 33.203358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625368, 32.510258, 33.548935>,  <31.376692, 31.868059, 33.787643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625368, 32.510258, 33.548935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637922, 32.261055, 33.236301>,  <31.645454, 32.111534, 33.048721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637922, 32.261055, 33.236301>,  <31.625368, 32.510258, 33.548935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637922, 32.261055, 33.236301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330228, 0.731594, -0.596422,
		0.943379, 0.276819, -0.182775,
		0.031384, -0.623010, -0.781584,
		31.647337, 32.074150, 33.001827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074417, 32.837624, 32.956810>,  <31.625368, 32.510258, 33.548935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074417, 32.837624, 32.956810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795395, 32.591221, 32.810413>,  <31.627981, 32.443378, 32.722576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795395, 32.591221, 32.810413>,  <32.074417, 32.837624, 32.956810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795395, 32.591221, 32.810413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284686, 0.707002, -0.647380,
		0.657546, -0.347393, -0.668544,
		-0.697557, -0.616008, -0.365989,
		31.586128, 32.406418, 32.700615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047916, 32.973690, 32.282810>,  <32.074417, 32.837624, 32.956810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047916, 32.973690, 32.282810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711908, 32.761322, 32.327499>,  <31.510303, 32.633900, 32.354313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711908, 32.761322, 32.327499>,  <32.047916, 32.973690, 32.282810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711908, 32.761322, 32.327499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472781, 0.615299, -0.630782,
		0.266156, -0.582690, -0.767876,
		-0.840023, -0.530923, 0.111719,
		31.459902, 32.602043, 32.361015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772343, 32.943073, 31.599209>,  <32.047916, 32.973690, 32.282810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772343, 32.943073, 31.599209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.466909, 32.892216, 31.852436>,  <31.283649, 32.861702, 32.004372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.466909, 32.892216, 31.852436>,  <31.772343, 32.943073, 31.599209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466909, 32.892216, 31.852436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572737, 0.586112, -0.573102,
		-0.298186, -0.800193, -0.520362,
		-0.763582, -0.127140, 0.633070,
		31.237835, 32.854073, 32.042358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199648, 32.905098, 31.178623>,  <31.772343, 32.943073, 31.599209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199648, 32.905098, 31.178623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.039902, 32.984512, 31.536638>,  <30.944054, 33.032162, 31.751448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.039902, 32.984512, 31.536638>,  <31.199648, 32.905098, 31.178623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039902, 32.984512, 31.536638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579453, 0.701882, -0.414242,
		-0.710453, -0.684065, -0.165263,
		-0.399363, 0.198537, 0.895037,
		30.920094, 33.044075, 31.805149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485168, 32.958115, 31.027225>,  <31.199648, 32.905098, 31.178623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485168, 32.958115, 31.027225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523285, 33.144363, 31.379162>,  <30.546154, 33.256111, 31.590322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523285, 33.144363, 31.379162>,  <30.485168, 32.958115, 31.027225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523285, 33.144363, 31.379162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478587, 0.796438, -0.369649,
		-0.872854, -0.385855, 0.298733,
		0.095291, 0.465619, 0.879839,
		30.551872, 33.284050, 31.643114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800068, 33.263401, 31.213945>,  <30.485168, 32.958115, 31.027225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800068, 33.263401, 31.213945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.080006, 33.471272, 31.409969>,  <30.247969, 33.595993, 31.527584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.080006, 33.471272, 31.409969>,  <29.800068, 33.263401, 31.213945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080006, 33.471272, 31.409969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498435, 0.846720, -0.186085,
		-0.511646, -0.114032, 0.851596,
		0.699844, 0.519675, 0.490058,
		30.289959, 33.627174, 31.556988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362152, 33.731678, 31.444164>,  <29.800068, 33.263401, 31.213945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362152, 33.731678, 31.444164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.726425, 33.876556, 31.523634>,  <29.944988, 33.963482, 31.571316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.726425, 33.876556, 31.523634>,  <29.362152, 33.731678, 31.444164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726425, 33.876556, 31.523634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353290, 0.932099, -0.079860,
		-0.214108, 0.002537, 0.976807,
		0.910683, 0.362195, 0.198674,
		29.999630, 33.985214, 31.583237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339699, 34.366619, 31.814281>,  <29.362152, 33.731678, 31.444164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339699, 34.366619, 31.814281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.715660, 34.395481, 31.680790>,  <29.941236, 34.412800, 31.600695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.715660, 34.395481, 31.680790>,  <29.339699, 34.366619, 31.814281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715660, 34.395481, 31.680790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136459, 0.975347, -0.173426,
		0.312989, 0.208545, 0.926578,
		0.939903, 0.072159, -0.333731,
		29.997631, 34.417130, 31.580671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697508, 34.987373, 32.144970>,  <29.339699, 34.366619, 31.814281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697508, 34.987373, 32.144970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.872425, 34.895756, 31.797106>,  <29.977375, 34.840786, 31.588387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.872425, 34.895756, 31.797106>,  <29.697508, 34.987373, 32.144970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872425, 34.895756, 31.797106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131105, 0.940457, -0.313612,
		0.889710, 0.251158, 0.381229,
		0.437295, -0.229042, -0.869662,
		30.003614, 34.827042, 31.536207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002998, 35.608032, 31.920504>,  <29.697508, 34.987373, 32.144970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002998, 35.608032, 31.920504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.974909, 35.381039, 31.592348>,  <29.958055, 35.244843, 31.395454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.974909, 35.381039, 31.592348>,  <30.002998, 35.608032, 31.920504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974909, 35.381039, 31.592348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202372, 0.813419, -0.545339,
		0.976788, 0.127729, -0.171962,
		-0.070222, -0.567481, -0.820387,
		29.953842, 35.210796, 31.346231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443285, 35.877880, 31.428617>,  <30.002998, 35.608032, 31.920504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443285, 35.877880, 31.428617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219189, 35.652046, 31.186171>,  <30.084732, 35.516548, 31.040703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219189, 35.652046, 31.186171>,  <30.443285, 35.877880, 31.428617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219189, 35.652046, 31.186171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093279, 0.770082, -0.631089,
		0.823063, -0.297021, -0.484093,
		-0.560238, -0.564581, -0.606120,
		30.051117, 35.482674, 31.004335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626726, 36.087074, 30.818722>,  <30.443285, 35.877880, 31.428617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626726, 36.087074, 30.818722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257870, 35.963356, 30.725775>,  <30.036556, 35.889126, 30.670006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257870, 35.963356, 30.725775>,  <30.626726, 36.087074, 30.818722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257870, 35.963356, 30.725775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127116, 0.809555, -0.573116,
		0.365376, -0.498956, -0.785840,
		-0.922140, -0.309296, -0.232367,
		29.981228, 35.870567, 30.656065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494154, 36.186573, 30.213932>,  <30.626726, 36.087074, 30.818722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494154, 36.186573, 30.213932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109053, 36.142780, 30.312822>,  <29.877993, 36.116505, 30.372156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109053, 36.142780, 30.312822>,  <30.494154, 36.186573, 30.213932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109053, 36.142780, 30.312822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239281, 0.770750, -0.590499,
		-0.125900, -0.627661, -0.768239,
		-0.962753, -0.109482, 0.247225,
		29.820227, 36.109936, 30.386990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048183, 36.117008, 29.547585>,  <30.494154, 36.186573, 30.213932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048183, 36.117008, 29.547585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.835157, 36.246708, 29.860312>,  <29.707342, 36.324528, 30.047947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.835157, 36.246708, 29.860312>,  <30.048183, 36.117008, 29.547585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835157, 36.246708, 29.860312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525256, 0.597704, -0.605686,
		-0.663687, -0.733222, -0.148004,
		-0.532565, 0.324245, 0.781818,
		29.675388, 36.343983, 30.094856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510830, 36.271881, 29.200455>,  <30.048183, 36.117008, 29.547585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510830, 36.271881, 29.200455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.457628, 36.469181, 29.544317>,  <29.425707, 36.587563, 29.750635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.457628, 36.469181, 29.544317>,  <29.510830, 36.271881, 29.200455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457628, 36.469181, 29.544317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596254, 0.653028, -0.466943,
		-0.791701, -0.574680, 0.207250,
		-0.133003, 0.493253, 0.859658,
		29.417727, 36.617157, 29.802216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778833, 36.523365, 29.227188>,  <29.510830, 36.271881, 29.200455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778833, 36.523365, 29.227188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.971012, 36.750275, 29.494730>,  <29.086319, 36.886421, 29.655254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.971012, 36.750275, 29.494730>,  <28.778833, 36.523365, 29.227188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971012, 36.750275, 29.494730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378987, 0.822048, -0.424977,
		-0.790910, -0.049307, 0.609943,
		0.480449, 0.567279, 0.668853,
		29.115147, 36.920460, 29.695385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304924, 36.968414, 29.373554>,  <28.778833, 36.523365, 29.227188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304924, 36.968414, 29.373554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.650295, 37.141651, 29.477032>,  <28.857519, 37.245594, 29.539118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.650295, 37.141651, 29.477032>,  <28.304924, 36.968414, 29.373554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650295, 37.141651, 29.477032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275239, 0.834187, -0.477887,
		-0.422768, 0.341419, 0.839465,
		0.863430, 0.433089, 0.258696,
		28.909325, 37.271576, 29.554640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134743, 37.560249, 29.596567>,  <28.304924, 36.968414, 29.373554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134743, 37.560249, 29.596567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.517378, 37.630104, 29.503233>,  <28.746958, 37.672016, 29.447233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.517378, 37.630104, 29.503233>,  <28.134743, 37.560249, 29.596567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517378, 37.630104, 29.503233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277875, 0.787975, -0.549437,
		0.087909, 0.590421, 0.802293,
		0.956586, 0.174636, -0.233333,
		28.804354, 37.682495, 29.433233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178720, 38.214729, 29.720257>,  <28.134743, 37.560249, 29.596567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178720, 38.214729, 29.720257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.473154, 38.162594, 29.454569>,  <28.649815, 38.131313, 29.295156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.473154, 38.162594, 29.454569>,  <28.178720, 38.214729, 29.720257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473154, 38.162594, 29.454569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102666, 0.948436, -0.299880,
		0.669057, 0.288930, 0.684749,
		0.736086, -0.130337, -0.664222,
		28.693979, 38.123493, 29.255302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458208, 38.887184, 29.657736>,  <28.178720, 38.214729, 29.720257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458208, 38.887184, 29.657736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.644077, 38.710690, 29.350649>,  <28.755598, 38.604794, 29.166397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.644077, 38.710690, 29.350649>,  <28.458208, 38.887184, 29.657736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644077, 38.710690, 29.350649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080672, 0.842304, -0.532932,
		0.881801, 0.309571, 0.355798,
		0.464671, -0.441237, -0.767718,
		28.783478, 38.578320, 29.120333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862183, 39.410412, 29.456499>,  <28.458208, 38.887184, 29.657736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862183, 39.410412, 29.456499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.828474, 39.174198, 29.135458>,  <28.808249, 39.032471, 28.942833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.828474, 39.174198, 29.135458>,  <28.862183, 39.410412, 29.456499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828474, 39.174198, 29.135458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186254, 0.800608, -0.569505,
		0.978881, 0.101494, -0.177458,
		-0.084273, -0.590530, -0.802604,
		28.803192, 38.997040, 28.894676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315975, 39.679348, 28.883551>,  <28.862183, 39.410412, 29.456499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315975, 39.679348, 28.883551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021708, 39.481434, 28.698519>,  <28.845148, 39.362686, 28.587500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021708, 39.481434, 28.698519>,  <29.315975, 39.679348, 28.883551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021708, 39.481434, 28.698519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093238, 0.750404, -0.654370,
		0.670893, -0.438271, -0.598182,
		-0.735670, -0.494785, -0.462577,
		28.801006, 39.332996, 28.559746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051571, 39.937847, 28.933556>,  <29.315975, 39.679348, 28.883551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051571, 39.937847, 28.933556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.099825, 40.234146, 29.197903>,  <30.128777, 40.411926, 29.356510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.099825, 40.234146, 29.197903>,  <30.051571, 39.937847, 28.933556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099825, 40.234146, 29.197903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721689, -0.522558, 0.453980,
		0.681624, 0.422176, -0.597625,
		0.120634, 0.740744, 0.660868,
		30.136015, 40.456367, 29.396164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785721, 40.097183, 29.043409>,  <30.051571, 39.937847, 28.933556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785721, 40.097183, 29.043409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588781, 40.228455, 29.365873>,  <30.470617, 40.307217, 29.559351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588781, 40.228455, 29.365873>,  <30.785721, 40.097183, 29.043409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588781, 40.228455, 29.365873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665507, -0.454998, 0.591673,
		0.560974, 0.827814, 0.005613,
		-0.492349, 0.328177, 0.806159,
		30.441076, 40.326908, 29.607721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334473, 40.184322, 29.520603>,  <30.785721, 40.097183, 29.043409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334473, 40.184322, 29.520603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019495, 40.197178, 29.766821>,  <30.830507, 40.204891, 29.914553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019495, 40.197178, 29.766821>,  <31.334473, 40.184322, 29.520603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019495, 40.197178, 29.766821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579116, -0.303401, 0.756685,
		0.211076, 0.952321, 0.220299,
		-0.787446, 0.032139, 0.615545,
		30.783260, 40.206821, 29.951485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559692, 40.487579, 30.244600>,  <31.334473, 40.184322, 29.520603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559692, 40.487579, 30.244600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.230621, 40.265667, 30.294275>,  <31.033178, 40.132519, 30.324081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.230621, 40.265667, 30.294275>,  <31.559692, 40.487579, 30.244600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230621, 40.265667, 30.294275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402952, -0.414924, 0.815762,
		-0.401038, 0.721151, 0.564898,
		-0.822678, -0.554778, 0.124189,
		30.983818, 40.099232, 30.331532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280088, 40.557987, 30.979368>,  <31.559692, 40.487579, 30.244600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280088, 40.557987, 30.979368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138563, 40.219650, 30.819689>,  <31.053648, 40.016647, 30.723881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.138563, 40.219650, 30.819689>,  <31.280088, 40.557987, 30.979368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138563, 40.219650, 30.819689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432254, -0.526365, 0.732186,
		-0.829441, 0.086502, 0.551856,
		-0.353813, -0.845847, -0.399198,
		31.032419, 39.965897, 30.699930>
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
