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
	<24.361782, 35.439026, 35.107666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503597, 35.083279, 34.992207>,  <24.588686, 34.869831, 34.922932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503597, 35.083279, 34.992207>,  <24.361782, 35.439026, 35.107666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.503597, 35.083279, 34.992207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838222, 0.165504, 0.519608,
		-0.414352, -0.426175, 0.804169,
		0.354537, -0.889372, -0.288652,
		24.609959, 34.816467, 34.905609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603313, 35.059887, 35.751404>,  <24.361782, 35.439026, 35.107666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603313, 35.059887, 35.751404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803099, 35.000999, 35.409908>,  <24.922970, 34.965668, 35.205013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803099, 35.000999, 35.409908>,  <24.603313, 35.059887, 35.751404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.803099, 35.000999, 35.409908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865732, 0.121571, 0.485520,
		0.032312, -0.981604, 0.188173,
		0.499464, -0.147219, -0.853734,
		24.952938, 34.956833, 35.153790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059341, 34.391907, 35.604317>,  <24.603313, 35.059887, 35.751404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059341, 34.391907, 35.604317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210085, 34.710350, 35.414921>,  <25.300531, 34.901417, 35.301285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210085, 34.710350, 35.414921>,  <25.059341, 34.391907, 35.604317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210085, 34.710350, 35.414921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846937, -0.089175, 0.524161,
		0.375066, -0.598548, -0.707860,
		0.376859, 0.796108, -0.473486,
		25.323143, 34.949184, 35.272877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.513138, 33.932011, 35.920815>,  <25.059341, 34.391907, 35.604317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.513138, 33.932011, 35.920815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374784, 34.307308, 35.917515>,  <24.291773, 34.532486, 35.915535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374784, 34.307308, 35.917515>,  <24.513138, 33.932011, 35.920815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.374784, 34.307308, 35.917515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653660, -0.234650, 0.719492,
		0.673122, 0.254250, 0.694452,
		-0.345884, 0.938241, -0.008245,
		24.271019, 34.588779, 35.915043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631075, 34.277748, 36.637985>,  <24.513138, 33.932011, 35.920815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631075, 34.277748, 36.637985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296297, 34.363186, 36.436428>,  <24.095430, 34.414448, 36.315495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296297, 34.363186, 36.436428>,  <24.631075, 34.277748, 36.637985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296297, 34.363186, 36.436428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545544, -0.252119, 0.799261,
		0.043674, 0.943830, 0.327532,
		-0.836944, 0.213590, -0.503890,
		24.045214, 34.427261, 36.285259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309441, 34.027901, 36.585583>,  <24.631075, 34.277748, 36.637985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309441, 34.027901, 36.585583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323158, 33.694893, 36.806755>,  <25.331388, 33.495087, 36.939461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323158, 33.694893, 36.806755>,  <25.309441, 34.027901, 36.585583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323158, 33.694893, 36.806755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273101, -0.524396, -0.806489,
		0.961374, 0.178665, 0.209378,
		0.034294, -0.832519, 0.552935,
		25.333447, 33.445137, 36.972637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111942, 33.857670, 36.687740>,  <25.309441, 34.027901, 36.585583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111942, 33.857670, 36.687740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858305, 33.548386, 36.684437>,  <25.706123, 33.362816, 36.682453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858305, 33.548386, 36.684437>,  <26.111942, 33.857670, 36.687740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858305, 33.548386, 36.684437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493676, -0.396582, -0.773955,
		0.595155, -0.494838, 0.633187,
		-0.634093, -0.773213, -0.008262,
		25.668077, 33.316422, 36.681957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457466, 33.219608, 36.668682>,  <26.111942, 33.857670, 36.687740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457466, 33.219608, 36.668682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107498, 33.139053, 36.492519>,  <25.897518, 33.090721, 36.386822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107498, 33.139053, 36.492519>,  <26.457466, 33.219608, 36.668682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107498, 33.139053, 36.492519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484042, -0.335679, -0.808098,
		0.014906, -0.920196, 0.391173,
		-0.874918, -0.201390, -0.440410,
		25.845022, 33.078636, 36.360397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559265, 32.635971, 36.390995>,  <26.457466, 33.219608, 36.668682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559265, 32.635971, 36.390995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244978, 32.755875, 36.174557>,  <26.056406, 32.827816, 36.044693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244978, 32.755875, 36.174557>,  <26.559265, 32.635971, 36.390995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244978, 32.755875, 36.174557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318466, -0.553883, -0.769281,
		-0.530306, -0.776761, 0.339733,
		-0.785719, 0.299762, -0.541099,
		26.009262, 32.845802, 36.012226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297400, 32.040348, 36.044750>,  <26.559265, 32.635971, 36.390995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297400, 32.040348, 36.044750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063482, 32.294281, 35.842758>,  <25.923132, 32.446640, 35.721561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063482, 32.294281, 35.842758>,  <26.297400, 32.040348, 36.044750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063482, 32.294281, 35.842758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085061, -0.571101, -0.816460,
		-0.806711, -0.520414, 0.279976,
		-0.584792, 0.634832, -0.504981,
		25.888044, 32.484730, 35.691265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778231, 31.612616, 35.767574>,  <26.297400, 32.040348, 36.044750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778231, 31.612616, 35.767574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826950, 31.942566, 35.546761>,  <25.856182, 32.140537, 35.414272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826950, 31.942566, 35.546761>,  <25.778231, 31.612616, 35.767574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826950, 31.942566, 35.546761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031836, -0.552646, -0.832808,
		-0.992044, 0.119008, -0.041050,
		0.121797, 0.824875, -0.552038,
		25.863489, 32.190029, 35.381149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183765, 31.700836, 35.320309>,  <25.778231, 31.612616, 35.767574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183765, 31.700836, 35.320309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515036, 31.871462, 35.174889>,  <25.713799, 31.973837, 35.087635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515036, 31.871462, 35.174889>,  <25.183765, 31.700836, 35.320309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515036, 31.871462, 35.174889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102553, -0.522371, -0.846529,
		-0.551005, 0.738358, -0.388870,
		0.828176, 0.426562, -0.363550,
		25.763489, 31.999430, 35.065823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052061, 31.880230, 34.558662>,  <25.183765, 31.700836, 35.320309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052061, 31.880230, 34.558662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449625, 31.894960, 34.600201>,  <25.688164, 31.903799, 34.625122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449625, 31.894960, 34.600201>,  <25.052061, 31.880230, 34.558662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449625, 31.894960, 34.600201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108254, -0.150882, -0.982607,
		-0.020515, 0.987866, -0.153950,
		0.993912, 0.036824, 0.103845,
		25.747799, 31.906008, 34.631355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157181, 32.317291, 34.088688>,  <25.052061, 31.880230, 34.558662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157181, 32.317291, 34.088688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490465, 32.109314, 34.163963>,  <25.690435, 31.984526, 34.209129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490465, 32.109314, 34.163963>,  <25.157181, 32.317291, 34.088688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490465, 32.109314, 34.163963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183132, -0.061645, -0.981154,
		0.521749, 0.851971, 0.043856,
		0.833211, -0.519947, 0.188186,
		25.740429, 31.953329, 34.220421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884718, 32.744995, 34.128021>,  <25.157181, 32.317291, 34.088688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884718, 32.744995, 34.128021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824760, 32.376160, 33.985310>,  <25.788786, 32.154858, 33.899681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824760, 32.376160, 33.985310>,  <25.884718, 32.744995, 34.128021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824760, 32.376160, 33.985310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469728, 0.383945, -0.794948,
		0.869993, 0.048433, -0.490679,
		-0.149892, -0.922085, -0.356780,
		25.779793, 32.099533, 33.878277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428984, 32.688427, 34.469696>,  <25.884718, 32.744995, 34.128021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428984, 32.688427, 34.469696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108833, 32.509411, 34.629246>,  <25.916742, 32.402000, 34.724976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108833, 32.509411, 34.629246>,  <26.428984, 32.688427, 34.469696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108833, 32.509411, 34.629246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069425, 0.730070, 0.679837,
		-0.595465, 0.516433, -0.615401,
		-0.800376, -0.447543, 0.398878,
		25.868721, 32.375149, 34.748909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989656, 33.254826, 34.641136>,  <26.428984, 32.688427, 34.469696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989656, 33.254826, 34.641136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941801, 32.931095, 34.871155>,  <25.913088, 32.736855, 35.009167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941801, 32.931095, 34.871155>,  <25.989656, 33.254826, 34.641136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941801, 32.931095, 34.871155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075411, 0.584937, 0.807566,
		-0.989950, 0.053250, -0.131013,
		-0.119637, -0.809329, 0.575042,
		25.905910, 32.688297, 35.043667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432064, 33.489613, 35.022099>,  <25.989656, 33.254826, 34.641136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432064, 33.489613, 35.022099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573414, 33.175056, 35.224766>,  <25.658224, 32.986320, 35.346367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573414, 33.175056, 35.224766>,  <25.432064, 33.489613, 35.022099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573414, 33.175056, 35.224766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336454, 0.398529, 0.853214,
		-0.872884, -0.471972, -0.123756,
		0.353372, -0.786395, 0.506667,
		25.679426, 32.939137, 35.376766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920742, 33.230709, 35.432484>,  <25.432064, 33.489613, 35.022099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920742, 33.230709, 35.432484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256456, 33.098904, 35.605469>,  <25.457884, 33.019821, 35.709259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256456, 33.098904, 35.605469>,  <24.920742, 33.230709, 35.432484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256456, 33.098904, 35.605469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331782, 0.319739, 0.887517,
		-0.430724, -0.888362, 0.159026,
		0.839284, -0.329513, 0.432462,
		25.508242, 33.000050, 35.735207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.688639, 32.821014, 36.017017>,  <24.920742, 33.230709, 35.432484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.688639, 32.821014, 36.017017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061909, 32.938286, 36.100182>,  <25.285872, 33.008648, 36.150082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061909, 32.938286, 36.100182>,  <24.688639, 32.821014, 36.017017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061909, 32.938286, 36.100182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309598, 0.361864, 0.879320,
		0.182564, -0.884930, 0.428451,
		0.933177, 0.293180, 0.207909,
		25.341862, 33.026241, 36.162556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779057, 32.617958, 36.668262>,  <24.688639, 32.821014, 36.017017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779057, 32.617958, 36.668262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016644, 32.932713, 36.601315>,  <25.159197, 33.121563, 36.561146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016644, 32.932713, 36.601315>,  <24.779057, 32.617958, 36.668262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016644, 32.932713, 36.601315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224356, 0.361818, 0.904849,
		0.772571, -0.499900, 0.391451,
		0.593968, 0.786885, -0.167374,
		25.194834, 33.168777, 36.551102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336615, 32.717941, 37.260208>,  <24.779057, 32.617958, 36.668262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336615, 32.717941, 37.260208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165232, 33.039074, 37.094372>,  <25.062403, 33.231754, 36.994869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165232, 33.039074, 37.094372>,  <25.336615, 32.717941, 37.260208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165232, 33.039074, 37.094372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354931, 0.272415, 0.894323,
		0.830933, 0.530329, 0.168232,
		-0.428456, 0.802833, -0.414589,
		25.036695, 33.279922, 36.969994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949774, 33.160908, 37.740662>,  <25.336615, 32.717941, 37.260208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949774, 33.160908, 37.740662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092331, 33.500919, 37.895805>,  <25.177866, 33.704926, 37.988892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092331, 33.500919, 37.895805>,  <24.949774, 33.160908, 37.740662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092331, 33.500919, 37.895805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008363, -0.418002, 0.908407,
		0.934298, -0.320507, -0.156083,
		0.356394, 0.850029, 0.387858,
		25.199249, 33.755928, 38.012161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658894, 33.040298, 38.147739>,  <24.949774, 33.160908, 37.740662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658894, 33.040298, 38.147739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456999, 33.366539, 38.260895>,  <25.335861, 33.562283, 38.328789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456999, 33.366539, 38.260895>,  <25.658894, 33.040298, 38.147739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456999, 33.366539, 38.260895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083990, -0.279748, 0.956392,
		0.859178, 0.506487, 0.072696,
		-0.504737, 0.815606, 0.282893,
		25.305578, 33.611221, 38.345764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936394, 33.145412, 38.776981>,  <25.658894, 33.040298, 38.147739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936394, 33.145412, 38.776981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589663, 33.341709, 38.741695>,  <25.381624, 33.459488, 38.720524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589663, 33.341709, 38.741695>,  <25.936394, 33.145412, 38.776981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589663, 33.341709, 38.741695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240002, -0.255577, 0.936525,
		0.437048, 0.832977, 0.339320,
		-0.866827, 0.490744, -0.088217,
		25.329615, 33.488934, 38.715229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759823, 33.240192, 38.519032>,  <25.936394, 33.145412, 38.776981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759823, 33.240192, 38.519032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543060, 33.112549, 38.208031>,  <26.413002, 33.035961, 38.021431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543060, 33.112549, 38.208031>,  <26.759823, 33.240192, 38.519032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543060, 33.112549, 38.208031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666074, -0.727232, -0.165768,
		-0.512524, -0.607703, 0.606643,
		-0.541909, -0.319109, -0.777499,
		26.380487, 33.016815, 37.974781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679657, 32.619061, 38.708263>,  <26.759823, 33.240192, 38.519032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679657, 32.619061, 38.708263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630220, 32.659527, 38.313396>,  <26.600559, 32.683807, 38.076477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630220, 32.659527, 38.313396>,  <26.679657, 32.619061, 38.708263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630220, 32.659527, 38.313396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705614, -0.690503, -0.159105,
		-0.697735, -0.716220, 0.013955,
		-0.123590, 0.101166, -0.987163,
		26.593143, 32.689877, 38.017246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649479, 31.969429, 38.259624>,  <26.679657, 32.619061, 38.708263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649479, 31.969429, 38.259624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795307, 32.302917, 38.093735>,  <26.882805, 32.503010, 37.994202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795307, 32.302917, 38.093735>,  <26.649479, 31.969429, 38.259624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795307, 32.302917, 38.093735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862095, -0.470544, -0.188097,
		-0.351966, -0.288956, -0.890294,
		0.364571, 0.833722, -0.414723,
		26.904678, 32.553036, 37.969318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545052, 31.169502, 38.317623>,  <26.649479, 31.969429, 38.259624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545052, 31.169502, 38.317623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561823, 30.845587, 38.083534>,  <26.571886, 30.651237, 37.943081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561823, 30.845587, 38.083534>,  <26.545052, 31.169502, 38.317623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561823, 30.845587, 38.083534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078944, -0.586592, 0.806026,
		-0.995997, 0.012406, -0.088522,
		0.041927, -0.809788, -0.585223,
		26.574402, 30.602650, 37.907967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924585, 30.750580, 38.420986>,  <26.545052, 31.169502, 38.317623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924585, 30.750580, 38.420986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202204, 30.506336, 38.268429>,  <26.368774, 30.359791, 38.176895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202204, 30.506336, 38.268429>,  <25.924585, 30.750580, 38.420986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202204, 30.506336, 38.268429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110238, -0.613648, 0.781846,
		-0.711443, -0.500591, -0.493211,
		0.694043, -0.610610, -0.381392,
		26.410418, 30.323154, 38.154011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631205, 30.054575, 38.536690>,  <25.924585, 30.750580, 38.420986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631205, 30.054575, 38.536690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026890, 30.033077, 38.482189>,  <26.264301, 30.020178, 38.449490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026890, 30.033077, 38.482189>,  <25.631205, 30.054575, 38.536690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026890, 30.033077, 38.482189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070083, -0.643159, 0.762518,
		-0.128614, -0.763844, -0.632456,
		0.989215, -0.053746, -0.136251,
		26.323654, 30.016953, 38.441315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794920, 29.332243, 38.438225>,  <25.631205, 30.054575, 38.536690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794920, 29.332243, 38.438225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068171, 29.557516, 38.624199>,  <26.232121, 29.692680, 38.735783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068171, 29.557516, 38.624199>,  <25.794920, 29.332243, 38.438225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068171, 29.557516, 38.624199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134141, -0.529039, 0.837928,
		0.717875, -0.634778, -0.285855,
		0.683127, 0.563183, 0.464934,
		26.273109, 29.726471, 38.763680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197960, 28.870935, 38.875465>,  <25.794920, 29.332243, 38.438225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197960, 28.870935, 38.875465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274958, 29.225416, 39.044033>,  <26.321156, 29.438105, 39.145172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274958, 29.225416, 39.044033>,  <26.197960, 28.870935, 38.875465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274958, 29.225416, 39.044033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063729, -0.439830, 0.895817,
		0.979226, -0.145584, -0.141142,
		0.192495, 0.886203, 0.421415,
		26.332706, 29.491278, 39.170456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849960, 28.823181, 39.298992>,  <26.197960, 28.870935, 38.875465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849960, 28.823181, 39.298992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670555, 29.144567, 39.455597>,  <26.562912, 29.337399, 39.549561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670555, 29.144567, 39.455597>,  <26.849960, 28.823181, 39.298992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670555, 29.144567, 39.455597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123276, -0.378243, 0.917461,
		0.885234, 0.459758, 0.070600,
		-0.448514, 0.803464, 0.391510,
		26.536001, 29.385607, 39.573051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405483, 29.271774, 39.640537>,  <26.849960, 28.823181, 39.298992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405483, 29.271774, 39.640537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031977, 29.242468, 39.780659>,  <26.807873, 29.224884, 39.864731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031977, 29.242468, 39.780659>,  <27.405483, 29.271774, 39.640537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031977, 29.242468, 39.780659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342108, -0.470168, 0.813575,
		0.105095, 0.879531, 0.464091,
		-0.933765, -0.073266, 0.350307,
		26.751846, 29.220488, 39.885750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358624, 29.445429, 40.472054>,  <27.405483, 29.271774, 39.640537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358624, 29.445429, 40.472054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014774, 29.642263, 40.417068>,  <26.808464, 29.760365, 40.384075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014774, 29.642263, 40.417068>,  <27.358624, 29.445429, 40.472054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014774, 29.642263, 40.417068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457949, -0.622776, 0.634376,
		0.226556, 0.608278, 0.760704,
		-0.859625, 0.492085, -0.137466,
		26.756887, 29.789888, 40.375828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104446, 29.799728, 41.052433>,  <27.358624, 29.445429, 40.472054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104446, 29.799728, 41.052433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770487, 29.692705, 40.860035>,  <26.570112, 29.628492, 40.744595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770487, 29.692705, 40.860035>,  <27.104446, 29.799728, 41.052433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770487, 29.692705, 40.860035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275086, -0.554085, 0.785696,
		-0.476732, 0.788291, 0.389003,
		-0.834898, -0.267557, -0.480998,
		26.520018, 29.612438, 40.715736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559664, 29.997690, 41.473705>,  <27.104446, 29.799728, 41.052433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559664, 29.997690, 41.473705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392241, 29.715887, 41.244453>,  <26.291786, 29.546804, 41.106903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392241, 29.715887, 41.244453>,  <26.559664, 29.997690, 41.473705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392241, 29.715887, 41.244453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258479, -0.512561, 0.818823,
		-0.870631, 0.490867, 0.032436,
		-0.418558, -0.704508, -0.573130,
		26.266674, 29.504534, 41.072514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816763, 29.837950, 41.666584>,  <26.559664, 29.997690, 41.473705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816763, 29.837950, 41.666584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024622, 29.532372, 41.513557>,  <26.149338, 29.349026, 41.421741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024622, 29.532372, 41.513557>,  <25.816763, 29.837950, 41.666584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024622, 29.532372, 41.513557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014623, -0.455657, 0.890036,
		-0.854256, -0.456911, -0.247952,
		0.519647, -0.763943, -0.382566,
		26.180517, 29.303188, 41.398788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342886, 29.299953, 41.613441>,  <25.816763, 29.837950, 41.666584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342886, 29.299953, 41.613441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727039, 29.213861, 41.684250>,  <25.957531, 29.162207, 41.726734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727039, 29.213861, 41.684250>,  <25.342886, 29.299953, 41.613441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.727039, 29.213861, 41.684250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245719, -0.354377, 0.902241,
		-0.131460, -0.909996, -0.393225,
		0.960386, -0.215231, 0.177017,
		26.015156, 29.149292, 41.737354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355320, 28.533957, 41.760960>,  <25.342886, 29.299953, 41.613441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355320, 28.533957, 41.760960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615273, 28.770998, 41.951317>,  <25.771244, 28.913223, 42.065533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615273, 28.770998, 41.951317>,  <25.355320, 28.533957, 41.760960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615273, 28.770998, 41.951317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347248, -0.325462, 0.879485,
		0.676070, -0.736815, -0.005732,
		0.649884, 0.592602, 0.475893,
		25.810238, 28.948778, 42.094086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999361, 28.332401, 41.511116>,  <25.355320, 28.533957, 41.760960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999361, 28.332401, 41.511116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366417, 28.361126, 41.354771>,  <26.586651, 28.378361, 41.260963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366417, 28.361126, 41.354771>,  <25.999361, 28.332401, 41.511116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366417, 28.361126, 41.354771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291146, -0.547969, -0.784197,
		-0.270496, 0.833411, -0.481932,
		0.917642, 0.071809, -0.390867,
		26.641710, 28.382669, 41.237511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118990, 28.410019, 40.745125>,  <25.999361, 28.332401, 41.511116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118990, 28.410019, 40.745125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952194, 28.721315, 40.932938>,  <25.852118, 28.908092, 41.045628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952194, 28.721315, 40.932938>,  <26.118990, 28.410019, 40.745125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952194, 28.721315, 40.932938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153171, 0.569369, -0.807687,
		-0.895913, -0.264876, -0.356623,
		-0.416988, 0.778241, 0.469534,
		25.827097, 28.954788, 41.073799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683823, 28.650053, 40.312191>,  <26.118990, 28.410019, 40.745125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683823, 28.650053, 40.312191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834269, 28.943373, 40.538750>,  <25.924536, 29.119364, 40.674686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834269, 28.943373, 40.538750>,  <25.683823, 28.650053, 40.312191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834269, 28.943373, 40.538750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141480, 0.558666, -0.817237,
		-0.915707, 0.387511, 0.106377,
		0.376117, 0.733299, 0.566399,
		25.947104, 29.163363, 40.708668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308973, 29.282568, 40.244419>,  <25.683823, 28.650053, 40.312191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308973, 29.282568, 40.244419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677454, 29.379578, 40.366119>,  <25.898542, 29.437784, 40.439140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677454, 29.379578, 40.366119>,  <25.308973, 29.282568, 40.244419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677454, 29.379578, 40.366119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147003, 0.507061, -0.849282,
		-0.360245, 0.827086, 0.431454,
		0.921202, 0.242525, 0.304250,
		25.953815, 29.452335, 40.457394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498074, 29.894390, 40.300949>,  <25.308973, 29.282568, 40.244419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498074, 29.894390, 40.300949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855961, 29.734266, 40.221722>,  <26.070694, 29.638193, 40.174187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855961, 29.734266, 40.221722>,  <25.498074, 29.894390, 40.300949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855961, 29.734266, 40.221722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098757, 0.609811, -0.786370,
		0.435573, 0.684020, 0.585143,
		0.894720, -0.400308, -0.198066,
		26.124376, 29.614174, 40.162300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974327, 30.429905, 40.084801>,  <25.498074, 29.894390, 40.300949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974327, 30.429905, 40.084801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127922, 30.088081, 39.944923>,  <26.220079, 29.882988, 39.860996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127922, 30.088081, 39.944923>,  <25.974327, 30.429905, 40.084801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127922, 30.088081, 39.944923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256640, 0.462583, -0.848618,
		0.886955, 0.236113, 0.396939,
		0.383987, -0.854557, -0.349694,
		26.243118, 29.831715, 39.840015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618500, 30.590746, 39.730251>,  <25.974327, 30.429905, 40.084801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618500, 30.590746, 39.730251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540894, 30.234547, 39.565632>,  <26.494329, 30.020826, 39.466862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540894, 30.234547, 39.565632>,  <26.618500, 30.590746, 39.730251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540894, 30.234547, 39.565632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257084, 0.358702, -0.897352,
		0.946714, -0.279901, 0.159340,
		-0.194014, -0.890499, -0.411546,
		26.482689, 29.967398, 39.442169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187326, 30.519648, 39.329094>,  <26.618500, 30.590746, 39.730251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187326, 30.519648, 39.329094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899096, 30.288866, 39.175266>,  <26.726156, 30.150398, 39.082970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899096, 30.288866, 39.175266>,  <27.187326, 30.519648, 39.329094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899096, 30.288866, 39.175266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265469, 0.282810, -0.921708,
		0.640541, -0.766254, -0.050624,
		-0.720579, -0.576952, -0.384568,
		26.682922, 30.115780, 39.059895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577517, 30.345352, 38.673462>,  <27.187326, 30.519648, 39.329094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577517, 30.345352, 38.673462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196993, 30.222101, 38.670261>,  <26.968678, 30.148149, 38.668343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196993, 30.222101, 38.670261>,  <27.577517, 30.345352, 38.673462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196993, 30.222101, 38.670261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067804, -0.183874, -0.980609,
		0.300684, -0.933406, 0.195813,
		-0.951311, -0.308130, -0.008001,
		26.911600, 30.129662, 38.667862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615984, 29.741684, 38.269234>,  <27.577517, 30.345352, 38.673462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615984, 29.741684, 38.269234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227852, 29.829109, 38.310589>,  <26.994972, 29.881563, 38.335403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227852, 29.829109, 38.310589>,  <27.615984, 29.741684, 38.269234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227852, 29.829109, 38.310589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115003, -0.041078, -0.992516,
		-0.212679, -0.974958, 0.064995,
		-0.970331, 0.218562, 0.103387,
		26.936752, 29.894678, 38.341606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220135, 29.480909, 37.721489>,  <27.615984, 29.741684, 38.269234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220135, 29.480909, 37.721489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983429, 29.775217, 37.853218>,  <26.841406, 29.951801, 37.932255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983429, 29.775217, 37.853218>,  <27.220135, 29.480909, 37.721489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983429, 29.775217, 37.853218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111107, 0.330192, -0.937352,
		-0.798417, -0.591282, -0.113646,
		-0.591765, 0.735771, 0.329326,
		26.805899, 29.995949, 37.952015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817131, 29.546391, 37.167366>,  <27.220135, 29.480909, 37.721489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817131, 29.546391, 37.167366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766714, 29.877592, 37.385914>,  <26.736464, 30.076313, 37.517044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766714, 29.877592, 37.385914>,  <26.817131, 29.546391, 37.167366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766714, 29.877592, 37.385914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083326, 0.539981, -0.837542,
		-0.988519, -0.151091, 0.000934,
		-0.126041, 0.828005, 0.546371,
		26.728901, 30.125994, 37.549824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323215, 29.956938, 36.945637>,  <26.817131, 29.546391, 37.167366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323215, 29.956938, 36.945637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595407, 30.197350, 37.113308>,  <26.758722, 30.341597, 37.213909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595407, 30.197350, 37.113308>,  <26.323215, 29.956938, 36.945637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595407, 30.197350, 37.113308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122479, 0.657291, -0.743618,
		-0.722458, 0.454677, 0.520887,
		0.680480, 0.601031, 0.419177,
		26.799551, 30.377659, 37.239059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066038, 30.593885, 37.183716>,  <26.323215, 29.956938, 36.945637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066038, 30.593885, 37.183716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443382, 30.621569, 37.053928>,  <26.669788, 30.638178, 36.976055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443382, 30.621569, 37.053928>,  <26.066038, 30.593885, 37.183716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443382, 30.621569, 37.053928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299491, 0.598403, -0.743114,
		0.142733, 0.798201, 0.585238,
		0.943362, 0.069207, -0.324466,
		26.726391, 30.642330, 36.956589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211445, 31.298946, 37.169666>,  <26.066038, 30.593885, 37.183716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211445, 31.298946, 37.169666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403248, 31.093264, 36.885223>,  <26.518330, 30.969854, 36.714558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403248, 31.093264, 36.885223>,  <26.211445, 31.298946, 37.169666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403248, 31.093264, 36.885223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197426, 0.726352, -0.658358,
		0.855042, 0.456077, 0.246772,
		0.479505, -0.514205, -0.711103,
		26.547100, 30.939003, 36.671894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743065, 31.694145, 36.803768>,  <26.211445, 31.298946, 37.169666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743065, 31.694145, 36.803768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579393, 31.425617, 36.556576>,  <26.481190, 31.264502, 36.408260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579393, 31.425617, 36.556576>,  <26.743065, 31.694145, 36.803768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579393, 31.425617, 36.556576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403087, 0.740596, -0.537622,
		0.818592, 0.029117, -0.573637,
		-0.409180, -0.671319, -0.617983,
		26.456638, 31.224222, 36.371181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034531, 31.920778, 37.365070>,  <26.743065, 31.694145, 36.803768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034531, 31.920778, 37.365070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147003, 32.127834, 37.688301>,  <27.214487, 32.252068, 37.882240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147003, 32.127834, 37.688301>,  <27.034531, 31.920778, 37.365070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147003, 32.127834, 37.688301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956622, 0.218083, 0.193170,
		-0.076235, -0.827339, 0.556506,
		0.281182, 0.517639, 0.808076,
		27.231358, 32.283127, 37.930725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458380, 31.557095, 36.984894>,  <27.034531, 31.920778, 37.365070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458380, 31.557095, 36.984894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829092, 31.680885, 37.070034>,  <28.051519, 31.755159, 37.121117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829092, 31.680885, 37.070034>,  <27.458380, 31.557095, 36.984894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829092, 31.680885, 37.070034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365045, -0.875575, -0.316403,
		0.088444, 0.370934, -0.924438,
		0.926779, 0.309478, 0.212847,
		28.107126, 31.773729, 37.133888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785461, 31.294807, 36.424149>,  <27.458380, 31.557095, 36.984894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785461, 31.294807, 36.424149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025356, 31.359486, 36.737625>,  <28.169294, 31.398293, 36.925709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025356, 31.359486, 36.737625>,  <27.785461, 31.294807, 36.424149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025356, 31.359486, 36.737625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399998, -0.908811, -0.118595,
		0.693048, 0.384599, -0.609727,
		0.599738, 0.161698, 0.783689,
		28.205278, 31.407995, 36.972733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432631, 31.011093, 36.271606>,  <27.785461, 31.294807, 36.424149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432631, 31.011093, 36.271606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399542, 31.038271, 36.669308>,  <28.379688, 31.054579, 36.907928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399542, 31.038271, 36.669308>,  <28.432631, 31.011093, 36.271606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399542, 31.038271, 36.669308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249936, -0.964373, 0.086699,
		0.964722, 0.255672, 0.062794,
		-0.082723, 0.067946, 0.994254,
		28.374725, 31.058655, 36.967583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915472, 31.557667, 36.163017>,  <28.432631, 31.011093, 36.271606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915472, 31.557667, 36.163017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112816, 31.899868, 36.225895>,  <29.231222, 32.105190, 36.263622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112816, 31.899868, 36.225895>,  <28.915472, 31.557667, 36.163017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112816, 31.899868, 36.225895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166965, 0.270497, -0.948132,
		-0.853650, 0.441525, 0.276292,
		0.493360, 0.855504, 0.157190,
		29.260824, 32.156521, 36.273052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483917, 32.080997, 35.799339>,  <28.915472, 31.557667, 36.163017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483917, 32.080997, 35.799339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843668, 32.245331, 35.859119>,  <29.059519, 32.343929, 35.894985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843668, 32.245331, 35.859119>,  <28.483917, 32.080997, 35.799339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843668, 32.245331, 35.859119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009705, 0.360528, -0.932698,
		-0.437065, 0.837397, 0.328238,
		0.899378, 0.410835, 0.149447,
		29.113482, 32.368580, 35.903954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472429, 32.764416, 35.470158>,  <28.483917, 32.080997, 35.799339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472429, 32.764416, 35.470158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859543, 32.676929, 35.520046>,  <29.091812, 32.624439, 35.549980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859543, 32.676929, 35.520046>,  <28.472429, 32.764416, 35.470158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859543, 32.676929, 35.520046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225391, 0.531823, -0.816311,
		0.112208, 0.818125, 0.563987,
		0.967785, -0.218714, 0.124723,
		29.149878, 32.611317, 35.557465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965616, 33.393787, 35.418621>,  <28.472429, 32.764416, 35.470158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965616, 33.393787, 35.418621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129885, 33.057526, 35.277397>,  <29.228445, 32.855770, 35.192661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129885, 33.057526, 35.277397>,  <28.965616, 33.393787, 35.418621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129885, 33.057526, 35.277397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181594, 0.454875, -0.871844,
		0.893517, 0.293927, 0.339461,
		0.410671, -0.840652, -0.353063,
		29.253086, 32.805328, 35.171478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635263, 33.619366, 35.047863>,  <28.965616, 33.393787, 35.418621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635263, 33.619366, 35.047863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482286, 33.279507, 34.902622>,  <29.390501, 33.075592, 34.815475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482286, 33.279507, 34.902622>,  <29.635263, 33.619366, 35.047863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482286, 33.279507, 34.902622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019501, 0.400312, -0.916171,
		0.923774, -0.343300, -0.169664,
		-0.382440, -0.849644, -0.363104,
		29.367554, 33.024612, 34.793690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139406, 33.391083, 34.555195>,  <29.635263, 33.619366, 35.047863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139406, 33.391083, 34.555195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751856, 33.312569, 34.494862>,  <29.519325, 33.265461, 34.458660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751856, 33.312569, 34.494862>,  <30.139406, 33.391083, 34.555195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751856, 33.312569, 34.494862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003220, 0.619267, -0.785174,
		0.247523, -0.760251, -0.600626,
		-0.968877, -0.196283, -0.150835,
		29.461193, 33.253685, 34.449612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926426, 32.986847, 33.902351>,  <30.139406, 33.391083, 34.555195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926426, 32.986847, 33.902351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649231, 33.259052, 33.997574>,  <29.482914, 33.422375, 34.054707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649231, 33.259052, 33.997574>,  <29.926426, 32.986847, 33.902351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649231, 33.259052, 33.997574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131200, 0.443719, -0.886510,
		-0.708911, -0.583107, -0.396775,
		-0.692987, 0.680514, 0.238054,
		29.441336, 33.463207, 34.068989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488266, 33.067787, 33.358707>,  <29.926426, 32.986847, 33.902351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488266, 33.067787, 33.358707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470358, 33.398357, 33.583214>,  <29.459612, 33.596699, 33.717918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470358, 33.398357, 33.583214>,  <29.488266, 33.067787, 33.358707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470358, 33.398357, 33.583214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120836, 0.562188, -0.818134,
		-0.991662, 0.031192, -0.125032,
		-0.044772, 0.826421, 0.561270,
		29.456926, 33.646282, 33.751595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887136, 33.423855, 33.094879>,  <29.488266, 33.067787, 33.358707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887136, 33.423855, 33.094879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130108, 33.683277, 33.278358>,  <29.275890, 33.838928, 33.388447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130108, 33.683277, 33.278358>,  <28.887136, 33.423855, 33.094879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130108, 33.683277, 33.278358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001680, 0.576388, -0.817174,
		-0.794371, 0.497148, 0.349026,
		0.607431, 0.648553, 0.458701,
		29.312338, 33.877842, 33.415970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553806, 34.116646, 33.099327>,  <28.887136, 33.423855, 33.094879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553806, 34.116646, 33.099327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950539, 34.166588, 33.109768>,  <29.188578, 34.196552, 33.116032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950539, 34.166588, 33.109768>,  <28.553806, 34.116646, 33.099327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950539, 34.166588, 33.109768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047002, 0.548012, -0.835149,
		-0.118578, 0.827100, 0.549404,
		0.991832, 0.124853, 0.026107,
		29.248089, 34.204044, 33.117599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597712, 34.766151, 32.804928>,  <28.553806, 34.116646, 33.099327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597712, 34.766151, 32.804928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976793, 34.639786, 32.823051>,  <29.204243, 34.563965, 32.833923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976793, 34.639786, 32.823051>,  <28.597712, 34.766151, 32.804928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976793, 34.639786, 32.823051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206993, 0.500394, -0.840690,
		0.242915, 0.806105, 0.539618,
		0.947706, -0.315913, 0.045305,
		29.261105, 34.545013, 32.836643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059254, 35.344025, 32.613209>,  <28.597712, 34.766151, 32.804928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059254, 35.344025, 32.613209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288227, 35.024361, 32.539822>,  <29.425611, 34.832561, 32.495789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288227, 35.024361, 32.539822>,  <29.059254, 35.344025, 32.613209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288227, 35.024361, 32.539822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353600, 0.442479, -0.824123,
		0.739789, 0.406880, 0.535873,
		0.572432, -0.799162, -0.183469,
		29.459957, 34.784611, 32.484779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784214, 35.659470, 32.439137>,  <29.059254, 35.344025, 32.613209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784214, 35.659470, 32.439137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810066, 35.285450, 32.299702>,  <29.825577, 35.061039, 32.216042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810066, 35.285450, 32.299702>,  <29.784214, 35.659470, 32.439137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810066, 35.285450, 32.299702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452827, 0.338763, -0.824734,
		0.889253, -0.104548, 0.445308,
		0.064630, -0.935045, -0.348588,
		29.829454, 35.004936, 32.195126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315031, 35.665855, 31.996452>,  <29.784214, 35.659470, 32.439137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315031, 35.665855, 31.996452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161064, 35.317978, 31.872860>,  <30.068684, 35.109249, 31.798704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161064, 35.317978, 31.872860>,  <30.315031, 35.665855, 31.996452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161064, 35.317978, 31.872860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267424, 0.215320, -0.939213,
		0.883360, -0.444147, 0.149697,
		-0.384916, -0.869696, -0.308981,
		30.045589, 35.057068, 31.780165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862125, 35.310108, 31.584780>,  <30.315031, 35.665855, 31.996452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862125, 35.310108, 31.584780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513491, 35.166229, 31.451538>,  <30.304310, 35.079903, 31.371593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513491, 35.166229, 31.451538>,  <30.862125, 35.310108, 31.584780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513491, 35.166229, 31.451538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253229, 0.251482, -0.934148,
		0.419778, -0.898541, -0.128103,
		-0.871586, -0.359695, -0.333104,
		30.252014, 35.058319, 31.351606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038157, 35.037300, 30.907202>,  <30.862125, 35.310108, 31.584780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038157, 35.037300, 30.907202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638773, 35.059166, 30.911079>,  <30.399143, 35.072285, 30.913406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638773, 35.059166, 30.911079>,  <31.038157, 35.037300, 30.907202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638773, 35.059166, 30.911079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012862, 0.397627, -0.917457,
		-0.054011, -0.915917, -0.397717,
		-0.998457, 0.054668, 0.009696,
		30.339235, 35.075565, 30.913988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844015, 34.770668, 30.282196>,  <31.038157, 35.037300, 30.907202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844015, 34.770668, 30.282196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533941, 34.993847, 30.400705>,  <30.347897, 35.127754, 30.471811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533941, 34.993847, 30.400705>,  <30.844015, 34.770668, 30.282196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533941, 34.993847, 30.400705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042134, 0.513604, -0.856992,
		-0.630326, -0.651846, -0.421648,
		-0.775187, 0.557950, 0.296273,
		30.301386, 35.161232, 30.489588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388750, 34.778179, 29.646229>,  <30.844015, 34.770668, 30.282196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388750, 34.778179, 29.646229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303467, 35.100658, 29.866985>,  <30.252296, 35.294147, 29.999439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303467, 35.100658, 29.866985>,  <30.388750, 34.778179, 29.646229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303467, 35.100658, 29.866985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082135, 0.577669, -0.812128,
		-0.973549, -0.127821, -0.189379,
		-0.213206, 0.806201, 0.551890,
		30.239506, 35.342518, 30.032553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972006, 35.132339, 29.163853>,  <30.388750, 34.778179, 29.646229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972006, 35.132339, 29.163853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057375, 35.409725, 29.439116>,  <30.108597, 35.576157, 29.604273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057375, 35.409725, 29.439116>,  <29.972006, 35.132339, 29.163853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057375, 35.409725, 29.439116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352834, 0.711555, -0.607616,
		-0.911021, -0.113126, 0.396538,
		0.213421, 0.693463, 0.688157,
		30.121401, 35.617764, 29.645563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391111, 35.616283, 29.177288>,  <29.972006, 35.132339, 29.163853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391111, 35.616283, 29.177288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688219, 35.814610, 29.357269>,  <29.866484, 35.933605, 29.465258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688219, 35.814610, 29.357269>,  <29.391111, 35.616283, 29.177288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688219, 35.814610, 29.357269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182570, 0.796547, -0.576352,
		-0.644173, 0.345949, 0.682173,
		0.742771, 0.495814, 0.449954,
		29.911051, 35.963352, 29.492256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118835, 36.342800, 29.329424>,  <29.391111, 35.616283, 29.177288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118835, 36.342800, 29.329424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516748, 36.360050, 29.292440>,  <29.755497, 36.370399, 29.270250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516748, 36.360050, 29.292440>,  <29.118835, 36.342800, 29.329424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516748, 36.360050, 29.292440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094669, 0.727984, -0.679026,
		0.038025, 0.684236, 0.728269,
		0.994782, 0.043124, -0.092458,
		29.815184, 36.372986, 29.264704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242088, 37.005291, 29.237160>,  <29.118835, 36.342800, 29.329424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242088, 37.005291, 29.237160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571236, 36.833260, 29.088614>,  <29.768724, 36.730042, 28.999485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571236, 36.833260, 29.088614>,  <29.242088, 37.005291, 29.237160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571236, 36.833260, 29.088614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032343, 0.687942, -0.725045,
		0.567308, 0.584607, 0.579997,
		0.822870, -0.430082, -0.371367,
		29.818096, 36.704235, 28.977203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742319, 37.551739, 29.153675>,  <29.242088, 37.005291, 29.237160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742319, 37.551739, 29.153675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859339, 37.247620, 28.921688>,  <29.929550, 37.065147, 28.782495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859339, 37.247620, 28.921688>,  <29.742319, 37.551739, 29.153675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859339, 37.247620, 28.921688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166303, 0.637713, -0.752108,
		0.941679, 0.123577, 0.313001,
		0.292548, -0.760297, -0.579970,
		29.947104, 37.019531, 28.747698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436222, 37.751247, 28.798536>,  <29.742319, 37.551739, 29.153675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436222, 37.751247, 28.798536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290871, 37.461422, 28.564285>,  <30.203659, 37.287525, 28.423735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290871, 37.461422, 28.564285>,  <30.436222, 37.751247, 28.798536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290871, 37.461422, 28.564285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158359, 0.571411, -0.805240,
		0.918085, -0.385345, -0.092897,
		-0.363378, -0.724567, -0.585627,
		30.181858, 37.244053, 28.388597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880564, 37.800312, 28.203554>,  <30.436222, 37.751247, 28.798536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880564, 37.800312, 28.203554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587334, 37.563217, 28.070126>,  <30.411396, 37.420959, 27.990068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587334, 37.563217, 28.070126>,  <30.880564, 37.800312, 28.203554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587334, 37.563217, 28.070126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191972, 0.290178, -0.937520,
		0.652494, -0.751308, -0.098933,
		-0.733074, -0.592734, -0.333570,
		30.367411, 37.385399, 27.970055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157276, 37.446861, 27.573971>,  <30.880564, 37.800312, 28.203554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157276, 37.446861, 27.573971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758444, 37.416771, 27.568815>,  <30.519144, 37.398716, 27.565722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758444, 37.416771, 27.568815>,  <31.157276, 37.446861, 27.573971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758444, 37.416771, 27.568815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005194, 0.235330, -0.971902,
		0.076149, -0.969000, -0.235034,
		-0.997083, -0.075230, -0.012887,
		30.459318, 37.394203, 27.564949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023857, 37.020535, 27.028761>,  <31.157276, 37.446861, 27.573971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023857, 37.020535, 27.028761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677639, 37.209682, 27.094761>,  <30.469908, 37.323170, 27.134361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677639, 37.209682, 27.094761>,  <31.023857, 37.020535, 27.028761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677639, 37.209682, 27.094761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084342, 0.187128, -0.978708,
		-0.493674, -0.861035, -0.122085,
		-0.865547, 0.472866, 0.165002,
		30.417974, 37.351543, 27.144262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560974, 36.835243, 26.411535>,  <31.023857, 37.020535, 27.028761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560974, 36.835243, 26.411535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392708, 37.162350, 26.568659>,  <30.291748, 37.358612, 26.662933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392708, 37.162350, 26.568659>,  <30.560974, 36.835243, 26.411535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392708, 37.162350, 26.568659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063653, 0.405312, -0.911960,
		-0.904979, -0.408635, -0.118448,
		-0.420667, 0.817765, 0.392809,
		30.266508, 37.407681, 26.686502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005884, 37.054070, 25.929075>,  <30.560974, 36.835243, 26.411535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005884, 37.054070, 25.929075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090580, 37.379498, 26.145691>,  <30.141397, 37.574757, 26.275660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090580, 37.379498, 26.145691>,  <30.005884, 37.054070, 25.929075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090580, 37.379498, 26.145691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122895, 0.571868, -0.811088,
		-0.969568, 0.105188, 0.221072,
		0.211741, 0.813574, 0.541538,
		30.154102, 37.623569, 26.308153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455261, 37.437649, 25.838003>,  <30.005884, 37.054070, 25.929075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455261, 37.437649, 25.838003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760590, 37.674641, 25.941006>,  <29.943787, 37.816833, 26.002808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760590, 37.674641, 25.941006>,  <29.455261, 37.437649, 25.838003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760590, 37.674641, 25.941006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259847, 0.646526, -0.717276,
		-0.591454, 0.480601, 0.647461,
		0.763323, 0.592476, 0.257508,
		29.989586, 37.852383, 26.018257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189741, 38.123955, 25.830814>,  <29.455261, 37.437649, 25.838003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189741, 38.123955, 25.830814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580021, 38.209831, 25.813311>,  <29.814190, 38.261356, 25.802809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580021, 38.209831, 25.813311>,  <29.189741, 38.123955, 25.830814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580021, 38.209831, 25.813311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195650, 0.763800, -0.615086,
		-0.098630, 0.608702, 0.787245,
		0.975702, 0.214690, -0.043759,
		29.872732, 38.274239, 25.800182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214504, 38.887566, 25.790009>,  <29.189741, 38.123955, 25.830814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214504, 38.887566, 25.790009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569374, 38.755379, 25.661190>,  <29.782295, 38.676067, 25.583899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569374, 38.755379, 25.661190>,  <29.214504, 38.887566, 25.790009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569374, 38.755379, 25.661190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025880, 0.732461, -0.680317,
		0.460709, 0.595225, 0.658373,
		0.887174, -0.330467, -0.322046,
		29.835526, 38.656239, 25.564575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611509, 39.502983, 25.797422>,  <29.214504, 38.887566, 25.790009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611509, 39.502983, 25.797422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744303, 39.241032, 25.525856>,  <29.823978, 39.083862, 25.362917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744303, 39.241032, 25.525856>,  <29.611509, 39.502983, 25.797422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744303, 39.241032, 25.525856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209023, 0.650771, -0.729936,
		0.919835, 0.384236, 0.079162,
		0.331984, -0.654874, -0.678916,
		29.843899, 39.044571, 25.322182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222683, 39.895905, 25.594578>,  <29.611509, 39.502983, 25.797422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222683, 39.895905, 25.594578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156246, 39.634945, 25.298796>,  <30.116383, 39.478371, 25.121326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156246, 39.634945, 25.298796>,  <30.222683, 39.895905, 25.594578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156246, 39.634945, 25.298796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032321, 0.753070, -0.657146,
		0.985580, -0.085248, -0.146167,
		-0.166094, -0.652395, -0.739455,
		30.106419, 39.439228, 25.076960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713287, 39.995579, 24.919807>,  <30.222683, 39.895905, 25.594578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713287, 39.995579, 24.919807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398817, 39.792786, 24.778444>,  <30.210135, 39.671112, 24.693626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398817, 39.792786, 24.778444>,  <30.713287, 39.995579, 24.919807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398817, 39.792786, 24.778444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029987, 0.539885, -0.841205,
		0.617274, -0.671933, -0.409242,
		-0.786177, -0.506982, -0.353406,
		30.162964, 39.640690, 24.672422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971010, 39.829151, 24.234905>,  <30.713287, 39.995579, 24.919807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971010, 39.829151, 24.234905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572432, 39.833443, 24.268311>,  <30.333284, 39.836018, 24.288353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572432, 39.833443, 24.268311>,  <30.971010, 39.829151, 24.234905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572432, 39.833443, 24.268311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070910, 0.427892, -0.901044,
		-0.045404, -0.903766, -0.425612,
		-0.996449, 0.010731, 0.083514,
		30.273497, 39.836662, 24.293365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742378, 39.707741, 23.544561>,  <30.971010, 39.829151, 24.234905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742378, 39.707741, 23.544561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414425, 39.863197, 23.712727>,  <30.217653, 39.956470, 23.813625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414425, 39.863197, 23.712727>,  <30.742378, 39.707741, 23.544561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414425, 39.863197, 23.712727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226508, 0.454211, -0.861619,
		-0.525819, -0.801654, -0.284369,
		-0.819883, 0.388643, 0.420414,
		30.168459, 39.979790, 23.838850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263035, 39.683578, 23.016626>,  <30.742378, 39.707741, 23.544561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263035, 39.683578, 23.016626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125204, 39.948048, 23.283195>,  <30.042505, 40.106731, 23.443136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125204, 39.948048, 23.283195>,  <30.263035, 39.683578, 23.016626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125204, 39.948048, 23.283195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217864, 0.634192, -0.741846,
		-0.913128, -0.400811, -0.074480,
		-0.344574, 0.661174, 0.666421,
		30.021832, 40.146400, 23.483122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622795, 39.947388, 22.768408>,  <30.263035, 39.683578, 23.016626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622795, 39.947388, 22.768408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765936, 40.218727, 23.025091>,  <29.851820, 40.381531, 23.179100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765936, 40.218727, 23.025091>,  <29.622795, 39.947388, 22.768408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765936, 40.218727, 23.025091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281277, 0.733603, -0.618636,
		-0.890408, 0.040882, 0.453324,
		0.357850, 0.678348, 0.641707,
		29.873291, 40.422230, 23.217604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142893, 40.477600, 22.797890>,  <29.622795, 39.947388, 22.768408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142893, 40.477600, 22.797890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468266, 40.663914, 22.937246>,  <29.663488, 40.775703, 23.020861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468266, 40.663914, 22.937246>,  <29.142893, 40.477600, 22.797890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468266, 40.663914, 22.937246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208264, 0.792473, -0.573247,
		-0.543100, 0.393740, 0.741628,
		0.813430, 0.465785, 0.348391,
		29.712294, 40.803650, 23.041763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936234, 41.189323, 22.643684>,  <29.142893, 40.477600, 22.797890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936234, 41.189323, 22.643684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322798, 41.174957, 22.745476>,  <29.554737, 41.166336, 22.806551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322798, 41.174957, 22.745476>,  <28.936234, 41.189323, 22.643684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322798, 41.174957, 22.745476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177017, 0.810878, -0.557802,
		-0.186315, 0.584113, 0.789999,
		0.966412, -0.035916, 0.254476,
		29.612720, 41.164181, 22.821819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110981, 41.851784, 22.950304>,  <28.936234, 41.189323, 22.643684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110981, 41.851784, 22.950304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448467, 41.685436, 22.814539>,  <29.650959, 41.585629, 22.733080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448467, 41.685436, 22.814539>,  <29.110981, 41.851784, 22.950304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448467, 41.685436, 22.814539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095580, 0.738581, -0.667355,
		0.528216, 0.530615, 0.662899,
		0.843714, -0.415867, -0.339414,
		29.701582, 41.560677, 22.712715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592531, 42.334126, 23.019165>,  <29.110981, 41.851784, 22.950304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592531, 42.334126, 23.019165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700130, 42.082291, 22.727615>,  <29.764690, 41.931190, 22.552685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700130, 42.082291, 22.727615>,  <29.592531, 42.334126, 23.019165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700130, 42.082291, 22.727615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063381, 0.766701, -0.638867,
		0.961053, 0.125657, 0.246146,
		0.268998, -0.629586, -0.728876,
		29.780830, 41.893414, 22.508953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086317, 42.805347, 22.662550>,  <29.592531, 42.334126, 23.019165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086317, 42.805347, 22.662550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018360, 42.499439, 22.413950>,  <29.977585, 42.315895, 22.264790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018360, 42.499439, 22.413950>,  <30.086317, 42.805347, 22.662550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018360, 42.499439, 22.413950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142567, 0.604962, -0.783388,
		0.975095, -0.221698, 0.006251,
		-0.169894, -0.764769, -0.621502,
		29.967392, 42.270008, 22.227499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712517, 42.836380, 22.118114>,  <30.086317, 42.805347, 22.662550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712517, 42.836380, 22.118114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375406, 42.653439, 22.004581>,  <30.173140, 42.543674, 21.936460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375406, 42.653439, 22.004581>,  <30.712517, 42.836380, 22.118114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375406, 42.653439, 22.004581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038065, 0.576632, -0.816117,
		0.536915, -0.677001, -0.503381,
		-0.842777, -0.457346, -0.283832,
		30.122574, 42.516235, 21.919432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777813, 42.684525, 21.325066>,  <30.712517, 42.836380, 22.118114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777813, 42.684525, 21.325066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385077, 42.653244, 21.394203>,  <30.149435, 42.634476, 21.435686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385077, 42.653244, 21.394203>,  <30.777813, 42.684525, 21.325066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385077, 42.653244, 21.394203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187065, 0.550786, -0.813413,
		-0.031591, -0.830975, -0.555413,
		-0.981840, -0.078201, 0.172846,
		30.090525, 42.629784, 21.446056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469702, 42.356239, 20.779812>,  <30.777813, 42.684525, 21.325066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469702, 42.356239, 20.779812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164867, 42.561600, 20.937620>,  <29.981966, 42.684814, 21.032305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164867, 42.561600, 20.937620>,  <30.469702, 42.356239, 20.779812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164867, 42.561600, 20.937620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211503, 0.378503, -0.901111,
		-0.611955, -0.770168, -0.179868,
		-0.762088, 0.513397, 0.394520,
		29.936241, 42.715618, 21.055977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032080, 42.231628, 20.243662>,  <30.469702, 42.356239, 20.779812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032080, 42.231628, 20.243662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879528, 42.545612, 20.438961>,  <29.787996, 42.734005, 20.556141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879528, 42.545612, 20.438961>,  <30.032080, 42.231628, 20.243662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879528, 42.545612, 20.438961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328834, 0.378424, -0.865254,
		-0.863955, -0.490541, 0.113799,
		-0.381378, 0.784961, 0.488248,
		29.765114, 42.781101, 20.585436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343573, 42.273323, 20.282368>,  <30.032080, 42.231628, 20.243662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343573, 42.273323, 20.282368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525543, 42.628605, 20.256670>,  <29.634726, 42.841774, 20.241251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525543, 42.628605, 20.256670>,  <29.343573, 42.273323, 20.282368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525543, 42.628605, 20.256670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220398, 0.042398, -0.974488,
		-0.862824, 0.457482, 0.215047,
		0.454928, 0.888208, -0.064246,
		29.662022, 42.895065, 20.237396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068537, 42.531063, 19.713835>,  <29.343573, 42.273323, 20.282368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068537, 42.531063, 19.713835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375076, 42.778564, 19.782940>,  <29.559000, 42.927067, 19.824402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375076, 42.778564, 19.782940>,  <29.068537, 42.531063, 19.713835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375076, 42.778564, 19.782940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116220, 0.130951, -0.984553,
		-0.631822, 0.774592, 0.028442,
		0.766351, 0.618757, 0.172761,
		29.604982, 42.964191, 19.834768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853064, 43.287434, 19.486900>,  <29.068537, 42.531063, 19.713835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853064, 43.287434, 19.486900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235432, 43.175125, 19.452539>,  <29.464853, 43.107738, 19.431923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235432, 43.175125, 19.452539>,  <28.853064, 43.287434, 19.486900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235432, 43.175125, 19.452539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024031, 0.216770, -0.975927,
		0.292637, 0.934974, 0.200468,
		0.955922, -0.280774, -0.085903,
		29.522207, 43.090893, 19.426769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297468, 43.762661, 19.119448>,  <28.853064, 43.287434, 19.486900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297468, 43.762661, 19.119448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416273, 43.383118, 19.076653>,  <29.487556, 43.155392, 19.050976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416273, 43.383118, 19.076653>,  <29.297468, 43.762661, 19.119448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416273, 43.383118, 19.076653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179807, 0.054462, -0.982193,
		0.937792, 0.310959, -0.154436,
		0.297011, -0.948861, -0.106987,
		29.505377, 43.098457, 19.044556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894989, 44.354385, 19.029112>,  <29.297468, 43.762661, 19.119448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894989, 44.354385, 19.029112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914091, 44.752323, 18.993332>,  <28.925552, 44.991085, 18.971863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914091, 44.752323, 18.993332>,  <28.894989, 44.354385, 19.029112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914091, 44.752323, 18.993332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863254, 0.086161, 0.497361,
		0.502505, 0.053467, 0.862919,
		0.047757, 0.994845, -0.089452,
		28.928419, 45.050777, 18.966496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122793, 44.325264, 18.958109>,  <28.894989, 44.354385, 19.029112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122793, 44.325264, 18.958109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315153, 44.666969, 19.037081>,  <28.430569, 44.871990, 19.084463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315153, 44.666969, 19.037081>,  <28.122793, 44.325264, 18.958109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315153, 44.666969, 19.037081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296448, -0.370337, 0.880323,
		0.825140, -0.364818, -0.431338,
		0.480898, 0.854259, 0.197430,
		28.459423, 44.923248, 19.096310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232874, 44.228569, 19.771770>,  <28.122793, 44.325264, 18.958109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232874, 44.228569, 19.771770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944977, 44.503880, 19.808111>,  <27.772240, 44.669064, 19.829916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944977, 44.503880, 19.808111>,  <28.232874, 44.228569, 19.771770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944977, 44.503880, 19.808111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593054, -0.677580, 0.434940,
		0.360915, 0.259165, 0.895865,
		-0.719741, 0.688273, 0.090850,
		27.729053, 44.710361, 19.835365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139271, 44.584362, 20.427782>,  <28.232874, 44.228569, 19.771770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139271, 44.584362, 20.427782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773075, 44.566200, 20.267874>,  <27.553358, 44.555305, 20.171928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773075, 44.566200, 20.267874>,  <28.139271, 44.584362, 20.427782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773075, 44.566200, 20.267874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298649, -0.589132, 0.750821,
		-0.269608, 0.806760, 0.525785,
		-0.915489, -0.045402, -0.399773,
		27.498428, 44.552578, 20.147942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583275, 45.034634, 20.827240>,  <28.139271, 44.584362, 20.427782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583275, 45.034634, 20.827240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481808, 44.691578, 20.648308>,  <27.420927, 44.485744, 20.540947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481808, 44.691578, 20.648308>,  <27.583275, 45.034634, 20.827240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481808, 44.691578, 20.648308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089882, -0.481357, 0.871904,
		-0.963107, 0.180965, 0.199190,
		-0.253666, -0.857640, -0.447333,
		27.405708, 44.434284, 20.514109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064804, 44.607773, 21.193760>,  <27.583275, 45.034634, 20.827240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064804, 44.607773, 21.193760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266941, 44.347988, 20.966488>,  <27.388224, 44.192116, 20.830126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266941, 44.347988, 20.966488>,  <27.064804, 44.607773, 21.193760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266941, 44.347988, 20.966488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114549, -0.602123, 0.790143,
		-0.855282, -0.464378, -0.229884,
		0.505343, -0.649462, -0.568179,
		27.418545, 44.153149, 20.796034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676100, 43.840580, 20.986773>,  <27.064804, 44.607773, 21.193760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676100, 43.840580, 20.986773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067585, 43.887569, 21.054089>,  <27.302477, 43.915764, 21.094479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067585, 43.887569, 21.054089>,  <26.676100, 43.840580, 20.986773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067585, 43.887569, 21.054089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084909, -0.514754, 0.853123,
		0.186850, -0.849251, -0.493822,
		0.978712, 0.117476, 0.168290,
		27.361198, 43.922813, 21.104576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906731, 43.190895, 21.141895>,  <26.676100, 43.840580, 20.986773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906731, 43.190895, 21.141895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189335, 43.441071, 21.274361>,  <27.358896, 43.591175, 21.353840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189335, 43.441071, 21.274361>,  <26.906731, 43.190895, 21.141895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189335, 43.441071, 21.274361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045633, -0.507230, 0.860602,
		0.706231, -0.592911, -0.386904,
		0.706509, 0.625439, 0.331165,
		27.401287, 43.628704, 21.373711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304750, 42.826107, 21.576488>,  <26.906731, 43.190895, 21.141895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304750, 42.826107, 21.576488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408083, 43.191456, 21.702353>,  <27.470081, 43.410667, 21.777870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408083, 43.191456, 21.702353>,  <27.304750, 42.826107, 21.576488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408083, 43.191456, 21.702353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011424, -0.322805, 0.946397,
		0.965989, -0.248077, -0.072956,
		0.258330, 0.913375, 0.314660,
		27.485582, 43.465469, 21.796751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933550, 42.800995, 22.043020>,  <27.304750, 42.826107, 21.576488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933550, 42.800995, 22.043020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713339, 43.125687, 22.121004>,  <27.581211, 43.320503, 22.167793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713339, 43.125687, 22.121004>,  <27.933550, 42.800995, 22.043020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713339, 43.125687, 22.121004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048894, -0.264485, 0.963149,
		0.833382, 0.520710, 0.185296,
		-0.550530, 0.811732, 0.194958,
		27.548180, 43.369205, 22.179491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035828, 42.772831, 22.716606>,  <27.933550, 42.800995, 22.043020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035828, 42.772831, 22.716606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799078, 43.095158, 22.709127>,  <27.657028, 43.288551, 22.704639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799078, 43.095158, 22.709127>,  <28.035828, 42.772831, 22.716606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799078, 43.095158, 22.709127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112758, -0.059809, 0.991821,
		0.798105, 0.589140, 0.126261,
		-0.591873, 0.805815, -0.018696,
		27.621515, 43.336903, 22.703518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234756, 43.322258, 23.190334>,  <28.035828, 42.772831, 22.716606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234756, 43.322258, 23.190334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844933, 43.391964, 23.133961>,  <27.611038, 43.433788, 23.100138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844933, 43.391964, 23.133961>,  <28.234756, 43.322258, 23.190334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844933, 43.391964, 23.133961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138313, 0.027152, 0.990016,
		0.176349, 0.984325, -0.002359,
		-0.974562, 0.174262, -0.140933,
		27.552565, 43.444244, 23.091681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181711, 43.972557, 23.436756>,  <28.234756, 43.322258, 23.190334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181711, 43.972557, 23.436756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819357, 43.804157, 23.455236>,  <27.601944, 43.703117, 23.466326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819357, 43.804157, 23.455236>,  <28.181711, 43.972557, 23.436756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819357, 43.804157, 23.455236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037277, 0.029410, 0.998872,
		-0.421881, 0.906585, -0.010949,
		-0.905885, -0.420997, 0.046202,
		27.547592, 43.677856, 23.469097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845886, 44.335323, 23.983036>,  <28.181711, 43.972557, 23.436756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845886, 44.335323, 23.983036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595503, 44.025146, 23.949873>,  <27.445272, 43.839043, 23.929976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595503, 44.025146, 23.949873>,  <27.845886, 44.335323, 23.983036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595503, 44.025146, 23.949873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244832, 0.094465, 0.964952,
		-0.740428, 0.624318, -0.248983,
		-0.625957, -0.775437, -0.082909,
		27.407715, 43.792515, 23.925001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135559, 44.531860, 24.337088>,  <27.845886, 44.335323, 23.983036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135559, 44.531860, 24.337088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207878, 44.138466, 24.333618>,  <27.251268, 43.902431, 24.331537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207878, 44.138466, 24.333618>,  <27.135559, 44.531860, 24.337088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207878, 44.138466, 24.333618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286831, -0.061159, 0.956027,
		-0.940766, -0.170359, -0.293150,
		0.180797, -0.983482, -0.008672,
		27.262117, 43.843422, 24.331017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710033, 44.291580, 24.797171>,  <27.135559, 44.531860, 24.337088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710033, 44.291580, 24.797171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936205, 43.966305, 24.742012>,  <27.071909, 43.771141, 24.708916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936205, 43.966305, 24.742012>,  <26.710033, 44.291580, 24.797171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936205, 43.966305, 24.742012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168320, -0.277437, 0.945884,
		-0.807439, -0.511620, -0.293746,
		0.565430, -0.813187, -0.137897,
		27.105833, 43.722347, 24.700644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335871, 43.913280, 25.181845>,  <26.710033, 44.291580, 24.797171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335871, 43.913280, 25.181845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677103, 43.709503, 25.136721>,  <26.881842, 43.587238, 25.109646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677103, 43.709503, 25.136721>,  <26.335871, 43.913280, 25.181845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677103, 43.709503, 25.136721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179720, -0.489852, 0.853080,
		-0.489852, -0.707471, -0.509440,
		-0.853080, 0.509440, 0.112809,
		26.933027, 43.556671, 25.102879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168774, 43.092815, 25.326803>,  <26.335871, 43.913280, 25.181845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168774, 43.092815, 25.326803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565464, 43.114193, 25.373499>,  <26.803478, 43.127018, 25.401516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565464, 43.114193, 25.373499>,  <26.168774, 43.092815, 25.326803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565464, 43.114193, 25.373499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072609, -0.516420, 0.853251,
		0.105886, -0.854666, -0.508266,
		0.991724, 0.053443, 0.116738,
		26.862982, 43.130226, 25.408520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484919, 42.373863, 25.386837>,  <26.168774, 43.092815, 25.326803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484919, 42.373863, 25.386837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716312, 42.649979, 25.560667>,  <26.855148, 42.815647, 25.664965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716312, 42.649979, 25.560667>,  <26.484919, 42.373863, 25.386837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716312, 42.649979, 25.560667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086904, -0.581889, 0.808612,
		0.811052, -0.430003, -0.396602,
		0.578483, 0.690292, 0.434573,
		26.889858, 42.857067, 25.691038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030439, 42.012848, 25.581158>,  <26.484919, 42.373863, 25.386837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030439, 42.012848, 25.581158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026182, 42.339497, 25.811987>,  <27.023628, 42.535484, 25.950485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026182, 42.339497, 25.811987>,  <27.030439, 42.012848, 25.581158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026182, 42.339497, 25.811987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246150, -0.557209, 0.793050,
		0.969173, 0.150487, -0.195082,
		-0.010643, 0.816622, 0.577074,
		27.022989, 42.584484, 25.985109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678982, 41.981407, 25.991478>,  <27.030439, 42.012848, 25.581158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678982, 41.981407, 25.991478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435474, 42.231178, 26.187227>,  <27.289370, 42.381042, 26.304676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435474, 42.231178, 26.187227>,  <27.678982, 41.981407, 25.991478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435474, 42.231178, 26.187227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164431, -0.504141, 0.847823,
		0.776120, 0.596597, 0.204229,
		-0.608769, 0.624431, 0.489373,
		27.252844, 42.418507, 26.334040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033667, 42.192013, 26.563332>,  <27.678982, 41.981407, 25.991478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033667, 42.192013, 26.563332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643522, 42.243916, 26.634705>,  <27.409435, 42.275059, 26.677528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643522, 42.243916, 26.634705>,  <28.033667, 42.192013, 26.563332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643522, 42.243916, 26.634705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094176, -0.486511, 0.868584,
		0.199513, 0.863985, 0.462303,
		-0.975359, 0.129756, 0.178432,
		27.350914, 42.282841, 26.688234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994762, 42.079018, 27.248203>,  <28.033667, 42.192013, 26.563332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994762, 42.079018, 27.248203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599575, 42.083893, 27.186533>,  <27.362463, 42.086819, 27.149530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599575, 42.083893, 27.186533>,  <27.994762, 42.079018, 27.248203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599575, 42.083893, 27.186533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131899, -0.586956, 0.798802,
		-0.080757, 0.809527, 0.581502,
		-0.987968, 0.012191, -0.154176,
		27.303185, 42.087551, 27.140280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780222, 42.302883, 27.752502>,  <27.994762, 42.079018, 27.248203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780222, 42.302883, 27.752502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474308, 42.080494, 27.622271>,  <27.290760, 41.947060, 27.544132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474308, 42.080494, 27.622271>,  <27.780222, 42.302883, 27.752502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474308, 42.080494, 27.622271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046942, -0.455905, 0.888790,
		-0.642572, 0.695018, 0.322572,
		-0.764787, -0.555969, -0.325577,
		27.244871, 41.913704, 27.524597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371584, 42.281059, 28.244013>,  <27.780222, 42.302883, 27.752502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371584, 42.281059, 28.244013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282339, 41.948334, 28.040716>,  <27.228792, 41.748699, 27.918739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282339, 41.948334, 28.040716>,  <27.371584, 42.281059, 28.244013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282339, 41.948334, 28.040716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223385, -0.463878, 0.857273,
		-0.948852, 0.304800, -0.082318,
		-0.223111, -0.831814, -0.508239,
		27.215406, 41.698792, 27.888245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806192, 42.060982, 28.604916>,  <27.371584, 42.281059, 28.244013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806192, 42.060982, 28.604916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920118, 41.732342, 28.407389>,  <26.988474, 41.535156, 28.288872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920118, 41.732342, 28.407389>,  <26.806192, 42.060982, 28.604916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920118, 41.732342, 28.407389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436151, -0.569813, 0.696481,
		-0.853612, 0.017012, -0.520631,
		0.284813, -0.821598, -0.493819,
		27.005562, 41.485863, 28.259243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225159, 41.593529, 28.414881>,  <26.806192, 42.060982, 28.604916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225159, 41.593529, 28.414881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540634, 41.348488, 28.394114>,  <26.729919, 41.201466, 28.381653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540634, 41.348488, 28.394114>,  <26.225159, 41.593529, 28.414881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540634, 41.348488, 28.394114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425410, -0.604750, 0.673279,
		-0.443846, -0.508921, -0.737564,
		0.788687, -0.612599, -0.051916,
		26.777241, 41.164707, 28.378538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029009, 41.027390, 28.349918>,  <26.225159, 41.593529, 28.414881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029009, 41.027390, 28.349918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389320, 40.917053, 28.484089>,  <26.605507, 40.850853, 28.564590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389320, 40.917053, 28.484089>,  <26.029009, 41.027390, 28.349918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389320, 40.917053, 28.484089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424301, -0.723607, 0.544391,
		0.092553, -0.632697, -0.768849,
		0.900779, -0.275838, 0.335426,
		26.659554, 40.834301, 28.584717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993114, 40.407780, 28.447916>,  <26.029009, 41.027390, 28.349918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993114, 40.407780, 28.447916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317200, 40.483448, 28.669823>,  <26.511650, 40.528851, 28.802967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317200, 40.483448, 28.669823>,  <25.993114, 40.407780, 28.447916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317200, 40.483448, 28.669823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245109, -0.750402, 0.613855,
		0.532424, -0.633333, -0.561618,
		0.810214, 0.189174, 0.554768,
		26.560265, 40.540199, 28.836252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159986, 39.813602, 28.663012>,  <25.993114, 40.407780, 28.447916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159986, 39.813602, 28.663012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376190, 40.014126, 28.933283>,  <26.505913, 40.134441, 29.095446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376190, 40.014126, 28.933283>,  <26.159986, 39.813602, 28.663012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376190, 40.014126, 28.933283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176565, -0.717627, 0.673674,
		0.822603, -0.483428, -0.299370,
		0.540509, 0.501308, 0.675678,
		26.538343, 40.164516, 29.135986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689968, 39.434731, 28.954941>,  <26.159986, 39.813602, 28.663012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689968, 39.434731, 28.954941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646603, 39.707737, 29.244055>,  <26.620583, 39.871540, 29.417522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646603, 39.707737, 29.244055>,  <26.689968, 39.434731, 28.954941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646603, 39.707737, 29.244055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077999, -0.730669, 0.678261,
		0.991041, 0.017157, 0.132451,
		-0.108415, 0.682516, 0.722785,
		26.614079, 39.912491, 29.460890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073469, 39.253284, 29.461292>,  <26.689968, 39.434731, 28.954941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073469, 39.253284, 29.461292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849731, 39.520424, 29.657707>,  <26.715488, 39.680706, 29.775557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849731, 39.520424, 29.657707>,  <27.073469, 39.253284, 29.461292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849731, 39.520424, 29.657707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111520, -0.647614, 0.753763,
		0.821400, 0.366851, 0.436717,
		-0.559343, 0.667844, 0.491039,
		26.681929, 39.720776, 29.805019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428772, 39.390659, 30.104727>,  <27.073469, 39.253284, 29.461292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428772, 39.390659, 30.104727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045601, 39.489346, 30.163383>,  <26.815699, 39.548557, 30.198578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045601, 39.489346, 30.163383>,  <27.428772, 39.390659, 30.104727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045601, 39.489346, 30.163383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033807, -0.410385, 0.911286,
		0.285013, 0.877903, 0.384778,
		-0.957927, 0.246720, 0.146644,
		26.758223, 39.563362, 30.207376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485216, 39.761349, 30.675755>,  <27.428772, 39.390659, 30.104727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485216, 39.761349, 30.675755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109383, 39.627678, 30.646063>,  <26.883883, 39.547474, 30.628248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109383, 39.627678, 30.646063>,  <27.485216, 39.761349, 30.675755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109383, 39.627678, 30.646063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041016, -0.325177, 0.944763,
		-0.339859, 0.884637, 0.319237,
		-0.939582, -0.334180, -0.074230,
		26.827509, 39.527424, 30.623795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240248, 39.790714, 31.340452>,  <27.485216, 39.761349, 30.675755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240248, 39.790714, 31.340452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949430, 39.569557, 31.177620>,  <26.774940, 39.436863, 31.079920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949430, 39.569557, 31.177620>,  <27.240248, 39.790714, 31.340452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949430, 39.569557, 31.177620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081798, -0.658432, 0.748182,
		-0.681700, 0.510664, 0.523935,
		-0.727045, -0.552893, -0.407081,
		26.731318, 39.403690, 31.055496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693771, 39.563099, 31.902103>,  <27.240248, 39.790714, 31.340452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693771, 39.563099, 31.902103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665039, 39.287403, 31.613718>,  <26.647800, 39.121986, 31.440687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665039, 39.287403, 31.613718>,  <26.693771, 39.563099, 31.902103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665039, 39.287403, 31.613718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020407, -0.721663, 0.691944,
		-0.997208, 0.064414, 0.037771,
		-0.071829, -0.689242, -0.720962,
		26.643490, 39.080631, 31.397429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279242, 39.118042, 32.299713>,  <26.693771, 39.563099, 31.902103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279242, 39.118042, 32.299713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421757, 38.921127, 31.982044>,  <26.507265, 38.802979, 31.791443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421757, 38.921127, 31.982044>,  <26.279242, 39.118042, 32.299713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421757, 38.921127, 31.982044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253940, -0.766943, 0.589332,
		-0.899208, -0.411643, -0.148239,
		0.356285, -0.492288, -0.794175,
		26.528643, 38.773441, 31.743792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993605, 38.359314, 32.314037>,  <26.279242, 39.118042, 32.299713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993605, 38.359314, 32.314037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339510, 38.347073, 32.113541>,  <26.547054, 38.339729, 31.993242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339510, 38.347073, 32.113541>,  <25.993605, 38.359314, 32.314037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339510, 38.347073, 32.113541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362606, -0.652490, 0.665413,
		-0.347418, -0.757179, -0.553155,
		0.864765, -0.030599, -0.501244,
		26.598940, 38.337894, 31.963167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139492, 37.635464, 32.194046>,  <25.993605, 38.359314, 32.314037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139492, 37.635464, 32.194046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491341, 37.817204, 32.137722>,  <26.702450, 37.926247, 32.103928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491341, 37.817204, 32.137722>,  <26.139492, 37.635464, 32.194046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491341, 37.817204, 32.137722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383805, -0.503048, 0.774362,
		0.280998, -0.735190, -0.616875,
		0.879622, 0.454354, -0.140814,
		26.755228, 37.953510, 32.095478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557034, 37.057247, 32.035732>,  <26.139492, 37.635464, 32.194046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557034, 37.057247, 32.035732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778584, 37.369965, 32.150288>,  <26.911514, 37.557594, 32.219021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778584, 37.369965, 32.150288>,  <26.557034, 37.057247, 32.035732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778584, 37.369965, 32.150288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588024, -0.610822, 0.530212,
		0.589449, -0.125268, -0.798034,
		0.553875, 0.781796, 0.286387,
		26.944746, 37.604504, 32.236202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290413, 36.841908, 31.986780>,  <26.557034, 37.057247, 32.035732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290413, 36.841908, 31.986780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292927, 37.140102, 32.253376>,  <27.294436, 37.319019, 32.413334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292927, 37.140102, 32.253376>,  <27.290413, 36.841908, 31.986780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292927, 37.140102, 32.253376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608176, -0.531914, 0.589227,
		0.793777, 0.401640, -0.456731,
		0.006284, 0.745488, 0.666489,
		27.294811, 37.363750, 32.453323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945927, 36.759727, 32.379589>,  <27.290413, 36.841908, 31.986780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945927, 36.759727, 32.379589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765453, 37.017605, 32.626423>,  <27.657169, 37.172333, 32.774525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765453, 37.017605, 32.626423>,  <27.945927, 36.759727, 32.379589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765453, 37.017605, 32.626423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483669, -0.404463, 0.776192,
		0.749999, 0.648672, -0.129333,
		-0.451183, 0.644697, 0.617089,
		27.630098, 37.211014, 32.811550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423662, 37.146576, 32.705078>,  <27.945927, 36.759727, 32.379589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423662, 37.146576, 32.705078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100376, 37.168110, 32.939648>,  <27.906404, 37.181030, 33.080387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100376, 37.168110, 32.939648>,  <28.423662, 37.146576, 32.705078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100376, 37.168110, 32.939648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556667, -0.255031, 0.790621,
		0.192122, 0.965433, 0.176149,
		-0.808215, 0.053839, 0.586421,
		27.857912, 37.184261, 33.115574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660492, 37.164124, 33.388729>,  <28.423662, 37.146576, 32.705078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660492, 37.164124, 33.388729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275372, 37.082996, 33.460140>,  <28.044298, 37.034321, 33.502987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275372, 37.082996, 33.460140>,  <28.660492, 37.164124, 33.388729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275372, 37.082996, 33.460140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268156, -0.636057, 0.723549,
		-0.033195, 0.744510, 0.666786,
		-0.962803, -0.202821, 0.178531,
		27.986530, 37.022148, 33.513699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476976, 37.290337, 34.118660>,  <28.660492, 37.164124, 33.388729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476976, 37.290337, 34.118660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272999, 37.004967, 33.926414>,  <28.150612, 36.833744, 33.811069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272999, 37.004967, 33.926414>,  <28.476976, 37.290337, 34.118660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272999, 37.004967, 33.926414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286670, -0.667721, 0.686999,
		-0.811034, 0.212555, 0.545018,
		-0.509945, -0.713420, -0.480612,
		28.120016, 36.790939, 33.782230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171040, 36.914944, 34.710815>,  <28.476976, 37.290337, 34.118660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171040, 36.914944, 34.710815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125336, 36.657906, 34.407757>,  <28.097914, 36.503685, 34.225922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125336, 36.657906, 34.407757>,  <28.171040, 36.914944, 34.710815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125336, 36.657906, 34.407757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141424, -0.765391, 0.627834,
		-0.983333, -0.035413, 0.178331,
		-0.114260, -0.642591, -0.757642,
		28.091057, 36.465130, 34.180466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946518, 37.496872, 35.053665>,  <28.171040, 36.914944, 34.710815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946518, 37.496872, 35.053665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243298, 37.703072, 35.225140>,  <28.421366, 37.826790, 35.328026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243298, 37.703072, 35.225140>,  <27.946518, 37.496872, 35.053665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243298, 37.703072, 35.225140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309977, 0.830703, -0.462436,
		-0.594495, 0.210222, 0.776133,
		0.741951, 0.515499, 0.428685,
		28.465883, 37.857719, 35.353745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653933, 38.172527, 35.243286>,  <27.946518, 37.496872, 35.053665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653933, 38.172527, 35.243286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051977, 38.200974, 35.215889>,  <28.290804, 38.218040, 35.199451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051977, 38.200974, 35.215889>,  <27.653933, 38.172527, 35.243286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051977, 38.200974, 35.215889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098701, 0.735681, -0.670098,
		0.002733, 0.673584, 0.739105,
		0.995113, 0.071120, -0.068494,
		28.350512, 38.222309, 35.195339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701403, 38.845783, 35.333412>,  <27.653933, 38.172527, 35.243286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701403, 38.845783, 35.333412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040178, 38.724796, 35.158504>,  <28.243444, 38.652203, 35.053558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040178, 38.724796, 35.158504>,  <27.701403, 38.845783, 35.333412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040178, 38.724796, 35.158504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106194, 0.709614, -0.696543,
		0.520978, 0.636364, 0.568878,
		0.846939, -0.302472, -0.437271,
		28.294260, 38.634056, 35.027325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024708, 39.391872, 35.288982>,  <27.701403, 38.845783, 35.333412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024708, 39.391872, 35.288982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200277, 39.163883, 35.011143>,  <28.305620, 39.027088, 34.844437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200277, 39.163883, 35.011143>,  <28.024708, 39.391872, 35.288982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200277, 39.163883, 35.011143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023501, 0.780067, -0.625255,
		0.898216, 0.258117, 0.355786,
		0.438925, -0.569975, -0.694603,
		28.331955, 38.992889, 34.802761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572523, 39.638443, 35.188721>,  <28.024708, 39.391872, 35.288982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572523, 39.638443, 35.188721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509394, 39.448009, 34.842670>,  <28.471516, 39.333748, 34.635040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509394, 39.448009, 34.842670>,  <28.572523, 39.638443, 35.188721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509394, 39.448009, 34.842670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049036, 0.871242, -0.488397,
		0.986249, -0.119501, -0.114156,
		-0.157822, -0.476084, -0.865122,
		28.462048, 39.305183, 34.583134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985985, 39.948093, 34.728565>,  <28.572523, 39.638443, 35.188721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985985, 39.948093, 34.728565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762522, 39.740017, 34.470169>,  <28.628443, 39.615170, 34.315132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762522, 39.740017, 34.470169>,  <28.985985, 39.948093, 34.728565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762522, 39.740017, 34.470169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156537, 0.698734, -0.698045,
		0.814491, -0.491090, -0.308924,
		-0.558659, -0.520193, -0.645987,
		28.594923, 39.583958, 34.276375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336424, 39.927757, 34.111034>,  <28.985985, 39.948093, 34.728565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336424, 39.927757, 34.111034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956345, 39.841301, 34.021225>,  <28.728298, 39.789429, 33.967339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956345, 39.841301, 34.021225>,  <29.336424, 39.927757, 34.111034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956345, 39.841301, 34.021225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014834, 0.688250, -0.725322,
		0.311300, -0.692528, -0.650767,
		-0.950196, -0.216139, -0.224525,
		28.671286, 39.776459, 33.953869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308989, 39.704288, 33.381092>,  <29.336424, 39.927757, 34.111034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308989, 39.704288, 33.381092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945807, 39.845501, 33.471416>,  <28.727898, 39.930229, 33.525612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945807, 39.845501, 33.471416>,  <29.308989, 39.704288, 33.381092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945807, 39.845501, 33.471416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032245, 0.596096, -0.802266,
		-0.417826, -0.721139, -0.552611,
		-0.907954, 0.353027, 0.225811,
		28.673420, 39.951408, 33.539162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999571, 39.785507, 32.691887>,  <29.308989, 39.704288, 33.381092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999571, 39.785507, 32.691887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763281, 40.002827, 32.930508>,  <28.621508, 40.133217, 33.073681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763281, 40.002827, 32.930508>,  <28.999571, 39.785507, 32.691887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763281, 40.002827, 32.930508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186478, 0.627390, -0.756048,
		-0.785029, -0.557859, -0.269301,
		-0.590725, 0.543300, 0.596547,
		28.586063, 40.165817, 33.109470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351213, 39.821789, 32.292355>,  <28.999571, 39.785507, 32.691887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351213, 39.821789, 32.292355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368380, 40.129204, 32.547699>,  <28.378679, 40.313652, 32.700905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368380, 40.129204, 32.547699>,  <28.351213, 39.821789, 32.292355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368380, 40.129204, 32.547699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253982, 0.626350, -0.737006,
		-0.966256, -0.130503, 0.222075,
		0.042915, 0.768541, 0.638361,
		28.381254, 40.359764, 32.739208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844957, 40.336426, 32.094223>,  <28.351213, 39.821789, 32.292355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844957, 40.336426, 32.094223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101274, 40.555943, 32.308964>,  <28.255064, 40.687653, 32.437809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101274, 40.555943, 32.308964>,  <27.844957, 40.336426, 32.094223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101274, 40.555943, 32.308964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179845, 0.787133, -0.589980,
		-0.746351, 0.281506, 0.603088,
		0.640793, 0.548795, 0.536850,
		28.293512, 40.720581, 32.470020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499958, 41.072731, 32.278183>,  <27.844957, 40.336426, 32.094223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499958, 41.072731, 32.278183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899338, 41.091530, 32.266224>,  <28.138966, 41.102810, 32.259048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899338, 41.091530, 32.266224>,  <27.499958, 41.072731, 32.278183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899338, 41.091530, 32.266224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055480, 0.886898, -0.458621,
		0.004959, 0.459568, 0.888129,
		0.998447, 0.046999, -0.029895,
		28.198872, 41.105629, 32.257256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635883, 41.699131, 32.538216>,  <27.499958, 41.072731, 32.278183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635883, 41.699131, 32.538216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940601, 41.596592, 32.300240>,  <28.123432, 41.535069, 32.157455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940601, 41.596592, 32.300240>,  <27.635883, 41.699131, 32.538216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940601, 41.596592, 32.300240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161866, 0.813928, -0.557962,
		0.627268, 0.521354, 0.578554,
		0.761797, -0.256343, -0.594940,
		28.169140, 41.519688, 32.121758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927628, 42.290623, 32.438694>,  <27.635883, 41.699131, 32.538216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927628, 42.290623, 32.438694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060873, 42.058994, 32.141048>,  <28.140821, 41.920017, 31.962460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060873, 42.058994, 32.141048>,  <27.927628, 42.290623, 32.438694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060873, 42.058994, 32.141048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204388, 0.726079, -0.656533,
		0.920467, 0.370790, 0.123513,
		0.333116, -0.579072, -0.744117,
		28.160809, 41.885273, 31.917814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434837, 42.593952, 32.151798>,  <27.927628, 42.290623, 32.438694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434837, 42.593952, 32.151798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345762, 42.340553, 31.855396>,  <28.292316, 42.188515, 31.677555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345762, 42.340553, 31.855396>,  <28.434837, 42.593952, 32.151798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345762, 42.340553, 31.855396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024279, 0.763463, -0.645395,
		0.974587, -0.125732, -0.185396,
		-0.222689, -0.633494, -0.741009,
		28.278955, 42.150505, 31.633093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857882, 42.814484, 31.644037>,  <28.434837, 42.593952, 32.151798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857882, 42.814484, 31.644037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558327, 42.636761, 31.447363>,  <28.378593, 42.530125, 31.329357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558327, 42.636761, 31.447363>,  <28.857882, 42.814484, 31.644037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558327, 42.636761, 31.447363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053212, 0.779870, -0.623676,
		0.660558, -0.440899, -0.607677,
		-0.748887, -0.444310, -0.491688,
		28.333660, 42.503468, 31.299856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067366, 42.825977, 30.965651>,  <28.857882, 42.814484, 31.644037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067366, 42.825977, 30.965651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671848, 42.770885, 30.942596>,  <28.434538, 42.737831, 30.928764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671848, 42.770885, 30.942596>,  <29.067366, 42.825977, 30.965651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671848, 42.770885, 30.942596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021529, 0.513519, -0.857808,
		0.147742, -0.846953, -0.510728,
		-0.988791, -0.137730, -0.057635,
		28.375212, 42.729565, 30.925306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965395, 42.645611, 30.365429>,  <29.067366, 42.825977, 30.965651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965395, 42.645611, 30.365429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581543, 42.720531, 30.449362>,  <28.351233, 42.765484, 30.499722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581543, 42.720531, 30.449362>,  <28.965395, 42.645611, 30.365429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581543, 42.720531, 30.449362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143230, 0.316642, -0.937669,
		-0.242067, -0.929869, -0.277032,
		-0.959630, 0.187299, 0.209833,
		28.293653, 42.776722, 30.512312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552631, 42.311661, 29.791714>,  <28.965395, 42.645611, 30.365429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552631, 42.311661, 29.791714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362951, 42.608273, 29.981562>,  <28.249144, 42.786240, 30.095470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362951, 42.608273, 29.981562>,  <28.552631, 42.311661, 29.791714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362951, 42.608273, 29.981562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286887, 0.379518, -0.879580,
		-0.832365, -0.553258, 0.032769,
		-0.474198, 0.741533, 0.474620,
		28.220692, 42.830734, 30.123947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966000, 42.384121, 29.361012>,  <28.552631, 42.311661, 29.791714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966000, 42.384121, 29.361012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959066, 42.724052, 29.571724>,  <27.954906, 42.928009, 29.698151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959066, 42.724052, 29.571724>,  <27.966000, 42.384121, 29.361012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959066, 42.724052, 29.571724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398925, 0.477231, -0.783013,
		-0.916820, -0.223717, 0.330744,
		-0.017332, 0.849824, 0.526781,
		27.953867, 42.979000, 29.729759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282553, 42.725937, 29.472805>,  <27.966000, 42.384121, 29.361012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282553, 42.725937, 29.472805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550894, 43.019592, 29.514750>,  <27.711899, 43.195786, 29.539917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550894, 43.019592, 29.514750>,  <27.282553, 42.725937, 29.472805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550894, 43.019592, 29.514750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463593, 0.525526, -0.713375,
		-0.578823, 0.429958, 0.692892,
		0.670854, 0.734138, 0.104861,
		27.752150, 43.239834, 29.546207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909479, 43.436165, 29.321926>,  <27.282553, 42.725937, 29.472805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909479, 43.436165, 29.321926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301420, 43.496063, 29.269068>,  <27.536585, 43.532001, 29.237352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301420, 43.496063, 29.269068>,  <26.909479, 43.436165, 29.321926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301420, 43.496063, 29.269068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196571, 0.606168, -0.770662,
		-0.035302, 0.781112, 0.623392,
		0.979854, 0.149747, -0.132145,
		27.595377, 43.540989, 29.229424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893917, 44.030178, 28.972750>,  <26.909479, 43.436165, 29.321926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893917, 44.030178, 28.972750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276623, 43.946487, 28.891930>,  <27.506247, 43.896275, 28.843437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276623, 43.946487, 28.891930>,  <26.893917, 44.030178, 28.972750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276623, 43.946487, 28.891930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051252, 0.562519, -0.825194,
		0.286307, 0.799873, 0.527476,
		0.956766, -0.209225, -0.202048,
		27.563652, 43.883720, 28.831316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306211, 44.682255, 28.875275>,  <26.893917, 44.030178, 28.972750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306211, 44.682255, 28.875275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494637, 44.398487, 28.665581>,  <27.607691, 44.228226, 28.539764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494637, 44.398487, 28.665581>,  <27.306211, 44.682255, 28.875275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494637, 44.398487, 28.665581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068555, 0.621946, -0.780053,
		0.879432, 0.331514, 0.341609,
		0.471061, -0.709423, -0.524233,
		27.635954, 44.185661, 28.508310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569292, 45.095257, 28.403502>,  <27.306211, 44.682255, 28.875275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569292, 45.095257, 28.403502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620060, 44.729668, 28.249340>,  <27.650520, 44.510315, 28.156843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620060, 44.729668, 28.249340>,  <27.569292, 45.095257, 28.403502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620060, 44.729668, 28.249340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170821, 0.402882, -0.899170,
		0.977094, 0.048288, 0.207260,
		0.126920, -0.913977, -0.385405,
		27.658136, 44.455475, 28.133718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238888, 45.124187, 28.069893>,  <27.569292, 45.095257, 28.403502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238888, 45.124187, 28.069893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044474, 44.827156, 27.885567>,  <27.927824, 44.648937, 27.774971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044474, 44.827156, 27.885567>,  <28.238888, 45.124187, 28.069893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044474, 44.827156, 27.885567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308446, 0.347598, -0.885459,
		0.817698, -0.572502, 0.060098,
		-0.486037, -0.742575, -0.460816,
		27.898663, 44.604385, 27.747322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769041, 44.920467, 27.590197>,  <28.238888, 45.124187, 28.069893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769041, 44.920467, 27.590197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429790, 44.750755, 27.463284>,  <28.226240, 44.648926, 27.387136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429790, 44.750755, 27.463284>,  <28.769041, 44.920467, 27.590197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429790, 44.750755, 27.463284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286137, 0.137180, -0.948318,
		0.445881, -0.895078, 0.005058,
		-0.848125, -0.424284, -0.317281,
		28.175352, 44.623470, 27.368099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871656, 44.362289, 27.044477>,  <28.769041, 44.920467, 27.590197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871656, 44.362289, 27.044477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512117, 44.531948, 27.000343>,  <28.296394, 44.633743, 26.973864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512117, 44.531948, 27.000343>,  <28.871656, 44.362289, 27.044477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512117, 44.531948, 27.000343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173605, 0.113422, -0.978262,
		-0.402415, -0.898461, -0.175583,
		-0.898846, 0.424150, -0.110334,
		28.242464, 44.659191, 26.967243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476810, 44.099438, 26.460068>,  <28.871656, 44.362289, 27.044477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476810, 44.099438, 26.460068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291306, 44.449951, 26.512285>,  <28.180002, 44.660259, 26.543615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291306, 44.449951, 26.512285>,  <28.476810, 44.099438, 26.460068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291306, 44.449951, 26.512285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171134, 0.233177, -0.957257,
		-0.869274, -0.421601, -0.258102,
		-0.463764, 0.876288, 0.130545,
		28.152176, 44.712837, 26.551449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214506, 44.187790, 25.834213>,  <28.476810, 44.099438, 26.460068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214506, 44.187790, 25.834213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168520, 44.548531, 26.000805>,  <28.140928, 44.764973, 26.100760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168520, 44.548531, 26.000805>,  <28.214506, 44.187790, 25.834213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168520, 44.548531, 26.000805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154420, 0.430387, -0.889338,
		-0.981294, -0.037929, -0.188742,
		-0.114964, 0.901847, 0.416479,
		28.134031, 44.819084, 26.125750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708950, 44.507877, 25.393946>,  <28.214506, 44.187790, 25.834213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708950, 44.507877, 25.393946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927563, 44.778072, 25.591946>,  <28.058729, 44.940189, 25.710745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927563, 44.778072, 25.591946>,  <27.708950, 44.507877, 25.393946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927563, 44.778072, 25.591946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143490, 0.506810, -0.850032,
		-0.825055, 0.535595, 0.180061,
		0.546530, 0.675486, 0.494998,
		28.091522, 44.980717, 25.740444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449625, 45.179642, 25.246271>,  <27.708950, 44.507877, 25.393946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449625, 45.179642, 25.246271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823334, 45.242405, 25.374344>,  <28.047560, 45.280064, 25.451187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823334, 45.242405, 25.374344>,  <27.449625, 45.179642, 25.246271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823334, 45.242405, 25.374344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164263, 0.607600, -0.777071,
		-0.316470, 0.778590, 0.541890,
		0.934272, 0.156907, 0.320180,
		28.103615, 45.289478, 25.470398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495760, 45.843075, 25.235832>,  <27.449625, 45.179642, 25.246271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495760, 45.843075, 25.235832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881845, 45.744244, 25.201612>,  <28.113497, 45.684944, 25.181082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881845, 45.744244, 25.201612>,  <27.495760, 45.843075, 25.235832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881845, 45.744244, 25.201612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123720, 0.719815, -0.683052,
		0.230344, 0.648707, 0.725342,
		0.965213, -0.247076, -0.085547,
		28.171410, 45.670120, 25.175949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925930, 46.443169, 25.251566>,  <27.495760, 45.843075, 25.235832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925930, 46.443169, 25.251566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166676, 46.179035, 25.071913>,  <28.311123, 46.020554, 24.964121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166676, 46.179035, 25.071913>,  <27.925930, 46.443169, 25.251566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166676, 46.179035, 25.071913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274970, 0.699365, -0.659758,
		0.749769, 0.273585, 0.602493,
		0.601862, -0.660334, -0.449134,
		28.347235, 45.980934, 24.937172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524282, 46.794640, 25.039062>,  <27.925930, 46.443169, 25.251566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524282, 46.794640, 25.039062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562643, 46.470142, 24.808346>,  <28.585659, 46.275444, 24.669916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562643, 46.470142, 24.808346>,  <28.524282, 46.794640, 25.039062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562643, 46.470142, 24.808346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198013, 0.583428, -0.787657,
		0.975497, -0.038674, 0.216589,
		0.095902, -0.811244, -0.576790,
		28.591413, 46.226768, 24.635309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168571, 46.876186, 24.661327>,  <28.524282, 46.794640, 25.039062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168571, 46.876186, 24.661327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946043, 46.617397, 24.452738>,  <28.812527, 46.462124, 24.327583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946043, 46.617397, 24.452738>,  <29.168571, 46.876186, 24.661327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946043, 46.617397, 24.452738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351206, 0.385679, -0.853174,
		0.753102, -0.657782, 0.012660,
		-0.556320, -0.646973, -0.521473,
		28.779146, 46.423306, 24.296295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663612, 46.652164, 24.211334>,  <29.168571, 46.876186, 24.661327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663612, 46.652164, 24.211334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306067, 46.566463, 24.053804>,  <29.091539, 46.515041, 23.959286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306067, 46.566463, 24.053804>,  <29.663612, 46.652164, 24.211334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306067, 46.566463, 24.053804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273760, 0.434808, -0.857903,
		0.355045, -0.874665, -0.330007,
		-0.893867, -0.214251, -0.393825,
		29.037907, 46.502190, 23.935658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771490, 46.506851, 23.563963>,  <29.663612, 46.652164, 24.211334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771490, 46.506851, 23.563963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378897, 46.578987, 23.538151>,  <29.143341, 46.622269, 23.522663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378897, 46.578987, 23.538151>,  <29.771490, 46.506851, 23.563963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378897, 46.578987, 23.538151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154935, 0.549411, -0.821062,
		-0.112616, -0.815858, -0.567180,
		-0.981485, 0.180341, -0.064532,
		29.084452, 46.633091, 23.518791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538012, 46.671600, 23.334906>,  <29.771490, 46.506851, 23.563963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538012, 46.671600, 23.334906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911890, 46.533665, 23.300436>,  <31.136217, 46.450901, 23.279755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911890, 46.533665, 23.300436>,  <30.538012, 46.671600, 23.334906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911890, 46.533665, 23.300436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123813, -0.543123, 0.830475,
		-0.333185, -0.765573, -0.550351,
		0.934697, -0.344842, -0.086172,
		31.192299, 46.430210, 23.274584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502401, 45.911652, 23.274343>,  <30.538012, 46.671600, 23.334906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502401, 45.911652, 23.274343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861792, 46.023098, 23.410055>,  <31.077427, 46.089966, 23.491482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861792, 46.023098, 23.410055>,  <30.502401, 45.911652, 23.274343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861792, 46.023098, 23.410055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079847, -0.656220, 0.750333,
		0.431697, -0.701248, -0.567353,
		0.898478, 0.278615, 0.339280,
		31.131334, 46.106682, 23.511839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903475, 45.285816, 23.524044>,  <30.502401, 45.911652, 23.274343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903475, 45.285816, 23.524044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104523, 45.585953, 23.695793>,  <31.225151, 45.766033, 23.798843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104523, 45.585953, 23.695793>,  <30.903475, 45.285816, 23.524044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104523, 45.585953, 23.695793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120162, -0.552483, 0.824818,
		0.856117, -0.362974, -0.367850,
		0.502618, 0.750342, 0.429374,
		31.255308, 45.811054, 23.824606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436514, 44.921005, 23.694750>,  <30.903475, 45.285816, 23.524044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436514, 44.921005, 23.694750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404575, 45.254063, 23.913956>,  <31.385412, 45.453899, 24.045479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404575, 45.254063, 23.913956>,  <31.436514, 44.921005, 23.694750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404575, 45.254063, 23.913956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124532, -0.537132, 0.834255,
		0.988997, 0.134860, -0.060802,
		-0.079848, 0.832647, 0.548017,
		31.380621, 45.503857, 24.078362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014633, 44.825043, 24.224819>,  <31.436514, 44.921005, 23.694750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014633, 44.825043, 24.224819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753269, 45.093128, 24.365595>,  <31.596451, 45.253979, 24.450060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753269, 45.093128, 24.365595>,  <32.014633, 44.825043, 24.224819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753269, 45.093128, 24.365595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018110, -0.450936, 0.892372,
		0.756785, 0.589461, 0.282510,
		-0.653413, 0.670218, 0.351937,
		31.557245, 45.294193, 24.471176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278114, 45.039558, 24.831503>,  <32.014633, 44.825043, 24.224819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278114, 45.039558, 24.831503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890757, 45.130230, 24.873114>,  <31.658340, 45.184631, 24.898079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890757, 45.130230, 24.873114>,  <32.278114, 45.039558, 24.831503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890757, 45.130230, 24.873114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013893, -0.367417, 0.929953,
		0.249019, 0.902010, 0.352657,
		-0.968399, 0.226676, 0.104026,
		31.600237, 45.198235, 24.904322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190880, 45.173321, 25.588606>,  <32.278114, 45.039558, 24.831503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190880, 45.173321, 25.588606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817642, 45.118206, 25.455727>,  <31.593700, 45.085136, 25.375999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817642, 45.118206, 25.455727>,  <32.190880, 45.173321, 25.588606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817642, 45.118206, 25.455727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213174, -0.532037, 0.819447,
		-0.289652, 0.835435, 0.467066,
		-0.933091, -0.137788, -0.332199,
		31.537716, 45.076870, 25.356068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739555, 45.299728, 26.142036>,  <32.190880, 45.173321, 25.588606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739555, 45.299728, 26.142036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521601, 45.070255, 25.897419>,  <31.390827, 44.932571, 25.750648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521601, 45.070255, 25.897419>,  <31.739555, 45.299728, 26.142036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521601, 45.070255, 25.897419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277442, -0.564894, 0.777123,
		-0.791279, 0.593113, 0.148641,
		-0.544889, -0.573682, -0.611544,
		31.358133, 44.898151, 25.713957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228388, 45.171947, 26.475031>,  <31.739555, 45.299728, 26.142036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228388, 45.171947, 26.475031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239111, 44.878208, 26.203732>,  <31.245544, 44.701965, 26.040953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239111, 44.878208, 26.203732>,  <31.228388, 45.171947, 26.475031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239111, 44.878208, 26.203732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343449, -0.643956, 0.683641,
		-0.938789, 0.214617, -0.269472,
		0.026807, -0.734344, -0.678248,
		31.247152, 44.657906, 26.000257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637009, 44.873226, 26.519629>,  <31.228388, 45.171947, 26.475031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637009, 44.873226, 26.519629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851414, 44.575451, 26.360378>,  <30.980057, 44.396786, 26.264828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851414, 44.575451, 26.360378>,  <30.637009, 44.873226, 26.519629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851414, 44.575451, 26.360378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366237, -0.629960, 0.684851,
		-0.760632, -0.221281, -0.610307,
		0.536013, -0.744436, -0.398126,
		31.012218, 44.352119, 26.240940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134640, 44.298763, 26.512690>,  <30.637009, 44.873226, 26.519629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134640, 44.298763, 26.512690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500275, 44.139206, 26.483484>,  <30.719656, 44.043472, 26.465961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500275, 44.139206, 26.483484>,  <30.134640, 44.298763, 26.512690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500275, 44.139206, 26.483484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236837, -0.671286, 0.702342,
		-0.329169, -0.624710, -0.708086,
		0.914088, -0.398890, -0.073012,
		30.774502, 44.019539, 26.461580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049650, 43.575737, 26.480375>,  <30.134640, 44.298763, 26.512690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049650, 43.575737, 26.480375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433228, 43.576202, 26.593811>,  <30.663374, 43.576481, 26.661873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433228, 43.576202, 26.593811>,  <30.049650, 43.575737, 26.480375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433228, 43.576202, 26.593811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163110, -0.815772, 0.554898,
		0.231991, -0.578373, -0.782090,
		0.958945, 0.001165, 0.283590,
		30.720911, 43.576553, 26.678888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249884, 42.791756, 26.586126>,  <30.049650, 43.575737, 26.480375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249884, 42.791756, 26.586126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516083, 43.005436, 26.794641>,  <30.675802, 43.133644, 26.919750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516083, 43.005436, 26.794641>,  <30.249884, 42.791756, 26.586126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516083, 43.005436, 26.794641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009036, -0.704118, 0.710026,
		0.746345, -0.467810, -0.473416,
		0.665498, 0.534202, 0.521288,
		30.715733, 43.165695, 26.951027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772577, 42.320816, 26.775518>,  <30.249884, 42.791756, 26.586126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772577, 42.320816, 26.775518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801941, 42.619465, 27.039993>,  <30.819559, 42.798653, 27.198679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801941, 42.619465, 27.039993>,  <30.772577, 42.320816, 26.775518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801941, 42.619465, 27.039993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079277, -0.665246, 0.742403,
		0.994146, -0.002081, -0.108024,
		0.073408, 0.746621, 0.661187,
		30.823963, 42.843452, 27.238350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171192, 42.083176, 27.329525>,  <30.772577, 42.320816, 26.775518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171192, 42.083176, 27.329525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014278, 42.395706, 27.523695>,  <30.920130, 42.583225, 27.640198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014278, 42.395706, 27.523695>,  <31.171192, 42.083176, 27.329525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014278, 42.395706, 27.523695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099237, -0.488697, 0.866791,
		0.914476, 0.388200, 0.114171,
		-0.392283, 0.781330, 0.485425,
		30.896593, 42.630104, 27.669323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611071, 42.300022, 27.897640>,  <31.171192, 42.083176, 27.329525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611071, 42.300022, 27.897640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261269, 42.459251, 28.008478>,  <31.051388, 42.554787, 28.074980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261269, 42.459251, 28.008478>,  <31.611071, 42.300022, 27.897640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261269, 42.459251, 28.008478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022624, -0.537207, 0.843147,
		0.484488, 0.743606, 0.460784,
		-0.874505, 0.398070, 0.277094,
		30.998917, 42.578674, 28.091606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699884, 42.629414, 28.588135>,  <31.611071, 42.300022, 27.897640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699884, 42.629414, 28.588135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306534, 42.581032, 28.533968>,  <31.070522, 42.552002, 28.501467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306534, 42.581032, 28.533968>,  <31.699884, 42.629414, 28.588135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306534, 42.581032, 28.533968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084710, -0.354041, 0.931385,
		-0.160603, 0.927374, 0.337910,
		-0.983377, -0.120959, -0.135418,
		31.011520, 42.544743, 28.493343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444918, 42.711754, 29.274422>,  <31.699884, 42.629414, 28.588135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444918, 42.711754, 29.274422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150887, 42.519100, 29.083555>,  <30.974468, 42.403507, 28.969034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150887, 42.519100, 29.083555>,  <31.444918, 42.711754, 29.274422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150887, 42.519100, 29.083555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245795, -0.466611, 0.849623,
		-0.631857, 0.741826, 0.224613,
		-0.735080, -0.481631, -0.477168,
		30.930363, 42.374611, 28.940405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836615, 42.835354, 29.585598>,  <31.444918, 42.711754, 29.274422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836615, 42.835354, 29.585598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703278, 42.518337, 29.381338>,  <30.623276, 42.328129, 29.258783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703278, 42.518337, 29.381338>,  <30.836615, 42.835354, 29.585598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703278, 42.518337, 29.381338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259997, -0.443349, 0.857814,
		-0.906248, 0.418712, -0.058272,
		-0.333342, -0.792542, -0.510647,
		30.603275, 42.280575, 29.228144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164497, 42.686897, 29.868208>,  <30.836615, 42.835354, 29.585598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164497, 42.686897, 29.868208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278170, 42.353268, 29.679075>,  <30.346373, 42.153091, 29.565596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278170, 42.353268, 29.679075>,  <30.164497, 42.686897, 29.868208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278170, 42.353268, 29.679075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352186, -0.549499, 0.757639,
		-0.891744, -0.048781, -0.449904,
		0.284180, -0.834069, -0.472832,
		30.363424, 42.103046, 29.537226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677053, 42.180088, 30.065132>,  <30.164497, 42.686897, 29.868208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677053, 42.180088, 30.065132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990931, 41.968357, 29.936096>,  <30.179256, 41.841316, 29.858675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990931, 41.968357, 29.936096>,  <29.677053, 42.180088, 30.065132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990931, 41.968357, 29.936096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231160, -0.732741, 0.640043,
		-0.575170, -0.427667, -0.697338,
		0.784694, -0.529331, -0.322591,
		30.226339, 41.809559, 29.839319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477543, 41.496174, 29.921988>,  <29.677053, 42.180088, 30.065132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477543, 41.496174, 29.921988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868685, 41.485382, 30.005003>,  <30.103371, 41.478909, 30.054813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868685, 41.485382, 30.005003>,  <29.477543, 41.496174, 29.921988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868685, 41.485382, 30.005003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156505, -0.752630, 0.639574,
		0.138948, -0.657891, -0.740184,
		0.977855, -0.026975, 0.207540,
		30.162041, 41.477291, 30.067265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737209, 40.792439, 30.089899>,  <29.477543, 41.496174, 29.921988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737209, 40.792439, 30.089899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052240, 40.982002, 30.247448>,  <30.241259, 41.095741, 30.341976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052240, 40.982002, 30.247448>,  <29.737209, 40.792439, 30.089899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052240, 40.982002, 30.247448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049596, -0.685855, 0.726047,
		0.614215, -0.552284, -0.563668,
		0.787579, 0.473905, 0.393871,
		30.288513, 41.124172, 30.365610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168226, 40.246841, 30.426792>,  <29.737209, 40.792439, 30.089899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168226, 40.246841, 30.426792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286926, 40.593422, 30.587389>,  <30.358147, 40.801373, 30.683746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286926, 40.593422, 30.587389>,  <30.168226, 40.246841, 30.426792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286926, 40.593422, 30.587389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155101, -0.458578, 0.875014,
		0.942275, -0.197390, -0.270472,
		0.296752, 0.866455, 0.401491,
		30.375952, 40.853359, 30.707836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687418, 39.995552, 30.886080>,  <30.168226, 40.246841, 30.426792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687418, 39.995552, 30.886080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594854, 40.368614, 30.996788>,  <30.539316, 40.592453, 31.063213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594854, 40.368614, 30.996788>,  <30.687418, 39.995552, 30.886080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594854, 40.368614, 30.996788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342023, -0.188338, 0.920624,
		0.910752, 0.307704, -0.275407,
		-0.231410, 0.932656, 0.276771,
		30.525431, 40.648411, 31.079819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132481, 40.229630, 31.314137>,  <30.687418, 39.995552, 30.886080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132481, 40.229630, 31.314137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849463, 40.484226, 31.436941>,  <30.679651, 40.636986, 31.510624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849463, 40.484226, 31.436941>,  <31.132481, 40.229630, 31.314137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849463, 40.484226, 31.436941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260156, -0.169321, 0.950604,
		0.657037, 0.752467, -0.045785,
		-0.707546, 0.636494, 0.307009,
		30.637199, 40.675175, 31.529043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430267, 40.602783, 31.786856>,  <31.132481, 40.229630, 31.314137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430267, 40.602783, 31.786856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041317, 40.612076, 31.879763>,  <30.807947, 40.617653, 31.935507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041317, 40.612076, 31.879763>,  <31.430267, 40.602783, 31.786856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041317, 40.612076, 31.879763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223691, -0.191616, 0.955639,
		0.066706, 0.981195, 0.181127,
		-0.972375, 0.023230, 0.232267,
		30.749605, 40.619045, 31.949442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320507, 41.104282, 32.292473>,  <31.430267, 40.602783, 31.786856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320507, 41.104282, 32.292473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026260, 40.836823, 32.335884>,  <30.849712, 40.676346, 32.361931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026260, 40.836823, 32.335884>,  <31.320507, 41.104282, 32.292473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026260, 40.836823, 32.335884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128647, 0.019395, 0.991501,
		-0.665071, 0.743325, 0.071753,
		-0.735616, -0.668649, 0.108525,
		30.805576, 40.636227, 32.368443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053562, 41.236408, 32.922619>,  <31.320507, 41.104282, 32.292473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053562, 41.236408, 32.922619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892359, 40.873714, 32.872948>,  <30.795637, 40.656097, 32.843147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892359, 40.873714, 32.872948>,  <31.053562, 41.236408, 32.922619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892359, 40.873714, 32.872948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081601, -0.170740, 0.981931,
		-0.911551, 0.385593, 0.142800,
		-0.403008, -0.906733, -0.124174,
		30.771456, 40.601696, 32.835697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703644, 41.205879, 33.450344>,  <31.053562, 41.236408, 32.922619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703644, 41.205879, 33.450344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756439, 40.822239, 33.350178>,  <30.788116, 40.592056, 33.290077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756439, 40.822239, 33.350178>,  <30.703644, 41.205879, 33.450344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756439, 40.822239, 33.350178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199848, -0.221693, 0.954418,
		-0.970897, -0.176016, 0.162414,
		0.131986, -0.959099, -0.250418,
		30.796036, 40.534508, 33.275051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360020, 40.788841, 34.029167>,  <30.703644, 41.205879, 33.450344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360020, 40.788841, 34.029167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617348, 40.536411, 33.855782>,  <30.771744, 40.384953, 33.751751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617348, 40.536411, 33.855782>,  <30.360020, 40.788841, 34.029167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617348, 40.536411, 33.855782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288938, -0.324178, 0.900791,
		-0.708982, -0.704739, -0.026209,
		0.643319, -0.631072, -0.433462,
		30.810343, 40.347092, 33.725742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250973, 40.239265, 34.429173>,  <30.360020, 40.788841, 34.029167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250973, 40.239265, 34.429173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602238, 40.168690, 34.251320>,  <30.812998, 40.126343, 34.144608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602238, 40.168690, 34.251320>,  <30.250973, 40.239265, 34.429173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602238, 40.168690, 34.251320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362778, -0.360216, 0.859440,
		-0.311797, -0.916033, -0.252324,
		0.878166, -0.176433, -0.444631,
		30.865686, 40.115757, 34.117931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451233, 39.561996, 34.528217>,  <30.250973, 40.239265, 34.429173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451233, 39.561996, 34.528217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786924, 39.764023, 34.447617>,  <30.988340, 39.885239, 34.399254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786924, 39.764023, 34.447617>,  <30.451233, 39.561996, 34.528217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786924, 39.764023, 34.447617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386675, -0.293737, 0.874186,
		0.382329, -0.811560, -0.441808,
		0.839230, 0.505063, -0.201505,
		31.038692, 39.915543, 34.387165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879282, 39.171410, 34.953381>,  <30.451233, 39.561996, 34.528217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879282, 39.171410, 34.953381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099623, 39.490204, 34.854286>,  <31.231827, 39.681480, 34.794830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099623, 39.490204, 34.854286>,  <30.879282, 39.171410, 34.953381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099623, 39.490204, 34.854286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352611, 0.046796, 0.934599,
		0.756457, -0.602180, -0.255249,
		0.550852, 0.796988, -0.247734,
		31.264879, 39.729301, 34.779964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595781, 39.115231, 35.191189>,  <30.879282, 39.171410, 34.953381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595781, 39.115231, 35.191189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521370, 39.507767, 35.171726>,  <31.476723, 39.743286, 35.160049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521370, 39.507767, 35.171726>,  <31.595781, 39.115231, 35.191189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521370, 39.507767, 35.171726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395065, 0.120052, 0.910775,
		0.899620, 0.150209, -0.410025,
		-0.186031, 0.981338, -0.048659,
		31.465561, 39.802170, 35.157127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098343, 39.331406, 35.645527>,  <31.595781, 39.115231, 35.191189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098343, 39.331406, 35.645527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889151, 39.665756, 35.578835>,  <31.763636, 39.866367, 35.538818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889151, 39.665756, 35.578835>,  <32.098343, 39.331406, 35.645527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889151, 39.665756, 35.578835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207705, 0.314699, 0.926188,
		0.826651, 0.449746, -0.338197,
		-0.522979, 0.835879, -0.166732,
		31.732258, 39.916519, 35.528816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530094, 39.870022, 35.720764>,  <32.098343, 39.331406, 35.645527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530094, 39.870022, 35.720764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155369, 39.977669, 35.810169>,  <31.930534, 40.042255, 35.863811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155369, 39.977669, 35.810169>,  <32.530094, 39.870022, 35.720764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155369, 39.977669, 35.810169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306889, 0.325505, 0.894352,
		0.167928, 0.906435, -0.387525,
		-0.936814, 0.269114, 0.223513,
		31.874325, 40.058403, 35.877224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589428, 40.518608, 36.056049>,  <32.530094, 39.870022, 35.720764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589428, 40.518608, 36.056049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216248, 40.409897, 36.150482>,  <31.992338, 40.344669, 36.207142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216248, 40.409897, 36.150482>,  <32.589428, 40.518608, 36.056049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216248, 40.409897, 36.150482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217005, 0.098685, 0.971169,
		-0.287242, 0.957286, -0.033091,
		-0.932953, -0.271780, 0.236083,
		31.936361, 40.328362, 36.221306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309826, 40.980267, 36.647396>,  <32.589428, 40.518608, 36.056049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309826, 40.980267, 36.647396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073746, 40.658421, 36.673492>,  <31.932096, 40.465313, 36.689152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073746, 40.658421, 36.673492>,  <32.309826, 40.980267, 36.647396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073746, 40.658421, 36.673492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067312, 0.031482, 0.997235,
		-0.804443, 0.592964, 0.035579,
		-0.590204, -0.804614, 0.065239,
		31.896685, 40.417038, 36.693066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639988, 41.155571, 37.143570>,  <32.309826, 40.980267, 36.647396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639988, 41.155571, 37.143570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735170, 40.768349, 37.111942>,  <31.792280, 40.536015, 37.092964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735170, 40.768349, 37.111942>,  <31.639988, 41.155571, 37.143570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735170, 40.768349, 37.111942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063208, -0.065803, 0.995829,
		-0.969216, -0.241964, 0.045531,
		0.237958, -0.968051, -0.079072,
		31.806559, 40.477932, 37.088223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210258, 40.782978, 37.745945>,  <31.639988, 41.155571, 37.143570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210258, 40.782978, 37.745945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516479, 40.551891, 37.632683>,  <31.700212, 40.413239, 37.564724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516479, 40.551891, 37.632683>,  <31.210258, 40.782978, 37.745945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516479, 40.551891, 37.632683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073253, -0.358986, 0.930464,
		-0.639191, -0.733060, -0.232503,
		0.765551, -0.577713, -0.283160,
		31.746145, 40.378578, 37.547733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167021, 39.940544, 37.859749>,  <31.210258, 40.782978, 37.745945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167021, 39.940544, 37.859749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478987, 40.177258, 37.941254>,  <31.666166, 40.319286, 37.990158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478987, 40.177258, 37.941254>,  <31.167021, 39.940544, 37.859749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478987, 40.177258, 37.941254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000415, -0.325071, 0.945690,
		0.625883, -0.737644, -0.253283,
		0.779917, 0.591786, 0.203763,
		31.712961, 40.354794, 38.002384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670265, 39.677246, 38.358498>,  <31.167021, 39.940544, 37.859749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670265, 39.677246, 38.358498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708445, 40.072136, 38.409519>,  <31.731352, 40.309071, 38.440132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708445, 40.072136, 38.409519>,  <31.670265, 39.677246, 38.358498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708445, 40.072136, 38.409519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007481, -0.127422, 0.991820,
		0.995406, -0.095624, -0.004777,
		0.095450, 0.987228, 0.127552,
		31.737080, 40.368305, 38.447784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101246, 39.861355, 38.976116>,  <31.670265, 39.677246, 38.358498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101246, 39.861355, 38.976116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870552, 40.181221, 38.909290>,  <31.732134, 40.373138, 38.869194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870552, 40.181221, 38.909290>,  <32.101246, 39.861355, 38.976116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870552, 40.181221, 38.909290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295120, -0.013257, 0.955368,
		0.761758, 0.600302, 0.243643,
		-0.576739, 0.799664, -0.167062,
		31.697531, 40.421120, 38.859173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679611, 40.230206, 39.441914>,  <32.101246, 39.861355, 38.976116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679611, 40.230206, 39.441914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637814, 40.394787, 39.804081>,  <32.612736, 40.493534, 40.021381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637814, 40.394787, 39.804081>,  <32.679611, 40.230206, 39.441914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637814, 40.394787, 39.804081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993604, 0.082386, 0.077228,
		-0.042818, 0.907700, -0.417429,
		-0.104490, 0.411452, 0.905422,
		32.606468, 40.518223, 40.075706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148041, 40.879726, 39.424034>,  <32.679611, 40.230206, 39.441914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148041, 40.879726, 39.424034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094849, 40.751305, 39.799107>,  <33.062935, 40.674252, 40.024151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094849, 40.751305, 39.799107>,  <33.148041, 40.879726, 39.424034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094849, 40.751305, 39.799107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909340, 0.336794, 0.244275,
		-0.394230, 0.885152, 0.247160,
		-0.132978, -0.321053, 0.937679,
		33.054955, 40.654987, 40.080410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207096, 41.497299, 39.884918>,  <33.148041, 40.879726, 39.424034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207096, 41.497299, 39.884918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300396, 41.148682, 40.057434>,  <33.356377, 40.939510, 40.160942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300396, 41.148682, 40.057434>,  <33.207096, 41.497299, 39.884918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300396, 41.148682, 40.057434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893799, 0.366854, 0.257955,
		-0.383039, 0.325318, 0.864551,
		0.233247, -0.871542, 0.431289,
		33.370369, 40.887218, 40.186821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983849, 42.139915, 40.190849>,  <33.207096, 41.497299, 39.884918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983849, 42.139915, 40.190849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964809, 42.252296, 39.807434>,  <32.953388, 42.319725, 39.577385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964809, 42.252296, 39.807434>,  <32.983849, 42.139915, 40.190849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964809, 42.252296, 39.807434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169784, 0.947940, 0.269412,
		0.984331, -0.149922, -0.092819,
		-0.047596, 0.280950, -0.958542,
		32.950531, 42.336582, 39.519871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568550, 42.496384, 39.942863>,  <32.983849, 42.139915, 40.190849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568550, 42.496384, 39.942863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223007, 42.625275, 39.787983>,  <33.015682, 42.702610, 39.695057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223007, 42.625275, 39.787983>,  <33.568550, 42.496384, 39.942863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223007, 42.625275, 39.787983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091675, 0.856378, 0.508146,
		0.495326, 0.403468, -0.769328,
		-0.863856, 0.322226, -0.387198,
		32.963852, 42.721943, 39.671822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624313, 43.220535, 39.664837>,  <33.568550, 42.496384, 39.942863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624313, 43.220535, 39.664837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266121, 43.138130, 39.822659>,  <33.051205, 43.088688, 39.917351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266121, 43.138130, 39.822659>,  <33.624313, 43.220535, 39.664837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266121, 43.138130, 39.822659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095252, 0.777213, 0.621987,
		-0.434790, 0.594559, -0.676356,
		-0.895480, -0.206009, 0.394557,
		32.997478, 43.076328, 39.941025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971786, 43.737034, 39.680553>,  <33.624313, 43.220535, 39.664837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971786, 43.737034, 39.680553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964485, 43.509560, 40.009495>,  <32.960106, 43.373074, 40.206860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964485, 43.509560, 40.009495>,  <32.971786, 43.737034, 39.680553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964485, 43.509560, 40.009495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225606, 0.798936, 0.557497,
		-0.974048, 0.195702, 0.113717,
		-0.018250, -0.568684, 0.822354,
		32.959011, 43.338955, 40.256203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461899, 44.007328, 40.303371>,  <32.971786, 43.737034, 39.680553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461899, 44.007328, 40.303371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758690, 43.787853, 40.457462>,  <32.936764, 43.656166, 40.549915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758690, 43.787853, 40.457462>,  <32.461899, 44.007328, 40.303371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758690, 43.787853, 40.457462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088765, 0.649950, 0.754776,
		-0.664518, -0.525835, 0.530956,
		0.741982, -0.548692, 0.385227,
		32.981285, 43.623245, 40.573029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321911, 43.977409, 40.993107>,  <32.461899, 44.007328, 40.303371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321911, 43.977409, 40.993107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708096, 43.874149, 40.978992>,  <32.939808, 43.812195, 40.970524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708096, 43.874149, 40.978992>,  <32.321911, 43.977409, 40.993107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708096, 43.874149, 40.978992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191874, 0.612823, 0.766572,
		-0.176270, -0.746864, 0.641188,
		0.965460, -0.258151, -0.035281,
		32.997734, 43.796703, 40.968407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744331, 43.783390, 41.648224>,  <32.321911, 43.977409, 40.993107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744331, 43.783390, 41.648224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912979, 44.064716, 41.419285>,  <33.014168, 44.233513, 41.281921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912979, 44.064716, 41.419285>,  <32.744331, 43.783390, 41.648224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912979, 44.064716, 41.419285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011699, 0.626921, 0.778995,
		0.906698, -0.335135, 0.256094,
		0.421619, 0.703317, -0.572348,
		33.039463, 44.275711, 41.247581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099960, 44.464954, 41.874893>,  <32.744331, 43.783390, 41.648224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099960, 44.464954, 41.874893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264404, 44.119015, 41.990150>,  <33.363071, 43.911453, 42.059307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264404, 44.119015, 41.990150>,  <33.099960, 44.464954, 41.874893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264404, 44.119015, 41.990150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352320, -0.140785, -0.925230,
		0.840748, 0.481892, 0.246824,
		0.411112, -0.864846, 0.288145,
		33.387737, 43.859562, 42.076595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932930, 44.317726, 41.791130>,  <33.099960, 44.464954, 41.874893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932930, 44.317726, 41.791130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665897, 44.024868, 41.737026>,  <33.505676, 43.849152, 41.704563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665897, 44.024868, 41.737026>,  <33.932930, 44.317726, 41.791130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665897, 44.024868, 41.737026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172344, 0.024778, -0.984725,
		0.724316, -0.680695, 0.109640,
		-0.667580, -0.732148, -0.135261,
		33.465622, 43.805225, 41.696449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290131, 43.827156, 41.301983>,  <33.932930, 44.317726, 41.791130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290131, 43.827156, 41.301983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895660, 43.761509, 41.292789>,  <33.658978, 43.722122, 41.287273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895660, 43.761509, 41.292789>,  <34.290131, 43.827156, 41.301983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895660, 43.761509, 41.292789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041686, -0.111421, -0.992899,
		0.160389, -0.980128, 0.116721,
		-0.986174, -0.164116, -0.022987,
		33.599808, 43.712273, 41.285892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172649, 43.282341, 40.852978>,  <34.290131, 43.827156, 41.301983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172649, 43.282341, 40.852978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806835, 43.436836, 40.901043>,  <33.587345, 43.529533, 40.929882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806835, 43.436836, 40.901043>,  <34.172649, 43.282341, 40.852978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806835, 43.436836, 40.901043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250213, -0.306773, -0.918305,
		-0.317850, -0.869880, 0.377201,
		-0.914530, 0.386264, 0.120148,
		33.532475, 43.552708, 40.937092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736992, 42.753338, 40.771301>,  <34.172649, 43.282341, 40.852978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736992, 42.753338, 40.771301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555256, 43.096550, 40.675503>,  <33.446213, 43.302475, 40.618023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555256, 43.096550, 40.675503>,  <33.736992, 42.753338, 40.771301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555256, 43.096550, 40.675503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168252, -0.346666, -0.922775,
		-0.874794, -0.378958, 0.301870,
		-0.454341, 0.858029, -0.239501,
		33.418953, 43.353958, 40.603653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132439, 42.133026, 40.692619>,  <33.736992, 42.753338, 40.771301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132439, 42.133026, 40.692619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267647, 42.143879, 40.316319>,  <34.348770, 42.150391, 40.090538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267647, 42.143879, 40.316319>,  <34.132439, 42.133026, 40.692619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267647, 42.143879, 40.316319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724902, -0.644998, 0.241858,
		-0.600218, -0.763703, -0.237692,
		0.338018, 0.027137, -0.940748,
		34.369053, 42.152020, 40.034096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315125, 41.436874, 40.430840>,  <34.132439, 42.133026, 40.692619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315125, 41.436874, 40.430840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533192, 41.688293, 40.208950>,  <34.664032, 41.839146, 40.075817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533192, 41.688293, 40.208950>,  <34.315125, 41.436874, 40.430840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533192, 41.688293, 40.208950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815765, -0.550227, 0.178263,
		-0.193177, -0.549706, -0.812715,
		0.545170, 0.628548, -0.554722,
		34.696743, 41.876858, 40.042534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763824, 41.342239, 41.001904>,  <34.315125, 41.436874, 40.430840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763824, 41.342239, 41.001904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990894, 41.306755, 41.329285>,  <35.127136, 41.285465, 41.525715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990894, 41.306755, 41.329285>,  <34.763824, 41.342239, 41.001904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990894, 41.306755, 41.329285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324146, -0.937956, 0.123159,
		0.756750, -0.335214, -0.561214,
		0.567679, -0.088715, 0.818456,
		35.161198, 41.280140, 41.574821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127651, 40.702511, 41.000900>,  <34.763824, 41.342239, 41.001904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127651, 40.702511, 41.000900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079357, 40.796036, 41.386803>,  <35.050381, 40.852150, 41.618343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079357, 40.796036, 41.386803>,  <35.127651, 40.702511, 41.000900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079357, 40.796036, 41.386803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400334, -0.900798, 0.168211,
		0.908380, -0.365915, 0.202364,
		-0.120738, 0.233813, 0.964756,
		35.043137, 40.866180, 41.676228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817997, 40.915062, 40.768456>,  <35.127651, 40.702511, 41.000900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817997, 40.915062, 40.768456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003654, 40.905907, 40.414268>,  <36.115047, 40.900414, 40.201756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003654, 40.905907, 40.414268>,  <35.817997, 40.915062, 40.768456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003654, 40.905907, 40.414268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162974, 0.984806, 0.059969,
		0.870637, -0.172142, 0.460823,
		0.464144, -0.022890, -0.885464,
		36.142899, 40.899040, 40.148628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656197, 41.065842, 40.719536>,  <35.817997, 40.915062, 40.768456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656197, 41.065842, 40.719536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439861, 41.173317, 40.400711>,  <36.310059, 41.237801, 40.209415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439861, 41.173317, 40.400711>,  <36.656197, 41.065842, 40.719536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439861, 41.173317, 40.400711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143800, 0.963193, 0.227116,
		0.828743, 0.008216, -0.559569,
		-0.540839, 0.268687, -0.797058,
		36.277611, 41.253922, 40.161594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059826, 40.976074, 41.345596>,  <36.656197, 41.065842, 40.719536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059826, 40.976074, 41.345596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693428, 41.135067, 41.323864>,  <36.473587, 41.230465, 41.310825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693428, 41.135067, 41.323864>,  <37.059826, 40.976074, 41.345596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693428, 41.135067, 41.323864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292259, -0.568380, 0.769109,
		0.274830, 0.720381, 0.636804,
		-0.915999, 0.397486, -0.054330,
		36.418629, 41.254314, 41.307564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947098, 40.297932, 41.640007>,  <37.059826, 40.976074, 41.345596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947098, 40.297932, 41.640007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021843, 40.153286, 41.274643>,  <37.066689, 40.066498, 41.055424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021843, 40.153286, 41.274643>,  <36.947098, 40.297932, 41.640007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021843, 40.153286, 41.274643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949606, 0.304669, 0.073651,
		0.251654, -0.881141, 0.400325,
		0.186864, -0.361617, -0.913409,
		37.077904, 40.044800, 41.000622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664867, 40.358082, 41.591682>,  <36.947098, 40.297932, 41.640007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664867, 40.358082, 41.591682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561569, 40.288334, 41.211597>,  <37.499592, 40.246487, 40.983547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561569, 40.288334, 41.211597>,  <37.664867, 40.358082, 41.591682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561569, 40.288334, 41.211597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881305, 0.360388, -0.305649,
		0.395741, -0.916360, 0.060604,
		-0.258244, -0.174369, -0.950213,
		37.484097, 40.236023, 40.926533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058567, 39.685902, 41.161919>,  <37.664867, 40.358082, 41.591682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058567, 39.685902, 41.161919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949841, 40.031139, 40.991653>,  <37.884605, 40.238281, 40.889496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949841, 40.031139, 40.991653>,  <38.058567, 39.685902, 41.161919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949841, 40.031139, 40.991653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953967, 0.183402, -0.237300,
		-0.126744, -0.470567, -0.873214,
		-0.271815, 0.863093, -0.425661,
		37.868298, 40.290066, 40.863956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247097, 39.736332, 40.433285>,  <38.058567, 39.685902, 41.161919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247097, 39.736332, 40.433285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268303, 40.097908, 40.603024>,  <38.281025, 40.314854, 40.704868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268303, 40.097908, 40.603024>,  <38.247097, 39.736332, 40.433285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268303, 40.097908, 40.603024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956445, 0.076192, -0.281795,
		-0.287059, 0.420807, -0.860534,
		0.053016, 0.903945, 0.424350,
		38.284206, 40.369091, 40.730328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385693, 40.265804, 39.979343>,  <38.247097, 39.736332, 40.433285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385693, 40.265804, 39.979343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531765, 40.372047, 40.336239>,  <38.619408, 40.435791, 40.550377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531765, 40.372047, 40.336239>,  <38.385693, 40.265804, 39.979343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531765, 40.372047, 40.336239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926605, -0.011358, -0.375864,
		-0.089697, 0.964015, -0.250258,
		0.365181, 0.265604, 0.892243,
		38.641319, 40.451729, 40.603912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866261, 40.841251, 39.945400>,  <38.385693, 40.265804, 39.979343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866261, 40.841251, 39.945400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961216, 40.661236, 40.289749>,  <39.018188, 40.553226, 40.496361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961216, 40.661236, 40.289749>,  <38.866261, 40.841251, 39.945400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961216, 40.661236, 40.289749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944606, -0.099819, -0.312660,
		0.226642, 0.887410, 0.401418,
		0.237388, -0.450043, 0.860876,
		39.032433, 40.526222, 40.548012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452888, 41.111526, 39.340759>,  <38.866261, 40.841251, 39.945400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452888, 41.111526, 39.340759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813732, 41.079235, 39.171204>,  <39.030239, 41.059860, 39.069469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813732, 41.079235, 39.171204>,  <38.452888, 41.111526, 39.340759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813732, 41.079235, 39.171204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321022, -0.781992, -0.534260,
		-0.288349, 0.618039, -0.731357,
		0.902108, -0.080728, -0.423891,
		39.084366, 41.055016, 39.044037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493439, 40.867802, 38.574398>,  <38.452888, 41.111526, 39.340759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493439, 40.867802, 38.574398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826900, 40.726921, 38.744564>,  <39.026978, 40.642391, 38.846664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826900, 40.726921, 38.744564>,  <38.493439, 40.867802, 38.574398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826900, 40.726921, 38.744564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239191, -0.924529, -0.296704,
		0.497807, 0.145593, -0.854980,
		0.833652, -0.352205, 0.425412,
		39.076996, 40.621262, 38.872189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777058, 40.344700, 38.095680>,  <38.493439, 40.867802, 38.574398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777058, 40.344700, 38.095680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872406, 40.288486, 38.480061>,  <38.929615, 40.254761, 38.710690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872406, 40.288486, 38.480061>,  <38.777058, 40.344700, 38.095680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872406, 40.288486, 38.480061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255304, -0.963741, -0.077607,
		0.937016, -0.226836, -0.265607,
		0.238372, -0.140529, 0.960953,
		38.943916, 40.246326, 38.768345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333633, 39.898685, 38.035534>,  <38.777058, 40.344700, 38.095680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333633, 39.898685, 38.035534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105843, 39.887928, 38.364162>,  <38.969170, 39.881474, 38.561340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105843, 39.887928, 38.364162>,  <39.333633, 39.898685, 38.035534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105843, 39.887928, 38.364162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277857, -0.934336, -0.223184,
		0.773625, -0.355377, 0.524607,
		-0.569474, -0.026895, 0.821569,
		38.935001, 39.879860, 38.610634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545704, 39.262581, 38.445984>,  <39.333633, 39.898685, 38.035534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545704, 39.262581, 38.445984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163231, 39.372852, 38.485413>,  <38.933746, 39.439014, 38.509071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163231, 39.372852, 38.485413>,  <39.545704, 39.262581, 38.445984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163231, 39.372852, 38.485413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291037, -0.931645, -0.217568,
		0.031854, -0.236723, 0.971055,
		-0.956181, 0.275682, 0.098572,
		38.876377, 39.455559, 38.514984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315304, 38.590469, 38.144279>,  <39.545704, 39.262581, 38.445984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315304, 38.590469, 38.144279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087772, 38.858067, 37.952911>,  <38.951256, 39.018623, 37.838093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087772, 38.858067, 37.952911>,  <39.315304, 38.590469, 38.144279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087772, 38.858067, 37.952911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555244, 0.116766, 0.823450,
		0.606746, 0.734039, 0.305034,
		-0.568827, 0.668993, -0.478418,
		38.917126, 39.058765, 37.809387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825146, 38.947987, 37.651993>,  <39.315304, 38.590469, 38.144279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825146, 38.947987, 37.651993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134628, 38.883293, 37.406975>,  <40.320320, 38.844479, 37.259964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134628, 38.883293, 37.406975>,  <39.825146, 38.947987, 37.651993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134628, 38.883293, 37.406975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630894, 0.108406, 0.768258,
		-0.057848, -0.980862, 0.185911,
		0.773709, -0.161733, -0.612549,
		40.366741, 38.834774, 37.223209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377151, 38.484543, 38.033234>,  <39.825146, 38.947987, 37.651993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377151, 38.484543, 38.033234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555511, 38.709339, 37.754566>,  <40.662529, 38.844215, 37.587368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555511, 38.709339, 37.754566>,  <40.377151, 38.484543, 38.033234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555511, 38.709339, 37.754566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746039, 0.196714, 0.636184,
		0.494571, -0.803414, -0.331550,
		0.445898, 0.561988, -0.696666,
		40.689281, 38.877937, 37.545567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072414, 38.284470, 38.004700>,  <40.377151, 38.484543, 38.033234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072414, 38.284470, 38.004700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029018, 38.670044, 37.907490>,  <41.002979, 38.901390, 37.849163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029018, 38.670044, 37.907490>,  <41.072414, 38.284470, 38.004700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029018, 38.670044, 37.907490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912959, 0.193349, 0.359336,
		0.393365, -0.182883, -0.901009,
		-0.108493, 0.963935, -0.243021,
		40.996471, 38.959225, 37.834583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668869, 38.451168, 37.569687>,  <41.072414, 38.284470, 38.004700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668869, 38.451168, 37.569687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517517, 38.777683, 37.744274>,  <41.426708, 38.973591, 37.849026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517517, 38.777683, 37.744274>,  <41.668869, 38.451168, 37.569687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517517, 38.777683, 37.744274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925533, 0.341152, 0.164326,
		-0.014764, 0.466143, -0.884586,
		-0.378378, 0.816288, 0.436468,
		41.404003, 39.022572, 37.875214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343624, 38.719608, 37.661106>,  <41.668869, 38.451168, 37.569687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343624, 38.719608, 37.661106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095371, 38.993824, 37.813339>,  <41.946419, 39.158356, 37.904678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095371, 38.993824, 37.813339>,  <42.343624, 38.719608, 37.661106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095371, 38.993824, 37.813339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782162, 0.575381, 0.239081,
		-0.055081, 0.446061, -0.893306,
		-0.620636, 0.685541, 0.380584,
		41.909180, 39.199486, 37.927513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368591, 39.402401, 37.318989>,  <42.343624, 38.719608, 37.661106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368591, 39.402401, 37.318989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261208, 39.442135, 37.702251>,  <42.196777, 39.465977, 37.932209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261208, 39.442135, 37.702251>,  <42.368591, 39.402401, 37.318989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261208, 39.442135, 37.702251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725111, 0.675644, 0.133117,
		-0.634149, 0.730506, -0.253408,
		-0.268456, 0.099333, 0.958157,
		42.180672, 39.471935, 37.989700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002285, 40.065762, 37.405033>,  <42.368591, 39.402401, 37.318989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002285, 40.065762, 37.405033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222443, 39.925983, 37.708336>,  <42.354538, 39.842117, 37.890316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222443, 39.925983, 37.708336>,  <42.002285, 40.065762, 37.405033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222443, 39.925983, 37.708336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556535, 0.830554, -0.021214,
		-0.622359, 0.433672, 0.651611,
		0.550398, -0.349441, 0.758257,
		42.387562, 39.821152, 37.935814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411377, 40.003704, 36.745659>,  <42.002285, 40.065762, 37.405033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411377, 40.003704, 36.745659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496090, 40.089481, 37.127060>,  <42.546917, 40.140945, 37.355900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496090, 40.089481, 37.127060>,  <42.411377, 40.003704, 36.745659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496090, 40.089481, 37.127060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973193, 0.043255, -0.225884,
		-0.089682, 0.975779, -0.199529,
		0.211782, 0.214439, 0.953501,
		42.559624, 40.153812, 37.413109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926422, 40.564648, 36.617718>,  <42.411377, 40.003704, 36.745659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926422, 40.564648, 36.617718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020222, 40.383320, 36.961697>,  <43.076504, 40.274521, 37.168083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020222, 40.383320, 36.961697>,  <42.926422, 40.564648, 36.617718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020222, 40.383320, 36.961697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932873, -0.143867, -0.330228,
		0.273418, 0.879659, 0.389156,
		0.234501, -0.453323, 0.859946,
		43.090572, 40.247322, 37.219681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571167, 40.787975, 36.928265>,  <42.926422, 40.564648, 36.617718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571167, 40.787975, 36.928265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470322, 40.404690, 36.982330>,  <43.409813, 40.174721, 37.014771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470322, 40.404690, 36.982330>,  <43.571167, 40.787975, 36.928265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470322, 40.404690, 36.982330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912880, -0.281847, -0.295317,
		0.321072, 0.048939, 0.945789,
		-0.252116, -0.958211, 0.135168,
		43.394688, 40.117226, 37.022881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011269, 40.509819, 37.465977>,  <43.571167, 40.787975, 36.928265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011269, 40.509819, 37.465977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880074, 40.261784, 37.180904>,  <43.801357, 40.112965, 37.009861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880074, 40.261784, 37.180904>,  <44.011269, 40.509819, 37.465977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880074, 40.261784, 37.180904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944395, -0.196599, -0.263565,
		0.023320, -0.759501, 0.650088,
		-0.327984, -0.620087, -0.712684,
		43.781677, 40.075756, 36.967098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274090, 39.870132, 37.389614>,  <44.011269, 40.509819, 37.465977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274090, 39.870132, 37.389614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241787, 39.946827, 36.998367>,  <44.222404, 39.992844, 36.763618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241787, 39.946827, 36.998367>,  <44.274090, 39.870132, 37.389614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241787, 39.946827, 36.998367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994294, -0.053119, -0.092510,
		-0.069695, -0.980007, -0.186355,
		-0.080762, 0.191739, -0.978117,
		44.217560, 40.004349, 36.704933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911320, 39.533783, 37.083389>,  <44.274090, 39.870132, 37.389614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911320, 39.533783, 37.083389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777031, 39.856022, 36.888123>,  <44.696457, 40.049366, 36.770962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777031, 39.856022, 36.888123>,  <44.911320, 39.533783, 37.083389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777031, 39.856022, 36.888123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934802, 0.348707, -0.067438,
		0.115900, -0.478982, -0.870140,
		-0.335725, 0.805593, -0.488169,
		44.676311, 40.097698, 36.741673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329472, 39.631058, 36.485134>,  <44.911320, 39.533783, 37.083389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329472, 39.631058, 36.485134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166710, 39.991009, 36.547932>,  <45.069054, 40.206982, 36.585609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166710, 39.991009, 36.547932>,  <45.329472, 39.631058, 36.485134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166710, 39.991009, 36.547932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902023, 0.422949, -0.086422,
		-0.144171, 0.106450, -0.983811,
		-0.406902, 0.899879, 0.156997,
		45.044640, 40.260971, 36.595032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411358, 39.740597, 35.662788>,  <45.329472, 39.631058, 36.485134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411358, 39.740597, 35.662788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778572, 39.591591, 35.608452>,  <45.998901, 39.502190, 35.575848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778572, 39.591591, 35.608452>,  <45.411358, 39.740597, 35.662788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778572, 39.591591, 35.608452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386993, -0.916378, -0.102408,
		-0.086338, 0.146585, -0.985423,
		0.918032, -0.372510, -0.135846,
		46.053982, 39.479839, 35.567699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296154, 39.227985, 35.153568>,  <45.411358, 39.740597, 35.662788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296154, 39.227985, 35.153568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626862, 39.168800, 35.370663>,  <45.825287, 39.133289, 35.500919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626862, 39.168800, 35.370663>,  <45.296154, 39.227985, 35.153568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626862, 39.168800, 35.370663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318781, -0.918156, 0.235306,
		0.463500, -0.367557, -0.806269,
		0.826769, -0.147959, 0.542735,
		45.874893, 39.124413, 35.533482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614479, 38.560699, 34.967323>,  <45.296154, 39.227985, 35.153568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614479, 38.560699, 34.967323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663498, 38.696560, 35.340336>,  <45.692909, 38.778076, 35.564144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663498, 38.696560, 35.340336>,  <45.614479, 38.560699, 34.967323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663498, 38.696560, 35.340336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309418, -0.879709, 0.361072,
		0.942996, -0.332792, -0.002713,
		0.122549, 0.339650, 0.932534,
		45.700264, 38.798454, 35.620094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114418, 38.214581, 35.308937>,  <45.614479, 38.560699, 34.967323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114418, 38.214581, 35.308937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936676, 38.371044, 35.631313>,  <45.830029, 38.464924, 35.824738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936676, 38.371044, 35.631313>,  <46.114418, 38.214581, 35.308937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936676, 38.371044, 35.631313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170905, -0.920131, 0.352351,
		0.879397, 0.018830, 0.475717,
		-0.444357, 0.391159, 0.805942,
		45.803368, 38.488392, 35.873096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.500469, 38.065628, 35.905987>,  <46.114418, 38.214581, 35.308937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.500469, 38.065628, 35.905987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115360, 38.106953, 36.005905>,  <45.884296, 38.131748, 36.065857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115360, 38.106953, 36.005905>,  <46.500469, 38.065628, 35.905987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115360, 38.106953, 36.005905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020537, -0.893453, 0.448687,
		0.269536, 0.437113, 0.858069,
		-0.962771, 0.103315, 0.249794,
		45.826530, 38.137947, 36.080845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.276035, 37.843540, 36.627434>,  <46.500469, 38.065628, 35.905987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.276035, 37.843540, 36.627434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927170, 37.800816, 36.436474>,  <45.717850, 37.775181, 36.321896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927170, 37.800816, 36.436474>,  <46.276035, 37.843540, 36.627434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927170, 37.800816, 36.436474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017546, -0.968417, 0.248719,
		-0.488892, 0.225301, 0.842748,
		-0.872168, -0.106809, -0.477404,
		45.665520, 37.768772, 36.293251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792915, 37.484852, 37.092709>,  <46.276035, 37.843540, 36.627434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792915, 37.484852, 37.092709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694588, 37.430740, 36.708778>,  <45.635593, 37.398273, 36.478420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694588, 37.430740, 36.708778>,  <45.792915, 37.484852, 37.092709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694588, 37.430740, 36.708778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116356, -0.987171, 0.109336,
		-0.962308, -0.084805, 0.258404,
		-0.245817, -0.135282, -0.959830,
		45.620842, 37.390156, 36.420830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227631, 37.106331, 37.141197>,  <45.792915, 37.484852, 37.092709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227631, 37.106331, 37.141197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469059, 37.061913, 36.825382>,  <45.613914, 37.035263, 36.635891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469059, 37.061913, 36.825382>,  <45.227631, 37.106331, 37.141197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469059, 37.061913, 36.825382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187908, -0.942549, 0.276210,
		-0.774851, -0.315072, -0.548028,
		0.603570, -0.111043, -0.789540,
		45.650131, 37.028599, 36.588520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217876, 36.383274, 37.043461>,  <45.227631, 37.106331, 37.141197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217876, 36.383274, 37.043461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545338, 36.519360, 36.858391>,  <45.741814, 36.601009, 36.747349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545338, 36.519360, 36.858391>,  <45.217876, 36.383274, 37.043461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545338, 36.519360, 36.858391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447506, -0.882829, 0.142657,
		-0.359930, -0.323836, -0.874975,
		0.818651, 0.340210, -0.462675,
		45.790932, 36.621422, 36.719589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427883, 36.006580, 36.342155>,  <45.217876, 36.383274, 37.043461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427883, 36.006580, 36.342155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718044, 36.168583, 36.564781>,  <45.892139, 36.265785, 36.698357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718044, 36.168583, 36.564781>,  <45.427883, 36.006580, 36.342155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718044, 36.168583, 36.564781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362632, -0.912128, 0.191100,
		0.585054, 0.063204, -0.808527,
		0.725403, 0.405002, 0.556564,
		45.935665, 36.290085, 36.731750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106102, 35.938969, 36.014191>,  <45.427883, 36.006580, 36.342155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106102, 35.938969, 36.014191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099041, 35.928478, 36.413990>,  <46.094807, 35.922184, 36.653870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099041, 35.928478, 36.413990>,  <46.106102, 35.938969, 36.014191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099041, 35.928478, 36.413990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214458, -0.976489, -0.021838,
		0.976574, 0.213965, 0.022859,
		-0.017649, -0.026229, 0.999500,
		46.093746, 35.920609, 36.713840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783028, 35.693493, 36.341255>,  <46.106102, 35.938969, 36.014191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783028, 35.693493, 36.341255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451283, 35.603348, 36.545753>,  <46.252235, 35.549259, 36.668453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451283, 35.603348, 36.545753>,  <46.783028, 35.693493, 36.341255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451283, 35.603348, 36.545753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232139, -0.971314, -0.051589,
		0.508202, 0.075893, 0.857888,
		-0.829363, -0.225367, 0.511241,
		46.202473, 35.535736, 36.699127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.499905, 35.826874, 36.476562>,  <46.783028, 35.693493, 36.341255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.499905, 35.826874, 36.476562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632137, 36.152412, 36.285408>,  <47.711479, 36.347736, 36.170715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632137, 36.152412, 36.285408>,  <47.499905, 35.826874, 36.476562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632137, 36.152412, 36.285408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937020, -0.343510, 0.063202,
		-0.112722, -0.468682, -0.876146,
		0.330586, 0.813842, -0.477885,
		47.731312, 36.396564, 36.142044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.751575, 35.187160, 36.187775>,  <47.499905, 35.826874, 36.476562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.751575, 35.187160, 36.187775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704281, 35.013447, 36.544968>,  <47.675903, 34.909218, 36.759285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704281, 35.013447, 36.544968>,  <47.751575, 35.187160, 36.187775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.704281, 35.013447, 36.544968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528928, -0.788639, -0.313502,
		0.840390, 0.435257, 0.322949,
		-0.118237, -0.434280, 0.892984,
		47.668808, 34.883163, 36.812862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.512291, 34.818439, 35.614704>,  <47.751575, 35.187160, 36.187775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.512291, 34.818439, 35.614704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668598, 34.924011, 35.261967>,  <47.762383, 34.987354, 35.050323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668598, 34.924011, 35.261967>,  <47.512291, 34.818439, 35.614704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.668598, 34.924011, 35.261967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479165, -0.759654, -0.439689,
		-0.785941, 0.594363, -0.170380,
		0.390765, 0.263930, -0.881841,
		47.785828, 35.003189, 34.997414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.325325, 39.858845, 26.932629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.056633, 39.674057, 26.700989>,  <32.895416, 39.563183, 26.562004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.056633, 39.674057, 26.700989>,  <33.325325, 39.858845, 26.932629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056633, 39.674057, 26.700989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009751, -0.776147, 0.630477,
		-0.740729, 0.429159, 0.516859,
		-0.671733, -0.461973, -0.579099,
		32.855114, 39.535465, 26.527260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748623, 39.691376, 27.363934>,  <33.325325, 39.858845, 26.932629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748623, 39.691376, 27.363934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.732540, 39.427635, 27.063631>,  <32.722889, 39.269390, 26.883450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.732540, 39.427635, 27.063631>,  <32.748623, 39.691376, 27.363934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732540, 39.427635, 27.063631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270652, -0.716085, 0.643404,
		-0.961837, 0.229066, -0.149661,
		-0.040211, -0.659356, -0.750755,
		32.720478, 39.229828, 26.838404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016880, 39.305481, 27.338221>,  <32.748623, 39.691376, 27.363934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016880, 39.305481, 27.338221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.284901, 39.065357, 27.163565>,  <32.445713, 38.921284, 27.058771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.284901, 39.065357, 27.163565>,  <32.016880, 39.305481, 27.338221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284901, 39.065357, 27.163565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251593, -0.737058, 0.627253,
		-0.698369, -0.310444, -0.644907,
		0.670061, -0.600308, -0.436633,
		32.485916, 38.885265, 27.032574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657282, 38.753006, 27.280323>,  <32.016880, 39.305481, 27.338221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657282, 38.753006, 27.280323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.041847, 38.646511, 27.252604>,  <32.272587, 38.582615, 27.235971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.041847, 38.646511, 27.252604>,  <31.657282, 38.753006, 27.280323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041847, 38.646511, 27.252604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140413, -0.691490, 0.708608,
		-0.236579, -0.671535, -0.702191,
		0.961413, -0.266238, -0.069300,
		32.330273, 38.566639, 27.231813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769302, 38.037674, 27.002254>,  <31.657282, 38.753006, 27.280323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769302, 38.037674, 27.002254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.104668, 38.121895, 27.203344>,  <32.305885, 38.172428, 27.323999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.104668, 38.121895, 27.203344>,  <31.769302, 38.037674, 27.002254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104668, 38.121895, 27.203344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297425, -0.596190, 0.745719,
		0.456730, -0.774743, -0.437230,
		0.838413, 0.210549, 0.502726,
		32.356190, 38.185059, 27.354162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970905, 37.347965, 27.309502>,  <31.769302, 38.037674, 27.002254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970905, 37.347965, 27.309502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.158260, 37.629295, 27.523399>,  <32.270672, 37.798092, 27.651737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.158260, 37.629295, 27.523399>,  <31.970905, 37.347965, 27.309502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158260, 37.629295, 27.523399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199037, -0.505684, 0.839445,
		0.860813, -0.499617, -0.096867,
		0.468385, 0.703325, 0.534742,
		32.298775, 37.840294, 27.683823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309315, 36.907085, 27.801748>,  <31.970905, 37.347965, 27.309502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309315, 36.907085, 27.801748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.309460, 37.279659, 27.947311>,  <32.309547, 37.503204, 28.034649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.309460, 37.279659, 27.947311>,  <32.309315, 36.907085, 27.801748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309460, 37.279659, 27.947311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030880, -0.363744, 0.930987,
		0.999523, 0.010901, -0.028894,
		0.000362, 0.931435, 0.363907,
		32.309566, 37.559090, 28.056484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822449, 36.944168, 28.355522>,  <32.309315, 36.907085, 27.801748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822449, 36.944168, 28.355522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.582340, 37.256058, 28.426748>,  <32.438274, 37.443192, 28.469484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.582340, 37.256058, 28.426748>,  <32.822449, 36.944168, 28.355522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582340, 37.256058, 28.426748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167240, -0.095349, 0.981295,
		0.782115, 0.618824, -0.073166,
		-0.600273, 0.779721, 0.178066,
		32.402260, 37.489975, 28.480167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154125, 37.240528, 28.927629>,  <32.822449, 36.944168, 28.355522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154125, 37.240528, 28.927629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.782303, 37.387627, 28.917124>,  <32.559208, 37.475883, 28.910820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.782303, 37.387627, 28.917124>,  <33.154125, 37.240528, 28.927629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782303, 37.387627, 28.917124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077148, -0.124360, 0.989233,
		0.360516, 0.921575, 0.143970,
		-0.929557, 0.367742, -0.026263,
		32.503437, 37.497948, 28.909245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166218, 37.697491, 29.386791>,  <33.154125, 37.240528, 28.927629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166218, 37.697491, 29.386791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.780350, 37.601570, 29.343157>,  <32.548828, 37.544018, 29.316975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.780350, 37.601570, 29.343157>,  <33.166218, 37.697491, 29.386791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780350, 37.601570, 29.343157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088347, -0.095638, 0.991488,
		-0.248193, 0.966100, 0.071074,
		-0.964674, -0.239801, -0.109088,
		32.490948, 37.529629, 29.310431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873348, 38.206120, 29.835579>,  <33.166218, 37.697491, 29.386791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873348, 38.206120, 29.835579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.620625, 37.897274, 29.808271>,  <32.468990, 37.711967, 29.791887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.620625, 37.897274, 29.808271>,  <32.873348, 38.206120, 29.835579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620625, 37.897274, 29.808271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243277, 0.113900, 0.963246,
		-0.735956, 0.625198, -0.259800,
		-0.631810, -0.772111, -0.068271,
		32.431080, 37.665642, 29.787790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288147, 38.375126, 30.203768>,  <32.873348, 38.206120, 29.835579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288147, 38.375126, 30.203768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.261307, 37.976044, 30.200018>,  <32.245201, 37.736595, 30.197769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.261307, 37.976044, 30.200018>,  <32.288147, 38.375126, 30.203768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261307, 37.976044, 30.200018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353636, 0.014997, 0.935263,
		-0.932973, 0.066071, -0.353830,
		-0.067100, -0.997702, -0.009374,
		32.241177, 37.676735, 30.197206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660753, 38.273479, 30.467955>,  <32.288147, 38.375126, 30.203768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660753, 38.273479, 30.467955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.843010, 37.921261, 30.520145>,  <31.952364, 37.709930, 30.551460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.843010, 37.921261, 30.520145>,  <31.660753, 38.273479, 30.467955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843010, 37.921261, 30.520145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414060, -0.079896, 0.906736,
		-0.788002, -0.467171, -0.401004,
		0.455640, -0.880550, 0.130479,
		31.979702, 37.657097, 30.559290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179012, 37.670902, 30.764610>,  <31.660753, 38.273479, 30.467955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179012, 37.670902, 30.764610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.561153, 37.604717, 30.862528>,  <31.790438, 37.565006, 30.921278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.561153, 37.604717, 30.862528>,  <31.179012, 37.670902, 30.764610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561153, 37.604717, 30.862528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251207, -0.018674, 0.967753,
		-0.155554, -0.986040, -0.059405,
		0.955352, -0.165461, 0.244795,
		31.847759, 37.555080, 30.935966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147205, 37.300751, 31.319578>,  <31.179012, 37.670902, 30.764610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147205, 37.300751, 31.319578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.542494, 37.354778, 31.348351>,  <31.779667, 37.387196, 31.365614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.542494, 37.354778, 31.348351>,  <31.147205, 37.300751, 31.319578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542494, 37.354778, 31.348351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076633, 0.029928, 0.996610,
		0.132464, -0.990383, 0.039927,
		0.988221, 0.135074, 0.071931,
		31.838961, 37.395302, 31.369930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462509, 36.717705, 31.609930>,  <31.147205, 37.300751, 31.319578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462509, 36.717705, 31.609930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718184, 37.021053, 31.661009>,  <31.871588, 37.203064, 31.691656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718184, 37.021053, 31.661009>,  <31.462509, 36.717705, 31.609930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718184, 37.021053, 31.661009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012101, -0.175940, 0.984326,
		0.768955, -0.627625, -0.121635,
		0.639188, 0.758375, 0.127695,
		31.909941, 37.248566, 31.699318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985529, 36.472313, 32.081558>,  <31.462509, 36.717705, 31.609930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985529, 36.472313, 32.081558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.993584, 36.871799, 32.100174>,  <31.998417, 37.111492, 32.111343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.993584, 36.871799, 32.100174>,  <31.985529, 36.472313, 32.081558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993584, 36.871799, 32.100174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018893, -0.046924, 0.998720,
		0.999619, -0.019231, -0.019814,
		0.020136, 0.998713, 0.046542,
		31.999624, 37.171413, 32.114136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508175, 36.536034, 32.511105>,  <31.985529, 36.472313, 32.081558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508175, 36.536034, 32.511105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.330849, 36.894463, 32.501995>,  <32.224453, 37.109520, 32.496529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.330849, 36.894463, 32.501995>,  <32.508175, 36.536034, 32.511105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330849, 36.894463, 32.501995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053312, 0.051721, 0.997238,
		0.894778, 0.440879, -0.070700,
		-0.443318, 0.896075, -0.022775,
		32.197853, 37.163284, 32.495163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866108, 37.033798, 33.113300>,  <32.508175, 36.536034, 32.511105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866108, 37.033798, 33.113300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.498466, 37.181133, 33.057343>,  <32.277882, 37.269535, 33.023769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.498466, 37.181133, 33.057343>,  <32.866108, 37.033798, 33.113300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498466, 37.181133, 33.057343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117578, 0.082477, 0.989633,
		0.376054, 0.926028, -0.032497,
		-0.919108, 0.368334, -0.139896,
		32.222733, 37.291634, 33.015373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873440, 37.703712, 33.472389>,  <32.866108, 37.033798, 33.113300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873440, 37.703712, 33.472389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481220, 37.628292, 33.450565>,  <32.245888, 37.583042, 33.437473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481220, 37.628292, 33.450565>,  <32.873440, 37.703712, 33.472389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481220, 37.628292, 33.450565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088385, 0.175961, 0.980421,
		-0.175257, 0.966171, -0.189203,
		-0.980547, -0.188548, -0.054556,
		32.187057, 37.571728, 33.434200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660580, 37.827812, 34.115532>,  <32.873440, 37.703712, 33.472389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660580, 37.827812, 34.115532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306259, 37.712826, 33.969810>,  <32.093666, 37.643833, 33.882378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306259, 37.712826, 33.969810>,  <32.660580, 37.827812, 34.115532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306259, 37.712826, 33.969810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411272, 0.122646, 0.903224,
		-0.214967, 0.949906, -0.226867,
		-0.885802, -0.287467, -0.364305,
		32.040520, 37.626587, 33.860519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096867, 38.330322, 34.221745>,  <32.660580, 37.827812, 34.115532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096867, 38.330322, 34.221745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991966, 37.944386, 34.228653>,  <31.929026, 37.712822, 34.232800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991966, 37.944386, 34.228653>,  <32.096867, 38.330322, 34.221745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991966, 37.944386, 34.228653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369694, 0.116985, 0.921759,
		-0.891376, 0.235345, -0.387377,
		-0.262249, -0.964846, 0.017273,
		31.913292, 37.654930, 34.233833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441971, 38.591938, 34.914345>,  <32.096867, 38.330322, 34.221745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441971, 38.591938, 34.914345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.638680, 38.832260, 35.166439>,  <32.756702, 38.976452, 35.317696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.638680, 38.832260, 35.166439>,  <32.441971, 38.591938, 34.914345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638680, 38.832260, 35.166439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401907, 0.485467, -0.776397,
		-0.772422, 0.635104, -0.002730,
		0.491768, 0.600803, 0.630238,
		32.786209, 39.012501, 35.355511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223930, 39.369881, 34.811024>,  <32.441971, 38.591938, 34.914345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223930, 39.369881, 34.811024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599731, 39.348858, 34.946419>,  <32.825211, 39.336243, 35.027657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599731, 39.348858, 34.946419>,  <32.223930, 39.369881, 34.811024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599731, 39.348858, 34.946419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315701, 0.516305, -0.796092,
		-0.132923, 0.854790, 0.501662,
		0.939502, -0.052556, 0.338487,
		32.881580, 39.333092, 35.047966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459309, 40.061802, 34.624287>,  <32.223930, 39.369881, 34.811024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459309, 40.061802, 34.624287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771019, 39.815552, 34.671165>,  <32.958046, 39.667801, 34.699291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.771019, 39.815552, 34.671165>,  <32.459309, 40.061802, 34.624287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771019, 39.815552, 34.671165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387871, 0.326928, -0.861786,
		0.492220, 0.717028, 0.493549,
		0.779279, -0.615621, 0.117194,
		33.004803, 39.630867, 34.706322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927391, 40.463184, 34.314663>,  <32.459309, 40.061802, 34.624287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927391, 40.463184, 34.314663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.123482, 40.114700, 34.324936>,  <33.241138, 39.905609, 34.331100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.123482, 40.114700, 34.324936>,  <32.927391, 40.463184, 34.314663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123482, 40.114700, 34.324936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392904, 0.194591, -0.898755,
		0.778010, 0.450689, 0.437698,
		0.490231, -0.871214, 0.025683,
		33.270550, 39.853336, 34.332642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502918, 40.717167, 33.994156>,  <32.927391, 40.463184, 34.314663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502918, 40.717167, 33.994156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537991, 40.319263, 33.973110>,  <33.559032, 40.080521, 33.960484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537991, 40.319263, 33.973110>,  <33.502918, 40.717167, 33.994156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537991, 40.319263, 33.973110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199548, 0.069284, -0.977436,
		0.975957, 0.075203, 0.204577,
		0.087680, -0.994758, -0.052611,
		33.564293, 40.020836, 33.957325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189274, 40.611050, 33.730515>,  <33.502918, 40.717167, 33.994156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189274, 40.611050, 33.730515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976986, 40.276569, 33.675228>,  <33.849613, 40.075882, 33.642056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976986, 40.276569, 33.675228>,  <34.189274, 40.611050, 33.730515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976986, 40.276569, 33.675228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201973, 0.033604, -0.978814,
		0.823132, -0.547389, 0.151056,
		-0.530717, -0.836203, -0.138218,
		33.817772, 40.025707, 33.633762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554123, 40.255070, 33.319935>,  <34.189274, 40.611050, 33.730515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554123, 40.255070, 33.319935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.203060, 40.071747, 33.263828>,  <33.992424, 39.961754, 33.230164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.203060, 40.071747, 33.263828>,  <34.554123, 40.255070, 33.319935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203060, 40.071747, 33.263828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120708, 0.071870, -0.990083,
		0.463848, -0.885881, -0.007755,
		-0.877653, -0.458311, -0.140269,
		33.939766, 39.934254, 33.221748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723343, 39.731766, 32.872692>,  <34.554123, 40.255070, 33.319935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723343, 39.731766, 32.872692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333523, 39.815681, 32.841091>,  <34.099632, 39.866032, 32.822132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333523, 39.815681, 32.841091>,  <34.723343, 39.731766, 32.872692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333523, 39.815681, 32.841091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073085, -0.035814, -0.996682,
		-0.211925, -0.977090, 0.019570,
		-0.974549, 0.209792, -0.079000,
		34.041157, 39.878620, 32.817390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443726, 39.392242, 32.242039>,  <34.723343, 39.731766, 32.872692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443726, 39.392242, 32.242039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.170570, 39.672386, 32.325142>,  <34.006676, 39.840473, 32.375004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.170570, 39.672386, 32.325142>,  <34.443726, 39.392242, 32.242039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170570, 39.672386, 32.325142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182632, 0.111686, -0.976817,
		-0.707325, -0.705000, 0.051639,
		-0.682888, 0.700358, 0.207754,
		33.965702, 39.882492, 32.387466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775913, 39.263577, 31.869446>,  <34.443726, 39.392242, 32.242039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775913, 39.263577, 31.869446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.777771, 39.652428, 31.963215>,  <33.778885, 39.885738, 32.019478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.777771, 39.652428, 31.963215>,  <33.775913, 39.263577, 31.869446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777771, 39.652428, 31.963215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216099, 0.229860, -0.948929,
		-0.976360, -0.046251, 0.211143,
		0.004644, 0.972124, 0.234421,
		33.779163, 39.944065, 32.033543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248528, 39.452591, 31.583696>,  <33.775913, 39.263577, 31.869446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248528, 39.452591, 31.583696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.425808, 39.806259, 31.642786>,  <33.532177, 40.018459, 31.678240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.425808, 39.806259, 31.642786>,  <33.248528, 39.452591, 31.583696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425808, 39.806259, 31.642786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292425, 0.298378, -0.908547,
		-0.847385, 0.359471, 0.390794,
		0.443201, 0.884167, 0.147723,
		33.558769, 40.071510, 31.687103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722466, 40.133034, 31.480690>,  <33.248528, 39.452591, 31.583696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722466, 40.133034, 31.480690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.107250, 40.231594, 31.433510>,  <33.338123, 40.290730, 31.405201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.107250, 40.231594, 31.433510>,  <32.722466, 40.133034, 31.480690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107250, 40.231594, 31.433510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195968, 0.321631, -0.926364,
		-0.190318, 0.914243, 0.357684,
		0.961964, 0.246399, -0.117951,
		33.395840, 40.305515, 31.398125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740524, 40.774429, 31.141409>,  <32.722466, 40.133034, 31.480690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740524, 40.774429, 31.141409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.119846, 40.662167, 31.082159>,  <33.347439, 40.594807, 31.046610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.119846, 40.662167, 31.082159>,  <32.740524, 40.774429, 31.141409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119846, 40.662167, 31.082159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019414, 0.414578, -0.909807,
		0.316755, 0.865653, 0.387699,
		0.948309, -0.280659, -0.148125,
		33.404339, 40.577969, 31.037722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140064, 41.432789, 30.958809>,  <32.740524, 40.774429, 31.141409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140064, 41.432789, 30.958809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.367332, 41.134056, 30.820578>,  <33.503693, 40.954815, 30.737638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.367332, 41.134056, 30.820578>,  <33.140064, 41.432789, 30.958809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367332, 41.134056, 30.820578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199585, 0.532468, -0.822583,
		0.798342, 0.398395, 0.451589,
		0.568169, -0.746833, -0.345578,
		33.537785, 40.910007, 30.716904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690968, 41.810898, 30.662262>,  <33.140064, 41.432789, 30.958809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690968, 41.810898, 30.662262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.646984, 41.449268, 30.497066>,  <33.620594, 41.232292, 30.397949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.646984, 41.449268, 30.497066>,  <33.690968, 41.810898, 30.662262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646984, 41.449268, 30.497066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018434, 0.417293, -0.908585,
		0.993765, -0.092294, -0.062551,
		-0.109959, -0.904073, -0.412990,
		33.613995, 41.178047, 30.373169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276402, 41.753040, 30.093500>,  <33.690968, 41.810898, 30.662262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276402, 41.753040, 30.093500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019012, 41.462650, 29.996418>,  <33.864578, 41.288414, 29.938169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019012, 41.462650, 29.996418>,  <34.276402, 41.753040, 30.093500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019012, 41.462650, 29.996418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128219, 0.210365, -0.969178,
		0.754658, -0.654754, -0.042280,
		-0.643468, -0.725977, -0.242706,
		33.825974, 41.244858, 29.923607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649559, 41.477890, 29.597258>,  <34.276402, 41.753040, 30.093500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649559, 41.477890, 29.597258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278477, 41.343246, 29.532679>,  <34.055828, 41.262463, 29.493931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278477, 41.343246, 29.532679>,  <34.649559, 41.477890, 29.597258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278477, 41.343246, 29.532679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181758, -0.029507, -0.982901,
		0.326087, -0.941183, 0.088555,
		-0.927702, -0.336606, -0.161446,
		34.000168, 41.242264, 29.484245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672588, 40.997547, 29.086363>,  <34.649559, 41.477890, 29.597258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672588, 40.997547, 29.086363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295475, 41.130898, 29.087692>,  <34.069206, 41.210907, 29.088490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295475, 41.130898, 29.087692>,  <34.672588, 40.997547, 29.086363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295475, 41.130898, 29.087692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012308, -0.024834, -0.999616,
		-0.333170, -0.942465, 0.027516,
		-0.942786, 0.333381, 0.003325,
		34.012638, 41.230911, 29.088690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.287140, 40.492733, 28.631836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.039772, 40.804806, 28.669516>,  <33.891350, 40.992050, 28.692123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.039772, 40.804806, 28.669516>,  <34.287140, 40.492733, 28.631836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039772, 40.804806, 28.669516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221562, -0.058093, -0.973414,
		-0.753969, -0.622848, 0.208785,
		-0.618418, 0.780183, 0.094199,
		33.854248, 41.038860, 28.697775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722584, 40.393036, 28.086971>,  <34.287140, 40.492733, 28.631836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722584, 40.393036, 28.086971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723728, 40.776901, 28.199427>,  <33.724415, 41.007221, 28.266901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723728, 40.776901, 28.199427>,  <33.722584, 40.393036, 28.086971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723728, 40.776901, 28.199427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167657, 0.277622, -0.945948,
		-0.985841, -0.044430, 0.161688,
		0.002860, 0.959663, 0.281140,
		33.724586, 41.064800, 28.283770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298523, 40.723938, 27.633665>,  <33.722584, 40.393036, 28.086971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298523, 40.723938, 27.633665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426945, 41.059624, 27.809233>,  <33.503998, 41.261036, 27.914574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426945, 41.059624, 27.809233>,  <33.298523, 40.723938, 27.633665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426945, 41.059624, 27.809233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219290, 0.516730, -0.827588,
		-0.921324, 0.169448, 0.349928,
		0.321052, 0.839212, 0.438918,
		33.523262, 41.311386, 27.940908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825333, 41.165722, 27.546837>,  <33.298523, 40.723938, 27.633665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825333, 41.165722, 27.546837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179764, 41.347569, 27.583029>,  <33.392422, 41.456676, 27.604744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179764, 41.347569, 27.583029>,  <32.825333, 41.165722, 27.546837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179764, 41.347569, 27.583029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122229, 0.417446, -0.900444,
		-0.447123, 0.786808, 0.425458,
		0.886082, 0.454612, 0.090479,
		33.445587, 41.483952, 27.610172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719238, 41.919212, 27.295851>,  <32.825333, 41.165722, 27.546837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719238, 41.919212, 27.295851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.109482, 41.838268, 27.261824>,  <33.343628, 41.789700, 27.241407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.109482, 41.838268, 27.261824>,  <32.719238, 41.919212, 27.295851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109482, 41.838268, 27.261824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051535, 0.587846, -0.807330,
		0.213382, 0.783254, 0.583936,
		0.975609, -0.202363, -0.085070,
		33.402164, 41.777561, 27.236303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010334, 42.538548, 27.210245>,  <32.719238, 41.919212, 27.295851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010334, 42.538548, 27.210245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285255, 42.288979, 27.061472>,  <33.450207, 42.139236, 26.972208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285255, 42.288979, 27.061472>,  <33.010334, 42.538548, 27.210245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285255, 42.288979, 27.061472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031222, 0.536946, -0.843038,
		0.725698, 0.567812, 0.388526,
		0.687305, -0.623921, -0.371933,
		33.491447, 42.101803, 26.949892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482899, 42.963505, 27.010162>,  <33.010334, 42.538548, 27.210245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482899, 42.963505, 27.010162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539516, 42.616978, 26.818558>,  <33.573486, 42.409061, 26.703594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539516, 42.616978, 26.818558>,  <33.482899, 42.963505, 27.010162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539516, 42.616978, 26.818558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132190, 0.496090, -0.858149,
		0.981067, 0.058143, 0.184736,
		0.141541, -0.866322, -0.479011,
		33.581978, 42.357082, 26.674854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071701, 43.089691, 26.660128>,  <33.482899, 42.963505, 27.010162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071701, 43.089691, 26.660128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895348, 42.781204, 26.476456>,  <33.789536, 42.596111, 26.366253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895348, 42.781204, 26.476456>,  <34.071701, 43.089691, 26.660128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895348, 42.781204, 26.476456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243841, 0.389431, -0.888192,
		0.863809, -0.503553, 0.016362,
		-0.440880, -0.771218, -0.459182,
		33.763084, 42.549839, 26.338701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539082, 42.861504, 26.101158>,  <34.071701, 43.089691, 26.660128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539082, 42.861504, 26.101158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209343, 42.664368, 25.989758>,  <34.011501, 42.546085, 25.922916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209343, 42.664368, 25.989758>,  <34.539082, 42.861504, 26.101158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209343, 42.664368, 25.989758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217615, 0.178286, -0.959614,
		0.522589, -0.851659, -0.039720,
		-0.824345, -0.492840, -0.278504,
		33.962040, 42.516514, 25.906206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757584, 42.470436, 25.558506>,  <34.539082, 42.861504, 26.101158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757584, 42.470436, 25.558506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365063, 42.542030, 25.530197>,  <34.129551, 42.584988, 25.513212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365063, 42.542030, 25.530197>,  <34.757584, 42.470436, 25.558506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365063, 42.542030, 25.530197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119604, 0.278982, -0.952819,
		-0.150795, -0.943469, -0.295173,
		-0.981303, 0.178984, -0.070774,
		34.070671, 42.595726, 25.508965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663517, 42.226784, 24.907946>,  <34.757584, 42.470436, 25.558506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663517, 42.226784, 24.907946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329567, 42.428558, 24.996056>,  <34.129196, 42.549625, 25.048922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329567, 42.428558, 24.996056>,  <34.663517, 42.226784, 24.907946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329567, 42.428558, 24.996056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004230, 0.394290, -0.918977,
		-0.550420, -0.768164, -0.327050,
		-0.834877, 0.504440, 0.220274,
		34.079105, 42.579891, 25.062138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192394, 42.111374, 24.339272>,  <34.663517, 42.226784, 24.907946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192394, 42.111374, 24.339272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075581, 42.449520, 24.518192>,  <34.005493, 42.652409, 24.625544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075581, 42.449520, 24.518192>,  <34.192394, 42.111374, 24.339272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075581, 42.449520, 24.518192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056623, 0.451584, -0.890430,
		-0.954732, -0.285360, -0.084010,
		-0.292030, 0.845365, 0.447300,
		33.987972, 42.703129, 24.652382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563507, 42.354008, 23.992195>,  <34.192394, 42.111374, 24.339272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563507, 42.354008, 23.992195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739887, 42.672089, 24.158672>,  <33.845715, 42.862938, 24.258558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739887, 42.672089, 24.158672>,  <33.563507, 42.354008, 23.992195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739887, 42.672089, 24.158672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163247, 0.527033, -0.834019,
		-0.882560, 0.299820, 0.362211,
		0.440952, 0.795201, 0.416193,
		33.872173, 42.910648, 24.283529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206112, 42.910072, 23.647181>,  <33.563507, 42.354008, 23.992195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206112, 42.910072, 23.647181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516113, 43.106606, 23.806164>,  <33.702114, 43.224525, 23.901554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516113, 43.106606, 23.806164>,  <33.206112, 42.910072, 23.647181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516113, 43.106606, 23.806164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066107, 0.688503, -0.722214,
		-0.628495, 0.533441, 0.566070,
		0.774999, 0.491329, 0.397457,
		33.748611, 43.254005, 23.925402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028896, 43.638226, 23.644728>,  <33.206112, 42.910072, 23.647181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028896, 43.638226, 23.644728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427547, 43.609333, 23.660320>,  <33.666737, 43.591999, 23.669676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427547, 43.609333, 23.660320>,  <33.028896, 43.638226, 23.644728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427547, 43.609333, 23.660320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080590, 0.771051, -0.631653,
		0.015567, 0.632663, 0.774270,
		0.996626, -0.072231, 0.038984,
		33.726536, 43.587666, 23.672016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288570, 44.367538, 23.812773>,  <33.028896, 43.638226, 23.644728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288570, 44.367538, 23.812773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.576862, 44.145435, 23.646772>,  <33.749840, 44.012173, 23.547173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.576862, 44.145435, 23.646772>,  <33.288570, 44.367538, 23.812773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576862, 44.145435, 23.646772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108961, 0.681969, -0.723219,
		0.684594, 0.476030, 0.552020,
		0.720734, -0.555261, -0.415003,
		33.793083, 43.978859, 23.522272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704067, 44.837128, 23.530981>,  <33.288570, 44.367538, 23.812773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704067, 44.837128, 23.530981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833527, 44.510292, 23.340147>,  <33.911201, 44.314190, 23.225647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833527, 44.510292, 23.340147>,  <33.704067, 44.837128, 23.530981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833527, 44.510292, 23.340147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133774, 0.538676, -0.831825,
		0.936674, 0.205396, 0.283646,
		0.323647, -0.817093, -0.477087,
		33.930622, 44.265163, 23.197021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223793, 45.055641, 23.241648>,  <33.704067, 44.837128, 23.530981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223793, 45.055641, 23.241648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117275, 44.731441, 23.032963>,  <34.053364, 44.536922, 22.907751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117275, 44.731441, 23.032963>,  <34.223793, 45.055641, 23.241648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117275, 44.731441, 23.032963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060671, 0.526089, -0.848263,
		0.961980, -0.257543, -0.090922,
		-0.266297, -0.810495, -0.521712,
		34.037388, 44.488293, 22.876450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676216, 45.153149, 22.721493>,  <34.223793, 45.055641, 23.241648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676216, 45.153149, 22.721493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399887, 44.892418, 22.596350>,  <34.234089, 44.735977, 22.521263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399887, 44.892418, 22.596350>,  <34.676216, 45.153149, 22.721493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399887, 44.892418, 22.596350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096736, 0.512146, -0.853433,
		0.716522, -0.559307, -0.416858,
		-0.690824, -0.651829, -0.312859,
		34.192638, 44.696869, 22.502493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886875, 44.958675, 21.975595>,  <34.676216, 45.153149, 22.721493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886875, 44.958675, 21.975595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503990, 44.846447, 22.003937>,  <34.274258, 44.779110, 22.020941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503990, 44.846447, 22.003937>,  <34.886875, 44.958675, 21.975595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503990, 44.846447, 22.003937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211909, 0.512891, -0.831888,
		0.197062, -0.811310, -0.550402,
		-0.957215, -0.280569, 0.070853,
		34.216827, 44.762276, 22.025192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689941, 44.712078, 21.373234>,  <34.886875, 44.958675, 21.975595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689941, 44.712078, 21.373234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322212, 44.774593, 21.517685>,  <34.101574, 44.812103, 21.604355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322212, 44.774593, 21.517685>,  <34.689941, 44.712078, 21.373234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322212, 44.774593, 21.517685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248400, 0.481275, -0.840638,
		-0.305182, -0.862525, -0.403627,
		-0.919327, 0.156287, 0.361128,
		34.046413, 44.821480, 21.626022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248596, 44.502880, 20.857929>,  <34.689941, 44.712078, 21.373234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248596, 44.502880, 20.857929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046658, 44.762131, 21.085987>,  <33.925495, 44.917683, 21.222822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046658, 44.762131, 21.085987>,  <34.248596, 44.502880, 20.857929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046658, 44.762131, 21.085987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318420, 0.474086, -0.820884,
		-0.802335, -0.595963, -0.032963,
		-0.504844, 0.648128, 0.570143,
		33.895203, 44.956570, 21.257030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567280, 44.447784, 20.561970>,  <34.248596, 44.502880, 20.857929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567280, 44.447784, 20.561970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.617161, 44.787174, 20.767706>,  <33.647091, 44.990807, 20.891148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.617161, 44.787174, 20.767706>,  <33.567280, 44.447784, 20.561970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617161, 44.787174, 20.767706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299057, 0.526421, -0.795893,
		-0.946052, -0.054566, 0.319387,
		0.124703, 0.848471, 0.514340,
		33.654572, 45.041714, 20.922009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989071, 44.810848, 20.254137>,  <33.567280, 44.447784, 20.561970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989071, 44.810848, 20.254137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288097, 45.044605, 20.380402>,  <33.467514, 45.184860, 20.456160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288097, 45.044605, 20.380402>,  <32.989071, 44.810848, 20.254137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288097, 45.044605, 20.380402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072965, 0.400120, -0.913553,
		-0.660172, 0.705970, 0.256475,
		0.747562, 0.584389, 0.315660,
		33.512367, 45.219921, 20.475100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835331, 44.052898, 20.205069>,  <32.989071, 44.810848, 20.254137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835331, 44.052898, 20.205069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790310, 43.782536, 19.913731>,  <32.763298, 43.620319, 19.738928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790310, 43.782536, 19.913731>,  <32.835331, 44.052898, 20.205069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790310, 43.782536, 19.913731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122996, -0.717888, 0.685207,
		-0.986004, 0.166705, -0.002334,
		-0.112552, -0.675904, -0.728344,
		32.756546, 43.579765, 19.695227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227764, 43.650852, 20.396593>,  <32.835331, 44.052898, 20.205069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227764, 43.650852, 20.396593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.424244, 43.418945, 20.136564>,  <32.542133, 43.279800, 19.980547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.424244, 43.418945, 20.136564>,  <32.227764, 43.650852, 20.396593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424244, 43.418945, 20.136564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224995, -0.805436, 0.548315,
		-0.841487, -0.123068, -0.526074,
		0.491199, -0.579764, -0.650075,
		32.571606, 43.245018, 19.941542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747139, 43.121864, 20.358482>,  <32.227764, 43.650852, 20.396593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747139, 43.121864, 20.358482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.119537, 43.017250, 20.256620>,  <32.342976, 42.954483, 20.195503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.119537, 43.017250, 20.256620>,  <31.747139, 43.121864, 20.358482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119537, 43.017250, 20.256620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003178, -0.691786, 0.722095,
		-0.365018, -0.673076, -0.643218,
		0.930995, -0.261534, -0.254654,
		32.398834, 42.938789, 20.180223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660913, 42.463799, 20.542240>,  <31.747139, 43.121864, 20.358482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660913, 42.463799, 20.542240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.055279, 42.500320, 20.486191>,  <32.291897, 42.522232, 20.452560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.055279, 42.500320, 20.486191>,  <31.660913, 42.463799, 20.542240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055279, 42.500320, 20.486191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160468, -0.752525, 0.638714,
		-0.047128, -0.652204, -0.756578,
		0.985915, 0.091305, -0.140123,
		32.351055, 42.527710, 20.444155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971586, 41.754044, 20.370523>,  <31.660913, 42.463799, 20.542240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971586, 41.754044, 20.370523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.250534, 41.992027, 20.530376>,  <32.417904, 42.134815, 20.626287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.250534, 41.992027, 20.530376>,  <31.971586, 41.754044, 20.370523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250534, 41.992027, 20.530376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089421, -0.625460, 0.775115,
		0.711113, -0.504805, -0.489377,
		0.697368, 0.594956, 0.399633,
		32.459743, 42.170513, 20.650267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524445, 41.302639, 20.573889>,  <31.971586, 41.754044, 20.370523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524445, 41.302639, 20.573889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586510, 41.636265, 20.785645>,  <32.623749, 41.836441, 20.912699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586510, 41.636265, 20.785645>,  <32.524445, 41.302639, 20.573889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586510, 41.636265, 20.785645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067143, -0.543546, 0.836690,
		0.985604, -0.094279, -0.140340,
		0.155163, 0.834068, 0.529391,
		32.633060, 41.886486, 20.944462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932152, 41.094765, 21.147669>,  <32.524445, 41.302639, 20.573889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932152, 41.094765, 21.147669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.723820, 41.414589, 21.267294>,  <32.598820, 41.606483, 21.339069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.723820, 41.414589, 21.267294>,  <32.932152, 41.094765, 21.147669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723820, 41.414589, 21.267294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099874, -0.290854, 0.951540,
		0.847796, 0.525462, 0.071631,
		-0.520832, 0.799558, 0.299065,
		32.567570, 41.654457, 21.357014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203129, 41.207607, 21.834719>,  <32.932152, 41.094765, 21.147669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203129, 41.207607, 21.834719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873936, 41.434158, 21.817211>,  <32.676422, 41.570091, 21.806707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873936, 41.434158, 21.817211>,  <33.203129, 41.207607, 21.834719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873936, 41.434158, 21.817211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125451, -0.106058, 0.986415,
		0.554045, 0.817291, 0.158337,
		-0.822980, 0.566381, -0.043769,
		32.627041, 41.604073, 21.804081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209183, 41.723484, 22.367741>,  <33.203129, 41.207607, 21.834719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209183, 41.723484, 22.367741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.817421, 41.665867, 22.311159>,  <32.582363, 41.631294, 22.277210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.817421, 41.665867, 22.311159>,  <33.209183, 41.723484, 22.367741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817421, 41.665867, 22.311159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133025, -0.066610, 0.988872,
		-0.151865, 0.987327, 0.046076,
		-0.979409, -0.144046, -0.141454,
		32.523598, 41.622654, 22.268723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978577, 42.224735, 22.897654>,  <33.209183, 41.723484, 22.367741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978577, 42.224735, 22.897654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694565, 41.967106, 22.783791>,  <32.524158, 41.812527, 22.715473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694565, 41.967106, 22.783791>,  <32.978577, 42.224735, 22.897654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694565, 41.967106, 22.783791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199491, -0.203703, 0.958493,
		-0.675326, 0.737343, 0.016148,
		-0.710027, -0.644073, -0.284659,
		32.481556, 41.773884, 22.698393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469658, 42.362957, 23.377094>,  <32.978577, 42.224735, 22.897654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469658, 42.362957, 23.377094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376629, 41.998711, 23.240454>,  <32.320812, 41.780163, 23.158468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376629, 41.998711, 23.240454>,  <32.469658, 42.362957, 23.377094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376629, 41.998711, 23.240454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231708, -0.289243, 0.928789,
		-0.944574, 0.295165, -0.143725,
		-0.232575, -0.910613, -0.341604,
		32.306858, 41.725525, 23.137972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801687, 42.186951, 23.643705>,  <32.469658, 42.362957, 23.377094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801687, 42.186951, 23.643705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.974628, 41.838753, 23.549639>,  <32.078392, 41.629833, 23.493198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.974628, 41.838753, 23.549639>,  <31.801687, 42.186951, 23.643705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974628, 41.838753, 23.549639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142962, -0.323681, 0.935303,
		-0.890298, -0.370763, -0.264393,
		0.432355, -0.870497, -0.235167,
		32.104336, 41.577602, 23.479088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454674, 41.775944, 24.019138>,  <31.801687, 42.186951, 23.643705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454674, 41.775944, 24.019138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.767649, 41.548210, 23.918224>,  <31.955435, 41.411572, 23.857676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.767649, 41.548210, 23.918224>,  <31.454674, 41.775944, 24.019138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767649, 41.548210, 23.918224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081773, -0.495559, 0.864717,
		-0.617335, -0.655957, -0.434301,
		0.782439, -0.569334, -0.252286,
		32.002380, 41.377411, 23.842539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305559, 41.112282, 24.291069>,  <31.454674, 41.775944, 24.019138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305559, 41.112282, 24.291069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689182, 41.050377, 24.196194>,  <31.919355, 41.013233, 24.139269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689182, 41.050377, 24.196194>,  <31.305559, 41.112282, 24.291069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689182, 41.050377, 24.196194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089810, -0.628080, 0.772948,
		-0.268598, -0.762603, -0.588465,
		0.959057, -0.154762, -0.237191,
		31.976900, 41.003948, 24.125036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503675, 40.301563, 24.335173>,  <31.305559, 41.112282, 24.291069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503675, 40.301563, 24.335173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.850004, 40.500195, 24.359699>,  <32.057800, 40.619373, 24.374414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.850004, 40.500195, 24.359699>,  <31.503675, 40.301563, 24.335173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850004, 40.500195, 24.359699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365251, -0.711033, 0.600853,
		0.341969, -0.497836, -0.797004,
		0.865823, 0.496580, 0.061316,
		32.109753, 40.649170, 24.378094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017796, 39.783966, 24.317503>,  <31.503675, 40.301563, 24.335173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017796, 39.783966, 24.317503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211044, 40.088108, 24.491150>,  <32.326992, 40.270592, 24.595337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211044, 40.088108, 24.491150>,  <32.017796, 39.783966, 24.317503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211044, 40.088108, 24.491150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397642, -0.632278, 0.664910,
		0.780050, -0.148608, -0.607814,
		0.483118, 0.760355, 0.434116,
		32.355980, 40.316216, 24.621384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636429, 39.560368, 24.430140>,  <32.017796, 39.783966, 24.317503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636429, 39.560368, 24.430140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606445, 39.853256, 24.700912>,  <32.588455, 40.028988, 24.863377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606445, 39.853256, 24.700912>,  <32.636429, 39.560368, 24.430140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606445, 39.853256, 24.700912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392378, -0.602422, 0.695073,
		0.916745, 0.317715, -0.242150,
		-0.074959, 0.732219, 0.676932,
		32.583958, 40.072922, 24.903992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198631, 39.480038, 24.751257>,  <32.636429, 39.560368, 24.430140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198631, 39.480038, 24.751257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975063, 39.681896, 25.014450>,  <32.840923, 39.803013, 25.172365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975063, 39.681896, 25.014450>,  <33.198631, 39.480038, 24.751257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975063, 39.681896, 25.014450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427582, -0.504474, 0.750120,
		0.710482, 0.700597, 0.066181,
		-0.558918, 0.504649, 0.657982,
		32.807388, 39.833290, 25.211845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607502, 39.539017, 25.372591>,  <33.198631, 39.480038, 24.751257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607502, 39.539017, 25.372591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241501, 39.644234, 25.494957>,  <33.021900, 39.707363, 25.568377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241501, 39.644234, 25.494957>,  <33.607502, 39.539017, 25.372591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241501, 39.644234, 25.494957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151351, -0.479075, 0.864627,
		0.373990, 0.837434, 0.398542,
		-0.914999, 0.263042, 0.305916,
		32.967003, 39.723145, 25.586731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758652, 39.658199, 26.085062>,  <33.607502, 39.539017, 25.372591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758652, 39.658199, 26.085062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363506, 39.617352, 26.038250>,  <33.126419, 39.592842, 26.010162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363506, 39.617352, 26.038250>,  <33.758652, 39.658199, 26.085062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363506, 39.617352, 26.038250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026587, -0.631161, 0.775196,
		-0.153027, 0.768900, 0.620787,
		-0.987864, -0.102121, -0.117028,
		33.067146, 39.586716, 26.003141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.665619, 40.754421, 31.368460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.291992, 40.611744, 31.361721>,  <34.067818, 40.526138, 31.357677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.291992, 40.611744, 31.361721>,  <34.665619, 40.754421, 31.368460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291992, 40.611744, 31.361721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012170, -0.078949, 0.996804,
		-0.356888, 0.930878, 0.078085,
		-0.934068, -0.356698, -0.016847,
		34.011772, 40.504734, 31.356667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308681, 41.133606, 31.911861>,  <34.665619, 40.754421, 31.368460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308681, 41.133606, 31.911861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.096867, 40.804104, 31.830851>,  <33.969780, 40.606403, 31.782244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.096867, 40.804104, 31.830851>,  <34.308681, 41.133606, 31.911861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096867, 40.804104, 31.830851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104166, -0.173797, 0.979257,
		-0.841869, 0.539647, 0.006224,
		-0.529535, -0.823757, -0.202528,
		33.938007, 40.556976, 31.770092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770905, 41.183884, 32.429794>,  <34.308681, 41.133606, 31.911861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770905, 41.183884, 32.429794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762459, 40.810986, 32.285313>,  <33.757393, 40.587246, 32.198624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762459, 40.810986, 32.285313>,  <33.770905, 41.183884, 32.429794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762459, 40.810986, 32.285313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219279, -0.348170, 0.911424,
		-0.975434, 0.098445, -0.197072,
		-0.021111, -0.932248, -0.361204,
		33.756126, 40.531311, 32.176952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142929, 40.846973, 32.655067>,  <33.770905, 41.183884, 32.429794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142929, 40.846973, 32.655067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.392853, 40.544697, 32.576534>,  <33.542809, 40.363331, 32.529415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.392853, 40.544697, 32.576534>,  <33.142929, 40.846973, 32.655067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392853, 40.544697, 32.576534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258685, -0.437616, 0.861147,
		-0.736679, -0.487263, -0.468912,
		0.624808, -0.755689, -0.196335,
		33.580296, 40.317989, 32.517635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780117, 40.141811, 32.689041>,  <33.142929, 40.846973, 32.655067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780117, 40.141811, 32.689041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.167992, 40.052410, 32.728558>,  <33.400715, 39.998768, 32.752266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.167992, 40.052410, 32.728558>,  <32.780117, 40.141811, 32.689041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167992, 40.052410, 32.728558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179795, -0.378759, 0.907863,
		-0.165493, -0.898102, -0.407461,
		0.969683, -0.223504, 0.098792,
		33.458897, 39.985359, 32.758194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736328, 39.565769, 33.002937>,  <32.780117, 40.141811, 32.689041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736328, 39.565769, 33.002937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.116783, 39.656990, 33.086197>,  <33.345058, 39.711723, 33.136154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.116783, 39.656990, 33.086197>,  <32.736328, 39.565769, 33.002937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116783, 39.656990, 33.086197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123373, -0.337280, 0.933285,
		0.283042, -0.913364, -0.292664,
		0.951139, 0.228052, 0.208149,
		33.402126, 39.725407, 33.148640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060596, 39.012451, 33.389359>,  <32.736328, 39.565769, 33.002937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060596, 39.012451, 33.389359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.294117, 39.330345, 33.455780>,  <33.434227, 39.521084, 33.495632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.294117, 39.330345, 33.455780>,  <33.060596, 39.012451, 33.389359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294117, 39.330345, 33.455780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096941, -0.271291, 0.957603,
		0.806092, -0.542949, -0.235421,
		0.583797, 0.794738, 0.166052,
		33.469257, 39.568768, 33.505596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593525, 38.750210, 33.886703>,  <33.060596, 39.012451, 33.389359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593525, 38.750210, 33.886703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.598969, 39.149235, 33.914059>,  <33.602234, 39.388649, 33.930470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.598969, 39.149235, 33.914059>,  <33.593525, 38.750210, 33.886703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598969, 39.149235, 33.914059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151031, -0.065556, 0.986353,
		0.988435, -0.023753, 0.149772,
		0.013611, 0.997566, 0.068385,
		33.603050, 39.448505, 33.934574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049141, 38.834454, 34.303795>,  <33.593525, 38.750210, 33.886703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049141, 38.834454, 34.303795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.796322, 39.143433, 34.328571>,  <33.644630, 39.328819, 34.343437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.796322, 39.143433, 34.328571>,  <34.049141, 38.834454, 34.303795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796322, 39.143433, 34.328571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122210, -0.178295, 0.976358,
		0.765231, 0.609536, 0.207092,
		-0.632049, 0.772448, 0.061945,
		33.606709, 39.375168, 34.347157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141178, 38.973255, 34.921124>,  <34.049141, 38.834454, 34.303795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141178, 38.973255, 34.921124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.802822, 39.175968, 34.854622>,  <33.599808, 39.297596, 34.814720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.802822, 39.175968, 34.854622>,  <34.141178, 38.973255, 34.921124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802822, 39.175968, 34.854622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277233, -0.151492, 0.948784,
		0.455643, 0.848658, 0.268643,
		-0.845891, 0.506784, -0.166250,
		33.549053, 39.328003, 34.804749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064487, 39.398712, 35.566750>,  <34.141178, 38.973255, 34.921124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064487, 39.398712, 35.566750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704350, 39.362770, 35.396431>,  <33.488266, 39.341206, 35.294239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704350, 39.362770, 35.396431>,  <34.064487, 39.398712, 35.566750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704350, 39.362770, 35.396431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391379, -0.260582, 0.882564,
		-0.190253, 0.961262, 0.199449,
		-0.900348, -0.089851, -0.425794,
		33.434246, 39.335815, 35.268692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671158, 39.569992, 36.130882>,  <34.064487, 39.398712, 35.566750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671158, 39.569992, 36.130882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.382935, 39.431858, 35.890369>,  <33.210003, 39.348976, 35.746059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.382935, 39.431858, 35.890369>,  <33.671158, 39.569992, 36.130882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382935, 39.431858, 35.890369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393479, -0.510374, 0.764652,
		-0.570943, 0.787566, 0.231869,
		-0.720554, -0.345337, -0.601285,
		33.166767, 39.328259, 35.709984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919163, 39.852509, 36.356503>,  <33.671158, 39.569992, 36.130882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919163, 39.852509, 36.356503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.912281, 39.498734, 36.169968>,  <32.908154, 39.286469, 36.058044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.912281, 39.498734, 36.169968>,  <32.919163, 39.852509, 36.356503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912281, 39.498734, 36.169968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506865, -0.394322, 0.766549,
		-0.861854, 0.249560, -0.441506,
		-0.017205, -0.884437, -0.466341,
		32.907120, 39.233402, 36.030064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366962, 39.525753, 36.449902>,  <32.919163, 39.852509, 36.356503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366962, 39.525753, 36.449902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.656719, 39.256680, 36.389565>,  <32.830574, 39.095234, 36.353363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.656719, 39.256680, 36.389565>,  <32.366962, 39.525753, 36.449902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656719, 39.256680, 36.389565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048670, -0.168352, 0.984524,
		-0.687670, -0.720521, -0.089213,
		0.724390, -0.672686, -0.150839,
		32.874035, 39.054874, 36.344315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868713, 39.201389, 36.987782>,  <32.366962, 39.525753, 36.449902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868713, 39.201389, 36.987782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.768780, 39.587517, 37.018074>,  <31.708820, 39.819195, 37.036247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.768780, 39.587517, 37.018074>,  <31.868713, 39.201389, 36.987782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768780, 39.587517, 37.018074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139369, 0.041545, -0.989369,
		-0.958206, -0.257732, 0.124157,
		-0.249834, 0.965323, 0.075728,
		31.693830, 39.877113, 37.040794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175097, 39.376465, 36.668354>,  <31.868713, 39.201389, 36.987782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175097, 39.376465, 36.668354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.393730, 39.711098, 36.683208>,  <31.524910, 39.911877, 36.692120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.393730, 39.711098, 36.683208>,  <31.175097, 39.376465, 36.668354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393730, 39.711098, 36.683208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147419, 0.139782, -0.979147,
		-0.824324, 0.529714, 0.199731,
		0.546586, 0.836579, 0.037136,
		31.557707, 39.962070, 36.694351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754007, 39.915497, 36.438995>,  <31.175097, 39.376465, 36.668354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754007, 39.915497, 36.438995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.127859, 40.042072, 36.374077>,  <31.352169, 40.118015, 36.335125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.127859, 40.042072, 36.374077>,  <30.754007, 39.915497, 36.438995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127859, 40.042072, 36.374077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202377, 0.097994, -0.974393,
		-0.292429, 0.943539, 0.155627,
		0.934628, 0.316436, -0.162295,
		31.408247, 40.137005, 36.325390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628294, 40.479881, 36.064976>,  <30.754007, 39.915497, 36.438995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628294, 40.479881, 36.064976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.008488, 40.372055, 36.003117>,  <31.236603, 40.307362, 35.966000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.008488, 40.372055, 36.003117>,  <30.628294, 40.479881, 36.064976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008488, 40.372055, 36.003117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185251, -0.091891, -0.978385,
		0.249526, 0.958588, -0.137278,
		0.950483, -0.269563, -0.154651,
		31.293633, 40.291187, 35.956722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938942, 40.943695, 35.520660>,  <30.628294, 40.479881, 36.064976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938942, 40.943695, 35.520660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.176966, 40.622669, 35.503685>,  <31.319780, 40.430054, 35.493500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.176966, 40.622669, 35.503685>,  <30.938942, 40.943695, 35.520660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176966, 40.622669, 35.503685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069059, 0.001548, -0.997611,
		0.800709, 0.596568, -0.054503,
		0.595059, -0.802561, -0.042438,
		31.355484, 40.381901, 35.490955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268278, 41.033417, 34.974636>,  <30.938942, 40.943695, 35.520660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268278, 41.033417, 34.974636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.355558, 40.647369, 35.032509>,  <31.407927, 40.415741, 35.067234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.355558, 40.647369, 35.032509>,  <31.268278, 41.033417, 34.974636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355558, 40.647369, 35.032509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052043, -0.136535, -0.989267,
		0.974515, 0.223390, 0.020435,
		0.218202, -0.965119, 0.144681,
		31.421019, 40.357834, 35.075912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808962, 40.945896, 34.444496>,  <31.268278, 41.033417, 34.974636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808962, 40.945896, 34.444496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.650881, 40.593674, 34.549141>,  <31.556032, 40.382339, 34.611927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.650881, 40.593674, 34.549141>,  <31.808962, 40.945896, 34.444496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650881, 40.593674, 34.549141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111411, -0.236747, -0.965163,
		0.911813, -0.410580, -0.004541,
		-0.395201, -0.880554, 0.261612,
		31.532320, 40.329506, 34.627625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194508, 40.449894, 34.038036>,  <31.808962, 40.945896, 34.444496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194508, 40.449894, 34.038036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.837721, 40.300556, 34.140022>,  <31.623648, 40.210953, 34.201214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.837721, 40.300556, 34.140022>,  <32.194508, 40.449894, 34.038036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837721, 40.300556, 34.140022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177836, -0.228754, -0.957103,
		0.415649, -0.899049, 0.137649,
		-0.891970, -0.373340, 0.254964,
		31.570129, 40.188553, 34.216511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076736, 40.001278, 33.543713>,  <32.194508, 40.449894, 34.038036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076736, 40.001278, 33.543713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.714180, 40.030140, 33.710205>,  <31.496647, 40.047455, 33.810101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.714180, 40.030140, 33.710205>,  <32.076736, 40.001278, 33.543713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714180, 40.030140, 33.710205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422370, -0.136582, -0.896074,
		-0.007801, -0.987998, 0.154270,
		-0.906390, 0.072150, 0.416235,
		31.442263, 40.051785, 33.835075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645144, 39.577686, 33.138981>,  <32.076736, 40.001278, 33.543713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645144, 39.577686, 33.138981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.366875, 39.788490, 33.334248>,  <31.199913, 39.914970, 33.451408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.366875, 39.788490, 33.334248>,  <31.645144, 39.577686, 33.138981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366875, 39.788490, 33.334248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501895, 0.129617, -0.855161,
		-0.513950, -0.839919, 0.174331,
		-0.695670, 0.527006, 0.488168,
		31.158175, 39.946590, 33.480698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949083, 39.299004, 32.894131>,  <31.645144, 39.577686, 33.138981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949083, 39.299004, 32.894131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.904251, 39.679028, 33.010632>,  <30.877352, 39.907040, 33.080532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.904251, 39.679028, 33.010632>,  <30.949083, 39.299004, 32.894131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904251, 39.679028, 33.010632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492786, 0.201379, -0.846527,
		-0.862902, -0.238403, 0.445605,
		-0.112080, 0.950058, 0.291252,
		30.870626, 39.964046, 33.098007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264519, 39.456367, 32.603313>,  <30.949083, 39.299004, 32.894131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264519, 39.456367, 32.603313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.451263, 39.801582, 32.680466>,  <30.563311, 40.008713, 32.726757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.451263, 39.801582, 32.680466>,  <30.264519, 39.456367, 32.603313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451263, 39.801582, 32.680466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327404, 0.371295, -0.868877,
		-0.821492, 0.342493, 0.455905,
		0.466860, 0.863041, 0.192882,
		30.591322, 40.060493, 32.738331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676399, 39.950344, 32.527874>,  <30.264519, 39.456367, 32.603313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676399, 39.950344, 32.527874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.031460, 40.131184, 32.492813>,  <30.244497, 40.239685, 32.471775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.031460, 40.131184, 32.492813>,  <29.676399, 39.950344, 32.527874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031460, 40.131184, 32.492813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303734, 0.431683, -0.849350,
		-0.346148, 0.780551, 0.520501,
		0.887653, 0.452094, -0.087654,
		30.297756, 40.266811, 32.466518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483089, 40.599277, 32.173275>,  <29.676399, 39.950344, 32.527874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483089, 40.599277, 32.173275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.875832, 40.641243, 32.110085>,  <30.111477, 40.666420, 32.072170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.875832, 40.641243, 32.110085>,  <29.483089, 40.599277, 32.173275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875832, 40.641243, 32.110085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183168, 0.308879, -0.933297,
		-0.049118, 0.945297, 0.322490,
		0.981854, 0.104912, -0.157976,
		30.170387, 40.672718, 32.062691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482685, 41.217510, 32.573288>,  <29.483089, 40.599277, 32.173275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482685, 41.217510, 32.573288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.087837, 41.224041, 32.509632>,  <28.850927, 41.227959, 32.471439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.087837, 41.224041, 32.509632>,  <29.482685, 41.217510, 32.573288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087837, 41.224041, 32.509632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127101, -0.684123, 0.718207,
		-0.097145, 0.729184, 0.677387,
		-0.987121, 0.016327, -0.159139,
		28.791700, 41.228939, 32.461891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045385, 41.375931, 33.262856>,  <29.482685, 41.217510, 32.573288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045385, 41.375931, 33.262856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.827105, 41.170074, 32.998325>,  <28.696136, 41.046562, 32.839607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.827105, 41.170074, 32.998325>,  <29.045385, 41.375931, 33.262856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827105, 41.170074, 32.998325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120195, -0.732961, 0.669568,
		-0.829313, 0.444874, 0.338123,
		-0.545704, -0.514641, -0.661325,
		28.663393, 41.015682, 32.799927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503807, 41.314117, 33.638168>,  <29.045385, 41.375931, 33.262856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503807, 41.314117, 33.638168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.473364, 41.029144, 33.359131>,  <28.455099, 40.858158, 33.191708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.473364, 41.029144, 33.359131>,  <28.503807, 41.314117, 33.638168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473364, 41.029144, 33.359131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177009, -0.678859, 0.712613,
		-0.981262, 0.177715, -0.074442,
		-0.076107, -0.712438, -0.697596,
		28.450531, 40.815414, 33.149853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880383, 40.879478, 33.856079>,  <28.503807, 41.314117, 33.638168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880383, 40.879478, 33.856079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.108711, 40.648071, 33.623020>,  <28.245708, 40.509228, 33.483185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.108711, 40.648071, 33.623020>,  <27.880383, 40.879478, 33.856079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108711, 40.648071, 33.623020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247110, -0.797764, 0.550008,
		-0.782997, -0.169987, -0.598348,
		0.570835, -0.578513, -0.582641,
		28.279959, 40.474518, 33.448227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473118, 40.239285, 33.710163>,  <27.880383, 40.879478, 33.856079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473118, 40.239285, 33.710163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.862110, 40.151028, 33.680241>,  <28.095507, 40.098076, 33.662285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.862110, 40.151028, 33.680241>,  <27.473118, 40.239285, 33.710163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862110, 40.151028, 33.680241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165327, -0.879795, 0.445676,
		-0.164152, -0.421044, -0.892063,
		0.972482, -0.220640, -0.074810,
		28.153854, 40.084835, 33.657799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399820, 39.525635, 33.746620>,  <27.473118, 40.239285, 33.710163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399820, 39.525635, 33.746620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.790747, 39.597385, 33.791664>,  <28.025303, 39.640434, 33.818691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.790747, 39.597385, 33.791664>,  <27.399820, 39.525635, 33.746620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790747, 39.597385, 33.791664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099761, -0.858903, 0.502328,
		0.186826, -0.479698, -0.857313,
		0.977315, 0.179374, 0.112610,
		28.083941, 39.651199, 33.825447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690763, 38.961826, 33.581982>,  <27.399820, 39.525635, 33.746620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690763, 38.961826, 33.581982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.984543, 39.154118, 33.773602>,  <28.160810, 39.269493, 33.888573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.984543, 39.154118, 33.773602>,  <27.690763, 38.961826, 33.581982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984543, 39.154118, 33.773602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227696, -0.839499, 0.493352,
		0.639330, -0.253263, -0.726027,
		0.734446, 0.480728, 0.479050,
		28.204876, 39.298336, 33.917316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259691, 38.537060, 33.586212>,  <27.690763, 38.961826, 33.581982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259691, 38.537060, 33.586212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.336006, 38.796146, 33.881256>,  <28.381794, 38.951599, 34.058281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.336006, 38.796146, 33.881256>,  <28.259691, 38.537060, 33.586212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336006, 38.796146, 33.881256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355984, -0.745911, 0.562931,
		0.914809, 0.155177, -0.372886,
		0.190786, 0.647716, 0.737607,
		28.393242, 38.990459, 34.102539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858267, 38.332962, 33.855865>,  <28.259691, 38.537060, 33.586212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858267, 38.332962, 33.855865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.703484, 38.545254, 34.157486>,  <28.610615, 38.672630, 34.338459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.703484, 38.545254, 34.157486>,  <28.858267, 38.332962, 33.855865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703484, 38.545254, 34.157486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258342, -0.722606, 0.641170,
		0.885169, 0.442908, 0.142508,
		-0.386956, 0.530728, 0.754050,
		28.587397, 38.704472, 34.383701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341911, 38.228249, 34.379677>,  <28.858267, 38.332962, 33.855865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341911, 38.228249, 34.379677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.036375, 38.366932, 34.597427>,  <28.853054, 38.450142, 34.728077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.036375, 38.366932, 34.597427>,  <29.341911, 38.228249, 34.379677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036375, 38.366932, 34.597427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130438, -0.743123, 0.656319,
		0.632089, 0.572329, 0.522401,
		-0.763838, 0.346711, 0.544373,
		28.807224, 38.470943, 34.760738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668991, 38.372879, 35.112385>,  <29.341911, 38.228249, 34.379677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668991, 38.372879, 35.112385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.272135, 38.340557, 35.150593>,  <29.034021, 38.321163, 35.173519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.272135, 38.340557, 35.150593>,  <29.668991, 38.372879, 35.112385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272135, 38.340557, 35.150593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125114, -0.640010, 0.758112,
		-0.000127, 0.764106, 0.645091,
		-0.992142, -0.080806, 0.095519,
		28.974491, 38.316315, 35.179249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431204, 38.640541, 35.749832>,  <29.668991, 38.372879, 35.112385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431204, 38.640541, 35.749832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.154510, 38.381374, 35.622265>,  <28.988495, 38.225876, 35.545727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.154510, 38.381374, 35.622265>,  <29.431204, 38.640541, 35.749832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154510, 38.381374, 35.622265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185422, -0.586168, 0.788686,
		-0.697941, 0.486428, 0.525611,
		-0.691735, -0.647915, -0.318916,
		28.946989, 38.187000, 35.526588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.441954, 44.293385, 29.663870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248455, 43.945065, 29.628771>,  <28.132357, 43.736073, 29.607712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248455, 43.945065, 29.628771>,  <28.441954, 44.293385, 29.663870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248455, 43.945065, 29.628771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205031, -0.210222, 0.955912,
		-0.850855, 0.444426, 0.280235,
		-0.483744, -0.870800, -0.087747,
		28.103333, 43.683826, 29.602448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078615, 44.100552, 30.387917>,  <28.441954, 44.293385, 29.663870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078615, 44.100552, 30.387917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051367, 43.748322, 30.200325>,  <28.035017, 43.536983, 30.087770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051367, 43.748322, 30.200325>,  <28.078615, 44.100552, 30.387917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051367, 43.748322, 30.200325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013721, -0.470855, 0.882104,
		-0.997583, 0.053656, 0.044159,
		-0.068122, -0.880578, -0.468980,
		28.030930, 43.484150, 30.059631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418011, 43.772301, 30.611671>,  <28.078615, 44.100552, 30.387917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418011, 43.772301, 30.611671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648731, 43.479267, 30.467108>,  <27.787163, 43.303448, 30.380369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648731, 43.479267, 30.467108>,  <27.418011, 43.772301, 30.611671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648731, 43.479267, 30.467108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110098, -0.508104, 0.854230,
		-0.809431, -0.452930, -0.373731,
		0.576801, -0.732587, -0.361408,
		27.821772, 43.259491, 30.358685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078665, 43.159519, 30.764727>,  <27.418011, 43.772301, 30.611671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078665, 43.159519, 30.764727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458496, 43.064621, 30.682737>,  <27.686396, 43.007683, 30.633545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458496, 43.064621, 30.682737>,  <27.078665, 43.159519, 30.764727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458496, 43.064621, 30.682737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008018, -0.671930, 0.740572,
		-0.313420, -0.701589, -0.639953,
		0.949581, -0.237241, -0.204971,
		27.743370, 42.993450, 30.621246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121048, 42.475994, 30.853533>,  <27.078665, 43.159519, 30.764727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121048, 42.475994, 30.853533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513748, 42.551384, 30.843353>,  <27.749369, 42.596619, 30.837246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513748, 42.551384, 30.843353>,  <27.121048, 42.475994, 30.853533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513748, 42.551384, 30.843353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166070, -0.784351, 0.597673,
		0.092684, -0.590991, -0.801336,
		0.981749, 0.188473, -0.025449,
		27.808273, 42.607925, 30.835718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402308, 41.809513, 30.692545>,  <27.121048, 42.475994, 30.853533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402308, 41.809513, 30.692545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685623, 42.029675, 30.869352>,  <27.855612, 42.161770, 30.975437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685623, 42.029675, 30.869352>,  <27.402308, 41.809513, 30.692545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685623, 42.029675, 30.869352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304846, -0.803249, 0.511723,
		0.636707, -0.227700, -0.736721,
		0.708289, 0.550404, 0.442021,
		27.898109, 42.194798, 31.001959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937695, 41.359791, 30.687475>,  <27.402308, 41.809513, 30.692545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937695, 41.359791, 30.687475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051098, 41.620800, 30.968569>,  <28.119141, 41.777405, 31.137226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051098, 41.620800, 30.968569>,  <27.937695, 41.359791, 30.687475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051098, 41.620800, 30.968569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341177, -0.753490, 0.562006,
		0.896226, 0.080423, -0.436247,
		0.283510, 0.652522, 0.702736,
		28.136150, 41.816555, 31.179390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634926, 41.228329, 30.909645>,  <27.937695, 41.359791, 30.687475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634926, 41.228329, 30.909645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482523, 41.421818, 31.224821>,  <28.391081, 41.537910, 31.413927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482523, 41.421818, 31.224821>,  <28.634926, 41.228329, 30.909645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482523, 41.421818, 31.224821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350988, -0.712750, 0.607284,
		0.855360, 0.507937, 0.101783,
		-0.381008, 0.483722, 0.787938,
		28.368221, 41.566933, 31.461203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208271, 41.180447, 31.326118>,  <28.634926, 41.228329, 30.909645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208271, 41.180447, 31.326118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880276, 41.249191, 31.544506>,  <28.683479, 41.290440, 31.675539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880276, 41.249191, 31.544506>,  <29.208271, 41.180447, 31.326118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880276, 41.249191, 31.544506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289334, -0.698557, 0.654449,
		0.493867, 0.694608, 0.523082,
		-0.819988, 0.171865, 0.545968,
		28.634279, 41.300751, 31.708296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633245, 41.435123, 31.869793>,  <29.208271, 41.180447, 31.326118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633245, 41.435123, 31.869793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957901, 41.225147, 31.767279>,  <30.152695, 41.099163, 31.705770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957901, 41.225147, 31.767279>,  <29.633245, 41.435123, 31.869793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957901, 41.225147, 31.767279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041167, 0.489034, -0.871293,
		0.582707, 0.696625, 0.418529,
		0.811639, -0.524938, -0.256285,
		30.201393, 41.067665, 31.690393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132097, 41.914448, 31.531387>,  <29.633245, 41.435123, 31.869793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132097, 41.914448, 31.531387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232019, 41.544949, 31.415253>,  <30.291973, 41.323250, 31.345572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232019, 41.544949, 31.415253>,  <30.132097, 41.914448, 31.531387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232019, 41.544949, 31.415253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224062, 0.346851, -0.910764,
		0.942016, 0.162458, 0.293620,
		0.249803, -0.923743, -0.290338,
		30.306961, 41.267826, 31.328152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668541, 42.025757, 31.229219>,  <30.132097, 41.914448, 31.531387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668541, 42.025757, 31.229219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595224, 41.659653, 31.085724>,  <30.551235, 41.439987, 30.999626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595224, 41.659653, 31.085724>,  <30.668541, 42.025757, 31.229219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595224, 41.659653, 31.085724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275111, 0.302584, -0.912555,
		0.943779, -0.265956, 0.196339,
		-0.183290, -0.915265, -0.358740,
		30.540237, 41.385075, 30.978102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150471, 41.935345, 30.769772>,  <30.668541, 42.025757, 31.229219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150471, 41.935345, 30.769772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860842, 41.680801, 30.663364>,  <30.687065, 41.528076, 30.599520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860842, 41.680801, 30.663364>,  <31.150471, 41.935345, 30.769772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860842, 41.680801, 30.663364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050653, 0.335585, -0.940647,
		0.687863, -0.694570, -0.210754,
		-0.724071, -0.636361, -0.266019,
		30.643620, 41.489895, 30.583559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434080, 41.428951, 30.156919>,  <31.150471, 41.935345, 30.769772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434080, 41.428951, 30.156919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035906, 41.462029, 30.137863>,  <30.797001, 41.481876, 30.126431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035906, 41.462029, 30.137863>,  <31.434080, 41.428951, 30.156919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035906, 41.462029, 30.137863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073802, 0.350517, -0.933644,
		-0.060512, -0.932898, -0.355020,
		-0.995435, 0.082698, -0.047639,
		30.737276, 41.486839, 30.123571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285793, 41.029140, 29.595236>,  <31.434080, 41.428951, 30.156919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285793, 41.029140, 29.595236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974655, 41.272690, 29.657499>,  <30.787973, 41.418819, 29.694859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974655, 41.272690, 29.657499>,  <31.285793, 41.029140, 29.595236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974655, 41.272690, 29.657499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005607, 0.254398, -0.967083,
		-0.628433, -0.751367, -0.201296,
		-0.777843, 0.608876, 0.155660,
		30.741302, 41.455353, 29.704197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700100, 40.942154, 29.112083>,  <31.285793, 41.029140, 29.595236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700100, 40.942154, 29.112083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602285, 41.304142, 29.251358>,  <30.543596, 41.521336, 29.334923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602285, 41.304142, 29.251358>,  <30.700100, 40.942154, 29.112083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602285, 41.304142, 29.251358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114666, 0.383560, -0.916369,
		-0.962836, -0.184161, -0.197564,
		-0.244538, 0.904967, 0.348188,
		30.528925, 41.575634, 29.355814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416939, 41.235710, 28.480671>,  <30.700100, 40.942154, 29.112083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416939, 41.235710, 28.480671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455276, 41.551952, 28.722580>,  <30.478279, 41.741699, 28.867725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455276, 41.551952, 28.722580>,  <30.416939, 41.235710, 28.480671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455276, 41.551952, 28.722580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189034, 0.582055, -0.790871,
		-0.977282, 0.190124, -0.093665,
		0.095845, 0.790610, 0.604772,
		30.484030, 41.789135, 28.904011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024963, 41.792374, 28.182787>,  <30.416939, 41.235710, 28.480671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024963, 41.792374, 28.182787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303154, 41.960728, 28.415741>,  <30.470068, 42.061741, 28.555513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303154, 41.960728, 28.415741>,  <30.024963, 41.792374, 28.182787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303154, 41.960728, 28.415741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185995, 0.677433, -0.711681,
		-0.694061, 0.603277, 0.392856,
		0.695475, 0.420881, 0.582386,
		30.511797, 42.086990, 28.590456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797264, 42.440304, 28.238470>,  <30.024963, 41.792374, 28.182787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797264, 42.440304, 28.238470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180103, 42.461536, 28.352411>,  <30.409807, 42.474277, 28.420776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180103, 42.461536, 28.352411>,  <29.797264, 42.440304, 28.238470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180103, 42.461536, 28.352411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170258, 0.692440, -0.701099,
		-0.234459, 0.719520, 0.653696,
		0.957100, 0.053082, 0.284853,
		30.467234, 42.477463, 28.437868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858942, 43.100384, 28.419046>,  <29.797264, 42.440304, 28.238470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858942, 43.100384, 28.419046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205095, 42.929531, 28.314226>,  <30.412786, 42.827019, 28.251335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205095, 42.929531, 28.314226>,  <29.858942, 43.100384, 28.419046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205095, 42.929531, 28.314226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083016, 0.637905, -0.765628,
		0.494189, 0.640806, 0.587490,
		0.865382, -0.427136, -0.262048,
		30.464710, 42.801392, 28.235611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321903, 43.540855, 28.323809>,  <29.858942, 43.100384, 28.419046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321903, 43.540855, 28.323809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476635, 43.249268, 28.097898>,  <30.569473, 43.074318, 27.962353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476635, 43.249268, 28.097898>,  <30.321903, 43.540855, 28.323809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476635, 43.249268, 28.097898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261480, 0.674027, -0.690881,
		0.884303, 0.119575, 0.451343,
		0.386829, -0.728965, -0.564777,
		30.592684, 43.030579, 27.928465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952627, 43.758739, 28.146366>,  <30.321903, 43.540855, 28.323809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952627, 43.758739, 28.146366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915899, 43.481861, 27.860027>,  <30.893862, 43.315735, 27.688225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915899, 43.481861, 27.860027>,  <30.952627, 43.758739, 28.146366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915899, 43.481861, 27.860027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281210, 0.671595, -0.685478,
		0.955243, -0.264245, 0.132986,
		-0.091822, -0.692195, -0.715845,
		30.888353, 43.274204, 27.645273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535933, 43.867752, 27.705410>,  <30.952627, 43.758739, 28.146366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535933, 43.867752, 27.705410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286043, 43.668404, 27.464962>,  <31.136108, 43.548794, 27.320692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286043, 43.668404, 27.464962>,  <31.535933, 43.867752, 27.705410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286043, 43.668404, 27.464962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320991, 0.537872, -0.779525,
		0.711817, -0.679943, -0.176050,
		-0.624725, -0.498368, -0.601122,
		31.098625, 43.518894, 27.284626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.861900, 38.494610, 24.173862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.934427, 38.782120, 24.442333>,  <29.977943, 38.954628, 24.603416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.934427, 38.782120, 24.442333>,  <29.861900, 38.494610, 24.173862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934427, 38.782120, 24.442333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066989, -0.689933, 0.720767,
		0.981140, -0.085727, -0.173248,
		0.181319, 0.718779, 0.671178,
		29.988823, 38.997753, 24.643686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505154, 38.286976, 24.492342>,  <29.861900, 38.494610, 24.173862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505154, 38.286976, 24.492342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.305676, 38.529167, 24.740438>,  <30.185987, 38.674480, 24.889296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.305676, 38.529167, 24.740438>,  <30.505154, 38.286976, 24.492342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305676, 38.529167, 24.740438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288500, -0.558822, 0.777487,
		0.817355, 0.566669, 0.104002,
		-0.498696, 0.605478, 0.620240,
		30.156067, 38.710812, 24.926510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939436, 38.218010, 25.125103>,  <30.505154, 38.286976, 24.492342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939436, 38.218010, 25.125103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.595558, 38.374992, 25.255890>,  <30.389233, 38.469181, 25.334362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.595558, 38.374992, 25.255890>,  <30.939436, 38.218010, 25.125103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595558, 38.374992, 25.255890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191665, -0.345496, 0.918639,
		0.473490, 0.852415, 0.221801,
		-0.859693, 0.392455, 0.326967,
		30.337650, 38.492729, 25.353981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077272, 38.709705, 25.703129>,  <30.939436, 38.218010, 25.125103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077272, 38.709705, 25.703129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.710558, 38.557587, 25.751909>,  <30.490528, 38.466316, 25.781178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.710558, 38.557587, 25.751909>,  <31.077272, 38.709705, 25.703129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710558, 38.557587, 25.751909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244197, -0.292169, 0.924665,
		-0.316018, 0.877502, 0.360725,
		-0.916788, -0.380299, 0.121953,
		30.435522, 38.443497, 25.788496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127867, 38.382050, 26.323351>,  <31.077272, 38.709705, 25.703129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127867, 38.382050, 26.323351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.743313, 38.299873, 26.250101>,  <30.512581, 38.250568, 26.206152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.743313, 38.299873, 26.250101>,  <31.127867, 38.382050, 26.323351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743313, 38.299873, 26.250101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068911, -0.464505, 0.882885,
		-0.266443, 0.861411, 0.432411,
		-0.961384, -0.205441, -0.183125,
		30.454897, 38.238239, 26.195164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586279, 38.648582, 26.951582>,  <31.127867, 38.382050, 26.323351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586279, 38.648582, 26.951582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.447845, 38.337688, 26.741388>,  <30.364786, 38.151154, 26.615273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.447845, 38.337688, 26.741388>,  <30.586279, 38.648582, 26.951582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447845, 38.337688, 26.741388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178811, -0.495187, 0.850186,
		-0.921007, 0.388197, 0.032397,
		-0.346082, -0.777234, -0.525485,
		30.344021, 38.104519, 26.583742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813057, 38.533878, 27.171843>,  <30.586279, 38.648582, 26.951582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813057, 38.533878, 27.171843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.972315, 38.191532, 27.039795>,  <30.067869, 37.986126, 26.960567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.972315, 38.191532, 27.039795>,  <29.813057, 38.533878, 27.171843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972315, 38.191532, 27.039795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302413, -0.462216, 0.833608,
		-0.866040, -0.232066, -0.442854,
		0.398146, -0.855863, -0.330118,
		30.091759, 37.934772, 26.940760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344913, 38.007816, 27.260321>,  <29.813057, 38.533878, 27.171843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344913, 38.007816, 27.260321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.684353, 37.801281, 27.214233>,  <29.888018, 37.677361, 27.186581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.684353, 37.801281, 27.214233>,  <29.344913, 38.007816, 27.260321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684353, 37.801281, 27.214233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200092, -0.514860, 0.833596,
		-0.489734, -0.684337, -0.540226,
		0.848601, -0.516335, -0.115214,
		29.938932, 37.646381, 27.179668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162394, 37.427296, 27.446299>,  <29.344913, 38.007816, 27.260321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162394, 37.427296, 27.446299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.561728, 37.412205, 27.463762>,  <29.801327, 37.403152, 27.474241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.561728, 37.412205, 27.463762>,  <29.162394, 37.427296, 27.446299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561728, 37.412205, 27.463762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056644, -0.496677, 0.866085,
		-0.010986, -0.867115, -0.497987,
		0.998334, -0.037723, 0.043661,
		29.861227, 37.400887, 27.476860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366625, 36.780308, 27.503859>,  <29.162394, 37.427296, 27.446299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366625, 36.780308, 27.503859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.684299, 36.974796, 27.649656>,  <29.874905, 37.091492, 27.737135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.684299, 36.974796, 27.649656>,  <29.366625, 36.780308, 27.503859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684299, 36.974796, 27.649656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100057, -0.696260, 0.710782,
		0.599382, -0.528022, -0.601609,
		0.794185, 0.486225, 0.364493,
		29.922556, 37.120663, 27.759005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752975, 36.255089, 27.682449>,  <29.366625, 36.780308, 27.503859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752975, 36.255089, 27.682449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.873028, 36.571888, 27.895115>,  <29.945059, 36.761967, 28.022715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.873028, 36.571888, 27.895115>,  <29.752975, 36.255089, 27.682449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873028, 36.571888, 27.895115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159576, -0.591190, 0.790588,
		0.940456, -0.152440, -0.303817,
		0.300131, 0.791995, 0.531663,
		29.963068, 36.809486, 28.054613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451042, 36.076965, 28.013077>,  <29.752975, 36.255089, 27.682449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451042, 36.076965, 28.013077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.308027, 36.363911, 28.252262>,  <30.222218, 36.536079, 28.395773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.308027, 36.363911, 28.252262>,  <30.451042, 36.076965, 28.013077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308027, 36.363911, 28.252262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226470, -0.554575, 0.800723,
		0.906024, 0.421709, 0.035820,
		-0.357537, 0.717362, 0.597962,
		30.200766, 36.579121, 28.431650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943800, 36.145626, 28.599907>,  <30.451042, 36.076965, 28.013077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943800, 36.145626, 28.599907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.599691, 36.315186, 28.713221>,  <30.393227, 36.416920, 28.781208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.599691, 36.315186, 28.713221>,  <30.943800, 36.145626, 28.599907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599691, 36.315186, 28.713221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065519, -0.459109, 0.885961,
		0.505613, 0.780725, 0.367184,
		-0.860269, 0.423895, 0.283284,
		30.341610, 36.442352, 28.798206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128777, 36.521343, 29.212288>,  <30.943800, 36.145626, 28.599907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128777, 36.521343, 29.212288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.730064, 36.498436, 29.234743>,  <30.490837, 36.484692, 29.248217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.730064, 36.498436, 29.234743>,  <31.128777, 36.521343, 29.212288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730064, 36.498436, 29.234743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078226, -0.540098, 0.837959,
		-0.017668, 0.839652, 0.542838,
		-0.996779, -0.057269, 0.056140,
		30.431030, 36.481255, 29.251585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248808, 37.257843, 29.117807>,  <31.128777, 36.521343, 29.212288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248808, 37.257843, 29.117807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.632677, 37.339214, 29.195414>,  <31.862999, 37.388035, 29.241978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.632677, 37.339214, 29.195414>,  <31.248808, 37.257843, 29.117807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632677, 37.339214, 29.195414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040094, 0.584072, -0.810711,
		-0.278238, 0.785798, 0.552363,
		0.959675, 0.203424, 0.194017,
		31.920580, 37.400242, 29.253618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355013, 37.993683, 29.037560>,  <31.248808, 37.257843, 29.117807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355013, 37.993683, 29.037560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.707809, 37.814926, 28.977728>,  <31.919487, 37.707672, 28.941828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.707809, 37.814926, 28.977728>,  <31.355013, 37.993683, 29.037560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707809, 37.814926, 28.977728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176743, 0.607915, -0.774081,
		0.436866, 0.656296, 0.615162,
		0.881992, -0.446895, -0.149581,
		31.972406, 37.680859, 28.932854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622026, 38.500072, 28.616404>,  <31.355013, 37.993683, 29.037560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622026, 38.500072, 28.616404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.880407, 38.195946, 28.589104>,  <32.035435, 38.013470, 28.572723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.880407, 38.195946, 28.589104>,  <31.622026, 38.500072, 28.616404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880407, 38.195946, 28.589104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378756, 0.396834, -0.836102,
		0.662788, 0.514234, 0.544312,
		0.645954, -0.760320, -0.068248,
		32.074192, 37.967850, 28.568630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322899, 38.765461, 28.554728>,  <31.622026, 38.500072, 28.616404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322899, 38.765461, 28.554728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.322151, 38.402100, 28.387493>,  <32.321705, 38.184082, 28.287153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.322151, 38.402100, 28.387493>,  <32.322899, 38.765461, 28.554728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322151, 38.402100, 28.387493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322829, 0.395154, -0.860020,
		0.946455, -0.136574, 0.292523,
		-0.001865, -0.908405, -0.418086,
		32.321590, 38.129578, 28.262068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035435, 38.761063, 28.260872>,  <32.322899, 38.765461, 28.554728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035435, 38.761063, 28.260872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.800728, 38.483974, 28.093136>,  <32.659904, 38.317722, 27.992495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.800728, 38.483974, 28.093136>,  <33.035435, 38.761063, 28.260872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800728, 38.483974, 28.093136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328826, 0.269404, -0.905149,
		0.739984, -0.669003, 0.069706,
		-0.586769, -0.692717, -0.419340,
		32.624699, 38.276161, 27.967333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496315, 38.424366, 27.896593>,  <33.035435, 38.761063, 28.260872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496315, 38.424366, 27.896593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.136806, 38.344215, 27.740616>,  <32.921101, 38.296124, 27.647030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.136806, 38.344215, 27.740616>,  <33.496315, 38.424366, 27.896593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136806, 38.344215, 27.740616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295151, 0.381131, -0.876142,
		0.324180, -0.902545, -0.283408,
		-0.898773, -0.200380, -0.389943,
		32.867176, 38.284100, 27.623632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604412, 38.292236, 27.111582>,  <33.496315, 38.424366, 27.896593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604412, 38.292236, 27.111582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.210541, 38.349213, 27.151819>,  <32.974216, 38.383400, 27.175961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.210541, 38.349213, 27.151819>,  <33.604412, 38.292236, 27.111582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210541, 38.349213, 27.151819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001019, 0.581538, -0.813519,
		-0.174379, -0.800952, -0.572773,
		-0.984678, 0.142444, 0.100592,
		32.915138, 38.391945, 27.181997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291489, 38.146496, 26.369183>,  <33.604412, 38.292236, 27.111582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291489, 38.146496, 26.369183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051010, 38.379608, 26.587879>,  <32.906723, 38.519474, 26.719097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.051010, 38.379608, 26.587879>,  <33.291489, 38.146496, 26.369183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051010, 38.379608, 26.587879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122041, 0.609208, -0.783563,
		-0.789725, -0.537803, -0.295133,
		-0.601199, 0.582781, 0.546740,
		32.870651, 38.554443, 26.751902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732159, 38.347591, 25.923933>,  <33.291489, 38.146496, 26.369183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732159, 38.347591, 25.923933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.729496, 38.625240, 26.211863>,  <32.727898, 38.791832, 26.384621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.729496, 38.625240, 26.211863>,  <32.732159, 38.347591, 25.923933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729496, 38.625240, 26.211863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147333, 0.711303, -0.687271,
		-0.989064, -0.110628, 0.097533,
		-0.006656, 0.694125, 0.719823,
		32.727501, 38.833477, 26.427809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142406, 38.721191, 25.793137>,  <32.732159, 38.347591, 25.923933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142406, 38.721191, 25.793137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.364372, 38.975052, 26.008276>,  <32.497551, 39.127369, 26.137360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.364372, 38.975052, 26.008276>,  <32.142406, 38.721191, 25.793137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364372, 38.975052, 26.008276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192646, 0.726987, -0.659073,
		-0.809294, 0.262115, 0.525680,
		0.554915, 0.634654, 0.537851,
		32.530846, 39.165447, 26.169632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753767, 39.376225, 25.919899>,  <32.142406, 38.721191, 25.793137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753767, 39.376225, 25.919899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.146580, 39.448380, 25.942093>,  <32.382267, 39.491673, 25.955408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.146580, 39.448380, 25.942093>,  <31.753767, 39.376225, 25.919899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146580, 39.448380, 25.942093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115323, 0.806281, -0.580183,
		-0.149391, 0.563358, 0.812594,
		0.982030, 0.180385, 0.055483,
		32.441189, 39.502495, 25.958738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808456, 40.049751, 26.088423>,  <31.753767, 39.376225, 25.919899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808456, 40.049751, 26.088423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.156120, 39.949097, 25.918133>,  <32.364719, 39.888706, 25.815958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.156120, 39.949097, 25.918133>,  <31.808456, 40.049751, 26.088423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156120, 39.949097, 25.918133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115815, 0.733352, -0.669912,
		0.480780, 0.631565, 0.608257,
		0.869159, -0.251635, -0.425726,
		32.416866, 39.873608, 25.790415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071793, 40.616032, 25.983929>,  <31.808456, 40.049751, 26.088423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071793, 40.616032, 25.983929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.282936, 40.371471, 25.748116>,  <32.409622, 40.224735, 25.606628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.282936, 40.371471, 25.748116>,  <32.071793, 40.616032, 25.983929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282936, 40.371471, 25.748116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100075, 0.644506, -0.758022,
		0.843413, 0.459129, 0.279025,
		0.527863, -0.611403, -0.589532,
		32.441296, 40.188049, 25.571257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527847, 41.034267, 25.749020>,  <32.071793, 40.616032, 25.983929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527847, 41.034267, 25.749020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519463, 40.730312, 25.489134>,  <32.514431, 40.547939, 25.333202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.519463, 40.730312, 25.489134>,  <32.527847, 41.034267, 25.749020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519463, 40.730312, 25.489134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128017, 0.646549, -0.752055,
		0.991551, 0.067413, -0.110829,
		-0.020958, -0.759888, -0.649716,
		32.513176, 40.502346, 25.294220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212162, 41.464272, 25.856268>,  <32.527847, 41.034267, 25.749020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212162, 41.464272, 25.856268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.407917, 41.788109, 25.985926>,  <33.525368, 41.982410, 26.063721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.407917, 41.788109, 25.985926>,  <33.212162, 41.464272, 25.856268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407917, 41.788109, 25.985926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123936, -0.432492, 0.893079,
		0.863217, -0.396885, -0.311991,
		0.489383, 0.809589, 0.324146,
		33.554733, 42.030987, 26.083170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862320, 41.253464, 26.053293>,  <33.212162, 41.464272, 25.856268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862320, 41.253464, 26.053293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784832, 41.599541, 26.238298>,  <33.738338, 41.807186, 26.349302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784832, 41.599541, 26.238298>,  <33.862320, 41.253464, 26.053293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784832, 41.599541, 26.238298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040008, -0.464086, 0.884886,
		0.980240, 0.189927, 0.055289,
		-0.193723, 0.865189, 0.462514,
		33.726715, 41.859097, 26.377052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419868, 41.270626, 26.550203>,  <33.862320, 41.253464, 26.053293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419868, 41.270626, 26.550203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.124554, 41.515690, 26.663038>,  <33.947365, 41.662727, 26.730740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.124554, 41.515690, 26.663038>,  <34.419868, 41.270626, 26.550203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124554, 41.515690, 26.663038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094837, -0.319782, 0.942733,
		0.667781, 0.722764, 0.177990,
		-0.738292, 0.612659, 0.282089,
		33.903065, 41.699486, 26.747665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648930, 41.499878, 27.113512>,  <34.419868, 41.270626, 26.550203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648930, 41.499878, 27.113512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.265228, 41.604179, 27.157049>,  <34.035007, 41.666759, 27.183172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.265228, 41.604179, 27.157049>,  <34.648930, 41.499878, 27.113512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265228, 41.604179, 27.157049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108350, -0.016309, 0.993979,
		0.260955, 0.965269, -0.012608,
		-0.959251, 0.260750, 0.108842,
		33.977451, 41.682404, 27.189701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582073, 42.072430, 27.519030>,  <34.648930, 41.499878, 27.113512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582073, 42.072430, 27.519030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.227169, 41.891781, 27.556566>,  <34.014225, 41.783394, 27.579088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.227169, 41.891781, 27.556566>,  <34.582073, 42.072430, 27.519030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227169, 41.891781, 27.556566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065482, 0.078057, 0.994796,
		-0.456594, 0.888790, -0.039684,
		-0.887262, -0.451620, 0.093840,
		33.960991, 41.756294, 27.584719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265625, 42.327763, 28.181725>,  <34.582073, 42.072430, 27.519030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265625, 42.327763, 28.181725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040752, 42.004318, 28.112328>,  <33.905827, 41.810253, 28.070690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040752, 42.004318, 28.112328>,  <34.265625, 42.327763, 28.181725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040752, 42.004318, 28.112328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105428, -0.137998, 0.984805,
		-0.820263, 0.571935, -0.007669,
		-0.562186, -0.808608, -0.173493,
		33.872097, 41.761734, 28.060280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799904, 42.338505, 28.628458>,  <34.265625, 42.327763, 28.181725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799904, 42.338505, 28.628458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.794991, 41.950474, 28.531469>,  <33.792042, 41.717655, 28.473276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.794991, 41.950474, 28.531469>,  <33.799904, 42.338505, 28.628458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794991, 41.950474, 28.531469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233015, -0.233038, 0.944139,
		-0.972396, 0.068101, -0.223179,
		-0.012287, -0.970081, -0.242473,
		33.791306, 41.659451, 28.458727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111496, 42.088863, 28.842777>,  <33.799904, 42.338505, 28.628458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111496, 42.088863, 28.842777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.367111, 41.782349, 28.816105>,  <33.520481, 41.598442, 28.800102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.367111, 41.782349, 28.816105>,  <33.111496, 42.088863, 28.842777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367111, 41.782349, 28.816105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253118, -0.291360, 0.922519,
		-0.726338, -0.572643, -0.380149,
		0.639035, -0.766283, -0.066680,
		33.558823, 41.552464, 28.796101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771442, 41.610165, 29.212677>,  <33.111496, 42.088863, 28.842777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771442, 41.610165, 29.212677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.140400, 41.462761, 29.166397>,  <33.361774, 41.374321, 29.138628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.140400, 41.462761, 29.166397>,  <32.771442, 41.610165, 29.212677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140400, 41.462761, 29.166397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069901, -0.453875, 0.888319,
		-0.379862, -0.811296, -0.444413,
		0.922398, -0.368504, -0.115700,
		33.417118, 41.352211, 29.131687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813072, 40.749744, 29.298893>,  <32.771442, 41.610165, 29.212677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813072, 40.749744, 29.298893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.176651, 40.909142, 29.347916>,  <33.394798, 41.004780, 29.377329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.176651, 40.909142, 29.347916>,  <32.813072, 40.749744, 29.298893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176651, 40.909142, 29.347916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051171, -0.398374, 0.915794,
		0.413761, -0.826137, -0.382492,
		0.908946, 0.398492, 0.122558,
		33.449333, 41.028690, 29.384684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193867, 40.238979, 29.477272>,  <32.813072, 40.749744, 29.298893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193867, 40.238979, 29.477272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.372803, 40.574383, 29.601711>,  <33.480164, 40.775627, 29.676374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.372803, 40.574383, 29.601711>,  <33.193867, 40.238979, 29.477272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372803, 40.574383, 29.601711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200073, -0.432852, 0.878982,
		0.871698, -0.330961, -0.361396,
		0.447340, 0.838513, 0.311100,
		33.507004, 40.825935, 29.695042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820915, 40.054668, 29.767365>,  <33.193867, 40.238979, 29.477272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820915, 40.054668, 29.767365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.761101, 40.404488, 29.951885>,  <33.725212, 40.614380, 30.062597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.761101, 40.404488, 29.951885>,  <33.820915, 40.054668, 29.767365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761101, 40.404488, 29.951885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330117, -0.395617, 0.857036,
		0.932020, 0.280442, -0.229545,
		-0.149537, 0.874551, 0.461302,
		33.716240, 40.666855, 30.090275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423218, 40.174282, 30.157694>,  <33.820915, 40.054668, 29.767365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423218, 40.174282, 30.157694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.126183, 40.366554, 30.344246>,  <33.947960, 40.481918, 30.456177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.126183, 40.366554, 30.344246>,  <34.423218, 40.174282, 30.157694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126183, 40.366554, 30.344246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313007, -0.366543, 0.876170,
		0.592107, 0.796612, 0.121733,
		-0.742587, 0.480683, 0.466378,
		33.903408, 40.510757, 30.484159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662910, 40.304264, 30.751925>,  <34.423218, 40.174282, 30.157694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662910, 40.304264, 30.751925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.284126, 40.371342, 30.861570>,  <34.056854, 40.411591, 30.927357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.284126, 40.371342, 30.861570>,  <34.662910, 40.304264, 30.751925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284126, 40.371342, 30.861570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258641, -0.108455, 0.959866,
		0.190694, 0.979855, 0.059330,
		-0.946964, 0.167696, 0.274113,
		34.000038, 40.421650, 30.943804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.963655, 43.617977, 26.996120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.584513, 43.587215, 26.872406>,  <31.357027, 43.568760, 26.798178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.584513, 43.587215, 26.872406>,  <31.963655, 43.617977, 26.996120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584513, 43.587215, 26.872406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216298, 0.557504, -0.801501,
		0.234065, -0.826604, -0.511800,
		-0.947855, -0.076902, -0.309285,
		31.300156, 43.564144, 26.779621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950457, 43.439198, 26.251835>,  <31.963655, 43.617977, 26.996120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950457, 43.439198, 26.251835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.596434, 43.603462, 26.339493>,  <31.384020, 43.702023, 26.392088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.596434, 43.603462, 26.339493>,  <31.950457, 43.439198, 26.251835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596434, 43.603462, 26.339493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030115, 0.520327, -0.853436,
		-0.464503, -0.748742, -0.472888,
		-0.885059, 0.410665, 0.219145,
		31.330915, 43.726662, 26.405237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654114, 43.450893, 25.608639>,  <31.950457, 43.439198, 26.251835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654114, 43.450893, 25.608639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456589, 43.734680, 25.809757>,  <31.338074, 43.904953, 25.930429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456589, 43.734680, 25.809757>,  <31.654114, 43.450893, 25.608639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456589, 43.734680, 25.809757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024068, 0.566842, -0.823475,
		-0.869237, -0.418742, -0.262837,
		-0.493810, 0.709468, 0.502798,
		31.308445, 43.947521, 25.960596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140202, 43.773960, 25.075098>,  <31.654114, 43.450893, 25.608639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140202, 43.773960, 25.075098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161985, 44.043602, 25.369749>,  <31.175056, 44.205387, 25.546539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161985, 44.043602, 25.369749>,  <31.140202, 43.773960, 25.075098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161985, 44.043602, 25.369749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109420, 0.729251, -0.675440,
		-0.992503, 0.117386, -0.034046,
		0.054459, 0.674102, 0.736628,
		31.178324, 44.245834, 25.590738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688534, 44.204025, 24.849125>,  <31.140202, 43.773960, 25.075098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688534, 44.204025, 24.849125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.903549, 44.410892, 25.115536>,  <31.032558, 44.535011, 25.275383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.903549, 44.410892, 25.115536>,  <30.688534, 44.204025, 24.849125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903549, 44.410892, 25.115536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176829, 0.703147, -0.688706,
		-0.824490, 0.487978, 0.286519,
		0.537539, 0.517166, 0.666026,
		31.064812, 44.566044, 25.315344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335346, 44.826431, 24.884718>,  <30.688534, 44.204025, 24.849125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335346, 44.826431, 24.884718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.708565, 44.891838, 25.012896>,  <30.932497, 44.931080, 25.089802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.708565, 44.891838, 25.012896>,  <30.335346, 44.826431, 24.884718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708565, 44.891838, 25.012896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110100, 0.718207, -0.687064,
		-0.342491, 0.676344, 0.652118,
		0.933048, 0.163515, 0.320445,
		30.988480, 44.940891, 25.109030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347708, 45.593796, 25.034132>,  <30.335346, 44.826431, 24.884718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347708, 45.593796, 25.034132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727085, 45.473240, 24.994894>,  <30.954712, 45.400906, 24.971352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727085, 45.473240, 24.994894>,  <30.347708, 45.593796, 25.034132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727085, 45.473240, 24.994894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175184, 0.756407, -0.630205,
		0.264135, 0.580529, 0.770207,
		0.948443, -0.301387, -0.098094,
		31.011618, 45.382824, 24.965466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800022, 46.165939, 25.054712>,  <30.347708, 45.593796, 25.034132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800022, 46.165939, 25.054712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010345, 45.894760, 24.849220>,  <31.136539, 45.732052, 24.725925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010345, 45.894760, 24.849220>,  <30.800022, 46.165939, 25.054712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010345, 45.894760, 24.849220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194037, 0.683631, -0.703561,
		0.828177, 0.270255, 0.491004,
		0.525806, -0.677946, -0.513728,
		31.168087, 45.691376, 24.695103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296577, 46.600269, 24.734398>,  <30.800022, 46.165939, 25.054712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296577, 46.600269, 24.734398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328152, 46.256451, 24.532425>,  <31.347095, 46.050159, 24.411242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328152, 46.256451, 24.532425>,  <31.296577, 46.600269, 24.734398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328152, 46.256451, 24.532425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255434, 0.507041, -0.823202,
		0.963599, -0.063998, 0.259580,
		0.078934, -0.859543, -0.504932,
		31.351831, 45.998589, 24.380945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939453, 46.747353, 24.400097>,  <31.296577, 46.600269, 24.734398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939453, 46.747353, 24.400097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720461, 46.450134, 24.246140>,  <31.589066, 46.271801, 24.153765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720461, 46.450134, 24.246140>,  <31.939453, 46.747353, 24.400097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720461, 46.450134, 24.246140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225877, 0.311658, -0.922957,
		0.805756, -0.592241, -0.002790,
		-0.547482, -0.743048, -0.384894,
		31.556215, 46.227219, 24.130671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342663, 46.395233, 23.871300>,  <31.939453, 46.747353, 24.400097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342663, 46.395233, 23.871300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961884, 46.316036, 23.777840>,  <31.733416, 46.268517, 23.721764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961884, 46.316036, 23.777840>,  <32.342663, 46.395233, 23.871300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961884, 46.316036, 23.777840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191448, 0.210760, -0.958607,
		0.239045, -0.957276, -0.162727,
		-0.951948, -0.197997, -0.233650,
		31.676298, 46.256638, 23.707745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439789, 46.192886, 23.210676>,  <32.342663, 46.395233, 23.871300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439789, 46.192886, 23.210676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050583, 46.279953, 23.241304>,  <31.817059, 46.332191, 23.259682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050583, 46.279953, 23.241304>,  <32.439789, 46.192886, 23.210676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050583, 46.279953, 23.241304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006758, 0.358583, -0.933473,
		-0.230641, -0.907767, -0.350378,
		-0.973015, 0.217666, 0.076569,
		31.758678, 46.345253, 23.264275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103310, 46.084682, 22.468237>,  <32.439789, 46.192886, 23.210676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103310, 46.084682, 22.468237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910955, 46.356506, 22.689848>,  <31.795542, 46.519600, 22.822815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910955, 46.356506, 22.689848>,  <32.103310, 46.084682, 22.468237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910955, 46.356506, 22.689848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132956, 0.568062, -0.812175,
		-0.866643, -0.464226, -0.182822,
		-0.480888, 0.679559, 0.554028,
		31.766689, 46.560375, 22.856056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816635, 46.311497, 22.212509>,  <32.103310, 46.084682, 22.468237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816635, 46.311497, 22.212509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081959, 46.364544, 21.917910>,  <33.241154, 46.396374, 21.741150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081959, 46.364544, 21.917910>,  <32.816635, 46.311497, 22.212509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081959, 46.364544, 21.917910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524311, 0.784594, -0.330924,
		0.533965, 0.605660, 0.589963,
		0.663309, 0.132622, -0.736500,
		33.280952, 46.404331, 21.696960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207146, 45.647236, 22.053137>,  <32.816635, 46.311497, 22.212509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207146, 45.647236, 22.053137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396755, 45.424656, 21.780178>,  <33.510521, 45.291107, 21.616404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396755, 45.424656, 21.780178>,  <33.207146, 45.647236, 22.053137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396755, 45.424656, 21.780178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177818, -0.698536, 0.693129,
		-0.862368, -0.449905, -0.232179,
		0.474027, -0.556446, -0.682397,
		33.538963, 45.257721, 21.575459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841785, 44.988174, 22.020952>,  <33.207146, 45.647236, 22.053137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841785, 44.988174, 22.020952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221634, 44.950211, 21.901480>,  <33.449543, 44.927433, 21.829796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.221634, 44.950211, 21.901480>,  <32.841785, 44.988174, 22.020952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221634, 44.950211, 21.901480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169919, -0.644878, 0.745158,
		-0.263337, -0.758369, -0.596263,
		0.949622, -0.094912, -0.298682,
		33.506519, 44.921738, 21.811874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009502, 44.313675, 21.803595>,  <32.841785, 44.988174, 22.020952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009502, 44.313675, 21.803595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.362061, 44.456020, 21.927856>,  <33.573593, 44.541428, 22.002413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.362061, 44.456020, 21.927856>,  <33.009502, 44.313675, 21.803595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362061, 44.456020, 21.927856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126131, -0.811043, 0.571227,
		0.455234, -0.464292, -0.759733,
		0.881393, 0.355868, 0.310653,
		33.626480, 44.562782, 22.021051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160233, 43.860611, 22.213305>,  <33.009502, 44.313675, 21.803595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160233, 43.860611, 22.213305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487129, 44.084293, 22.269032>,  <33.683266, 44.218502, 22.302467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487129, 44.084293, 22.269032>,  <33.160233, 43.860611, 22.213305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487129, 44.084293, 22.269032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357798, -0.681849, 0.638015,
		0.451773, -0.471564, -0.757317,
		0.817241, 0.559204, 0.139316,
		33.732300, 44.252056, 22.310825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799080, 43.390743, 22.184261>,  <33.160233, 43.860611, 22.213305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799080, 43.390743, 22.184261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874947, 43.724110, 22.391895>,  <33.920467, 43.924129, 22.516476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874947, 43.724110, 22.391895>,  <33.799080, 43.390743, 22.184261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874947, 43.724110, 22.391895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292071, -0.552638, 0.780567,
		0.937401, 0.003562, -0.348233,
		0.189667, 0.833414, 0.519084,
		33.931847, 43.974133, 22.547621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406708, 43.247421, 22.557888>,  <33.799080, 43.390743, 22.184261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406708, 43.247421, 22.557888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.240810, 43.551823, 22.757431>,  <34.141273, 43.734463, 22.877157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.240810, 43.551823, 22.757431>,  <34.406708, 43.247421, 22.557888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240810, 43.551823, 22.757431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177064, -0.470255, 0.864586,
		0.892545, 0.446910, 0.060287,
		-0.414743, 0.761007, 0.498855,
		34.116386, 43.780125, 22.907087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816456, 43.291908, 23.082560>,  <34.406708, 43.247421, 22.557888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816456, 43.291908, 23.082560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.498409, 43.499760, 23.207632>,  <34.307579, 43.624470, 23.282675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.498409, 43.499760, 23.207632>,  <34.816456, 43.291908, 23.082560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498409, 43.499760, 23.207632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139714, -0.344765, 0.928234,
		0.590141, 0.781741, 0.201529,
		-0.795119, 0.519632, 0.312680,
		34.259872, 43.655651, 23.301435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026802, 43.529869, 23.667067>,  <34.816456, 43.291908, 23.082560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026802, 43.529869, 23.667067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.627228, 43.542095, 23.680845>,  <34.387482, 43.549431, 23.689114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.627228, 43.542095, 23.680845>,  <35.026802, 43.529869, 23.667067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627228, 43.542095, 23.680845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016752, -0.455564, 0.890045,
		0.042901, 0.889678, 0.454568,
		-0.998939, 0.030569, 0.034448,
		34.327545, 43.551266, 23.691179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839100, 43.691269, 24.399744>,  <35.026802, 43.529869, 23.667067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839100, 43.691269, 24.399744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499420, 43.551952, 24.240969>,  <34.295612, 43.468365, 24.145704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499420, 43.551952, 24.240969>,  <34.839100, 43.691269, 24.399744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499420, 43.551952, 24.240969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260961, -0.376696, 0.888819,
		-0.459088, 0.858369, 0.229000,
		-0.849198, -0.348287, -0.396937,
		34.244659, 43.447468, 24.121887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255463, 44.029037, 24.761410>,  <34.839100, 43.691269, 24.399744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255463, 44.029037, 24.761410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176189, 43.664532, 24.617014>,  <34.128624, 43.445827, 24.530376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176189, 43.664532, 24.617014>,  <34.255463, 44.029037, 24.761410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176189, 43.664532, 24.617014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195011, -0.324275, 0.925644,
		-0.960569, 0.253847, -0.113441,
		-0.198186, -0.911267, -0.360992,
		34.116734, 43.391151, 24.508717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702061, 43.818413, 25.198175>,  <34.255463, 44.029037, 24.761410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702061, 43.818413, 25.198175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793098, 43.479359, 25.006462>,  <33.847721, 43.275925, 24.891434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793098, 43.479359, 25.006462>,  <33.702061, 43.818413, 25.198175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793098, 43.479359, 25.006462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241881, -0.525986, 0.815372,
		-0.943237, -0.069643, -0.324738,
		0.227593, -0.847637, -0.479284,
		33.861378, 43.225067, 24.862677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085896, 43.478043, 25.390093>,  <33.702061, 43.818413, 25.198175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085896, 43.478043, 25.390093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.367897, 43.219357, 25.273659>,  <33.537098, 43.064144, 25.203798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.367897, 43.219357, 25.273659>,  <33.085896, 43.478043, 25.390093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367897, 43.219357, 25.273659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310803, -0.650668, 0.692844,
		-0.637458, -0.398000, -0.659730,
		0.705017, -0.646705, -0.291074,
		33.579399, 43.025345, 25.186333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782093, 42.869328, 25.324623>,  <33.085896, 43.478043, 25.390093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782093, 42.869328, 25.324623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.171463, 42.787731, 25.366251>,  <33.405087, 42.738773, 25.391228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.171463, 42.787731, 25.366251>,  <32.782093, 42.869328, 25.324623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171463, 42.787731, 25.366251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207661, -0.594688, 0.776674,
		-0.096549, -0.777645, -0.621246,
		0.973425, -0.203996, 0.104070,
		33.463490, 42.726532, 25.397472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787636, 42.169418, 25.428074>,  <32.782093, 42.869328, 25.324623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787636, 42.169418, 25.428074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137817, 42.269192, 25.593660>,  <33.347927, 42.329056, 25.693012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137817, 42.269192, 25.593660>,  <32.787636, 42.169418, 25.428074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137817, 42.269192, 25.593660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196838, -0.598253, 0.776754,
		0.441407, -0.761494, -0.474643,
		0.875451, 0.249437, 0.413965,
		33.400452, 42.344025, 25.717850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805126, 41.389393, 25.195492>,  <32.787636, 42.169418, 25.428074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805126, 41.389393, 25.195492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.661892, 41.055767, 25.027628>,  <32.575951, 40.855591, 24.926910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.661892, 41.055767, 25.027628>,  <32.805126, 41.389393, 25.195492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661892, 41.055767, 25.027628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116830, 0.485956, -0.866140,
		0.926350, -0.261125, -0.271458,
		-0.358087, -0.834063, -0.419658,
		32.554466, 40.805550, 24.901731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199558, 41.350849, 24.554861>,  <32.805126, 41.389393, 25.195492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199558, 41.350849, 24.554861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858276, 41.148766, 24.503002>,  <32.653507, 41.027515, 24.471888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858276, 41.148766, 24.503002>,  <33.199558, 41.350849, 24.554861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858276, 41.148766, 24.503002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097213, 0.398240, -0.912116,
		0.512442, -0.765615, -0.388892,
		-0.853202, -0.505212, -0.129647,
		32.602314, 40.997204, 24.464108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293411, 41.031212, 23.998281>,  <33.199558, 41.350849, 24.554861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293411, 41.031212, 23.998281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895912, 41.005001, 24.034433>,  <32.657413, 40.989273, 24.056124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895912, 41.005001, 24.034433>,  <33.293411, 41.031212, 23.998281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895912, 41.005001, 24.034433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109205, 0.402578, -0.908848,
		0.023173, -0.913037, -0.407218,
		-0.993749, -0.065531, 0.090379,
		32.597786, 40.985340, 24.061546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087635, 40.694862, 23.424585>,  <33.293411, 41.031212, 23.998281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087635, 40.694862, 23.424585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763626, 40.884933, 23.562033>,  <32.569221, 40.998978, 23.644501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763626, 40.884933, 23.562033>,  <33.087635, 40.694862, 23.424585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763626, 40.884933, 23.562033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212021, 0.309011, -0.927124,
		-0.546731, -0.823843, -0.149557,
		-0.810021, 0.475178, 0.343618,
		32.520618, 41.027489, 23.665117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617947, 40.469879, 22.949797>,  <33.087635, 40.694862, 23.424585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617947, 40.469879, 22.949797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.502174, 40.806969, 23.131365>,  <32.432709, 41.009224, 23.240305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.502174, 40.806969, 23.131365>,  <32.617947, 40.469879, 22.949797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502174, 40.806969, 23.131365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101820, 0.444420, -0.890013,
		-0.951768, -0.303816, -0.042823,
		-0.289432, 0.842726, 0.453919,
		32.415344, 41.059788, 23.267540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988220, 40.557377, 22.721781>,  <32.617947, 40.469879, 22.949797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988220, 40.557377, 22.721781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087509, 40.927620, 22.836067>,  <32.147083, 41.149765, 22.904640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087509, 40.927620, 22.836067>,  <31.988220, 40.557377, 22.721781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087509, 40.927620, 22.836067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161294, 0.330323, -0.929984,
		-0.955180, 0.184759, 0.231289,
		0.248223, 0.925608, 0.285718,
		32.161976, 41.205303, 22.921783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492985, 41.002590, 22.443512>,  <31.988220, 40.557377, 22.721781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492985, 41.002590, 22.443512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802843, 41.246391, 22.510960>,  <31.988758, 41.392670, 22.551428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802843, 41.246391, 22.510960>,  <31.492985, 41.002590, 22.443512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802843, 41.246391, 22.510960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135513, 0.420425, -0.897150,
		-0.617705, 0.672124, 0.408276,
		0.774646, 0.609501, 0.168617,
		32.035236, 41.429241, 22.561544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926487, 41.336124, 22.997566>,  <31.492985, 41.002590, 22.443512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926487, 41.336124, 22.997566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.530800, 41.282856, 22.973175>,  <30.293388, 41.250896, 22.958540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.530800, 41.282856, 22.973175>,  <30.926487, 41.336124, 22.997566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530800, 41.282856, 22.973175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026265, -0.570858, 0.820628,
		-0.144091, 0.810177, 0.568200,
		-0.989216, -0.133169, -0.060977,
		30.234035, 41.242905, 22.954882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684418, 41.470543, 23.648474>,  <30.926487, 41.336124, 22.997566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684418, 41.470543, 23.648474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.384710, 41.263199, 23.483603>,  <30.204885, 41.138790, 23.384680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.384710, 41.263199, 23.483603>,  <30.684418, 41.470543, 23.648474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384710, 41.263199, 23.483603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047783, -0.578443, 0.814322,
		-0.660538, 0.629843, 0.408641,
		-0.749271, -0.518364, -0.412179,
		30.159929, 41.107689, 23.359949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113638, 41.348366, 24.096540>,  <30.684418, 41.470543, 23.648474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113638, 41.348366, 24.096540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.084806, 41.055748, 23.825352>,  <30.067507, 40.880177, 23.662640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.084806, 41.055748, 23.825352>,  <30.113638, 41.348366, 24.096540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084806, 41.055748, 23.825352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118558, -0.668635, 0.734079,
		-0.990328, 0.133290, -0.038536,
		-0.072079, -0.731547, -0.677970,
		30.063183, 40.836285, 23.621962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631144, 40.926834, 24.486406>,  <30.113638, 41.348366, 24.096540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631144, 40.926834, 24.486406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768538, 40.694893, 24.190897>,  <29.850975, 40.555729, 24.013592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768538, 40.694893, 24.190897>,  <29.631144, 40.926834, 24.486406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768538, 40.694893, 24.190897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116645, -0.806881, 0.579083,
		-0.931886, -0.112733, -0.344790,
		0.343486, -0.579857, -0.738771,
		29.871584, 40.520935, 23.969265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147800, 40.357582, 24.510910>,  <29.631144, 40.926834, 24.486406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147800, 40.357582, 24.510910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.470604, 40.233803, 24.309723>,  <29.664286, 40.159534, 24.189011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.470604, 40.233803, 24.309723>,  <29.147800, 40.357582, 24.510910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470604, 40.233803, 24.309723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009513, -0.844788, 0.535016,
		-0.590461, -0.436548, -0.678809,
		0.807010, -0.309449, -0.502968,
		29.712708, 40.140968, 24.158833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964411, 39.684185, 24.236843>,  <29.147800, 40.357582, 24.510910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964411, 39.684185, 24.236843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.362566, 39.722378, 24.240513>,  <29.601460, 39.745293, 24.242716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.362566, 39.722378, 24.240513>,  <28.964411, 39.684185, 24.236843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362566, 39.722378, 24.240513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065278, -0.744345, 0.664597,
		0.070290, -0.660933, -0.747146,
		0.995389, 0.095486, 0.009175,
		29.661182, 39.751022, 24.243265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190561, 39.095913, 24.099701>,  <28.964411, 39.684185, 24.236843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190561, 39.095913, 24.099701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.510086, 39.243584, 24.289692>,  <29.701801, 39.332188, 24.403687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.510086, 39.243584, 24.289692>,  <29.190561, 39.095913, 24.099701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510086, 39.243584, 24.289692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078242, -0.719087, 0.690501,
		0.596468, -0.588745, -0.545532,
		0.798814, 0.369178, 0.474977,
		29.749731, 39.354336, 24.432184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.825155, 46.945038, 23.510880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.207134, 46.826572, 23.503262>,  <28.436321, 46.755493, 23.498690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.207134, 46.826572, 23.503262>,  <27.825155, 46.945038, 23.510880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207134, 46.826572, 23.503262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162112, -0.574319, 0.802420,
		-0.248585, -0.763182, -0.596456,
		0.954948, -0.296162, -0.019046,
		28.493618, 46.737724, 23.497547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901525, 46.159752, 23.358267>,  <27.825155, 46.945038, 23.510880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901525, 46.159752, 23.358267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210489, 46.312000, 23.561644>,  <28.395868, 46.403347, 23.683670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210489, 46.312000, 23.561644>,  <27.901525, 46.159752, 23.358267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210489, 46.312000, 23.561644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140108, -0.678705, 0.720923,
		0.619479, -0.628084, -0.470910,
		0.772409, 0.380619, 0.508443,
		28.442211, 46.426186, 23.714176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175205, 45.547352, 23.483828>,  <27.901525, 46.159752, 23.358267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175205, 45.547352, 23.483828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.391439, 45.778236, 23.728643>,  <28.521179, 45.916767, 23.875532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.391439, 45.778236, 23.728643>,  <28.175205, 45.547352, 23.483828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391439, 45.778236, 23.728643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143154, -0.653779, 0.743021,
		0.829020, -0.489282, -0.270792,
		0.540585, 0.577214, 0.612038,
		28.553616, 45.951401, 23.912254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746822, 45.173553, 23.874165>,  <28.175205, 45.547352, 23.483828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746822, 45.173553, 23.874165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671822, 45.487762, 24.110062>,  <28.626822, 45.676289, 24.251600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.671822, 45.487762, 24.110062>,  <28.746822, 45.173553, 23.874165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671822, 45.487762, 24.110062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012780, -0.602289, 0.798176,
		0.982181, 0.142123, 0.122970,
		-0.187502, 0.785525, 0.589741,
		28.615570, 45.723419, 24.286983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037392, 44.983631, 24.474062>,  <28.746822, 45.173553, 23.874165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037392, 44.983631, 24.474062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.795794, 45.285042, 24.577898>,  <28.650835, 45.465889, 24.640200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.795794, 45.285042, 24.577898>,  <29.037392, 44.983631, 24.474062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795794, 45.285042, 24.577898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133226, -0.416588, 0.899280,
		0.785775, 0.508576, 0.352006,
		-0.603994, 0.753528, 0.259589,
		28.614595, 45.511101, 24.655775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403254, 45.298492, 25.021055>,  <29.037392, 44.983631, 24.474062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403254, 45.298492, 25.021055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019249, 45.400841, 25.066496>,  <28.788845, 45.462250, 25.093761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019249, 45.400841, 25.066496>,  <29.403254, 45.298492, 25.021055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019249, 45.400841, 25.066496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013383, -0.363378, 0.931546,
		0.279637, 0.895816, 0.345423,
		-0.960012, 0.255872, 0.113603,
		28.731245, 45.477604, 25.100576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357056, 45.412804, 25.903208>,  <29.403254, 45.298492, 25.021055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357056, 45.412804, 25.903208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979565, 45.397785, 25.771770>,  <28.753071, 45.388775, 25.692909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979565, 45.397785, 25.771770>,  <29.357056, 45.412804, 25.903208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979565, 45.397785, 25.771770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304793, -0.286943, 0.908165,
		-0.128386, 0.957211, 0.259351,
		-0.943726, -0.037547, -0.328591,
		28.696447, 45.386520, 25.673193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833771, 45.878395, 26.330454>,  <29.357056, 45.412804, 25.903208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833771, 45.878395, 26.330454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599104, 45.610912, 26.147738>,  <28.458303, 45.450424, 26.038109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599104, 45.610912, 26.147738>,  <28.833771, 45.878395, 26.330454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599104, 45.610912, 26.147738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458268, -0.190925, 0.868065,
		-0.667691, 0.718598, -0.194435,
		-0.586668, -0.668703, -0.456790,
		28.423103, 45.410301, 26.010700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124945, 46.041180, 26.556452>,  <28.833771, 45.878395, 26.330454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124945, 46.041180, 26.556452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.131187, 45.658089, 26.441547>,  <28.134933, 45.428234, 26.372604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.131187, 45.658089, 26.441547>,  <28.124945, 46.041180, 26.556452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131187, 45.658089, 26.441547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481402, -0.259002, 0.837359,
		-0.876361, 0.125221, -0.465093,
		0.015605, -0.957725, -0.287261,
		28.135870, 45.370770, 26.355370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400293, 45.758343, 26.722088>,  <28.124945, 46.041180, 26.556452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400293, 45.758343, 26.722088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637333, 45.441803, 26.661963>,  <27.779556, 45.251881, 26.625887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637333, 45.441803, 26.661963>,  <27.400293, 45.758343, 26.722088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637333, 45.441803, 26.661963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404210, -0.453562, 0.794290,
		-0.696737, -0.409936, -0.588651,
		0.592598, -0.791350, -0.150313,
		27.815113, 45.204399, 26.616869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044043, 45.066223, 26.788465>,  <27.400293, 45.758343, 26.722088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044043, 45.066223, 26.788465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424908, 44.956112, 26.841539>,  <27.653427, 44.890045, 26.873383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424908, 44.956112, 26.841539>,  <27.044043, 45.066223, 26.788465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424908, 44.956112, 26.841539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272803, -0.570063, 0.774988,
		-0.137699, -0.774113, -0.617890,
		0.952165, -0.275277, 0.132684,
		27.710558, 44.873528, 26.881344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997854, 44.355583, 26.907415>,  <27.044043, 45.066223, 26.788465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997854, 44.355583, 26.907415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345631, 44.452267, 27.079763>,  <27.554296, 44.510277, 27.183172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345631, 44.452267, 27.079763>,  <26.997854, 44.355583, 26.907415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345631, 44.452267, 27.079763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197816, -0.628852, 0.751940,
		0.452706, -0.739000, -0.498935,
		0.869440, 0.241710, 0.430871,
		27.606462, 44.524780, 27.209024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104473, 43.682266, 26.611126>,  <26.997854, 44.355583, 26.907415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104473, 43.682266, 26.611126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088934, 43.322071, 26.437866>,  <27.079611, 43.105953, 26.333910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088934, 43.322071, 26.437866>,  <27.104473, 43.682266, 26.611126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088934, 43.322071, 26.437866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062674, 0.430429, -0.900446,
		0.997278, -0.062128, 0.039716,
		-0.038848, -0.900484, -0.433151,
		27.077280, 43.051926, 26.307920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689220, 43.697933, 26.254330>,  <27.104473, 43.682266, 26.611126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689220, 43.697933, 26.254330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.439627, 43.433319, 26.087950>,  <27.289871, 43.274551, 25.988121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.439627, 43.433319, 26.087950>,  <27.689220, 43.697933, 26.254330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439627, 43.433319, 26.087950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295384, 0.293119, -0.909302,
		0.723458, -0.690255, 0.012505,
		-0.623985, -0.661535, -0.415949,
		27.252432, 43.234859, 25.963165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064787, 43.508648, 25.669170>,  <27.689220, 43.697933, 26.254330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064787, 43.508648, 25.669170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700848, 43.360470, 25.594398>,  <27.482483, 43.271561, 25.549536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700848, 43.360470, 25.594398>,  <28.064787, 43.508648, 25.669170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700848, 43.360470, 25.594398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158325, 0.106471, -0.981630,
		0.383547, -0.922730, -0.038221,
		-0.909849, -0.370450, -0.186928,
		27.427893, 43.249336, 25.538321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121956, 42.937927, 25.212633>,  <28.064787, 43.508648, 25.669170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121956, 42.937927, 25.212633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.762255, 43.101776, 25.151243>,  <27.546434, 43.200085, 25.114408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.762255, 43.101776, 25.151243>,  <28.121956, 42.937927, 25.212633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762255, 43.101776, 25.151243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221724, 0.124392, -0.967143,
		-0.377068, -0.903736, -0.202682,
		-0.899254, 0.409618, -0.153476,
		27.492479, 43.224663, 25.105200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891233, 42.728733, 24.604076>,  <28.121956, 42.937927, 25.212633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891233, 42.728733, 24.604076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612646, 43.014744, 24.628305>,  <27.445494, 43.186352, 24.642843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612646, 43.014744, 24.628305>,  <27.891233, 42.728733, 24.604076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612646, 43.014744, 24.628305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066700, 0.019543, -0.997581,
		-0.714480, -0.698825, 0.034081,
		-0.696469, 0.715026, 0.060575,
		27.403706, 43.229252, 24.646479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232090, 42.565590, 24.203997>,  <27.891233, 42.728733, 24.604076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232090, 42.565590, 24.203997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224176, 42.963699, 24.242043>,  <27.219429, 43.202564, 24.264870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224176, 42.963699, 24.242043>,  <27.232090, 42.565590, 24.203997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224176, 42.963699, 24.242043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184298, 0.089871, -0.978753,
		-0.982671, -0.036891, 0.181648,
		-0.019783, 0.995270, 0.095112,
		27.218241, 43.262280, 24.270576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708210, 42.743286, 23.761099>,  <27.232090, 42.565590, 24.203997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708210, 42.743286, 23.761099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932961, 43.067829, 23.825596>,  <27.067810, 43.262554, 23.864294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932961, 43.067829, 23.825596>,  <26.708210, 42.743286, 23.761099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932961, 43.067829, 23.825596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049043, 0.227248, -0.972601,
		-0.825767, 0.538573, 0.167476,
		0.561875, 0.811356, 0.161241,
		27.101522, 43.311237, 23.873968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372952, 43.191391, 23.442915>,  <26.708210, 42.743286, 23.761099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372952, 43.191391, 23.442915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.751108, 43.321152, 23.455507>,  <26.978003, 43.399010, 23.463062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.751108, 43.321152, 23.455507>,  <26.372952, 43.191391, 23.442915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751108, 43.321152, 23.455507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053784, 0.250535, -0.966612,
		-0.321462, 0.912137, 0.254302,
		0.945394, 0.324406, 0.031479,
		27.034727, 43.418472, 23.464951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319151, 43.723446, 23.007860>,  <26.372952, 43.191391, 23.442915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319151, 43.723446, 23.007860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.709642, 43.638905, 23.027069>,  <26.943937, 43.588181, 23.038595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.709642, 43.638905, 23.027069>,  <26.319151, 43.723446, 23.007860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709642, 43.638905, 23.027069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103656, 0.260699, -0.959839,
		0.190342, 0.942002, 0.276409,
		0.976230, -0.211350, 0.048022,
		27.002512, 43.575500, 23.041475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601149, 44.177654, 22.643221>,  <26.319151, 43.723446, 23.007860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601149, 44.177654, 22.643221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911921, 43.926399, 22.660263>,  <27.098385, 43.775646, 22.670488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911921, 43.926399, 22.660263>,  <26.601149, 44.177654, 22.643221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911921, 43.926399, 22.660263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333412, 0.353094, -0.874163,
		0.534054, 0.693371, 0.483759,
		0.776932, -0.628142, 0.042607,
		27.145000, 43.737957, 22.673046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350060, 44.506050, 22.688467>,  <26.601149, 44.177654, 22.643221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350060, 44.506050, 22.688467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357111, 44.150482, 22.505375>,  <27.361341, 43.937141, 22.395519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357111, 44.150482, 22.505375>,  <27.350060, 44.506050, 22.688467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357111, 44.150482, 22.505375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352729, 0.433895, -0.829046,
		0.935559, -0.146840, 0.321196,
		0.017628, -0.888917, -0.457729,
		27.362400, 43.883808, 22.368055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723341, 44.674572, 22.200335>,  <27.350060, 44.506050, 22.688467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723341, 44.674572, 22.200335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634083, 44.306595, 22.071390>,  <27.580528, 44.085808, 21.994024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634083, 44.306595, 22.071390>,  <27.723341, 44.674572, 22.200335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634083, 44.306595, 22.071390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321336, 0.242794, -0.915311,
		0.920298, -0.307836, 0.241431,
		-0.223148, -0.919939, -0.322361,
		27.567139, 44.030613, 21.974682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315418, 44.423294, 21.923243>,  <27.723341, 44.674572, 22.200335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315418, 44.423294, 21.923243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011703, 44.220505, 21.760042>,  <27.829475, 44.098831, 21.662121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011703, 44.220505, 21.760042>,  <28.315418, 44.423294, 21.923243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011703, 44.220505, 21.760042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328088, 0.243230, -0.912796,
		0.562000, -0.826934, -0.018350,
		-0.759285, -0.506971, -0.408002,
		27.783918, 44.068413, 21.637642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624121, 44.174461, 21.331238>,  <28.315418, 44.423294, 21.923243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624121, 44.174461, 21.331238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230356, 44.123482, 21.282759>,  <27.994097, 44.092896, 21.253672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230356, 44.123482, 21.282759>,  <28.624121, 44.174461, 21.331238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230356, 44.123482, 21.282759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097113, 0.180628, -0.978745,
		0.146633, -0.975259, -0.165436,
		-0.984412, -0.127451, -0.121196,
		27.935032, 44.085247, 21.246399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215029, 43.758835, 21.184227>,  <28.624121, 44.174461, 21.331238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215029, 43.758835, 21.184227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362364, 43.434532, 21.002239>,  <29.450764, 43.239948, 20.893047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362364, 43.434532, 21.002239>,  <29.215029, 43.758835, 21.184227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362364, 43.434532, 21.002239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127002, -0.440906, 0.888522,
		-0.920977, -0.385057, -0.059433,
		0.368336, -0.810760, -0.454968,
		29.472864, 43.191303, 20.865749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843872, 43.197800, 21.502447>,  <29.215029, 43.758835, 21.184227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843872, 43.197800, 21.502447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186069, 43.059902, 21.347898>,  <29.391388, 42.977165, 21.255169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186069, 43.059902, 21.347898>,  <28.843872, 43.197800, 21.502447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186069, 43.059902, 21.347898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218270, -0.436546, 0.872803,
		-0.469563, -0.831010, -0.298215,
		0.855493, -0.344745, -0.386371,
		29.442719, 42.956478, 21.231987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860525, 42.528076, 21.645531>,  <28.843872, 43.197800, 21.502447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860525, 42.528076, 21.645531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.254158, 42.549896, 21.577875>,  <29.490337, 42.562988, 21.537281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.254158, 42.549896, 21.577875>,  <28.860525, 42.528076, 21.645531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254158, 42.549896, 21.577875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163880, -0.646756, 0.744883,
		-0.068755, -0.760744, -0.645400,
		0.984081, 0.054554, -0.169139,
		29.549383, 42.566261, 21.527134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076887, 41.857506, 21.476955>,  <28.860525, 42.528076, 21.645531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076887, 41.857506, 21.476955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384354, 42.071499, 21.617210>,  <29.568834, 42.199894, 21.701363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384354, 42.071499, 21.617210>,  <29.076887, 41.857506, 21.476955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384354, 42.071499, 21.617210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162834, -0.693768, 0.701549,
		0.618575, -0.482163, -0.620390,
		0.768668, 0.534981, 0.350635,
		29.614954, 42.231995, 21.722401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674416, 41.373585, 21.375986>,  <29.076887, 41.857506, 21.476955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674416, 41.373585, 21.375986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794327, 41.654148, 21.634647>,  <29.866274, 41.822487, 21.789845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794327, 41.654148, 21.634647>,  <29.674416, 41.373585, 21.375986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794327, 41.654148, 21.634647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309296, -0.712670, 0.629633,
		0.902480, 0.011258, -0.430584,
		0.299776, 0.701409, 0.646652,
		29.884260, 41.864571, 21.828644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292866, 41.115658, 21.639938>,  <29.674416, 41.373585, 21.375986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292866, 41.115658, 21.639938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124485, 41.371517, 21.897202>,  <30.023457, 41.525032, 22.051559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124485, 41.371517, 21.897202>,  <30.292866, 41.115658, 21.639938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124485, 41.371517, 21.897202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169396, -0.641131, 0.748502,
		0.891124, 0.424034, 0.161533,
		-0.420954, 0.639646, 0.643157,
		29.998199, 41.563412, 22.090149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751528, 41.032650, 22.259619>,  <30.292866, 41.115658, 21.639938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751528, 41.032650, 22.259619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.398691, 41.172352, 22.386070>,  <30.186989, 41.256172, 22.461941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.398691, 41.172352, 22.386070>,  <30.751528, 41.032650, 22.259619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398691, 41.172352, 22.386070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078214, -0.553174, 0.829386,
		0.464541, 0.756319, 0.460633,
		-0.882091, 0.349257, 0.316126,
		30.134064, 41.277130, 22.480907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283703, 41.488403, 21.947094>,  <30.751528, 41.032650, 22.259619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283703, 41.488403, 21.947094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.654613, 41.581017, 22.064772>,  <31.877159, 41.636585, 22.135378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.654613, 41.581017, 22.064772>,  <31.283703, 41.488403, 21.947094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654613, 41.581017, 22.064772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195815, 0.369814, -0.908237,
		-0.319083, 0.899795, 0.297582,
		0.927277, 0.231532, 0.294195,
		31.932796, 41.650475, 22.153030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432041, 42.164703, 21.675022>,  <31.283703, 41.488403, 21.947094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432041, 42.164703, 21.675022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796667, 42.011467, 21.734747>,  <32.015442, 41.919525, 21.770582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796667, 42.011467, 21.734747>,  <31.432041, 42.164703, 21.675022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796667, 42.011467, 21.734747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329909, 0.464765, -0.821678,
		0.245381, 0.798271, 0.550047,
		0.911564, -0.383089, 0.149312,
		32.070137, 41.896542, 21.779541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010048, 42.705387, 21.813185>,  <31.432041, 42.164703, 21.675022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010048, 42.705387, 21.813185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.144787, 42.362419, 21.657557>,  <32.225628, 42.156639, 21.564180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.144787, 42.362419, 21.657557>,  <32.010048, 42.705387, 21.813185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144787, 42.362419, 21.657557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377114, 0.501483, -0.778653,
		0.862741, 0.115560, 0.492265,
		0.336843, -0.857415, -0.389070,
		32.245838, 42.105194, 21.540836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779377, 42.901917, 21.699608>,  <32.010048, 42.705387, 21.813185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779377, 42.901917, 21.699608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.726315, 42.583954, 21.462786>,  <32.694477, 42.393177, 21.320692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.726315, 42.583954, 21.462786>,  <32.779377, 42.901917, 21.699608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726315, 42.583954, 21.462786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306468, 0.535165, -0.787195,
		0.942591, -0.285875, 0.172619,
		-0.132660, -0.794905, -0.592053,
		32.686516, 42.345482, 21.285170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395985, 42.861298, 21.231730>,  <32.779377, 42.901917, 21.699608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395985, 42.861298, 21.231730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.087589, 42.665443, 21.068840>,  <32.902550, 42.547932, 20.971106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.087589, 42.665443, 21.068840>,  <33.395985, 42.861298, 21.231730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087589, 42.665443, 21.068840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022764, 0.617841, -0.785973,
		0.636438, -0.615249, -0.465205,
		-0.770992, -0.489633, -0.407224,
		32.856293, 42.518555, 20.946672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674149, 42.760544, 20.509426>,  <33.395985, 42.861298, 21.231730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674149, 42.760544, 20.509426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.278896, 42.699181, 20.506157>,  <33.041744, 42.662365, 20.504194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.278896, 42.699181, 20.506157>,  <33.674149, 42.760544, 20.509426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278896, 42.699181, 20.506157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052904, 0.389768, -0.919392,
		0.144225, -0.908046, -0.393257,
		-0.988130, -0.153404, -0.008175,
		32.982456, 42.653160, 20.503704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544945, 42.472412, 19.869577>,  <33.674149, 42.760544, 20.509426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544945, 42.472412, 19.869577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.172028, 42.600018, 19.937769>,  <32.948277, 42.676579, 19.978683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.172028, 42.600018, 19.937769>,  <33.544945, 42.472412, 19.869577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172028, 42.600018, 19.937769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022774, 0.522156, -0.852546,
		-0.360986, -0.790940, -0.494067,
		-0.932293, 0.319009, 0.170478,
		32.892338, 42.695721, 19.988913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389050, 42.495419, 19.224514>,  <33.544945, 42.472412, 19.869577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389050, 42.495419, 19.224514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.117710, 42.713142, 19.421925>,  <32.954906, 42.843777, 19.540371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.117710, 42.713142, 19.421925>,  <33.389050, 42.495419, 19.224514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117710, 42.713142, 19.421925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159390, 0.546688, -0.822026,
		-0.717243, -0.636283, -0.284088,
		-0.678349, 0.544312, 0.493525,
		32.914204, 42.876434, 19.569983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837543, 42.648777, 18.713005>,  <33.389050, 42.495419, 19.224514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837543, 42.648777, 18.713005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.810062, 42.920555, 19.005207>,  <32.793575, 43.083622, 19.180529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.810062, 42.920555, 19.005207>,  <32.837543, 42.648777, 18.713005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810062, 42.920555, 19.005207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080070, 0.726116, -0.682894,
		-0.994419, -0.105407, 0.004518,
		-0.068701, 0.679444, 0.730504,
		32.789452, 43.124390, 19.224358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.291878, 36.430691, 34.142731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.451807, 36.795002, 34.183952>,  <31.547764, 37.013588, 34.208687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.451807, 36.795002, 34.183952>,  <31.291878, 36.430691, 34.142731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451807, 36.795002, 34.183952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049301, 0.090903, -0.994639,
		-0.915265, 0.402761, -0.008557,
		0.399824, 0.910780, 0.103057,
		31.571754, 37.068237, 34.214870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050816, 36.773293, 33.574593>,  <31.291878, 36.430691, 34.142731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050816, 36.773293, 33.574593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327091, 37.046249, 33.670326>,  <31.492857, 37.210026, 33.727768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327091, 37.046249, 33.670326>,  <31.050816, 36.773293, 33.574593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327091, 37.046249, 33.670326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053988, 0.281384, -0.958075,
		-0.721133, 0.674654, 0.157507,
		0.690689, 0.682397, 0.239338,
		31.534298, 37.250969, 33.742126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929827, 37.236950, 33.103107>,  <31.050816, 36.773293, 33.574593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929827, 37.236950, 33.103107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306324, 37.319519, 33.210030>,  <31.532223, 37.369061, 33.274181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306324, 37.319519, 33.210030>,  <30.929827, 37.236950, 33.103107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306324, 37.319519, 33.210030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221372, 0.220655, -0.949898,
		-0.255065, 0.953258, 0.161993,
		0.941242, 0.206425, 0.267306,
		31.588697, 37.381447, 33.290222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140043, 37.927193, 32.793423>,  <30.929827, 37.236950, 33.103107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140043, 37.927193, 32.793423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.486671, 37.738140, 32.857510>,  <31.694649, 37.624706, 32.895962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.486671, 37.738140, 32.857510>,  <31.140043, 37.927193, 32.793423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486671, 37.738140, 32.857510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291232, 0.218229, -0.931429,
		0.405262, 0.853811, 0.326758,
		0.866572, -0.472635, 0.160217,
		31.746643, 37.596348, 32.905575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596697, 38.367294, 32.543976>,  <31.140043, 37.927193, 32.793423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596697, 38.367294, 32.543976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759796, 38.002388, 32.528378>,  <31.857656, 37.783443, 32.519020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759796, 38.002388, 32.528378>,  <31.596697, 38.367294, 32.543976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759796, 38.002388, 32.528378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345394, 0.193627, -0.918266,
		0.845248, 0.360953, 0.394041,
		0.407748, -0.912262, -0.038992,
		31.882120, 37.728710, 32.516682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196156, 38.489571, 32.140495>,  <31.596697, 38.367294, 32.543976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196156, 38.489571, 32.140495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145863, 38.092747, 32.141479>,  <32.115688, 37.854652, 32.142071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145863, 38.092747, 32.141479>,  <32.196156, 38.489571, 32.140495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145863, 38.092747, 32.141479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333931, -0.044657, -0.941539,
		0.934175, -0.117556, 0.336895,
		-0.125728, -0.992062, 0.002462,
		32.108143, 37.795128, 32.142220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870281, 38.110611, 31.886562>,  <32.196156, 38.489571, 32.140495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870281, 38.110611, 31.886562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564110, 37.863361, 31.814959>,  <32.380405, 37.715012, 31.771997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564110, 37.863361, 31.814959>,  <32.870281, 38.110611, 31.886562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564110, 37.863361, 31.814959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330534, -0.138961, -0.933508,
		0.552148, -0.773701, 0.310675,
		-0.765428, -0.618124, -0.179007,
		32.334480, 37.677925, 31.761257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144863, 37.620121, 31.511459>,  <32.870281, 38.110611, 31.886562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144863, 37.620121, 31.511459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757629, 37.549828, 31.439983>,  <32.525288, 37.507652, 31.397097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757629, 37.549828, 31.439983>,  <33.144863, 37.620121, 31.511459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757629, 37.549828, 31.439983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226063, -0.304457, -0.925311,
		0.108203, -0.936175, 0.334467,
		-0.968084, -0.175732, -0.178691,
		32.467205, 37.497108, 31.386375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884315, 36.905060, 31.291739>,  <33.144863, 37.620121, 31.511459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884315, 36.905060, 31.291739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.579308, 37.130638, 31.164913>,  <32.396301, 37.265984, 31.088818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.579308, 37.130638, 31.164913>,  <32.884315, 36.905060, 31.291739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579308, 37.130638, 31.164913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136917, -0.338312, -0.931020,
		-0.632312, -0.753332, 0.180755,
		-0.762519, 0.563947, -0.317063,
		32.350552, 37.299824, 31.069794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557404, 36.510136, 30.779074>,  <32.884315, 36.905060, 31.291739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557404, 36.510136, 30.779074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400986, 36.871387, 30.708151>,  <32.307137, 37.088139, 30.665598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400986, 36.871387, 30.708151>,  <32.557404, 36.510136, 30.779074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400986, 36.871387, 30.708151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036877, -0.177118, -0.983499,
		-0.919634, -0.391128, 0.035956,
		-0.391043, 0.903132, -0.177307,
		32.283672, 37.142326, 30.654959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067467, 36.370152, 30.227777>,  <32.557404, 36.510136, 30.779074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067467, 36.370152, 30.227777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152519, 36.760845, 30.216568>,  <32.203548, 36.995262, 30.209843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152519, 36.760845, 30.216568>,  <32.067467, 36.370152, 30.227777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152519, 36.760845, 30.216568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016045, -0.032165, -0.999354,
		-0.977002, 0.212040, -0.022511,
		0.212627, 0.976731, -0.028023,
		32.216309, 37.053864, 30.208160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637060, 36.618324, 29.700953>,  <32.067467, 36.370152, 30.227777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637060, 36.618324, 29.700953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858648, 36.948257, 29.746159>,  <31.991602, 37.146217, 29.773283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858648, 36.948257, 29.746159>,  <31.637060, 36.618324, 29.700953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858648, 36.948257, 29.746159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120774, 0.213932, -0.969354,
		-0.823729, 0.523345, 0.218130,
		0.553971, 0.824829, 0.113016,
		32.024841, 37.195705, 29.780064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895931, 36.699863, 29.958277>,  <31.637060, 36.618324, 29.700953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895931, 36.699863, 29.958277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.613939, 36.465397, 29.798571>,  <30.444744, 36.324718, 29.702747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.613939, 36.465397, 29.798571>,  <30.895931, 36.699863, 29.958277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613939, 36.465397, 29.798571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100183, -0.475010, 0.874259,
		-0.702114, 0.656337, 0.276150,
		-0.704982, -0.586164, -0.399265,
		30.402445, 36.289547, 29.678791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738037, 36.379448, 30.517067>,  <30.895931, 36.699863, 29.958277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738037, 36.379448, 30.517067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534296, 36.164268, 30.248390>,  <30.412052, 36.035160, 30.087183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534296, 36.164268, 30.248390>,  <30.738037, 36.379448, 30.517067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534296, 36.164268, 30.248390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326940, -0.601043, 0.729286,
		-0.796034, 0.591067, 0.130267,
		-0.509353, -0.537947, -0.671694,
		30.381491, 36.002884, 30.046883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994884, 36.406998, 30.763588>,  <30.738037, 36.379448, 30.517067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994884, 36.406998, 30.763588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.087860, 36.076633, 30.558126>,  <30.143644, 35.878414, 30.434849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.087860, 36.076633, 30.558126>,  <29.994884, 36.406998, 30.763588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087860, 36.076633, 30.558126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235118, -0.560171, 0.794309,
		-0.943765, -0.063858, -0.324392,
		0.232438, -0.825912, -0.513655,
		30.157591, 35.828861, 30.404030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345718, 35.977844, 30.777321>,  <29.994884, 36.406998, 30.763588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345718, 35.977844, 30.777321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.662283, 35.745872, 30.700014>,  <29.852222, 35.606689, 30.653629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.662283, 35.745872, 30.700014>,  <29.345718, 35.977844, 30.777321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662283, 35.745872, 30.700014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350770, -0.689772, 0.633384,
		-0.500627, -0.433475, -0.749314,
		0.791412, -0.579926, -0.193268,
		29.899706, 35.571896, 30.642033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032930, 35.370956, 30.841032>,  <29.345718, 35.977844, 30.777321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032930, 35.370956, 30.841032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.420584, 35.273651, 30.857035>,  <29.653175, 35.215267, 30.866636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.420584, 35.273651, 30.857035>,  <29.032930, 35.370956, 30.841032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420584, 35.273651, 30.857035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170204, -0.542816, 0.822424,
		-0.178348, -0.803849, -0.567466,
		0.969135, -0.243262, 0.040008,
		29.711325, 35.200672, 30.869038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099447, 34.623970, 30.890442>,  <29.032930, 35.370956, 30.841032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099447, 34.623970, 30.890442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.449392, 34.753464, 31.034559>,  <29.659359, 34.831158, 31.121029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.449392, 34.753464, 31.034559>,  <29.099447, 34.623970, 30.890442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449392, 34.753464, 31.034559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132389, -0.555699, 0.820775,
		0.465926, -0.765765, -0.443302,
		0.874863, 0.323733, 0.360293,
		29.711851, 34.850582, 31.142647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423084, 34.038574, 31.303787>,  <29.099447, 34.623970, 30.890442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423084, 34.038574, 31.303787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.608278, 34.358215, 31.457190>,  <29.719395, 34.549999, 31.549231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.608278, 34.358215, 31.457190>,  <29.423084, 34.038574, 31.303787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608278, 34.358215, 31.457190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147710, -0.357064, 0.922327,
		0.873972, -0.483671, -0.047279,
		0.462985, 0.799104, 0.383507,
		29.747173, 34.597946, 31.572241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938673, 33.793800, 31.722496>,  <29.423084, 34.038574, 31.303787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938673, 33.793800, 31.722496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.861080, 34.162098, 31.857912>,  <29.814526, 34.383076, 31.939161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.861080, 34.162098, 31.857912>,  <29.938673, 33.793800, 31.722496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861080, 34.162098, 31.857912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119059, -0.364642, 0.923505,
		0.973754, 0.138836, 0.180356,
		-0.193981, 0.920740, 0.338541,
		29.802885, 34.438320, 31.959475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342318, 33.887230, 32.327129>,  <29.938673, 33.793800, 31.722496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342318, 33.887230, 32.327129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.062077, 34.164745, 32.393845>,  <29.893932, 34.331253, 32.433872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.062077, 34.164745, 32.393845>,  <30.342318, 33.887230, 32.327129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062077, 34.164745, 32.393845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104857, -0.331307, 0.937678,
		0.705804, 0.639453, 0.304863,
		-0.700604, 0.693784, 0.166787,
		29.851894, 34.372879, 32.443882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510359, 34.153393, 32.863499>,  <30.342318, 33.887230, 32.327129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510359, 34.153393, 32.863499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.121620, 34.246422, 32.848415>,  <29.888376, 34.302238, 32.839367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.121620, 34.246422, 32.848415>,  <30.510359, 34.153393, 32.863499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121620, 34.246422, 32.848415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113949, -0.323886, 0.939209,
		0.206217, 0.917066, 0.341269,
		-0.971849, 0.232568, -0.037708,
		29.830065, 34.316193, 32.837105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421143, 34.394348, 33.541473>,  <30.510359, 34.153393, 32.863499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421143, 34.394348, 33.541473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.053186, 34.341209, 33.393879>,  <29.832413, 34.309326, 33.305321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.053186, 34.341209, 33.393879>,  <30.421143, 34.394348, 33.541473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053186, 34.341209, 33.393879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282006, -0.429765, 0.857773,
		-0.272529, 0.893115, 0.357874,
		-0.919892, -0.132845, -0.368988,
		29.777220, 34.301357, 33.283184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907391, 34.908199, 33.860546>,  <30.421143, 34.394348, 33.541473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907391, 34.908199, 33.860546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.746588, 34.564297, 33.734550>,  <29.650106, 34.357956, 33.658955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.746588, 34.564297, 33.734550>,  <29.907391, 34.908199, 33.860546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746588, 34.564297, 33.734550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226158, -0.240118, 0.944032,
		-0.887268, 0.450743, -0.097911,
		-0.402006, -0.859752, -0.314988,
		29.625986, 34.306370, 33.640053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387897, 34.830940, 34.300415>,  <29.907391, 34.908199, 33.860546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387897, 34.830940, 34.300415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.432732, 34.460423, 34.156521>,  <29.459631, 34.238110, 34.070183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.432732, 34.460423, 34.156521>,  <29.387897, 34.830940, 34.300415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432732, 34.460423, 34.156521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144215, -0.373347, 0.916414,
		-0.983178, -0.050836, -0.175433,
		0.112084, -0.926298, -0.359735,
		29.466356, 34.182533, 34.048599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724695, 34.410809, 34.378605>,  <29.387897, 34.830940, 34.300415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724695, 34.410809, 34.378605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.076420, 34.221767, 34.402119>,  <29.287455, 34.108341, 34.416225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.076420, 34.221767, 34.402119>,  <28.724695, 34.410809, 34.378605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076420, 34.221767, 34.402119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207485, -0.269053, 0.940511,
		-0.428674, -0.839199, -0.334640,
		0.879312, -0.472605, 0.058785,
		29.340214, 34.079987, 34.419754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437874, 35.134693, 34.329796>,  <28.724695, 34.410809, 34.378605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437874, 35.134693, 34.329796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.073889, 34.968891, 34.334713>,  <27.855497, 34.869408, 34.337666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.073889, 34.968891, 34.334713>,  <28.437874, 35.134693, 34.329796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073889, 34.968891, 34.334713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414665, 0.909177, -0.038086,
		0.004608, -0.039755, -0.999199,
		-0.909963, -0.414508, 0.012295,
		27.800900, 34.844540, 34.338402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136477, 35.315960, 33.686665>,  <28.437874, 35.134693, 34.329796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136477, 35.315960, 33.686665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.863741, 35.234592, 33.967724>,  <27.700100, 35.185772, 34.136360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.863741, 35.234592, 33.967724>,  <28.136477, 35.315960, 33.686665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863741, 35.234592, 33.967724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298630, 0.954273, -0.013521,
		-0.667771, -0.219052, -0.711406,
		-0.681837, -0.203418, 0.702651,
		27.659189, 35.173569, 34.178520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678629, 35.737507, 33.178719>,  <28.136477, 35.315960, 33.686665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678629, 35.737507, 33.178719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.813429, 35.951122, 33.488876>,  <27.894310, 36.079292, 33.674969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.813429, 35.951122, 33.488876>,  <27.678629, 35.737507, 33.178719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813429, 35.951122, 33.488876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424352, 0.821326, -0.381247,
		-0.840450, -0.200557, 0.503409,
		0.337001, 0.534042, 0.775390,
		27.914530, 36.111336, 33.721493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131002, 36.174889, 33.328796>,  <27.678629, 35.737507, 33.178719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131002, 36.174889, 33.328796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.449421, 36.351372, 33.494514>,  <27.640472, 36.457260, 33.593945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.449421, 36.351372, 33.494514>,  <27.131002, 36.174889, 33.328796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449421, 36.351372, 33.494514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350334, 0.894097, -0.279027,
		-0.493531, 0.076976, 0.866315,
		0.796049, 0.441208, 0.414297,
		27.688236, 36.483734, 33.618805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784025, 36.620453, 33.691280>,  <27.131002, 36.174889, 33.328796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784025, 36.620453, 33.691280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.165716, 36.733418, 33.651901>,  <27.394732, 36.801197, 33.628273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.165716, 36.733418, 33.651901>,  <26.784025, 36.620453, 33.691280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165716, 36.733418, 33.651901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292460, 0.812230, -0.504727,
		-0.062584, 0.510415, 0.857648,
		0.954227, 0.282416, -0.098443,
		27.451984, 36.818142, 33.622368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868292, 37.413151, 33.907063>,  <26.784025, 36.620453, 33.691280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868292, 37.413151, 33.907063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.135656, 37.292374, 33.635162>,  <27.296074, 37.219910, 33.472023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.135656, 37.292374, 33.635162>,  <26.868292, 37.413151, 33.907063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135656, 37.292374, 33.635162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389351, 0.636647, -0.665648,
		0.633747, 0.709586, 0.307980,
		0.668409, -0.301940, -0.679751,
		27.336180, 37.201794, 33.431236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876293, 37.987930, 33.554756>,  <26.868292, 37.413151, 33.907063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876293, 37.987930, 33.554756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.111843, 37.752403, 33.333298>,  <27.253174, 37.611088, 33.200424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.111843, 37.752403, 33.333298>,  <26.876293, 37.987930, 33.554756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111843, 37.752403, 33.333298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182949, 0.570124, -0.800930,
		0.787244, 0.572938, 0.228011,
		0.588877, -0.588813, -0.553645,
		27.288506, 37.575760, 33.167206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201469, 38.501171, 33.132763>,  <26.876293, 37.987930, 33.554756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201469, 38.501171, 33.132763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.249805, 38.158089, 32.932869>,  <27.278807, 37.952240, 32.812931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.249805, 38.158089, 32.932869>,  <27.201469, 38.501171, 33.132763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249805, 38.158089, 32.932869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117694, 0.487498, -0.865155,
		0.985670, 0.163360, -0.042038,
		0.120838, -0.857706, -0.499739,
		27.286057, 37.900776, 32.782948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762133, 38.585125, 32.593418>,  <27.201469, 38.501171, 33.132763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762133, 38.585125, 32.593418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.507784, 38.296074, 32.484989>,  <27.355175, 38.122643, 32.419933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.507784, 38.296074, 32.484989>,  <27.762133, 38.585125, 32.593418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507784, 38.296074, 32.484989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134695, 0.449736, -0.882947,
		0.759950, -0.524930, -0.383308,
		-0.635872, -0.722625, -0.271071,
		27.317022, 38.079285, 32.403667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840517, 38.585278, 31.879555>,  <27.762133, 38.585125, 32.593418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840517, 38.585278, 31.879555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.504709, 38.373894, 31.930042>,  <27.303225, 38.247063, 31.960335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.504709, 38.373894, 31.930042>,  <27.840517, 38.585278, 31.879555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504709, 38.373894, 31.930042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299939, 0.257073, -0.918668,
		0.453037, -0.809097, -0.374325,
		-0.839520, -0.528465, 0.126217,
		27.252853, 38.215355, 31.967907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650255, 38.258991, 31.279125>,  <27.840517, 38.585278, 31.879555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650255, 38.258991, 31.279125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.299728, 38.265553, 31.471706>,  <27.089413, 38.269489, 31.587255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.299728, 38.265553, 31.471706>,  <27.650255, 38.258991, 31.279125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299728, 38.265553, 31.471706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410760, 0.496707, -0.764565,
		-0.251679, -0.867764, -0.428537,
		-0.876318, 0.016399, 0.481453,
		27.036833, 38.270473, 31.616142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149790, 38.225777, 30.788857>,  <27.650255, 38.258991, 31.279125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149790, 38.225777, 30.788857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.923136, 38.378338, 31.081009>,  <26.787144, 38.469875, 31.256300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.923136, 38.378338, 31.081009>,  <27.149790, 38.225777, 30.788857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923136, 38.378338, 31.081009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499074, 0.546454, -0.672542,
		-0.655628, -0.745601, -0.119294,
		-0.566637, 0.381401, 0.730381,
		26.753145, 38.492760, 31.300123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509518, 38.185059, 30.543806>,  <27.149790, 38.225777, 30.788857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509518, 38.185059, 30.543806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.527470, 38.468315, 30.825663>,  <26.538240, 38.638271, 30.994776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.527470, 38.468315, 30.825663>,  <26.509518, 38.185059, 30.543806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527470, 38.468315, 30.825663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354157, 0.670817, -0.651596,
		-0.934109, -0.220310, 0.280899,
		0.044878, 0.708144, 0.704640,
		26.540934, 38.680759, 31.037054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863958, 38.550056, 30.527420>,  <26.509518, 38.185059, 30.543806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863958, 38.550056, 30.527420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.141554, 38.792412, 30.682997>,  <26.308111, 38.937824, 30.776342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.141554, 38.792412, 30.682997>,  <25.863958, 38.550056, 30.527420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141554, 38.792412, 30.682997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315287, 0.741400, -0.592384,
		-0.647281, 0.288481, 0.705554,
		0.693990, 0.605891, 0.388940,
		26.349751, 38.974178, 30.799679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532200, 39.253956, 30.715248>,  <25.863958, 38.550056, 30.527420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532200, 39.253956, 30.715248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.926050, 39.302696, 30.665188>,  <26.162361, 39.331940, 30.635151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.926050, 39.302696, 30.665188>,  <25.532200, 39.253956, 30.715248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926050, 39.302696, 30.665188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172209, 0.797149, -0.578703,
		0.029249, 0.591359, 0.805878,
		0.984626, 0.121853, -0.125153,
		26.221437, 39.339252, 30.627642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524450, 39.907436, 30.368557>,  <25.532200, 39.253956, 30.715248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524450, 39.907436, 30.368557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.910164, 39.805786, 30.338676>,  <26.141592, 39.744797, 30.320749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.910164, 39.805786, 30.338676>,  <25.524450, 39.907436, 30.368557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910164, 39.805786, 30.338676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125990, 0.688123, -0.714572,
		0.232992, 0.679638, 0.695562,
		0.964283, -0.254124, -0.074699,
		26.199450, 39.729549, 30.316267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853626, 40.534359, 30.318647>,  <25.524450, 39.907436, 30.368557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853626, 40.534359, 30.318647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.105639, 40.267361, 30.159899>,  <26.256845, 40.107162, 30.064650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.105639, 40.267361, 30.159899>,  <25.853626, 40.534359, 30.318647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105639, 40.267361, 30.159899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196569, 0.631492, -0.750052,
		0.751279, 0.394545, 0.529070,
		0.630032, -0.667497, -0.396871,
		26.294649, 40.067112, 30.040838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533520, 40.875065, 30.364422>,  <25.853626, 40.534359, 30.318647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533520, 40.875065, 30.364422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.532810, 40.587502, 30.086382>,  <26.532385, 40.414963, 29.919558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.532810, 40.587502, 30.086382>,  <26.533520, 40.875065, 30.364422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532810, 40.587502, 30.086382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227857, 0.676525, -0.700282,
		0.973693, -0.159626, 0.162609,
		-0.001774, -0.718911, -0.695100,
		26.532278, 40.371830, 29.877851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177940, 40.906395, 29.967552>,  <26.533520, 40.875065, 30.364422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177940, 40.906395, 29.967552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.990623, 40.679935, 29.696207>,  <26.878233, 40.544060, 29.533400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.990623, 40.679935, 29.696207>,  <27.177940, 40.906395, 29.967552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990623, 40.679935, 29.696207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304902, 0.617045, -0.725459,
		0.829299, -0.546561, -0.116337,
		-0.468292, -0.566151, -0.678362,
		26.850136, 40.510090, 29.492699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729094, 40.727448, 29.404060>,  <27.177940, 40.906395, 29.967552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729094, 40.727448, 29.404060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.363161, 40.665997, 29.254673>,  <27.143600, 40.629128, 29.165041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.363161, 40.665997, 29.254673>,  <27.729094, 40.727448, 29.404060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363161, 40.665997, 29.254673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271484, 0.450677, -0.850404,
		0.298957, -0.879369, -0.370587,
		-0.914833, -0.153626, -0.373468,
		27.088711, 40.619907, 29.142633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948299, 40.675182, 28.735922>,  <27.729094, 40.727448, 29.404060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948299, 40.675182, 28.735922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.549290, 40.690445, 28.712305>,  <27.309883, 40.699604, 28.698135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.549290, 40.690445, 28.712305>,  <27.948299, 40.675182, 28.735922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549290, 40.690445, 28.712305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069211, 0.385845, -0.919964,
		-0.012325, -0.921774, -0.387531,
		-0.997526, 0.038160, -0.059041,
		27.250032, 40.701893, 28.694593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674259, 40.213387, 28.205053>,  <27.948299, 40.675182, 28.735922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674259, 40.213387, 28.205053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.433784, 40.525303, 28.274904>,  <27.289499, 40.712456, 28.316814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.433784, 40.525303, 28.274904>,  <27.674259, 40.213387, 28.205053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433784, 40.525303, 28.274904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227240, 0.376329, -0.898186,
		-0.766118, -0.500295, -0.403445,
		-0.601186, 0.779796, 0.174626,
		27.253429, 40.759243, 28.327291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447611, 40.437630, 27.576704>,  <27.674259, 40.213387, 28.205053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447611, 40.437630, 27.576704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.310602, 40.751163, 27.783888>,  <27.228397, 40.939285, 27.908197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.310602, 40.751163, 27.783888>,  <27.447611, 40.437630, 27.576704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310602, 40.751163, 27.783888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183139, 0.596436, -0.781489,
		-0.921488, -0.172818, -0.347842,
		-0.342521, 0.783836, 0.517959,
		27.207846, 40.986313, 27.939276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829906, 40.652229, 27.175676>,  <27.447611, 40.437630, 27.576704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829906, 40.652229, 27.175676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.930664, 40.968304, 27.399162>,  <26.991119, 41.157948, 27.533253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.930664, 40.968304, 27.399162>,  <26.829906, 40.652229, 27.175676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930664, 40.968304, 27.399162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048496, 0.566297, -0.822773,
		-0.966538, 0.234349, 0.104327,
		0.251896, 0.790182, 0.558713,
		27.006233, 41.205357, 27.566776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340071, 41.203823, 26.931124>,  <26.829906, 40.652229, 27.175676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340071, 41.203823, 26.931124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.606735, 41.424755, 27.131323>,  <26.766733, 41.557312, 27.251442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.606735, 41.424755, 27.131323>,  <26.340071, 41.203823, 26.931124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606735, 41.424755, 27.131323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000518, 0.671140, -0.741330,
		-0.745361, 0.494476, 0.447137,
		0.666661, 0.552327, 0.500498,
		26.806734, 41.590454, 27.281471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022902, 41.953041, 26.962439>,  <26.340071, 41.203823, 26.931124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022902, 41.953041, 26.962439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.419956, 41.988575, 26.995384>,  <26.658188, 42.009895, 27.015152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.419956, 41.988575, 26.995384>,  <26.022902, 41.953041, 26.962439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419956, 41.988575, 26.995384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023836, 0.809817, -0.586199,
		-0.118777, 0.579918, 0.805970,
		0.992635, 0.088838, 0.082365,
		26.717747, 42.015224, 27.020094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135225, 42.652695, 26.988720>,  <26.022902, 41.953041, 26.962439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135225, 42.652695, 26.988720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.507217, 42.532085, 26.904610>,  <26.730413, 42.459721, 26.854143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.507217, 42.532085, 26.904610>,  <26.135225, 42.652695, 26.988720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507217, 42.532085, 26.904610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066809, 0.701126, -0.709900,
		0.361484, 0.646146, 0.672179,
		0.929982, -0.301525, -0.210278,
		26.786211, 42.441628, 26.841526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581673, 43.264637, 27.064154>,  <26.135225, 42.652695, 26.988720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581673, 43.264637, 27.064154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.767937, 43.009808, 26.818455>,  <26.879694, 42.856911, 26.671036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.767937, 43.009808, 26.818455>,  <26.581673, 43.264637, 27.064154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767937, 43.009808, 26.818455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297518, 0.766389, -0.569325,
		0.833454, 0.082362, 0.546416,
		0.465658, -0.637075, -0.614246,
		26.907635, 42.818684, 26.634182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207163, 43.602051, 27.301197>,  <26.581673, 43.264637, 27.064154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207163, 43.602051, 27.301197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.396875, 43.933754, 27.419445>,  <27.510704, 44.132774, 27.490395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.396875, 43.933754, 27.419445>,  <27.207163, 43.602051, 27.301197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396875, 43.933754, 27.419445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125199, -0.395910, 0.909714,
		0.871425, -0.394450, -0.291596,
		0.474282, 0.829255, 0.295621,
		27.539160, 44.182529, 27.508131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781038, 43.305553, 27.632725>,  <27.207163, 43.602051, 27.301197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781038, 43.305553, 27.632725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.733528, 43.667519, 27.796198>,  <27.705023, 43.884697, 27.894281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.733528, 43.667519, 27.796198>,  <27.781038, 43.305553, 27.632725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733528, 43.667519, 27.796198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318561, -0.355109, 0.878872,
		0.940431, 0.234579, -0.246093,
		-0.118775, 0.904914, 0.408684,
		27.697895, 43.938992, 27.918802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360659, 43.227066, 28.010323>,  <27.781038, 43.305553, 27.632725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360659, 43.227066, 28.010323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.142111, 43.524567, 28.164368>,  <28.010983, 43.703068, 28.256794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.142111, 43.524567, 28.164368>,  <28.360659, 43.227066, 28.010323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142111, 43.524567, 28.164368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264168, -0.283310, 0.921928,
		0.794794, 0.605446, -0.041684,
		-0.546367, 0.743755, 0.385113,
		27.978201, 43.747692, 28.279902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801922, 43.563408, 28.543547>,  <28.360659, 43.227066, 28.010323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801922, 43.563408, 28.543547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.415518, 43.628471, 28.623911>,  <28.183676, 43.667511, 28.672129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.415518, 43.628471, 28.623911>,  <28.801922, 43.563408, 28.543547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415518, 43.628471, 28.623911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183991, -0.113283, 0.976378,
		0.181575, 0.980158, 0.079505,
		-0.966011, 0.162658, 0.200909,
		28.125715, 43.677269, 28.684183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798473, 44.009922, 29.114389>,  <28.801922, 43.563408, 28.543547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798473, 44.009922, 29.114389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.443237, 43.827412, 29.136675>,  <28.230095, 43.717903, 29.150045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.443237, 43.827412, 29.136675>,  <28.798473, 44.009922, 29.114389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443237, 43.827412, 29.136675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184493, -0.242806, 0.952370,
		-0.421021, 0.856068, 0.299814,
		-0.888090, -0.456281, 0.055712,
		28.176811, 43.690529, 29.153389>
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
