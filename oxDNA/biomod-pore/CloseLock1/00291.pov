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
	<24.381737, 34.983334, 34.591412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144964, 34.841991, 34.881172>,  <24.002901, 34.757187, 35.055027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144964, 34.841991, 34.881172>,  <24.381737, 34.983334, 34.591412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.144964, 34.841991, 34.881172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675919, -0.707205, 0.207352,
		0.439033, 0.612376, 0.657454,
		-0.591932, -0.353351, 0.724403,
		23.967384, 34.735985, 35.098492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.769339, 34.915302, 35.304962>,  <24.381737, 34.983334, 34.591412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.769339, 34.915302, 35.304962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475363, 34.647133, 35.264175>,  <24.298977, 34.486233, 35.239704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475363, 34.647133, 35.264175>,  <24.769339, 34.915302, 35.304962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.475363, 34.647133, 35.264175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632220, -0.731774, 0.254566,
		-0.245282, 0.122626, 0.961665,
		-0.734938, -0.670425, -0.101965,
		24.254881, 34.446007, 35.233585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922922, 34.420670, 35.818943>,  <24.769339, 34.915302, 35.304962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922922, 34.420670, 35.818943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686485, 34.258224, 35.540180>,  <24.544622, 34.160755, 35.372921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686485, 34.258224, 35.540180>,  <24.922922, 34.420670, 35.818943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686485, 34.258224, 35.540180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447573, -0.883925, 0.135480,
		-0.671035, -0.231836, 0.704247,
		-0.591092, -0.406115, -0.696908,
		24.509157, 34.136391, 35.331108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.706625, 33.728264, 36.153107>,  <24.922922, 34.420670, 35.818943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.706625, 33.728264, 36.153107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.653313, 33.714420, 35.756916>,  <24.621325, 33.706112, 35.519203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.653313, 33.714420, 35.756916>,  <24.706625, 33.728264, 36.153107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.653313, 33.714420, 35.756916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528470, -0.847938, -0.041481,
		-0.838425, -0.528964, 0.131305,
		-0.133281, -0.034612, -0.990474,
		24.613329, 33.704037, 35.459774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313730, 33.144630, 35.955059>,  <24.706625, 33.728264, 36.153107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.313730, 33.144630, 35.955059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561131, 33.240891, 35.655849>,  <24.709572, 33.298645, 35.476322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561131, 33.240891, 35.655849>,  <24.313730, 33.144630, 35.955059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561131, 33.240891, 35.655849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491754, -0.861036, 0.129600,
		-0.612889, -0.448002, -0.650893,
		0.618503, 0.240648, -0.748026,
		24.746681, 33.313084, 35.431442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.413412, 32.557362, 35.487793>,  <24.313730, 33.144630, 35.955059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.413412, 32.557362, 35.487793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748579, 32.775105, 35.471916>,  <24.949678, 32.905750, 35.462391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748579, 32.775105, 35.471916>,  <24.413412, 32.557362, 35.487793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748579, 32.775105, 35.471916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539796, -0.815747, 0.207793,
		0.080733, -0.195539, -0.977367,
		0.837916, 0.544354, -0.039694,
		24.999954, 32.938412, 35.460007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063002, 32.096626, 35.404232>,  <24.413412, 32.557362, 35.487793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063002, 32.096626, 35.404232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257759, 32.425426, 35.522381>,  <25.374613, 32.622707, 35.593269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257759, 32.425426, 35.522381>,  <25.063002, 32.096626, 35.404232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257759, 32.425426, 35.522381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657783, -0.567554, 0.495180,
		0.574681, -0.046807, -0.817038,
		0.486891, 0.822004, 0.295374,
		25.403826, 32.672028, 35.610992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824997, 32.044777, 35.142208>,  <25.063002, 32.096626, 35.404232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824997, 32.044777, 35.142208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831089, 32.304241, 35.446579>,  <25.834743, 32.459919, 35.629200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831089, 32.304241, 35.446579>,  <25.824997, 32.044777, 35.142208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831089, 32.304241, 35.446579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653813, -0.582234, 0.483251,
		0.756503, 0.490143, -0.432970,
		0.015228, 0.648662, 0.760924,
		25.835657, 32.498840, 35.674858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574049, 32.136131, 35.358799>,  <25.824997, 32.044777, 35.142208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574049, 32.136131, 35.358799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371082, 32.250618, 35.683910>,  <26.249302, 32.319309, 35.878979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371082, 32.250618, 35.683910>,  <26.574049, 32.136131, 35.358799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371082, 32.250618, 35.683910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632006, -0.517548, 0.576813,
		0.585745, 0.806365, 0.081721,
		-0.507416, 0.286217, 0.812778,
		26.218857, 32.336483, 35.927742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079042, 32.393875, 35.751438>,  <26.574049, 32.136131, 35.358799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079042, 32.393875, 35.751438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784519, 32.333351, 36.015244>,  <26.607805, 32.297035, 36.173527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784519, 32.333351, 36.015244>,  <27.079042, 32.393875, 35.751438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784519, 32.333351, 36.015244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663649, -0.351618, 0.660254,
		0.131994, 0.923835, 0.359315,
		-0.736307, -0.151309, 0.659513,
		26.563627, 32.287960, 36.213097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258492, 32.646645, 36.443222>,  <27.079042, 32.393875, 35.751438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258492, 32.646645, 36.443222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984329, 32.368565, 36.529865>,  <26.819832, 32.201717, 36.581852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984329, 32.368565, 36.529865>,  <27.258492, 32.646645, 36.443222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984329, 32.368565, 36.529865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618591, -0.398978, 0.676876,
		-0.384139, 0.597928, 0.703505,
		-0.685407, -0.695196, 0.216610,
		26.778708, 32.160007, 36.594849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166096, 32.765621, 37.228054>,  <27.258492, 32.646645, 36.443222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166096, 32.765621, 37.228054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051880, 32.388092, 37.161526>,  <26.983351, 32.161575, 37.121609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051880, 32.388092, 37.161526>,  <27.166096, 32.765621, 37.228054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051880, 32.388092, 37.161526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497952, -0.294388, 0.815708,
		-0.818848, 0.150098, 0.554039,
		-0.285539, -0.943825, -0.166317,
		26.966219, 32.104946, 37.111629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975969, 32.442398, 37.870838>,  <27.166096, 32.765621, 37.228054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975969, 32.442398, 37.870838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007130, 32.108974, 37.652073>,  <27.025826, 31.908922, 37.520813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007130, 32.108974, 37.652073>,  <26.975969, 32.442398, 37.870838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007130, 32.108974, 37.652073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403890, -0.475163, 0.781725,
		-0.911485, -0.281792, 0.299648,
		0.077902, -0.833555, -0.546916,
		27.030500, 31.858908, 37.487999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849546, 31.892349, 38.322834>,  <26.975969, 32.442398, 37.870838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849546, 31.892349, 38.322834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047064, 31.723631, 38.018661>,  <27.165573, 31.622400, 37.836159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047064, 31.723631, 38.018661>,  <26.849546, 31.892349, 38.322834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047064, 31.723631, 38.018661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420332, -0.649759, 0.633352,
		-0.761242, -0.632379, -0.143552,
		0.493793, -0.421795, -0.760433,
		27.195202, 31.597092, 37.790531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855705, 31.085896, 38.452534>,  <26.849546, 31.892349, 38.322834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855705, 31.085896, 38.452534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169436, 31.145687, 38.211704>,  <27.357674, 31.181562, 38.067207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169436, 31.145687, 38.211704>,  <26.855705, 31.085896, 38.452534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169436, 31.145687, 38.211704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539484, -0.643484, 0.543034,
		-0.306248, -0.750723, -0.585344,
		0.784327, 0.149481, -0.602069,
		27.404734, 31.190531, 38.031082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166483, 30.484325, 38.271091>,  <26.855705, 31.085896, 38.452534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166483, 30.484325, 38.271091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474968, 30.711330, 38.155746>,  <27.660059, 30.847534, 38.086540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474968, 30.711330, 38.155746>,  <27.166483, 30.484325, 38.271091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474968, 30.711330, 38.155746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631767, -0.626784, 0.456084,
		0.078090, -0.533920, -0.841922,
		0.771215, 0.567514, -0.288367,
		27.706333, 30.881584, 38.069237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636007, 30.092075, 38.059704>,  <27.166483, 30.484325, 38.271091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636007, 30.092075, 38.059704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873652, 30.405668, 38.131710>,  <28.016237, 30.593824, 38.174915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873652, 30.405668, 38.131710>,  <27.636007, 30.092075, 38.059704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873652, 30.405668, 38.131710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671512, -0.606595, 0.425574,
		0.442839, -0.131956, -0.886838,
		0.594109, 0.783983, 0.180014,
		28.051884, 30.640863, 38.185715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247845, 29.859755, 37.804203>,  <27.636007, 30.092075, 38.059704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247845, 29.859755, 37.804203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361578, 30.170938, 38.028320>,  <28.429817, 30.357649, 38.162792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361578, 30.170938, 38.028320>,  <28.247845, 29.859755, 37.804203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361578, 30.170938, 38.028320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573930, -0.606248, 0.550516,
		0.767958, 0.165041, -0.618871,
		0.284332, 0.777962, 0.560295,
		28.446878, 30.404327, 38.196407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000502, 29.841553, 37.734562>,  <28.247845, 29.859755, 37.804203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000502, 29.841553, 37.734562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912251, 30.045996, 38.066849>,  <28.859299, 30.168661, 38.266220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912251, 30.045996, 38.066849>,  <29.000502, 29.841553, 37.734562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912251, 30.045996, 38.066849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623440, -0.581103, 0.523109,
		0.750097, 0.633315, -0.190437,
		-0.220629, 0.511109, 0.830717,
		28.846062, 30.199327, 38.316063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625715, 29.993511, 37.968903>,  <29.000502, 29.841553, 37.734562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625715, 29.993511, 37.968903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365545, 29.997404, 38.272705>,  <29.209444, 29.999739, 38.454987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365545, 29.997404, 38.272705>,  <29.625715, 29.993511, 37.968903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365545, 29.997404, 38.272705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598820, -0.608586, 0.520613,
		0.467291, 0.793429, 0.390013,
		-0.650425, 0.009730, 0.759508,
		29.170418, 30.000322, 38.500557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002628, 30.135427, 38.639233>,  <29.625715, 29.993511, 37.968903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002628, 30.135427, 38.639233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659145, 29.952324, 38.731384>,  <29.453056, 29.842461, 38.786674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659145, 29.952324, 38.731384>,  <30.002628, 30.135427, 38.639233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659145, 29.952324, 38.731384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511523, -0.738375, 0.439484,
		-0.031071, 0.495234, 0.868204,
		-0.858708, -0.457761, 0.230381,
		29.401533, 29.814995, 38.800499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090635, 30.004915, 39.358864>,  <30.002628, 30.135427, 38.639233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090635, 30.004915, 39.358864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802885, 29.764654, 39.219315>,  <29.630236, 29.620497, 39.135586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802885, 29.764654, 39.219315>,  <30.090635, 30.004915, 39.358864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802885, 29.764654, 39.219315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481835, -0.793272, 0.372229,
		-0.500333, 0.099673, 0.860077,
		-0.719376, -0.600654, -0.348874,
		29.587072, 29.584457, 39.114651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987747, 29.628666, 39.876961>,  <30.090635, 30.004915, 39.358864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987747, 29.628666, 39.876961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870579, 29.428383, 39.551140>,  <29.800278, 29.308212, 39.355648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870579, 29.428383, 39.551140>,  <29.987747, 29.628666, 39.876961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870579, 29.428383, 39.551140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507250, -0.803525, 0.311520,
		-0.810491, -0.321930, 0.489353,
		-0.292920, -0.500708, -0.814548,
		29.782703, 29.278170, 39.306774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313385, 28.985302, 40.023907>,  <29.987747, 29.628666, 39.876961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313385, 28.985302, 40.023907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114511, 28.916122, 39.683815>,  <29.995188, 28.874615, 39.479759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114511, 28.916122, 39.683815>,  <30.313385, 28.985302, 40.023907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114511, 28.916122, 39.683815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322309, -0.946626, 0.004085,
		-0.805559, -0.272007, 0.526390,
		-0.497183, -0.172951, -0.850233,
		29.965357, 28.864237, 39.428745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751846, 28.377317, 40.062889>,  <30.313385, 28.985302, 40.023907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751846, 28.377317, 40.062889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940418, 28.445713, 39.716824>,  <30.053562, 28.486752, 39.509182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940418, 28.445713, 39.716824>,  <29.751846, 28.377317, 40.062889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940418, 28.445713, 39.716824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614863, -0.767001, 0.183449,
		-0.632217, -0.618443, -0.466723,
		0.471430, 0.170991, -0.865168,
		30.081846, 28.497011, 39.457272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625164, 27.814459, 39.658600>,  <29.751846, 28.377317, 40.062889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625164, 27.814459, 39.658600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978546, 27.972204, 39.557419>,  <30.190575, 28.066853, 39.496712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978546, 27.972204, 39.557419>,  <29.625164, 27.814459, 39.658600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978546, 27.972204, 39.557419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426841, -0.900084, 0.087500,
		-0.193173, -0.185273, -0.963513,
		0.883454, 0.394364, -0.252954,
		30.243582, 28.090513, 39.481533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996372, 27.468699, 39.133850>,  <29.625164, 27.814459, 39.658600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996372, 27.468699, 39.133850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291990, 27.651056, 39.332233>,  <30.469362, 27.760471, 39.451263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291990, 27.651056, 39.332233>,  <29.996372, 27.468699, 39.133850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291990, 27.651056, 39.332233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525734, -0.850648, -0.001489,
		0.421204, 0.261841, -0.868347,
		0.739047, 0.455892, 0.495955,
		30.513704, 27.787825, 39.481018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661327, 27.393394, 38.781178>,  <29.996372, 27.468699, 39.133850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661327, 27.393394, 38.781178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766003, 27.455809, 39.162159>,  <30.828808, 27.493258, 39.390747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766003, 27.455809, 39.162159>,  <30.661327, 27.393394, 38.781178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766003, 27.455809, 39.162159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386137, -0.921351, 0.044847,
		0.884544, 0.356043, -0.301357,
		0.261688, 0.156034, 0.952456,
		30.844509, 27.502619, 39.447895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414408, 27.462955, 39.000259>,  <30.661327, 27.393394, 38.781178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414408, 27.462955, 39.000259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185661, 27.279127, 39.272072>,  <31.048414, 27.168829, 39.435158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185661, 27.279127, 39.272072>,  <31.414408, 27.462955, 39.000259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185661, 27.279127, 39.272072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464501, -0.864166, -0.193537,
		0.676173, 0.204966, 0.707657,
		-0.571865, -0.459572, 0.679533,
		31.014101, 27.141256, 39.475933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853758, 27.119724, 39.519619>,  <31.414408, 27.462955, 39.000259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853758, 27.119724, 39.519619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504580, 26.925741, 39.498539>,  <31.295073, 26.809351, 39.485889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504580, 26.925741, 39.498539>,  <31.853758, 27.119724, 39.519619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504580, 26.925741, 39.498539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472903, -0.814802, -0.335352,
		0.119693, -0.317667, 0.940618,
		-0.872947, -0.484960, -0.052700,
		31.242695, 26.780252, 39.482731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531513, 27.342791, 39.194206>,  <31.853758, 27.119724, 39.519619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531513, 27.342791, 39.194206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511425, 27.455582, 38.810963>,  <32.499374, 27.523256, 38.581017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511425, 27.455582, 38.810963>,  <32.531513, 27.342791, 39.194206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511425, 27.455582, 38.810963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747023, 0.647337, 0.151364,
		0.662899, -0.708126, -0.243153,
		-0.050217, 0.281980, -0.958105,
		32.496361, 27.540176, 38.523533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366062, 26.946310, 38.643990>,  <32.531513, 27.342791, 39.194206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366062, 26.946310, 38.643990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550301, 26.727472, 38.923573>,  <32.660843, 26.596170, 39.091324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550301, 26.727472, 38.923573>,  <32.366062, 26.946310, 38.643990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550301, 26.727472, 38.923573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175910, -0.828103, -0.532261,
		0.870004, 0.122204, -0.477660,
		0.460596, -0.547094, 0.698956,
		32.688480, 26.563345, 39.133259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000862, 26.584301, 38.356518>,  <32.366062, 26.946310, 38.643990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000862, 26.584301, 38.356518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836926, 26.385857, 38.662693>,  <32.738564, 26.266790, 38.846397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836926, 26.385857, 38.662693>,  <33.000862, 26.584301, 38.356518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836926, 26.385857, 38.662693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039251, -0.828786, -0.558187,
		0.911310, -0.258814, 0.320201,
		-0.409845, -0.496113, 0.765440,
		32.713970, 26.237022, 38.892326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011681, 27.258768, 38.003681>,  <33.000862, 26.584301, 38.356518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011681, 27.258768, 38.003681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237675, 27.053024, 37.745617>,  <33.373272, 26.929579, 37.590778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237675, 27.053024, 37.745617>,  <33.011681, 27.258768, 38.003681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237675, 27.053024, 37.745617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006641, 0.784723, -0.619811,
		0.825077, 0.345897, 0.446769,
		0.564981, -0.514359, -0.645160,
		33.407169, 26.898716, 37.552071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703228, 27.611464, 37.778072>,  <33.011681, 27.258768, 38.003681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703228, 27.611464, 37.778072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541645, 27.392429, 37.484962>,  <33.444695, 27.261009, 37.309097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541645, 27.392429, 37.484962>,  <33.703228, 27.611464, 37.778072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541645, 27.392429, 37.484962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155568, 0.830501, -0.534852,
		0.901452, -0.102061, -0.420676,
		-0.403960, -0.547587, -0.732779,
		33.420456, 27.228153, 37.265129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917458, 28.003452, 37.078831>,  <33.703228, 27.611464, 37.778072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917458, 28.003452, 37.078831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576771, 27.795496, 37.052654>,  <33.372356, 27.670721, 37.036949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576771, 27.795496, 37.052654>,  <33.917458, 28.003452, 37.078831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576771, 27.795496, 37.052654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411523, 0.740980, -0.530657,
		0.324376, -0.425042, -0.845056,
		-0.851722, -0.519892, -0.065442,
		33.321255, 27.639528, 37.033020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610275, 28.298813, 36.518284>,  <33.917458, 28.003452, 37.078831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610275, 28.298813, 36.518284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304222, 28.107653, 36.690880>,  <33.120590, 27.992956, 36.794437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304222, 28.107653, 36.690880>,  <33.610275, 28.298813, 36.518284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304222, 28.107653, 36.690880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628839, 0.698609, -0.341331,
		-0.138322, -0.532502, -0.835050,
		-0.765134, -0.477898, 0.431491,
		33.074680, 27.964283, 36.820328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147785, 28.362484, 36.033352>,  <33.610275, 28.298813, 36.518284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147785, 28.362484, 36.033352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939468, 28.271646, 36.362522>,  <32.814480, 28.217144, 36.560024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939468, 28.271646, 36.362522>,  <33.147785, 28.362484, 36.033352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939468, 28.271646, 36.362522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772902, 0.534748, -0.341566,
		-0.362490, -0.813925, -0.454013,
		-0.520792, -0.227093, 0.822924,
		32.783230, 28.203518, 36.609398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425179, 28.240469, 35.729630>,  <33.147785, 28.362484, 36.033352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425179, 28.240469, 35.729630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356480, 28.310171, 36.117474>,  <32.315258, 28.351994, 36.350178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356480, 28.310171, 36.117474>,  <32.425179, 28.240469, 35.729630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356480, 28.310171, 36.117474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826759, 0.509707, -0.238051,
		-0.535697, -0.842516, 0.056528,
		-0.171749, 0.174258, 0.969606,
		32.304955, 28.362448, 36.408356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680405, 28.003361, 36.022675>,  <32.425179, 28.240469, 35.729630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680405, 28.003361, 36.022675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823502, 28.288626, 36.263813>,  <31.909359, 28.459784, 36.408497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823502, 28.288626, 36.263813>,  <31.680405, 28.003361, 36.022675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823502, 28.288626, 36.263813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852857, 0.512454, -0.100127,
		-0.380338, -0.478322, 0.791550,
		0.357740, 0.713161, 0.602846,
		31.930824, 28.502575, 36.444668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087732, 28.200499, 36.552753>,  <31.680405, 28.003361, 36.022675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087732, 28.200499, 36.552753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354294, 28.497326, 36.523792>,  <31.514231, 28.675423, 36.506416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354294, 28.497326, 36.523792>,  <31.087732, 28.200499, 36.552753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354294, 28.497326, 36.523792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745590, 0.663188, -0.065411,
		-0.000524, 0.097572, 0.995228,
		0.666405, 0.742066, -0.072401,
		31.554214, 28.719946, 36.502071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838213, 28.744341, 37.004036>,  <31.087732, 28.200499, 36.552753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838213, 28.744341, 37.004036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101160, 28.957521, 36.790932>,  <31.258928, 29.085430, 36.663071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101160, 28.957521, 36.790932>,  <30.838213, 28.744341, 37.004036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101160, 28.957521, 36.790932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686105, 0.715674, -0.130653,
		0.311649, 0.451414, 0.836122,
		0.657370, 0.532949, -0.532757,
		31.298370, 29.117407, 36.631104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897959, 29.390678, 37.326843>,  <30.838213, 28.744341, 37.004036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897959, 29.390678, 37.326843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027529, 29.448160, 36.952801>,  <31.105270, 29.482649, 36.728374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027529, 29.448160, 36.952801>,  <30.897959, 29.390678, 37.326843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027529, 29.448160, 36.952801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667206, 0.735452, -0.118100,
		0.670752, 0.662163, 0.334114,
		0.323926, 0.143707, -0.935105,
		31.124706, 29.491272, 36.672268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013800, 30.025604, 37.244900>,  <30.897959, 29.390678, 37.326843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013800, 30.025604, 37.244900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958696, 29.942276, 36.857574>,  <30.925634, 29.892279, 36.625179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958696, 29.942276, 36.857574>,  <31.013800, 30.025604, 37.244900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958696, 29.942276, 36.857574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525734, 0.843922, -0.106768,
		0.839420, 0.494366, -0.225779,
		-0.137758, -0.208323, -0.968310,
		30.917370, 29.879780, 36.567081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315350, 30.577274, 36.759869>,  <31.013800, 30.025604, 37.244900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315350, 30.577274, 36.759869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042303, 30.380577, 36.543636>,  <30.878475, 30.262560, 36.413898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042303, 30.380577, 36.543636>,  <31.315350, 30.577274, 36.759869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042303, 30.380577, 36.543636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424463, 0.868954, -0.254461,
		0.594867, 0.055757, -0.801888,
		-0.682616, -0.491742, -0.540579,
		30.837519, 30.233055, 36.381462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317808, 30.925190, 36.066891>,  <31.315350, 30.577274, 36.759869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317808, 30.925190, 36.066891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972021, 30.744276, 36.154652>,  <30.764549, 30.635727, 36.207310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972021, 30.744276, 36.154652>,  <31.317808, 30.925190, 36.066891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972021, 30.744276, 36.154652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496512, 0.836447, -0.232017,
		-0.078582, -0.309508, -0.947644,
		-0.864466, -0.452284, 0.219404,
		30.712681, 30.608591, 36.220474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919344, 31.256550, 35.650036>,  <31.317808, 30.925190, 36.066891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919344, 31.256550, 35.650036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633430, 31.090294, 35.875008>,  <30.461882, 30.990540, 36.009991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633430, 31.090294, 35.875008>,  <30.919344, 31.256550, 35.650036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633430, 31.090294, 35.875008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655540, 0.678362, -0.331801,
		-0.243621, -0.605862, -0.757351,
		-0.714784, -0.415641, 0.562430,
		30.418995, 30.965601, 36.043736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268343, 31.191357, 35.256660>,  <30.919344, 31.256550, 35.650036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268343, 31.191357, 35.256660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139715, 31.196774, 35.635376>,  <30.062538, 31.200024, 35.862606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139715, 31.196774, 35.635376>,  <30.268343, 31.191357, 35.256660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139715, 31.196774, 35.635376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731279, 0.631643, -0.257405,
		-0.601519, -0.775141, -0.193214,
		-0.321568, 0.013541, 0.946790,
		30.043245, 31.200836, 35.919415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584864, 31.117134, 35.231617>,  <30.268343, 31.191357, 35.256660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584864, 31.117134, 35.231617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610359, 31.254435, 35.606449>,  <29.625656, 31.336815, 35.831348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610359, 31.254435, 35.606449>,  <29.584864, 31.117134, 35.231617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610359, 31.254435, 35.606449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893518, 0.437841, -0.099606,
		-0.444481, -0.830947, 0.334610,
		0.063739, 0.343253, 0.937078,
		29.629480, 31.357410, 35.887573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915466, 31.052263, 35.565617>,  <29.584864, 31.117134, 35.231617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915466, 31.052263, 35.565617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069529, 31.323801, 35.815681>,  <29.161966, 31.486725, 35.965721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069529, 31.323801, 35.815681>,  <28.915466, 31.052263, 35.565617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069529, 31.323801, 35.815681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855116, 0.517263, -0.034852,
		-0.347030, -0.521159, 0.779720,
		0.385157, 0.678846, 0.625158,
		29.185076, 31.527454, 36.003227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372028, 31.183132, 36.036396>,  <28.915466, 31.052263, 35.565617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372028, 31.183132, 36.036396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623856, 31.493885, 36.032452>,  <28.774952, 31.680338, 36.030087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623856, 31.493885, 36.032452>,  <28.372028, 31.183132, 36.036396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623856, 31.493885, 36.032452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776908, 0.629611, 0.001912,
		0.007694, 0.006457, 0.999950,
		0.629567, 0.776884, -0.009861,
		28.812725, 31.726950, 36.029495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081795, 31.818033, 36.464764>,  <28.372028, 31.183132, 36.036396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081795, 31.818033, 36.464764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362225, 31.980595, 36.230385>,  <28.530481, 32.078133, 36.089760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362225, 31.980595, 36.230385>,  <28.081795, 31.818033, 36.464764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362225, 31.980595, 36.230385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634055, 0.731270, -0.251434,
		0.326300, 0.547795, 0.770356,
		0.701073, 0.406405, -0.585945,
		28.572546, 32.102516, 36.054600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983110, 32.488586, 36.529270>,  <28.081795, 31.818033, 36.464764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983110, 32.488586, 36.529270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228533, 32.549831, 36.219406>,  <28.375786, 32.586578, 36.033485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228533, 32.549831, 36.219406>,  <27.983110, 32.488586, 36.529270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228533, 32.549831, 36.219406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591982, 0.738434, -0.322912,
		0.522596, 0.656712, 0.543712,
		0.613556, 0.153116, -0.774664,
		28.412600, 32.595768, 35.987007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280029, 33.140945, 36.541710>,  <27.983110, 32.488586, 36.529270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280029, 33.140945, 36.541710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292841, 33.038696, 36.155212>,  <28.300528, 32.977345, 35.923313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292841, 33.038696, 36.155212>,  <28.280029, 33.140945, 36.541710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292841, 33.038696, 36.155212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545844, 0.805369, -0.231161,
		0.837274, 0.534823, -0.113735,
		0.032031, -0.255627, -0.966245,
		28.302450, 32.962009, 35.865337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495691, 33.761520, 36.191097>,  <28.280029, 33.140945, 36.541710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495691, 33.761520, 36.191097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342743, 33.523624, 35.908234>,  <28.250975, 33.380886, 35.738514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342743, 33.523624, 35.908234>,  <28.495691, 33.761520, 36.191097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342743, 33.523624, 35.908234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402654, 0.796079, -0.451806,
		0.831663, 0.111983, -0.543872,
		-0.382370, -0.594742, -0.707160,
		28.228031, 33.345203, 35.696087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664127, 34.144081, 35.622227>,  <28.495691, 33.761520, 36.191097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664127, 34.144081, 35.622227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378389, 33.902420, 35.480972>,  <28.206945, 33.757423, 35.396217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378389, 33.902420, 35.480972>,  <28.664127, 34.144081, 35.622227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378389, 33.902420, 35.480972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311730, 0.726526, -0.612359,
		0.626524, -0.327353, -0.707324,
		-0.714348, -0.604152, -0.353140,
		28.164085, 33.721176, 35.375031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615587, 34.286633, 34.928074>,  <28.664127, 34.144081, 35.622227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615587, 34.286633, 34.928074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262825, 34.120342, 35.016991>,  <28.051168, 34.020569, 35.070339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262825, 34.120342, 35.016991>,  <28.615587, 34.286633, 34.928074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262825, 34.120342, 35.016991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449673, 0.600233, -0.661449,
		0.141558, -0.683293, -0.716291,
		-0.881904, -0.415730, 0.222290,
		27.998253, 33.995625, 35.083679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360912, 34.528843, 34.217670>,  <28.615587, 34.286633, 34.928074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360912, 34.528843, 34.217670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477413, 34.899029, 34.314571>,  <28.547314, 35.121140, 34.372711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477413, 34.899029, 34.314571>,  <28.360912, 34.528843, 34.217670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477413, 34.899029, 34.314571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434387, -0.353557, 0.828436,
		0.852339, -0.136052, -0.504984,
		0.291251, 0.925466, 0.242252,
		28.564789, 35.176670, 34.387245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025358, 34.254543, 34.080158>,  <28.360912, 34.528843, 34.217670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025358, 34.254543, 34.080158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998518, 33.881668, 33.937881>,  <28.982414, 33.657944, 33.852516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998518, 33.881668, 33.937881>,  <29.025358, 34.254543, 34.080158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998518, 33.881668, 33.937881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490853, 0.279525, -0.825185,
		0.868655, -0.229962, 0.438812,
		-0.067102, -0.932193, -0.355688,
		28.978388, 33.602009, 33.831177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639490, 34.616657, 33.913750>,  <29.025358, 34.254543, 34.080158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639490, 34.616657, 33.913750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923836, 34.390976, 34.081726>,  <30.094442, 34.255566, 34.182510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923836, 34.390976, 34.081726>,  <29.639490, 34.616657, 33.913750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923836, 34.390976, 34.081726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703309, 0.575054, -0.417935,
		-0.005689, 0.592442, 0.805593,
		0.710862, -0.564203, 0.419941,
		30.137094, 34.221714, 34.207710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221581, 34.984955, 33.665707>,  <29.639490, 34.616657, 33.913750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221581, 34.984955, 33.665707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384560, 34.663433, 33.839088>,  <30.482347, 34.470520, 33.943119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384560, 34.663433, 33.839088>,  <30.221581, 34.984955, 33.665707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384560, 34.663433, 33.839088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891921, 0.248329, -0.377902,
		0.196118, 0.540586, 0.818110,
		0.407448, -0.803803, 0.433458,
		30.506794, 34.422291, 33.969128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855480, 35.257076, 33.907280>,  <30.221581, 34.984955, 33.665707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855480, 35.257076, 33.907280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896173, 34.860504, 33.874496>,  <30.920589, 34.622562, 33.854824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896173, 34.860504, 33.874496>,  <30.855480, 35.257076, 33.907280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896173, 34.860504, 33.874496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945187, 0.122027, -0.302871,
		0.310277, -0.046658, 0.949501,
		0.101734, -0.991430, -0.081963,
		30.926693, 34.563076, 33.849907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477987, 35.092308, 34.216072>,  <30.855480, 35.257076, 33.907280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477987, 35.092308, 34.216072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363079, 34.832344, 33.934620>,  <31.294134, 34.676365, 33.765751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363079, 34.832344, 33.934620>,  <31.477987, 35.092308, 34.216072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363079, 34.832344, 33.934620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855706, 0.155948, -0.493404,
		0.430398, -0.743840, 0.511332,
		-0.287272, -0.649910, -0.703628,
		31.276897, 34.637371, 33.723530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262234, 35.302261, 34.285469>,  <31.477987, 35.092308, 34.216072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262234, 35.302261, 34.285469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110809, 34.987518, 34.480427>,  <32.019955, 34.798672, 34.597401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110809, 34.987518, 34.480427>,  <32.262234, 35.302261, 34.285469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110809, 34.987518, 34.480427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546505, -0.615011, -0.568412,
		0.747010, 0.051184, 0.662839,
		-0.378560, -0.786855, 0.487392,
		31.997242, 34.751461, 34.626644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893524, 34.970009, 34.443241>,  <32.262234, 35.302261, 34.285469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893524, 34.970009, 34.443241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562298, 34.747559, 34.414867>,  <32.363564, 34.614086, 34.397842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562298, 34.747559, 34.414867>,  <32.893524, 34.970009, 34.443241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562298, 34.747559, 34.414867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487239, -0.651281, -0.581749,
		0.277329, -0.516287, 0.810269,
		-0.828062, -0.556130, -0.070936,
		32.313881, 34.580719, 34.393585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291767, 35.398762, 34.861633>,  <32.893524, 34.970009, 34.443241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291767, 35.398762, 34.861633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690807, 35.376343, 34.845413>,  <33.930233, 35.362892, 34.835682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690807, 35.376343, 34.845413>,  <33.291767, 35.398762, 34.861633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690807, 35.376343, 34.845413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050897, 0.197565, 0.978967,
		-0.046861, -0.978686, 0.199945,
		0.997604, -0.056052, -0.040554,
		33.990089, 35.359528, 34.833248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469341, 34.966621, 35.369839>,  <33.291767, 35.398762, 34.861633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469341, 34.966621, 35.369839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820766, 35.145004, 35.301430>,  <34.031624, 35.252033, 35.260384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820766, 35.145004, 35.301430>,  <33.469341, 34.966621, 35.369839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820766, 35.145004, 35.301430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268996, -0.166124, 0.948706,
		0.394668, -0.879505, -0.265910,
		0.878565, 0.445953, -0.171020,
		34.084335, 35.278790, 35.250122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965118, 34.413700, 35.483891>,  <33.469341, 34.966621, 35.369839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965118, 34.413700, 35.483891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134537, 34.767029, 35.564243>,  <34.236187, 34.979027, 35.612457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134537, 34.767029, 35.564243>,  <33.965118, 34.413700, 35.483891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134537, 34.767029, 35.564243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286633, -0.341044, 0.895282,
		0.859329, -0.321617, -0.397637,
		0.423550, 0.883318, 0.200884,
		34.261600, 35.032024, 35.624508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452915, 34.259609, 36.033691>,  <33.965118, 34.413700, 35.483891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452915, 34.259609, 36.033691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389732, 34.654537, 36.027477>,  <34.351822, 34.891495, 36.023746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389732, 34.654537, 36.027477>,  <34.452915, 34.259609, 36.033691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389732, 34.654537, 36.027477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077091, 0.028017, 0.996630,
		0.984432, 0.156224, -0.080540,
		-0.157954, 0.987324, -0.015538,
		34.342346, 34.950733, 36.022816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970829, 34.611954, 36.531219>,  <34.452915, 34.259609, 36.033691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970829, 34.611954, 36.531219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680420, 34.885517, 36.502483>,  <34.506176, 35.049656, 36.485241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680420, 34.885517, 36.502483>,  <34.970829, 34.611954, 36.531219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680420, 34.885517, 36.502483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028001, 0.133777, 0.990616,
		0.687102, 0.717196, -0.116275,
		-0.726021, 0.683910, -0.071837,
		34.462612, 35.090691, 36.480934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130947, 35.155369, 36.882290>,  <34.970829, 34.611954, 36.531219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130947, 35.155369, 36.882290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735966, 35.209888, 36.850414>,  <34.498978, 35.242599, 36.831291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735966, 35.209888, 36.850414>,  <35.130947, 35.155369, 36.882290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735966, 35.209888, 36.850414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061460, 0.133060, 0.989201,
		0.145427, 0.981692, -0.123014,
		-0.987458, 0.136296, -0.079685,
		34.439728, 35.250778, 36.826508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991230, 35.644569, 37.402866>,  <35.130947, 35.155369, 36.882290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991230, 35.644569, 37.402866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626488, 35.493328, 37.338917>,  <34.407642, 35.402584, 37.300545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626488, 35.493328, 37.338917>,  <34.991230, 35.644569, 37.402866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626488, 35.493328, 37.338917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164328, -0.020700, 0.986189,
		-0.376189, 0.925533, -0.043257,
		-0.911854, -0.378101, -0.159878,
		34.352932, 35.379898, 37.290955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489319, 36.109882, 37.738407>,  <34.991230, 35.644569, 37.402866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489319, 36.109882, 37.738407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346233, 35.737797, 37.705547>,  <34.260384, 35.514545, 37.685833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346233, 35.737797, 37.705547>,  <34.489319, 36.109882, 37.738407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346233, 35.737797, 37.705547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182294, -0.016719, 0.983102,
		-0.915867, 0.366640, -0.163592,
		-0.357709, -0.930213, -0.082149,
		34.238922, 35.458733, 37.680904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969265, 36.049034, 38.163300>,  <34.489319, 36.109882, 37.738407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969265, 36.049034, 38.163300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051376, 35.664074, 38.092136>,  <34.100643, 35.433098, 38.049438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051376, 35.664074, 38.092136>,  <33.969265, 36.049034, 38.163300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051376, 35.664074, 38.092136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128319, -0.206673, 0.969959,
		-0.970256, -0.176278, -0.165918,
		0.205274, -0.962399, -0.177906,
		34.112957, 35.375355, 38.038765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555832, 35.655544, 38.709141>,  <33.969265, 36.049034, 38.163300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555832, 35.655544, 38.709141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832138, 35.401421, 38.571026>,  <33.997921, 35.248947, 38.488155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832138, 35.401421, 38.571026>,  <33.555832, 35.655544, 38.709141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832138, 35.401421, 38.571026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075367, -0.538188, 0.839448,
		-0.719140, -0.553839, -0.419643,
		0.690766, -0.635308, -0.345291,
		34.039368, 35.210827, 38.467438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274567, 35.054024, 38.837406>,  <33.555832, 35.655544, 38.709141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274567, 35.054024, 38.837406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666500, 34.978714, 38.810612>,  <33.901661, 34.933529, 38.794533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666500, 34.978714, 38.810612>,  <33.274567, 35.054024, 38.837406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666500, 34.978714, 38.810612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068219, -0.630225, 0.773410,
		-0.187830, -0.753240, -0.630356,
		0.979830, -0.188272, -0.066990,
		33.960449, 34.922234, 38.790516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369759, 34.355942, 39.114601>,  <33.274567, 35.054024, 38.837406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369759, 34.355942, 39.114601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739250, 34.509163, 39.113899>,  <33.960945, 34.601097, 39.113480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739250, 34.509163, 39.113899>,  <33.369759, 34.355942, 39.114601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739250, 34.509163, 39.113899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262155, -0.628828, 0.732018,
		0.279296, -0.676644, -0.681283,
		0.923725, 0.383052, -0.001756,
		34.016369, 34.624077, 39.113373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839157, 33.817215, 39.039581>,  <33.369759, 34.355942, 39.114601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839157, 33.817215, 39.039581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043427, 34.115269, 39.211155>,  <34.165989, 34.294102, 39.314098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043427, 34.115269, 39.211155>,  <33.839157, 33.817215, 39.039581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043427, 34.115269, 39.211155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238156, -0.601967, 0.762179,
		0.826130, -0.287074, -0.484869,
		0.510677, 0.745134, 0.428934,
		34.196629, 34.338810, 39.339836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435009, 33.494785, 39.191864>,  <33.839157, 33.817215, 39.039581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435009, 33.494785, 39.191864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396374, 33.800419, 39.446999>,  <34.373192, 33.983799, 39.600079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396374, 33.800419, 39.446999>,  <34.435009, 33.494785, 39.191864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396374, 33.800419, 39.446999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198561, -0.613163, 0.764594,
		0.975318, 0.200500, -0.092495,
		-0.096587, 0.764088, 0.637840,
		34.367397, 34.029644, 39.638351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931496, 33.387550, 39.713997>,  <34.435009, 33.494785, 39.191864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931496, 33.387550, 39.713997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683109, 33.648323, 39.888073>,  <34.534077, 33.804787, 39.992519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683109, 33.648323, 39.888073>,  <34.931496, 33.387550, 39.713997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683109, 33.648323, 39.888073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079996, -0.605015, 0.792185,
		0.779748, 0.457103, 0.427844,
		-0.620962, 0.651930, 0.435192,
		34.496822, 33.843903, 40.018631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222740, 33.499107, 40.351261>,  <34.931496, 33.387550, 39.713997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222740, 33.499107, 40.351261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833828, 33.591434, 40.366161>,  <34.600479, 33.646832, 40.375103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833828, 33.591434, 40.366161>,  <35.222740, 33.499107, 40.351261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833828, 33.591434, 40.366161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135679, -0.686787, 0.714084,
		0.190405, 0.689238, 0.699069,
		-0.972285, 0.230814, 0.037252,
		34.542141, 33.660679, 40.377338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018585, 33.769127, 41.015469>,  <35.222740, 33.499107, 40.351261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018585, 33.769127, 41.015469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671501, 33.633823, 40.869778>,  <34.463253, 33.552639, 40.782364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671501, 33.633823, 40.869778>,  <35.018585, 33.769127, 41.015469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671501, 33.633823, 40.869778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168592, -0.489042, 0.855812,
		-0.467613, 0.804000, 0.367317,
		-0.867707, -0.338262, -0.364230,
		34.411190, 33.532345, 40.760509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684658, 33.801453, 41.650986>,  <35.018585, 33.769127, 41.015469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684658, 33.801453, 41.650986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437630, 33.611526, 41.400173>,  <34.289413, 33.497570, 41.249687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437630, 33.611526, 41.400173>,  <34.684658, 33.801453, 41.650986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437630, 33.611526, 41.400173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434728, -0.458308, 0.775220,
		-0.655456, 0.751336, 0.076621,
		-0.617566, -0.474814, -0.627028,
		34.252361, 33.469082, 41.212067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088314, 33.820896, 41.852112>,  <34.684658, 33.801453, 41.650986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088314, 33.820896, 41.852112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075752, 33.484840, 41.635529>,  <34.068214, 33.283207, 41.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075752, 33.484840, 41.635529>,  <34.088314, 33.820896, 41.852112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075752, 33.484840, 41.635529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302310, -0.508365, 0.806333,
		-0.952692, 0.189008, -0.238020,
		-0.031402, -0.840143, -0.541455,
		34.066330, 33.232796, 41.473091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460094, 33.457382, 42.104900>,  <34.088314, 33.820896, 41.852112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460094, 33.457382, 42.104900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652988, 33.161625, 41.916965>,  <33.768726, 32.984169, 41.804207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652988, 33.161625, 41.916965>,  <33.460094, 33.457382, 42.104900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652988, 33.161625, 41.916965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207883, -0.617578, 0.758539,
		-0.851020, -0.268122, -0.451525,
		0.482233, -0.739397, -0.469834,
		33.797657, 32.939804, 41.776016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018867, 32.874561, 42.112957>,  <33.460094, 33.457382, 42.104900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018867, 32.874561, 42.112957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387730, 32.729702, 42.058578>,  <33.609047, 32.642788, 42.025951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387730, 32.729702, 42.058578>,  <33.018867, 32.874561, 42.112957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387730, 32.729702, 42.058578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189896, -0.729996, 0.656541,
		-0.337006, -0.579616, -0.741938,
		0.922153, -0.362149, -0.135946,
		33.664375, 32.621056, 42.017796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931007, 32.123440, 42.013062>,  <33.018867, 32.874561, 42.112957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931007, 32.123440, 42.013062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299160, 32.174538, 42.160889>,  <33.520050, 32.205196, 42.249584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299160, 32.174538, 42.160889>,  <32.931007, 32.123440, 42.013062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299160, 32.174538, 42.160889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157749, -0.743496, 0.649869,
		0.357790, -0.656426, -0.664147,
		0.920381, 0.127748, 0.369566,
		33.575275, 32.212864, 42.271759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118057, 31.415920, 42.201485>,  <32.931007, 32.123440, 42.013062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118057, 31.415920, 42.201485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399708, 31.637705, 42.378922>,  <33.568699, 31.770775, 42.485382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399708, 31.637705, 42.378922>,  <33.118057, 31.415920, 42.201485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399708, 31.637705, 42.378922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063975, -0.572639, 0.817308,
		0.707184, -0.603869, -0.367740,
		0.704129, 0.554461, 0.443593,
		33.610947, 31.804043, 42.512001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471733, 30.931379, 42.593853>,  <33.118057, 31.415920, 42.201485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471733, 30.931379, 42.593853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539112, 31.297890, 42.739216>,  <33.579540, 31.517796, 42.826435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539112, 31.297890, 42.739216>,  <33.471733, 30.931379, 42.593853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539112, 31.297890, 42.739216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107630, -0.349375, 0.930781,
		0.979818, -0.195897, 0.039769,
		0.168443, 0.916276, 0.363408,
		33.589645, 31.572773, 42.848240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805626, 30.754253, 43.134735>,  <33.471733, 30.931379, 42.593853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805626, 30.754253, 43.134735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735390, 31.136913, 43.227673>,  <33.693249, 31.366510, 43.283436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735390, 31.136913, 43.227673>,  <33.805626, 30.754253, 43.134735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735390, 31.136913, 43.227673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221695, -0.268377, 0.937457,
		0.959176, 0.113102, 0.259210,
		-0.175594, 0.956651, 0.232346,
		33.682713, 31.423908, 43.297375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305786, 30.922472, 43.687778>,  <33.805626, 30.754253, 43.134735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305786, 30.922472, 43.687778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978928, 31.152479, 43.671673>,  <33.782810, 31.290483, 43.662010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978928, 31.152479, 43.671673>,  <34.305786, 30.922472, 43.687778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978928, 31.152479, 43.671673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207476, -0.228230, 0.951244,
		0.537794, 0.785661, 0.305801,
		-0.817148, 0.575020, -0.040265,
		33.733784, 31.324986, 43.659592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386051, 31.352890, 44.320339>,  <34.305786, 30.922472, 43.687778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386051, 31.352890, 44.320339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000126, 31.362438, 44.215595>,  <33.768570, 31.368168, 44.152748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000126, 31.362438, 44.215595>,  <34.386051, 31.352890, 44.320339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000126, 31.362438, 44.215595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261964, -0.001433, 0.965077,
		0.022664, 0.999714, 0.007636,
		-0.964812, 0.023873, -0.261856,
		33.710682, 31.369600, 44.137039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977699, 31.777420, 44.835236>,  <34.386051, 31.352890, 44.320339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977699, 31.777420, 44.835236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671520, 31.582706, 44.666885>,  <33.487812, 31.465879, 44.565876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671520, 31.582706, 44.666885>,  <33.977699, 31.777420, 44.835236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671520, 31.582706, 44.666885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376854, -0.191051, 0.906356,
		-0.521606, 0.852375, -0.037206,
		-0.765447, -0.486782, -0.420874,
		33.441887, 31.436672, 44.540623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360142, 31.981489, 45.203239>,  <33.977699, 31.777420, 44.835236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360142, 31.981489, 45.203239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260841, 31.646383, 45.008705>,  <33.201260, 31.445320, 44.891983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260841, 31.646383, 45.008705>,  <33.360142, 31.981489, 45.203239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260841, 31.646383, 45.008705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556355, -0.287685, 0.779556,
		-0.792994, 0.464103, -0.394675,
		-0.248252, -0.837762, -0.486338,
		33.186367, 31.395054, 44.862804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572014, 31.868515, 45.158875>,  <33.360142, 31.981489, 45.203239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572014, 31.868515, 45.158875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709270, 31.494081, 45.127895>,  <32.791626, 31.269421, 45.109310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709270, 31.494081, 45.127895>,  <32.572014, 31.868515, 45.158875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709270, 31.494081, 45.127895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581510, -0.276467, 0.765122,
		-0.737630, -0.217512, -0.639210,
		0.343144, -0.936085, -0.077445,
		32.812214, 31.213257, 45.104664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933578, 31.474873, 45.154724>,  <32.572014, 31.868515, 45.158875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933578, 31.474873, 45.154724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241772, 31.246918, 45.268978>,  <32.426685, 31.110144, 45.337528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241772, 31.246918, 45.268978>,  <31.933578, 31.474873, 45.154724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241772, 31.246918, 45.268978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506448, -0.275123, 0.817201,
		-0.387133, -0.774294, -0.500597,
		0.770479, -0.569892, 0.285630,
		32.472916, 31.075951, 45.354668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639875, 30.845390, 45.305134>,  <31.933578, 31.474873, 45.154724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639875, 30.845390, 45.305134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999426, 30.810553, 45.476917>,  <32.215157, 30.789650, 45.579987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999426, 30.810553, 45.476917>,  <31.639875, 30.845390, 45.305134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999426, 30.810553, 45.476917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434633, -0.301982, 0.848470,
		0.055794, -0.949327, -0.309298,
		0.898878, -0.087092, 0.429457,
		32.269089, 30.784424, 45.605755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543167, 30.322260, 45.722965>,  <31.639875, 30.845390, 45.305134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543167, 30.322260, 45.722965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887217, 30.469793, 45.863907>,  <32.093647, 30.558313, 45.948471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887217, 30.469793, 45.863907>,  <31.543167, 30.322260, 45.722965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887217, 30.469793, 45.863907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217221, -0.360147, 0.907254,
		0.461525, -0.856887, -0.229652,
		0.860122, 0.368835, 0.352351,
		32.145252, 30.580444, 45.969612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049450, 29.850698, 45.859692>,  <31.543167, 30.322260, 45.722965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049450, 29.850698, 45.859692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113476, 30.162418, 46.102039>,  <32.151894, 30.349449, 46.247448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113476, 30.162418, 46.102039>,  <32.049450, 29.850698, 45.859692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113476, 30.162418, 46.102039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311304, -0.542604, 0.780174,
		0.936733, -0.313489, 0.155745,
		0.160069, 0.779298, 0.605865,
		32.161495, 30.396208, 46.283798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152721, 29.538696, 46.432377>,  <32.049450, 29.850698, 45.859692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152721, 29.538696, 46.432377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154282, 29.906458, 46.589691>,  <32.155216, 30.127115, 46.684082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154282, 29.906458, 46.589691>,  <32.152721, 29.538696, 46.432377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154282, 29.906458, 46.589691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328363, -0.370308, 0.868936,
		0.944544, -0.132530, 0.300455,
		0.003899, 0.919406, 0.393290,
		32.155453, 30.182280, 46.707680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190647, 29.354128, 47.045258>,  <32.152721, 29.538696, 46.432377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190647, 29.354128, 47.045258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111763, 29.742882, 47.096706>,  <32.064430, 29.976135, 47.127575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111763, 29.742882, 47.096706>,  <32.190647, 29.354128, 47.045258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111763, 29.742882, 47.096706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325278, -0.188631, 0.926614,
		0.924825, 0.140904, 0.353334,
		-0.197214, 0.971887, 0.128618,
		32.052601, 30.034449, 47.135292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578274, 29.629192, 47.713413>,  <32.190647, 29.354128, 47.045258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578274, 29.629192, 47.713413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270332, 29.865444, 47.616684>,  <32.085567, 30.007195, 47.558647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270332, 29.865444, 47.616684>,  <32.578274, 29.629192, 47.713413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270332, 29.865444, 47.616684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431572, -0.202636, 0.879025,
		0.470176, 0.781087, 0.410900,
		-0.769857, 0.590629, -0.241821,
		32.039375, 30.042633, 47.544136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465130, 30.013170, 48.312595>,  <32.578274, 29.629192, 47.713413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465130, 30.013170, 48.312595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132717, 30.026121, 48.090485>,  <31.933270, 30.033892, 47.957218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132717, 30.026121, 48.090485>,  <32.465130, 30.013170, 48.312595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132717, 30.026121, 48.090485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551464, -0.178274, 0.814927,
		-0.072608, 0.983448, 0.166006,
		-0.831033, 0.032376, -0.555280,
		31.883408, 30.035833, 47.923901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919176, 30.327154, 48.711998>,  <32.465130, 30.013170, 48.312595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919176, 30.327154, 48.711998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745335, 30.102186, 48.430630>,  <31.641029, 29.967205, 48.261806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745335, 30.102186, 48.430630>,  <31.919176, 30.327154, 48.711998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745335, 30.102186, 48.430630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646162, -0.349351, 0.678548,
		-0.627371, 0.749425, -0.211585,
		-0.434604, -0.562419, -0.703423,
		31.614954, 29.933460, 48.219604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310488, 30.405098, 48.952724>,  <31.919176, 30.327154, 48.711998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310488, 30.405098, 48.952724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346067, 30.086809, 48.713089>,  <31.367414, 29.895836, 48.569305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346067, 30.086809, 48.713089>,  <31.310488, 30.405098, 48.952724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346067, 30.086809, 48.713089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522304, -0.549410, 0.652187,
		-0.848108, 0.254897, -0.464479,
		0.088949, -0.795724, -0.599093,
		31.372751, 29.848091, 48.533360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640675, 30.099213, 48.642216>,  <31.310488, 30.405098, 48.952724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640675, 30.099213, 48.642216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911482, 29.813654, 48.713768>,  <31.073967, 29.642319, 48.756699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911482, 29.813654, 48.713768>,  <30.640675, 30.099213, 48.642216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911482, 29.813654, 48.713768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629999, -0.436509, 0.642309,
		-0.380458, -0.547551, -0.745278,
		0.677017, -0.713896, 0.178884,
		31.114588, 29.599485, 48.767433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270351, 29.726053, 49.191616>,  <30.640675, 30.099213, 48.642216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270351, 29.726053, 49.191616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573397, 29.481098, 49.101284>,  <30.755224, 29.334126, 49.047085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573397, 29.481098, 49.101284>,  <30.270351, 29.726053, 49.191616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573397, 29.481098, 49.101284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340384, -0.665917, 0.663847,
		-0.556917, -0.426072, -0.712956,
		0.757616, -0.612387, -0.225832,
		30.800682, 29.297382, 49.033535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058720, 29.065393, 49.043118>,  <30.270351, 29.726053, 49.191616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058720, 29.065393, 49.043118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437366, 29.047684, 49.170841>,  <30.664555, 29.037058, 49.247475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437366, 29.047684, 49.170841>,  <30.058720, 29.065393, 49.043118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437366, 29.047684, 49.170841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262597, -0.680429, 0.684148,
		0.186974, -0.731475, -0.655732,
		0.946617, -0.044275, 0.319306,
		30.721352, 29.034401, 49.266632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408924, 28.391132, 48.946323>,  <30.058720, 29.065393, 49.043118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408924, 28.391132, 48.946323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551468, 28.605576, 49.252419>,  <30.636995, 28.734241, 49.436077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551468, 28.605576, 49.252419>,  <30.408924, 28.391132, 48.946323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551468, 28.605576, 49.252419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388215, -0.660013, 0.643173,
		0.849880, -0.526281, -0.027078,
		0.356362, 0.536108, 0.765241,
		30.658377, 28.766407, 49.481991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974541, 28.162157, 49.346668>,  <30.408924, 28.391132, 48.946323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974541, 28.162157, 49.346668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680212, 28.377174, 49.511406>,  <30.503614, 28.506184, 49.610249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680212, 28.377174, 49.511406>,  <30.974541, 28.162157, 49.346668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680212, 28.377174, 49.511406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289049, -0.799310, 0.526834,
		0.612385, 0.268614, 0.743526,
		-0.735823, 0.537541, 0.411843,
		30.459465, 28.538437, 49.634960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121319, 28.113577, 50.037373>,  <30.974541, 28.162157, 49.346668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121319, 28.113577, 50.037373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738907, 28.157175, 49.928467>,  <30.509460, 28.183334, 49.863125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738907, 28.157175, 49.928467>,  <31.121319, 28.113577, 50.037373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738907, 28.157175, 49.928467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240809, -0.821629, 0.516659,
		-0.167388, 0.559505, 0.811749,
		-0.956029, 0.108994, -0.272265,
		30.452099, 28.189873, 49.846786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710526, 28.520159, 50.038757>,  <31.121319, 28.113577, 50.037373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710526, 28.520159, 50.038757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824152, 28.903006, 50.061504>,  <31.892328, 29.132713, 50.075153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824152, 28.903006, 50.061504>,  <31.710526, 28.520159, 50.038757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824152, 28.903006, 50.061504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958772, -0.283066, -0.025091,
		-0.007919, 0.061648, -0.998067,
		0.284065, 0.957117, 0.056865,
		31.909372, 29.190142, 50.078564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798857, 27.827211, 49.773064>,  <31.710526, 28.520159, 50.038757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798857, 27.827211, 49.773064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586945, 27.499851, 49.684025>,  <31.459797, 27.303434, 49.630604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586945, 27.499851, 49.684025>,  <31.798857, 27.827211, 49.773064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586945, 27.499851, 49.684025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126491, 0.183274, -0.974890,
		0.838648, -0.544635, 0.006425,
		-0.529782, -0.818403, -0.222594,
		31.428009, 27.254330, 49.617245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147594, 27.294491, 49.343372>,  <31.798857, 27.827211, 49.773064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147594, 27.294491, 49.343372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752169, 27.291504, 49.283131>,  <31.514914, 27.289713, 49.246986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752169, 27.291504, 49.283131>,  <32.147594, 27.294491, 49.343372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752169, 27.291504, 49.283131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145906, 0.204828, -0.967862,
		0.038074, -0.978770, -0.201397,
		-0.988566, -0.007466, -0.150607,
		31.455599, 27.289265, 49.237949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029408, 26.797033, 48.854095>,  <32.147594, 27.294491, 49.343372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029408, 26.797033, 48.854095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765560, 27.097609, 48.860336>,  <31.607252, 27.277954, 48.864079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765560, 27.097609, 48.860336>,  <32.029408, 26.797033, 48.854095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765560, 27.097609, 48.860336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090331, 0.099862, -0.990893,
		-0.746151, -0.652204, -0.133749,
		-0.659620, 0.751437, 0.015598,
		31.567675, 27.323040, 48.865017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288700, 26.721121, 48.456802>,  <32.029408, 26.797033, 48.854095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288700, 26.721121, 48.456802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440817, 27.089973, 48.428364>,  <31.532087, 27.311285, 48.411301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440817, 27.089973, 48.428364>,  <31.288700, 26.721121, 48.456802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440817, 27.089973, 48.428364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201663, -0.157696, -0.966677,
		-0.902614, 0.353281, -0.245930,
		0.380291, 0.922130, -0.071095,
		31.554905, 27.366613, 48.407036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385336, 26.643961, 47.807278>,  <31.288700, 26.721121, 48.456802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385336, 26.643961, 47.807278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559940, 26.987293, 47.915150>,  <31.664703, 27.193293, 47.979874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559940, 26.987293, 47.915150>,  <31.385336, 26.643961, 47.807278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559940, 26.987293, 47.915150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502853, 0.015805, -0.864227,
		-0.746054, 0.512855, -0.424715,
		0.436511, 0.858330, 0.269682,
		31.690893, 27.244793, 47.996056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308311, 26.978907, 47.303970>,  <31.385336, 26.643961, 47.807278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308311, 26.978907, 47.303970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601521, 27.178518, 47.488857>,  <31.777447, 27.298286, 47.599789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601521, 27.178518, 47.488857>,  <31.308311, 26.978907, 47.303970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601521, 27.178518, 47.488857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566729, -0.072282, -0.820727,
		-0.376158, 0.863564, -0.335800,
		0.733023, 0.499031, 0.462218,
		31.821428, 27.328228, 47.627522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411026, 27.540365, 46.926453>,  <31.308311, 26.978907, 47.303970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411026, 27.540365, 46.926453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750233, 27.463470, 47.124001>,  <31.953756, 27.417334, 47.242531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750233, 27.463470, 47.124001>,  <31.411026, 27.540365, 46.926453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750233, 27.463470, 47.124001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496884, -0.035695, -0.867082,
		0.184315, 0.980699, 0.065250,
		0.848018, -0.192238, 0.493873,
		32.004639, 27.405800, 47.272163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835344, 27.906521, 46.608772>,  <31.411026, 27.540365, 46.926453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835344, 27.906521, 46.608772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081543, 27.647982, 46.789169>,  <32.229263, 27.492857, 46.897408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081543, 27.647982, 46.789169>,  <31.835344, 27.906521, 46.608772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081543, 27.647982, 46.789169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622051, 0.047020, -0.781564,
		0.483957, 0.761592, 0.431003,
		0.615499, -0.646349, 0.450993,
		32.266193, 27.454077, 46.924469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502884, 28.189117, 46.456547>,  <31.835344, 27.906521, 46.608772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502884, 28.189117, 46.456547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571072, 27.821297, 46.598175>,  <32.611984, 27.600605, 46.683151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571072, 27.821297, 46.598175>,  <32.502884, 28.189117, 46.456547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571072, 27.821297, 46.598175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760557, -0.105671, -0.640614,
		0.626492, 0.378497, 0.681357,
		0.170471, -0.919551, 0.354071,
		32.622211, 27.545431, 46.704395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173927, 28.254629, 46.616806>,  <32.502884, 28.189117, 46.456547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173927, 28.254629, 46.616806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063885, 27.874620, 46.557785>,  <32.997860, 27.646614, 46.522373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063885, 27.874620, 46.557785>,  <33.173927, 28.254629, 46.616806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063885, 27.874620, 46.557785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668185, -0.078583, -0.739833,
		0.691264, -0.302127, 0.656410,
		-0.275106, -0.950023, -0.147555,
		32.981354, 27.589613, 46.513519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776608, 27.868053, 46.612862>,  <33.173927, 28.254629, 46.616806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776608, 27.868053, 46.612862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512638, 27.643311, 46.413338>,  <33.354256, 27.508465, 46.293625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512638, 27.643311, 46.413338>,  <33.776608, 27.868053, 46.612862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512638, 27.643311, 46.413338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605909, -0.005422, -0.795515,
		0.444262, -0.827216, 0.344013,
		-0.659928, -0.561858, -0.498809,
		33.314659, 27.474752, 46.263695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177776, 27.525913, 46.203373>,  <33.776608, 27.868053, 46.612862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177776, 27.525913, 46.203373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820072, 27.466057, 46.034660>,  <33.605450, 27.430143, 45.933434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820072, 27.466057, 46.034660>,  <34.177776, 27.525913, 46.203373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820072, 27.466057, 46.034660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433384, -0.054362, -0.899568,
		0.111682, -0.987245, 0.113466,
		-0.894262, -0.149640, -0.421785,
		33.551792, 27.421165, 45.908123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267422, 26.908674, 45.753960>,  <34.177776, 27.525913, 46.203373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267422, 26.908674, 45.753960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975296, 27.147808, 45.621754>,  <33.800022, 27.291288, 45.542431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975296, 27.147808, 45.621754>,  <34.267422, 26.908674, 45.753960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975296, 27.147808, 45.621754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537140, 0.203642, -0.818541,
		-0.422046, -0.775322, -0.469843,
		-0.730313, 0.597834, -0.330510,
		33.756203, 27.327158, 45.522602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193233, 26.823643, 45.074509>,  <34.267422, 26.908674, 45.753960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193233, 26.823643, 45.074509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987156, 27.165684, 45.097748>,  <33.863510, 27.370909, 45.111691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987156, 27.165684, 45.097748>,  <34.193233, 26.823643, 45.074509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987156, 27.165684, 45.097748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316258, 0.252676, -0.914404,
		-0.796589, -0.452723, -0.400610,
		-0.515196, 0.855100, 0.058102,
		33.832596, 27.422215, 45.115177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873745, 26.941099, 44.390102>,  <34.193233, 26.823643, 45.074509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873745, 26.941099, 44.390102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902191, 27.298019, 44.568424>,  <33.919258, 27.512171, 44.675419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902191, 27.298019, 44.568424>,  <33.873745, 26.941099, 44.390102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902191, 27.298019, 44.568424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225259, 0.421025, -0.878633,
		-0.971700, 0.162903, -0.171059,
		0.071112, 0.892301, 0.445805,
		33.923527, 27.565710, 44.702168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500797, 27.273613, 43.888878>,  <33.873745, 26.941099, 44.390102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500797, 27.273613, 43.888878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699898, 27.539858, 44.111301>,  <33.819359, 27.699606, 44.244755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699898, 27.539858, 44.111301>,  <33.500797, 27.273613, 43.888878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699898, 27.539858, 44.111301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433955, 0.363971, -0.824141,
		-0.750948, 0.651523, -0.107678,
		0.497755, 0.665614, 0.556055,
		33.849224, 27.739542, 44.278118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487602, 27.888216, 43.496685>,  <33.500797, 27.273613, 43.888878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487602, 27.888216, 43.496685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752666, 27.973164, 43.783955>,  <33.911705, 28.024132, 43.956318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752666, 27.973164, 43.783955>,  <33.487602, 27.888216, 43.496685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752666, 27.973164, 43.783955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526382, 0.550058, -0.648351,
		-0.532727, 0.807674, 0.252717,
		0.662665, 0.212368, 0.718175,
		33.951466, 28.036875, 43.999409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491989, 28.596996, 43.647579>,  <33.487602, 27.888216, 43.496685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491989, 28.596996, 43.647579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849346, 28.442389, 43.739193>,  <34.063759, 28.349625, 43.794159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849346, 28.442389, 43.739193>,  <33.491989, 28.596996, 43.647579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849346, 28.442389, 43.739193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445777, 0.699060, -0.559105,
		0.055998, 0.601596, 0.796835,
		0.893391, -0.386520, 0.229032,
		34.117363, 28.326433, 43.807903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995987, 29.158928, 43.893341>,  <33.491989, 28.596996, 43.647579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995987, 29.158928, 43.893341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186226, 28.850014, 43.724873>,  <34.300369, 28.664665, 43.623791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186226, 28.850014, 43.724873>,  <33.995987, 29.158928, 43.893341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186226, 28.850014, 43.724873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499472, 0.631201, -0.593391,
		0.724109, 0.071855, 0.685933,
		0.475600, -0.772284, -0.421168,
		34.328907, 28.618328, 43.598522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573658, 29.395321, 43.663769>,  <33.995987, 29.158928, 43.893341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573658, 29.395321, 43.663769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592094, 29.047638, 43.466850>,  <34.603157, 28.839027, 43.348701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592094, 29.047638, 43.466850>,  <34.573658, 29.395321, 43.663769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592094, 29.047638, 43.466850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492353, 0.448567, -0.745907,
		0.869175, -0.208002, 0.448632,
		0.046092, -0.869208, -0.492293,
		34.605923, 28.786875, 43.319160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243572, 29.510042, 43.404102>,  <34.573658, 29.395321, 43.663769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243572, 29.510042, 43.404102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066429, 29.219835, 43.193390>,  <34.960144, 29.045712, 43.066963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066429, 29.219835, 43.193390>,  <35.243572, 29.510042, 43.404102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066429, 29.219835, 43.193390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380712, 0.379774, -0.843107,
		0.811749, -0.573928, 0.108028,
		-0.442857, -0.725519, -0.526782,
		34.933571, 29.002180, 43.035355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740757, 29.096945, 43.047897>,  <35.243572, 29.510042, 43.404102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740757, 29.096945, 43.047897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405750, 29.055386, 42.833317>,  <35.204746, 29.030449, 42.704571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405750, 29.055386, 42.833317>,  <35.740757, 29.096945, 43.047897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405750, 29.055386, 42.833317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435836, 0.465127, -0.770522,
		0.329573, -0.879125, -0.344267,
		-0.837514, -0.103899, -0.536448,
		35.154495, 29.024216, 42.672382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009815, 29.142454, 42.348587>,  <35.740757, 29.096945, 43.047897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009815, 29.142454, 42.348587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614170, 29.153900, 42.290844>,  <35.376785, 29.160767, 42.256199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614170, 29.153900, 42.290844>,  <36.009815, 29.142454, 42.348587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614170, 29.153900, 42.290844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140436, 0.476823, -0.867708,
		0.044006, -0.878533, -0.475650,
		-0.989111, 0.028614, -0.144361,
		35.317436, 29.162483, 42.247536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769382, 28.667801, 41.750671>,  <36.009815, 29.142454, 42.348587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769382, 28.667801, 41.750671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529373, 28.981224, 41.815178>,  <35.385368, 29.169277, 41.853882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529373, 28.981224, 41.815178>,  <35.769382, 28.667801, 41.750671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529373, 28.981224, 41.815178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076585, 0.256922, -0.963393,
		-0.796307, -0.565710, -0.214168,
		-0.600025, 0.783558, 0.161264,
		35.349365, 29.216291, 41.863556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477051, 28.689203, 41.110046>,  <35.769382, 28.667801, 41.750671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477051, 28.689203, 41.110046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355831, 29.040813, 41.257275>,  <35.283100, 29.251780, 41.345612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355831, 29.040813, 41.257275>,  <35.477051, 28.689203, 41.110046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355831, 29.040813, 41.257275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015027, 0.381773, -0.924134,
		-0.952857, -0.285588, -0.102487,
		-0.303048, 0.879027, 0.368067,
		35.264915, 29.304522, 41.367695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948605, 28.857927, 40.706722>,  <35.477051, 28.689203, 41.110046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948605, 28.857927, 40.706722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062504, 29.208908, 40.861122>,  <35.130844, 29.419497, 40.953762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062504, 29.208908, 40.861122>,  <34.948605, 28.857927, 40.706722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062504, 29.208908, 40.861122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108440, 0.429568, -0.896500,
		-0.952448, 0.213421, 0.217471,
		0.284751, 0.877452, 0.385998,
		35.147930, 29.472143, 40.976921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565105, 29.263237, 40.325695>,  <34.948605, 28.857927, 40.706722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565105, 29.263237, 40.325695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856052, 29.485191, 40.487206>,  <35.030621, 29.618364, 40.584114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856052, 29.485191, 40.487206>,  <34.565105, 29.263237, 40.325695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856052, 29.485191, 40.487206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067037, 0.528118, -0.846521,
		-0.682967, 0.642799, 0.346938,
		0.727367, 0.554887, 0.403779,
		35.074261, 29.651657, 40.608337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396133, 29.967518, 40.191502>,  <34.565105, 29.263237, 40.325695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396133, 29.967518, 40.191502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791424, 29.935217, 40.243481>,  <35.028599, 29.915836, 40.274670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791424, 29.935217, 40.243481>,  <34.396133, 29.967518, 40.191502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791424, 29.935217, 40.243481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152174, 0.430928, -0.889463,
		0.015828, 0.898766, 0.438144,
		0.988227, -0.080753, 0.129948,
		35.087891, 29.910992, 40.282467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619270, 30.719084, 40.127346>,  <34.396133, 29.967518, 40.191502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619270, 30.719084, 40.127346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943367, 30.493402, 40.063869>,  <35.137825, 30.357994, 40.025784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943367, 30.493402, 40.063869>,  <34.619270, 30.719084, 40.127346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943367, 30.493402, 40.063869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212317, 0.534916, -0.817793,
		0.546286, 0.628919, 0.553202,
		0.810243, -0.564203, -0.158687,
		35.186440, 30.324142, 40.016262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126965, 31.160543, 39.851288>,  <34.619270, 30.719084, 40.127346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126965, 31.160543, 39.851288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255737, 30.797222, 39.744450>,  <35.333000, 30.579229, 39.680347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255737, 30.797222, 39.744450>,  <35.126965, 31.160543, 39.851288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255737, 30.797222, 39.744450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254234, 0.354691, -0.899755,
		0.911989, 0.221756, 0.345108,
		0.321933, -0.908305, -0.267097,
		35.352318, 30.524731, 39.664322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726719, 31.385300, 39.628616>,  <35.126965, 31.160543, 39.851288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726719, 31.385300, 39.628616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694542, 31.018024, 39.473457>,  <35.675236, 30.797659, 39.380363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694542, 31.018024, 39.473457>,  <35.726719, 31.385300, 39.628616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694542, 31.018024, 39.473457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113018, 0.378245, -0.918781,
		0.990331, -0.117751, 0.073343,
		-0.080446, -0.918186, -0.387895,
		35.670406, 30.742569, 39.357090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271172, 31.226086, 39.165028>,  <35.726719, 31.385300, 39.628616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271172, 31.226086, 39.165028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985672, 30.968176, 39.055611>,  <35.814373, 30.813431, 38.989960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985672, 30.968176, 39.055611>,  <36.271172, 31.226086, 39.165028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985672, 30.968176, 39.055611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183426, 0.204847, -0.961453,
		0.675955, -0.736413, -0.027942,
		-0.713751, -0.644774, -0.273545,
		35.771545, 30.774744, 38.973549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514236, 30.866587, 38.684898>,  <36.271172, 31.226086, 39.165028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514236, 30.866587, 38.684898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128262, 30.797573, 38.605766>,  <35.896679, 30.756165, 38.558289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128262, 30.797573, 38.605766>,  <36.514236, 30.866587, 38.684898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128262, 30.797573, 38.605766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128887, 0.345132, -0.929662,
		0.228677, -0.922559, -0.310792,
		-0.964933, -0.172535, -0.197829,
		35.838783, 30.745811, 38.546417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399582, 30.383417, 37.986912>,  <36.514236, 30.866587, 38.684898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399582, 30.383417, 37.986912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080494, 30.607409, 38.076412>,  <35.889042, 30.741802, 38.130112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080494, 30.607409, 38.076412>,  <36.399582, 30.383417, 37.986912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080494, 30.607409, 38.076412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065686, 0.449535, -0.890844,
		-0.599437, -0.695949, -0.395387,
		-0.797722, 0.559977, 0.223754,
		35.841179, 30.775402, 38.143539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067505, 30.324524, 37.352123>,  <36.399582, 30.383417, 37.986912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067505, 30.324524, 37.352123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895695, 30.630003, 37.544903>,  <35.792610, 30.813290, 37.660572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895695, 30.630003, 37.544903>,  <36.067505, 30.324524, 37.352123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895695, 30.630003, 37.544903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003226, 0.534983, -0.844856,
		-0.903051, -0.361329, -0.232251,
		-0.429522, 0.763698, 0.481952,
		35.766838, 30.859112, 37.689487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540012, 30.479557, 36.921150>,  <36.067505, 30.324524, 37.352123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540012, 30.479557, 36.921150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609665, 30.787451, 37.166813>,  <35.651455, 30.972187, 37.314209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609665, 30.787451, 37.166813>,  <35.540012, 30.479557, 36.921150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609665, 30.787451, 37.166813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020444, 0.620722, -0.783764,
		-0.984510, 0.149033, 0.092350,
		0.174131, 0.769736, 0.614154,
		35.661903, 31.018372, 37.351059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124115, 31.001886, 36.673603>,  <35.540012, 30.479557, 36.921150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124115, 31.001886, 36.673603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383453, 31.196281, 36.908024>,  <35.539055, 31.312920, 37.048676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383453, 31.196281, 36.908024>,  <35.124115, 31.001886, 36.673603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383453, 31.196281, 36.908024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062996, 0.732880, -0.677435,
		-0.758734, 0.476132, 0.444545,
		0.648347, 0.485989, 0.586056,
		35.577957, 31.342077, 37.083839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829403, 31.650351, 36.770031>,  <35.124115, 31.001886, 36.673603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829403, 31.650351, 36.770031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223480, 31.676283, 36.833527>,  <35.459927, 31.691843, 36.871624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223480, 31.676283, 36.833527>,  <34.829403, 31.650351, 36.770031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223480, 31.676283, 36.833527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080446, 0.642795, -0.761802,
		-0.151424, 0.763290, 0.628060,
		0.985190, 0.064830, 0.158738,
		35.519035, 31.695732, 36.881149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055691, 32.415531, 36.911942>,  <34.829403, 31.650351, 36.770031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055691, 32.415531, 36.911942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387405, 32.236595, 36.777977>,  <35.586433, 32.129234, 36.697598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387405, 32.236595, 36.777977>,  <35.055691, 32.415531, 36.911942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387405, 32.236595, 36.777977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258749, 0.838584, -0.479401,
		0.495309, 0.310903, 0.811177,
		0.829287, -0.447343, -0.334913,
		35.636192, 32.102390, 36.677502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545677, 32.938301, 36.822197>,  <35.055691, 32.415531, 36.911942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545677, 32.938301, 36.822197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706314, 32.641228, 36.607853>,  <35.802696, 32.462982, 36.479248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706314, 32.641228, 36.607853>,  <35.545677, 32.938301, 36.822197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706314, 32.641228, 36.607853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480731, 0.668973, -0.566898,
		0.779502, -0.029945, 0.625683,
		0.401589, -0.742683, -0.535861,
		35.826790, 32.418423, 36.447094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256344, 33.123623, 36.875820>,  <35.545677, 32.938301, 36.822197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256344, 33.123623, 36.875820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170628, 32.905174, 36.551888>,  <36.119198, 32.774105, 36.357529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170628, 32.905174, 36.551888>,  <36.256344, 33.123623, 36.875820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170628, 32.905174, 36.551888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546147, 0.620388, -0.562888,
		0.809817, -0.562909, 0.165321,
		-0.214291, -0.546125, -0.809831,
		36.106339, 32.741337, 36.308937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833363, 32.857246, 36.472427>,  <36.256344, 33.123623, 36.875820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833363, 32.857246, 36.472427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533104, 32.906281, 36.212738>,  <36.352947, 32.935699, 36.056923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533104, 32.906281, 36.212738>,  <36.833363, 32.857246, 36.472427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533104, 32.906281, 36.212738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597651, 0.544897, -0.588134,
		0.281668, -0.829494, -0.482288,
		-0.750651, 0.122582, -0.649228,
		36.307907, 32.943054, 36.017971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213737, 32.237217, 36.133762>,  <36.833363, 32.857246, 36.472427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213737, 32.237217, 36.133762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307392, 32.324772, 36.512661>,  <37.363586, 32.377304, 36.739998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307392, 32.324772, 36.512661>,  <37.213737, 32.237217, 36.133762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307392, 32.324772, 36.512661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213398, -0.962135, 0.169578,
		0.948495, 0.162436, -0.271979,
		0.234135, 0.218883, 0.947244,
		37.377632, 32.390438, 36.796833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618610, 31.639084, 36.071270>,  <37.213737, 32.237217, 36.133762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618610, 31.639084, 36.071270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936474, 31.458628, 35.908794>,  <38.127193, 31.350353, 35.811310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936474, 31.458628, 35.908794>,  <37.618610, 31.639084, 36.071270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936474, 31.458628, 35.908794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091572, -0.572375, 0.814863,
		-0.600113, -0.684732, -0.413529,
		0.794656, -0.451142, -0.406192,
		38.174870, 31.323286, 35.786938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503590, 30.905315, 35.833759>,  <37.618610, 31.639084, 36.071270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503590, 30.905315, 35.833759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865467, 31.004519, 35.972332>,  <38.082596, 31.064041, 36.055477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865467, 31.004519, 35.972332>,  <37.503590, 30.905315, 35.833759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865467, 31.004519, 35.972332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070644, -0.714541, 0.696017,
		0.420160, -0.654157, -0.628922,
		0.904696, 0.248009, 0.346435,
		38.136875, 31.078920, 36.076263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995316, 30.265190, 35.849594>,  <37.503590, 30.905315, 35.833759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995316, 30.265190, 35.849594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171867, 30.484150, 36.133999>,  <38.277798, 30.615526, 36.304642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171867, 30.484150, 36.133999>,  <37.995316, 30.265190, 35.849594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171867, 30.484150, 36.133999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078558, -0.765757, 0.638314,
		0.893877, -0.337592, -0.294984,
		0.441375, 0.547401, 0.711014,
		38.304279, 30.648371, 36.347301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379871, 29.859810, 36.202805>,  <37.995316, 30.265190, 35.849594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379871, 29.859810, 36.202805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366650, 30.158617, 36.468395>,  <38.358715, 30.337902, 36.627750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366650, 30.158617, 36.468395>,  <38.379871, 29.859810, 36.202805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366650, 30.158617, 36.468395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140219, -0.661240, 0.736953,
		0.989569, -0.068742, 0.126604,
		-0.033057, 0.747018, 0.663981,
		38.356731, 30.382723, 36.667591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677441, 29.619640, 36.887051>,  <38.379871, 29.859810, 36.202805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677441, 29.619640, 36.887051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504238, 29.952707, 37.025131>,  <38.400314, 30.152548, 37.107979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504238, 29.952707, 37.025131>,  <38.677441, 29.619640, 36.887051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504238, 29.952707, 37.025131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198437, -0.461628, 0.864594,
		0.879275, 0.305878, 0.365122,
		-0.433010, 0.832670, 0.345200,
		38.374336, 30.202509, 37.128693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996891, 29.756035, 37.526245>,  <38.677441, 29.619640, 36.887051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996891, 29.756035, 37.526245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636814, 29.929911, 37.515625>,  <38.420769, 30.034235, 37.509254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636814, 29.929911, 37.515625>,  <38.996891, 29.756035, 37.526245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636814, 29.929911, 37.515625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200850, -0.360304, 0.910956,
		0.386417, 0.825365, 0.411649,
		-0.900190, 0.434688, -0.026547,
		38.366756, 30.060318, 37.507660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877823, 30.103678, 38.169884>,  <38.996891, 29.756035, 37.526245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877823, 30.103678, 38.169884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504902, 30.071342, 38.028877>,  <38.281147, 30.051941, 37.944271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504902, 30.071342, 38.028877>,  <38.877823, 30.103678, 38.169884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504902, 30.071342, 38.028877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314553, -0.299809, 0.900650,
		-0.178497, 0.950568, 0.254085,
		-0.932306, -0.080840, -0.352519,
		38.225208, 30.047091, 37.923122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498837, 30.486099, 38.560555>,  <38.877823, 30.103678, 38.169884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498837, 30.486099, 38.560555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244999, 30.218056, 38.406544>,  <38.092697, 30.057230, 38.314137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244999, 30.218056, 38.406544>,  <38.498837, 30.486099, 38.560555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244999, 30.218056, 38.406544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412035, -0.128133, 0.902114,
		-0.653850, 0.731119, -0.194797,
		-0.634593, -0.670110, -0.385026,
		38.054623, 30.017023, 38.291035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839413, 30.536737, 38.981064>,  <38.498837, 30.486099, 38.560555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839413, 30.536737, 38.981064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823540, 30.182066, 38.796791>,  <37.814018, 29.969263, 38.686226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823540, 30.182066, 38.796791>,  <37.839413, 30.536737, 38.981064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823540, 30.182066, 38.796791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408313, -0.406408, 0.817382,
		-0.911979, 0.220536, -0.345916,
		-0.039679, -0.886677, -0.460683,
		37.811638, 29.916063, 38.658585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176834, 30.146097, 39.147339>,  <37.839413, 30.536737, 38.981064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176834, 30.146097, 39.147339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430874, 29.862051, 39.025757>,  <37.583298, 29.691624, 38.952808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430874, 29.862051, 39.025757>,  <37.176834, 30.146097, 39.147339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430874, 29.862051, 39.025757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328050, -0.604216, 0.726159,
		-0.699308, -0.361472, -0.616690,
		0.635100, -0.710113, -0.303952,
		37.621403, 29.649017, 38.934570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845963, 29.465967, 39.269413>,  <37.176834, 30.146097, 39.147339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845963, 29.465967, 39.269413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234982, 29.386179, 39.221481>,  <37.468395, 29.338306, 39.192722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234982, 29.386179, 39.221481>,  <36.845963, 29.465967, 39.269413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234982, 29.386179, 39.221481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038000, -0.644198, 0.763914,
		-0.229571, -0.738391, -0.634095,
		0.972550, -0.199468, -0.119831,
		37.526745, 29.326338, 39.185532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882038, 28.731810, 39.221779>,  <36.845963, 29.465967, 39.269413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882038, 28.731810, 39.221779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258812, 28.837893, 39.304176>,  <37.484875, 28.901543, 39.353615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258812, 28.837893, 39.304176>,  <36.882038, 28.731810, 39.221779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258812, 28.837893, 39.304176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071489, -0.757724, 0.648647,
		0.328109, -0.596255, -0.732683,
		0.941931, 0.265206, 0.205991,
		37.541389, 28.917454, 39.365974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247131, 28.091890, 39.149158>,  <36.882038, 28.731810, 39.221779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247131, 28.091890, 39.149158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452461, 28.351835, 39.373367>,  <37.575657, 28.507801, 39.507893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452461, 28.351835, 39.373367>,  <37.247131, 28.091890, 39.149158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452461, 28.351835, 39.373367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056224, -0.677199, 0.733648,
		0.856353, -0.345083, -0.384158,
		0.513321, 0.649861, 0.560520,
		37.606457, 28.546793, 39.541523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658905, 27.663857, 39.590340>,  <37.247131, 28.091890, 39.149158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658905, 27.663857, 39.590340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669506, 28.019337, 39.773430>,  <37.675869, 28.232624, 39.883282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669506, 28.019337, 39.773430>,  <37.658905, 27.663857, 39.590340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669506, 28.019337, 39.773430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113883, -0.457587, 0.881842,
		0.993140, 0.028752, -0.113337,
		0.026506, 0.888700, 0.457722,
		37.677460, 28.285946, 39.910748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156868, 27.573177, 40.187737>,  <37.658905, 27.663857, 39.590340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156868, 27.573177, 40.187737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942619, 27.895840, 40.287670>,  <37.814072, 28.089437, 40.347630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942619, 27.895840, 40.287670>,  <38.156868, 27.573177, 40.187737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942619, 27.895840, 40.287670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154868, -0.384670, 0.909970,
		0.830136, 0.448707, 0.330962,
		-0.535621, 0.806654, 0.249838,
		37.781933, 28.137836, 40.362621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491478, 27.934475, 40.739925>,  <38.156868, 27.573177, 40.187737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491478, 27.934475, 40.739925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119850, 28.081631, 40.755383>,  <37.896873, 28.169924, 40.764656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119850, 28.081631, 40.755383>,  <38.491478, 27.934475, 40.739925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119850, 28.081631, 40.755383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068512, -0.273779, 0.959349,
		0.363512, 0.888652, 0.279564,
		-0.929067, 0.367888, 0.038639,
		37.841129, 28.191998, 40.766975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435249, 28.230150, 41.383705>,  <38.491478, 27.934475, 40.739925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435249, 28.230150, 41.383705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056862, 28.167624, 41.270065>,  <37.829830, 28.130108, 41.201881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056862, 28.167624, 41.270065>,  <38.435249, 28.230150, 41.383705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056862, 28.167624, 41.270065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247344, -0.218698, 0.943924,
		-0.209684, 0.963190, 0.168217,
		-0.945967, -0.156318, -0.284097,
		37.773071, 28.120728, 41.184837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098042, 28.637930, 41.833805>,  <38.435249, 28.230150, 41.383705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098042, 28.637930, 41.833805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850315, 28.359114, 41.689262>,  <37.701679, 28.191824, 41.602535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850315, 28.359114, 41.689262>,  <38.098042, 28.637930, 41.833805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850315, 28.359114, 41.689262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411733, -0.103551, 0.905402,
		-0.668519, 0.709517, -0.222862,
		-0.619320, -0.697039, -0.361357,
		37.664520, 28.150002, 41.580856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413818, 28.793623, 42.035774>,  <38.098042, 28.637930, 41.833805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413818, 28.793623, 42.035774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400478, 28.406340, 41.936607>,  <37.392475, 28.173969, 41.877110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400478, 28.406340, 41.936607>,  <37.413818, 28.793623, 42.035774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400478, 28.406340, 41.936607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349147, -0.221136, 0.910602,
		-0.936474, 0.116931, -0.330670,
		-0.033355, -0.968208, -0.247914,
		37.390472, 28.115877, 41.862232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781979, 28.506813, 42.197369>,  <37.413818, 28.793623, 42.035774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781979, 28.506813, 42.197369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027145, 28.190845, 42.189754>,  <37.174244, 28.001265, 42.185184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027145, 28.190845, 42.189754>,  <36.781979, 28.506813, 42.197369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027145, 28.190845, 42.189754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380498, -0.316182, 0.869051,
		-0.692499, -0.525411, -0.494356,
		0.612916, -0.789919, -0.019038,
		37.211021, 27.953871, 42.184044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357414, 27.976143, 42.455132>,  <36.781979, 28.506813, 42.197369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357414, 27.976143, 42.455132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738434, 27.860302, 42.492611>,  <36.967045, 27.790798, 42.515099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738434, 27.860302, 42.492611>,  <36.357414, 27.976143, 42.455132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738434, 27.860302, 42.492611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192595, -0.335094, 0.922290,
		-0.235698, -0.896574, -0.374970,
		0.952551, -0.289599, 0.093695,
		37.024200, 27.773422, 42.520718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305202, 27.281450, 42.695366>,  <36.357414, 27.976143, 42.455132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305202, 27.281450, 42.695366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657532, 27.432720, 42.809299>,  <36.868931, 27.523481, 42.877659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657532, 27.432720, 42.809299>,  <36.305202, 27.281450, 42.695366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657532, 27.432720, 42.809299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123464, -0.397328, 0.909333,
		0.457060, -0.836131, -0.303285,
		0.880825, 0.378175, 0.284834,
		36.921780, 27.546173, 42.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513214, 26.780861, 43.174923>,  <36.305202, 27.281450, 42.695366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513214, 26.780861, 43.174923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764606, 27.082430, 43.251457>,  <36.915443, 27.263371, 43.297379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764606, 27.082430, 43.251457>,  <36.513214, 26.780861, 43.174923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764606, 27.082430, 43.251457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143744, -0.129180, 0.981147,
		0.764427, -0.644137, 0.027184,
		0.628481, 0.753923, 0.191340,
		36.953152, 27.308607, 43.308861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701385, 26.680368, 43.869587>,  <36.513214, 26.780861, 43.174923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701385, 26.680368, 43.869587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825912, 27.059929, 43.848919>,  <36.900627, 27.287664, 43.836517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825912, 27.059929, 43.848919>,  <36.701385, 26.680368, 43.869587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825912, 27.059929, 43.848919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114495, 0.091426, 0.989208,
		0.943384, -0.302042, 0.137107,
		0.311317, 0.948900, -0.051667,
		36.919308, 27.344599, 43.833420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253624, 26.873598, 44.293846>,  <36.701385, 26.680368, 43.869587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253624, 26.873598, 44.293846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016586, 27.194069, 44.260502>,  <36.874363, 27.386351, 44.240494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016586, 27.194069, 44.260502>,  <37.253624, 26.873598, 44.293846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016586, 27.194069, 44.260502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173681, -0.026030, 0.984458,
		0.786554, 0.597863, 0.154574,
		-0.592594, 0.801176, -0.083364,
		36.838806, 27.434422, 44.235493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358852, 27.241270, 44.963238>,  <37.253624, 26.873598, 44.293846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358852, 27.241270, 44.963238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045094, 27.427176, 44.798939>,  <36.856838, 27.538719, 44.700359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045094, 27.427176, 44.798939>,  <37.358852, 27.241270, 44.963238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045094, 27.427176, 44.798939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446916, 0.035707, 0.893863,
		0.430100, 0.884715, 0.179701,
		-0.784398, 0.464762, -0.410751,
		36.809772, 27.566605, 44.675713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369972, 27.983097, 45.044151>,  <37.358852, 27.241270, 44.963238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369972, 27.983097, 45.044151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981564, 27.912516, 44.979679>,  <36.748516, 27.870167, 44.940998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981564, 27.912516, 44.979679>,  <37.369972, 27.983097, 45.044151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981564, 27.912516, 44.979679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217514, 0.373155, 0.901911,
		-0.099000, 0.910835, -0.400723,
		-0.971023, -0.176453, -0.161177,
		36.690258, 27.859579, 44.931328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152161, 28.437744, 45.472309>,  <37.369972, 27.983097, 45.044151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152161, 28.437744, 45.472309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833157, 28.210520, 45.391041>,  <36.641754, 28.074184, 45.342281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833157, 28.210520, 45.391041>,  <37.152161, 28.437744, 45.472309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833157, 28.210520, 45.391041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411349, 0.265659, 0.871904,
		-0.441322, 0.778929, -0.445538,
		-0.797513, -0.568062, -0.203171,
		36.593903, 28.040100, 45.330090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494347, 28.837618, 45.765533>,  <37.152161, 28.437744, 45.472309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494347, 28.837618, 45.765533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387608, 28.453947, 45.728077>,  <36.323563, 28.223743, 45.705601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387608, 28.453947, 45.728077>,  <36.494347, 28.837618, 45.765533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387608, 28.453947, 45.728077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383166, 0.016434, 0.923533,
		-0.884294, 0.282326, -0.371910,
		-0.266849, -0.959178, -0.093645,
		36.307552, 28.166193, 45.699982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819042, 28.777529, 45.948433>,  <36.494347, 28.837618, 45.765533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819042, 28.777529, 45.948433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998085, 28.423260, 45.997795>,  <36.105511, 28.210699, 46.027412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998085, 28.423260, 45.997795>,  <35.819042, 28.777529, 45.948433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998085, 28.423260, 45.997795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193596, 0.038751, 0.980316,
		-0.873021, -0.462689, -0.154118,
		0.447609, -0.885673, 0.123406,
		36.132366, 28.157558, 46.034817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296909, 28.294170, 46.131210>,  <35.819042, 28.777529, 45.948433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296909, 28.294170, 46.131210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654999, 28.168245, 46.257366>,  <35.869854, 28.092691, 46.333061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654999, 28.168245, 46.257366>,  <35.296909, 28.294170, 46.131210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654999, 28.168245, 46.257366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318078, 0.044261, 0.947031,
		-0.312095, -0.948122, -0.060511,
		0.895223, -0.314811, 0.315390,
		35.923565, 28.073803, 46.351982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149487, 27.963823, 46.698933>,  <35.296909, 28.294170, 46.131210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149487, 27.963823, 46.698933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546585, 27.960720, 46.746937>,  <35.784843, 27.958858, 46.775738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546585, 27.960720, 46.746937>,  <35.149487, 27.963823, 46.698933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546585, 27.960720, 46.746937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120009, -0.128417, 0.984433,
		0.007775, -0.991690, -0.128416,
		0.992743, -0.007757, 0.120010,
		35.844406, 27.958391, 46.782940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247021, 27.402592, 47.198643>,  <35.149487, 27.963823, 46.698933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247021, 27.402592, 47.198643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556187, 27.656395, 47.198795>,  <35.741688, 27.808676, 47.198887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556187, 27.656395, 47.198795>,  <35.247021, 27.402592, 47.198643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556187, 27.656395, 47.198795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057289, -0.070389, 0.995873,
		0.631916, -0.769705, -0.090755,
		0.772917, 0.634507, 0.000384,
		35.788063, 27.846746, 47.198910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741692, 27.075947, 47.541470>,  <35.247021, 27.402592, 47.198643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741692, 27.075947, 47.541470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879280, 27.451414, 47.551159>,  <35.961834, 27.676695, 47.556973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879280, 27.451414, 47.551159>,  <35.741692, 27.075947, 47.541470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879280, 27.451414, 47.551159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177313, -0.090267, 0.980006,
		0.922088, -0.332794, -0.197487,
		0.343966, 0.938669, 0.024225,
		35.982471, 27.733015, 47.558426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366047, 27.070192, 48.019527>,  <35.741692, 27.075947, 47.541470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366047, 27.070192, 48.019527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202072, 27.435019, 48.023178>,  <36.103687, 27.653915, 48.025368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202072, 27.435019, 48.023178>,  <36.366047, 27.070192, 48.019527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202072, 27.435019, 48.023178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138935, -0.072333, 0.987656,
		0.901468, 0.403612, 0.156371,
		-0.409941, 0.912066, 0.009130,
		36.079090, 27.708639, 48.025917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713902, 27.395491, 48.635223>,  <36.366047, 27.070192, 48.019527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713902, 27.395491, 48.635223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392963, 27.615503, 48.542522>,  <36.200401, 27.747511, 48.486904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392963, 27.615503, 48.542522>,  <36.713902, 27.395491, 48.635223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392963, 27.615503, 48.542522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005917, 0.380930, 0.924585,
		0.596831, 0.743208, -0.302383,
		-0.802345, 0.550032, -0.231748,
		36.152260, 27.780512, 48.473000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845848, 27.959358, 48.976337>,  <36.713902, 27.395491, 48.635223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845848, 27.959358, 48.976337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451672, 27.975912, 48.910366>,  <36.215168, 27.985844, 48.870785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451672, 27.975912, 48.910366>,  <36.845848, 27.959358, 48.976337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451672, 27.975912, 48.910366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161636, 0.073191, 0.984133,
		0.052799, 0.996459, -0.065436,
		-0.985437, 0.041384, -0.164928,
		36.156040, 27.988327, 48.860889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710712, 28.623917, 49.315266>,  <36.845848, 27.959358, 48.976337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710712, 28.623917, 49.315266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401478, 28.372452, 49.281528>,  <36.215935, 28.221573, 49.261288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401478, 28.372452, 49.281528>,  <36.710712, 28.623917, 49.315266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401478, 28.372452, 49.281528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249382, 0.178993, 0.951719,
		-0.583215, 0.756798, -0.295156,
		-0.773091, -0.628663, -0.084341,
		36.169552, 28.183853, 49.256226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637634, 28.995293, 50.000973>,  <36.710712, 28.623917, 49.315266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637634, 28.995293, 50.000973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851936, 29.321400, 50.088882>,  <36.980518, 29.517063, 50.141628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851936, 29.321400, 50.088882>,  <36.637634, 28.995293, 50.000973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851936, 29.321400, 50.088882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108169, 0.324404, -0.939713,
		-0.837413, 0.479688, 0.261989,
		0.535760, 0.815268, 0.219773,
		37.012665, 29.565981, 50.154816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319565, 29.715984, 49.867661>,  <36.637634, 28.995293, 50.000973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319565, 29.715984, 49.867661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714245, 29.778126, 49.848564>,  <36.951054, 29.815411, 49.837105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714245, 29.778126, 49.848564>,  <36.319565, 29.715984, 49.867661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714245, 29.778126, 49.848564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111070, 0.430093, -0.895926,
		-0.118651, 0.889318, 0.441629,
		0.986704, 0.155354, -0.047745,
		37.010258, 29.824732, 49.834240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373413, 30.373974, 49.646641>,  <36.319565, 29.715984, 49.867661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373413, 30.373974, 49.646641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731339, 30.203089, 49.594791>,  <36.946095, 30.100557, 49.563683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731339, 30.203089, 49.594791>,  <36.373413, 30.373974, 49.646641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731339, 30.203089, 49.594791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056272, 0.395966, -0.916540,
		0.442883, 0.812836, 0.378355,
		0.894812, -0.427211, -0.129627,
		36.999783, 30.074926, 49.555904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703941, 30.883232, 49.292484>,  <36.373413, 30.373974, 49.646641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703941, 30.883232, 49.292484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969212, 30.596882, 49.205101>,  <37.128372, 30.425072, 49.152672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969212, 30.596882, 49.205101>,  <36.703941, 30.883232, 49.292484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969212, 30.596882, 49.205101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125056, 0.393747, -0.910673,
		0.737944, 0.576615, 0.350647,
		0.663174, -0.715876, -0.218454,
		37.168163, 30.382118, 49.139565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156681, 31.189795, 48.787045>,  <36.703941, 30.883232, 49.292484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156681, 31.189795, 48.787045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254955, 30.804146, 48.746830>,  <37.313919, 30.572756, 48.722702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254955, 30.804146, 48.746830>,  <37.156681, 31.189795, 48.787045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254955, 30.804146, 48.746830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232711, 0.159348, -0.959403,
		0.941001, 0.212317, 0.263512,
		0.245688, -0.964121, -0.100538,
		37.328663, 30.514910, 48.716667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902813, 31.152229, 48.463917>,  <37.156681, 31.189795, 48.787045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902813, 31.152229, 48.463917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694199, 30.815414, 48.408821>,  <37.569031, 30.613325, 48.375763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694199, 30.815414, 48.408821>,  <37.902813, 31.152229, 48.463917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694199, 30.815414, 48.408821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231713, 0.015594, -0.972659,
		0.821163, -0.539194, 0.186978,
		-0.521536, -0.842037, -0.137743,
		37.537739, 30.562803, 48.367496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327564, 30.670481, 48.079090>,  <37.902813, 31.152229, 48.463917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327564, 30.670481, 48.079090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946266, 30.562492, 48.024784>,  <37.717487, 30.497700, 47.992199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946266, 30.562492, 48.024784>,  <38.327564, 30.670481, 48.079090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946266, 30.562492, 48.024784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178252, -0.139562, -0.974037,
		0.244016, -0.952700, 0.181160,
		-0.953248, -0.269973, -0.135765,
		37.660290, 30.481501, 47.984055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344234, 30.146467, 47.653435>,  <38.327564, 30.670481, 48.079090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344234, 30.146467, 47.653435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966362, 30.274712, 47.625786>,  <37.739639, 30.351658, 47.609196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966362, 30.274712, 47.625786>,  <38.344234, 30.146467, 47.653435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966362, 30.274712, 47.625786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008951, -0.235877, -0.971742,
		-0.327857, -0.917371, 0.225699,
		-0.944685, 0.320612, -0.069123,
		37.682957, 30.370895, 47.605049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103645, 29.747421, 47.206913>,  <38.344234, 30.146467, 47.653435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103645, 29.747421, 47.206913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819782, 30.029047, 47.196445>,  <37.649464, 30.198023, 47.190166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819782, 30.029047, 47.196445>,  <38.103645, 29.747421, 47.206913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819782, 30.029047, 47.196445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012779, -0.049997, -0.998668,
		-0.704434, -0.708374, 0.044477,
		-0.709654, 0.704064, -0.026167,
		37.606888, 30.240267, 47.188595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541901, 29.439425, 46.996204>,  <38.103645, 29.747421, 47.206913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541901, 29.439425, 46.996204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510536, 29.829477, 46.913292>,  <37.491718, 30.063509, 46.863544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510536, 29.829477, 46.913292>,  <37.541901, 29.439425, 46.996204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510536, 29.829477, 46.913292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245581, -0.220410, -0.943986,
		-0.966200, -0.023115, 0.256757,
		-0.078412, 0.975133, -0.207283,
		37.487011, 30.122017, 46.851109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985317, 29.443707, 46.564014>,  <37.541901, 29.439425, 46.996204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985317, 29.443707, 46.564014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192295, 29.782408, 46.514595>,  <37.316483, 29.985628, 46.484943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192295, 29.782408, 46.514595>,  <36.985317, 29.443707, 46.564014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192295, 29.782408, 46.514595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115805, -0.073754, -0.990530,
		-0.847846, 0.526849, 0.059895,
		0.517442, 0.846753, -0.123544,
		37.347527, 30.036434, 46.477531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696384, 29.823442, 45.910870>,  <36.985317, 29.443707, 46.564014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696384, 29.823442, 45.910870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062607, 29.980000, 45.947906>,  <37.282341, 30.073935, 45.970131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062607, 29.980000, 45.947906>,  <36.696384, 29.823442, 45.910870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062607, 29.980000, 45.947906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033052, 0.156223, -0.987169,
		-0.400837, 0.906866, 0.130094,
		0.915553, 0.391394, 0.092594,
		37.337273, 30.097418, 45.975685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740559, 30.364712, 45.375759>,  <36.696384, 29.823442, 45.910870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740559, 30.364712, 45.375759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115440, 30.274117, 45.481861>,  <37.340370, 30.219759, 45.545521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115440, 30.274117, 45.481861>,  <36.740559, 30.364712, 45.375759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115440, 30.274117, 45.481861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294287, 0.105276, -0.949901,
		0.187217, 0.968308, 0.165318,
		0.937201, -0.226488, 0.265251,
		37.396599, 30.206169, 45.561436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170467, 30.809790, 45.102287>,  <36.740559, 30.364712, 45.375759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170467, 30.809790, 45.102287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408001, 30.497377, 45.179588>,  <37.550522, 30.309929, 45.225967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408001, 30.497377, 45.179588>,  <37.170467, 30.809790, 45.102287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408001, 30.497377, 45.179588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372473, 0.053966, -0.926473,
		0.713177, 0.622154, 0.322960,
		0.593837, -0.781033, 0.193249,
		37.586151, 30.263067, 45.237564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741207, 30.909504, 44.629211>,  <37.170467, 30.809790, 45.102287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741207, 30.909504, 44.629211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781261, 30.531155, 44.752693>,  <37.805294, 30.304146, 44.826782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781261, 30.531155, 44.752693>,  <37.741207, 30.909504, 44.629211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781261, 30.531155, 44.752693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376403, -0.251193, -0.891753,
		0.921029, 0.205492, 0.330876,
		0.100135, -0.945873, 0.308704,
		37.811302, 30.247393, 44.845303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388618, 30.747850, 44.347466>,  <37.741207, 30.909504, 44.629211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388618, 30.747850, 44.347466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228798, 30.396597, 44.452721>,  <38.132908, 30.185844, 44.515873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228798, 30.396597, 44.452721>,  <38.388618, 30.747850, 44.347466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228798, 30.396597, 44.452721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419712, -0.430424, -0.799110,
		0.814987, -0.208841, 0.540539,
		-0.399547, -0.878135, 0.263137,
		38.108932, 30.133156, 44.531662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905945, 30.295746, 44.358501>,  <38.388618, 30.747850, 44.347466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905945, 30.295746, 44.358501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570522, 30.097851, 44.267235>,  <38.369270, 29.979113, 44.212475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570522, 30.097851, 44.267235>,  <38.905945, 30.295746, 44.358501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570522, 30.097851, 44.267235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435628, -0.357356, -0.826151,
		0.327193, -0.792168, 0.515184,
		-0.838554, -0.494740, -0.228166,
		38.318954, 29.949429, 44.198784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178215, 29.656904, 44.091133>,  <38.905945, 30.295746, 44.358501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178215, 29.656904, 44.091133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795155, 29.680733, 43.978458>,  <38.565319, 29.695030, 43.910854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795155, 29.680733, 43.978458>,  <39.178215, 29.656904, 44.091133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795155, 29.680733, 43.978458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254794, -0.280245, -0.925496,
		-0.134071, -0.958079, 0.253200,
		-0.957656, 0.059569, -0.281686,
		38.507858, 29.698603, 43.893951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099834, 29.103878, 43.697529>,  <39.178215, 29.656904, 44.091133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099834, 29.103878, 43.697529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789116, 29.332216, 43.591152>,  <38.602684, 29.469219, 43.527328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789116, 29.332216, 43.591152>,  <39.099834, 29.103878, 43.697529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789116, 29.332216, 43.591152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241195, -0.120407, -0.962978,
		-0.581732, -0.812181, -0.044153,
		-0.776796, 0.570845, -0.265939,
		38.556076, 29.503469, 43.511372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856110, 28.818661, 43.038750>,  <39.099834, 29.103878, 43.697529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856110, 28.818661, 43.038750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692493, 29.183495, 43.050007>,  <38.594322, 29.402395, 43.056763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692493, 29.183495, 43.050007>,  <38.856110, 28.818661, 43.038750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692493, 29.183495, 43.050007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044614, 0.050795, -0.997712,
		-0.911425, -0.406848, -0.061469,
		-0.409040, 0.912082, 0.028145,
		38.569782, 29.457119, 43.058449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243980, 28.954805, 42.485714>,  <38.856110, 28.818661, 43.038750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243980, 28.954805, 42.485714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408012, 29.313341, 42.553135>,  <38.506432, 29.528461, 42.593586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408012, 29.313341, 42.553135>,  <38.243980, 28.954805, 42.485714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408012, 29.313341, 42.553135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039783, 0.167053, -0.985145,
		-0.911180, 0.410698, 0.032847,
		0.410084, 0.896337, 0.168554,
		38.531036, 29.582243, 42.603703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883907, 29.383835, 42.000027>,  <38.243980, 28.954805, 42.485714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883907, 29.383835, 42.000027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205227, 29.581945, 42.132343>,  <38.398018, 29.700811, 42.211731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205227, 29.581945, 42.132343>,  <37.883907, 29.383835, 42.000027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205227, 29.581945, 42.132343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178563, 0.329575, -0.927090,
		-0.568184, 0.803793, 0.176308,
		0.803295, 0.495275, 0.330787,
		38.446217, 29.730528, 42.231579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870399, 30.013710, 41.730293>,  <37.883907, 29.383835, 42.000027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870399, 30.013710, 41.730293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258808, 29.978954, 41.819355>,  <38.491852, 29.958101, 41.872791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258808, 29.978954, 41.819355>,  <37.870399, 30.013710, 41.730293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258808, 29.978954, 41.819355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231354, 0.575540, -0.784365,
		-0.059991, 0.813144, 0.578963,
		0.971018, -0.086891, 0.222651,
		38.550114, 29.952887, 41.886150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064491, 30.564678, 41.440327>,  <37.870399, 30.013710, 41.730293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064491, 30.564678, 41.440327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418179, 30.405451, 41.538063>,  <38.630390, 30.309914, 41.596706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418179, 30.405451, 41.538063>,  <38.064491, 30.564678, 41.440327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418179, 30.405451, 41.538063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450621, 0.589363, -0.670516,
		0.122905, 0.702987, 0.700502,
		0.884214, -0.398071, 0.244345,
		38.683441, 30.286030, 41.611366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603153, 31.136463, 41.508400>,  <38.064491, 30.564678, 41.440327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603153, 31.136463, 41.508400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784966, 30.792570, 41.415226>,  <38.894054, 30.586235, 41.359322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784966, 30.792570, 41.415226>,  <38.603153, 31.136463, 41.508400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784966, 30.792570, 41.415226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566485, 0.480825, -0.669255,
		0.687381, 0.172245, 0.705577,
		0.454535, -0.859732, -0.232936,
		38.921326, 30.534651, 41.345345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272083, 31.411854, 41.220974>,  <38.603153, 31.136463, 41.508400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272083, 31.411854, 41.220974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254452, 31.026909, 41.113705>,  <39.243874, 30.795942, 41.049343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254452, 31.026909, 41.113705>,  <39.272083, 31.411854, 41.220974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254452, 31.026909, 41.113705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562600, 0.197909, -0.802691,
		0.825553, -0.186252, 0.532703,
		-0.044076, -0.962363, -0.268169,
		39.241230, 30.738199, 41.033253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899666, 31.162577, 40.984856>,  <39.272083, 31.411854, 41.220974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899666, 31.162577, 40.984856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674057, 30.894466, 40.791935>,  <39.538692, 30.733601, 40.676182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674057, 30.894466, 40.791935>,  <39.899666, 31.162577, 40.984856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674057, 30.894466, 40.791935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524158, 0.160710, -0.836320,
		0.638076, -0.724501, 0.260688,
		-0.564019, -0.670277, -0.482298,
		39.504852, 30.693384, 40.647247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335224, 30.695076, 40.670860>,  <39.899666, 31.162577, 40.984856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335224, 30.695076, 40.670860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994740, 30.675722, 40.461826>,  <39.790447, 30.664110, 40.336407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994740, 30.675722, 40.461826>,  <40.335224, 30.695076, 40.670860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994740, 30.675722, 40.461826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514289, 0.121555, -0.848959,
		0.104599, -0.991405, -0.078586,
		-0.851215, -0.048384, -0.522583,
		39.739376, 30.661207, 40.305050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329861, 30.195404, 40.001640>,  <40.335224, 30.695076, 40.670860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329861, 30.195404, 40.001640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049217, 30.474670, 39.944633>,  <39.880833, 30.642231, 39.910431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049217, 30.474670, 39.944633>,  <40.329861, 30.195404, 40.001640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049217, 30.474670, 39.944633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322832, 0.133151, -0.937043,
		-0.635236, -0.703446, -0.318810,
		-0.701609, 0.698165, -0.142513,
		39.838734, 30.684120, 39.901878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351398, 30.259222, 39.288990>,  <40.329861, 30.195404, 40.001640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351398, 30.259222, 39.288990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095535, 30.559265, 39.356136>,  <39.942017, 30.739290, 39.396423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095535, 30.559265, 39.356136>,  <40.351398, 30.259222, 39.288990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095535, 30.559265, 39.356136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165434, 0.347612, -0.922929,
		-0.750645, -0.562590, -0.346446,
		-0.639659, 0.750106, 0.167861,
		39.903637, 30.784296, 39.406494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008251, 30.345274, 38.685013>,  <40.351398, 30.259222, 39.288990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008251, 30.345274, 38.685013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966572, 30.693483, 38.877399>,  <39.941563, 30.902409, 38.992832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966572, 30.693483, 38.877399>,  <40.008251, 30.345274, 38.685013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966572, 30.693483, 38.877399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021281, 0.485444, -0.874009,
		-0.994329, -0.080837, -0.069109,
		-0.104201, 0.870522, 0.480970,
		39.935310, 30.954639, 39.021690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875999, 30.694660, 38.144234>,  <40.008251, 30.345274, 38.685013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875999, 30.694660, 38.144234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911407, 31.002344, 38.397369>,  <39.932652, 31.186954, 38.549252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911407, 31.002344, 38.397369>,  <39.875999, 30.694660, 38.144234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911407, 31.002344, 38.397369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183158, 0.611926, -0.769415,
		-0.979090, 0.184014, -0.086722,
		0.088516, 0.769211, 0.632835,
		39.937962, 31.233107, 38.587219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419319, 31.283571, 37.921459>,  <39.875999, 30.694660, 38.144234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419319, 31.283571, 37.921459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703579, 31.458813, 38.141655>,  <39.874134, 31.563957, 38.273773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703579, 31.458813, 38.141655>,  <39.419319, 31.283571, 37.921459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703579, 31.458813, 38.141655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147875, 0.671965, -0.725670,
		-0.687829, 0.597102, 0.412748,
		0.710651, 0.438102, 0.550493,
		39.916775, 31.590242, 38.306801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366390, 31.992567, 37.798561>,  <39.419319, 31.283571, 37.921459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366390, 31.992567, 37.798561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734402, 31.957043, 37.951221>,  <39.955208, 31.935728, 38.042820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734402, 31.957043, 37.951221>,  <39.366390, 31.992567, 37.798561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734402, 31.957043, 37.951221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301190, 0.783321, -0.543777,
		-0.250664, 0.615241, 0.747427,
		0.920029, -0.088812, 0.381655,
		40.010410, 31.930399, 38.065720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519138, 32.681213, 37.912834>,  <39.366390, 31.992567, 37.798561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519138, 32.681213, 37.912834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856400, 32.467117, 37.892376>,  <40.058758, 32.338661, 37.880100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856400, 32.467117, 37.892376>,  <39.519138, 32.681213, 37.912834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856400, 32.467117, 37.892376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407794, 0.698577, -0.587958,
		0.350427, 0.474880, 0.807273,
		0.843152, -0.535237, -0.051147,
		40.109344, 32.306545, 37.877033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026531, 33.201511, 38.072815>,  <39.519138, 32.681213, 37.912834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026531, 33.201511, 38.072815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174034, 32.904873, 37.848656>,  <40.262535, 32.726891, 37.714161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174034, 32.904873, 37.848656>,  <40.026531, 33.201511, 38.072815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174034, 32.904873, 37.848656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603198, 0.649623, -0.462755,
		0.707227, -0.167387, 0.686885,
		0.368757, -0.741601, -0.560399,
		40.284660, 32.682392, 37.680534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597363, 33.476170, 37.756634>,  <40.026531, 33.201511, 38.072815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597363, 33.476170, 37.756634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550888, 33.145283, 37.536736>,  <40.523003, 32.946751, 37.404797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550888, 33.145283, 37.536736>,  <40.597363, 33.476170, 37.756634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550888, 33.145283, 37.536736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653993, 0.352854, -0.669170,
		0.747525, -0.437277, 0.499995,
		-0.116187, -0.827214, -0.549743,
		40.516033, 32.897118, 37.371811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255466, 33.155262, 37.612743>,  <40.597363, 33.476170, 37.756634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255466, 33.155262, 37.612743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995209, 33.098671, 37.314308>,  <40.839054, 33.064716, 37.135246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995209, 33.098671, 37.314308>,  <41.255466, 33.155262, 37.612743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995209, 33.098671, 37.314308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662799, 0.373720, -0.648869,
		0.370625, -0.916689, -0.149391,
		-0.650642, -0.141471, -0.746090,
		40.800014, 33.056229, 37.090481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769016, 33.128250, 37.085663>,  <41.255466, 33.155262, 37.612743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769016, 33.128250, 37.085663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418438, 33.168705, 36.897354>,  <41.208092, 33.192978, 36.784370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418438, 33.168705, 36.897354>,  <41.769016, 33.128250, 37.085663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418438, 33.168705, 36.897354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469777, 0.394105, -0.789931,
		0.105642, -0.913484, -0.392920,
		-0.876441, 0.101135, -0.470768,
		41.155506, 33.199047, 36.756123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866280, 32.935616, 36.403828>,  <41.769016, 33.128250, 37.085663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866280, 32.935616, 36.403828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531410, 33.154121, 36.392914>,  <41.330490, 33.285225, 36.386364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531410, 33.154121, 36.392914>,  <41.866280, 32.935616, 36.403828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531410, 33.154121, 36.392914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384880, 0.552925, -0.739014,
		-0.388607, -0.629183, -0.673137,
		-0.837169, 0.546263, -0.027289,
		41.280258, 33.318001, 36.384727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610519, 32.999062, 35.707565>,  <41.866280, 32.935616, 36.403828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610519, 32.999062, 35.707565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506470, 33.323715, 35.916790>,  <41.444038, 33.518505, 36.042324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506470, 33.323715, 35.916790>,  <41.610519, 32.999062, 35.707565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506470, 33.323715, 35.916790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515609, 0.574768, -0.635445,
		-0.816383, 0.104396, -0.567997,
		-0.260128, 0.811630, 0.523058,
		41.428432, 33.567204, 36.073708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630798, 33.494225, 35.228298>,  <41.610519, 32.999062, 35.707565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630798, 33.494225, 35.228298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648113, 33.684296, 35.579826>,  <41.658504, 33.798340, 35.790745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648113, 33.684296, 35.579826>,  <41.630798, 33.494225, 35.228298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648113, 33.684296, 35.579826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484560, 0.759271, -0.434407,
		-0.873686, 0.444649, -0.197382,
		0.043292, 0.475179, 0.878824,
		41.661102, 33.826851, 35.843475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376389, 34.195000, 35.134666>,  <41.630798, 33.494225, 35.228298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376389, 34.195000, 35.134666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621197, 34.160435, 35.449112>,  <41.768082, 34.139694, 35.637779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621197, 34.160435, 35.449112>,  <41.376389, 34.195000, 35.134666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621197, 34.160435, 35.449112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610203, 0.683915, -0.399890,
		-0.503077, 0.724426, 0.471296,
		0.612018, -0.086411, 0.786109,
		41.804802, 34.134510, 35.684944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573231, 34.911369, 35.410194>,  <41.376389, 34.195000, 35.134666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573231, 34.911369, 35.410194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847378, 34.628342, 35.479027>,  <42.011868, 34.458523, 35.520329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847378, 34.628342, 35.479027>,  <41.573231, 34.911369, 35.410194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847378, 34.628342, 35.479027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693106, 0.561387, -0.452160,
		0.223329, 0.429169, 0.875179,
		0.685367, -0.707573, 0.172085,
		42.052986, 34.416069, 35.530651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217590, 35.106018, 35.816517>,  <41.573231, 34.911369, 35.410194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217590, 35.106018, 35.816517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366352, 34.807327, 35.595936>,  <42.455608, 34.628113, 35.463589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366352, 34.807327, 35.595936>,  <42.217590, 35.106018, 35.816517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366352, 34.807327, 35.595936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817179, 0.545169, -0.187110,
		0.440352, -0.381045, 0.812954,
		0.371900, -0.746723, -0.551448,
		42.477921, 34.583309, 35.430500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771095, 34.786186, 36.136913>,  <42.217590, 35.106018, 35.816517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771095, 34.786186, 36.136913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808380, 34.763374, 35.739307>,  <42.830750, 34.749687, 35.500744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808380, 34.763374, 35.739307>,  <42.771095, 34.786186, 36.136913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808380, 34.763374, 35.739307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801428, 0.596690, 0.040916,
		0.590783, -0.800443, 0.101323,
		0.093209, -0.057031, -0.994012,
		42.836342, 34.746265, 35.441105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500141, 34.537655, 36.048775>,  <42.771095, 34.786186, 36.136913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500141, 34.537655, 36.048775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876911, 34.651752, 35.977882>,  <44.102974, 34.720211, 35.935345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876911, 34.651752, 35.977882>,  <43.500141, 34.537655, 36.048775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876911, 34.651752, 35.977882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330361, 0.881866, -0.336413,
		0.060337, 0.375427, 0.924886,
		0.941924, 0.285248, -0.177235,
		44.159489, 34.737328, 35.924713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644409, 35.195396, 36.325882>,  <43.500141, 34.537655, 36.048775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644409, 35.195396, 36.325882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908966, 35.183441, 36.026104>,  <44.067699, 35.176270, 35.846237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908966, 35.183441, 36.026104>,  <43.644409, 35.195396, 36.325882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908966, 35.183441, 36.026104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290422, 0.911054, -0.292634,
		0.691528, 0.411202, 0.593888,
		0.661396, -0.029886, -0.749441,
		44.107384, 35.174477, 35.801273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945213, 35.860985, 36.437252>,  <43.644409, 35.195396, 36.325882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945213, 35.860985, 36.437252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027752, 35.732460, 36.067566>,  <44.077274, 35.655346, 35.845753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027752, 35.732460, 36.067566>,  <43.945213, 35.860985, 36.437252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027752, 35.732460, 36.067566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284538, 0.884024, -0.370864,
		0.936193, 0.339504, 0.090995,
		0.206351, -0.321309, -0.924219,
		44.089657, 35.636066, 35.790298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514523, 36.302929, 36.123310>,  <43.945213, 35.860985, 36.437252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514523, 36.302929, 36.123310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281055, 36.155567, 35.833866>,  <44.140976, 36.067150, 35.660198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281055, 36.155567, 35.833866>,  <44.514523, 36.302929, 36.123310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281055, 36.155567, 35.833866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037637, 0.877923, -0.477320,
		0.811121, -0.305830, -0.498548,
		-0.583665, -0.368400, -0.723613,
		44.105957, 36.045048, 35.616783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746346, 36.646656, 35.564991>,  <44.514523, 36.302929, 36.123310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746346, 36.646656, 35.564991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398769, 36.508011, 35.423683>,  <44.190224, 36.424824, 35.338898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398769, 36.508011, 35.423683>,  <44.746346, 36.646656, 35.564991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398769, 36.508011, 35.423683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196664, 0.896850, -0.396211,
		0.454163, -0.274809, -0.847477,
		-0.868942, -0.346612, -0.353271,
		44.138088, 36.404026, 35.317703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821873, 36.772343, 34.881332>,  <44.746346, 36.646656, 35.564991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821873, 36.772343, 34.881332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.430794, 36.708755, 34.936226>,  <44.196148, 36.670601, 34.969162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.430794, 36.708755, 34.936226>,  <44.821873, 36.772343, 34.881332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430794, 36.708755, 34.936226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206997, 0.839811, -0.501866,
		-0.035470, -0.519081, -0.853989,
		-0.977698, -0.158972, 0.137236,
		44.137486, 36.661064, 34.977398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522301, 36.779579, 34.161888>,  <44.821873, 36.772343, 34.881332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522301, 36.779579, 34.161888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230755, 36.858887, 34.424015>,  <44.055828, 36.906471, 34.581291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230755, 36.858887, 34.424015>,  <44.522301, 36.779579, 34.161888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230755, 36.858887, 34.424015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387106, 0.670130, -0.633304,
		-0.564717, -0.715271, -0.411682,
		-0.728865, 0.198273, 0.655319,
		44.012096, 36.918369, 34.620609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840557, 36.763199, 33.751560>,  <44.522301, 36.779579, 34.161888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840557, 36.763199, 33.751560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772469, 36.958553, 34.093906>,  <43.731617, 37.075764, 34.299313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772469, 36.958553, 34.093906>,  <43.840557, 36.763199, 33.751560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772469, 36.958553, 34.093906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460777, 0.728290, -0.507226,
		-0.871040, -0.480703, 0.101068,
		-0.170218, 0.488383, 0.855867,
		43.721401, 37.105068, 34.350666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206890, 36.848404, 33.778290>,  <43.840557, 36.763199, 33.751560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206890, 36.848404, 33.778290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348537, 37.140087, 34.012505>,  <43.433525, 37.315098, 34.153034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348537, 37.140087, 34.012505>,  <43.206890, 36.848404, 33.778290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348537, 37.140087, 34.012505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630390, 0.648610, -0.426513,
		-0.690804, -0.218083, 0.689369,
		0.354117, 0.729208, 0.585540,
		43.454773, 37.358849, 34.188168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654465, 37.246616, 33.843479>,  <43.206890, 36.848404, 33.778290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654465, 37.246616, 33.843479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951977, 37.481964, 33.970364>,  <43.130482, 37.623173, 34.046494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951977, 37.481964, 33.970364>,  <42.654465, 37.246616, 33.843479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951977, 37.481964, 33.970364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478595, 0.800048, -0.361760,
		-0.466628, 0.117255, 0.876647,
		0.743777, 0.588366, 0.317208,
		43.175110, 37.658474, 34.065525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355865, 37.816895, 34.194489>,  <42.654465, 37.246616, 33.843479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355865, 37.816895, 34.194489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724365, 37.927895, 34.085457>,  <42.945465, 37.994495, 34.020039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724365, 37.927895, 34.085457>,  <42.355865, 37.816895, 34.194489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724365, 37.927895, 34.085457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328019, 0.930862, -0.160932,
		0.209074, 0.237669, 0.948579,
		0.921245, 0.277505, -0.272579,
		43.000740, 38.011147, 34.003681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481888, 38.630859, 34.416645>,  <42.355865, 37.816895, 34.194489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481888, 38.630859, 34.416645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757900, 38.552711, 34.137882>,  <42.923508, 38.505825, 33.970623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757900, 38.552711, 34.137882>,  <42.481888, 38.630859, 34.416645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757900, 38.552711, 34.137882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108357, 0.924144, -0.366357,
		0.715620, 0.328314, 0.616521,
		0.690034, -0.195368, -0.696910,
		42.964912, 38.494102, 33.928810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981712, 39.080421, 34.487465>,  <42.481888, 38.630859, 34.416645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981712, 39.080421, 34.487465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029789, 38.969090, 34.106289>,  <43.058636, 38.902290, 33.877583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029789, 38.969090, 34.106289>,  <42.981712, 39.080421, 34.487465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029789, 38.969090, 34.106289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034589, 0.960485, -0.276175,
		0.992149, 0.000232, 0.125065,
		0.120187, -0.278332, -0.952936,
		43.065845, 38.885590, 33.820408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354095, 39.588673, 34.194092>,  <42.981712, 39.080421, 34.487465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354095, 39.588673, 34.194092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212872, 39.402565, 33.869408>,  <43.128136, 39.290901, 33.674599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212872, 39.402565, 33.869408>,  <43.354095, 39.588673, 34.194092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212872, 39.402565, 33.869408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133174, 0.883737, -0.448635,
		0.926073, -0.050298, -0.373977,
		-0.353063, -0.465272, -0.811707,
		43.106953, 39.262981, 33.625896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622486, 39.901241, 33.550877>,  <43.354095, 39.588673, 34.194092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622486, 39.901241, 33.550877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335762, 39.674477, 33.388500>,  <43.163727, 39.538418, 33.291077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335762, 39.674477, 33.388500>,  <43.622486, 39.901241, 33.550877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335762, 39.674477, 33.388500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131757, 0.681824, -0.719553,
		0.684723, -0.462285, -0.563425,
		-0.716795, -0.566929, -0.405951,
		43.120716, 39.504402, 33.266720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647190, 40.056873, 32.857079>,  <43.622486, 39.901241, 33.550877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647190, 40.056873, 32.857079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278580, 39.903072, 32.878799>,  <43.057415, 39.810791, 32.891834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278580, 39.903072, 32.878799>,  <43.647190, 40.056873, 32.857079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278580, 39.903072, 32.878799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328431, 0.697134, -0.637289,
		0.207180, -0.605113, -0.768709,
		-0.921526, -0.384502, 0.054305,
		43.002121, 39.787724, 32.895092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446152, 39.909634, 32.164387>,  <43.647190, 40.056873, 32.857079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446152, 39.909634, 32.164387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114189, 39.936646, 32.385910>,  <42.915012, 39.952854, 32.518822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114189, 39.936646, 32.385910>,  <43.446152, 39.909634, 32.164387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114189, 39.936646, 32.385910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371008, 0.674551, -0.638227,
		-0.416671, -0.735133, -0.534757,
		-0.829903, 0.067531, 0.553806,
		42.865219, 39.956905, 32.552052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900780, 39.842171, 31.673065>,  <43.446152, 39.909634, 32.164387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900780, 39.842171, 31.673065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672005, 39.989918, 31.966038>,  <42.534740, 40.078568, 32.141823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672005, 39.989918, 31.966038>,  <42.900780, 39.842171, 31.673065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672005, 39.989918, 31.966038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555728, 0.482288, -0.677173,
		-0.603372, -0.794332, -0.070567,
		-0.571934, 0.369372, 0.732432,
		42.500423, 40.100731, 32.185768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266876, 39.839729, 31.423931>,  <42.900780, 39.842171, 31.673065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266876, 39.839729, 31.423931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194893, 40.094421, 31.723848>,  <42.151703, 40.247238, 31.903799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194893, 40.094421, 31.723848>,  <42.266876, 39.839729, 31.423931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194893, 40.094421, 31.723848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566323, 0.556175, -0.608233,
		-0.804297, -0.534082, 0.260507,
		-0.179959, 0.636731, 0.749792,
		42.140903, 40.285442, 31.948786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579685, 39.948364, 31.411865>,  <42.266876, 39.839729, 31.423931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579685, 39.948364, 31.411865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751602, 40.253189, 31.605577>,  <41.854752, 40.436085, 31.721806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751602, 40.253189, 31.605577>,  <41.579685, 39.948364, 31.411865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751602, 40.253189, 31.605577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485629, 0.647266, -0.587547,
		-0.761209, 0.017344, 0.648274,
		0.429796, 0.762067, 0.484283,
		41.880543, 40.481808, 31.750862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995068, 40.374523, 31.599796>,  <41.579685, 39.948364, 31.411865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995068, 40.374523, 31.599796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342865, 40.571663, 31.586632>,  <41.551544, 40.689945, 31.578733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342865, 40.571663, 31.586632>,  <40.995068, 40.374523, 31.599796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342865, 40.571663, 31.586632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388000, 0.640242, -0.662983,
		-0.305680, 0.589227, 0.747911,
		0.869491, 0.492850, -0.032911,
		41.603714, 40.719517, 31.576759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759941, 41.024982, 31.622849>,  <40.995068, 40.374523, 31.599796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759941, 41.024982, 31.622849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124016, 41.034348, 31.457438>,  <41.342461, 41.039967, 31.358191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124016, 41.034348, 31.457438>,  <40.759941, 41.024982, 31.622849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124016, 41.034348, 31.457438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326555, 0.654721, -0.681690,
		0.254788, 0.755508, 0.603566,
		0.910190, 0.023411, -0.413529,
		41.397072, 41.041370, 31.333378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583584, 40.529324, 32.202003>,  <40.759941, 41.024982, 31.622849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583584, 40.529324, 32.202003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458214, 40.279629, 32.488247>,  <40.382992, 40.129814, 32.659992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458214, 40.279629, 32.488247>,  <40.583584, 40.529324, 32.202003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458214, 40.279629, 32.488247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942742, 0.114039, -0.313421,
		0.114039, -0.772871, -0.624233,
		0.313421, 0.624233, -0.715613,
		40.364189, 40.092358, 32.702930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181469, 40.008961, 32.033627>,  <40.583584, 40.529324, 32.202003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181469, 40.008961, 32.033627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068523, 40.123592, 32.399826>,  <40.000755, 40.192371, 32.619545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068523, 40.123592, 32.399826>,  <40.181469, 40.008961, 32.033627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068523, 40.123592, 32.399826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957543, -0.026360, -0.287084,
		-0.058138, -0.957696, 0.281849,
		-0.282368, 0.286573, 0.915502,
		39.983814, 40.209564, 32.674477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882809, 39.423100, 32.414246>,  <40.181469, 40.008961, 32.033627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882809, 39.423100, 32.414246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799797, 39.813229, 32.444389>,  <39.749992, 40.047306, 32.462475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799797, 39.813229, 32.444389>,  <39.882809, 39.423100, 32.414246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799797, 39.813229, 32.444389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801839, -0.125472, -0.584219,
		-0.560347, -0.181664, 0.808090,
		-0.207525, 0.975323, 0.075358,
		39.737541, 40.105827, 32.466995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199509, 38.785912, 32.596260>,  <39.882809, 39.423100, 32.414246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199509, 38.785912, 32.596260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047783, 38.668999, 32.245102>,  <39.956749, 38.598850, 32.034409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047783, 38.668999, 32.245102>,  <40.199509, 38.785912, 32.596260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047783, 38.668999, 32.245102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152385, 0.955573, -0.252307,
		0.912634, 0.038074, -0.407001,
		-0.379312, -0.292285, -0.877890,
		39.933990, 38.581314, 31.981735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643559, 39.090427, 32.085251>,  <40.199509, 38.785912, 32.596260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643559, 39.090427, 32.085251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265347, 39.018661, 31.976603>,  <40.038418, 38.975601, 31.911413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265347, 39.018661, 31.976603>,  <40.643559, 39.090427, 32.085251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265347, 39.018661, 31.976603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108582, 0.960448, -0.256418,
		0.306881, -0.212959, -0.927617,
		-0.945534, -0.179413, -0.271620,
		39.981686, 38.964836, 31.895117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506874, 39.162926, 31.272480>,  <40.643559, 39.090427, 32.085251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506874, 39.162926, 31.272480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230137, 39.245453, 31.549259>,  <40.064095, 39.294968, 31.715326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230137, 39.245453, 31.549259>,  <40.506874, 39.162926, 31.272480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230137, 39.245453, 31.549259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092490, 0.925090, -0.368312,
		-0.716102, -0.318811, -0.620933,
		-0.691841, 0.206319, 0.691946,
		40.022583, 39.307350, 31.756844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856709, 39.360077, 30.958670>,  <40.506874, 39.162926, 31.272480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856709, 39.360077, 30.958670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869640, 39.518127, 31.325893>,  <39.877399, 39.612957, 31.546227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869640, 39.518127, 31.325893>,  <39.856709, 39.360077, 30.958670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869640, 39.518127, 31.325893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323145, 0.873337, -0.364500,
		-0.945797, -0.284883, 0.155916,
		0.032327, 0.395126, 0.918058,
		39.879337, 39.636665, 31.601311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158165, 39.606491, 31.370718>,  <39.856709, 39.360077, 30.958670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158165, 39.606491, 31.370718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490532, 39.821384, 31.428631>,  <39.689953, 39.950321, 31.463379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490532, 39.821384, 31.428631>,  <39.158165, 39.606491, 31.370718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490532, 39.821384, 31.428631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359105, 0.716567, -0.597976,
		-0.424996, 0.444876, 0.788330,
		0.830916, 0.537230, 0.144781,
		39.739807, 39.982555, 31.472065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170750, 38.915096, 31.014681>,  <39.158165, 39.606491, 31.370718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170750, 38.915096, 31.014681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477371, 38.875282, 31.268450>,  <39.661343, 38.851395, 31.420712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477371, 38.875282, 31.268450>,  <39.170750, 38.915096, 31.014681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477371, 38.875282, 31.268450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138431, -0.990301, 0.011894,
		0.627086, -0.096941, -0.772894,
		0.766550, -0.099534, 0.634424,
		39.707336, 38.845421, 31.458776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543777, 38.423126, 30.770922>,  <39.170750, 38.915096, 31.014681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543777, 38.423126, 30.770922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676266, 38.442131, 31.147863>,  <39.755760, 38.453533, 31.374029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676266, 38.442131, 31.147863>,  <39.543777, 38.423126, 30.770922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676266, 38.442131, 31.147863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140475, -0.990084, 0.000541,
		0.933038, 0.132198, -0.334610,
		0.331221, 0.047509, 0.942356,
		39.775631, 38.456383, 31.430571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222588, 38.062359, 30.799986>,  <39.543777, 38.423126, 30.770922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222588, 38.062359, 30.799986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103096, 38.079533, 31.181334>,  <40.031399, 38.089836, 31.410143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103096, 38.079533, 31.181334>,  <40.222588, 38.062359, 30.799986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103096, 38.079533, 31.181334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517279, -0.832225, 0.199561,
		0.801986, 0.552773, 0.226406,
		-0.298732, 0.042930, 0.953371,
		40.013477, 38.092411, 31.467344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816475, 37.948883, 31.140177>,  <40.222588, 38.062359, 30.799986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816475, 37.948883, 31.140177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557804, 37.899090, 31.441193>,  <40.402603, 37.869213, 31.621801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557804, 37.899090, 31.441193>,  <40.816475, 37.948883, 31.140177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557804, 37.899090, 31.441193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595454, -0.698973, 0.396070,
		0.476702, 0.704231, 0.526131,
		-0.646676, -0.124480, 0.752539,
		40.363800, 37.861748, 31.666954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187046, 37.989315, 31.802473>,  <40.816475, 37.948883, 31.140177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187046, 37.989315, 31.802473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852455, 37.778004, 31.860748>,  <40.651699, 37.651215, 31.895714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852455, 37.778004, 31.860748>,  <41.187046, 37.989315, 31.802473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852455, 37.778004, 31.860748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541997, -0.758282, 0.362281,
		-0.080912, 0.382003, 0.920612,
		-0.836476, -0.528282, 0.145690,
		40.601513, 37.619518, 31.904455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341881, 37.661259, 32.321041>,  <41.187046, 37.989315, 31.802473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341881, 37.661259, 32.321041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039890, 37.460709, 32.151981>,  <40.858696, 37.340378, 32.050545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039890, 37.460709, 32.151981>,  <41.341881, 37.661259, 32.321041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039890, 37.460709, 32.151981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445936, -0.865100, 0.229659,
		-0.480783, -0.015089, 0.876710,
		-0.754977, -0.501373, -0.422654,
		40.813396, 37.310295, 32.025185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204090, 37.229275, 32.832645>,  <41.341881, 37.661259, 32.321041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204090, 37.229275, 32.832645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039688, 37.048065, 32.516201>,  <40.941048, 36.939339, 32.326336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039688, 37.048065, 32.516201>,  <41.204090, 37.229275, 32.832645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039688, 37.048065, 32.516201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439829, -0.858650, 0.263193,
		-0.798515, -0.239779, 0.552159,
		-0.411003, -0.453019, -0.791107,
		40.916386, 36.912159, 32.278870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008350, 36.538120, 33.102150>,  <41.204090, 37.229275, 32.832645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008350, 36.538120, 33.102150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027721, 36.530594, 32.702690>,  <41.039345, 36.526077, 32.463013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027721, 36.530594, 32.702690>,  <41.008350, 36.538120, 33.102150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027721, 36.530594, 32.702690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610896, -0.790458, 0.044516,
		-0.790228, -0.612227, -0.026789,
		0.048429, -0.018812, -0.998650,
		41.042248, 36.524948, 32.403095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938034, 35.780411, 32.922817>,  <41.008350, 36.538120, 33.102150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938034, 35.780411, 32.922817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084938, 35.965328, 32.599979>,  <41.173080, 36.076279, 32.406277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084938, 35.965328, 32.599979>,  <40.938034, 35.780411, 32.922817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084938, 35.965328, 32.599979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850760, -0.517686, 0.090602,
		-0.375938, -0.719920, -0.583425,
		0.367257, 0.462294, -0.807097,
		41.195114, 36.104015, 32.357849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376190, 35.266205, 32.567490>,  <40.938034, 35.780411, 32.922817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376190, 35.266205, 32.567490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506344, 35.582897, 32.360687>,  <41.584435, 35.772911, 32.236607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506344, 35.582897, 32.360687>,  <41.376190, 35.266205, 32.567490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506344, 35.582897, 32.360687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937136, -0.342927, 0.064644,
		-0.126115, -0.505538, -0.853538,
		0.325381, 0.791728, -0.517005,
		41.603958, 35.820415, 32.205585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745552, 34.972698, 32.043205>,  <41.376190, 35.266205, 32.567490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745552, 34.972698, 32.043205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870525, 35.347950, 32.102932>,  <41.945511, 35.573101, 32.138767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870525, 35.347950, 32.102932>,  <41.745552, 34.972698, 32.043205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870525, 35.347950, 32.102932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949587, -0.304163, -0.075953,
		-0.025837, 0.165522, -0.985868,
		0.312437, 0.938130, 0.149319,
		41.964256, 35.629391, 32.147728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340000, 35.089405, 31.538078>,  <41.745552, 34.972698, 32.043205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340000, 35.089405, 31.538078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384949, 35.394920, 31.792320>,  <42.411919, 35.578232, 31.944866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384949, 35.394920, 31.792320>,  <42.340000, 35.089405, 31.538078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384949, 35.394920, 31.792320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992271, -0.120145, -0.031051,
		0.052648, 0.634182, -0.771389,
		0.112370, 0.763792, 0.635606,
		42.418659, 35.624058, 31.983002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947510, 35.393448, 31.330715>,  <42.340000, 35.089405, 31.538078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947510, 35.393448, 31.330715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922676, 35.537502, 31.703049>,  <42.907776, 35.623936, 31.926449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922676, 35.537502, 31.703049>,  <42.947510, 35.393448, 31.330715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922676, 35.537502, 31.703049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978833, -0.160263, 0.127287,
		0.195018, 0.919031, -0.342565,
		-0.062080, 0.360137, 0.930832,
		42.904053, 35.645542, 31.982298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552879, 35.875076, 31.432167>,  <42.947510, 35.393448, 31.330715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552879, 35.875076, 31.432167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427715, 35.732517, 31.784319>,  <43.352619, 35.646980, 31.995611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427715, 35.732517, 31.784319>,  <43.552879, 35.875076, 31.432167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427715, 35.732517, 31.784319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941088, -0.241481, 0.236727,
		0.128227, 0.902590, 0.410961,
		-0.312907, -0.356396, 0.880381,
		43.333843, 35.625599, 32.048435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959492, 36.242100, 31.914534>,  <43.552879, 35.875076, 31.432167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959492, 36.242100, 31.914534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825932, 35.917419, 32.106220>,  <43.745796, 35.722610, 32.221233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825932, 35.917419, 32.106220>,  <43.959492, 36.242100, 31.914534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825932, 35.917419, 32.106220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921720, -0.174715, 0.346277,
		-0.197348, 0.557323, 0.806502,
		-0.333896, -0.811705, 0.479216,
		43.725761, 35.673908, 32.249985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241665, 36.293076, 32.595676>,  <43.959492, 36.242100, 31.914534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241665, 36.293076, 32.595676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129314, 35.909492, 32.611187>,  <44.061905, 35.679340, 32.620491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129314, 35.909492, 32.611187>,  <44.241665, 36.293076, 32.595676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129314, 35.909492, 32.611187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852468, -0.230716, 0.469114,
		-0.440916, 0.164816, 0.882286,
		-0.280875, -0.958961, 0.038774,
		44.045052, 35.621803, 32.622818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333447, 36.090576, 33.327362>,  <44.241665, 36.293076, 32.595676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333447, 36.090576, 33.327362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340378, 35.765686, 33.094128>,  <44.344536, 35.570751, 32.954185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340378, 35.765686, 33.094128>,  <44.333447, 36.090576, 33.327362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340378, 35.765686, 33.094128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803987, -0.335367, 0.491054,
		-0.594395, -0.477304, 0.647206,
		0.017331, -0.812225, -0.583086,
		44.345577, 35.522018, 32.919201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275986, 35.428226, 33.767303>,  <44.333447, 36.090576, 33.327362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275986, 35.428226, 33.767303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461281, 35.322849, 33.428833>,  <44.572456, 35.259624, 33.225750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461281, 35.322849, 33.428833>,  <44.275986, 35.428226, 33.767303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461281, 35.322849, 33.428833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689789, -0.492291, 0.530886,
		-0.556423, -0.829607, -0.046326,
		0.463233, -0.263442, -0.846175,
		44.600250, 35.243816, 33.174980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595322, 34.685593, 33.880184>,  <44.275986, 35.428226, 33.767303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595322, 34.685593, 33.880184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774849, 34.815483, 33.547169>,  <44.882565, 34.893417, 33.347359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774849, 34.815483, 33.547169>,  <44.595322, 34.685593, 33.880184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774849, 34.815483, 33.547169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836427, -0.480601, 0.263463,
		-0.314566, -0.814603, -0.487309,
		0.448819, 0.324722, -0.832537,
		44.909496, 34.912899, 33.297409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046074, 34.124893, 33.710835>,  <44.595322, 34.685593, 33.880184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046074, 34.124893, 33.710835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183868, 34.450546, 33.523846>,  <45.266544, 34.645939, 33.411652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183868, 34.450546, 33.523846>,  <45.046074, 34.124893, 33.710835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183868, 34.450546, 33.523846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938519, -0.310673, 0.150547,
		-0.022665, -0.490588, -0.871097,
		0.344483, 0.814129, -0.467468,
		45.287212, 34.694786, 33.383606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607204, 33.862091, 33.334656>,  <45.046074, 34.124893, 33.710835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607204, 33.862091, 33.334656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669621, 34.255043, 33.375790>,  <45.707069, 34.490814, 33.400471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669621, 34.255043, 33.375790>,  <45.607204, 33.862091, 33.334656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669621, 34.255043, 33.375790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975559, -0.169580, 0.139742,
		0.154719, 0.078519, -0.984833,
		0.156036, 0.982383, 0.102837,
		45.716431, 34.549759, 33.406639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366154, 33.959854, 33.118092>,  <45.607204, 33.862091, 33.334656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366154, 33.959854, 33.118092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253620, 34.281506, 33.327557>,  <46.186100, 34.474495, 33.453236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253620, 34.281506, 33.327557>,  <46.366154, 33.959854, 33.118092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253620, 34.281506, 33.327557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955459, 0.184043, 0.230707,
		0.089142, 0.565246, -0.820092,
		-0.281338, 0.804130, 0.523664,
		46.169220, 34.522743, 33.484657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953671, 34.398811, 33.204399>,  <46.366154, 33.959854, 33.118092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953671, 34.398811, 33.204399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711361, 34.519432, 33.498909>,  <46.565975, 34.591805, 33.675613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711361, 34.519432, 33.498909>,  <46.953671, 34.398811, 33.204399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.711361, 34.519432, 33.498909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795064, 0.264490, 0.545819,
		-0.030145, 0.916031, -0.399974,
		-0.605776, 0.301551, 0.736276,
		46.529629, 34.609898, 33.719791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223957, 35.132900, 33.386990>,  <46.953671, 34.398811, 33.204399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223957, 35.132900, 33.386990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038898, 34.972595, 33.703304>,  <46.927864, 34.876411, 33.893093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038898, 34.972595, 33.703304>,  <47.223957, 35.132900, 33.386990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.038898, 34.972595, 33.703304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793112, 0.211485, 0.571181,
		-0.396147, 0.891440, 0.220006,
		-0.462646, -0.400761, 0.790791,
		46.900105, 34.852367, 33.940540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231159, 35.619835, 34.018604>,  <47.223957, 35.132900, 33.386990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231159, 35.619835, 34.018604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174088, 35.237446, 34.121170>,  <47.139843, 35.008011, 34.182709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.174088, 35.237446, 34.121170>,  <47.231159, 35.619835, 34.018604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.174088, 35.237446, 34.121170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792633, 0.044792, 0.608052,
		-0.592769, 0.290004, 0.751347,
		-0.142683, -0.955977, 0.256418,
		47.131283, 34.950653, 34.198097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.266247, 35.648323, 34.755672>,  <47.231159, 35.619835, 34.018604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.266247, 35.648323, 34.755672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.339569, 35.279022, 34.620613>,  <47.383564, 35.057442, 34.539577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.339569, 35.279022, 34.620613>,  <47.266247, 35.648323, 34.755672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.339569, 35.279022, 34.620613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756684, -0.086751, 0.648000,
		-0.627557, -0.374279, 0.682706,
		0.183307, -0.923249, -0.337652,
		47.394562, 35.002048, 34.519318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.574226, 35.112858, 35.219078>,  <47.266247, 35.648323, 34.755672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.574226, 35.112858, 35.219078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797630, 34.804737, 35.095978>,  <47.931671, 34.619865, 35.022118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.797630, 34.804737, 35.095978>,  <47.574226, 35.112858, 35.219078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.797630, 34.804737, 35.095978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261279, 0.515483, -0.816094,
		0.787274, 0.375388, 0.489165,
		0.558509, -0.770299, -0.307746,
		47.965183, 34.573647, 35.003654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.790432, 34.433193, 43.501865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414207, 34.549942, 43.432404>,  <35.188473, 34.619991, 43.390728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414207, 34.549942, 43.432404>,  <35.790432, 34.433193, 43.501865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414207, 34.549942, 43.432404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223564, 0.147188, -0.963512,
		-0.255663, -0.945064, -0.203692,
		-0.940561, 0.291872, -0.173652,
		35.132038, 34.637505, 43.380306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699299, 34.311913, 42.871670>,  <35.790432, 34.433193, 43.501865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699299, 34.311913, 42.871670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389488, 34.553986, 42.945282>,  <35.203602, 34.699230, 42.989449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389488, 34.553986, 42.945282>,  <35.699299, 34.311913, 42.871670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389488, 34.553986, 42.945282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081057, 0.383493, -0.919980,
		-0.627327, -0.697631, -0.346080,
		-0.774526, 0.605180, 0.184028,
		35.157131, 34.735538, 43.000492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188362, 34.200417, 42.371243>,  <35.699299, 34.311913, 42.871670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188362, 34.200417, 42.371243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.151897, 34.568638, 42.523170>,  <35.130016, 34.789570, 42.614326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.151897, 34.568638, 42.523170>,  <35.188362, 34.200417, 42.371243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151897, 34.568638, 42.523170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112855, 0.388501, -0.914511,
		-0.989420, -0.040507, -0.139307,
		-0.091165, 0.920557, 0.379819,
		35.124546, 34.844807, 42.637115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923740, 34.610405, 41.793148>,  <35.188362, 34.200417, 42.371243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923740, 34.610405, 41.793148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.016903, 34.903736, 42.048641>,  <35.072800, 35.079735, 42.201939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.016903, 34.903736, 42.048641>,  <34.923740, 34.610405, 41.793148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016903, 34.903736, 42.048641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070245, 0.667767, -0.741049,
		-0.969959, 0.127726, 0.207039,
		0.232905, 0.733331, 0.638734,
		35.086773, 35.123734, 42.240261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534657, 35.156178, 41.558067>,  <34.923740, 34.610405, 41.793148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534657, 35.156178, 41.558067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823914, 35.312286, 41.786018>,  <34.997467, 35.405952, 41.922787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823914, 35.312286, 41.786018>,  <34.534657, 35.156178, 41.558067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823914, 35.312286, 41.786018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078324, 0.773412, -0.629046,
		-0.686247, 0.499523, 0.528718,
		0.723140, 0.390270, 0.569876,
		35.040855, 35.429367, 41.956982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484795, 35.926788, 41.614727>,  <34.534657, 35.156178, 41.558067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484795, 35.926788, 41.614727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.869331, 35.848846, 41.692554>,  <35.100052, 35.802082, 41.739250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.869331, 35.848846, 41.692554>,  <34.484795, 35.926788, 41.614727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869331, 35.848846, 41.692554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272902, 0.579968, -0.767569,
		0.036723, 0.790992, 0.610723,
		0.961341, -0.194855, 0.194565,
		35.157734, 35.790390, 41.750923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891769, 36.517231, 41.195541>,  <34.484795, 35.926788, 41.614727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891769, 36.517231, 41.195541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171391, 36.256451, 41.313038>,  <35.339165, 36.099983, 41.383533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171391, 36.256451, 41.313038>,  <34.891769, 36.517231, 41.195541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171391, 36.256451, 41.313038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558392, 0.241098, -0.793769,
		0.446681, 0.718907, 0.532586,
		0.699052, -0.651954, 0.293738,
		35.381107, 36.060863, 41.401161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582466, 36.888058, 41.126205>,  <34.891769, 36.517231, 41.195541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582466, 36.888058, 41.126205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653591, 36.495335, 41.152836>,  <35.696266, 36.259701, 41.168816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.653591, 36.495335, 41.152836>,  <35.582466, 36.888058, 41.126205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653591, 36.495335, 41.152836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537618, 0.040250, -0.842227,
		0.824227, 0.185551, 0.534996,
		0.177810, -0.981810, 0.066580,
		35.706936, 36.200790, 41.172810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252823, 36.784405, 40.720104>,  <35.582466, 36.888058, 41.126205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252823, 36.784405, 40.720104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163158, 36.401230, 40.791779>,  <36.109360, 36.171326, 40.834782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163158, 36.401230, 40.791779>,  <36.252823, 36.784405, 40.720104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163158, 36.401230, 40.791779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336755, -0.248679, -0.908160,
		0.914519, -0.143236, 0.378335,
		-0.224166, -0.957936, 0.179186,
		36.095909, 36.113850, 40.845535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859264, 36.466717, 40.598766>,  <36.252823, 36.784405, 40.720104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859264, 36.466717, 40.598766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545452, 36.225372, 40.541534>,  <36.357166, 36.080566, 40.507195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545452, 36.225372, 40.541534>,  <36.859264, 36.466717, 40.598766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545452, 36.225372, 40.541534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371293, -0.272267, -0.887701,
		0.496648, -0.749550, 0.437625,
		-0.784527, -0.603362, -0.143082,
		36.310093, 36.044365, 40.498611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260517, 35.921722, 40.394638>,  <36.859264, 36.466717, 40.598766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260517, 35.921722, 40.394638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872284, 35.911221, 40.298904>,  <36.639343, 35.904919, 40.241463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872284, 35.911221, 40.298904>,  <37.260517, 35.921722, 40.394638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872284, 35.911221, 40.298904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234330, -0.331349, -0.913946,
		-0.055310, -0.943143, 0.327753,
		-0.970582, -0.026252, -0.239333,
		36.581108, 35.903343, 40.227104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156158, 35.310612, 39.994038>,  <37.260517, 35.921722, 40.394638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156158, 35.310612, 39.994038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.860260, 35.555714, 39.882820>,  <36.682720, 35.702774, 39.816090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.860260, 35.555714, 39.882820>,  <37.156158, 35.310612, 39.994038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860260, 35.555714, 39.882820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159508, -0.241744, -0.957140,
		-0.653709, -0.752389, 0.081089,
		-0.739744, 0.612757, -0.278042,
		36.638336, 35.739540, 39.799408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921387, 35.090290, 39.423882>,  <37.156158, 35.310612, 39.994038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921387, 35.090290, 39.423882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754177, 35.453060, 39.402927>,  <36.653851, 35.670723, 39.390354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754177, 35.453060, 39.402927>,  <36.921387, 35.090290, 39.423882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754177, 35.453060, 39.402927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252289, 0.060505, -0.965758,
		-0.872698, -0.416931, -0.254099,
		-0.418028, 0.906922, -0.052385,
		36.628769, 35.725136, 39.387211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508480, 35.036953, 38.849442>,  <36.921387, 35.090290, 39.423882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508480, 35.036953, 38.849442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534973, 35.433014, 38.898777>,  <36.550869, 35.670650, 38.928379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534973, 35.433014, 38.898777>,  <36.508480, 35.036953, 38.849442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534973, 35.433014, 38.898777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126312, 0.114293, -0.985385,
		-0.989777, 0.080845, -0.117498,
		0.066234, 0.990152, 0.123336,
		36.554844, 35.730061, 38.935780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945335, 35.442745, 38.345547>,  <36.508480, 35.036953, 38.849442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945335, 35.442745, 38.345547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258991, 35.667809, 38.450268>,  <36.447186, 35.802849, 38.513100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258991, 35.667809, 38.450268>,  <35.945335, 35.442745, 38.345547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258991, 35.667809, 38.450268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150752, 0.236527, -0.959859,
		-0.602001, 0.792127, 0.100646,
		0.784136, 0.562663, 0.261804,
		36.494232, 35.836609, 38.528809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848930, 36.005333, 38.006191>,  <35.945335, 35.442745, 38.345547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848930, 36.005333, 38.006191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242146, 36.021484, 38.077747>,  <36.478073, 36.031178, 38.120682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242146, 36.021484, 38.077747>,  <35.848930, 36.005333, 38.006191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242146, 36.021484, 38.077747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171752, 0.139326, -0.975238,
		-0.064306, 0.989423, 0.130028,
		0.983039, 0.040381, 0.178895,
		36.537056, 36.033600, 38.131416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179790, 36.393726, 37.444157>,  <35.848930, 36.005333, 38.006191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179790, 36.393726, 37.444157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.525459, 36.236252, 37.569519>,  <36.732861, 36.141769, 37.644737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.525459, 36.236252, 37.569519>,  <36.179790, 36.393726, 37.444157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525459, 36.236252, 37.569519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384648, 0.115253, -0.915840,
		0.324428, 0.911993, 0.251027,
		0.864171, -0.393682, 0.313405,
		36.784710, 36.118149, 37.663540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689201, 36.847420, 37.169655>,  <36.179790, 36.393726, 37.444157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689201, 36.847420, 37.169655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875648, 36.505703, 37.261662>,  <36.987518, 36.300671, 37.316868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875648, 36.505703, 37.261662>,  <36.689201, 36.847420, 37.169655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875648, 36.505703, 37.261662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616876, 0.127461, -0.776671,
		0.634187, 0.503918, 0.586407,
		0.466123, -0.854295, 0.230021,
		37.015484, 36.249413, 37.330669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387135, 37.037117, 37.026798>,  <36.689201, 36.847420, 37.169655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387135, 37.037117, 37.026798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386330, 36.637283, 37.038269>,  <37.385849, 36.397381, 37.045151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386330, 36.637283, 37.038269>,  <37.387135, 37.037117, 37.026798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386330, 36.637283, 37.038269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419500, -0.026871, -0.907357,
		0.907753, 0.010206, 0.419381,
		-0.002009, -0.999587, 0.028674,
		37.385727, 36.337406, 37.046871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126915, 36.717949, 36.901962>,  <37.387135, 37.037117, 37.026798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126915, 36.717949, 36.901962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878296, 36.424728, 36.791470>,  <37.729122, 36.248795, 36.725174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878296, 36.424728, 36.791470>,  <38.126915, 36.717949, 36.901962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878296, 36.424728, 36.791470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390957, 0.015297, -0.920282,
		0.678844, -0.679996, 0.277085,
		-0.621550, -0.733056, -0.276234,
		37.691830, 36.204811, 36.708599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571388, 36.186100, 36.773239>,  <38.126915, 36.717949, 36.901962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571388, 36.186100, 36.773239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.219582, 36.141953, 36.588085>,  <38.008495, 36.115463, 36.476994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.219582, 36.141953, 36.588085>,  <38.571388, 36.186100, 36.773239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219582, 36.141953, 36.588085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426354, 0.249253, -0.869537,
		0.211343, -0.962129, -0.172168,
		-0.879521, -0.110366, -0.462885,
		37.955727, 36.108841, 36.449219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625107, 35.725941, 36.203560>,  <38.571388, 36.186100, 36.773239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625107, 35.725941, 36.203560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.336014, 35.999336, 36.162567>,  <38.162560, 36.163376, 36.137974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.336014, 35.999336, 36.162567>,  <38.625107, 35.725941, 36.203560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336014, 35.999336, 36.162567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456312, 0.360536, -0.813506,
		-0.519078, -0.634707, -0.572456,
		-0.722729, 0.683492, -0.102478,
		38.119194, 36.204384, 36.131824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357521, 35.590401, 36.196022>,  <38.625107, 35.725941, 36.203560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357521, 35.590401, 36.196022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726440, 35.620388, 36.347672>,  <39.947792, 35.638382, 36.438663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726440, 35.620388, 36.347672>,  <39.357521, 35.590401, 36.196022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726440, 35.620388, 36.347672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384782, 0.269688, 0.882730,
		-0.036070, -0.960025, 0.277580,
		0.922303, 0.074968, 0.379128,
		40.003132, 35.642879, 36.461411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421329, 35.183861, 36.799030>,  <39.357521, 35.590401, 36.196022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421329, 35.183861, 36.799030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722828, 35.443176, 36.842110>,  <39.903725, 35.598766, 36.867958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722828, 35.443176, 36.842110>,  <39.421329, 35.183861, 36.799030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722828, 35.443176, 36.842110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234672, 0.112441, 0.965550,
		0.613842, -0.753049, 0.236886,
		0.753742, 0.648285, 0.107698,
		39.948952, 35.637661, 36.874420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771839, 34.949261, 37.446526>,  <39.421329, 35.183861, 36.799030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771839, 34.949261, 37.446526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.870060, 35.333847, 37.397076>,  <39.928993, 35.564598, 37.367405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.870060, 35.333847, 37.397076>,  <39.771839, 34.949261, 37.446526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870060, 35.333847, 37.397076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002978, 0.126778, 0.991927,
		0.969380, -0.243934, 0.028267,
		0.245548, 0.961469, -0.123623,
		39.943726, 35.622288, 37.359989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344666, 35.012604, 37.917622>,  <39.771839, 34.949261, 37.446526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344666, 35.012604, 37.917622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.178333, 35.368317, 37.841457>,  <40.078533, 35.581745, 37.795757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.178333, 35.368317, 37.841457>,  <40.344666, 35.012604, 37.917622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178333, 35.368317, 37.841457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107724, 0.159735, 0.981264,
		0.903038, 0.428556, 0.029374,
		-0.415834, 0.889283, -0.190413,
		40.053581, 35.635101, 37.784332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611801, 35.515484, 38.395424>,  <40.344666, 35.012604, 37.917622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611801, 35.515484, 38.395424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.265171, 35.680424, 38.282986>,  <40.057194, 35.779388, 38.215523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.265171, 35.680424, 38.282986>,  <40.611801, 35.515484, 38.395424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265171, 35.680424, 38.282986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229029, 0.171832, 0.958133,
		0.443387, 0.894674, -0.054465,
		-0.866576, 0.412350, -0.281095,
		40.005199, 35.804131, 38.198658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558651, 36.069641, 38.742947>,  <40.611801, 35.515484, 38.395424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558651, 36.069641, 38.742947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179790, 36.067646, 38.614655>,  <39.952473, 36.066448, 38.537678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179790, 36.067646, 38.614655>,  <40.558651, 36.069641, 38.742947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179790, 36.067646, 38.614655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316805, 0.171332, 0.932888,
		0.050302, 0.985201, -0.163857,
		-0.947156, -0.004984, -0.320735,
		39.895645, 36.066151, 38.518433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251801, 36.440865, 39.265312>,  <40.558651, 36.069641, 38.742947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251801, 36.440865, 39.265312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937382, 36.277386, 39.079800>,  <39.748730, 36.179298, 38.968491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937382, 36.277386, 39.079800>,  <40.251801, 36.440865, 39.265312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937382, 36.277386, 39.079800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426316, -0.184888, 0.885477,
		-0.447639, 0.893747, -0.028903,
		-0.786049, -0.408696, -0.463782,
		39.701569, 36.154778, 38.940666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561001, 36.726124, 39.548588>,  <40.251801, 36.440865, 39.265312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561001, 36.726124, 39.548588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504154, 36.365955, 39.384129>,  <39.470047, 36.149853, 39.285454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.504154, 36.365955, 39.384129>,  <39.561001, 36.726124, 39.548588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504154, 36.365955, 39.384129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492735, -0.295893, 0.818327,
		-0.858495, 0.318887, -0.401617,
		-0.142118, -0.900421, -0.411150,
		39.461517, 36.095829, 39.260784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846695, 36.518337, 39.577953>,  <39.561001, 36.726124, 39.548588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846695, 36.518337, 39.577953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046364, 36.172325, 39.557789>,  <39.166164, 35.964718, 39.545689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046364, 36.172325, 39.557789>,  <38.846695, 36.518337, 39.577953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046364, 36.172325, 39.557789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599011, -0.386532, 0.701269,
		-0.626106, -0.319860, -0.711112,
		0.499175, -0.865033, -0.050410,
		39.196117, 35.912815, 39.542667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343090, 36.074932, 39.758312>,  <38.846695, 36.518337, 39.577953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343090, 36.074932, 39.758312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684978, 35.869400, 39.787804>,  <38.890110, 35.746078, 39.805496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.684978, 35.869400, 39.787804>,  <38.343090, 36.074932, 39.758312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684978, 35.869400, 39.787804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340596, -0.447946, 0.826643,
		-0.391727, -0.731659, -0.557876,
		0.854719, -0.513829, 0.073728,
		38.941395, 35.715252, 39.809921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204865, 35.395149, 39.774483>,  <38.343090, 36.074932, 39.758312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204865, 35.395149, 39.774483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560055, 35.401001, 39.958347>,  <38.773170, 35.404510, 40.068665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560055, 35.401001, 39.958347>,  <38.204865, 35.395149, 39.774483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560055, 35.401001, 39.958347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377331, -0.548218, 0.746377,
		0.262910, -0.836208, -0.481284,
		0.887975, 0.014627, 0.459660,
		38.826447, 35.405388, 40.096245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349361, 34.596916, 39.972656>,  <38.204865, 35.395149, 39.774483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349361, 34.596916, 39.972656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576992, 34.823391, 40.211182>,  <38.713570, 34.959274, 40.354298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576992, 34.823391, 40.211182>,  <38.349361, 34.596916, 39.972656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576992, 34.823391, 40.211182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280312, -0.548179, 0.787988,
		0.773033, -0.615578, -0.153246,
		0.569074, 0.566184, 0.596314,
		38.747715, 34.993248, 40.390076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780277, 34.110432, 40.393017>,  <38.349361, 34.596916, 39.972656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780277, 34.110432, 40.393017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790352, 34.464729, 40.578411>,  <38.796394, 34.677307, 40.689648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790352, 34.464729, 40.578411>,  <38.780277, 34.110432, 40.393017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790352, 34.464729, 40.578411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085005, -0.463849, 0.881827,
		0.996062, 0.017191, -0.086974,
		0.025184, 0.885747, 0.463484,
		38.797909, 34.730453, 40.717457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121872, 33.912376, 40.931320>,  <38.780277, 34.110432, 40.393017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121872, 33.912376, 40.931320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955463, 34.248886, 41.069412>,  <38.855618, 34.450790, 41.152267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955463, 34.248886, 41.069412>,  <39.121872, 33.912376, 40.931320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955463, 34.248886, 41.069412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055403, -0.402386, 0.913792,
		0.907667, 0.361028, 0.214009,
		-0.416019, 0.841275, 0.345230,
		38.830658, 34.501270, 41.172981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374580, 33.920048, 41.566330>,  <39.121872, 33.912376, 40.931320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374580, 33.920048, 41.566330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064304, 34.172432, 41.571911>,  <38.878139, 34.323864, 41.575260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064304, 34.172432, 41.571911>,  <39.374580, 33.920048, 41.566330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064304, 34.172432, 41.571911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255129, -0.333720, 0.907491,
		0.577248, 0.700372, 0.419839,
		-0.775690, 0.630960, 0.013954,
		38.831596, 34.361721, 41.576096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339851, 34.117538, 42.224682>,  <39.374580, 33.920048, 41.566330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339851, 34.117538, 42.224682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.986774, 34.245552, 42.087029>,  <38.774929, 34.322361, 42.004436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.986774, 34.245552, 42.087029>,  <39.339851, 34.117538, 42.224682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986774, 34.245552, 42.087029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411631, -0.173211, 0.894739,
		0.226736, 0.931439, 0.284628,
		-0.882695, 0.320031, -0.344136,
		38.721966, 34.341560, 41.983788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124096, 34.528557, 42.776794>,  <39.339851, 34.117538, 42.224682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124096, 34.528557, 42.776794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819813, 34.415150, 42.543236>,  <38.637241, 34.347103, 42.403099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819813, 34.415150, 42.543236>,  <39.124096, 34.528557, 42.776794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819813, 34.415150, 42.543236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514654, -0.284713, 0.808746,
		-0.395539, 0.915726, 0.070669,
		-0.760710, -0.283521, -0.583897,
		38.591599, 34.330093, 42.368065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658978, 34.712467, 43.251270>,  <39.124096, 34.528557, 42.776794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658978, 34.712467, 43.251270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507324, 34.452438, 42.987858>,  <38.416332, 34.296421, 42.829811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507324, 34.452438, 42.987858>,  <38.658978, 34.712467, 43.251270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507324, 34.452438, 42.987858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625222, -0.344678, 0.700211,
		-0.682168, 0.677203, -0.275759,
		-0.379137, -0.650072, -0.658530,
		38.393581, 34.257416, 42.790298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.958542, 34.886333, 43.194065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.988102, 34.514584, 43.049400>,  <38.005836, 34.291534, 42.962601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.988102, 34.514584, 43.049400>,  <37.958542, 34.886333, 43.194065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988102, 34.514584, 43.049400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721454, -0.300200, 0.624007,
		-0.688508, 0.214811, -0.692685,
		0.073900, -0.929374, -0.361667,
		38.010273, 34.235771, 42.940899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272652, 34.635155, 43.082649>,  <37.958542, 34.886333, 43.194065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272652, 34.635155, 43.082649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482822, 34.294853, 43.087406>,  <37.608925, 34.090672, 43.090260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482822, 34.294853, 43.087406>,  <37.272652, 34.635155, 43.082649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482822, 34.294853, 43.087406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653663, -0.394673, 0.645722,
		-0.544659, -0.347053, -0.763480,
		0.525425, -0.850757, 0.011894,
		37.640450, 34.039627, 43.090973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910568, 33.958332, 42.939457>,  <37.272652, 34.635155, 43.082649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910568, 33.958332, 42.939457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183907, 33.870121, 43.217854>,  <37.347908, 33.817196, 43.384892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183907, 33.870121, 43.217854>,  <36.910568, 33.958332, 42.939457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183907, 33.870121, 43.217854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729619, -0.240744, 0.640077,
		0.026403, -0.945204, -0.325412,
		0.683344, -0.220527, 0.695994,
		37.388908, 33.803963, 43.426651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537842, 33.339214, 43.236721>,  <36.910568, 33.958332, 42.939457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537842, 33.339214, 43.236721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864319, 33.427685, 43.450230>,  <37.060204, 33.480766, 43.578335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864319, 33.427685, 43.450230>,  <36.537842, 33.339214, 43.236721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864319, 33.427685, 43.450230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479262, -0.256811, 0.839259,
		0.322700, -0.940814, -0.103607,
		0.816194, 0.221174, 0.533770,
		37.109177, 33.494038, 43.610359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610691, 32.816971, 43.829147>,  <36.537842, 33.339214, 43.236721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610691, 32.816971, 43.829147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815819, 33.146141, 43.926975>,  <36.938896, 33.343643, 43.985672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815819, 33.146141, 43.926975>,  <36.610691, 32.816971, 43.829147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815819, 33.146141, 43.926975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353911, -0.056896, 0.933547,
		0.782154, -0.565294, 0.262065,
		0.512818, 0.822925, 0.244565,
		36.969666, 33.393017, 44.000343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955849, 32.632080, 44.498295>,  <36.610691, 32.816971, 43.829147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955849, 32.632080, 44.498295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956249, 33.029716, 44.454887>,  <36.956490, 33.268299, 44.428844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956249, 33.029716, 44.454887>,  <36.955849, 32.632080, 44.498295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956249, 33.029716, 44.454887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336494, 0.102522, 0.936088,
		0.941685, 0.035574, 0.334609,
		0.001005, 0.994094, -0.108514,
		36.956551, 33.327946, 44.422333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435684, 32.843597, 44.977821>,  <36.955849, 32.632080, 44.498295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435684, 32.843597, 44.977821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168823, 33.129131, 44.892643>,  <37.008709, 33.300453, 44.841534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168823, 33.129131, 44.892643>,  <37.435684, 32.843597, 44.977821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168823, 33.129131, 44.892643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310038, -0.006149, 0.950704,
		0.677338, 0.700286, 0.225419,
		-0.667151, 0.713836, -0.212950,
		36.968678, 33.343281, 44.828758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546658, 33.390347, 45.516548>,  <37.435684, 32.843597, 44.977821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546658, 33.390347, 45.516548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194641, 33.512726, 45.371265>,  <36.983429, 33.586151, 45.284096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.194641, 33.512726, 45.371265>,  <37.546658, 33.390347, 45.516548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194641, 33.512726, 45.371265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347059, 0.107690, 0.931640,
		0.324145, 0.945939, 0.011409,
		-0.880046, 0.305946, -0.363203,
		36.930626, 33.604511, 45.262306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440178, 34.074116, 45.805256>,  <37.546658, 33.390347, 45.516548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440178, 34.074116, 45.805256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109287, 33.869793, 45.711639>,  <36.910755, 33.747200, 45.655468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109287, 33.869793, 45.711639>,  <37.440178, 34.074116, 45.805256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109287, 33.869793, 45.711639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285432, 0.023250, 0.958117,
		-0.483975, 0.859379, -0.165034,
		-0.827223, -0.510810, -0.234041,
		36.861122, 33.716549, 45.641426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895222, 34.393059, 46.118587>,  <37.440178, 34.074116, 45.805256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895222, 34.393059, 46.118587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.778831, 34.020790, 46.029873>,  <36.708996, 33.797428, 45.976643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.778831, 34.020790, 46.029873>,  <36.895222, 34.393059, 46.118587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778831, 34.020790, 46.029873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296842, -0.132559, 0.945681,
		-0.909515, 0.341007, -0.237689,
		-0.290977, -0.930667, -0.221789,
		36.691540, 33.741589, 45.963337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269382, 34.333672, 46.429482>,  <36.895222, 34.393059, 46.118587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269382, 34.333672, 46.429482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401211, 33.963928, 46.352604>,  <36.480309, 33.742081, 46.306477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401211, 33.963928, 46.352604>,  <36.269382, 34.333672, 46.429482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401211, 33.963928, 46.352604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155946, -0.254064, 0.954533,
		-0.931162, -0.284617, -0.227884,
		0.329573, -0.924362, -0.192189,
		36.500084, 33.686619, 46.294949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679390, 33.868111, 46.625134>,  <36.269382, 34.333672, 46.429482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679390, 33.868111, 46.625134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003994, 33.642540, 46.686386>,  <36.198757, 33.507198, 46.723137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003994, 33.642540, 46.686386>,  <35.679390, 33.868111, 46.625134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003994, 33.642540, 46.686386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336039, -0.235978, 0.911807,
		-0.478056, -0.791393, -0.380998,
		0.811505, -0.563925, 0.153128,
		36.247444, 33.473362, 46.732327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492794, 33.366379, 47.095917>,  <35.679390, 33.868111, 46.625134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492794, 33.366379, 47.095917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890583, 33.324425, 47.094036>,  <36.129257, 33.299252, 47.092907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890583, 33.324425, 47.094036>,  <35.492794, 33.366379, 47.095917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890583, 33.324425, 47.094036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012818, -0.165744, 0.986086,
		-0.104199, -0.980576, -0.166172,
		0.994474, -0.104879, -0.004701,
		36.188927, 33.292961, 47.092625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575253, 32.712929, 47.373032>,  <35.492794, 33.366379, 47.095917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575253, 32.712929, 47.373032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.931595, 32.882904, 47.437279>,  <36.145401, 32.984890, 47.475826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.931595, 32.882904, 47.437279>,  <35.575253, 32.712929, 47.373032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931595, 32.882904, 47.437279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150429, -0.057674, 0.986937,
		0.428650, -0.903383, 0.012544,
		0.890859, 0.424937, 0.160617,
		36.198853, 33.010384, 47.485462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028656, 32.232082, 47.658245>,  <35.575253, 32.712929, 47.373032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028656, 32.232082, 47.658245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.205372, 32.569786, 47.779598>,  <36.311401, 32.772408, 47.852409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.205372, 32.569786, 47.779598>,  <36.028656, 32.232082, 47.658245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205372, 32.569786, 47.779598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009642, -0.333682, 0.942636,
		0.897066, -0.419374, -0.139278,
		0.441792, 0.844264, 0.303378,
		36.337910, 32.823067, 47.870613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421238, 32.029461, 48.209011>,  <36.028656, 32.232082, 47.658245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421238, 32.029461, 48.209011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438705, 32.424282, 48.270752>,  <36.449184, 32.661175, 48.307796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438705, 32.424282, 48.270752>,  <36.421238, 32.029461, 48.209011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438705, 32.424282, 48.270752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039034, -0.152699, 0.987502,
		0.998283, -0.049147, 0.031860,
		0.043668, 0.987050, 0.154355,
		36.451805, 32.720398, 48.317059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051949, 32.200817, 48.672096>,  <36.421238, 32.029461, 48.209011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051949, 32.200817, 48.672096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769688, 32.478630, 48.728214>,  <36.600330, 32.645317, 48.761883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769688, 32.478630, 48.728214>,  <37.051949, 32.200817, 48.672096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769688, 32.478630, 48.728214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002777, -0.200706, 0.979648,
		0.708556, 0.690898, 0.143556,
		-0.705649, 0.694534, 0.140293,
		36.557991, 32.686989, 48.770302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378143, 32.568760, 49.125023>,  <37.051949, 32.200817, 48.672096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378143, 32.568760, 49.125023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986050, 32.641483, 49.156242>,  <36.750793, 32.685120, 49.174976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986050, 32.641483, 49.156242>,  <37.378143, 32.568760, 49.125023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986050, 32.641483, 49.156242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075210, -0.022491, 0.996914,
		0.183007, 0.983076, 0.008373,
		-0.980230, 0.181813, 0.078053,
		36.691982, 32.696026, 49.179657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360901, 32.919041, 49.733364>,  <37.378143, 32.568760, 49.125023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360901, 32.919041, 49.733364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983414, 32.802124, 49.671436>,  <36.756924, 32.731972, 49.634281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983414, 32.802124, 49.671436>,  <37.360901, 32.919041, 49.733364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983414, 32.802124, 49.671436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164009, 0.007050, 0.986434,
		-0.287238, 0.956302, -0.054592,
		-0.943714, -0.292295, -0.154817,
		36.700298, 32.714436, 49.624992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950260, 33.450668, 50.037964>,  <37.360901, 32.919041, 49.733364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950260, 33.450668, 50.037964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727703, 33.119804, 50.006355>,  <36.594170, 32.921288, 49.987389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727703, 33.119804, 50.006355>,  <36.950260, 33.450668, 50.037964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727703, 33.119804, 50.006355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230540, 0.062298, 0.971067,
		-0.798301, 0.558508, -0.225354,
		-0.556388, -0.827156, -0.079026,
		36.560787, 32.871658, 49.982647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317970, 33.607269, 50.420246>,  <36.950260, 33.450668, 50.037964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317970, 33.607269, 50.420246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352539, 33.210045, 50.388355>,  <36.373280, 32.971710, 50.369221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352539, 33.210045, 50.388355>,  <36.317970, 33.607269, 50.420246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352539, 33.210045, 50.388355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286593, -0.101423, 0.952669,
		-0.954146, -0.059484, -0.293370,
		0.086423, -0.993064, -0.079724,
		36.378468, 32.912125, 50.364437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735538, 33.371063, 50.714352>,  <36.317970, 33.607269, 50.420246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735538, 33.371063, 50.714352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974907, 33.050606, 50.717628>,  <36.118526, 32.858330, 50.719597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974907, 33.050606, 50.717628>,  <35.735538, 33.371063, 50.714352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974907, 33.050606, 50.717628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330674, -0.237657, 0.913332,
		-0.729761, -0.549263, -0.407135,
		0.598418, -0.801142, 0.008194,
		36.154430, 32.810265, 50.720085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395290, 32.784634, 50.977989>,  <35.735538, 33.371063, 50.714352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395290, 32.784634, 50.977989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781242, 32.689274, 51.022125>,  <36.012814, 32.632057, 51.048607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781242, 32.689274, 51.022125>,  <35.395290, 32.784634, 50.977989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781242, 32.689274, 51.022125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199418, -0.391290, 0.898401,
		-0.171001, -0.888852, -0.425088,
		0.964878, -0.238398, 0.110342,
		36.070705, 32.617752, 51.055229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987114, 32.219646, 50.857658>,  <35.395290, 32.784634, 50.977989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987114, 32.219646, 50.857658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706043, 31.936789, 50.826160>,  <34.537403, 31.767075, 50.807262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706043, 31.936789, 50.826160>,  <34.987114, 32.219646, 50.857658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706043, 31.936789, 50.826160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085374, 0.193673, -0.977345,
		0.706372, -0.680031, -0.196460,
		-0.702673, -0.707141, -0.078748,
		34.495239, 31.724646, 50.802536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008053, 31.678730, 50.291351>,  <34.987114, 32.219646, 50.857658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008053, 31.678730, 50.291351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619473, 31.696068, 50.384651>,  <34.386326, 31.706470, 50.440632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619473, 31.696068, 50.384651>,  <35.008053, 31.678730, 50.291351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619473, 31.696068, 50.384651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224270, 0.152846, -0.962466,
		-0.077369, -0.987299, -0.138761,
		-0.971451, 0.043345, 0.233247,
		34.328037, 31.709070, 50.454624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678177, 31.204758, 49.820408>,  <35.008053, 31.678730, 50.291351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678177, 31.204758, 49.820408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388638, 31.445005, 49.956234>,  <34.214916, 31.589155, 50.037727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388638, 31.445005, 49.956234>,  <34.678177, 31.204758, 49.820408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388638, 31.445005, 49.956234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216745, 0.269288, -0.938353,
		-0.655035, -0.752820, -0.064741,
		-0.723845, 0.600622, 0.339563,
		34.171486, 31.625193, 50.058102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022018, 30.960602, 49.554459>,  <34.678177, 31.204758, 49.820408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022018, 30.960602, 49.554459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010849, 31.353746, 49.627342>,  <34.004147, 31.589634, 49.671074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010849, 31.353746, 49.627342>,  <34.022018, 30.960602, 49.554459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010849, 31.353746, 49.627342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243387, 0.170107, -0.954896,
		-0.969527, -0.071015, 0.234466,
		-0.027928, 0.982863, 0.182208,
		34.002472, 31.648605, 49.682003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396667, 31.241959, 49.266670>,  <34.022018, 30.960602, 49.554459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396667, 31.241959, 49.266670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.628170, 31.566677, 49.297729>,  <33.767071, 31.761509, 49.316364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.628170, 31.566677, 49.297729>,  <33.396667, 31.241959, 49.266670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628170, 31.566677, 49.297729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308377, 0.306004, -0.900703,
		-0.754948, 0.497341, 0.427440,
		0.578754, 0.811797, 0.077649,
		33.801796, 31.810217, 49.321026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985672, 31.736092, 49.053204>,  <33.396667, 31.241959, 49.266670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985672, 31.736092, 49.053204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352333, 31.892248, 49.018925>,  <33.572330, 31.985943, 48.998356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352333, 31.892248, 49.018925>,  <32.985672, 31.736092, 49.053204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352333, 31.892248, 49.018925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208687, 0.284604, -0.935655,
		-0.340882, 0.875554, 0.342352,
		0.916651, 0.390392, -0.085700,
		33.627327, 32.009365, 48.993214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835934, 32.307175, 48.632011>,  <32.985672, 31.736092, 49.053204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835934, 32.307175, 48.632011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232155, 32.253677, 48.619854>,  <33.469887, 32.221581, 48.612560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232155, 32.253677, 48.619854>,  <32.835934, 32.307175, 48.632011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232155, 32.253677, 48.619854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006681, 0.268367, -0.963294,
		0.136985, 0.953988, 0.266725,
		0.990551, -0.133739, -0.030389,
		33.529320, 32.213554, 48.610737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145973, 32.942913, 48.266834>,  <32.835934, 32.307175, 48.632011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145973, 32.942913, 48.266834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379761, 32.619251, 48.242649>,  <33.520035, 32.425053, 48.228138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379761, 32.619251, 48.242649>,  <33.145973, 32.942913, 48.266834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379761, 32.619251, 48.242649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014134, 0.084662, -0.996310,
		0.811291, 0.581460, 0.060919,
		0.584472, -0.809158, -0.060467,
		33.555103, 32.376503, 48.224510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631199, 33.196110, 47.746025>,  <33.145973, 32.942913, 48.266834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631199, 33.196110, 47.746025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692116, 32.802059, 47.777836>,  <33.728664, 32.565628, 47.796921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692116, 32.802059, 47.777836>,  <33.631199, 33.196110, 47.746025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692116, 32.802059, 47.777836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376183, -0.016626, -0.926396,
		0.913944, 0.170999, 0.368057,
		0.152294, -0.985131, 0.079523,
		33.737804, 32.506519, 47.801693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315510, 33.113873, 47.773182>,  <33.631199, 33.196110, 47.746025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315510, 33.113873, 47.773182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148521, 32.778019, 47.634190>,  <34.048328, 32.576508, 47.550797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148521, 32.778019, 47.634190>,  <34.315510, 33.113873, 47.773182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148521, 32.778019, 47.634190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188943, 0.293829, -0.936998,
		0.888831, -0.456820, 0.035978,
		-0.417468, -0.839631, -0.347477,
		34.023281, 32.526131, 47.529945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835335, 32.911331, 47.347328>,  <34.315510, 33.113873, 47.773182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835335, 32.911331, 47.347328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487576, 32.743885, 47.242329>,  <34.278919, 32.643417, 47.179329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487576, 32.743885, 47.242329>,  <34.835335, 32.911331, 47.347328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487576, 32.743885, 47.242329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123810, 0.329743, -0.935917,
		0.478346, -0.846186, -0.234850,
		-0.869400, -0.418615, -0.262498,
		34.226757, 32.618301, 47.163578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083645, 32.517788, 46.818211>,  <34.835335, 32.911331, 47.347328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083645, 32.517788, 46.818211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687061, 32.548878, 46.776329>,  <34.449112, 32.567532, 46.751202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687061, 32.548878, 46.776329>,  <35.083645, 32.517788, 46.818211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687061, 32.548878, 46.776329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123753, 0.307770, -0.943378,
		-0.041094, -0.948281, -0.314760,
		-0.991462, 0.077720, -0.104705,
		34.389622, 32.572193, 46.744919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792206, 32.192879, 46.106041>,  <35.083645, 32.517788, 46.818211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792206, 32.192879, 46.106041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524418, 32.468472, 46.217113>,  <34.363743, 32.633827, 46.283756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524418, 32.468472, 46.217113>,  <34.792206, 32.192879, 46.106041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524418, 32.468472, 46.217113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040041, 0.339803, -0.939644,
		-0.741758, -0.640184, -0.199901,
		-0.669472, 0.688984, 0.277685,
		34.323578, 32.675167, 46.300419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386230, 32.247017, 45.495579>,  <34.792206, 32.192879, 46.106041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386230, 32.247017, 45.495579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315403, 32.580261, 45.705177>,  <34.272907, 32.780209, 45.830936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315403, 32.580261, 45.705177>,  <34.386230, 32.247017, 45.495579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315403, 32.580261, 45.705177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002415, 0.532039, -0.846716,
		-0.984196, -0.151191, -0.092195,
		-0.177068, 0.833112, 0.523996,
		34.262283, 32.830196, 45.862377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087864, 32.617706, 45.047211>,  <34.386230, 32.247017, 45.495579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087864, 32.617706, 45.047211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154305, 32.901962, 45.320679>,  <34.194168, 33.072517, 45.484760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154305, 32.901962, 45.320679>,  <34.087864, 32.617706, 45.047211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154305, 32.901962, 45.320679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120213, 0.673535, -0.729315,
		-0.978753, 0.203329, 0.026450,
		0.166106, 0.710639, 0.683667,
		34.204136, 33.115154, 45.525780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603325, 33.139076, 44.953228>,  <34.087864, 32.617706, 45.047211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603325, 33.139076, 44.953228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.890057, 33.338749, 45.147949>,  <34.062096, 33.458553, 45.264782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.890057, 33.338749, 45.147949>,  <33.603325, 33.139076, 44.953228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890057, 33.338749, 45.147949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120028, 0.776097, -0.619086,
		-0.686839, 0.385349, 0.616245,
		0.716830, 0.499179, 0.486801,
		34.105106, 33.488503, 45.293991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457386, 33.879047, 44.895081>,  <33.603325, 33.139076, 44.953228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457386, 33.879047, 44.895081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843624, 33.871906, 44.998856>,  <34.075367, 33.867622, 45.061119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843624, 33.871906, 44.998856>,  <33.457386, 33.879047, 44.895081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843624, 33.871906, 44.998856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205893, 0.661912, -0.720750,
		-0.158856, 0.749369, 0.642815,
		0.965595, -0.017855, 0.259438,
		34.133301, 33.866550, 45.076687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682980, 34.551598, 44.684055>,  <33.457386, 33.879047, 44.895081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682980, 34.551598, 44.684055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994640, 34.304768, 44.728130>,  <34.181637, 34.156670, 44.754578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994640, 34.304768, 44.728130>,  <33.682980, 34.551598, 44.684055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994640, 34.304768, 44.728130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489581, 0.489299, -0.721732,
		0.391444, 0.616287, 0.683346,
		0.779155, -0.617071, 0.110189,
		34.228386, 34.119648, 44.761189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209660, 34.994278, 44.777851>,  <33.682980, 34.551598, 44.684055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209660, 34.994278, 44.777851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.366833, 34.655399, 44.634823>,  <34.461136, 34.452072, 44.549007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.366833, 34.655399, 44.634823>,  <34.209660, 34.994278, 44.777851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366833, 34.655399, 44.634823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430385, 0.513062, -0.742655,
		0.812631, 0.137923, 0.566222,
		0.392937, -0.847198, -0.357570,
		34.484715, 34.401241, 44.527554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940811, 35.156471, 44.667213>,  <34.209660, 34.994278, 44.777851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940811, 35.156471, 44.667213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845413, 34.833889, 44.450787>,  <34.788174, 34.640339, 44.320930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845413, 34.833889, 44.450787>,  <34.940811, 35.156471, 44.667213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845413, 34.833889, 44.450787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455732, 0.399049, -0.795656,
		0.857571, -0.436342, 0.272355,
		-0.238495, -0.806452, -0.541068,
		34.773865, 34.591953, 44.288467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545490, 35.026230, 44.244991>,  <34.940811, 35.156471, 44.667213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545490, 35.026230, 44.244991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244469, 34.850758, 44.048534>,  <35.063854, 34.745476, 43.930660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244469, 34.850758, 44.048534>,  <35.545490, 35.026230, 44.244991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244469, 34.850758, 44.048534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279663, 0.462327, -0.841452,
		0.596195, -0.770595, -0.225246,
		-0.752556, -0.438677, -0.491144,
		35.018703, 34.719154, 43.901192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.629131, 40.999352, 30.951412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250496, 41.042755, 31.072870>,  <42.023315, 41.068798, 31.145744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250496, 41.042755, 31.072870>,  <42.629131, 40.999352, 30.951412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250496, 41.042755, 31.072870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278134, -0.201681, 0.939131,
		0.163140, 0.973423, 0.160730,
		-0.946587, 0.108505, 0.303644,
		41.966518, 41.075306, 31.163963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616016, 41.518806, 31.568584>,  <42.629131, 40.999352, 30.951412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616016, 41.518806, 31.568584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.298988, 41.275406, 31.584408>,  <42.108772, 41.129364, 31.593903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.298988, 41.275406, 31.584408>,  <42.616016, 41.518806, 31.568584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298988, 41.275406, 31.584408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324292, -0.365672, 0.872422,
		-0.516403, 0.704281, 0.487151,
		-0.792568, -0.608500, 0.039558,
		42.061218, 41.092857, 31.596275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528038, 41.485527, 32.257736>,  <42.616016, 41.518806, 31.568584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528038, 41.485527, 32.257736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.301781, 41.192593, 32.106083>,  <42.166027, 41.016834, 32.015091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.301781, 41.192593, 32.106083>,  <42.528038, 41.485527, 32.257736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301781, 41.192593, 32.106083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217961, -0.576165, 0.787735,
		-0.795327, 0.362938, 0.485521,
		-0.565639, -0.732332, -0.379133,
		42.132088, 40.972893, 31.992344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137447, 41.199165, 32.882633>,  <42.528038, 41.485527, 32.257736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137447, 41.199165, 32.882633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.150982, 40.918995, 32.597466>,  <42.159103, 40.750893, 32.426365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.150982, 40.918995, 32.597466>,  <42.137447, 41.199165, 32.882633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150982, 40.918995, 32.597466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314201, -0.669707, 0.672882,
		-0.948753, -0.246771, 0.197412,
		0.033840, -0.700426, -0.712923,
		42.161133, 40.708866, 32.383587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965317, 40.717098, 33.305588>,  <42.137447, 41.199165, 32.882633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965317, 40.717098, 33.305588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.109283, 40.527889, 32.983913>,  <42.195663, 40.414364, 32.790909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.109283, 40.527889, 32.983913>,  <41.965317, 40.717098, 33.305588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109283, 40.527889, 32.983913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282180, -0.766389, 0.577081,
		-0.889287, -0.434628, -0.142362,
		0.359920, -0.473019, -0.804183,
		42.217258, 40.385983, 32.742657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972214, 39.989323, 33.459549>,  <41.965317, 40.717098, 33.305588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972214, 39.989323, 33.459549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.209763, 40.004280, 33.138073>,  <42.352291, 40.013252, 32.945187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.209763, 40.004280, 33.138073>,  <41.972214, 39.989323, 33.459549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209763, 40.004280, 33.138073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424970, -0.862779, 0.273885,
		-0.683166, -0.504197, -0.528271,
		0.593873, 0.037391, -0.803690,
		42.387924, 40.015499, 32.896965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821659, 39.431522, 33.151424>,  <41.972214, 39.989323, 33.459549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821659, 39.431522, 33.151424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196281, 39.521191, 33.043636>,  <42.421055, 39.574989, 32.978962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196281, 39.521191, 33.043636>,  <41.821659, 39.431522, 33.151424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196281, 39.521191, 33.043636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307062, -0.895457, 0.322289,
		-0.169052, -0.384585, -0.907478,
		0.936555, 0.224168, -0.269470,
		42.477249, 39.588440, 32.962795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118217, 38.846352, 32.837593>,  <41.821659, 39.431522, 33.151424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118217, 38.846352, 32.837593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446480, 39.044548, 32.951450>,  <42.643436, 39.163467, 33.019764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446480, 39.044548, 32.951450>,  <42.118217, 38.846352, 32.837593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446480, 39.044548, 32.951450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367959, -0.839319, 0.400187,
		0.437191, -0.223679, -0.871109,
		0.820652, 0.495490, 0.284639,
		42.692677, 39.193195, 33.036842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667355, 38.605442, 32.544281>,  <42.118217, 38.846352, 32.837593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667355, 38.605442, 32.544281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817627, 38.782799, 32.869801>,  <42.907791, 38.889214, 33.065113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817627, 38.782799, 32.869801>,  <42.667355, 38.605442, 32.544281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817627, 38.782799, 32.869801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428893, -0.861609, 0.271442,
		0.821531, 0.247057, -0.513858,
		0.375683, 0.443388, 0.813799,
		42.930332, 38.915813, 33.113941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375965, 38.296165, 32.674324>,  <42.667355, 38.605442, 32.544281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375965, 38.296165, 32.674324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307446, 38.491119, 33.016811>,  <43.266335, 38.608093, 33.222305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307446, 38.491119, 33.016811>,  <43.375965, 38.296165, 32.674324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307446, 38.491119, 33.016811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452161, -0.733243, 0.507843,
		0.875333, 0.474142, -0.094773,
		-0.171298, 0.487385, 0.856220,
		43.256058, 38.637337, 33.273678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867325, 38.146381, 33.112206>,  <43.375965, 38.296165, 32.674324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867325, 38.146381, 33.112206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590248, 38.271698, 33.372059>,  <43.424004, 38.346889, 33.527969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590248, 38.271698, 33.372059>,  <43.867325, 38.146381, 33.112206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590248, 38.271698, 33.372059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279743, -0.713508, 0.642379,
		0.664771, 0.626702, 0.406601,
		-0.692693, 0.313291, 0.649635,
		43.382439, 38.365685, 33.566948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229012, 38.213306, 33.701183>,  <43.867325, 38.146381, 33.112206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229012, 38.213306, 33.701183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850910, 38.197849, 33.830799>,  <43.624050, 38.188576, 33.908569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850910, 38.197849, 33.830799>,  <44.229012, 38.213306, 33.701183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850910, 38.197849, 33.830799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276608, -0.621767, 0.732730,
		0.173163, 0.782248, 0.598417,
		-0.945253, -0.038646, 0.324043,
		43.567333, 38.186256, 33.928013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173389, 38.388298, 34.465611>,  <44.229012, 38.213306, 33.701183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173389, 38.388298, 34.465611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855316, 38.175018, 34.350105>,  <43.664471, 38.047050, 34.280804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855316, 38.175018, 34.350105>,  <44.173389, 38.388298, 34.465611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855316, 38.175018, 34.350105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252389, -0.724045, 0.641919,
		-0.551343, 0.437565, 0.710322,
		-0.795186, -0.533195, -0.288760,
		43.616760, 38.015060, 34.263477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685482, 38.261166, 35.038551>,  <44.173389, 38.388298, 34.465611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685482, 38.261166, 35.038551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.626247, 37.969521, 34.771282>,  <43.590706, 37.794533, 34.610920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.626247, 37.969521, 34.771282>,  <43.685482, 38.261166, 35.038551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626247, 37.969521, 34.771282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362821, -0.668570, 0.649134,
		-0.920017, -0.146301, 0.363544,
		-0.148086, -0.729116, -0.668177,
		43.581821, 37.750786, 34.570827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396511, 37.751461, 35.437469>,  <43.685482, 38.261166, 35.038551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396511, 37.751461, 35.437469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511356, 37.561554, 35.104683>,  <43.580265, 37.447609, 34.905010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511356, 37.561554, 35.104683>,  <43.396511, 37.751461, 35.437469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511356, 37.561554, 35.104683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097580, -0.849519, 0.518455,
		-0.952914, -0.230037, -0.197579,
		0.287112, -0.474763, -0.831966,
		43.597488, 37.419125, 34.855095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040203, 37.060856, 35.533707>,  <43.396511, 37.751461, 35.437469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040203, 37.060856, 35.533707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.325676, 37.033081, 35.254902>,  <43.496960, 37.016415, 35.087620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.325676, 37.033081, 35.254902>,  <43.040203, 37.060856, 35.533707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325676, 37.033081, 35.254902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212825, -0.926535, 0.310222,
		-0.667351, -0.369743, -0.646478,
		0.713687, -0.069440, -0.697015,
		43.539783, 37.012249, 35.045799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892853, 36.394066, 35.149948>,  <43.040203, 37.060856, 35.533707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892853, 36.394066, 35.149948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282539, 36.481869, 35.129101>,  <43.516350, 36.534550, 35.116592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282539, 36.481869, 35.129101>,  <42.892853, 36.394066, 35.149948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282539, 36.481869, 35.129101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225527, -0.953835, 0.198331,
		-0.006176, -0.204972, -0.978748,
		0.974217, 0.219510, -0.052118,
		43.574806, 36.547722, 35.113464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077084, 35.780468, 34.918571>,  <42.892853, 36.394066, 35.149948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077084, 35.780468, 34.918571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406433, 35.981663, 35.023685>,  <43.604042, 36.102379, 35.086754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.406433, 35.981663, 35.023685>,  <43.077084, 35.780468, 34.918571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406433, 35.981663, 35.023685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480918, -0.864280, 0.147441,
		0.301283, 0.004980, -0.953522,
		0.823375, 0.502987, 0.262788,
		43.653446, 36.132557, 35.102524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606236, 35.434364, 34.604305>,  <43.077084, 35.780468, 34.918571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606236, 35.434364, 34.604305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780411, 35.638042, 34.901253>,  <43.884918, 35.760250, 35.079422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780411, 35.638042, 34.901253>,  <43.606236, 35.434364, 34.604305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780411, 35.638042, 34.901253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448759, -0.837665, 0.311338,
		0.780389, 0.197576, -0.593259,
		0.435440, 0.509196, 0.742369,
		43.911041, 35.790802, 35.123962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276218, 35.286102, 34.538540>,  <43.606236, 35.434364, 34.604305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276218, 35.286102, 34.538540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201332, 35.379517, 34.920200>,  <44.156403, 35.435566, 35.149197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201332, 35.379517, 34.920200>,  <44.276218, 35.286102, 34.538540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201332, 35.379517, 34.920200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595944, -0.745160, 0.299313,
		0.780898, 0.624658, 0.000328,
		-0.187213, 0.233537, 0.954155,
		44.145168, 35.449577, 35.206448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946167, 35.151825, 34.853264>,  <44.276218, 35.286102, 34.538540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946167, 35.151825, 34.853264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663471, 35.153221, 35.136250>,  <44.493855, 35.154060, 35.306042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663471, 35.153221, 35.136250>,  <44.946167, 35.151825, 34.853264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663471, 35.153221, 35.136250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407911, -0.815024, 0.411515,
		0.578040, 0.579417, 0.574582,
		-0.706737, 0.003494, 0.707467,
		44.451450, 35.154270, 35.348492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769493, 34.986015, 34.693802>,  <44.946167, 35.151825, 34.853264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769493, 34.986015, 34.693802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.004875, 34.904697, 34.380779>,  <46.146103, 34.855907, 34.192966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.004875, 34.904697, 34.380779>,  <45.769493, 34.986015, 34.693802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004875, 34.904697, 34.380779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772993, 0.142341, -0.618240,
		0.237076, 0.968715, -0.073386,
		0.588453, -0.203297, -0.782556,
		46.181412, 34.843708, 34.146011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.816479, 35.506504, 34.247314>,  <45.769493, 34.986015, 34.693802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.816479, 35.506504, 34.247314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.896912, 35.197918, 34.005852>,  <45.945171, 35.012764, 33.860973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.896912, 35.197918, 34.005852>,  <45.816479, 35.506504, 34.247314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896912, 35.197918, 34.005852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681634, 0.332387, -0.651839,
		0.703522, 0.542544, -0.459024,
		0.201078, -0.771469, -0.603658,
		45.957233, 34.966476, 33.824753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.910603, 35.770809, 33.660107>,  <45.816479, 35.506504, 34.247314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.910603, 35.770809, 33.660107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841789, 35.383869, 33.585667>,  <45.800499, 35.151703, 33.541004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.841789, 35.383869, 33.585667>,  <45.910603, 35.770809, 33.660107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841789, 35.383869, 33.585667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653102, 0.253433, -0.713603,
		0.737469, -0.001224, -0.675379,
		-0.172037, -0.967352, -0.186100,
		45.790176, 35.093662, 33.529835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004791, 35.681404, 32.893826>,  <45.910603, 35.770809, 33.660107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004791, 35.681404, 32.893826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.772091, 35.394535, 33.047302>,  <45.632469, 35.222412, 33.139389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.772091, 35.394535, 33.047302>,  <46.004791, 35.681404, 32.893826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772091, 35.394535, 33.047302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711573, 0.220260, -0.667195,
		0.393986, -0.661167, -0.638462,
		-0.581755, -0.717178, 0.383689,
		45.597565, 35.179382, 33.162411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545643, 35.360252, 32.265251>,  <46.004791, 35.681404, 32.893826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545643, 35.360252, 32.265251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.348755, 35.198990, 32.573845>,  <45.230621, 35.102230, 32.758999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.348755, 35.198990, 32.573845>,  <45.545643, 35.360252, 32.265251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348755, 35.198990, 32.573845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868843, 0.173346, -0.463750,
		0.053229, -0.898564, -0.435602,
		-0.492219, -0.403154, 0.771484,
		45.201088, 35.078041, 32.805290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048107, 35.004608, 31.966547>,  <45.545643, 35.360252, 32.265251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048107, 35.004608, 31.966547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930264, 35.039909, 32.347160>,  <44.859558, 35.061089, 32.575527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930264, 35.039909, 32.347160>,  <45.048107, 35.004608, 31.966547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930264, 35.039909, 32.347160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919268, 0.245846, -0.307418,
		-0.261062, -0.965283, 0.008700,
		-0.294607, 0.088253, 0.951535,
		44.841881, 35.066383, 32.632622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406143, 34.603931, 32.034897>,  <45.048107, 35.004608, 31.966547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406143, 34.603931, 32.034897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364624, 34.863140, 32.336704>,  <44.339710, 35.018665, 32.517788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.364624, 34.863140, 32.336704>,  <44.406143, 34.603931, 32.034897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364624, 34.863140, 32.336704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979875, 0.063417, -0.189271,
		-0.170500, -0.758980, 0.628394,
		-0.103801, 0.648018, 0.754518,
		44.333485, 35.057545, 32.563061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811977, 34.323875, 32.392979>,  <44.406143, 34.603931, 32.034897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811977, 34.323875, 32.392979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867702, 34.711868, 32.472713>,  <43.901138, 34.944664, 32.520554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867702, 34.711868, 32.472713>,  <43.811977, 34.323875, 32.392979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867702, 34.711868, 32.472713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979825, 0.164156, -0.114003,
		-0.143303, -0.179434, 0.973277,
		0.139313, 0.969977, 0.199338,
		43.909496, 35.002861, 32.532516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225948, 34.659031, 32.875542>,  <43.811977, 34.323875, 32.392979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225948, 34.659031, 32.875542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376713, 34.966927, 32.669456>,  <43.467171, 35.151665, 32.545807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376713, 34.966927, 32.669456>,  <43.225948, 34.659031, 32.875542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376713, 34.966927, 32.669456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913770, 0.400003, -0.070866,
		0.151538, 0.497494, 0.854129,
		0.376910, 0.769738, -0.515211,
		43.489784, 35.197849, 32.514893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048786, 35.184387, 33.249405>,  <43.225948, 34.659031, 32.875542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048786, 35.184387, 33.249405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133152, 35.323994, 32.884174>,  <43.183773, 35.407757, 32.665035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133152, 35.323994, 32.884174>,  <43.048786, 35.184387, 33.249405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133152, 35.323994, 32.884174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878637, 0.477046, -0.020612,
		0.428384, 0.806608, 0.407273,
		0.210914, 0.349015, -0.913074,
		43.196426, 35.428699, 32.610252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831299, 35.899464, 33.266388>,  <43.048786, 35.184387, 33.249405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831299, 35.899464, 33.266388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842663, 35.826401, 32.873280>,  <42.849480, 35.782562, 32.637417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842663, 35.826401, 32.873280>,  <42.831299, 35.899464, 33.266388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842663, 35.826401, 32.873280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880815, 0.460263, -0.111006,
		0.472607, 0.868789, -0.147812,
		0.028409, -0.182657, -0.982766,
		42.851185, 35.771603, 32.578449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561649, 36.593506, 32.856174>,  <42.831299, 35.899464, 33.266388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561649, 36.593506, 32.856174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.522057, 36.295082, 32.592781>,  <42.498302, 36.116028, 32.434746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.522057, 36.295082, 32.592781>,  <42.561649, 36.593506, 32.856174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522057, 36.295082, 32.592781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902979, 0.345395, -0.255599,
		0.418129, 0.569297, -0.707862,
		-0.098980, -0.746058, -0.658483,
		42.492363, 36.071266, 32.395237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284698, 36.848835, 32.252476>,  <42.561649, 36.593506, 32.856174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284698, 36.848835, 32.252476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193939, 36.461636, 32.209602>,  <42.139484, 36.229317, 32.183880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193939, 36.461636, 32.209602>,  <42.284698, 36.848835, 32.252476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193939, 36.461636, 32.209602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951427, 0.243826, -0.187977,
		0.208095, 0.059321, -0.976308,
		-0.226899, -0.968003, -0.107178,
		42.125870, 36.171234, 32.177448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142075, 36.747055, 31.574272>,  <42.284698, 36.848835, 32.252476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142075, 36.747055, 31.574272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.955696, 36.438393, 31.747448>,  <41.843868, 36.253197, 31.851355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.955696, 36.438393, 31.747448>,  <42.142075, 36.747055, 31.574272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955696, 36.438393, 31.747448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884379, 0.390872, -0.255134,
		0.027651, -0.501764, -0.864562,
		-0.465950, -0.771655, 0.432942,
		41.815910, 36.206898, 31.877331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623260, 36.517559, 31.157133>,  <42.142075, 36.747055, 31.574272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623260, 36.517559, 31.157133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509716, 36.379215, 31.514862>,  <41.441589, 36.296211, 31.729500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509716, 36.379215, 31.514862>,  <41.623260, 36.517559, 31.157133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509716, 36.379215, 31.514862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948995, 0.234818, -0.210402,
		-0.137234, -0.908430, -0.394869,
		-0.283858, -0.345855, 0.894321,
		41.424557, 36.275459, 31.783157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022449, 36.309216, 31.115602>,  <41.623260, 36.517559, 31.157133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022449, 36.309216, 31.115602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.031322, 36.380074, 31.509176>,  <41.036648, 36.422588, 31.745321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.031322, 36.380074, 31.509176>,  <41.022449, 36.309216, 31.115602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031322, 36.380074, 31.509176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910009, 0.411122, -0.053504,
		-0.413995, -0.894202, 0.170327,
		0.022182, 0.177149, 0.983934,
		41.037975, 36.433220, 31.804356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300121, 36.332508, 31.338465>,  <41.022449, 36.309216, 31.115602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300121, 36.332508, 31.338465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.467289, 36.511398, 31.654778>,  <40.567589, 36.618732, 31.844564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.467289, 36.511398, 31.654778>,  <40.300121, 36.332508, 31.338465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467289, 36.511398, 31.654778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710462, 0.703381, -0.022326,
		-0.566205, -0.552490, 0.611692,
		0.417917, 0.447225, 0.790781,
		40.592663, 36.645565, 31.892012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790161, 36.464836, 31.887608>,  <40.300121, 36.332508, 31.338465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790161, 36.464836, 31.887608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075283, 36.738602, 31.948908>,  <40.246357, 36.902863, 31.985687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075283, 36.738602, 31.948908>,  <39.790161, 36.464836, 31.887608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075283, 36.738602, 31.948908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701360, 0.695291, 0.157049,
		0.000932, -0.219430, 0.975628,
		0.712807, 0.684412, 0.153252,
		40.289124, 36.943924, 31.994883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490696, 36.974861, 32.175861>,  <39.790161, 36.464836, 31.887608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490696, 36.974861, 32.175861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.823586, 37.172112, 32.074486>,  <40.023319, 37.290462, 32.013660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.823586, 37.172112, 32.074486>,  <39.490696, 36.974861, 32.175861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823586, 37.172112, 32.074486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536478, 0.831614, -0.143559,
		0.139973, 0.255439, 0.956639,
		0.832225, 0.493121, -0.253440,
		40.073254, 37.320049, 31.998453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401627, 37.620773, 32.561035>,  <39.490696, 36.974861, 32.175861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401627, 37.620773, 32.561035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685566, 37.684856, 32.286678>,  <39.855930, 37.723305, 32.122063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685566, 37.684856, 32.286678>,  <39.401627, 37.620773, 32.561035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685566, 37.684856, 32.286678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364132, 0.917033, -0.162658,
		0.602928, 0.365218, 0.709291,
		0.709849, 0.160204, -0.685893,
		39.898521, 37.732918, 32.080910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776928, 38.160049, 32.747753>,  <39.401627, 37.620773, 32.561035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776928, 38.160049, 32.747753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828461, 38.128216, 32.352367>,  <39.859379, 38.109116, 32.115135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828461, 38.128216, 32.352367>,  <39.776928, 38.160049, 32.747753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828461, 38.128216, 32.352367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005501, 0.996816, -0.079544,
		0.991651, 0.004810, 0.128859,
		0.128832, -0.079589, -0.988467,
		39.867111, 38.104340, 32.055828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.634426, 35.778229, 41.032078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375637, 35.531796, 40.852356>,  <39.220364, 35.383934, 40.744522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375637, 35.531796, 40.852356>,  <39.634426, 35.778229, 41.032078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375637, 35.531796, 40.852356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353421, 0.279845, -0.892625,
		0.675666, -0.736294, 0.036685,
		-0.646969, -0.616082, -0.449304,
		39.181545, 35.346970, 40.717564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989876, 35.571777, 40.545273>,  <39.634426, 35.778229, 41.032078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989876, 35.571777, 40.545273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628368, 35.478474, 40.401726>,  <39.411465, 35.422489, 40.315598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628368, 35.478474, 40.401726>,  <39.989876, 35.571777, 40.545273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628368, 35.478474, 40.401726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289858, 0.283348, -0.914164,
		0.314925, -0.930216, -0.188469,
		-0.903772, -0.233264, -0.358864,
		39.357235, 35.408493, 40.294067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085445, 35.098381, 39.942429>,  <39.989876, 35.571777, 40.545273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085445, 35.098381, 39.942429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742733, 35.301636, 39.907291>,  <39.537106, 35.423588, 39.886211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742733, 35.301636, 39.907291>,  <40.085445, 35.098381, 39.942429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742733, 35.301636, 39.907291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256892, 0.272886, -0.927114,
		-0.447133, -0.816901, -0.364341,
		-0.856783, 0.508140, -0.087839,
		39.485699, 35.454079, 39.880939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745354, 34.816147, 39.328445>,  <40.085445, 35.098381, 39.942429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745354, 34.816147, 39.328445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587486, 35.178059, 39.392460>,  <39.492767, 35.395206, 39.430870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587486, 35.178059, 39.392460>,  <39.745354, 34.816147, 39.328445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587486, 35.178059, 39.392460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363349, 0.313662, -0.877265,
		-0.843928, -0.288079, -0.452543,
		-0.394668, 0.904780, 0.160035,
		39.469086, 35.449493, 39.440472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194592, 34.917706, 38.794460>,  <39.745354, 34.816147, 39.328445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194592, 34.917706, 38.794460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273064, 35.284836, 38.932507>,  <39.320148, 35.505116, 39.015335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273064, 35.284836, 38.932507>,  <39.194592, 34.917706, 38.794460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273064, 35.284836, 38.932507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100162, 0.331354, -0.938175,
		-0.975438, 0.218620, -0.026927,
		0.196181, 0.917829, 0.345113,
		39.331917, 35.560184, 39.036041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772057, 35.364166, 38.412617>,  <39.194592, 34.917706, 38.794460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772057, 35.364166, 38.412617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068920, 35.596066, 38.547131>,  <39.247040, 35.735207, 38.627838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068920, 35.596066, 38.547131>,  <38.772057, 35.364166, 38.412617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068920, 35.596066, 38.547131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148304, 0.347258, -0.925969,
		-0.653605, 0.737092, 0.171743,
		0.742163, 0.579748, 0.336283,
		39.291569, 35.769989, 38.648014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659698, 36.048599, 38.151527>,  <38.772057, 35.364166, 38.412617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659698, 36.048599, 38.151527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044346, 36.027084, 38.259155>,  <39.275135, 36.014175, 38.323734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044346, 36.027084, 38.259155>,  <38.659698, 36.048599, 38.151527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044346, 36.027084, 38.259155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266485, 0.416801, -0.869058,
		-0.065410, 0.907405, 0.415135,
		0.961617, -0.053783, 0.269073,
		39.332832, 36.010948, 38.339878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010201, 36.595871, 37.854855>,  <38.659698, 36.048599, 38.151527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010201, 36.595871, 37.854855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305130, 36.344906, 37.955021>,  <39.482086, 36.194328, 38.015121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305130, 36.344906, 37.955021>,  <39.010201, 36.595871, 37.854855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305130, 36.344906, 37.955021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479403, 0.224805, -0.848313,
		0.475949, 0.745530, 0.466538,
		0.737323, -0.627413, 0.250414,
		39.526325, 36.156681, 38.030144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644169, 36.843266, 37.478512>,  <39.010201, 36.595871, 37.854855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644169, 36.843266, 37.478512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739120, 36.466789, 37.574696>,  <39.796089, 36.240906, 37.632404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739120, 36.466789, 37.574696>,  <39.644169, 36.843266, 37.478512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739120, 36.466789, 37.574696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459377, -0.109346, -0.881485,
		0.855935, 0.319705, 0.406404,
		0.237377, -0.941187, 0.240458,
		39.810333, 36.184433, 37.646832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284138, 36.832897, 37.164852>,  <39.644169, 36.843266, 37.478512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284138, 36.832897, 37.164852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179684, 36.453346, 37.235771>,  <40.117012, 36.225616, 37.278324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179684, 36.453346, 37.235771>,  <40.284138, 36.832897, 37.164852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179684, 36.453346, 37.235771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534282, -0.295049, -0.792142,
		0.803959, -0.112131, 0.584018,
		-0.261138, -0.948880, 0.177298,
		40.101341, 36.168682, 37.288960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921452, 36.439602, 37.046196>,  <40.284138, 36.832897, 37.164852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921452, 36.439602, 37.046196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605709, 36.198780, 36.998127>,  <40.416264, 36.054287, 36.969284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605709, 36.198780, 36.998127>,  <40.921452, 36.439602, 37.046196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605709, 36.198780, 36.998127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444624, -0.425634, -0.788128,
		0.423345, -0.675549, 0.603666,
		-0.789360, -0.602054, -0.120176,
		40.368900, 36.018166, 36.962074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201870, 35.838856, 36.886822>,  <40.921452, 36.439602, 37.046196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201870, 35.838856, 36.886822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829296, 35.792042, 36.748997>,  <40.605751, 35.763954, 36.666302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829296, 35.792042, 36.748997>,  <41.201870, 35.838856, 36.886822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829296, 35.792042, 36.748997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363113, -0.236705, -0.901177,
		0.023910, -0.964507, 0.262974,
		-0.931438, -0.117036, -0.344565,
		40.549866, 35.756931, 36.645626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071014, 35.173553, 36.582249>,  <41.201870, 35.838856, 36.886822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071014, 35.173553, 36.582249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916519, 35.490852, 36.393955>,  <40.823822, 35.681232, 36.280979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916519, 35.490852, 36.393955>,  <41.071014, 35.173553, 36.582249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916519, 35.490852, 36.393955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634367, -0.142050, -0.759869,
		-0.669628, -0.592104, -0.448343,
		-0.386234, 0.793243, -0.470731,
		40.800648, 35.728825, 36.252735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814812, 34.468254, 36.639523>,  <41.071014, 35.173553, 36.582249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814812, 34.468254, 36.639523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001461, 34.203522, 36.404835>,  <41.113449, 34.044682, 36.264023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001461, 34.203522, 36.404835>,  <40.814812, 34.468254, 36.639523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001461, 34.203522, 36.404835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577078, -0.730536, 0.365099,
		-0.670255, 0.168221, -0.722814,
		0.466624, -0.661830, -0.586722,
		41.141449, 34.004974, 36.228817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267422, 34.083427, 36.368111>,  <40.814812, 34.468254, 36.639523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267422, 34.083427, 36.368111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581135, 33.837189, 36.337292>,  <40.769363, 33.689445, 36.318802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581135, 33.837189, 36.337292>,  <40.267422, 34.083427, 36.368111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581135, 33.837189, 36.337292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561536, -0.757176, 0.333710,
		-0.263767, -0.218461, -0.939522,
		0.784286, -0.615597, -0.077044,
		40.816422, 33.652512, 36.314178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970840, 33.428982, 36.180870>,  <40.267422, 34.083427, 36.368111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970840, 33.428982, 36.180870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327011, 33.346088, 36.342949>,  <40.540714, 33.296352, 36.440197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327011, 33.346088, 36.342949>,  <39.970840, 33.428982, 36.180870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327011, 33.346088, 36.342949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416739, -0.729100, 0.542901,
		0.182924, -0.652279, -0.735575,
		0.890431, -0.207233, 0.405200,
		40.594139, 33.283920, 36.464508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033672, 32.684101, 36.153622>,  <39.970840, 33.428982, 36.180870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033672, 32.684101, 36.153622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291084, 32.800732, 36.436707>,  <40.445530, 32.870708, 36.606556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291084, 32.800732, 36.436707>,  <40.033672, 32.684101, 36.153622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291084, 32.800732, 36.436707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306899, -0.748737, 0.587543,
		0.701204, -0.595295, -0.392347,
		0.643526, 0.291577, 0.707713,
		40.484142, 32.888206, 36.649021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389343, 31.999821, 36.470596>,  <40.033672, 32.684101, 36.153622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389343, 31.999821, 36.470596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425987, 32.265823, 36.767075>,  <40.447975, 32.425426, 36.944962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425987, 32.265823, 36.767075>,  <40.389343, 31.999821, 36.470596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425987, 32.265823, 36.767075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070473, -0.738129, 0.670969,
		0.993298, -0.113705, -0.020758,
		0.091614, 0.665009, 0.741195,
		40.453472, 32.465324, 36.989433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806709, 31.708441, 37.051235>,  <40.389343, 31.999821, 36.470596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806709, 31.708441, 37.051235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609428, 32.015144, 37.215591>,  <40.491062, 32.199165, 37.314205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609428, 32.015144, 37.215591>,  <40.806709, 31.708441, 37.051235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609428, 32.015144, 37.215591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008903, -0.476760, 0.878989,
		0.869870, 0.429860, 0.241964,
		-0.493201, 0.766760, 0.410892,
		40.461468, 32.245171, 37.338860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261978, 31.849970, 37.660458>,  <40.806709, 31.708441, 37.051235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261978, 31.849970, 37.660458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893051, 31.987291, 37.731415>,  <40.671696, 32.069683, 37.773991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893051, 31.987291, 37.731415>,  <41.261978, 31.849970, 37.660458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893051, 31.987291, 37.731415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011299, -0.482819, 0.875647,
		0.386261, 0.805623, 0.449193,
		-0.922320, 0.343304, 0.177391,
		40.616356, 32.090282, 37.784634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230782, 31.810524, 38.389687>,  <41.261978, 31.849970, 37.660458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230782, 31.810524, 38.389687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849731, 31.896372, 38.303486>,  <40.621101, 31.947880, 38.251766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849731, 31.896372, 38.303486>,  <41.230782, 31.810524, 38.389687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849731, 31.896372, 38.303486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286203, -0.392869, 0.873923,
		0.102898, 0.894200, 0.435682,
		-0.952628, 0.214619, -0.215497,
		40.563942, 31.960758, 38.238838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907528, 32.027214, 38.987343>,  <41.230782, 31.810524, 38.389687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907528, 32.027214, 38.987343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593117, 31.901602, 38.774349>,  <40.404469, 31.826235, 38.646553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593117, 31.901602, 38.774349>,  <40.907528, 32.027214, 38.987343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593117, 31.901602, 38.774349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331793, -0.512481, 0.792008,
		-0.521602, 0.799218, 0.298634,
		-0.786031, -0.314028, -0.532486,
		40.357307, 31.807394, 38.614605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436157, 32.064060, 39.443279>,  <40.907528, 32.027214, 38.987343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436157, 32.064060, 39.443279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281971, 31.810505, 39.175068>,  <40.189461, 31.658373, 39.014141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281971, 31.810505, 39.175068>,  <40.436157, 32.064060, 39.443279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281971, 31.810505, 39.175068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530712, -0.442152, 0.723081,
		-0.754825, 0.634579, -0.165976,
		-0.385466, -0.633885, -0.670526,
		40.166332, 31.620338, 38.973911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717220, 32.082291, 39.579308>,  <40.436157, 32.064060, 39.443279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717220, 32.082291, 39.579308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768864, 31.732861, 39.391605>,  <39.799850, 31.523203, 39.278984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768864, 31.732861, 39.391605>,  <39.717220, 32.082291, 39.579308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768864, 31.732861, 39.391605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537395, -0.459341, 0.707258,
		-0.833389, 0.160860, -0.528759,
		0.129111, -0.873573, -0.469255,
		39.807598, 31.470789, 39.250828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120758, 31.786518, 39.541103>,  <39.717220, 32.082291, 39.579308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120758, 31.786518, 39.541103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361164, 31.467400, 39.521908>,  <39.505405, 31.275928, 39.510391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361164, 31.467400, 39.521908>,  <39.120758, 31.786518, 39.541103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361164, 31.467400, 39.521908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552907, -0.458377, 0.695834,
		-0.577131, -0.391673, -0.716598,
		0.601011, -0.797799, -0.047985,
		39.541470, 31.228060, 39.507511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691624, 31.243809, 39.573921>,  <39.120758, 31.786518, 39.541103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691624, 31.243809, 39.573921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044441, 31.086834, 39.678215>,  <39.256134, 30.992649, 39.740791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044441, 31.086834, 39.678215>,  <38.691624, 31.243809, 39.573921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044441, 31.086834, 39.678215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448221, -0.528341, 0.721078,
		-0.145222, -0.752893, -0.641921,
		0.882048, -0.392439, 0.260736,
		39.309055, 30.969103, 39.756435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575783, 30.578341, 39.621998>,  <38.691624, 31.243809, 39.573921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575783, 30.578341, 39.621998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916912, 30.577335, 39.830875>,  <39.121590, 30.576733, 39.956200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916912, 30.577335, 39.830875>,  <38.575783, 30.578341, 39.621998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916912, 30.577335, 39.830875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485008, -0.374424, 0.790300,
		0.193536, -0.927254, -0.320536,
		0.852825, -0.002511, 0.522191,
		39.172760, 30.576582, 39.987534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735985, 29.878630, 40.011414>,  <38.575783, 30.578341, 39.621998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735985, 29.878630, 40.011414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991673, 30.108948, 40.215321>,  <39.145084, 30.247139, 40.337666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991673, 30.108948, 40.215321>,  <38.735985, 29.878630, 40.011414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991673, 30.108948, 40.215321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369654, -0.351216, 0.860234,
		0.674355, -0.738315, -0.011660,
		0.639219, 0.575794, 0.509766,
		39.183437, 30.281685, 40.368252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759010, 29.179783, 39.709236>,  <38.735985, 29.878630, 40.011414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759010, 29.179783, 39.709236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383232, 29.105392, 39.594097>,  <38.157764, 29.060759, 39.525013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383232, 29.105392, 39.594097>,  <38.759010, 29.179783, 39.709236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383232, 29.105392, 39.594097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121188, 0.605392, -0.786647,
		0.320561, -0.773895, -0.546193,
		-0.939443, -0.185976, -0.287852,
		38.101398, 29.049599, 39.507740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819244, 29.205137, 39.005920>,  <38.759010, 29.179783, 39.709236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819244, 29.205137, 39.005920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424271, 29.228666, 39.064587>,  <38.187286, 29.242785, 39.099785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424271, 29.228666, 39.064587>,  <38.819244, 29.205137, 39.005920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424271, 29.228666, 39.064587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109911, 0.411184, -0.904902,
		-0.113535, -0.909653, -0.399552,
		-0.987436, 0.058823, 0.146664,
		38.128040, 29.246313, 39.108585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491722, 28.889633, 38.434139>,  <38.819244, 29.205137, 39.005920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491722, 28.889633, 38.434139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206188, 29.114334, 38.601410>,  <38.034866, 29.249155, 38.701771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206188, 29.114334, 38.601410>,  <38.491722, 28.889633, 38.434139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206188, 29.114334, 38.601410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136668, 0.473900, -0.869908,
		-0.686845, -0.678125, -0.261515,
		-0.713839, 0.561752, 0.418174,
		37.992035, 29.282860, 38.726864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907604, 28.806524, 37.939320>,  <38.491722, 28.889633, 38.434139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907604, 28.806524, 37.939320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863041, 29.135052, 38.163113>,  <37.836304, 29.332169, 38.297390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863041, 29.135052, 38.163113>,  <37.907604, 28.806524, 37.939320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863041, 29.135052, 38.163113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098472, 0.551094, -0.828613,
		-0.988884, -0.147408, 0.019480,
		-0.111409, 0.821320, 0.559484,
		37.829617, 29.381447, 38.330959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258045, 29.189253, 37.737038>,  <37.907604, 28.806524, 37.939320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258045, 29.189253, 37.737038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519730, 29.440554, 37.905472>,  <37.676739, 29.591333, 38.006531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519730, 29.440554, 37.905472>,  <37.258045, 29.189253, 37.737038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519730, 29.440554, 37.905472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044005, 0.524199, -0.850458,
		-0.755033, 0.574907, 0.315290,
		0.654209, 0.628250, 0.421086,
		37.715992, 29.629028, 38.031799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011684, 29.880529, 37.539799>,  <37.258045, 29.189253, 37.737038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011684, 29.880529, 37.539799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385571, 29.944687, 37.666656>,  <37.609901, 29.983181, 37.742771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385571, 29.944687, 37.666656>,  <37.011684, 29.880529, 37.539799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385571, 29.944687, 37.666656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167617, 0.587933, -0.791353,
		-0.313391, 0.792848, 0.522664,
		0.934714, 0.160395, 0.317147,
		37.665985, 29.992805, 37.761799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170261, 30.620712, 37.415813>,  <37.011684, 29.880529, 37.539799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170261, 30.620712, 37.415813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533104, 30.453625, 37.436504>,  <37.750809, 30.353373, 37.448917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533104, 30.453625, 37.436504>,  <37.170261, 30.620712, 37.415813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533104, 30.453625, 37.436504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345257, 0.668129, -0.659091,
		0.240756, 0.615722, 0.750282,
		0.907102, -0.417720, 0.051727,
		37.805233, 30.328308, 37.452023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663700, 31.184587, 37.379433>,  <37.170261, 30.620712, 37.415813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663700, 31.184587, 37.379433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878094, 30.857107, 37.297016>,  <38.006729, 30.660620, 37.247566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878094, 30.857107, 37.297016>,  <37.663700, 31.184587, 37.379433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878094, 30.857107, 37.297016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459780, 0.487766, -0.742083,
		0.708042, 0.303011, 0.637856,
		0.535984, -0.818699, -0.206041,
		38.038891, 30.611498, 37.235203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373760, 31.370953, 37.432384>,  <37.663700, 31.184587, 37.379433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373760, 31.370953, 37.432384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319855, 31.072765, 37.171276>,  <38.287510, 30.893852, 37.014610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319855, 31.072765, 37.171276>,  <38.373760, 31.370953, 37.432384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319855, 31.072765, 37.171276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427877, 0.550418, -0.716912,
		0.893734, -0.375923, 0.244791,
		-0.134766, -0.745468, -0.652775,
		38.279427, 30.849125, 36.975445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052589, 31.435495, 37.095753>,  <38.373760, 31.370953, 37.432384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052589, 31.435495, 37.095753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821976, 31.196714, 36.872589>,  <38.683609, 31.053446, 36.738693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821976, 31.196714, 36.872589>,  <39.052589, 31.435495, 37.095753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821976, 31.196714, 36.872589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335167, 0.449936, -0.827781,
		0.745166, -0.664235, -0.059325,
		-0.576533, -0.596951, -0.557906,
		38.649017, 31.017630, 36.705215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482841, 31.216070, 36.578762>,  <39.052589, 31.435495, 37.095753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482841, 31.216070, 36.578762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103130, 31.187529, 36.456268>,  <38.875305, 31.170404, 36.382774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103130, 31.187529, 36.456268>,  <39.482841, 31.216070, 36.578762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103130, 31.187529, 36.456268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232586, 0.496043, -0.836567,
		0.211597, -0.865361, -0.454287,
		-0.949279, -0.071354, -0.306232,
		38.818348, 31.166122, 36.364399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362801, 30.755728, 35.877132>,  <39.482841, 31.216070, 36.578762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362801, 30.755728, 35.877132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079960, 31.032597, 35.934975>,  <38.910255, 31.198717, 35.969681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079960, 31.032597, 35.934975>,  <39.362801, 30.755728, 35.877132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079960, 31.032597, 35.934975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297643, 0.476847, -0.827058,
		-0.641419, -0.541773, -0.543198,
		-0.707100, 0.692170, 0.144603,
		38.867828, 31.240248, 35.978355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.244003, 27.324610, 42.725964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877335, 27.475199, 42.672337>,  <37.657333, 27.565552, 42.640160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877335, 27.475199, 42.672337>,  <38.244003, 27.324610, 42.725964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877335, 27.475199, 42.672337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154396, 0.024187, -0.987713,
		-0.368606, -0.926111, -0.080298,
		-0.916674, 0.376475, -0.134072,
		37.602333, 27.588140, 42.632114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962662, 26.910458, 42.163666>,  <38.244003, 27.324610, 42.725964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962662, 26.910458, 42.163666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.745377, 27.246117, 42.174667>,  <37.615005, 27.447512, 42.181267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.745377, 27.246117, 42.174667>,  <37.962662, 26.910458, 42.163666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745377, 27.246117, 42.174667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024815, 0.048792, -0.998501,
		-0.839232, -0.541711, -0.047328,
		-0.543208, 0.839147, 0.027505,
		37.582413, 27.497860, 42.182919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474632, 26.840355, 41.626190>,  <37.962662, 26.910458, 42.163666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474632, 26.840355, 41.626190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.457108, 27.232557, 41.702805>,  <37.446590, 27.467878, 41.748772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.457108, 27.232557, 41.702805>,  <37.474632, 26.840355, 41.626190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457108, 27.232557, 41.702805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031832, 0.192994, -0.980683,
		-0.998533, -0.036871, -0.039667,
		-0.043814, 0.980507, 0.191537,
		37.443962, 27.526709, 41.760265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815361, 27.163723, 41.235836>,  <37.474632, 26.840355, 41.626190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815361, 27.163723, 41.235836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087349, 27.443455, 41.323994>,  <37.250542, 27.611294, 41.376888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087349, 27.443455, 41.323994>,  <36.815361, 27.163723, 41.235836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087349, 27.443455, 41.323994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112889, 0.396844, -0.910918,
		-0.724494, 0.594520, 0.348790,
		0.679974, 0.699329, 0.220397,
		37.291340, 27.653254, 41.390114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595573, 27.758677, 40.897068>,  <36.815361, 27.163723, 41.235836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595573, 27.758677, 40.897068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.956978, 27.900351, 40.993580>,  <37.173820, 27.985355, 41.051487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.956978, 27.900351, 40.993580>,  <36.595573, 27.758677, 40.897068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956978, 27.900351, 40.993580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006045, 0.573477, -0.819199,
		-0.428515, 0.738700, 0.520286,
		0.903515, 0.354184, 0.241278,
		37.228031, 28.006605, 41.065964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549572, 28.401962, 40.748913>,  <36.595573, 27.758677, 40.897068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549572, 28.401962, 40.748913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938663, 28.309948, 40.737080>,  <37.172119, 28.254740, 40.729980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938663, 28.309948, 40.737080>,  <36.549572, 28.401962, 40.748913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938663, 28.309948, 40.737080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109845, 0.569292, -0.814764,
		0.204268, 0.789298, 0.579037,
		0.972733, -0.230034, -0.029587,
		37.230484, 28.240938, 40.728203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970226, 29.086451, 40.698586>,  <36.549572, 28.401962, 40.748913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970226, 29.086451, 40.698586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217930, 28.791954, 40.589432>,  <37.366554, 28.615257, 40.523941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217930, 28.791954, 40.589432>,  <36.970226, 29.086451, 40.698586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217930, 28.791954, 40.589432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331512, 0.560203, -0.759126,
		0.711769, 0.379635, 0.590985,
		0.619262, -0.736240, -0.272882,
		37.403709, 28.571081, 40.507568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561283, 29.380295, 40.582703>,  <36.970226, 29.086451, 40.698586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561283, 29.380295, 40.582703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.612644, 29.038506, 40.381351>,  <37.643459, 28.833433, 40.260540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.612644, 29.038506, 40.381351>,  <37.561283, 29.380295, 40.582703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612644, 29.038506, 40.381351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350655, 0.513911, -0.782903,
		0.927661, -0.075987, 0.365611,
		0.128401, -0.854472, -0.503380,
		37.651165, 28.782164, 40.230339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245590, 29.340340, 40.346016>,  <37.561283, 29.380295, 40.582703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245590, 29.340340, 40.346016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033508, 29.111198, 40.095985>,  <37.906258, 28.973713, 39.945965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033508, 29.111198, 40.095985>,  <38.245590, 29.340340, 40.346016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033508, 29.111198, 40.095985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361922, 0.513782, -0.777844,
		0.766744, -0.638646, -0.065082,
		-0.530205, -0.572852, -0.625078,
		37.874447, 28.939342, 39.908463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051186, 29.531834, 40.537056>,  <38.245590, 29.340340, 40.346016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051186, 29.531834, 40.537056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.142673, 29.886843, 40.697052>,  <39.197567, 30.099848, 40.793049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.142673, 29.886843, 40.697052>,  <39.051186, 29.531834, 40.537056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142673, 29.886843, 40.697052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059029, -0.397480, 0.915710,
		0.971702, -0.233049, -0.038521,
		0.228717, 0.887523, 0.399989,
		39.211288, 30.153099, 40.817047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529602, 29.434288, 41.056854>,  <39.051186, 29.531834, 40.537056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529602, 29.434288, 41.056854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.340012, 29.777693, 41.135132>,  <39.226257, 29.983736, 41.182098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.340012, 29.777693, 41.135132>,  <39.529602, 29.434288, 41.056854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340012, 29.777693, 41.135132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128444, -0.287281, 0.949195,
		0.871117, 0.424764, 0.246436,
		-0.473981, 0.858513, 0.195697,
		39.197819, 30.035246, 41.193840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717857, 29.577606, 41.755611>,  <39.529602, 29.434288, 41.056854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717857, 29.577606, 41.755611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409073, 29.829060, 41.717873>,  <39.223804, 29.979931, 41.695229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409073, 29.829060, 41.717873>,  <39.717857, 29.577606, 41.755611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409073, 29.829060, 41.717873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328359, -0.267259, 0.905954,
		0.544297, 0.730339, 0.412730,
		-0.771959, 0.628631, -0.094345,
		39.177486, 30.017649, 41.689568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811440, 29.926729, 42.308235>,  <39.717857, 29.577606, 41.755611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811440, 29.926729, 42.308235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430252, 29.940851, 42.187836>,  <39.201538, 29.949324, 42.115597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430252, 29.940851, 42.187836>,  <39.811440, 29.926729, 42.308235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430252, 29.940851, 42.187836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298557, -0.280020, 0.912388,
		-0.052074, 0.959345, 0.277391,
		-0.952970, 0.035305, -0.301001,
		39.144360, 29.951443, 42.097534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522129, 30.420246, 42.685459>,  <39.811440, 29.926729, 42.308235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522129, 30.420246, 42.685459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.218094, 30.200289, 42.546967>,  <39.035671, 30.068316, 42.463871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.218094, 30.200289, 42.546967>,  <39.522129, 30.420246, 42.685459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218094, 30.200289, 42.546967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348744, -0.104386, 0.931387,
		-0.548304, 0.828687, -0.112428,
		-0.760093, -0.549891, -0.346235,
		38.990067, 30.035322, 42.443096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889454, 30.716608, 43.016151>,  <39.522129, 30.420246, 42.685459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889454, 30.716608, 43.016151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777309, 30.360384, 42.872875>,  <38.710022, 30.146650, 42.786907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777309, 30.360384, 42.872875>,  <38.889454, 30.716608, 43.016151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777309, 30.360384, 42.872875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508615, -0.178645, 0.842256,
		-0.814069, 0.418318, -0.402867,
		-0.280361, -0.890559, -0.358193,
		38.693203, 30.093216, 42.765419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106438, 30.697065, 42.987232>,  <38.889454, 30.716608, 43.016151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106438, 30.697065, 42.987232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.286076, 30.342812, 43.034496>,  <38.393860, 30.130259, 43.062855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.286076, 30.342812, 43.034496>,  <38.106438, 30.697065, 42.987232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286076, 30.342812, 43.034496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479695, -0.127425, 0.868134,
		-0.753793, -0.446557, -0.482061,
		0.449098, -0.885635, 0.118159,
		38.420803, 30.077122, 43.069942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567005, 30.252062, 43.117184>,  <38.106438, 30.697065, 42.987232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567005, 30.252062, 43.117184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842854, 29.996923, 43.254345>,  <38.008362, 29.843842, 43.336639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842854, 29.996923, 43.254345>,  <37.567005, 30.252062, 43.117184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842854, 29.996923, 43.254345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509484, -0.090835, 0.855672,
		-0.514639, -0.764790, -0.387613,
		0.689618, -0.637845, 0.342901,
		38.049740, 29.805571, 43.357216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225491, 29.756683, 43.523228>,  <37.567005, 30.252062, 43.117184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225491, 29.756683, 43.523228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604103, 29.737700, 43.650867>,  <37.831272, 29.726309, 43.727451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604103, 29.737700, 43.650867>,  <37.225491, 29.756683, 43.523228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604103, 29.737700, 43.650867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322172, -0.087421, 0.942636,
		-0.016834, -0.995041, -0.098035,
		0.946531, -0.047452, 0.319102,
		37.888062, 29.723461, 43.746597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122700, 29.469854, 44.121208>,  <37.225491, 29.756683, 43.523228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122700, 29.469854, 44.121208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504894, 29.584656, 44.148571>,  <37.734211, 29.653536, 44.164989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504894, 29.584656, 44.148571>,  <37.122700, 29.469854, 44.121208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504894, 29.584656, 44.148571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105952, 0.117377, 0.987419,
		0.275363, -0.950711, 0.142560,
		0.955484, 0.287003, 0.068408,
		37.791538, 29.670757, 44.169094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381100, 29.062805, 44.611645>,  <37.122700, 29.469854, 44.121208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381100, 29.062805, 44.611645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610241, 29.389570, 44.584835>,  <37.747726, 29.585630, 44.568748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610241, 29.389570, 44.584835>,  <37.381100, 29.062805, 44.611645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610241, 29.389570, 44.584835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017478, 0.093931, 0.995425,
		0.819474, -0.569058, 0.068087,
		0.572850, 0.816915, -0.067028,
		37.782097, 29.634645, 44.564728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885109, 28.968069, 45.122307>,  <37.381100, 29.062805, 44.611645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885109, 28.968069, 45.122307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854271, 29.358772, 45.042309>,  <37.835770, 29.593195, 44.994308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854271, 29.358772, 45.042309>,  <37.885109, 28.968069, 45.122307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854271, 29.358772, 45.042309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121174, 0.208285, 0.970533,
		0.989633, 0.050586, -0.134415,
		-0.077092, 0.976759, -0.199997,
		37.831142, 29.651800, 44.982311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329918, 29.287621, 45.532227>,  <37.885109, 28.968069, 45.122307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329918, 29.287621, 45.532227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077232, 29.584740, 45.443516>,  <37.925621, 29.763012, 45.390289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077232, 29.584740, 45.443516>,  <38.329918, 29.287621, 45.532227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077232, 29.584740, 45.443516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025321, 0.305712, 0.951787,
		0.774786, 0.595644, -0.211932,
		-0.631716, 0.742798, -0.221779,
		37.887718, 29.807579, 45.376984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588421, 29.787350, 45.876347>,  <38.329918, 29.287621, 45.532227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588421, 29.787350, 45.876347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.231171, 29.933323, 45.771160>,  <38.016819, 30.020906, 45.708050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.231171, 29.933323, 45.771160>,  <38.588421, 29.787350, 45.876347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231171, 29.933323, 45.771160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135876, 0.338420, 0.931133,
		0.428795, 0.867349, -0.252666,
		-0.893125, 0.364934, -0.262965,
		37.963234, 30.042803, 45.692272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.809200, 32.267822, 43.820202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.083935, 31.983326, 43.760330>,  <33.248775, 31.812630, 43.724407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.083935, 31.983326, 43.760330>,  <32.809200, 32.267822, 43.820202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083935, 31.983326, 43.760330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362138, 0.513436, -0.777971,
		0.630173, 0.480130, 0.610211,
		0.686832, -0.711237, -0.149680,
		33.289986, 31.769955, 43.715427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394737, 32.635822, 43.618557>,  <32.809200, 32.267822, 43.820202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394737, 32.635822, 43.618557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.509544, 32.265858, 43.518822>,  <33.578426, 32.043880, 43.458981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.509544, 32.265858, 43.518822>,  <33.394737, 32.635822, 43.618557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509544, 32.265858, 43.518822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476514, 0.363650, -0.800433,
		0.830998, 0.110923, 0.545104,
		0.287013, -0.924908, -0.249337,
		33.595650, 31.988386, 43.444019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062088, 32.602509, 43.523132>,  <33.394737, 32.635822, 43.618557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062088, 32.602509, 43.523132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.909935, 32.297806, 43.313354>,  <33.818642, 32.114986, 43.187489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.909935, 32.297806, 43.313354>,  <34.062088, 32.602509, 43.523132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909935, 32.297806, 43.313354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399295, 0.376219, -0.836076,
		0.834189, -0.527437, 0.161056,
		-0.380385, -0.761754, -0.524440,
		33.795818, 32.069279, 43.156021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517872, 32.372982, 43.200764>,  <34.062088, 32.602509, 43.523132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517872, 32.372982, 43.200764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248318, 32.196121, 42.963989>,  <34.086586, 32.090004, 42.821926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248318, 32.196121, 42.963989>,  <34.517872, 32.372982, 43.200764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248318, 32.196121, 42.963989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488076, 0.335064, -0.805924,
		0.554675, -0.832007, -0.009992,
		-0.673883, -0.442149, -0.591935,
		34.046154, 32.063477, 42.786407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842064, 32.231747, 42.523438>,  <34.517872, 32.372982, 43.200764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842064, 32.231747, 42.523438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.454464, 32.226036, 42.424778>,  <34.221905, 32.222610, 42.365582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.454464, 32.226036, 42.424778>,  <34.842064, 32.231747, 42.523438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454464, 32.226036, 42.424778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181628, 0.635617, -0.750335,
		0.167485, -0.771873, -0.613320,
		-0.969000, -0.014274, -0.246649,
		34.163765, 32.221752, 42.350784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804241, 32.010433, 41.822323>,  <34.842064, 32.231747, 42.523438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804241, 32.010433, 41.822323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.463047, 32.208672, 41.887802>,  <34.258331, 32.327614, 41.927090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.463047, 32.208672, 41.887802>,  <34.804241, 32.010433, 41.822323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463047, 32.208672, 41.887802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123261, 0.496045, -0.859503,
		-0.507166, -0.712969, -0.484209,
		-0.852989, 0.495595, 0.163696,
		34.207150, 32.357349, 41.936913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434925, 31.962490, 41.180862>,  <34.804241, 32.010433, 41.822323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434925, 31.962490, 41.180862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.268250, 32.278709, 41.360374>,  <34.168243, 32.468441, 41.468082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.268250, 32.278709, 41.360374>,  <34.434925, 31.962490, 41.180862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268250, 32.278709, 41.360374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013466, 0.488256, -0.872597,
		-0.908949, -0.369645, -0.192806,
		-0.416690, 0.790550, 0.448778,
		34.143242, 32.515873, 41.495007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955093, 32.225956, 40.714451>,  <34.434925, 31.962490, 41.180862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955093, 32.225956, 40.714451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963589, 32.550678, 40.947868>,  <33.968685, 32.745510, 41.087921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963589, 32.550678, 40.947868>,  <33.955093, 32.225956, 40.714451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963589, 32.550678, 40.947868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062210, 0.583620, -0.809641,
		-0.997837, -0.019106, 0.062897,
		0.021239, 0.811802, 0.583546,
		33.969959, 32.794220, 41.122932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556305, 32.671455, 40.428635>,  <33.955093, 32.225956, 40.714451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556305, 32.671455, 40.428635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776745, 32.919693, 40.651760>,  <33.909008, 33.068634, 40.785637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776745, 32.919693, 40.651760>,  <33.556305, 32.671455, 40.428635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776745, 32.919693, 40.651760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067617, 0.699502, -0.711425,
		-0.831696, 0.354348, 0.427457,
		0.551099, 0.620592, 0.557813,
		33.942074, 33.105869, 40.819103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254814, 33.315567, 40.317570>,  <33.556305, 32.671455, 40.428635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254814, 33.315567, 40.317570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620926, 33.381241, 40.464706>,  <33.840591, 33.420643, 40.552990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620926, 33.381241, 40.464706>,  <33.254814, 33.315567, 40.317570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620926, 33.381241, 40.464706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089787, 0.807047, -0.583621,
		-0.392687, 0.567204, 0.723931,
		0.915279, 0.164181, 0.367844,
		33.895508, 33.430496, 40.575058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308414, 34.000343, 40.495293>,  <33.254814, 33.315567, 40.317570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308414, 34.000343, 40.495293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692146, 33.896683, 40.450523>,  <33.922386, 33.834488, 40.423664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692146, 33.896683, 40.450523>,  <33.308414, 34.000343, 40.495293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692146, 33.896683, 40.450523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133678, 0.766271, -0.628457,
		0.248625, 0.587938, 0.769750,
		0.959331, -0.259149, -0.111920,
		33.979946, 33.818939, 40.416946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686718, 34.676086, 40.653500>,  <33.308414, 34.000343, 40.495293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686718, 34.676086, 40.653500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905781, 34.428600, 40.428196>,  <34.037220, 34.280109, 40.293015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905781, 34.428600, 40.428196>,  <33.686718, 34.676086, 40.653500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905781, 34.428600, 40.428196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299593, 0.773566, -0.558426,
		0.781225, 0.137079, 0.609013,
		0.547661, -0.618712, -0.563261,
		34.070080, 34.242985, 40.259216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422447, 34.989265, 40.539097>,  <33.686718, 34.676086, 40.653500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422447, 34.989265, 40.539097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.387932, 34.708626, 40.256168>,  <34.367222, 34.540241, 40.086411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.387932, 34.708626, 40.256168>,  <34.422447, 34.989265, 40.539097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387932, 34.708626, 40.256168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287101, 0.662343, -0.692008,
		0.954006, -0.262787, 0.144278,
		-0.086289, -0.701602, -0.707325,
		34.362045, 34.498146, 40.043972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723640, 35.313316, 39.924587>,  <34.422447, 34.989265, 40.539097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723640, 35.313316, 39.924587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568069, 34.988476, 39.750584>,  <34.474728, 34.793571, 39.646183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568069, 34.988476, 39.750584>,  <34.723640, 35.313316, 39.924587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568069, 34.988476, 39.750584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028035, 0.461529, -0.886682,
		0.920843, -0.357049, -0.156733,
		-0.388926, -0.812101, -0.435005,
		34.451393, 34.744846, 39.620083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245750, 35.243099, 40.338020>,  <34.723640, 35.313316, 39.924587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245750, 35.243099, 40.338020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558208, 35.486404, 40.394352>,  <35.745682, 35.632389, 40.428150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558208, 35.486404, 40.394352>,  <35.245750, 35.243099, 40.338020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558208, 35.486404, 40.394352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252101, 0.100917, 0.962424,
		0.571196, -0.787293, 0.232175,
		0.781141, 0.608264, 0.140834,
		35.792549, 35.668884, 40.436604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563160, 34.916847, 40.815044>,  <35.245750, 35.243099, 40.338020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563160, 34.916847, 40.815044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.719273, 35.284752, 40.831638>,  <35.812943, 35.505493, 40.841595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.719273, 35.284752, 40.831638>,  <35.563160, 34.916847, 40.815044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719273, 35.284752, 40.831638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131723, 0.011188, 0.991223,
		0.911223, -0.392324, 0.125520,
		0.390285, 0.919759, 0.041483,
		35.836357, 35.560680, 40.844082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963295, 34.885426, 41.313423>,  <35.563160, 34.916847, 40.815044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963295, 34.885426, 41.313423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893459, 35.275654, 41.260098>,  <35.851559, 35.509792, 41.228104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893459, 35.275654, 41.260098>,  <35.963295, 34.885426, 41.313423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893459, 35.275654, 41.260098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027097, 0.130580, 0.991067,
		0.984268, 0.176644, 0.003637,
		-0.174592, 0.975574, -0.133312,
		35.841084, 35.568325, 41.220104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401707, 35.230476, 41.739330>,  <35.963295, 34.885426, 41.313423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401707, 35.230476, 41.739330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.097660, 35.476341, 41.655025>,  <35.915234, 35.623859, 41.604443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.097660, 35.476341, 41.655025>,  <36.401707, 35.230476, 41.739330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097660, 35.476341, 41.655025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154880, 0.143623, 0.977438,
		0.631059, 0.775609, -0.013972,
		-0.760116, 0.614657, -0.210761,
		35.869625, 35.660740, 41.591797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404121, 35.864124, 42.126122>,  <36.401707, 35.230476, 41.739330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404121, 35.864124, 42.126122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024849, 35.803547, 42.014397>,  <35.797287, 35.767200, 41.947361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024849, 35.803547, 42.014397>,  <36.404121, 35.864124, 42.126122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024849, 35.803547, 42.014397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233349, -0.264718, 0.935667,
		-0.215638, 0.952360, 0.215662,
		-0.948182, -0.151440, -0.279315,
		35.740395, 35.758114, 41.930603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954704, 35.849785, 42.770576>,  <36.404121, 35.864124, 42.126122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954704, 35.849785, 42.770576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.664562, 35.736313, 42.519695>,  <35.490479, 35.668228, 42.369167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.664562, 35.736313, 42.519695>,  <35.954704, 35.849785, 42.770576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664562, 35.736313, 42.519695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413974, -0.548202, 0.726705,
		-0.549985, 0.786766, 0.280206,
		-0.725356, -0.283679, -0.627204,
		35.446957, 35.651211, 42.331535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365208, 36.092880, 43.062988>,  <35.954704, 35.849785, 42.770576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365208, 36.092880, 43.062988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.281441, 35.791496, 42.813686>,  <35.231182, 35.610668, 42.664104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.281441, 35.791496, 42.813686>,  <35.365208, 36.092880, 43.062988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281441, 35.791496, 42.813686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354294, -0.535611, 0.766549,
		-0.911384, 0.381343, -0.154780,
		-0.209416, -0.753458, -0.623254,
		35.218616, 35.565460, 42.626709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708683, 35.921230, 43.230625>,  <35.365208, 36.092880, 43.062988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708683, 35.921230, 43.230625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857071, 35.603672, 43.037914>,  <34.946102, 35.413136, 42.922287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857071, 35.603672, 43.037914>,  <34.708683, 35.921230, 43.230625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857071, 35.603672, 43.037914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405070, -0.605176, 0.685332,
		-0.835644, -0.059082, -0.546084,
		0.370968, -0.793896, -0.481779,
		34.968361, 35.365501, 42.893379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207161, 35.536961, 43.226196>,  <34.708683, 35.921230, 43.230625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207161, 35.536961, 43.226196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.516380, 35.292515, 43.158157>,  <34.701912, 35.145847, 43.117332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.516380, 35.292515, 43.158157>,  <34.207161, 35.536961, 43.226196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516380, 35.292515, 43.158157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342979, -0.628242, 0.698338,
		-0.533626, -0.481512, -0.695263,
		0.773052, -0.611112, -0.170098,
		34.748295, 35.109180, 43.107128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879265, 34.785576, 43.043385>,  <34.207161, 35.536961, 43.226196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879265, 34.785576, 43.043385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251255, 34.789547, 43.190380>,  <34.474449, 34.791927, 43.278576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251255, 34.789547, 43.190380>,  <33.879265, 34.785576, 43.043385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251255, 34.789547, 43.190380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284129, -0.614908, 0.735635,
		0.233271, -0.788536, -0.569029,
		0.929976, 0.009925, 0.367486,
		34.530247, 34.792526, 43.300625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118927, 34.064629, 43.163460>,  <33.879265, 34.785576, 43.043385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118927, 34.064629, 43.163460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.368641, 34.279396, 43.390434>,  <34.518471, 34.408257, 43.526619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.368641, 34.279396, 43.390434>,  <34.118927, 34.064629, 43.163460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368641, 34.279396, 43.390434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040091, -0.703387, 0.709675,
		0.780166, -0.465790, -0.417590,
		0.624287, 0.536923, 0.567433,
		34.555927, 34.440472, 43.560665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324535, 33.581841, 43.645081>,  <34.118927, 34.064629, 43.163460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324535, 33.581841, 43.645081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478210, 33.905991, 43.822025>,  <34.570415, 34.100483, 43.928192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478210, 33.905991, 43.822025>,  <34.324535, 33.581841, 43.645081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478210, 33.905991, 43.822025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010735, -0.475181, 0.879823,
		0.923192, -0.342767, -0.173861,
		0.384190, 0.810379, 0.442362,
		34.593468, 34.149105, 43.954735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966457, 33.307060, 43.928616>,  <34.324535, 33.581841, 43.645081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966457, 33.307060, 43.928616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814575, 33.617626, 44.129814>,  <34.723446, 33.803967, 44.250534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814575, 33.617626, 44.129814>,  <34.966457, 33.307060, 43.928616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814575, 33.617626, 44.129814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026305, -0.534439, 0.844798,
		0.924734, 0.334005, 0.182506,
		-0.379705, 0.776412, 0.503000,
		34.700665, 33.850552, 44.280716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319599, 33.341030, 44.636276>,  <34.966457, 33.307060, 43.928616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319599, 33.341030, 44.636276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990608, 33.565590, 44.672878>,  <34.793213, 33.700325, 44.694839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990608, 33.565590, 44.672878>,  <35.319599, 33.341030, 44.636276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990608, 33.565590, 44.672878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152254, -0.372291, 0.915543,
		0.548048, 0.739077, 0.391674,
		-0.822473, 0.561396, 0.091506,
		34.743866, 33.734009, 44.700329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777386, 33.869747, 44.833820>,  <35.319599, 33.341030, 44.636276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777386, 33.869747, 44.833820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144009, 33.786602, 44.970478>,  <36.363983, 33.736713, 45.052471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144009, 33.786602, 44.970478>,  <35.777386, 33.869747, 44.833820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144009, 33.786602, 44.970478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347541, -0.008634, -0.937625,
		0.197851, 0.978119, 0.064329,
		0.916553, -0.207867, 0.341645,
		36.418976, 33.724243, 45.072971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263107, 34.403465, 44.657997>,  <35.777386, 33.869747, 44.833820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263107, 34.403465, 44.657997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448624, 34.050747, 44.692245>,  <36.559933, 33.839115, 44.712795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448624, 34.050747, 44.692245>,  <36.263107, 34.403465, 44.657997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448624, 34.050747, 44.692245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399710, 0.122016, -0.908485,
		0.790654, 0.455567, 0.409053,
		0.463786, -0.881800, 0.085622,
		36.587761, 33.786205, 44.717934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967434, 34.608280, 44.473682>,  <36.263107, 34.403465, 44.657997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967434, 34.608280, 44.473682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960888, 34.211311, 44.424980>,  <36.956959, 33.973129, 44.395760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960888, 34.211311, 44.424980>,  <36.967434, 34.608280, 44.473682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960888, 34.211311, 44.424980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695035, 0.076251, -0.714921,
		0.718789, -0.096329, 0.688522,
		-0.016367, -0.992425, -0.121760,
		36.955978, 33.913586, 44.388451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561100, 34.466133, 44.199005>,  <36.967434, 34.608280, 44.473682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561100, 34.466133, 44.199005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.405403, 34.098042, 44.182652>,  <37.311985, 33.877186, 44.172840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.405403, 34.098042, 44.182652>,  <37.561100, 34.466133, 44.199005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405403, 34.098042, 44.182652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705842, -0.269455, -0.655119,
		0.591844, -0.283854, 0.754419,
		-0.389240, -0.920229, -0.040881,
		37.288631, 33.821972, 44.170387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108356, 33.862404, 44.276390>,  <37.561100, 34.466133, 44.199005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108356, 33.862404, 44.276390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801807, 33.723709, 44.060078>,  <37.617878, 33.640491, 43.930290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801807, 33.723709, 44.060078>,  <38.108356, 33.862404, 44.276390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801807, 33.723709, 44.060078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617891, -0.167565, -0.768201,
		0.175751, -0.922872, 0.342665,
		-0.766370, -0.346742, -0.540784,
		37.571896, 33.619686, 43.897842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401260, 33.345604, 43.885117>,  <38.108356, 33.862404, 44.276390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401260, 33.345604, 43.885117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.066479, 33.447666, 43.691456>,  <37.865612, 33.508904, 43.575260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.066479, 33.447666, 43.691456>,  <38.401260, 33.345604, 43.885117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066479, 33.447666, 43.691456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522246, 0.107881, -0.845944,
		-0.163616, -0.960863, -0.223545,
		-0.836953, 0.255156, -0.484156,
		37.815392, 33.524212, 43.546207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378502, 32.981037, 43.194824>,  <38.401260, 33.345604, 43.885117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378502, 32.981037, 43.194824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.139256, 33.299843, 43.161278>,  <37.995708, 33.491127, 43.141151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.139256, 33.299843, 43.161278>,  <38.378502, 32.981037, 43.194824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139256, 33.299843, 43.161278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455905, 0.252323, -0.853512,
		-0.659099, -0.548731, -0.514279,
		-0.598113, 0.797011, -0.083864,
		37.959820, 33.538948, 43.136120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111816, 32.998707, 42.568657>,  <38.378502, 32.981037, 43.194824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111816, 32.998707, 42.568657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091400, 33.383404, 42.676319>,  <38.079151, 33.614223, 42.740917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.091400, 33.383404, 42.676319>,  <38.111816, 32.998707, 42.568657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091400, 33.383404, 42.676319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380209, 0.267925, -0.885244,
		-0.923491, 0.057153, -0.379338,
		-0.051040, 0.961743, 0.269156,
		38.076088, 33.671928, 42.757065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809204, 33.391270, 41.983261>,  <38.111816, 32.998707, 42.568657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809204, 33.391270, 41.983261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.992901, 33.665035, 42.209774>,  <38.103119, 33.829296, 42.345680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.992901, 33.665035, 42.209774>,  <37.809204, 33.391270, 41.983261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992901, 33.665035, 42.209774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313622, 0.471505, -0.824211,
		-0.831109, 0.556106, 0.001885,
		0.459238, 0.684419, 0.566279,
		38.130672, 33.870361, 42.379658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635548, 34.000488, 41.568527>,  <37.809204, 33.391270, 41.983261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635548, 34.000488, 41.568527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933228, 34.092930, 41.819210>,  <38.111835, 34.148396, 41.969620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933228, 34.092930, 41.819210>,  <37.635548, 34.000488, 41.568527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933228, 34.092930, 41.819210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362752, 0.647988, -0.669718,
		-0.560872, 0.725742, 0.398399,
		0.744200, 0.231106, 0.626703,
		38.156487, 34.162262, 42.007221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488163, 34.657906, 41.692280>,  <37.635548, 34.000488, 41.568527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488163, 34.657906, 41.692280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.872982, 34.558479, 41.737328>,  <38.103874, 34.498825, 41.764355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.872982, 34.558479, 41.737328>,  <37.488163, 34.657906, 41.692280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872982, 34.558479, 41.737328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250409, 0.640103, -0.726335,
		0.108454, 0.726969, 0.678052,
		0.962046, -0.248564, 0.112617,
		38.161594, 34.483910, 41.771114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858524, 35.213055, 41.444016>,  <37.488163, 34.657906, 41.692280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858524, 35.213055, 41.444016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161888, 34.956188, 41.488628>,  <38.343906, 34.802067, 41.515396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161888, 34.956188, 41.488628>,  <37.858524, 35.213055, 41.444016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161888, 34.956188, 41.488628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503001, 0.467828, -0.726723,
		0.414500, 0.607253, 0.677815,
		0.758406, -0.642169, 0.111534,
		38.389408, 34.763538, 41.522087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349854, 35.671257, 41.406662>,  <37.858524, 35.213055, 41.444016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349854, 35.671257, 41.406662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.500195, 35.305122, 41.348858>,  <38.590401, 35.085442, 41.314175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.500195, 35.305122, 41.348858>,  <38.349854, 35.671257, 41.406662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500195, 35.305122, 41.348858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492084, 0.329287, -0.805868,
		0.785230, 0.231779, 0.574189,
		0.375856, -0.915341, -0.144511,
		38.612953, 35.030521, 41.305504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026073, 35.827614, 41.412170>,  <38.349854, 35.671257, 41.406662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026073, 35.827614, 41.412170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.953995, 35.496174, 41.200150>,  <38.910748, 35.297310, 41.072937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.953995, 35.496174, 41.200150>,  <39.026073, 35.827614, 41.412170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953995, 35.496174, 41.200150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419166, 0.422808, -0.803451,
		0.889847, -0.366959, 0.271132,
		-0.180197, -0.828598, -0.530051,
		38.899937, 35.247593, 41.041134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.569443, 28.610956, 38.278191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419355, 28.558249, 38.645199>,  <30.329304, 28.526623, 38.865406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419355, 28.558249, 38.645199>,  <30.569443, 28.610956, 38.278191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419355, 28.558249, 38.645199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682987, 0.708524, -0.177548,
		-0.626691, -0.693275, -0.355848,
		-0.375216, -0.131771, 0.917523,
		30.306791, 28.518717, 38.920456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918396, 28.650612, 38.151909>,  <30.569443, 28.610956, 38.278191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918396, 28.650612, 38.151909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884329, 28.688522, 38.548649>,  <29.863890, 28.711269, 38.786694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884329, 28.688522, 38.548649>,  <29.918396, 28.650612, 38.151909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884329, 28.688522, 38.548649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738532, 0.662208, -0.126693,
		-0.668818, -0.743302, 0.013598,
		-0.085166, 0.094777, 0.991849,
		29.858780, 28.716955, 38.846203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229088, 28.577002, 38.406265>,  <29.918396, 28.650612, 38.151909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229088, 28.577002, 38.406265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387348, 28.808838, 38.691231>,  <29.482304, 28.947939, 38.862209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387348, 28.808838, 38.691231>,  <29.229088, 28.577002, 38.406265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387348, 28.808838, 38.691231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738913, 0.661560, -0.127849,
		-0.545406, -0.475829, 0.690014,
		0.395652, 0.579591, 0.712415,
		29.506044, 28.982716, 38.904957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675278, 28.763275, 38.707802>,  <29.229088, 28.577002, 38.406265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675278, 28.763275, 38.707802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.963099, 29.010738, 38.833981>,  <29.135792, 29.159216, 38.909687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.963099, 29.010738, 38.833981>,  <28.675278, 28.763275, 38.707802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963099, 29.010738, 38.833981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627471, 0.773836, -0.086357,
		-0.297529, -0.135795, 0.945006,
		0.719552, 0.618658, 0.315446,
		29.178965, 29.196335, 38.928616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360531, 29.260490, 39.267414>,  <28.675278, 28.763275, 38.707802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360531, 29.260490, 39.267414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.682276, 29.444719, 39.117279>,  <28.875322, 29.555256, 39.027199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.682276, 29.444719, 39.117279>,  <28.360531, 29.260490, 39.267414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682276, 29.444719, 39.117279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576591, 0.757523, -0.306107,
		0.143342, 0.462636, 0.874883,
		0.804361, 0.460572, -0.375336,
		28.923584, 29.582891, 39.004677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284918, 29.999224, 39.450771>,  <28.360531, 29.260490, 39.267414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284918, 29.999224, 39.450771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570793, 30.006140, 39.171082>,  <28.742319, 30.010288, 39.003265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570793, 30.006140, 39.171082>,  <28.284918, 29.999224, 39.450771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570793, 30.006140, 39.171082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170747, 0.973761, -0.150447,
		0.678280, 0.226914, 0.698890,
		0.714690, 0.017288, -0.699228,
		28.785200, 30.011326, 38.961311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597311, 30.652952, 39.496593>,  <28.284918, 29.999224, 39.450771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597311, 30.652952, 39.496593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668795, 30.515083, 39.127972>,  <28.711685, 30.432362, 38.906799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668795, 30.515083, 39.127972>,  <28.597311, 30.652952, 39.496593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668795, 30.515083, 39.127972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242297, 0.892371, -0.380744,
		0.953601, 0.291332, 0.075962,
		0.178709, -0.344673, -0.921555,
		28.722406, 30.411682, 38.851505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696947, 31.302870, 39.077648>,  <28.597311, 30.652952, 39.496593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696947, 31.302870, 39.077648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626413, 31.022522, 38.801189>,  <28.584093, 30.854313, 38.635315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626413, 31.022522, 38.801189>,  <28.696947, 31.302870, 39.077648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626413, 31.022522, 38.801189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492777, 0.670686, -0.554393,
		0.852101, 0.242824, -0.463638,
		-0.176335, -0.700869, -0.691151,
		28.573513, 30.812262, 38.593845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720005, 31.696678, 38.473721>,  <28.696947, 31.302870, 39.077648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720005, 31.696678, 38.473721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522469, 31.361029, 38.382511>,  <28.403946, 31.159639, 38.327785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522469, 31.361029, 38.382511>,  <28.720005, 31.696678, 38.473721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522469, 31.361029, 38.382511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518004, 0.494515, -0.697945,
		0.698421, -0.226558, -0.678881,
		-0.493842, -0.839122, -0.228022,
		28.374315, 31.109291, 38.314106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661034, 31.713259, 37.742191>,  <28.720005, 31.696678, 38.473721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661034, 31.713259, 37.742191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373720, 31.456236, 37.848915>,  <28.201332, 31.302021, 37.912949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373720, 31.456236, 37.848915>,  <28.661034, 31.713259, 37.742191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373720, 31.456236, 37.848915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633265, 0.444949, -0.633242,
		0.288176, -0.623810, -0.726509,
		-0.718283, -0.642558, 0.266813,
		28.158236, 31.263468, 37.928959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347914, 31.406637, 37.194920>,  <28.661034, 31.713259, 37.742191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347914, 31.406637, 37.194920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055349, 31.335110, 37.458149>,  <27.879810, 31.292192, 37.616085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055349, 31.335110, 37.458149>,  <28.347914, 31.406637, 37.194920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055349, 31.335110, 37.458149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672125, 0.352133, -0.651345,
		-0.115258, -0.918709, -0.377742,
		-0.731412, -0.178817, 0.658074,
		27.835926, 31.281464, 37.655571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860437, 31.122389, 36.771603>,  <28.347914, 31.406637, 37.194920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860437, 31.122389, 36.771603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661934, 31.255215, 37.092464>,  <27.542831, 31.334911, 37.284981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661934, 31.255215, 37.092464>,  <27.860437, 31.122389, 36.771603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661934, 31.255215, 37.092464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727683, 0.344828, -0.592934,
		-0.473500, -0.877967, 0.070515,
		-0.496261, 0.332067, 0.802158,
		27.513056, 31.354836, 37.333111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250311, 30.823683, 36.773655>,  <27.860437, 31.122389, 36.771603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250311, 30.823683, 36.773655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195356, 31.153172, 36.993694>,  <27.162384, 31.350864, 37.125717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195356, 31.153172, 36.993694>,  <27.250311, 30.823683, 36.773655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195356, 31.153172, 36.993694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786475, 0.246899, -0.566125,
		-0.602148, -0.510416, 0.613916,
		-0.137384, 0.823721, 0.550099,
		27.154140, 31.400288, 37.158726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530743, 30.904289, 36.706055>,  <27.250311, 30.823683, 36.773655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530743, 30.904289, 36.706055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640770, 31.264200, 36.841545>,  <26.706785, 31.480146, 36.922840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640770, 31.264200, 36.841545>,  <26.530743, 30.904289, 36.706055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640770, 31.264200, 36.841545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597626, 0.436002, -0.672863,
		-0.753115, -0.017352, 0.657660,
		0.275066, 0.899778, 0.338730,
		26.723289, 31.534134, 36.943165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893414, 31.283016, 36.993622>,  <26.530743, 30.904289, 36.706055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893414, 31.283016, 36.993622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161118, 31.557171, 36.878841>,  <26.321739, 31.721664, 36.809975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161118, 31.557171, 36.878841>,  <25.893414, 31.283016, 36.993622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161118, 31.557171, 36.878841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721926, 0.508414, -0.469402,
		-0.175833, 0.521307, 0.835058,
		0.669258, 0.685386, -0.286949,
		26.361895, 31.762787, 36.792755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558037, 31.963711, 37.047020>,  <25.893414, 31.283016, 36.993622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558037, 31.963711, 37.047020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.853540, 32.079823, 36.803719>,  <26.030844, 32.149490, 36.657738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.853540, 32.079823, 36.803719>,  <25.558037, 31.963711, 37.047020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853540, 32.079823, 36.803719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653677, 0.528388, -0.541768,
		0.164130, 0.797838, 0.580100,
		0.738761, 0.290278, -0.608252,
		26.075169, 32.166904, 36.621243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376654, 32.628181, 36.907261>,  <25.558037, 31.963711, 37.047020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376654, 32.628181, 36.907261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.643383, 32.553688, 36.618633>,  <25.803421, 32.508991, 36.445457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.643383, 32.553688, 36.618633>,  <25.376654, 32.628181, 36.907261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643383, 32.553688, 36.618633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486532, 0.624635, -0.610834,
		0.564474, 0.758386, 0.325914,
		0.666826, -0.186232, -0.721569,
		25.843431, 32.497818, 36.402164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819500, 33.321995, 36.673130>,  <25.376654, 32.628181, 36.907261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819500, 33.321995, 36.673130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810265, 33.054398, 36.375969>,  <25.804724, 32.893837, 36.197670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810265, 33.054398, 36.375969>,  <25.819500, 33.321995, 36.673130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810265, 33.054398, 36.375969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565361, 0.621605, -0.542194,
		0.824520, 0.407494, -0.392575,
		-0.023086, -0.668997, -0.742907,
		25.803339, 32.853699, 36.153095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933563, 33.710220, 36.117416>,  <25.819500, 33.321995, 36.673130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933563, 33.710220, 36.117416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.776657, 33.385246, 35.944870>,  <25.682514, 33.190262, 35.841343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.776657, 33.385246, 35.944870>,  <25.933563, 33.710220, 36.117416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776657, 33.385246, 35.944870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502717, 0.582067, -0.639118,
		0.770327, -0.033847, -0.636750,
		-0.392263, -0.812435, -0.431367,
		25.658978, 33.141514, 35.815460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098955, 33.768108, 35.488255>,  <25.933563, 33.710220, 36.117416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098955, 33.768108, 35.488255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.765652, 33.547081, 35.495712>,  <25.565670, 33.414467, 35.500187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.765652, 33.547081, 35.495712>,  <26.098955, 33.768108, 35.488255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765652, 33.547081, 35.495712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430083, 0.626626, -0.649899,
		0.347427, -0.549555, -0.759791,
		-0.833261, -0.552566, 0.018647,
		25.515673, 33.381310, 35.501305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790426, 33.481602, 35.273235>,  <26.098955, 33.768108, 35.488255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790426, 33.481602, 35.273235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.157764, 33.627693, 35.212242>,  <27.378168, 33.715347, 35.175644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.157764, 33.627693, 35.212242>,  <26.790426, 33.481602, 35.273235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157764, 33.627693, 35.212242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392469, -0.890085, 0.231767,
		-0.051078, -0.272688, -0.960746,
		0.918346, 0.365225, -0.152486,
		27.433268, 33.737259, 35.166496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177082, 32.883198, 35.091454>,  <26.790426, 33.481602, 35.273235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177082, 32.883198, 35.091454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450930, 33.152424, 35.203365>,  <27.615238, 33.313961, 35.270512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450930, 33.152424, 35.203365>,  <27.177082, 32.883198, 35.091454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450930, 33.152424, 35.203365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588464, -0.736882, 0.332739,
		0.430122, -0.063157, -0.900559,
		0.684621, 0.673064, 0.279784,
		27.656317, 33.354343, 35.287300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769873, 32.579384, 34.756016>,  <27.177082, 32.883198, 35.091454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769873, 32.579384, 34.756016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913918, 32.829117, 35.033295>,  <28.000345, 32.978958, 35.199661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.913918, 32.829117, 35.033295>,  <27.769873, 32.579384, 34.756016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913918, 32.829117, 35.033295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580092, -0.731791, 0.357737,
		0.730624, 0.273294, -0.625699,
		0.360113, 0.624334, 0.693200,
		28.021952, 33.016418, 35.241253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389381, 32.585388, 34.602478>,  <27.769873, 32.579384, 34.756016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389381, 32.585388, 34.602478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.380344, 32.705685, 34.983852>,  <28.374922, 32.777863, 35.212677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.380344, 32.705685, 34.983852>,  <28.389381, 32.585388, 34.602478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380344, 32.705685, 34.983852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770285, -0.602700, 0.208359,
		0.637299, 0.739127, -0.218038,
		-0.022592, 0.300739, 0.953439,
		28.373568, 32.795906, 35.269882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054371, 32.725517, 34.849716>,  <28.389381, 32.585388, 34.602478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054371, 32.725517, 34.849716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865499, 32.652367, 35.194645>,  <28.752176, 32.608475, 35.401604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865499, 32.652367, 35.194645>,  <29.054371, 32.725517, 34.849716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865499, 32.652367, 35.194645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765096, -0.570878, 0.297869,
		0.437807, 0.800408, 0.409478,
		-0.472179, -0.182881, 0.862323,
		28.723846, 32.597504, 35.453342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542421, 32.701561, 35.416931>,  <29.054371, 32.725517, 34.849716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542421, 32.701561, 35.416931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242870, 32.517166, 35.607372>,  <29.063139, 32.406528, 35.721638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242870, 32.517166, 35.607372>,  <29.542421, 32.701561, 35.416931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242870, 32.517166, 35.607372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654108, -0.629526, 0.419332,
		0.106414, 0.625451, 0.772973,
		-0.748878, -0.460985, 0.476103,
		29.018208, 32.378872, 35.750202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724012, 32.653057, 36.154251>,  <29.542421, 32.701561, 35.416931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724012, 32.653057, 36.154251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425575, 32.388977, 36.119667>,  <29.246513, 32.230530, 36.098919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425575, 32.388977, 36.119667>,  <29.724012, 32.653057, 36.154251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425575, 32.388977, 36.119667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578419, -0.706964, 0.406980,
		-0.329812, 0.253637, 0.909336,
		-0.746094, -0.660204, -0.086456,
		29.201748, 32.190914, 36.093731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641405, 32.463383, 36.767277>,  <29.724012, 32.653057, 36.154251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641405, 32.463383, 36.767277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527267, 32.176037, 36.513496>,  <29.458784, 32.003628, 36.361229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527267, 32.176037, 36.513496>,  <29.641405, 32.463383, 36.767277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527267, 32.176037, 36.513496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762871, -0.570956, 0.303375,
		-0.580177, -0.397435, 0.710943,
		-0.285346, -0.718369, -0.634448,
		29.441664, 31.960526, 36.323162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961111, 31.853188, 37.045845>,  <29.641405, 32.463383, 36.767277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961111, 31.853188, 37.045845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.827095, 31.702179, 36.700539>,  <29.746685, 31.611574, 36.493355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.827095, 31.702179, 36.700539>,  <29.961111, 31.853188, 37.045845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827095, 31.702179, 36.700539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542579, -0.826358, 0.150803,
		-0.770297, -0.417864, 0.481697,
		-0.335039, -0.377521, -0.863265,
		29.726583, 31.588923, 36.441559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684135, 31.064648, 37.147232>,  <29.961111, 31.853188, 37.045845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684135, 31.064648, 37.147232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770205, 31.104284, 36.758617>,  <29.821846, 31.128065, 36.525448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770205, 31.104284, 36.758617>,  <29.684135, 31.064648, 37.147232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770205, 31.104284, 36.758617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505441, -0.862528, 0.023972,
		-0.835602, -0.496212, -0.235677,
		0.215174, 0.099089, -0.971536,
		29.834757, 31.134010, 36.467155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551355, 30.435741, 36.830502>,  <29.684135, 31.064648, 37.147232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551355, 30.435741, 36.830502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.809965, 30.600439, 36.573605>,  <29.965130, 30.699257, 36.419468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.809965, 30.600439, 36.573605>,  <29.551355, 30.435741, 36.830502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809965, 30.600439, 36.573605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519206, -0.854283, -0.025015,
		-0.558956, -0.317283, -0.766093,
		0.646524, 0.411743, -0.642242,
		30.003922, 30.723963, 36.380932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548212, 30.086800, 36.175453>,  <29.551355, 30.435741, 36.830502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548212, 30.086800, 36.175453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907125, 30.259148, 36.213898>,  <30.122473, 30.362556, 36.236965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907125, 30.259148, 36.213898>,  <29.548212, 30.086800, 36.175453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907125, 30.259148, 36.213898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435104, -0.899959, -0.027538,
		0.074631, 0.066528, -0.994990,
		0.897282, 0.430869, 0.096112,
		30.176310, 30.388409, 36.242733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955261, 29.798620, 35.502323>,  <29.548212, 30.086800, 36.175453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955261, 29.798620, 35.502323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195402, 29.909956, 35.802216>,  <30.339487, 29.976757, 35.982151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195402, 29.909956, 35.802216>,  <29.955261, 29.798620, 35.502323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195402, 29.909956, 35.802216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487269, -0.870682, -0.066942,
		0.634147, 0.405511, -0.658345,
		0.600355, 0.278340, 0.749734,
		30.375509, 29.993458, 36.027134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737555, 29.525564, 35.396305>,  <29.955261, 29.798620, 35.502323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737555, 29.525564, 35.396305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.813154, 29.662853, 35.764320>,  <30.858515, 29.745226, 35.985130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.813154, 29.662853, 35.764320>,  <30.737555, 29.525564, 35.396305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813154, 29.662853, 35.764320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803791, -0.592286, 0.055834,
		0.564092, 0.728969, -0.387821,
		0.188999, 0.343223, 0.920042,
		30.869854, 29.765820, 36.040333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430151, 29.683071, 35.466270>,  <30.737555, 29.525564, 35.396305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430151, 29.683071, 35.466270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.364130, 29.644775, 35.858921>,  <31.324516, 29.621798, 36.094513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.364130, 29.644775, 35.858921>,  <31.430151, 29.683071, 35.466270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364130, 29.644775, 35.858921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752506, -0.655605, 0.062586,
		0.637568, 0.749009, 0.180256,
		-0.165054, -0.095741, 0.981627,
		31.314613, 29.616053, 36.153408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085007, 29.778109, 35.851059>,  <31.430151, 29.683071, 35.466270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085007, 29.778109, 35.851059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.854860, 29.582291, 36.113140>,  <31.716772, 29.464800, 36.270390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.854860, 29.582291, 36.113140>,  <32.085007, 29.778109, 35.851059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854860, 29.582291, 36.113140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751716, -0.632192, 0.187768,
		0.322295, 0.600564, 0.731743,
		-0.575369, -0.489546, 0.655206,
		31.682249, 29.435427, 36.309704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454884, 29.633810, 36.510056>,  <32.085007, 29.778109, 35.851059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454884, 29.633810, 36.510056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.185818, 29.338915, 36.484737>,  <32.024380, 29.161978, 36.469547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.185818, 29.338915, 36.484737>,  <32.454884, 29.633810, 36.510056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185818, 29.338915, 36.484737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662689, -0.638271, 0.391732,
		-0.329198, 0.221559, 0.917900,
		-0.672661, -0.737239, -0.063293,
		31.984020, 29.117743, 36.465748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350739, 29.330708, 37.317390>,  <32.454884, 29.633810, 36.510056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350739, 29.330708, 37.317390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.226299, 29.084770, 37.027512>,  <32.151634, 28.937208, 36.853584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.226299, 29.084770, 37.027512>,  <32.350739, 29.330708, 37.317390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226299, 29.084770, 37.027512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591672, -0.722037, 0.358590,
		-0.743733, -0.317225, 0.588413,
		-0.311102, -0.614843, -0.724696,
		32.132969, 28.900318, 36.810104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269062, 28.673016, 37.641590>,  <32.350739, 29.330708, 37.317390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269062, 28.673016, 37.641590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.281376, 28.561758, 37.257572>,  <32.288765, 28.495005, 37.027161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.281376, 28.561758, 37.257572>,  <32.269062, 28.673016, 37.641590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281376, 28.561758, 37.257572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572783, -0.782238, 0.244997,
		-0.819128, -0.557442, 0.135231,
		0.030788, -0.278142, -0.960046,
		32.290611, 28.478315, 36.969559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940910, 28.063223, 37.550934>,  <32.269062, 28.673016, 37.641590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940910, 28.063223, 37.550934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.202484, 28.082033, 37.248898>,  <32.359428, 28.093319, 37.067677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.202484, 28.082033, 37.248898>,  <31.940910, 28.063223, 37.550934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202484, 28.082033, 37.248898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480900, -0.796323, 0.366886,
		-0.584040, -0.603041, -0.543359,
		0.653937, 0.047025, -0.755087,
		32.398666, 28.096140, 37.022373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060986, 27.367243, 37.405357>,  <31.940910, 28.063223, 37.550934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060986, 27.367243, 37.405357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.362137, 27.547209, 37.213215>,  <32.542828, 27.655190, 37.097927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.362137, 27.547209, 37.213215>,  <32.060986, 27.367243, 37.405357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362137, 27.547209, 37.213215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596515, -0.774865, 0.209176,
		-0.278103, -0.444026, -0.851763,
		0.752881, 0.449917, -0.480360,
		32.588001, 27.682184, 37.069107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232502, 26.975037, 36.899391>,  <32.060986, 27.367243, 37.405357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232502, 26.975037, 36.899391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577293, 27.177256, 36.914413>,  <32.784168, 27.298586, 36.923428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577293, 27.177256, 36.914413>,  <32.232502, 26.975037, 36.899391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577293, 27.177256, 36.914413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490424, -0.850365, 0.190694,
		0.128342, -0.145955, -0.980931,
		0.861982, 0.505546, 0.037558,
		32.835888, 27.328918, 36.925682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.530239, 30.646809, 46.175907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166187, 30.487282, 46.130985>,  <37.947758, 30.391565, 46.104034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166187, 30.487282, 46.130985>,  <38.530239, 30.646809, 46.175907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166187, 30.487282, 46.130985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267403, 0.358364, 0.894467,
		-0.316485, 0.844108, -0.432803,
		-0.910128, -0.398818, -0.112300,
		37.893150, 30.367636, 46.097294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948277, 31.252432, 46.319695>,  <38.530239, 30.646809, 46.175907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948277, 31.252432, 46.319695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801556, 30.882059, 46.355701>,  <37.713524, 30.659836, 46.377304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801556, 30.882059, 46.355701>,  <37.948277, 31.252432, 46.319695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801556, 30.882059, 46.355701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338297, 0.222894, 0.914261,
		-0.866609, 0.304901, -0.394999,
		-0.366802, -0.925934, 0.090014,
		37.691517, 30.604279, 46.382706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387184, 31.420099, 46.797722>,  <37.948277, 31.252432, 46.319695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387184, 31.420099, 46.797722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395466, 31.020319, 46.787407>,  <37.400436, 30.780451, 46.781216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395466, 31.020319, 46.787407>,  <37.387184, 31.420099, 46.797722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395466, 31.020319, 46.787407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326118, -0.031137, 0.944816,
		-0.945102, -0.011152, -0.326584,
		0.020705, -0.999453, -0.025791,
		37.401676, 30.720484, 46.779671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788757, 31.251240, 47.087181>,  <37.387184, 31.420099, 46.797722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788757, 31.251240, 47.087181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030266, 30.935322, 47.130424>,  <37.175171, 30.745771, 47.156372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030266, 30.935322, 47.130424>,  <36.788757, 31.251240, 47.087181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030266, 30.935322, 47.130424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154565, 0.017060, 0.987835,
		-0.782033, -0.613132, -0.111774,
		0.603767, -0.789796, 0.108111,
		37.211395, 30.698383, 47.162857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432674, 30.815395, 47.579983>,  <36.788757, 31.251240, 47.087181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432674, 30.815395, 47.579983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805725, 30.671057, 47.580574>,  <37.029556, 30.584454, 47.580929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805725, 30.671057, 47.580574>,  <36.432674, 30.815395, 47.579983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805725, 30.671057, 47.580574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113604, -0.289715, 0.950347,
		-0.342501, -0.886485, -0.311189,
		0.932624, -0.360847, 0.001480,
		37.085514, 30.562803, 47.581017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435848, 30.099125, 47.803596>,  <36.432674, 30.815395, 47.579983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435848, 30.099125, 47.803596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819607, 30.200066, 47.854000>,  <37.049862, 30.260630, 47.884243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819607, 30.200066, 47.854000>,  <36.435848, 30.099125, 47.803596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819607, 30.200066, 47.854000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077583, -0.193411, 0.978045,
		0.271185, -0.948108, -0.165980,
		0.959395, 0.252354, 0.126007,
		37.107426, 30.275772, 47.891804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748260, 29.512732, 48.095272>,  <36.435848, 30.099125, 47.803596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748260, 29.512732, 48.095272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961956, 29.837654, 48.188866>,  <37.090172, 30.032608, 48.245022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961956, 29.837654, 48.188866>,  <36.748260, 29.512732, 48.095272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961956, 29.837654, 48.188866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005508, -0.273446, 0.961872,
		0.845316, -0.515156, -0.141611,
		0.534237, 0.812306, 0.233986,
		37.122227, 30.081347, 48.259060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208012, 29.243166, 48.588612>,  <36.748260, 29.512732, 48.095272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208012, 29.243166, 48.588612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248749, 29.639229, 48.627007>,  <37.273190, 29.876867, 48.650043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248749, 29.639229, 48.627007>,  <37.208012, 29.243166, 48.588612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248749, 29.639229, 48.627007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290676, -0.121897, 0.949025,
		0.951386, -0.068751, -0.300229,
		0.101843, 0.990159, 0.095987,
		37.279301, 29.936277, 48.655804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914261, 29.330961, 48.841148>,  <37.208012, 29.243166, 48.588612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914261, 29.330961, 48.841148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689579, 29.645935, 48.942688>,  <37.554771, 29.834919, 49.003613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689579, 29.645935, 48.942688>,  <37.914261, 29.330961, 48.841148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689579, 29.645935, 48.942688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218388, -0.154820, 0.963503,
		0.797994, 0.596641, -0.085002,
		-0.561705, 0.787433, 0.253845,
		37.521069, 29.882164, 49.018841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225349, 29.688532, 49.411167>,  <37.914261, 29.330961, 48.841148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225349, 29.688532, 49.411167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843391, 29.805740, 49.430378>,  <37.614216, 29.876064, 49.441906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843391, 29.805740, 49.430378>,  <38.225349, 29.688532, 49.411167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843391, 29.805740, 49.430378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038603, -0.037873, 0.998537,
		0.294410, 0.955356, 0.024854,
		-0.954899, 0.293020, 0.048030,
		37.556923, 29.893646, 49.444786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194592, 30.285015, 49.817116>,  <38.225349, 29.688532, 49.411167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194592, 30.285015, 49.817116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825970, 30.129776, 49.821590>,  <37.604797, 30.036633, 49.824276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825970, 30.129776, 49.821590>,  <38.194592, 30.285015, 49.817116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825970, 30.129776, 49.821590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026809, -0.034871, 0.999032,
		-0.387331, 0.920959, 0.042539,
		-0.921551, -0.388097, 0.011183,
		37.549503, 30.013348, 49.824944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835808, 30.619980, 50.344017>,  <38.194592, 30.285015, 49.817116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835808, 30.619980, 50.344017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.607826, 30.295570, 50.291252>,  <37.471039, 30.100925, 50.259594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.607826, 30.295570, 50.291252>,  <37.835808, 30.619980, 50.344017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607826, 30.295570, 50.291252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023777, -0.144193, 0.989264,
		-0.821335, 0.566967, 0.062899,
		-0.569950, -0.811022, -0.131911,
		37.436840, 30.052263, 50.251678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320190, 30.512842, 50.879871>,  <37.835808, 30.619980, 50.344017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320190, 30.512842, 50.879871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400375, 30.148777, 50.734863>,  <37.448486, 29.930338, 50.647858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400375, 30.148777, 50.734863>,  <37.320190, 30.512842, 50.879871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400375, 30.148777, 50.734863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045115, -0.378217, 0.924617,
		-0.978662, -0.168994, -0.116880,
		0.200461, -0.910161, -0.362522,
		37.460514, 29.875729, 50.626106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834698, 31.010622, 50.653500>,  <37.320190, 30.512842, 50.879871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834698, 31.010622, 50.653500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735687, 30.905251, 51.026451>,  <36.676281, 30.842028, 51.250221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735687, 30.905251, 51.026451>,  <36.834698, 31.010622, 50.653500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735687, 30.905251, 51.026451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450983, -0.883049, -0.129764,
		0.857522, 0.388368, 0.337380,
		-0.247526, -0.263429, 0.932382,
		36.661430, 30.826221, 51.306168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915161, 31.771944, 50.602207>,  <36.834698, 31.010622, 50.653500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915161, 31.771944, 50.602207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662033, 32.079838, 50.635773>,  <36.510155, 32.264576, 50.655914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662033, 32.079838, 50.635773>,  <36.915161, 31.771944, 50.602207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662033, 32.079838, 50.635773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062817, 0.056986, -0.996397,
		-0.771745, -0.635814, 0.012290,
		-0.632822, 0.769736, 0.083918,
		36.472187, 32.310760, 50.660950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301392, 31.619362, 50.170555>,  <36.915161, 31.771944, 50.602207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301392, 31.619362, 50.170555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305183, 32.014523, 50.232471>,  <36.307457, 32.251617, 50.269623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305183, 32.014523, 50.232471>,  <36.301392, 31.619362, 50.170555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305183, 32.014523, 50.232471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189928, 0.153761, -0.969683,
		-0.981752, -0.020209, 0.189088,
		0.009478, 0.987901, 0.154794,
		36.308025, 32.310894, 50.278908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753551, 31.885250, 49.790169>,  <36.301392, 31.619362, 50.170555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753551, 31.885250, 49.790169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987896, 32.202278, 49.857819>,  <36.128502, 32.392494, 49.898411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987896, 32.202278, 49.857819>,  <35.753551, 31.885250, 49.790169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987896, 32.202278, 49.857819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082799, 0.266140, -0.960372,
		-0.806174, 0.548637, 0.221544,
		0.585857, 0.792570, 0.169128,
		36.163654, 32.440048, 49.908558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450928, 32.404789, 49.432384>,  <35.753551, 31.885250, 49.790169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450928, 32.404789, 49.432384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831345, 32.513100, 49.491993>,  <36.059593, 32.578087, 49.527756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.831345, 32.513100, 49.491993>,  <35.450928, 32.404789, 49.432384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831345, 32.513100, 49.491993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027928, 0.404882, -0.913942,
		-0.307809, 0.873356, 0.377496,
		0.951038, 0.270777, 0.149018,
		36.116657, 32.594334, 49.536697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460701, 33.119770, 49.242580>,  <35.450928, 32.404789, 49.432384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460701, 33.119770, 49.242580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846596, 33.014778, 49.250477>,  <36.078133, 32.951782, 49.255215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846596, 33.014778, 49.250477>,  <35.460701, 33.119770, 49.242580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846596, 33.014778, 49.250477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151732, 0.493271, -0.856540,
		0.215087, 0.829330, 0.515703,
		0.964736, -0.262479, 0.019739,
		36.136017, 32.936035, 49.256397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776566, 33.706268, 48.931816>,  <35.460701, 33.119770, 49.242580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776566, 33.706268, 48.931816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993996, 33.375912, 48.871902>,  <36.124454, 33.177696, 48.835953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993996, 33.375912, 48.871902>,  <35.776566, 33.706268, 48.931816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993996, 33.375912, 48.871902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240110, 0.323991, -0.915083,
		0.804286, 0.461449, 0.374417,
		0.543572, -0.825890, -0.149784,
		36.157066, 33.128143, 48.826969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202499, 33.989193, 48.422565>,  <35.776566, 33.706268, 48.931816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202499, 33.989193, 48.422565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270454, 33.595364, 48.405834>,  <36.311226, 33.359066, 48.395794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270454, 33.595364, 48.405834>,  <36.202499, 33.989193, 48.422565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270454, 33.595364, 48.405834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449386, 0.115177, -0.885882,
		0.877036, 0.131698, 0.462021,
		0.169883, -0.984576, -0.041831,
		36.321419, 33.299992, 48.393284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886406, 33.922127, 48.143814>,  <36.202499, 33.989193, 48.422565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886406, 33.922127, 48.143814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724247, 33.561863, 48.081249>,  <36.626953, 33.345703, 48.043709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724247, 33.561863, 48.081249>,  <36.886406, 33.922127, 48.143814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724247, 33.561863, 48.081249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123623, 0.115518, -0.985582,
		0.905744, -0.418886, 0.064512,
		-0.405395, -0.900661, -0.156414,
		36.602627, 33.291664, 48.034325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249649, 33.734077, 47.587963>,  <36.886406, 33.922127, 48.143814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249649, 33.734077, 47.587963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935974, 33.486187, 47.575378>,  <36.747768, 33.337452, 47.567829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935974, 33.486187, 47.575378>,  <37.249649, 33.734077, 47.587963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935974, 33.486187, 47.575378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043265, -0.004031, -0.999056,
		0.619016, -0.784806, 0.029974,
		-0.784186, -0.619728, -0.031459,
		36.700718, 33.300270, 47.565941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423344, 33.132248, 47.129513>,  <37.249649, 33.734077, 47.587963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423344, 33.132248, 47.129513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026962, 33.185925, 47.128864>,  <36.789135, 33.218128, 47.128475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026962, 33.185925, 47.128864>,  <37.423344, 33.132248, 47.129513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026962, 33.185925, 47.128864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006407, -0.059359, -0.998216,
		-0.134048, -0.989176, 0.059681,
		-0.990954, 0.134191, -0.001620,
		36.729675, 33.226181, 47.128380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170593, 32.666023, 46.678738>,  <37.423344, 33.132248, 47.129513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170593, 32.666023, 46.678738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866077, 32.925354, 46.674568>,  <36.683369, 33.080952, 46.672066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866077, 32.925354, 46.674568>,  <37.170593, 32.666023, 46.678738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866077, 32.925354, 46.674568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063207, 0.058209, -0.996302,
		-0.645323, -0.759133, -0.085293,
		-0.761290, 0.648327, -0.010419,
		36.637691, 33.119854, 46.671444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804100, 32.398251, 46.145134>,  <37.170593, 32.666023, 46.678738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804100, 32.398251, 46.145134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675728, 32.772999, 46.200668>,  <36.598705, 32.997849, 46.233990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675728, 32.772999, 46.200668>,  <36.804100, 32.398251, 46.145134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675728, 32.772999, 46.200668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046931, 0.130684, -0.990313,
		-0.945939, -0.324338, 0.002028,
		-0.320931, 0.936871, 0.138840,
		36.579449, 33.054062, 46.242321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254810, 32.555214, 45.680225>,  <36.804100, 32.398251, 46.145134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254810, 32.555214, 45.680225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.363506, 32.924160, 45.790062>,  <36.428726, 33.145527, 45.855965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.363506, 32.924160, 45.790062>,  <36.254810, 32.555214, 45.680225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363506, 32.924160, 45.790062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108542, 0.312887, -0.943568,
		-0.956229, 0.226604, 0.185140,
		0.271744, 0.922362, 0.274595,
		36.445030, 33.200871, 45.872440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720871, 33.076740, 45.398956>,  <36.254810, 32.555214, 45.680225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720871, 33.076740, 45.398956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063866, 33.271900, 45.464287>,  <36.269661, 33.388996, 45.503483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063866, 33.271900, 45.464287>,  <35.720871, 33.076740, 45.398956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063866, 33.271900, 45.464287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013384, 0.296179, -0.955039,
		-0.514333, 0.821119, 0.247439,
		0.857486, 0.487896, 0.163325,
		36.321110, 33.418270, 45.513283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345913, 33.811581, 45.466175>,  <35.720871, 33.076740, 45.398956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345913, 33.811581, 45.466175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963905, 33.838989, 45.350765>,  <34.734699, 33.855434, 45.281521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963905, 33.838989, 45.350765>,  <35.345913, 33.811581, 45.466175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963905, 33.838989, 45.350765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296042, -0.163486, 0.941080,
		0.017312, 0.984163, 0.176416,
		-0.955018, 0.068518, -0.288523,
		34.677399, 33.859543, 45.264210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915749, 34.222340, 45.939297>,  <35.345913, 33.811581, 45.466175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915749, 34.222340, 45.939297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.675808, 33.953621, 45.765461>,  <34.531841, 33.792389, 45.661160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.675808, 33.953621, 45.765461>,  <34.915749, 34.222340, 45.939297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675808, 33.953621, 45.765461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219484, -0.384166, 0.896796,
		-0.769415, 0.633334, 0.082996,
		-0.599855, -0.671792, -0.434590,
		34.495850, 33.752083, 45.635082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507004, 34.051521, 46.424980>,  <34.915749, 34.222340, 45.939297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507004, 34.051521, 46.424980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.404911, 33.770847, 46.158897>,  <34.343655, 33.602444, 45.999249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.404911, 33.770847, 46.158897>,  <34.507004, 34.051521, 46.424980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404911, 33.770847, 46.158897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212767, -0.630370, 0.746569,
		-0.943180, 0.332079, 0.011593,
		-0.255228, -0.701682, -0.665208,
		34.328342, 33.560341, 45.959335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907833, 33.747601, 46.682076>,  <34.507004, 34.051521, 46.424980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907833, 33.747601, 46.682076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030121, 33.480339, 46.410751>,  <34.103493, 33.319981, 46.247955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030121, 33.480339, 46.410751>,  <33.907833, 33.747601, 46.682076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030121, 33.480339, 46.410751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322413, -0.742980, 0.586541,
		-0.895872, 0.039381, -0.442564,
		0.305718, -0.668154, -0.678312,
		34.121838, 33.279892, 46.207256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297089, 33.362988, 46.524666>,  <33.907833, 33.747601, 46.682076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297089, 33.362988, 46.524666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641151, 33.165981, 46.471661>,  <33.847588, 33.047779, 46.439857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641151, 33.165981, 46.471661>,  <33.297089, 33.362988, 46.524666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641151, 33.165981, 46.471661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320303, -0.723831, 0.611125,
		-0.396905, -0.483219, -0.780362,
		0.860158, -0.492511, -0.132516,
		33.899200, 33.018227, 46.431908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119198, 32.651012, 46.478600>,  <33.297089, 33.362988, 46.524666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119198, 32.651012, 46.478600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.506996, 32.644924, 46.576450>,  <33.739677, 32.641270, 46.635159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.506996, 32.644924, 46.576450>,  <33.119198, 32.651012, 46.478600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506996, 32.644924, 46.576450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206630, -0.587548, 0.782363,
		0.131820, -0.809047, -0.572772,
		0.969499, -0.015221, 0.244624,
		33.797844, 32.640358, 46.649837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208920, 31.901758, 46.756077>,  <33.119198, 32.651012, 46.478600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208920, 31.901758, 46.756077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511097, 32.131786, 46.881683>,  <33.692402, 32.269802, 46.957047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511097, 32.131786, 46.881683>,  <33.208920, 31.901758, 46.756077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511097, 32.131786, 46.881683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105650, -0.366066, 0.924572,
		0.646644, -0.731634, -0.215785,
		0.755440, 0.575072, 0.314012,
		33.737728, 32.304306, 46.975887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351124, 31.200418, 46.356964>,  <33.208920, 31.901758, 46.756077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351124, 31.200418, 46.356964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995274, 31.058132, 46.242397>,  <32.781765, 30.972759, 46.173656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995274, 31.058132, 46.242397>,  <33.351124, 31.200418, 46.356964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995274, 31.058132, 46.242397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361332, -0.164679, -0.917780,
		0.279303, -0.919971, 0.275034,
		-0.889623, -0.355717, -0.286420,
		32.728386, 30.951418, 46.156471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476250, 30.561365, 46.140430>,  <33.351124, 31.200418, 46.356964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476250, 30.561365, 46.140430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125244, 30.667828, 45.980865>,  <32.914642, 30.731705, 45.885128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125244, 30.667828, 45.980865>,  <33.476250, 30.561365, 46.140430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125244, 30.667828, 45.980865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338495, -0.245455, -0.908390,
		-0.339689, -0.932154, 0.125298,
		-0.877515, 0.266158, -0.398908,
		32.861988, 30.747675, 45.861195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398945, 30.121693, 45.570580>,  <33.476250, 30.561365, 46.140430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398945, 30.121693, 45.570580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133583, 30.413704, 45.504906>,  <32.974365, 30.588911, 45.465500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133583, 30.413704, 45.504906>,  <33.398945, 30.121693, 45.570580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133583, 30.413704, 45.504906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257878, 0.017081, -0.966026,
		-0.702420, -0.683205, -0.199590,
		-0.663404, 0.730026, -0.164186,
		32.934563, 30.632711, 45.455650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327732, 30.105795, 44.839550>,  <33.398945, 30.121693, 45.570580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327732, 30.105795, 44.839550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136024, 30.444218, 44.932922>,  <33.021000, 30.647270, 44.988945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136024, 30.444218, 44.932922>,  <33.327732, 30.105795, 44.839550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136024, 30.444218, 44.932922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164983, 0.348077, -0.922834,
		-0.862023, -0.403772, -0.306407,
		-0.479268, 0.846056, 0.233435,
		32.992245, 30.698034, 45.002953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855732, 30.330818, 44.251854>,  <33.327732, 30.105795, 44.839550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855732, 30.330818, 44.251854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972588, 30.659382, 44.447788>,  <33.042702, 30.856520, 44.565350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972588, 30.659382, 44.447788>,  <32.855732, 30.330818, 44.251854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972588, 30.659382, 44.447788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083770, 0.488233, -0.868683,
		-0.952699, 0.294812, 0.073823,
		0.292141, 0.821410, 0.489836,
		33.060230, 30.905806, 44.594738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441334, 30.905458, 43.915539>,  <32.855732, 30.330818, 44.251854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441334, 30.905458, 43.915539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749149, 31.060997, 44.118164>,  <32.933838, 31.154320, 44.239738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749149, 31.060997, 44.118164>,  <32.441334, 30.905458, 43.915539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749149, 31.060997, 44.118164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132205, 0.679048, -0.722091,
		-0.624762, 0.622649, 0.471148,
		0.769541, 0.388847, 0.506561,
		32.980011, 31.177650, 44.270134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458694, 31.620077, 43.763760>,  <32.441334, 30.905458, 43.915539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458694, 31.620077, 43.763760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829498, 31.545551, 43.893955>,  <33.051979, 31.500835, 43.972073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.829498, 31.545551, 43.893955>,  <32.458694, 31.620077, 43.763760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829498, 31.545551, 43.893955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362638, 0.666624, -0.651234,
		-0.095643, 0.721733, 0.685531,
		0.927009, -0.186314, 0.325486,
		33.107601, 31.489656, 43.991600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.273689, 27.224257, 49.048851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334297, 27.600809, 49.169415>,  <35.370663, 27.826740, 49.241753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334297, 27.600809, 49.169415>,  <35.273689, 27.224257, 49.048851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334297, 27.600809, 49.169415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141073, 0.281212, -0.949220,
		-0.978336, 0.186344, -0.090195,
		0.151518, 0.941380, 0.301407,
		35.379753, 27.883223, 49.259838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819988, 27.915119, 48.771313>,  <35.273689, 27.224257, 49.048851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819988, 27.915119, 48.771313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.218803, 27.945034, 48.778587>,  <35.458092, 27.962984, 48.782951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.218803, 27.945034, 48.778587>,  <34.819988, 27.915119, 48.771313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218803, 27.945034, 48.778587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007708, 0.138132, -0.990384,
		-0.076582, 0.987586, 0.137146,
		0.997034, 0.074789, 0.018191,
		35.517914, 27.967470, 48.784046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001671, 28.321400, 48.222794>,  <34.819988, 27.915119, 48.771313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001671, 28.321400, 48.222794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361488, 28.165884, 48.302460>,  <35.577377, 28.072575, 48.350258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361488, 28.165884, 48.302460>,  <35.001671, 28.321400, 48.222794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361488, 28.165884, 48.302460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223013, 0.016685, -0.974673,
		0.375621, 0.921175, 0.101715,
		0.899541, -0.388791, 0.199167,
		35.631351, 28.049246, 48.362209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506721, 28.834471, 47.949944>,  <35.001671, 28.321400, 48.222794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506721, 28.834471, 47.949944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.703201, 28.487549, 47.982208>,  <35.821087, 28.279396, 48.001568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.703201, 28.487549, 47.982208>,  <35.506721, 28.834471, 47.949944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703201, 28.487549, 47.982208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340643, 0.106035, -0.934194,
		0.801679, 0.486350, 0.347526,
		0.491195, -0.867306, 0.080666,
		35.850559, 28.227356, 48.006409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248219, 28.961615, 47.651394>,  <35.506721, 28.834471, 47.949944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248219, 28.961615, 47.651394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.166466, 28.571951, 47.612949>,  <36.117413, 28.338152, 47.589882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.166466, 28.571951, 47.612949>,  <36.248219, 28.961615, 47.651394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166466, 28.571951, 47.612949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215165, 0.051071, -0.975242,
		0.954951, -0.220003, 0.199168,
		-0.204385, -0.974162, -0.096107,
		36.105152, 28.279703, 47.584118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800583, 28.692036, 47.199173>,  <36.248219, 28.961615, 47.651394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800583, 28.692036, 47.199173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491695, 28.438900, 47.176571>,  <36.306362, 28.287018, 47.163010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491695, 28.438900, 47.176571>,  <36.800583, 28.692036, 47.199173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491695, 28.438900, 47.176571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301477, -0.286678, -0.909355,
		0.559279, -0.719255, 0.412165,
		-0.772217, -0.632841, -0.056506,
		36.260029, 28.249048, 47.159618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111664, 28.032440, 47.002705>,  <36.800583, 28.692036, 47.199173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111664, 28.032440, 47.002705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719303, 28.030270, 46.924942>,  <36.483887, 28.028967, 46.878284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719303, 28.030270, 46.924942>,  <37.111664, 28.032440, 47.002705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719303, 28.030270, 46.924942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182630, -0.369372, -0.911159,
		-0.066866, -0.929266, 0.363310,
		-0.980905, -0.005426, -0.194410,
		36.425030, 28.028643, 46.866619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980114, 27.406694, 46.685471>,  <37.111664, 28.032440, 47.002705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980114, 27.406694, 46.685471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.633820, 27.592646, 46.611294>,  <36.426044, 27.704216, 46.566788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.633820, 27.592646, 46.611294>,  <36.980114, 27.406694, 46.685471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633820, 27.592646, 46.611294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082893, -0.232213, -0.969126,
		-0.493589, -0.854379, 0.162500,
		-0.865736, 0.464880, -0.185440,
		36.374100, 27.732109, 46.555660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507622, 26.969002, 46.283520>,  <36.980114, 27.406694, 46.685471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507622, 26.969002, 46.283520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.407505, 27.346375, 46.196537>,  <36.347435, 27.572798, 46.144348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.407505, 27.346375, 46.196537>,  <36.507622, 26.969002, 46.283520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407505, 27.346375, 46.196537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008995, -0.222331, -0.974930,
		-0.968129, -0.245971, 0.047161,
		-0.250290, 0.943433, -0.217458,
		36.332417, 27.629404, 46.131298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991787, 26.898436, 45.695213>,  <36.507622, 26.969002, 46.283520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991787, 26.898436, 45.695213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.111660, 27.279951, 45.686459>,  <36.183582, 27.508860, 45.681206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.111660, 27.279951, 45.686459>,  <35.991787, 26.898436, 45.695213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111660, 27.279951, 45.686459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007903, -0.020455, -0.999759,
		-0.954006, 0.299784, 0.001408,
		0.299684, 0.953788, -0.021884,
		36.201565, 27.566088, 45.679893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523674, 27.261049, 45.275433>,  <35.991787, 26.898436, 45.695213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523674, 27.261049, 45.275433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.858715, 27.479557, 45.276825>,  <36.059738, 27.610661, 45.277660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.858715, 27.479557, 45.276825>,  <35.523674, 27.261049, 45.275433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858715, 27.479557, 45.276825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005363, -0.001859, -0.999984,
		-0.546253, 0.837608, -0.004487,
		0.837603, 0.546268, 0.003477,
		36.109997, 27.643438, 45.277866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482269, 27.536242, 44.712223>,  <35.523674, 27.261049, 45.275433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482269, 27.536242, 44.712223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.860416, 27.647921, 44.779541>,  <36.087307, 27.714928, 44.819931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.860416, 27.647921, 44.779541>,  <35.482269, 27.536242, 44.712223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860416, 27.647921, 44.779541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139645, 0.119665, -0.982944,
		-0.294575, 0.952748, 0.074139,
		0.945370, 0.279198, 0.168297,
		36.144028, 27.731680, 44.830029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032497, 28.159786, 44.673218>,  <35.482269, 27.536242, 44.712223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032497, 28.159786, 44.673218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684425, 28.145653, 44.476635>,  <34.475582, 28.137173, 44.358685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684425, 28.145653, 44.476635>,  <35.032497, 28.159786, 44.673218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684425, 28.145653, 44.476635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490444, -0.033819, 0.870817,
		-0.047389, 0.998804, 0.012100,
		-0.870184, -0.035332, -0.491459,
		34.423370, 28.135054, 44.329197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572998, 28.585449, 45.044796>,  <35.032497, 28.159786, 44.673218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572998, 28.585449, 45.044796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.365749, 28.331324, 44.815735>,  <34.241402, 28.178848, 44.678299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.365749, 28.331324, 44.815735>,  <34.572998, 28.585449, 45.044796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365749, 28.331324, 44.815735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690238, -0.084807, 0.718596,
		-0.505100, 0.767582, -0.394579,
		-0.518118, -0.635316, -0.572650,
		34.210316, 28.140728, 44.643940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849930, 28.789148, 45.159000>,  <34.572998, 28.585449, 45.044796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849930, 28.789148, 45.159000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.871357, 28.411142, 45.029953>,  <33.884212, 28.184340, 44.952526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.871357, 28.411142, 45.029953>,  <33.849930, 28.789148, 45.159000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871357, 28.411142, 45.029953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551458, -0.297341, 0.779412,
		-0.832481, 0.136158, -0.537063,
		0.053567, -0.945013, -0.322616,
		33.887428, 28.127638, 44.933167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190395, 28.551031, 45.296909>,  <33.849930, 28.789148, 45.159000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190395, 28.551031, 45.296909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376713, 28.201441, 45.241478>,  <33.488503, 27.991686, 45.208221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376713, 28.201441, 45.241478>,  <33.190395, 28.551031, 45.296909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376713, 28.201441, 45.241478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465916, -0.375359, 0.801266,
		-0.752303, -0.308658, -0.582039,
		0.465791, -0.873977, -0.138575,
		33.516449, 27.939247, 45.199905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693081, 27.968334, 45.162632>,  <33.190395, 28.551031, 45.296909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693081, 27.968334, 45.162632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.024933, 27.773148, 45.271149>,  <33.224045, 27.656034, 45.336258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.024933, 27.773148, 45.271149>,  <32.693081, 27.968334, 45.162632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024933, 27.773148, 45.271149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474297, -0.359652, 0.803550,
		-0.294533, -0.795325, -0.529819,
		0.829634, -0.487964, 0.271291,
		33.273823, 27.626757, 45.352535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457779, 27.305265, 45.260426>,  <32.693081, 27.968334, 45.162632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457779, 27.305265, 45.260426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.803524, 27.333134, 45.459633>,  <33.010971, 27.349855, 45.579155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.803524, 27.333134, 45.459633>,  <32.457779, 27.305265, 45.260426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803524, 27.333134, 45.459633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408086, -0.481503, 0.775642,
		0.293837, -0.873671, -0.387762,
		0.864364, 0.069672, 0.498016,
		33.062832, 27.354034, 45.609039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514069, 26.688629, 45.630501>,  <32.457779, 27.305265, 45.260426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514069, 26.688629, 45.630501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.753170, 26.951595, 45.814022>,  <32.896629, 27.109375, 45.924133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.753170, 26.951595, 45.814022>,  <32.514069, 26.688629, 45.630501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753170, 26.951595, 45.814022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417993, -0.232772, 0.878123,
		0.684088, -0.716674, 0.135655,
		0.597751, 0.657416, 0.458801,
		32.932495, 27.148821, 45.951664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656849, 26.410189, 46.218643>,  <32.514069, 26.688629, 45.630501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656849, 26.410189, 46.218643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.786182, 26.777863, 46.308586>,  <32.863781, 26.998466, 46.362553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.786182, 26.777863, 46.308586>,  <32.656849, 26.410189, 46.218643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786182, 26.777863, 46.308586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320611, -0.117153, 0.939938,
		0.890317, -0.376003, 0.256820,
		0.323332, 0.919183, 0.224854,
		32.883183, 27.053617, 46.376041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932137, 26.339479, 46.996979>,  <32.656849, 26.410189, 46.218643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932137, 26.339479, 46.996979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.830463, 26.719072, 46.922340>,  <32.769459, 26.946829, 46.877556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.830463, 26.719072, 46.922340>,  <32.932137, 26.339479, 46.996979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830463, 26.719072, 46.922340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499881, 0.036258, 0.865335,
		0.827955, 0.313231, 0.465163,
		-0.254184, 0.948985, -0.186598,
		32.754208, 27.003767, 46.866360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044601, 26.687067, 47.711475>,  <32.932137, 26.339479, 46.996979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044601, 26.687067, 47.711475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.823788, 26.921486, 47.474224>,  <32.691299, 27.062138, 47.331871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.823788, 26.921486, 47.474224>,  <33.044601, 26.687067, 47.711475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823788, 26.921486, 47.474224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545554, 0.284093, 0.788455,
		0.630575, 0.758843, 0.162889,
		-0.552038, 0.586045, -0.593132,
		32.658176, 27.097300, 47.296284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046711, 27.289431, 48.031849>,  <33.044601, 26.687067, 47.711475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046711, 27.289431, 48.031849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.726372, 27.317188, 47.793915>,  <32.534168, 27.333843, 47.651154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.726372, 27.317188, 47.793915>,  <33.046711, 27.289431, 48.031849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726372, 27.317188, 47.793915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527238, 0.389353, 0.755264,
		0.284012, 0.918471, -0.275225,
		-0.800848, 0.069395, -0.594834,
		32.486118, 27.338007, 47.615463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792191, 28.043999, 48.029938>,  <33.046711, 27.289431, 48.031849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792191, 28.043999, 48.029938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.488022, 27.800251, 47.940117>,  <32.305519, 27.654003, 47.886223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.488022, 27.800251, 47.940117>,  <32.792191, 28.043999, 48.029938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488022, 27.800251, 47.940117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569332, 0.459169, 0.681928,
		-0.312438, 0.646399, -0.696096,
		-0.760423, -0.609370, -0.224554,
		32.259895, 27.617439, 47.872749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188328, 28.490017, 48.171974>,  <32.792191, 28.043999, 48.029938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188328, 28.490017, 48.171974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046547, 28.117624, 48.137016>,  <31.961477, 27.894190, 48.116043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046547, 28.117624, 48.137016>,  <32.188328, 28.490017, 48.171974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046547, 28.117624, 48.137016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416823, 0.073649, 0.905999,
		-0.837031, 0.357563, -0.414160,
		-0.354455, -0.930980, -0.087394,
		31.940210, 27.838329, 48.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443640, 28.377323, 48.326271>,  <32.188328, 28.490017, 48.171974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443640, 28.377323, 48.326271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.652912, 28.052700, 48.430309>,  <31.778477, 27.857925, 48.492733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.652912, 28.052700, 48.430309>,  <31.443640, 28.377323, 48.326271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652912, 28.052700, 48.430309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393269, 0.040850, 0.918516,
		-0.756055, -0.582840, -0.297789,
		0.523183, -0.811559, 0.260098,
		31.809868, 27.809233, 48.508339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276764, 28.893772, 47.864353>,  <31.443640, 28.377323, 48.326271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276764, 28.893772, 47.864353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.146744, 29.254587, 47.977959>,  <31.068731, 29.471077, 48.046124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.146744, 29.254587, 47.977959>,  <31.276764, 28.893772, 47.864353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146744, 29.254587, 47.977959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451002, 0.411835, -0.791826,
		-0.831227, -0.129291, -0.540690,
		-0.325051, 0.902040, 0.284018,
		31.049229, 29.525200, 48.063164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859886, 29.444271, 47.306664>,  <31.276764, 28.893772, 47.864353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859886, 29.444271, 47.306664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.087536, 29.588020, 47.602486>,  <31.224125, 29.674269, 47.779980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.087536, 29.588020, 47.602486>,  <30.859886, 29.444271, 47.306664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087536, 29.588020, 47.602486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403165, 0.661933, -0.631904,
		-0.716627, 0.657797, 0.231836,
		0.569125, 0.359371, 0.739560,
		31.258274, 29.695831, 47.824352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759205, 30.181353, 47.260368>,  <30.859886, 29.444271, 47.306664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759205, 30.181353, 47.260368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.099863, 30.128765, 47.463314>,  <31.304258, 30.097212, 47.585079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.099863, 30.128765, 47.463314>,  <30.759205, 30.181353, 47.260368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099863, 30.128765, 47.463314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450723, 0.677746, -0.580955,
		-0.267485, 0.723447, 0.636456,
		0.851646, -0.131468, 0.507361,
		31.355356, 30.089325, 47.615524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013103, 30.842072, 47.353027>,  <30.759205, 30.181353, 47.260368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013103, 30.842072, 47.353027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.316923, 30.588560, 47.411556>,  <31.499214, 30.436453, 47.446674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.316923, 30.588560, 47.411556>,  <31.013103, 30.842072, 47.353027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316923, 30.588560, 47.411556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522155, 0.459964, -0.718183,
		0.387866, 0.621898, 0.680296,
		0.759549, -0.633778, 0.146323,
		31.544788, 30.398426, 47.455452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530300, 31.207335, 47.343601>,  <31.013103, 30.842072, 47.353027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530300, 31.207335, 47.343601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.700302, 30.852619, 47.270966>,  <31.802303, 30.639790, 47.227383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.700302, 30.852619, 47.270966>,  <31.530300, 31.207335, 47.343601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700302, 30.852619, 47.270966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438575, 0.377227, -0.815691,
		0.791846, 0.267033, 0.549248,
		0.425007, -0.886788, -0.181592,
		31.827805, 30.586582, 47.216488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325817, 31.280602, 47.150185>,  <31.530300, 31.207335, 47.343601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325817, 31.280602, 47.150185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.227558, 30.944086, 46.957565>,  <32.168602, 30.742176, 46.841995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.227558, 30.944086, 46.957565>,  <32.325817, 31.280602, 47.150185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227558, 30.944086, 46.957565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616121, 0.248013, -0.747586,
		0.748367, -0.480335, 0.457412,
		-0.245647, -0.841289, -0.481550,
		32.153862, 30.691700, 46.813099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955105, 31.042175, 46.957432>,  <32.325817, 31.280602, 47.150185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955105, 31.042175, 46.957432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.675079, 30.862228, 46.735611>,  <32.507065, 30.754261, 46.602520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.675079, 30.862228, 46.735611>,  <32.955105, 31.042175, 46.957432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675079, 30.862228, 46.735611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600007, 0.050485, -0.798401,
		0.387169, -0.891668, 0.234579,
		-0.700066, -0.449865, -0.554553,
		32.465061, 30.727268, 46.569244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587223, 31.384161, 47.116989>,  <32.955105, 31.042175, 46.957432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587223, 31.384161, 47.116989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.713387, 31.746452, 47.230247>,  <33.789085, 31.963827, 47.298203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.713387, 31.746452, 47.230247>,  <33.587223, 31.384161, 47.116989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713387, 31.746452, 47.230247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121019, -0.257548, 0.958657,
		0.941207, -0.336636, 0.028377,
		0.315410, 0.905729, 0.283145,
		33.808010, 32.018169, 47.315189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981647, 31.233402, 47.778229>,  <33.587223, 31.384161, 47.116989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981647, 31.233402, 47.778229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.890961, 31.621773, 47.808968>,  <33.836548, 31.854795, 47.827412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.890961, 31.621773, 47.808968>,  <33.981647, 31.233402, 47.778229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890961, 31.621773, 47.808968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011364, -0.081536, 0.996606,
		0.973895, 0.225072, 0.029519,
		-0.226715, 0.970925, 0.076849,
		33.822945, 31.913050, 47.832024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445484, 31.458179, 48.194454>,  <33.981647, 31.233402, 47.778229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445484, 31.458179, 48.194454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.159767, 31.737860, 48.206493>,  <33.988338, 31.905668, 48.213718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.159767, 31.737860, 48.206493>,  <34.445484, 31.458179, 48.194454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159767, 31.737860, 48.206493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023738, -0.067191, 0.997458,
		0.699448, 0.711759, 0.064591,
		-0.714289, 0.699203, 0.030101,
		33.945480, 31.947620, 48.215523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812557, 31.990702, 48.565750>,  <34.445484, 31.458179, 48.194454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812557, 31.990702, 48.565750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419739, 32.064232, 48.582668>,  <34.184048, 32.108349, 48.592819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419739, 32.064232, 48.582668>,  <34.812557, 31.990702, 48.565750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419739, 32.064232, 48.582668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054650, 0.062692, 0.996535,
		0.180539, 0.980957, -0.071613,
		-0.982048, 0.183827, 0.042291,
		34.125126, 32.119381, 48.595356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771919, 32.673523, 48.912518>,  <34.812557, 31.990702, 48.565750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771919, 32.673523, 48.912518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.428246, 32.469501, 48.928734>,  <34.222042, 32.347088, 48.938461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.428246, 32.469501, 48.928734>,  <34.771919, 32.673523, 48.912518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428246, 32.469501, 48.928734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057398, -0.017350, 0.998201,
		-0.508436, 0.859966, 0.044184,
		-0.859185, -0.510057, 0.040539,
		34.170490, 32.316483, 48.940895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460865, 32.966782, 49.415760>,  <34.771919, 32.673523, 48.912518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460865, 32.966782, 49.415760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.266346, 32.617714, 49.398064>,  <34.149635, 32.408272, 49.387444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.266346, 32.617714, 49.398064>,  <34.460865, 32.966782, 49.415760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266346, 32.617714, 49.398064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041894, -0.027291, 0.998749,
		-0.872789, 0.487542, -0.023288,
		-0.486296, -0.872673, -0.044244,
		34.120457, 32.355911, 49.384789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889580, 32.969818, 49.949238>,  <34.460865, 32.966782, 49.415760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889580, 32.969818, 49.949238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937008, 32.579575, 49.875343>,  <33.965466, 32.345428, 49.831005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937008, 32.579575, 49.875343>,  <33.889580, 32.969818, 49.949238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937008, 32.579575, 49.875343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012570, -0.187509, 0.982182,
		-0.992867, -0.114131, -0.034496,
		0.118566, -0.975610, -0.184737,
		33.972576, 32.286892, 49.819923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404755, 32.604301, 50.355515>,  <33.889580, 32.969818, 49.949238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404755, 32.604301, 50.355515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666199, 32.313992, 50.269672>,  <33.823063, 32.139809, 50.218166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666199, 32.313992, 50.269672>,  <33.404755, 32.604301, 50.355515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666199, 32.313992, 50.269672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035232, -0.312423, 0.949290,
		-0.756013, -0.612903, -0.229772,
		0.653608, -0.725771, -0.214602,
		33.862282, 32.096260, 50.205292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104042, 31.995968, 50.673145>,  <33.404755, 32.604301, 50.355515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104042, 31.995968, 50.673145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.493813, 31.921701, 50.622524>,  <33.727676, 31.877142, 50.592152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.493813, 31.921701, 50.622524>,  <33.104042, 31.995968, 50.673145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493813, 31.921701, 50.622524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058463, -0.334317, 0.940646,
		-0.216950, -0.923993, -0.314914,
		0.974430, -0.185662, -0.126550,
		33.786140, 31.866003, 50.584560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.146706, 36.452026, 35.638245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466537, 36.247940, 35.764957>,  <37.658436, 36.125488, 35.840984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466537, 36.247940, 35.764957>,  <37.146706, 36.452026, 35.638245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466537, 36.247940, 35.764957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427790, -0.113655, 0.896704,
		-0.421506, -0.852505, -0.309141,
		0.799580, -0.510214, 0.316786,
		37.706413, 36.094875, 35.859993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836292, 35.799076, 35.820656>,  <37.146706, 36.452026, 35.638245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836292, 35.799076, 35.820656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174374, 35.901031, 36.008553>,  <37.377224, 35.962204, 36.121292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174374, 35.901031, 36.008553>,  <36.836292, 35.799076, 35.820656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174374, 35.901031, 36.008553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464050, -0.086004, 0.881624,
		0.265113, -0.963139, 0.045589,
		0.845206, 0.254885, 0.469745,
		37.427937, 35.977497, 36.149475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856331, 35.316174, 36.343510>,  <36.836292, 35.799076, 35.820656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856331, 35.316174, 36.343510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120480, 35.583138, 36.481194>,  <37.278969, 35.743317, 36.563805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120480, 35.583138, 36.481194>,  <36.856331, 35.316174, 36.343510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120480, 35.583138, 36.481194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329676, -0.154171, 0.931421,
		0.674707, -0.728557, 0.118219,
		0.660367, 0.667410, 0.344208,
		37.318588, 35.783360, 36.584457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375664, 35.042171, 36.870663>,  <36.856331, 35.316174, 36.343510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375664, 35.042171, 36.870663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340481, 35.436817, 36.925583>,  <37.319370, 35.673607, 36.958534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340481, 35.436817, 36.925583>,  <37.375664, 35.042171, 36.870663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340481, 35.436817, 36.925583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198909, -0.152459, 0.968086,
		0.976063, 0.057840, 0.209656,
		-0.087958, 0.986616, 0.137305,
		37.314095, 35.732803, 36.966774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663811, 35.103779, 37.499039>,  <37.375664, 35.042171, 36.870663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663811, 35.103779, 37.499039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448597, 35.438709, 37.460255>,  <37.319469, 35.639668, 37.436985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448597, 35.438709, 37.460255>,  <37.663811, 35.103779, 37.499039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448597, 35.438709, 37.460255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322578, -0.098255, 0.941430,
		0.778760, 0.537796, 0.322968,
		-0.538031, 0.837330, -0.096964,
		37.287189, 35.689907, 37.431164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885666, 35.563862, 37.980339>,  <37.663811, 35.103779, 37.499039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885666, 35.563862, 37.980339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541714, 35.744904, 37.885891>,  <37.335342, 35.853527, 37.829220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541714, 35.744904, 37.885891>,  <37.885666, 35.563862, 37.980339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541714, 35.744904, 37.885891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194156, 0.137827, 0.971240,
		0.472131, 0.880996, -0.030639,
		-0.859881, 0.452604, -0.236123,
		37.283749, 35.880684, 37.815056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779388, 36.096874, 38.473652>,  <37.885666, 35.563862, 37.980339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779388, 36.096874, 38.473652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399857, 36.089378, 38.347561>,  <37.172138, 36.084881, 38.271904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399857, 36.089378, 38.347561>,  <37.779388, 36.096874, 38.473652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399857, 36.089378, 38.347561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308298, 0.271091, 0.911846,
		0.068372, 0.962371, -0.262996,
		-0.948830, -0.018737, -0.315232,
		37.115208, 36.083755, 38.252991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421124, 36.722347, 38.737129>,  <37.779388, 36.096874, 38.473652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421124, 36.722347, 38.737129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135628, 36.449013, 38.675659>,  <36.964329, 36.285011, 38.638775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135628, 36.449013, 38.675659>,  <37.421124, 36.722347, 38.737129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135628, 36.449013, 38.675659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327332, 0.131461, 0.935720,
		-0.619212, 0.718168, -0.317509,
		-0.713744, -0.683340, -0.153677,
		36.921505, 36.244011, 38.629555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706635, 36.990253, 39.021191>,  <37.421124, 36.722347, 38.737129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706635, 36.990253, 39.021191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679394, 36.591354, 39.009521>,  <36.663052, 36.352013, 39.002518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679394, 36.591354, 39.009521>,  <36.706635, 36.990253, 39.021191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679394, 36.591354, 39.009521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477418, 0.006897, 0.878649,
		-0.876033, 0.073765, -0.476576,
		-0.068100, -0.997252, -0.029175,
		36.658962, 36.292179, 39.000771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028469, 36.860970, 39.297058>,  <36.706635, 36.990253, 39.021191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028469, 36.860970, 39.297058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221550, 36.511517, 39.321583>,  <36.337399, 36.301846, 39.336296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221550, 36.511517, 39.321583>,  <36.028469, 36.860970, 39.297058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221550, 36.511517, 39.321583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488616, -0.210548, 0.846714,
		-0.726812, -0.438666, -0.528505,
		0.482700, -0.873637, 0.061310,
		36.366360, 36.249424, 39.339977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533634, 36.416740, 39.475773>,  <36.028469, 36.860970, 39.297058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533634, 36.416740, 39.475773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868977, 36.224129, 39.577980>,  <36.070183, 36.108562, 39.639305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868977, 36.224129, 39.577980>,  <35.533634, 36.416740, 39.475773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868977, 36.224129, 39.577980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443269, -0.329352, 0.833690,
		-0.317272, -0.812203, -0.489555,
		0.838362, -0.481511, 0.255531,
		36.120483, 36.079670, 39.654636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339828, 35.716148, 39.761364>,  <35.533634, 36.416740, 39.475773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339828, 35.716148, 39.761364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704445, 35.784946, 39.910767>,  <35.923214, 35.826225, 40.000408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704445, 35.784946, 39.910767>,  <35.339828, 35.716148, 39.761364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704445, 35.784946, 39.910767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342882, -0.183475, 0.921286,
		0.226985, -0.967861, -0.108272,
		0.911543, 0.171993, 0.373509,
		35.977909, 35.836544, 40.022820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155361, 35.135265, 39.279339>,  <35.339828, 35.716148, 39.761364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155361, 35.135265, 39.279339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794590, 34.976727, 39.210701>,  <34.578129, 34.881603, 39.169518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794590, 34.976727, 39.210701>,  <35.155361, 35.135265, 39.279339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794590, 34.976727, 39.210701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028223, 0.342365, -0.939143,
		0.430973, -0.851878, -0.297601,
		-0.901924, -0.396346, -0.171592,
		34.524014, 34.857822, 39.159222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179726, 34.626221, 38.677216>,  <35.155361, 35.135265, 39.279339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179726, 34.626221, 38.677216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794693, 34.731861, 38.701485>,  <34.563671, 34.795246, 38.716045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794693, 34.731861, 38.701485>,  <35.179726, 34.626221, 38.677216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794693, 34.731861, 38.701485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023375, 0.142155, -0.989568,
		-0.269969, -0.953962, -0.130663,
		-0.962585, 0.264099, 0.060676,
		34.505917, 34.811092, 38.719688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979198, 34.496822, 38.047493>,  <35.179726, 34.626221, 38.677216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979198, 34.496822, 38.047493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662868, 34.702579, 38.180157>,  <34.473072, 34.826035, 38.259754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662868, 34.702579, 38.180157>,  <34.979198, 34.496822, 38.047493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662868, 34.702579, 38.180157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265055, 0.200603, -0.943135,
		-0.551673, -0.833762, -0.022299,
		-0.790824, 0.514392, 0.331661,
		34.425621, 34.856895, 38.279655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463448, 34.247932, 37.692616>,  <34.979198, 34.496822, 38.047493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463448, 34.247932, 37.692616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309349, 34.596230, 37.814854>,  <34.216888, 34.805210, 37.888195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309349, 34.596230, 37.814854>,  <34.463448, 34.247932, 37.692616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309349, 34.596230, 37.814854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264291, 0.213173, -0.940589,
		-0.884159, -0.443122, 0.148006,
		-0.385245, 0.870747, 0.305592,
		34.193775, 34.857452, 37.906532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717697, 34.289463, 37.410465>,  <34.463448, 34.247932, 37.692616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717697, 34.289463, 37.410465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869385, 34.653214, 37.478844>,  <33.960396, 34.871464, 37.519871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869385, 34.653214, 37.478844>,  <33.717697, 34.289463, 37.410465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869385, 34.653214, 37.478844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292086, 0.292943, -0.910423,
		-0.877998, 0.295317, 0.376706,
		0.379217, 0.909380, 0.170946,
		33.983150, 34.926029, 37.530128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234455, 34.822960, 37.091007>,  <33.717697, 34.289463, 37.410465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234455, 34.822960, 37.091007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588718, 34.999439, 37.148907>,  <33.801277, 35.105328, 37.183647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588718, 34.999439, 37.148907>,  <33.234455, 34.822960, 37.091007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588718, 34.999439, 37.148907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059767, 0.417445, -0.906734,
		-0.460477, 0.794405, 0.396083,
		0.885657, 0.441203, 0.144744,
		33.854416, 35.131802, 37.192329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166035, 35.561501, 36.738205>,  <33.234455, 34.822960, 37.091007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166035, 35.561501, 36.738205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556118, 35.483189, 36.779446>,  <33.790169, 35.436199, 36.804192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556118, 35.483189, 36.779446>,  <33.166035, 35.561501, 36.738205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556118, 35.483189, 36.779446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152477, 0.256942, -0.954322,
		0.160350, 0.946387, 0.280426,
		0.975212, -0.195784, 0.103102,
		33.848682, 35.424454, 36.810375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549541, 36.074505, 36.271168>,  <33.166035, 35.561501, 36.738205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549541, 36.074505, 36.271168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780636, 35.752415, 36.324577>,  <33.919292, 35.559162, 36.356625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780636, 35.752415, 36.324577>,  <33.549541, 36.074505, 36.271168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780636, 35.752415, 36.324577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275450, 0.038352, -0.960550,
		0.768339, 0.591727, 0.243957,
		0.577739, -0.805226, 0.133524,
		33.953957, 35.510845, 36.364635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264038, 36.289383, 36.101448>,  <33.549541, 36.074505, 36.271168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264038, 36.289383, 36.101448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272633, 35.890343, 36.075119>,  <34.277790, 35.650917, 36.059322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272633, 35.890343, 36.075119>,  <34.264038, 36.289383, 36.101448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272633, 35.890343, 36.075119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384955, 0.069023, -0.920351,
		0.922685, -0.005562, 0.385514,
		0.021490, -0.997600, -0.065827,
		34.279079, 35.591064, 36.055370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909668, 36.110786, 35.900864>,  <34.264038, 36.289383, 36.101448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909668, 36.110786, 35.900864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656738, 35.817753, 35.800079>,  <34.504982, 35.641933, 35.739609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656738, 35.817753, 35.800079>,  <34.909668, 36.110786, 35.900864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656738, 35.817753, 35.800079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228565, 0.134338, -0.964215,
		0.740220, -0.667284, 0.082499,
		-0.632323, -0.732588, -0.251957,
		34.467041, 35.597977, 35.724491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993088, 36.024181, 35.193470>,  <34.909668, 36.110786, 35.900864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993088, 36.024181, 35.193470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756367, 35.703827, 35.230045>,  <34.614334, 35.511616, 35.251991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756367, 35.703827, 35.230045>,  <34.993088, 36.024181, 35.193470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756367, 35.703827, 35.230045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157964, 0.003984, -0.987437,
		0.790455, -0.598810, -0.128868,
		-0.591800, -0.800881, 0.091442,
		34.578827, 35.463562, 35.257477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323193, 35.363400, 34.873787>,  <34.993088, 36.024181, 35.193470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323193, 35.363400, 34.873787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923985, 35.346653, 34.855007>,  <34.684460, 35.336605, 34.843739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923985, 35.346653, 34.855007>,  <35.323193, 35.363400, 34.873787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923985, 35.346653, 34.855007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044368, 0.060644, -0.997173,
		0.044579, -0.997282, -0.058667,
		-0.998020, -0.041850, -0.046951,
		34.624580, 35.334095, 34.840923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979141, 34.777992, 34.493961>,  <35.323193, 35.363400, 34.873787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979141, 34.777992, 34.493961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780582, 35.124859, 34.477909>,  <34.661449, 35.332981, 34.468277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780582, 35.124859, 34.477909>,  <34.979141, 34.777992, 34.493961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780582, 35.124859, 34.477909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109927, 0.016937, -0.993795,
		-0.861110, -0.497724, -0.103732,
		-0.496393, 0.867170, -0.040129,
		34.631664, 35.385010, 34.465870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977436, 34.052402, 34.109352>,  <34.979141, 34.777992, 34.493961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977436, 34.052402, 34.109352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826729, 34.184574, 34.455498>,  <34.736305, 34.263878, 34.663185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826729, 34.184574, 34.455498>,  <34.977436, 34.052402, 34.109352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826729, 34.184574, 34.455498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120761, -0.908720, 0.399556,
		0.918401, 0.255044, 0.302478,
		-0.376772, 0.330425, 0.865369,
		34.713696, 34.283703, 34.715107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348091, 33.770901, 34.747372>,  <34.977436, 34.052402, 34.109352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348091, 33.770901, 34.747372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987957, 33.879082, 34.883755>,  <34.771877, 33.943989, 34.965584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987957, 33.879082, 34.883755>,  <35.348091, 33.770901, 34.747372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987957, 33.879082, 34.883755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012689, -0.799439, 0.600614,
		0.435009, 0.536428, 0.723196,
		-0.900337, 0.270449, 0.340957,
		34.717857, 33.960217, 34.986042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522266, 33.035805, 34.825520>,  <35.348091, 33.770901, 34.747372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522266, 33.035805, 34.825520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899891, 33.139393, 34.907188>,  <36.126465, 33.201546, 34.956188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899891, 33.139393, 34.907188>,  <35.522266, 33.035805, 34.825520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899891, 33.139393, 34.907188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301836, -0.927952, -0.218633,
		0.132841, 0.268029, -0.954208,
		0.944059, 0.258971, 0.204170,
		36.183109, 33.217083, 34.968441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025444, 33.035957, 35.421673>,  <35.522266, 33.035805, 34.825520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025444, 33.035957, 35.421673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869381, 32.812916, 35.714756>,  <34.775745, 32.679092, 35.890606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869381, 32.812916, 35.714756>,  <35.025444, 33.035957, 35.421673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869381, 32.812916, 35.714756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851660, 0.083895, 0.517337,
		-0.349938, 0.825859, 0.442154,
		-0.390153, -0.557601, 0.732709,
		34.752335, 32.645638, 35.934570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483181, 32.379879, 35.470928>,  <35.025444, 33.035957, 35.421673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483181, 32.379879, 35.470928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848625, 32.521931, 35.550133>,  <36.067890, 32.607162, 35.597656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848625, 32.521931, 35.550133>,  <35.483181, 32.379879, 35.470928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848625, 32.521931, 35.550133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214597, -0.834785, 0.507034,
		0.345358, -0.420737, -0.838874,
		0.913606, 0.355127, 0.198011,
		36.122707, 32.628468, 35.609535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041168, 31.879936, 35.296322>,  <35.483181, 32.379879, 35.470928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041168, 31.879936, 35.296322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077847, 32.142475, 35.595867>,  <36.099854, 32.299999, 35.775597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077847, 32.142475, 35.595867>,  <36.041168, 31.879936, 35.296322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077847, 32.142475, 35.595867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093833, -0.742993, 0.662690,
		0.991357, -0.131031, -0.006539,
		0.091691, 0.656348, 0.748866,
		36.105354, 32.339378, 35.820526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435661, 31.508446, 35.820011>,  <36.041168, 31.879936, 35.296322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435661, 31.508446, 35.820011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228561, 31.797947, 36.002491>,  <36.104301, 31.971647, 36.111980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228561, 31.797947, 36.002491>,  <36.435661, 31.508446, 35.820011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228561, 31.797947, 36.002491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114174, -0.586920, 0.801555,
		0.847880, 0.362917, 0.386510,
		-0.517749, 0.723751, 0.456202,
		36.073238, 32.015072, 36.139351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766701, 31.582243, 36.385181>,  <36.435661, 31.508446, 35.820011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766701, 31.582243, 36.385181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403881, 31.730022, 36.465950>,  <36.186188, 31.818689, 36.514412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403881, 31.730022, 36.465950>,  <36.766701, 31.582243, 36.385181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403881, 31.730022, 36.465950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044497, -0.561024, 0.826603,
		0.418667, 0.740784, 0.525315,
		-0.907049, 0.369447, 0.201920,
		36.131767, 31.840857, 36.526527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823833, 31.645670, 37.172066>,  <36.766701, 31.582243, 36.385181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823833, 31.645670, 37.172066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438850, 31.696871, 37.076324>,  <36.207859, 31.727591, 37.018879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438850, 31.696871, 37.076324>,  <36.823833, 31.645670, 37.172066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438850, 31.696871, 37.076324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269939, -0.359061, 0.893425,
		0.028418, 0.924495, 0.380134,
		-0.962458, 0.128003, -0.239354,
		36.150112, 31.735271, 37.004517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531906, 31.966143, 37.681564>,  <36.823833, 31.645670, 37.172066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531906, 31.966143, 37.681564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237980, 31.769911, 37.494213>,  <36.061623, 31.652172, 37.381802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237980, 31.769911, 37.494213>,  <36.531906, 31.966143, 37.681564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237980, 31.769911, 37.494213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316560, -0.362668, 0.876505,
		-0.599860, 0.792341, 0.111198,
		-0.734819, -0.490579, -0.468373,
		36.017536, 31.622738, 37.353703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819687, 32.152298, 37.969593>,  <36.531906, 31.966143, 37.681564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819687, 32.152298, 37.969593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809437, 31.787909, 37.804924>,  <35.803288, 31.569277, 37.706123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809437, 31.787909, 37.804924>,  <35.819687, 32.152298, 37.969593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809437, 31.787909, 37.804924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447686, -0.357752, 0.819506,
		-0.893824, 0.205300, -0.398662,
		-0.025623, -0.910969, -0.411677,
		35.801750, 31.514618, 37.681419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257214, 31.901840, 38.277451>,  <35.819687, 32.152298, 37.969593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257214, 31.901840, 38.277451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416782, 31.581947, 38.097988>,  <35.512524, 31.390011, 37.990311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416782, 31.581947, 38.097988>,  <35.257214, 31.901840, 38.277451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416782, 31.581947, 38.097988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320119, -0.579943, 0.749126,
		-0.859293, -0.155221, -0.487362,
		0.398922, -0.799733, -0.448652,
		35.536461, 31.342028, 37.963394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746006, 31.373140, 38.287640>,  <35.257214, 31.901840, 38.277451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746006, 31.373140, 38.287640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101845, 31.196054, 38.242695>,  <35.315350, 31.089804, 38.215729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101845, 31.196054, 38.242695>,  <34.746006, 31.373140, 38.287640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101845, 31.196054, 38.242695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198554, -0.596376, 0.777761,
		-0.411334, -0.669583, -0.618436,
		0.889596, -0.442712, -0.112361,
		35.368725, 31.063240, 38.208988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560158, 30.619736, 38.348045>,  <34.746006, 31.373140, 38.287640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560158, 30.619736, 38.348045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950649, 30.674467, 38.415287>,  <35.184944, 30.707306, 38.455631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950649, 30.674467, 38.415287>,  <34.560158, 30.619736, 38.348045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950649, 30.674467, 38.415287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057038, -0.586055, 0.808261,
		0.209107, -0.798635, -0.564319,
		0.976228, 0.136826, 0.168101,
		35.243519, 30.715515, 38.465717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887985, 29.909723, 38.502331>,  <34.560158, 30.619736, 38.348045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887985, 29.909723, 38.502331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149601, 30.171591, 38.653931>,  <35.306568, 30.328712, 38.744892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149601, 30.171591, 38.653931>,  <34.887985, 29.909723, 38.502331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149601, 30.171591, 38.653931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071187, -0.552063, 0.830758,
		0.753106, -0.516366, -0.407673,
		0.654036, 0.654670, 0.379004,
		35.345814, 30.367992, 38.767632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282578, 29.523331, 38.963573>,  <34.887985, 29.909723, 38.502331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282578, 29.523331, 38.963573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392155, 29.889530, 39.081432>,  <35.457901, 30.109249, 39.152149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392155, 29.889530, 39.081432>,  <35.282578, 29.523331, 38.963573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392155, 29.889530, 39.081432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283083, -0.369552, 0.885040,
		0.919141, -0.159040, -0.360398,
		0.273942, 0.915499, 0.294649,
		35.474339, 30.164181, 39.169827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023861, 29.507931, 39.279480>,  <35.282578, 29.523331, 38.963573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023861, 29.507931, 39.279480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799595, 29.809353, 39.416779>,  <35.665035, 29.990206, 39.499157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799595, 29.809353, 39.416779>,  <36.023861, 29.507931, 39.279480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799595, 29.809353, 39.416779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210203, -0.271420, 0.939226,
		0.800921, 0.598738, -0.006225,
		-0.560661, 0.753554, 0.343243,
		35.631397, 30.035419, 39.519753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271198, 29.718935, 39.891918>,  <36.023861, 29.507931, 39.279480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271198, 29.718935, 39.891918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922146, 29.909449, 39.935120>,  <35.712715, 30.023756, 39.961040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922146, 29.909449, 39.935120>,  <36.271198, 29.718935, 39.891918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922146, 29.909449, 39.935120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016424, -0.249637, 0.968200,
		0.488097, 0.843112, 0.225664,
		-0.872635, 0.476282, 0.108000,
		35.660355, 30.052334, 39.967518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339062, 30.128162, 40.506435>,  <36.271198, 29.718935, 39.891918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339062, 30.128162, 40.506435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951794, 30.045986, 40.449245>,  <35.719433, 29.996681, 40.414932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951794, 30.045986, 40.449245>,  <36.339062, 30.128162, 40.506435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951794, 30.045986, 40.449245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076788, -0.299875, 0.950883,
		-0.238224, 0.931595, 0.274554,
		-0.968170, -0.205441, -0.142973,
		35.661343, 29.984354, 40.406353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996624, 30.437204, 41.094933>,  <36.339062, 30.128162, 40.506435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996624, 30.437204, 41.094933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707195, 30.205450, 40.944862>,  <35.533539, 30.066399, 40.854820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707195, 30.205450, 40.944862>,  <35.996624, 30.437204, 41.094933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707195, 30.205450, 40.944862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367671, -0.136496, 0.919884,
		-0.584177, 0.803544, -0.114258,
		-0.723572, -0.579384, -0.375177,
		35.490124, 30.031635, 40.832310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411819, 30.608824, 41.526207>,  <35.996624, 30.437204, 41.094933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411819, 30.608824, 41.526207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317974, 30.258968, 41.356518>,  <35.261665, 30.049055, 41.254704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317974, 30.258968, 41.356518>,  <35.411819, 30.608824, 41.526207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317974, 30.258968, 41.356518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328799, -0.339282, 0.881350,
		-0.914794, 0.346262, -0.207979,
		-0.234615, -0.874637, -0.424224,
		35.247589, 29.996576, 41.229252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875404, 30.467554, 41.970860>,  <35.411819, 30.608824, 41.526207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875404, 30.467554, 41.970860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982273, 30.128725, 41.787083>,  <35.046394, 29.925426, 41.676819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982273, 30.128725, 41.787083>,  <34.875404, 30.467554, 41.970860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982273, 30.128725, 41.787083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360757, -0.530021, 0.767420,
		-0.893574, -0.039285, -0.447193,
		0.267170, -0.847074, -0.459441,
		35.062424, 29.874603, 41.649250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327450, 30.072643, 41.847321>,  <34.875404, 30.467554, 41.970860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327450, 30.072643, 41.847321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643074, 29.831553, 41.894810>,  <34.832451, 29.686897, 41.923306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643074, 29.831553, 41.894810>,  <34.327450, 30.072643, 41.847321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643074, 29.831553, 41.894810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513490, -0.541041, 0.666035,
		-0.337202, -0.586510, -0.736411,
		0.789065, -0.602728, 0.118726,
		34.879795, 29.650734, 41.930428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079552, 29.457449, 42.150482>,  <34.327450, 30.072643, 41.847321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079552, 29.457449, 42.150482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469265, 29.367565, 42.157207>,  <34.703091, 29.313635, 42.161243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469265, 29.367565, 42.157207>,  <34.079552, 29.457449, 42.150482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469265, 29.367565, 42.157207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173734, -0.701560, 0.691108,
		-0.143503, -0.676254, -0.722556,
		0.974281, -0.224709, 0.016812,
		34.761551, 29.300152, 42.162251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079357, 28.803917, 42.007511>,  <34.079552, 29.457449, 42.150482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079357, 28.803917, 42.007511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422325, 28.874226, 42.200981>,  <34.628105, 28.916410, 42.317062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422325, 28.874226, 42.200981>,  <34.079357, 28.803917, 42.007511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422325, 28.874226, 42.200981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174239, -0.785198, 0.594227,
		0.484229, -0.593775, -0.642615,
		0.857416, 0.175773, 0.483675,
		34.679550, 28.926958, 42.346085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467094, 28.121019, 42.186283>,  <34.079357, 28.803917, 42.007511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467094, 28.121019, 42.186283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570000, 28.389385, 42.464474>,  <34.631744, 28.550406, 42.631390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570000, 28.389385, 42.464474>,  <34.467094, 28.121019, 42.186283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570000, 28.389385, 42.464474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061038, -0.706983, 0.704591,
		0.964412, -0.223716, -0.140930,
		0.257263, 0.670914, 0.695478,
		34.647179, 28.590660, 42.673119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723442, 27.657866, 42.717693>,  <34.467094, 28.121019, 42.186283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723442, 27.657866, 42.717693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694511, 28.004114, 42.915874>,  <34.677151, 28.211863, 43.034782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694511, 28.004114, 42.915874>,  <34.723442, 27.657866, 42.717693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694511, 28.004114, 42.915874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238551, -0.497347, 0.834110,
		0.968433, -0.057860, 0.242467,
		-0.072329, 0.865620, 0.495449,
		34.672813, 28.263800, 43.064510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025803, 27.562807, 43.263344>,  <34.723442, 27.657866, 42.717693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025803, 27.562807, 43.263344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832111, 27.898706, 43.361603>,  <34.715897, 28.100246, 43.420559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832111, 27.898706, 43.361603>,  <35.025803, 27.562807, 43.263344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832111, 27.898706, 43.361603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230366, -0.393219, 0.890118,
		0.844069, 0.374433, 0.383858,
		-0.484230, 0.839749, 0.245647,
		34.686844, 28.150631, 43.435295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242638, 27.735323, 43.985836>,  <35.025803, 27.562807, 43.263344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242638, 27.735323, 43.985836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898327, 27.932264, 43.934231>,  <34.691738, 28.050430, 43.903267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898327, 27.932264, 43.934231>,  <35.242638, 27.735323, 43.985836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898327, 27.932264, 43.934231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345179, -0.378426, 0.858863,
		0.374044, 0.783824, 0.495693,
		-0.860780, 0.492356, -0.129011,
		34.640095, 28.079971, 43.895527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806545, 28.219437, 44.244072>,  <35.242638, 27.735323, 43.985836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806545, 28.219437, 44.244072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126251, 28.019104, 44.376945>,  <36.318073, 27.898905, 44.456669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126251, 28.019104, 44.376945>,  <35.806545, 28.219437, 44.244072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126251, 28.019104, 44.376945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409109, 0.048531, -0.911194,
		0.440235, 0.864182, 0.243685,
		0.799264, -0.500833, 0.332180,
		36.366032, 27.868855, 44.476601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428291, 28.656891, 44.074730>,  <35.806545, 28.219437, 44.244072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428291, 28.656891, 44.074730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521652, 28.269285, 44.107063>,  <36.577667, 28.036722, 44.126461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521652, 28.269285, 44.107063>,  <36.428291, 28.656891, 44.074730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521652, 28.269285, 44.107063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473288, 0.040593, -0.879972,
		0.849425, 0.243640, 0.468099,
		0.233398, -0.969016, 0.080831,
		36.591671, 27.978580, 44.131313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086235, 28.529650, 43.680962>,  <36.428291, 28.656891, 44.074730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086235, 28.529650, 43.680962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101517, 28.132605, 43.727024>,  <37.110687, 27.894377, 43.754662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101517, 28.132605, 43.727024>,  <37.086235, 28.529650, 43.680962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101517, 28.132605, 43.727024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559322, -0.074250, -0.825618,
		0.828069, 0.095950, 0.552354,
		0.038206, -0.992613, 0.115151,
		37.112980, 27.834820, 43.761570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793095, 28.332235, 43.645496>,  <37.086235, 28.529650, 43.680962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793095, 28.332235, 43.645496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562740, 28.022467, 43.540710>,  <37.424526, 27.836605, 43.477840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562740, 28.022467, 43.540710>,  <37.793095, 28.332235, 43.645496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562740, 28.022467, 43.540710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332003, 0.071284, -0.940581,
		0.747081, -0.628640, 0.216059,
		-0.575885, -0.774423, -0.261966,
		37.389977, 27.790140, 43.462120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160488, 27.975485, 43.217010>,  <37.793095, 28.332235, 43.645496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160488, 27.975485, 43.217010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798203, 27.831234, 43.127903>,  <37.580830, 27.744684, 43.074440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798203, 27.831234, 43.127903>,  <38.160488, 27.975485, 43.217010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798203, 27.831234, 43.127903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182415, 0.142777, -0.972800,
		0.382624, -0.921717, -0.063531,
		-0.905717, -0.360627, -0.222765,
		37.526485, 27.723045, 43.061073>
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
