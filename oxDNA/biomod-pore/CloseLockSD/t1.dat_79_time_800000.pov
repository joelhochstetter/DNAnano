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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.712800, 14.949338, 15.325032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.486262, 15.276301, 15.282897>,  <4.350339, 15.472480, 15.257616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.486262, 15.276301, 15.282897>,  <4.712800, 14.949338, 15.325032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.486262, 15.276301, 15.282897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806731, 0.575968, 0.132084,
		0.168638, -0.010173, -0.985626,
		-0.566345, 0.817409, -0.105337,
		4.316359, 15.521524, 15.251296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.974684, 15.296118, 14.760784>,  <4.712800, 14.949338, 15.325032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.974684, 15.296118, 14.760784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.818456, 15.532318, 15.043277>,  <4.724719, 15.674038, 15.212772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.818456, 15.532318, 15.043277>,  <4.974684, 15.296118, 14.760784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.818456, 15.532318, 15.043277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899805, 0.406913, 0.157392,
		-0.194435, 0.696944, -0.690264,
		-0.390571, 0.590501, 0.706232,
		4.701284, 15.709469, 15.255146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.954733, 16.066261, 14.560282>,  <4.974684, 15.296118, 14.760784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.954733, 16.066261, 14.560282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.954402, 16.015619, 14.957063>,  <4.954203, 15.985233, 15.195131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.954402, 16.015619, 14.957063>,  <4.954733, 16.066261, 14.560282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.954402, 16.015619, 14.957063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925455, 0.375710, 0.048726,
		-0.378856, 0.918048, 0.116858,
		-0.000828, -0.126607, 0.991953,
		4.954154, 15.977637, 15.254648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.088824, 16.664227, 14.941674>,  <4.954733, 16.066261, 14.560282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.088824, 16.664227, 14.941674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.265799, 16.363192, 15.136760>,  <5.371984, 16.182571, 15.253811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.265799, 16.363192, 15.136760>,  <5.088824, 16.664227, 14.941674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.265799, 16.363192, 15.136760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880296, 0.468310, -0.075931,
		-0.171256, 0.462927, 0.869695,
		0.442437, -0.752585, 0.487713,
		5.398530, 16.137417, 15.283073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.426592, 16.844397, 15.602271>,  <5.088824, 16.664227, 14.941674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.426592, 16.844397, 15.602271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.604547, 16.544395, 15.406486>,  <5.711319, 16.364395, 15.289014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.604547, 16.544395, 15.406486>,  <5.426592, 16.844397, 15.602271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.604547, 16.544395, 15.406486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782931, 0.591067, -0.194061,
		0.434852, -0.296882, 0.850156,
		0.444886, -0.750001, -0.489465,
		5.738012, 16.319395, 15.259646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.104464, 16.891241, 15.883344>,  <5.426592, 16.844397, 15.602271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.104464, 16.891241, 15.883344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.125874, 16.684988, 15.541289>,  <6.138720, 16.561235, 15.336057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.125874, 16.684988, 15.541289>,  <6.104464, 16.891241, 15.883344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.125874, 16.684988, 15.541289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802198, 0.532174, -0.270681,
		0.594653, -0.671500, 0.442125,
		0.053525, -0.515634, -0.855136,
		6.141931, 16.530298, 15.284749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.778246, 16.708992, 15.741634>,  <6.104464, 16.891241, 15.883344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.778246, 16.708992, 15.741634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.615318, 16.672371, 15.378160>,  <6.517561, 16.650398, 15.160076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.615318, 16.672371, 15.378160>,  <6.778246, 16.708992, 15.741634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.615318, 16.672371, 15.378160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774281, 0.493032, -0.396748,
		0.484334, -0.865181, -0.129933,
		-0.407320, -0.091554, -0.908685,
		6.493122, 16.644905, 15.105555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.299109, 16.956795, 15.337648>,  <6.778246, 16.708992, 15.741634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.299109, 16.956795, 15.337648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.032455, 16.899824, 15.044988>,  <6.872463, 16.865643, 14.869391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.032455, 16.899824, 15.044988>,  <7.299109, 16.956795, 15.337648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.032455, 16.899824, 15.044988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517419, 0.618135, -0.591766,
		0.536541, -0.773062, -0.338377,
		-0.666634, -0.142424, -0.731652,
		6.832465, 16.857098, 14.825492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.681537, 16.697420, 14.788326>,  <7.299109, 16.956795, 15.337648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.681537, 16.697420, 14.788326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.356354, 16.867990, 14.629702>,  <7.161244, 16.970333, 14.534527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.356354, 16.867990, 14.629702>,  <7.681537, 16.697420, 14.788326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.356354, 16.867990, 14.629702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579825, 0.529764, -0.618993,
		-0.053871, -0.733151, -0.677929,
		-0.812958, 0.426426, -0.396561,
		7.112466, 16.995918, 14.510734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.726426, 16.632565, 14.124089>,  <7.681537, 16.697420, 14.788326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.726426, 16.632565, 14.124089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.456359, 16.925774, 14.157145>,  <7.294320, 17.101700, 14.176978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.456359, 16.925774, 14.157145>,  <7.726426, 16.632565, 14.124089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.456359, 16.925774, 14.157145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609379, 0.617368, -0.497509,
		-0.415704, -0.285543, -0.863514,
		-0.675165, 0.733023, 0.082638,
		7.253810, 17.145681, 14.181936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.643316, 16.875750, 13.514758>,  <7.726426, 16.632565, 14.124089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.643316, 16.875750, 13.514758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.515004, 17.180487, 13.739861>,  <7.438016, 17.363329, 13.874924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.515004, 17.180487, 13.739861>,  <7.643316, 16.875750, 13.514758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.515004, 17.180487, 13.739861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563781, 0.631018, -0.532885,
		-0.761085, 0.146333, -0.631930,
		-0.320781, 0.761841, 0.562759,
		7.418769, 17.409039, 13.908689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.304918, 17.343664, 13.115169>,  <7.643316, 16.875750, 13.514758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.304918, 17.343664, 13.115169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.435894, 17.548590, 13.432739>,  <7.514480, 17.671545, 13.623281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.435894, 17.548590, 13.432739>,  <7.304918, 17.343664, 13.115169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.435894, 17.548590, 13.432739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632256, 0.505617, -0.587031,
		-0.702165, 0.694182, -0.158353,
		0.327440, 0.512312, 0.793927,
		7.534126, 17.702284, 13.670918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.382215, 18.008036, 12.934711>,  <7.304918, 17.343664, 13.115169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.382215, 18.008036, 12.934711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.625207, 17.993233, 13.252101>,  <7.771002, 17.984350, 13.442534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.625207, 17.993233, 13.252101>,  <7.382215, 18.008036, 12.934711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.625207, 17.993233, 13.252101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590816, 0.688743, -0.420201,
		-0.530948, 0.724060, 0.440263,
		0.607479, -0.037009, 0.793473,
		7.807451, 17.982130, 13.490143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.560886, 18.778667, 13.058602>,  <7.382215, 18.008036, 12.934711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.560886, 18.778667, 13.058602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.850278, 18.562086, 13.229906>,  <8.023913, 18.432138, 13.332688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.850278, 18.562086, 13.229906>,  <7.560886, 18.778667, 13.058602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.850278, 18.562086, 13.229906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685414, 0.637401, -0.352033,
		-0.082365, 0.548225, 0.832266,
		0.723481, -0.541451, 0.428260,
		8.067323, 18.399651, 13.358384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.017900, 19.226118, 13.342110>,  <7.560886, 18.778667, 13.058602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.017900, 19.226118, 13.342110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.234664, 18.889977, 13.346845>,  <8.364722, 18.688292, 13.349686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.234664, 18.889977, 13.346845>,  <8.017900, 19.226118, 13.342110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.234664, 18.889977, 13.346845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737400, 0.468669, -0.486405,
		0.403204, 0.272317, 0.873653,
		0.541911, -0.840352, 0.011838,
		8.397237, 18.637871, 13.350396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.714147, 19.346783, 13.592587>,  <8.017900, 19.226118, 13.342110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.714147, 19.346783, 13.592587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.825326, 18.997807, 13.431792>,  <8.892034, 18.788422, 13.335315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.825326, 18.997807, 13.431792>,  <8.714147, 19.346783, 13.592587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.825326, 18.997807, 13.431792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755031, 0.457132, -0.470062,
		0.593862, -0.172860, 0.785778,
		0.277949, -0.872439, -0.401988,
		8.908710, 18.736074, 13.311195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.511683, 19.291296, 13.553394>,  <8.714147, 19.346783, 13.592587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.511683, 19.291296, 13.553394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.357931, 19.050463, 13.273466>,  <9.265680, 18.905964, 13.105509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.357931, 19.050463, 13.273466>,  <9.511683, 19.291296, 13.553394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.357931, 19.050463, 13.273466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532313, 0.474801, -0.700862,
		0.754253, -0.641920, 0.137993,
		-0.384378, -0.602083, -0.699821,
		9.242618, 18.869839, 13.063519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.113331, 19.022684, 13.231857>,  <9.511683, 19.291296, 13.553394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.113331, 19.022684, 13.231857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834910, 18.961329, 12.951290>,  <9.667858, 18.924515, 12.782950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.834910, 18.961329, 12.951290>,  <10.113331, 19.022684, 13.231857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.834910, 18.961329, 12.951290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638269, 0.315217, -0.702318,
		0.328826, -0.936541, -0.121504,
		-0.696050, -0.153389, -0.701417,
		9.626096, 18.915312, 12.740865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.447327, 18.667372, 12.707000>,  <10.113331, 19.022684, 13.231857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.447327, 18.667372, 12.707000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.125374, 18.824596, 12.529160>,  <9.932202, 18.918932, 12.422457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.125374, 18.824596, 12.529160>,  <10.447327, 18.667372, 12.707000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.125374, 18.824596, 12.529160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542290, 0.182902, -0.820042,
		-0.241009, -0.901138, -0.360368,
		-0.804883, 0.393061, -0.444597,
		9.883909, 18.942514, 12.395782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.478024, 18.443901, 11.962196>,  <10.447327, 18.667372, 12.707000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.478024, 18.443901, 11.962196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.227039, 18.755274, 11.954900>,  <10.076448, 18.942099, 11.950522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.227039, 18.755274, 11.954900>,  <10.478024, 18.443901, 11.962196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.227039, 18.755274, 11.954900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314950, 0.232305, -0.920240,
		-0.712108, -0.583161, -0.390930,
		-0.627463, 0.778433, -0.018241,
		10.038800, 18.988804, 11.949428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.008983, 18.327768, 11.423780>,  <10.478024, 18.443901, 11.962196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.008983, 18.327768, 11.423780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.966463, 18.716068, 11.509890>,  <9.940951, 18.949049, 11.561555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.966463, 18.716068, 11.509890>,  <10.008983, 18.327768, 11.423780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.966463, 18.716068, 11.509890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168391, 0.230947, -0.958284,
		-0.979972, -0.065614, -0.188015,
		-0.106299, 0.970751, 0.215273,
		9.934573, 19.007294, 11.574471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.511029, 18.629751, 10.922422>,  <10.008983, 18.327768, 11.423780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.511029, 18.629751, 10.922422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.761542, 18.897097, 11.082952>,  <9.911850, 19.057505, 11.179269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.761542, 18.897097, 11.082952>,  <9.511029, 18.629751, 10.922422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.761542, 18.897097, 11.082952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122922, 0.423686, -0.897430,
		-0.769844, 0.611377, 0.183190,
		0.626283, 0.668363, 0.401324,
		9.949428, 19.097605, 11.203348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.345227, 19.304283, 10.593496>,  <9.511029, 18.629751, 10.922422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.345227, 19.304283, 10.593496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.723444, 19.345659, 10.716947>,  <9.950374, 19.370485, 10.791017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.723444, 19.345659, 10.716947>,  <9.345227, 19.304283, 10.593496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.723444, 19.345659, 10.716947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218726, 0.500274, -0.837785,
		-0.241058, 0.859666, 0.450406,
		0.945542, 0.103439, 0.308627,
		10.007107, 19.376692, 10.809535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.478172, 19.908680, 10.391790>,  <9.345227, 19.304283, 10.593496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.478172, 19.908680, 10.391790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.848079, 19.770842, 10.456367>,  <10.070023, 19.688139, 10.495112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.848079, 19.770842, 10.456367>,  <9.478172, 19.908680, 10.391790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.848079, 19.770842, 10.456367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330899, 0.518682, -0.788337,
		0.187920, 0.782447, 0.593686,
		0.924766, -0.344594, 0.161441,
		10.125508, 19.667463, 10.504799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.900102, 20.452076, 10.167675>,  <9.478172, 19.908680, 10.391790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.900102, 20.452076, 10.167675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.135853, 20.129309, 10.183239>,  <10.277304, 19.935648, 10.192577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.135853, 20.129309, 10.183239>,  <9.900102, 20.452076, 10.167675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.135853, 20.129309, 10.183239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492009, 0.320332, -0.809515,
		0.640749, 0.496254, 0.585809,
		0.589378, -0.806919, 0.038909,
		10.312666, 19.887234, 10.194912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.664965, 20.682184, 10.253272>,  <9.900102, 20.452076, 10.167675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.664965, 20.682184, 10.253272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.609100, 20.341700, 10.050911>,  <10.575582, 20.137409, 9.929494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.609100, 20.341700, 10.050911>,  <10.664965, 20.682184, 10.253272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.609100, 20.341700, 10.050911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559946, 0.353486, -0.749339,
		0.816674, -0.387930, 0.427263,
		-0.139659, -0.851209, -0.505903,
		10.567203, 20.086336, 9.899140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.210698, 20.686764, 9.917471>,  <10.664965, 20.682184, 10.253272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.210698, 20.686764, 9.917471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.027803, 20.384167, 9.730429>,  <10.918067, 20.202608, 9.618203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.027803, 20.384167, 9.730429>,  <11.210698, 20.686764, 9.917471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.027803, 20.384167, 9.730429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488204, 0.225978, -0.842965,
		0.743365, -0.613722, 0.265996,
		-0.457237, -0.756491, -0.467606,
		10.890633, 20.157219, 9.590147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.355757, 19.975424, 9.720822>,  <11.210698, 20.686764, 9.917471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.355757, 19.975424, 9.720822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.685221, 19.800524, 9.576381>,  <11.882899, 19.695583, 9.489716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.685221, 19.800524, 9.576381>,  <11.355757, 19.975424, 9.720822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.685221, 19.800524, 9.576381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431503, 0.896416, -0.101213,
		0.367956, -0.072453, 0.927016,
		0.823659, -0.437252, -0.361105,
		11.932319, 19.669348, 9.468049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.850932, 19.362642, 9.881763>,  <11.355757, 19.975424, 9.720822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.850932, 19.362642, 9.881763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223680, 19.490026, 9.812244>,  <12.447328, 19.566458, 9.770534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223680, 19.490026, 9.812244>,  <11.850932, 19.362642, 9.881763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.223680, 19.490026, 9.812244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362743, -0.826317, 0.430833,
		-0.006405, -0.464522, -0.885538,
		0.931868, 0.318463, -0.173795,
		12.503240, 19.585566, 9.760106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.485739, 18.946283, 9.593451>,  <11.850932, 19.362642, 9.881763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.485739, 18.946283, 9.593451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596190, 19.182720, 9.896597>,  <12.662461, 19.324583, 10.078485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596190, 19.182720, 9.896597>,  <12.485739, 18.946283, 9.593451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.596190, 19.182720, 9.896597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533850, -0.750026, 0.390468,
		0.799222, 0.296768, -0.522659,
		0.276130, 0.591093, 0.757867,
		12.679029, 19.360048, 10.123957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.231504, 19.000294, 9.747100>,  <12.485739, 18.946283, 9.593451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.231504, 19.000294, 9.747100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008631, 19.039793, 10.076899>,  <12.874907, 19.063492, 10.274778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008631, 19.039793, 10.076899>,  <13.231504, 19.000294, 9.747100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008631, 19.039793, 10.076899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525534, -0.726826, 0.442197,
		0.642932, 0.679686, 0.353081,
		-0.557183, 0.098746, 0.824498,
		12.841475, 19.069416, 10.324247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.740618, 19.094330, 10.258636>,  <13.231504, 19.000294, 9.747100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.740618, 19.094330, 10.258636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.389582, 18.945963, 10.380133>,  <13.178960, 18.856943, 10.453031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.389582, 18.945963, 10.380133>,  <13.740618, 19.094330, 10.258636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.389582, 18.945963, 10.380133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479387, -0.685669, 0.547764,
		0.005092, 0.626322, 0.779548,
		-0.877589, -0.370916, 0.303741,
		13.126305, 18.834688, 10.471255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.557424, 19.052952, 10.928169>,  <13.740618, 19.094330, 10.258636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.557424, 19.052952, 10.928169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.709613, 19.248043, 11.242458>,  <13.800926, 19.365097, 11.431032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.709613, 19.248043, 11.242458>,  <13.557424, 19.052952, 10.928169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.709613, 19.248043, 11.242458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110663, -0.819506, 0.562285,
		0.918147, -0.300884, -0.257826,
		0.380473, 0.487729, 0.785723,
		13.823755, 19.394361, 11.478175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912494, 18.491684, 11.218662>,  <13.557424, 19.052952, 10.928169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912494, 18.491684, 11.218662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.854019, 18.747982, 11.520145>,  <13.818934, 18.901760, 11.701035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.854019, 18.747982, 11.520145>,  <13.912494, 18.491684, 11.218662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854019, 18.747982, 11.520145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189010, -0.765948, 0.614490,
		0.971033, -0.052628, 0.233078,
		-0.146186, 0.640744, 0.753709,
		13.810163, 18.940205, 11.746258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184874, 18.119305, 11.882715>,  <13.912494, 18.491684, 11.218662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.184874, 18.119305, 11.882715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897636, 18.391079, 11.942990>,  <13.725294, 18.554144, 11.979156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897636, 18.391079, 11.942990>,  <14.184874, 18.119305, 11.882715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.897636, 18.391079, 11.942990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528741, -0.673412, 0.516671,
		0.452520, 0.291344, 0.842819,
		-0.718094, 0.679437, 0.150687,
		13.682208, 18.594910, 11.988196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.109306, 18.235853, 12.615601>,  <14.184874, 18.119305, 11.882715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.109306, 18.235853, 12.615601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759224, 18.305880, 12.435217>,  <13.549174, 18.347897, 12.326986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759224, 18.305880, 12.435217>,  <14.109306, 18.235853, 12.615601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.759224, 18.305880, 12.435217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419773, -0.738161, 0.528118,
		-0.240424, 0.651513, 0.719532,
		-0.875207, 0.175068, -0.450959,
		13.496662, 18.358400, 12.299929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587099, 18.286531, 13.223652>,  <14.109306, 18.235853, 12.615601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587099, 18.286531, 13.223652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418721, 18.173908, 12.878739>,  <13.317695, 18.106335, 12.671792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418721, 18.173908, 12.878739>,  <13.587099, 18.286531, 13.223652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418721, 18.173908, 12.878739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498453, -0.722420, 0.479223,
		-0.757858, 0.631533, 0.163756,
		-0.420946, -0.281558, -0.862282,
		13.292438, 18.089441, 12.620055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.009309, 18.031439, 13.352018>,  <13.587099, 18.286531, 13.223652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.009309, 18.031439, 13.352018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.021079, 17.874083, 12.984458>,  <13.028141, 17.779669, 12.763922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.021079, 17.874083, 12.984458>,  <13.009309, 18.031439, 13.352018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.021079, 17.874083, 12.984458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610692, -0.734851, 0.295040,
		-0.791321, 0.552484, -0.261863,
		0.029425, -0.393389, -0.918901,
		13.029906, 17.756065, 12.708788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.339426, 17.960917, 13.240522>,  <13.009309, 18.031439, 13.352018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.339426, 17.960917, 13.240522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518043, 17.717167, 12.978450>,  <12.625213, 17.570917, 12.821206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518043, 17.717167, 12.978450>,  <12.339426, 17.960917, 13.240522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.518043, 17.717167, 12.978450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697872, -0.695460, 0.171201,
		-0.559979, 0.380785, -0.735817,
		0.446541, -0.609375, -0.655182,
		12.652004, 17.534355, 12.781895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.845490, 17.783991, 12.721099>,  <12.339426, 17.960917, 13.240522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.845490, 17.783991, 12.721099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.124578, 17.499584, 12.686132>,  <12.292031, 17.328939, 12.665153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.124578, 17.499584, 12.686132>,  <11.845490, 17.783991, 12.721099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.124578, 17.499584, 12.686132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709730, -0.702662, 0.050490,
		-0.097322, 0.026813, -0.994892,
		0.697719, -0.711018, -0.087415,
		12.333894, 17.286280, 12.659908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.523445, 17.355268, 12.450262>,  <11.845490, 17.783991, 12.721099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.523445, 17.355268, 12.450262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.826870, 17.113113, 12.546670>,  <12.008924, 16.967821, 12.604515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.826870, 17.113113, 12.546670>,  <11.523445, 17.355268, 12.450262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.826870, 17.113113, 12.546670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635993, -0.768355, 0.071722,
		0.141769, -0.207693, -0.967866,
		0.758561, -0.605388, 0.241020,
		12.054439, 16.931498, 12.618976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.723473, 16.852110, 11.910954>,  <11.523445, 17.355268, 12.450262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.723473, 16.852110, 11.910954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.810264, 16.722702, 12.279357>,  <11.862338, 16.645058, 12.500399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.810264, 16.722702, 12.279357>,  <11.723473, 16.852110, 11.910954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.810264, 16.722702, 12.279357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668104, -0.737109, -0.101526,
		0.711729, -0.593300, -0.376081,
		0.216978, -0.323520, 0.921008,
		11.875357, 16.625647, 12.555659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.816761, 16.167583, 11.741436>,  <11.723473, 16.852110, 11.910954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.816761, 16.167583, 11.741436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735565, 16.192255, 12.132331>,  <11.686848, 16.207058, 12.366868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735565, 16.192255, 12.132331>,  <11.816761, 16.167583, 11.741436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735565, 16.192255, 12.132331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820597, -0.555234, -0.135409,
		0.534243, -0.829404, 0.163322,
		-0.202990, 0.061680, 0.977236,
		11.674668, 16.210758, 12.425502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.348369, 15.680437, 11.775624>,  <11.816761, 16.167583, 11.741436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.348369, 15.680437, 11.775624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.321672, 15.782738, 12.161399>,  <11.305655, 15.844118, 12.392863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.321672, 15.782738, 12.161399>,  <11.348369, 15.680437, 11.775624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.321672, 15.782738, 12.161399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696853, -0.703734, 0.138396,
		0.714102, -0.662834, 0.225189,
		-0.066740, 0.255753, 0.964436,
		11.301650, 15.859464, 12.450729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232460, 15.024512, 12.109223>,  <11.348369, 15.680437, 11.775624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232460, 15.024512, 12.109223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.098361, 15.311346, 12.353649>,  <11.017901, 15.483446, 12.500304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.098361, 15.311346, 12.353649>,  <11.232460, 15.024512, 12.109223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.098361, 15.311346, 12.353649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840447, -0.520726, 0.149980,
		0.425745, -0.463286, 0.777243,
		-0.335247, 0.717084, 0.611064,
		10.997787, 15.526471, 12.536968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.886039, 14.707664, 12.536943>,  <11.232460, 15.024512, 12.109223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.886039, 14.707664, 12.536943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.739069, 15.075518, 12.592476>,  <10.650887, 15.296229, 12.625795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.739069, 15.075518, 12.592476>,  <10.886039, 14.707664, 12.536943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.739069, 15.075518, 12.592476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886761, -0.391410, 0.245874,
		0.280453, -0.032769, 0.959308,
		-0.367425, 0.919633, 0.138830,
		10.628841, 15.351408, 12.634125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.570863, 14.717858, 13.168795>,  <10.886039, 14.707664, 12.536943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.570863, 14.717858, 13.168795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406987, 15.042644, 13.002483>,  <10.308662, 15.237514, 12.902697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406987, 15.042644, 13.002483>,  <10.570863, 14.717858, 13.168795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.406987, 15.042644, 13.002483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882313, -0.236942, 0.406671,
		0.231687, 0.533454, 0.813479,
		-0.409688, 0.811963, -0.415778,
		10.284081, 15.286233, 12.877750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.270717, 14.992222, 13.695867>,  <10.570863, 14.717858, 13.168795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.270717, 14.992222, 13.695867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.068189, 15.165133, 13.397397>,  <9.946671, 15.268879, 13.218315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.068189, 15.165133, 13.397397>,  <10.270717, 14.992222, 13.695867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.068189, 15.165133, 13.397397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858496, -0.171006, 0.483469,
		0.081393, 0.885377, 0.457692,
		-0.506320, 0.432278, -0.746174,
		9.916292, 15.294816, 13.173545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.718060, 15.263147, 14.045094>,  <10.270717, 14.992222, 13.695867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.718060, 15.263147, 14.045094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.598867, 15.267030, 13.663284>,  <9.527352, 15.269359, 13.434198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.598867, 15.267030, 13.663284>,  <9.718060, 15.263147, 14.045094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.598867, 15.267030, 13.663284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919505, -0.271463, 0.284287,
		-0.256358, 0.962400, 0.089815,
		-0.297979, 0.009706, -0.954523,
		9.509474, 15.269941, 13.376927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.095673, 15.717544, 14.030710>,  <9.718060, 15.263147, 14.045094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.095673, 15.717544, 14.030710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114556, 15.477360, 13.711406>,  <9.125887, 15.333250, 13.519823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114556, 15.477360, 13.711406>,  <9.095673, 15.717544, 14.030710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.114556, 15.477360, 13.711406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935519, -0.306682, 0.175361,
		-0.350109, 0.738510, -0.576218,
		0.047210, -0.600458, -0.798261,
		9.128719, 15.297222, 13.471928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.486820, 15.926869, 13.618827>,  <9.095673, 15.717544, 14.030710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.486820, 15.926869, 13.618827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.588632, 15.556474, 13.507284>,  <8.649718, 15.334236, 13.440359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.588632, 15.556474, 13.507284>,  <8.486820, 15.926869, 13.618827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.588632, 15.556474, 13.507284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965220, -0.261056, -0.014138,
		-0.059705, 0.272756, -0.960229,
		0.254529, -0.925988, -0.278856,
		8.664990, 15.278677, 13.423627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.868342, 15.706670, 13.282461>,  <8.486820, 15.926869, 13.618827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.868342, 15.706670, 13.282461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.071466, 15.364539, 13.323534>,  <8.193341, 15.159261, 13.348178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.071466, 15.364539, 13.323534>,  <7.868342, 15.706670, 13.282461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.071466, 15.364539, 13.323534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860903, -0.508179, 0.024509,
		0.031218, -0.100846, -0.994412,
		0.507811, -0.855327, 0.102683,
		8.223809, 15.107941, 13.354339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.565621, 15.200293, 12.750549>,  <7.868342, 15.706670, 13.282461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.565621, 15.200293, 12.750549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.760157, 15.015893, 13.047455>,  <7.876878, 14.905253, 13.225598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.760157, 15.015893, 13.047455>,  <7.565621, 15.200293, 12.750549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.760157, 15.015893, 13.047455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853436, -0.432819, 0.290369,
		0.187406, -0.774692, -0.603930,
		0.486339, -0.460999, 0.742263,
		7.906059, 14.877593, 13.270134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.405061, 14.523271, 12.537816>,  <7.565621, 15.200293, 12.750549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.405061, 14.523271, 12.537816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.539898, 14.550589, 12.913412>,  <7.620800, 14.566979, 13.138770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.539898, 14.550589, 12.913412>,  <7.405061, 14.523271, 12.537816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.539898, 14.550589, 12.913412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739426, -0.598160, 0.308956,
		0.582767, -0.798461, -0.151136,
		0.337093, 0.068296, 0.938991,
		7.641026, 14.571077, 13.195109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.462260, 13.813357, 12.800545>,  <7.405061, 14.523271, 12.537816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.462260, 13.813357, 12.800545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.435863, 14.074607, 13.102293>,  <7.420024, 14.231357, 13.283342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.435863, 14.074607, 13.102293>,  <7.462260, 13.813357, 12.800545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.435863, 14.074607, 13.102293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738671, -0.540244, 0.403115,
		0.670828, -0.530629, 0.518095,
		-0.065993, 0.653123, 0.754371,
		7.416065, 14.270544, 13.328605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.299060, 13.437708, 13.441106>,  <7.462260, 13.813357, 12.800545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.299060, 13.437708, 13.441106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.195491, 13.805907, 13.558165>,  <7.133349, 14.026827, 13.628400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.195491, 13.805907, 13.558165>,  <7.299060, 13.437708, 13.441106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.195491, 13.805907, 13.558165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831732, -0.366525, 0.416991,
		0.491102, -0.135435, 0.860509,
		-0.258923, 0.920498, 0.292647,
		7.117814, 14.082057, 13.645959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.014880, 13.373731, 14.041320>,  <7.299060, 13.437708, 13.441106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.014880, 13.373731, 14.041320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.865715, 13.719734, 13.907040>,  <6.776216, 13.927337, 13.826471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.865715, 13.719734, 13.907040>,  <7.014880, 13.373731, 14.041320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.865715, 13.719734, 13.907040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868518, -0.198096, 0.454351,
		0.326517, 0.460996, 0.825148,
		-0.372912, 0.865009, -0.335701,
		6.753841, 13.979237, 13.806330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.556438, 13.668987, 14.560843>,  <7.014880, 13.373731, 14.041320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.556438, 13.668987, 14.560843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.448876, 13.838188, 14.214720>,  <6.384338, 13.939709, 14.007046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.448876, 13.838188, 14.214720>,  <6.556438, 13.668987, 14.560843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.448876, 13.838188, 14.214720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962022, -0.161736, 0.219897,
		-0.046935, 0.891578, 0.450429,
		-0.268906, 0.423002, -0.865309,
		6.368204, 13.965089, 13.955127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.304349, 13.827046, 14.838294>,  <6.556438, 13.668987, 14.560843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.304349, 13.827046, 14.838294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.688715, 13.803368, 14.730119>,  <7.919335, 13.789160, 14.665214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.688715, 13.803368, 14.730119>,  <7.304349, 13.827046, 14.838294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.688715, 13.803368, 14.730119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194974, 0.838213, 0.509298,
		0.196535, -0.542121, 0.816994,
		0.960916, -0.059198, -0.270438,
		7.976990, 13.785608, 14.648988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.523067, 14.352682, 15.280642>,  <7.304349, 13.827046, 14.838294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.523067, 14.352682, 15.280642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.844565, 14.223421, 15.080815>,  <8.037464, 14.145864, 14.960919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.844565, 14.223421, 15.080815>,  <7.523067, 14.352682, 15.280642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.844565, 14.223421, 15.080815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557695, 0.701730, 0.443341,
		0.207294, -0.634938, 0.744233,
		0.803745, -0.323153, -0.499566,
		8.085689, 14.126475, 14.930945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.058560, 14.391848, 15.711843>,  <7.523067, 14.352682, 15.280642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.058560, 14.391848, 15.711843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.246504, 14.397740, 15.358796>,  <8.359270, 14.401276, 15.146968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.246504, 14.397740, 15.358796>,  <8.058560, 14.391848, 15.711843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.246504, 14.397740, 15.358796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712030, 0.584673, 0.388806,
		0.521770, -0.811135, 0.264225,
		0.469860, 0.014731, -0.882618,
		8.387462, 14.402160, 15.094010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.753490, 14.424028, 15.952559>,  <8.058560, 14.391848, 15.711843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.753490, 14.424028, 15.952559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.759873, 14.485730, 15.557398>,  <8.763703, 14.522751, 15.320301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.759873, 14.485730, 15.557398>,  <8.753490, 14.424028, 15.952559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.759873, 14.485730, 15.557398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847585, 0.522050, 0.095205,
		0.530420, -0.838850, -0.122413,
		0.015957, 0.154254, -0.987902,
		8.764661, 14.532006, 15.261027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.367778, 14.072458, 15.704284>,  <8.753490, 14.424028, 15.952559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.367778, 14.072458, 15.704284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.237057, 14.374205, 15.476553>,  <9.158624, 14.555252, 15.339914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.237057, 14.374205, 15.476553>,  <9.367778, 14.072458, 15.704284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.237057, 14.374205, 15.476553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919024, 0.394166, -0.005261,
		0.220440, -0.524944, -0.822095,
		-0.326803, 0.754365, -0.569327,
		9.139016, 14.600514, 15.305755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.931399, 14.388520, 15.057709>,  <9.367778, 14.072458, 15.704284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.931399, 14.388520, 15.057709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.677379, 14.625715, 15.255730>,  <9.524966, 14.768032, 15.374542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.677379, 14.625715, 15.255730>,  <9.931399, 14.388520, 15.057709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.677379, 14.625715, 15.255730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770176, 0.436686, 0.464903,
		0.059499, 0.676514, -0.734022,
		-0.635051, 0.592987, 0.495052,
		9.486863, 14.803612, 15.404245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.700451, 14.356434, 15.155419>,  <9.931399, 14.388520, 15.057709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.700451, 14.356434, 15.155419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.981576, 14.124646, 15.320475>,  <11.150251, 13.985574, 15.419508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.981576, 14.124646, 15.320475>,  <10.700451, 14.356434, 15.155419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.981576, 14.124646, 15.320475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279577, 0.308387, 0.909249,
		-0.654134, -0.754395, 0.054732,
		0.702812, -0.579469, 0.412638,
		11.192420, 13.950806, 15.444266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.404618, 13.861085, 15.740652>,  <10.700451, 14.356434, 15.155419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.404618, 13.861085, 15.740652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.782958, 13.977287, 15.798584>,  <11.009962, 14.047009, 15.833344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.782958, 13.977287, 15.798584>,  <10.404618, 13.861085, 15.740652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.782958, 13.977287, 15.798584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245784, 0.349496, 0.904125,
		0.212035, -0.890764, 0.401972,
		0.945850, 0.290505, 0.144830,
		11.066713, 14.064439, 15.842033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.504079, 13.626926, 16.324551>,  <10.404618, 13.861085, 15.740652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.504079, 13.626926, 16.324551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.791914, 13.903095, 16.294857>,  <10.964615, 14.068796, 16.277040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.791914, 13.903095, 16.294857>,  <10.504079, 13.626926, 16.324551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.791914, 13.903095, 16.294857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045276, 0.153327, 0.987138,
		0.692924, -0.706971, 0.141592,
		0.719587, 0.690422, -0.074235,
		11.007791, 14.110222, 16.272587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.078184, 13.473561, 16.724155>,  <10.504079, 13.626926, 16.324551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.078184, 13.473561, 16.724155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.139783, 13.866986, 16.686445>,  <11.176743, 14.103042, 16.663820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.139783, 13.866986, 16.686445>,  <11.078184, 13.473561, 16.724155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.139783, 13.866986, 16.686445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099484, 0.110362, 0.988900,
		0.983050, -0.142910, 0.114844,
		0.153998, 0.983563, -0.094274,
		11.185983, 14.162055, 16.658163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.596169, 13.610571, 17.130554>,  <11.078184, 13.473561, 16.724155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.596169, 13.610571, 17.130554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.456809, 13.979089, 17.061464>,  <11.373193, 14.200199, 17.020010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.456809, 13.979089, 17.061464>,  <11.596169, 13.610571, 17.130554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.456809, 13.979089, 17.061464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121472, 0.227093, 0.966268,
		0.929442, 0.315666, -0.191030,
		-0.348400, 0.921295, -0.172725,
		11.352289, 14.255477, 17.009647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.083458, 14.120579, 17.402405>,  <11.596169, 13.610571, 17.130554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.083458, 14.120579, 17.402405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.730333, 14.307598, 17.384331>,  <11.518458, 14.419809, 17.373487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.730333, 14.307598, 17.384331>,  <12.083458, 14.120579, 17.402405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.730333, 14.307598, 17.384331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070336, 0.226686, 0.971425,
		0.464431, 0.854407, -0.233007,
		-0.882812, 0.467549, -0.045184,
		11.465489, 14.447863, 17.370775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.180397, 14.645268, 17.935940>,  <12.083458, 14.120579, 17.402405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.180397, 14.645268, 17.935940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.786032, 14.634101, 17.869974>,  <11.549413, 14.627400, 17.830395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.786032, 14.634101, 17.869974>,  <12.180397, 14.645268, 17.935940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.786032, 14.634101, 17.869974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167203, 0.190513, 0.967341,
		0.004411, 0.981288, -0.192497,
		-0.985913, -0.027919, -0.164915,
		11.490258, 14.625725, 17.820499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.937572, 15.189356, 18.338495>,  <12.180397, 14.645268, 17.935940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.937572, 15.189356, 18.338495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.625423, 14.946346, 18.279255>,  <11.438134, 14.800541, 18.243710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.625423, 14.946346, 18.279255>,  <11.937572, 15.189356, 18.338495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.625423, 14.946346, 18.279255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256316, 0.094740, 0.961939,
		-0.570368, 0.788632, -0.229650,
		-0.780373, -0.607523, -0.148103,
		11.391312, 14.764090, 18.234823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.441581, 15.482068, 18.767183>,  <11.937572, 15.189356, 18.338495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.441581, 15.482068, 18.767183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.294503, 15.119497, 18.684052>,  <11.206257, 14.901955, 18.634172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.294503, 15.119497, 18.684052>,  <11.441581, 15.482068, 18.767183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.294503, 15.119497, 18.684052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531438, 0.021415, 0.846826,
		-0.763135, 0.421822, -0.489584,
		-0.367694, -0.906426, -0.207830,
		11.184195, 14.847569, 18.621702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.863791, 15.497326, 19.100492>,  <11.441581, 15.482068, 18.767183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.863791, 15.497326, 19.100492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.908288, 15.108877, 19.016066>,  <10.934987, 14.875808, 18.965410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.908288, 15.108877, 19.016066>,  <10.863791, 15.497326, 19.100492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.908288, 15.108877, 19.016066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588933, -0.235494, 0.773111,
		-0.800489, 0.038299, -0.598123,
		0.111244, -0.971121, -0.211066,
		10.941661, 14.817541, 18.952745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.157872, 15.137646, 19.108877>,  <10.863791, 15.497326, 19.100492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.157872, 15.137646, 19.108877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.450910, 14.878095, 19.191113>,  <10.626732, 14.722364, 19.240454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.450910, 14.878095, 19.191113>,  <10.157872, 15.137646, 19.108877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.450910, 14.878095, 19.191113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458877, -0.247738, 0.853263,
		-0.502732, -0.719433, -0.479246,
		0.732593, -0.648877, 0.205585,
		10.670688, 14.683432, 19.252789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.796579, 14.563102, 19.457453>,  <10.157872, 15.137646, 19.108877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.796579, 14.563102, 19.457453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.173283, 14.472889, 19.557234>,  <10.399304, 14.418761, 19.617104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.173283, 14.472889, 19.557234>,  <9.796579, 14.563102, 19.457453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.173283, 14.472889, 19.557234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296621, -0.207569, 0.932165,
		-0.158446, -0.951869, -0.262375,
		0.941759, -0.225523, 0.249456,
		10.455811, 14.405230, 19.632071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.787211, 13.907921, 19.815561>,  <9.796579, 14.563102, 19.457453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.787211, 13.907921, 19.815561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.112959, 14.117337, 19.915728>,  <10.308408, 14.242987, 19.975828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.112959, 14.117337, 19.915728>,  <9.787211, 13.907921, 19.815561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.112959, 14.117337, 19.915728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226718, -0.110207, 0.967705,
		0.534231, -0.844843, 0.028947,
		0.814369, 0.523541, 0.250417,
		10.357269, 14.274400, 19.990852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.407907, 13.302216, 19.829060>,  <9.787211, 13.907921, 19.815561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.407907, 13.302216, 19.829060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564435, 13.596564, 20.050098>,  <10.658352, 13.773173, 20.182720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564435, 13.596564, 20.050098>,  <10.407907, 13.302216, 19.829060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.564435, 13.596564, 20.050098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113792, -0.557179, 0.822559,
		0.913192, -0.384765, -0.134300,
		0.391320, 0.735872, 0.552595,
		10.681831, 13.817326, 20.215878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.740629, 13.042256, 20.311003>,  <10.407907, 13.302216, 19.829060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.740629, 13.042256, 20.311003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.711510, 13.407266, 20.472002>,  <10.694038, 13.626271, 20.568602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.711510, 13.407266, 20.472002>,  <10.740629, 13.042256, 20.311003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.711510, 13.407266, 20.472002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226703, -0.408143, 0.884322,
		0.971240, -0.026870, 0.236584,
		-0.072799, 0.912523, 0.402496,
		10.689671, 13.681023, 20.592751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.072154, 13.002644, 20.936056>,  <10.740629, 13.042256, 20.311003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.072154, 13.002644, 20.936056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.822007, 13.314525, 20.948578>,  <10.671919, 13.501654, 20.956091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.822007, 13.314525, 20.948578>,  <11.072154, 13.002644, 20.936056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.822007, 13.314525, 20.948578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184328, -0.186589, 0.964991,
		0.758247, 0.597703, 0.260408,
		-0.625367, 0.779702, 0.031307,
		10.634397, 13.548435, 20.957970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.278960, 13.313571, 21.477598>,  <11.072154, 13.002644, 20.936056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.278960, 13.313571, 21.477598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.900855, 13.422158, 21.405174>,  <10.673992, 13.487310, 21.361719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.900855, 13.422158, 21.405174>,  <11.278960, 13.313571, 21.477598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.900855, 13.422158, 21.405174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207684, -0.072533, 0.975503,
		0.251686, 0.959710, 0.124943,
		-0.945262, 0.271469, -0.181061,
		10.617276, 13.503599, 21.350857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.123780, 13.810989, 22.018661>,  <11.278960, 13.313571, 21.477598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.123780, 13.810989, 22.018661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772358, 13.674268, 21.885208>,  <10.561504, 13.592235, 21.805136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772358, 13.674268, 21.885208>,  <11.123780, 13.810989, 22.018661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.772358, 13.674268, 21.885208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330096, -0.070356, 0.941322,
		-0.345221, 0.937134, -0.051017,
		-0.878555, -0.341804, -0.333632,
		10.508791, 13.571727, 21.785118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.640137, 14.056518, 22.477259>,  <11.123780, 13.810989, 22.018661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.640137, 14.056518, 22.477259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.435137, 13.775422, 22.279877>,  <10.312137, 13.606765, 22.161448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.435137, 13.775422, 22.279877>,  <10.640137, 14.056518, 22.477259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.435137, 13.775422, 22.279877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624708, -0.089134, 0.775754,
		-0.589137, 0.705841, -0.393326,
		-0.512501, -0.702740, -0.493457,
		10.281386, 13.564600, 22.131840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.937446, 14.296398, 22.576981>,  <10.640137, 14.056518, 22.477259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.937446, 14.296398, 22.576981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.967460, 13.905273, 22.498745>,  <9.985468, 13.670599, 22.451803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.967460, 13.905273, 22.498745>,  <9.937446, 14.296398, 22.576981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.967460, 13.905273, 22.498745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599509, -0.200971, 0.774725,
		-0.796843, 0.059126, -0.601287,
		0.075034, -0.977811, -0.195589,
		9.989970, 13.611930, 22.440069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.299904, 14.078712, 22.481501>,  <9.937446, 14.296398, 22.576981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.299904, 14.078712, 22.481501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.473572, 13.742283, 22.610556>,  <9.577773, 13.540425, 22.687988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.473572, 13.742283, 22.610556>,  <9.299904, 14.078712, 22.481501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.473572, 13.742283, 22.610556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585760, 0.008512, 0.810440,
		-0.684384, -0.540857, -0.488970,
		0.434171, -0.841072, 0.322637,
		9.603823, 13.489962, 22.707346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.723613, 13.598022, 22.767897>,  <9.299904, 14.078712, 22.481501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.723613, 13.598022, 22.767897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.070462, 13.448950, 22.900082>,  <9.278572, 13.359507, 22.979393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.070462, 13.448950, 22.900082>,  <8.723613, 13.598022, 22.767897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.070462, 13.448950, 22.900082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419755, -0.189583, 0.887617,
		-0.268147, -0.908387, -0.320827,
		0.867123, -0.372681, 0.330464,
		9.330600, 13.337147, 22.999222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.601613, 12.872803, 22.949394>,  <8.723613, 13.598022, 22.767897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.601613, 12.872803, 22.949394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.900174, 13.033848, 23.161352>,  <9.079310, 13.130475, 23.288527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.900174, 13.033848, 23.161352>,  <8.601613, 12.872803, 22.949394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.900174, 13.033848, 23.161352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500632, -0.184914, 0.845680,
		0.438466, -0.896499, 0.063540,
		0.746402, 0.402612, 0.529894,
		9.124095, 13.154632, 23.320320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.591743, 12.506710, 23.606043>,  <8.601613, 12.872803, 22.949394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.591743, 12.506710, 23.606043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.844359, 12.805429, 23.689421>,  <8.995929, 12.984661, 23.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.844359, 12.805429, 23.689421>,  <8.591743, 12.506710, 23.606043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.844359, 12.805429, 23.689421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157946, -0.139290, 0.977574,
		0.759085, -0.650300, 0.029986,
		0.631540, 0.746798, 0.208446,
		9.033821, 13.029469, 23.751955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.039197, 12.317567, 24.133251>,  <8.591743, 12.506710, 23.606043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.039197, 12.317567, 24.133251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.082627, 12.714942, 24.147621>,  <9.108685, 12.953367, 24.156242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.082627, 12.714942, 24.147621>,  <9.039197, 12.317567, 24.133251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.082627, 12.714942, 24.147621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045513, -0.031132, 0.998478,
		0.993046, -0.110045, 0.041835,
		0.108575, 0.993439, 0.035925,
		9.115200, 13.012974, 24.158398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.490620, 12.340319, 24.626575>,  <9.039197, 12.317567, 24.133251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.490620, 12.340319, 24.626575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.343036, 12.711576, 24.606907>,  <9.254485, 12.934331, 24.595106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.343036, 12.711576, 24.606907>,  <9.490620, 12.340319, 24.626575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.343036, 12.711576, 24.606907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074019, 0.023393, 0.996983,
		0.926493, 0.371486, 0.060069,
		-0.368959, 0.928144, -0.049170,
		9.232347, 12.990020, 24.592155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.940878, 12.739640, 24.995132>,  <9.490620, 12.340319, 24.626575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.940878, 12.739640, 24.995132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.600264, 12.949348, 24.997217>,  <9.395895, 13.075173, 24.998468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.600264, 12.949348, 24.997217>,  <9.940878, 12.739640, 24.995132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.600264, 12.949348, 24.997217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096086, 0.146276, 0.984566,
		0.515416, 0.838895, -0.174934,
		-0.851536, 0.524270, 0.005213,
		9.344803, 13.106629, 24.998781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.985704, 13.216026, 25.591997>,  <9.940878, 12.739640, 24.995132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.985704, 13.216026, 25.591997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.595323, 13.234009, 25.506683>,  <9.361094, 13.244799, 25.455494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.595323, 13.234009, 25.506683>,  <9.985704, 13.216026, 25.591997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.595323, 13.234009, 25.506683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198856, 0.217085, 0.955683,
		0.089265, 0.975117, -0.202925,
		-0.975955, 0.044957, -0.213286,
		9.302536, 13.247496, 25.442698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.698336, 13.817753, 25.903057>,  <9.985704, 13.216026, 25.591997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.698336, 13.817753, 25.903057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.375048, 13.589866, 25.843452>,  <9.181075, 13.453134, 25.807690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.375048, 13.589866, 25.843452>,  <9.698336, 13.817753, 25.903057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.375048, 13.589866, 25.843452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237047, 0.083116, 0.967936,
		-0.539064, 0.817627, -0.202226,
		-0.808219, -0.569717, -0.149012,
		9.132582, 13.418951, 25.798748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.241323, 14.124331, 26.267159>,  <9.698336, 13.817753, 25.903057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.241323, 14.124331, 26.267159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118321, 13.745982, 26.225660>,  <9.044520, 13.518972, 26.200762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118321, 13.745982, 26.225660>,  <9.241323, 14.124331, 26.267159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.118321, 13.745982, 26.225660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256859, -0.022466, 0.966188,
		-0.916223, 0.323755, -0.236048,
		-0.307506, -0.945874, -0.103743,
		9.026070, 13.462220, 26.194538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.635181, 13.971088, 26.691965>,  <9.241323, 14.124331, 26.267159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.635181, 13.971088, 26.691965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.833201, 13.626007, 26.650652>,  <8.952013, 13.418958, 26.625864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.833201, 13.626007, 26.650652>,  <8.635181, 13.971088, 26.691965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.833201, 13.626007, 26.650652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007096, -0.114855, 0.993357,
		-0.868836, -0.492494, -0.050737,
		0.495050, -0.862704, -0.103285,
		8.981716, 13.367196, 26.619667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.357943, 13.610667, 27.284021>,  <8.635181, 13.971088, 26.691965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.357943, 13.610667, 27.284021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.647126, 13.359297, 27.169193>,  <8.820637, 13.208474, 27.100296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.647126, 13.359297, 27.169193>,  <8.357943, 13.610667, 27.284021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.647126, 13.359297, 27.169193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020133, -0.396168, 0.917957,
		-0.690597, -0.669425, -0.273761,
		0.722959, -0.628427, -0.287070,
		8.864014, 13.170769, 27.083073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.291087, 12.907817, 27.534678>,  <8.357943, 13.610667, 27.284021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.291087, 12.907817, 27.534678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.676954, 12.871240, 27.435843>,  <8.908475, 12.849293, 27.376541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.676954, 12.871240, 27.435843>,  <8.291087, 12.907817, 27.534678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.676954, 12.871240, 27.435843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151017, -0.576568, 0.802972,
		-0.215890, -0.811916, -0.542387,
		0.964669, -0.091444, -0.247088,
		8.966354, 12.843806, 27.361715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.572855, 12.278981, 27.757624>,  <8.291087, 12.907817, 27.534678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.572855, 12.278981, 27.757624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.933374, 12.449103, 27.724701>,  <9.149687, 12.551177, 27.704947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.933374, 12.449103, 27.724701>,  <8.572855, 12.278981, 27.757624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.933374, 12.449103, 27.724701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356450, -0.620142, 0.698833,
		0.246176, -0.659196, -0.710534,
		0.901300, 0.425305, -0.082306,
		9.203764, 12.576694, 27.700008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.047680, 11.835844, 27.598219>,  <8.572855, 12.278981, 27.757624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.047680, 11.835844, 27.598219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.294589, 12.111635, 27.749794>,  <9.442735, 12.277110, 27.840740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.294589, 12.111635, 27.749794>,  <9.047680, 11.835844, 27.598219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.294589, 12.111635, 27.749794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379796, -0.682953, 0.623963,
		0.689007, -0.241236, -0.683429,
		0.617272, 0.689478, 0.378939,
		9.479771, 12.318479, 27.863476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.681952, 11.485175, 27.578888>,  <9.047680, 11.835844, 27.598219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.681952, 11.485175, 27.578888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.716249, 11.785220, 27.841179>,  <9.736828, 11.965247, 27.998554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.716249, 11.785220, 27.841179>,  <9.681952, 11.485175, 27.578888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.716249, 11.785220, 27.841179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402174, -0.628207, 0.666042,
		0.911539, 0.206608, -0.355541,
		0.085744, 0.750113, 0.655727,
		9.741973, 12.010254, 28.037897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.307972, 11.299024, 27.912157>,  <9.681952, 11.485175, 27.578888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.307972, 11.299024, 27.912157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.109310, 11.568740, 28.130758>,  <9.990113, 11.730570, 28.261919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.109310, 11.568740, 28.130758>,  <10.307972, 11.299024, 27.912157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.109310, 11.568740, 28.130758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301228, -0.456603, 0.837123,
		0.814000, 0.580383, 0.023659,
		-0.496655, 0.674291, 0.546502,
		9.960314, 11.771028, 28.294708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.729138, 11.299057, 28.473017>,  <10.307972, 11.299024, 27.912157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.729138, 11.299057, 28.473017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.391747, 11.463000, 28.611902>,  <10.189311, 11.561366, 28.695234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.391747, 11.463000, 28.611902>,  <10.729138, 11.299057, 28.473017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.391747, 11.463000, 28.611902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163265, -0.420194, 0.892626,
		0.511747, 0.809600, 0.287510,
		-0.843480, 0.409858, 0.347213,
		10.138702, 11.585958, 28.716066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.897736, 11.692168, 28.993147>,  <10.729138, 11.299057, 28.473017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.897736, 11.692168, 28.993147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512710, 11.622315, 29.076069>,  <10.281694, 11.580403, 29.125822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512710, 11.622315, 29.076069>,  <10.897736, 11.692168, 28.993147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.512710, 11.622315, 29.076069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250492, -0.280906, 0.926469,
		-0.103559, 0.943714, 0.314134,
		-0.962564, -0.174633, 0.207303,
		10.223941, 11.569925, 29.138260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.667618, 12.058508, 29.630127>,  <10.897736, 11.692168, 28.993147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.667618, 12.058508, 29.630127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.435202, 11.738084, 29.572584>,  <10.295752, 11.545830, 29.538057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.435202, 11.738084, 29.572584>,  <10.667618, 12.058508, 29.630127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.435202, 11.738084, 29.572584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155838, -0.282991, 0.946378,
		-0.798816, 0.527465, 0.289265,
		-0.581041, -0.801060, -0.143858,
		10.260889, 11.497766, 29.529427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.511028, 11.904097, 30.250980>,  <10.667618, 12.058508, 29.630127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.511028, 11.904097, 30.250980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.382642, 11.563018, 30.086109>,  <10.305610, 11.358371, 29.987186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.382642, 11.563018, 30.086109>,  <10.511028, 11.904097, 30.250980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.382642, 11.563018, 30.086109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264695, -0.498624, 0.825415,
		-0.909350, 0.155829, 0.385746,
		-0.320965, -0.852697, -0.412177,
		10.286352, 11.307209, 29.962456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.010090, 11.490724, 30.602419>,  <10.511028, 11.904097, 30.250980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.010090, 11.490724, 30.602419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.239034, 11.221515, 30.415039>,  <10.376400, 11.059989, 30.302610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.239034, 11.221515, 30.415039>,  <10.010090, 11.490724, 30.602419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.239034, 11.221515, 30.415039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221083, -0.423467, 0.878520,
		-0.789638, -0.606395, -0.093582,
		0.572359, -0.673023, -0.468449,
		10.410742, 11.019608, 30.274504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.820572, 10.695661, 30.747860>,  <10.010090, 11.490724, 30.602419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.820572, 10.695661, 30.747860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.205582, 10.747873, 30.652773>,  <10.436587, 10.779201, 30.595720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.205582, 10.747873, 30.652773>,  <9.820572, 10.695661, 30.747860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.205582, 10.747873, 30.652773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270925, -0.502194, 0.821219,
		-0.012186, -0.854847, -0.518738,
		0.962523, 0.130531, -0.237719,
		10.494339, 10.787033, 30.581457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.186931, 10.009210, 30.783327>,  <9.820572, 10.695661, 30.747860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.186931, 10.009210, 30.783327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.345724, 10.362367, 30.883650>,  <10.441000, 10.574261, 30.943844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.345724, 10.362367, 30.883650>,  <10.186931, 10.009210, 30.783327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.345724, 10.362367, 30.883650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151092, -0.332396, 0.930959,
		0.905305, -0.331680, -0.265354,
		0.396983, 0.882894, 0.250806,
		10.464819, 10.627234, 30.958891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.557752, 9.967687, 31.401300>,  <10.186931, 10.009210, 30.783327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.557752, 9.967687, 31.401300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.529297, 10.363624, 31.450533>,  <10.512224, 10.601186, 31.480072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.529297, 10.363624, 31.450533>,  <10.557752, 9.967687, 31.401300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.529297, 10.363624, 31.450533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110952, -0.130482, 0.985223,
		0.991277, 0.056428, 0.119107,
		-0.071136, 0.989844, 0.123083,
		10.507957, 10.660577, 31.487457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.238875, 10.254046, 32.084126>,  <10.557752, 9.967687, 31.401300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.238875, 10.254046, 32.084126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.559667, 10.042399, 32.195026>,  <10.752141, 9.915411, 32.261566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.559667, 10.042399, 32.195026>,  <10.238875, 10.254046, 32.084126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.559667, 10.042399, 32.195026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258522, -0.110979, -0.959609,
		0.538515, 0.841260, 0.047785,
		0.801978, -0.529117, 0.277248,
		10.800260, 9.883664, 32.278202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.957486, 10.534608, 31.950262>,  <10.238875, 10.254046, 32.084126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.957486, 10.534608, 31.950262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.953561, 10.134684, 31.943548>,  <10.951206, 9.894729, 31.939520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.953561, 10.134684, 31.943548>,  <10.957486, 10.534608, 31.950262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.953561, 10.134684, 31.943548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160148, 0.014999, -0.986979,
		0.987044, -0.012373, 0.159970,
		-0.009812, -0.999811, -0.016786,
		10.950617, 9.834741, 31.938513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.481305, 10.242879, 31.420729>,  <10.957486, 10.534608, 31.950262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.481305, 10.242879, 31.420729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.232365, 9.930123, 31.435316>,  <11.083000, 9.742470, 31.444069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.232365, 9.930123, 31.435316>,  <11.481305, 10.242879, 31.420729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.232365, 9.930123, 31.435316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007298, -0.040795, -0.999141,
		0.782705, -0.622081, 0.019683,
		-0.622350, -0.781889, 0.036470,
		11.045660, 9.695557, 31.446257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.767957, 9.673147, 31.004921>,  <11.481305, 10.242879, 31.420729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.767957, 9.673147, 31.004921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.374973, 9.600863, 31.023327>,  <11.139183, 9.557492, 31.034370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.374973, 9.600863, 31.023327>,  <11.767957, 9.673147, 31.004921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.374973, 9.600863, 31.023327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014625, -0.320667, -0.947079,
		0.185903, -0.929793, 0.317685,
		-0.982460, -0.180711, 0.046015,
		11.080235, 9.546649, 31.037130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.592545, 8.928963, 30.747520>,  <11.767957, 9.673147, 31.004921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.592545, 8.928963, 30.747520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.312911, 9.199345, 30.654253>,  <11.145131, 9.361574, 30.598293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.312911, 9.199345, 30.654253>,  <11.592545, 8.928963, 30.747520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.312911, 9.199345, 30.654253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069908, -0.389141, -0.918521,
		-0.711614, -0.625823, 0.319297,
		-0.699084, 0.675954, -0.233168,
		11.103186, 9.402131, 30.584303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.923756, 8.714469, 30.150965>,  <11.592545, 8.928963, 30.747520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.923756, 8.714469, 30.150965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.557494, 8.679141, 29.994106>,  <11.337737, 8.657945, 29.899992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.557494, 8.679141, 29.994106>,  <11.923756, 8.714469, 30.150965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.557494, 8.679141, 29.994106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335427, 0.369715, -0.866487,
		0.221508, -0.924938, -0.308907,
		-0.915654, -0.088318, -0.392144,
		11.282798, 8.652645, 29.876463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.925324, 8.453493, 29.382113>,  <11.923756, 8.714469, 30.150965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.925324, 8.453493, 29.382113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.584251, 8.657177, 29.428827>,  <11.379607, 8.779387, 29.456856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.584251, 8.657177, 29.428827>,  <11.925324, 8.453493, 29.382113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.584251, 8.657177, 29.428827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047352, 0.297953, -0.953405,
		-0.520279, -0.807422, -0.278171,
		-0.852682, 0.509209, 0.116786,
		11.328446, 8.809939, 29.463863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.726239, 8.484457, 28.702217>,  <11.925324, 8.453493, 29.382113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.726239, 8.484457, 28.702217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.486626, 8.753005, 28.876766>,  <11.342857, 8.914134, 28.981495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.486626, 8.753005, 28.876766>,  <11.726239, 8.484457, 28.702217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.486626, 8.753005, 28.876766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103799, 0.475265, -0.873698,
		-0.793967, -0.568670, -0.215012,
		-0.599034, 0.671370, 0.436372,
		11.306915, 8.954416, 29.007677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.143264, 8.508450, 28.300131>,  <11.726239, 8.484457, 28.702217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.143264, 8.508450, 28.300131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156992, 8.856852, 28.496161>,  <11.165229, 9.065893, 28.613777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156992, 8.856852, 28.496161>,  <11.143264, 8.508450, 28.300131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.156992, 8.856852, 28.496161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028533, 0.491016, -0.870683,
		-0.999003, 0.015900, 0.041705,
		0.034322, 0.871005, 0.490073,
		11.167289, 9.118154, 28.643183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.612835, 8.758843, 28.034113>,  <11.143264, 8.508450, 28.300131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.612835, 8.758843, 28.034113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.831272, 9.055084, 28.190722>,  <10.962335, 9.232829, 28.284687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.831272, 9.055084, 28.190722>,  <10.612835, 8.758843, 28.034113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.831272, 9.055084, 28.190722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076624, 0.509563, -0.857014,
		-0.834213, 0.438010, 0.335017,
		0.546093, 0.740603, 0.391522,
		10.995100, 9.277265, 28.308178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.271505, 9.317394, 27.803658>,  <10.612835, 8.758843, 28.034113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.271505, 9.317394, 27.803658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.642416, 9.445751, 27.880791>,  <10.864963, 9.522765, 27.927071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.642416, 9.445751, 27.880791>,  <10.271505, 9.317394, 27.803658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.642416, 9.445751, 27.880791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014712, 0.483444, -0.875252,
		-0.374086, 0.814438, 0.443566,
		0.927277, 0.320893, 0.192831,
		10.920599, 9.542019, 27.938641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.331752, 10.014865, 27.465631>,  <10.271505, 9.317394, 27.803658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.331752, 10.014865, 27.465631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.715410, 9.922298, 27.530729>,  <10.945605, 9.866758, 27.569788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.715410, 9.922298, 27.530729>,  <10.331752, 10.014865, 27.465631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.715410, 9.922298, 27.530729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227603, 0.289516, -0.929719,
		0.168036, 0.928777, 0.330359,
		0.959146, -0.231417, 0.162743,
		11.003154, 9.852873, 27.579552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.695519, 10.627518, 27.297136>,  <10.331752, 10.014865, 27.465631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.695519, 10.627518, 27.297136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.960613, 10.329357, 27.268404>,  <11.119670, 10.150461, 27.251163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.960613, 10.329357, 27.268404>,  <10.695519, 10.627518, 27.297136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.960613, 10.329357, 27.268404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300256, 0.352375, -0.886385,
		0.686025, 0.565870, 0.457342,
		0.662734, -0.745402, -0.071832,
		11.159433, 10.105737, 27.246855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.292441, 10.921337, 27.133322>,  <10.695519, 10.627518, 27.297136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.292441, 10.921337, 27.133322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.354189, 10.538354, 27.035797>,  <11.391237, 10.308564, 26.977282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.354189, 10.538354, 27.035797>,  <11.292441, 10.921337, 27.133322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.354189, 10.538354, 27.035797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192478, 0.271187, -0.943085,
		0.969083, 0.098654, 0.226152,
		0.154369, -0.957458, -0.243814,
		11.400499, 10.251117, 26.962652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.911591, 10.878222, 26.760666>,  <11.292441, 10.921337, 27.133322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.911591, 10.878222, 26.760666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732175, 10.537538, 26.652292>,  <11.624525, 10.333127, 26.587269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732175, 10.537538, 26.652292>,  <11.911591, 10.878222, 26.760666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.732175, 10.537538, 26.652292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259375, 0.166047, -0.951395,
		0.855300, -0.497011, 0.146433,
		-0.448539, -0.851709, -0.270932,
		11.597613, 10.282024, 26.571012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.438368, 10.533742, 26.396391>,  <11.911591, 10.878222, 26.760666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.438368, 10.533742, 26.396391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087604, 10.387658, 26.271395>,  <11.877145, 10.300008, 26.196396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087604, 10.387658, 26.271395>,  <12.438368, 10.533742, 26.396391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.087604, 10.387658, 26.271395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292003, 0.111631, -0.949880,
		0.381790, -0.924208, 0.008753,
		-0.876910, -0.365210, -0.312491,
		11.824531, 10.278095, 26.177647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.683780, 9.981288, 25.810167>,  <12.438368, 10.533742, 26.396391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.683780, 9.981288, 25.810167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.292709, 10.009905, 25.731142>,  <12.058067, 10.027075, 25.683727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.292709, 10.009905, 25.731142>,  <12.683780, 9.981288, 25.810167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.292709, 10.009905, 25.731142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201269, 0.048879, -0.978316,
		-0.060335, -0.996239, -0.062188,
		-0.977677, 0.071544, -0.197563,
		11.999407, 10.031367, 25.671873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.530334, 9.531306, 25.304298>,  <12.683780, 9.981288, 25.810167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.530334, 9.531306, 25.304298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.224260, 9.788620, 25.293901>,  <12.040616, 9.943008, 25.287663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.224260, 9.788620, 25.293901>,  <12.530334, 9.531306, 25.304298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.224260, 9.788620, 25.293901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155735, 0.145768, -0.976984,
		-0.624689, -0.751623, -0.211721,
		-0.765186, 0.643284, -0.025994,
		11.994704, 9.981606, 25.286102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.251752, 9.375309, 24.696178>,  <12.530334, 9.531306, 25.304298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.251752, 9.375309, 24.696178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.116320, 9.737118, 24.799873>,  <12.035060, 9.954203, 24.862089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.116320, 9.737118, 24.799873>,  <12.251752, 9.375309, 24.696178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.116320, 9.737118, 24.799873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199586, 0.338278, -0.919638,
		-0.919526, -0.259631, -0.295064,
		-0.338581, 0.904522, 0.259236,
		12.014746, 10.008474, 24.877644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.623510, 9.574582, 24.299068>,  <12.251752, 9.375309, 24.696178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.623510, 9.574582, 24.299068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823813, 9.898793, 24.420584>,  <11.943995, 10.093320, 24.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823813, 9.898793, 24.420584>,  <11.623510, 9.574582, 24.299068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.823813, 9.898793, 24.420584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203007, 0.231198, -0.951491,
		-0.841445, 0.538138, -0.048769,
		0.500759, 0.810527, 0.303786,
		11.974041, 10.141952, 24.511719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.482912, 10.052119, 23.790144>,  <11.623510, 9.574582, 24.299068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.482912, 10.052119, 23.790144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815726, 10.140917, 23.993490>,  <12.015415, 10.194196, 24.115498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815726, 10.140917, 23.993490>,  <11.482912, 10.052119, 23.790144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.815726, 10.140917, 23.993490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379147, 0.441373, -0.813288,
		-0.404923, 0.869430, 0.283070,
		0.832036, 0.221994, 0.508364,
		12.065337, 10.207515, 24.146000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.620002, 10.719595, 23.629072>,  <11.482912, 10.052119, 23.790144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.620002, 10.719595, 23.629072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.973067, 10.545161, 23.699202>,  <12.184906, 10.440501, 23.741280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.973067, 10.545161, 23.699202>,  <11.620002, 10.719595, 23.629072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.973067, 10.545161, 23.699202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361400, 0.391229, -0.846363,
		0.300493, 0.810414, 0.502924,
		0.882663, -0.436083, 0.175322,
		12.237866, 10.414336, 23.751799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.125424, 11.264742, 23.532513>,  <11.620002, 10.719595, 23.629072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.125424, 11.264742, 23.532513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299840, 10.908528, 23.480640>,  <12.404490, 10.694799, 23.449516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299840, 10.908528, 23.480640>,  <12.125424, 11.264742, 23.532513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.299840, 10.908528, 23.480640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350762, 0.300885, -0.886811,
		0.828756, 0.341197, 0.443564,
		0.436039, -0.890535, -0.129681,
		12.430652, 10.641368, 23.441736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.758002, 11.417834, 23.201244>,  <12.125424, 11.264742, 23.532513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.758002, 11.417834, 23.201244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.678443, 11.032375, 23.129889>,  <12.630708, 10.801100, 23.087074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.678443, 11.032375, 23.129889>,  <12.758002, 11.417834, 23.201244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.678443, 11.032375, 23.129889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069493, 0.167702, -0.983386,
		0.977553, -0.207990, 0.033611,
		-0.198898, -0.963647, -0.178392,
		12.618773, 10.743281, 23.076370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.332331, 11.096258, 22.797667>,  <12.758002, 11.417834, 23.201244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.332331, 11.096258, 22.797667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.015508, 10.860603, 22.733713>,  <12.825414, 10.719211, 22.695341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.015508, 10.860603, 22.733713>,  <13.332331, 11.096258, 22.797667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.015508, 10.860603, 22.733713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172227, 0.035611, -0.984413,
		0.585647, -0.807248, 0.073259,
		-0.792057, -0.589136, -0.159885,
		12.777890, 10.683863, 22.685747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.595708, 10.562134, 22.341358>,  <13.332331, 11.096258, 22.797667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.595708, 10.562134, 22.341358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.198279, 10.532810, 22.306854>,  <12.959822, 10.515216, 22.286152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.198279, 10.532810, 22.306854>,  <13.595708, 10.562134, 22.341358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.198279, 10.532810, 22.306854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092582, -0.087751, -0.991831,
		0.065143, -0.993441, 0.093974,
		-0.993572, -0.073311, -0.086259,
		12.900208, 10.510818, 22.280977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513372, 10.168352, 21.786144>,  <13.595708, 10.562134, 22.341358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513372, 10.168352, 21.786144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.130042, 10.281484, 21.802248>,  <12.900043, 10.349362, 21.811911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.130042, 10.281484, 21.802248>,  <13.513372, 10.168352, 21.786144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.130042, 10.281484, 21.802248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058913, -0.057759, -0.996591,
		-0.279538, -0.957430, 0.072014,
		-0.958326, 0.282828, 0.040259,
		12.842545, 10.366332, 21.814325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059996, 9.655568, 21.356264>,  <13.513372, 10.168352, 21.786144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059996, 9.655568, 21.356264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.871069, 10.004985, 21.403326>,  <12.757713, 10.214635, 21.431564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.871069, 10.004985, 21.403326>,  <13.059996, 9.655568, 21.356264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.871069, 10.004985, 21.403326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177198, 0.036657, -0.983492,
		-0.863434, -0.485368, 0.137476,
		-0.472316, 0.873541, 0.117657,
		12.729374, 10.267047, 21.438623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.335487, 9.595221, 21.063822>,  <13.059996, 9.655568, 21.356264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.335487, 9.595221, 21.063822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.451584, 9.977296, 21.040585>,  <12.521242, 10.206541, 21.026642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.451584, 9.977296, 21.040585>,  <12.335487, 9.595221, 21.063822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.451584, 9.977296, 21.040585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308273, 0.035854, -0.950622,
		-0.905940, 0.293819, 0.304865,
		0.290241, 0.955189, -0.058094,
		12.538656, 10.263852, 21.023157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841169, 9.861839, 20.683784>,  <12.335487, 9.595221, 21.063822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.841169, 9.861839, 20.683784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.113442, 10.152615, 20.647495>,  <12.276806, 10.327080, 20.625723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.113442, 10.152615, 20.647495>,  <11.841169, 9.861839, 20.683784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.113442, 10.152615, 20.647495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073780, -0.055182, -0.995747,
		-0.728854, 0.684481, 0.016072,
		0.680683, 0.726939, -0.090721,
		12.317647, 10.370696, 20.620279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.565902, 10.289559, 20.198301>,  <11.841169, 9.861839, 20.683784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.565902, 10.289559, 20.198301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.952018, 10.393022, 20.212786>,  <12.183687, 10.455099, 20.221478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.952018, 10.393022, 20.212786>,  <11.565902, 10.289559, 20.198301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.952018, 10.393022, 20.212786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011578, 0.180892, -0.983435,
		-0.260920, 0.948881, 0.177609,
		0.965291, 0.258654, 0.036212,
		12.241605, 10.470618, 20.223650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.722944, 11.001185, 19.905527>,  <11.565902, 10.289559, 20.198301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.722944, 11.001185, 19.905527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.051626, 10.775253, 19.875151>,  <12.248836, 10.639694, 19.856924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.051626, 10.775253, 19.875151>,  <11.722944, 11.001185, 19.905527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.051626, 10.775253, 19.875151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092469, 0.263618, -0.960185,
		0.562361, 0.781967, 0.268845,
		0.821705, -0.564830, -0.075941,
		12.298138, 10.605804, 19.852369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.245930, 11.386573, 19.459078>,  <11.722944, 11.001185, 19.905527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.245930, 11.386573, 19.459078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.406156, 11.020644, 19.438488>,  <12.502291, 10.801087, 19.426134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.406156, 11.020644, 19.438488>,  <12.245930, 11.386573, 19.459078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.406156, 11.020644, 19.438488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292497, 0.180908, -0.938998,
		0.868328, 0.361074, 0.340048,
		0.400565, -0.914821, -0.051474,
		12.526325, 10.746198, 19.423046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.888474, 11.549205, 19.178003>,  <12.245930, 11.386573, 19.459078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.888474, 11.549205, 19.178003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780643, 11.169759, 19.111717>,  <12.715945, 10.942091, 19.071945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780643, 11.169759, 19.111717>,  <12.888474, 11.549205, 19.178003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780643, 11.169759, 19.111717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357922, 0.061055, -0.931754,
		0.893992, -0.310489, 0.323071,
		-0.269574, -0.948614, -0.165714,
		12.699771, 10.885175, 19.062004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372222, 11.302687, 18.728140>,  <12.888474, 11.549205, 19.178003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372222, 11.302687, 18.728140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087107, 11.022586, 18.712240>,  <12.916038, 10.854526, 18.702700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087107, 11.022586, 18.712240>,  <13.372222, 11.302687, 18.728140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087107, 11.022586, 18.712240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125836, -0.071924, -0.989440,
		0.690000, -0.710262, 0.139384,
		-0.712787, -0.700253, -0.039749,
		12.873270, 10.812510, 18.700315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.702175, 10.806137, 18.384995>,  <13.372222, 11.302687, 18.728140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.702175, 10.806137, 18.384995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310499, 10.753200, 18.323454>,  <13.075494, 10.721437, 18.286530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310499, 10.753200, 18.323454>,  <13.702175, 10.806137, 18.384995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.310499, 10.753200, 18.323454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149589, 0.041627, -0.987871,
		0.137144, -0.990329, -0.020963,
		-0.979191, -0.132345, -0.153852,
		13.016742, 10.713496, 18.277298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.710375, 10.368706, 17.856197>,  <13.702175, 10.806137, 18.384995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.710375, 10.368706, 17.856197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.352122, 10.546605, 17.853529>,  <13.137171, 10.653345, 17.851929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.352122, 10.546605, 17.853529>,  <13.710375, 10.368706, 17.856197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.352122, 10.546605, 17.853529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092213, 0.170987, -0.980949,
		-0.435136, -0.879182, -0.194153,
		-0.895630, 0.444750, -0.006669,
		13.083433, 10.680030, 17.851528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506382, 10.300999, 17.217669>,  <13.710375, 10.368706, 17.856197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506382, 10.300999, 17.217669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.246107, 10.577800, 17.342722>,  <13.089943, 10.743880, 17.417753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.246107, 10.577800, 17.342722>,  <13.506382, 10.300999, 17.217669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.246107, 10.577800, 17.342722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074461, 0.351581, -0.933191,
		-0.755687, -0.630493, -0.177242,
		-0.650686, 0.692003, 0.312633,
		13.050901, 10.785400, 17.436512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823901, 10.327801, 16.691835>,  <13.506382, 10.300999, 17.217669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823901, 10.327801, 16.691835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.877913, 10.669807, 16.892120>,  <12.910319, 10.875011, 17.012291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.877913, 10.669807, 16.892120>,  <12.823901, 10.327801, 16.691835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.877913, 10.669807, 16.892120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059056, 0.511387, -0.857319,
		-0.989080, 0.086192, 0.119545,
		0.135028, 0.855017, 0.500713,
		12.918421, 10.926312, 17.042334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.321651, 10.768962, 16.335732>,  <12.823901, 10.327801, 16.691835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.321651, 10.768962, 16.335732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.558581, 11.031692, 16.522379>,  <12.700739, 11.189329, 16.634367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.558581, 11.031692, 16.522379>,  <12.321651, 10.768962, 16.335732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.558581, 11.031692, 16.522379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039240, 0.554943, -0.830963,
		-0.804743, 0.510509, 0.302933,
		0.592324, 0.656825, 0.466619,
		12.736279, 11.228739, 16.662365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.054262, 11.470508, 16.150785>,  <12.321651, 10.768962, 16.335732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.054262, 11.470508, 16.150785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.434244, 11.524571, 16.263441>,  <12.662233, 11.557010, 16.331034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.434244, 11.524571, 16.263441>,  <12.054262, 11.470508, 16.150785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.434244, 11.524571, 16.263441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172033, 0.526189, -0.832784,
		-0.260753, 0.839558, 0.476603,
		0.949954, 0.135160, 0.281637,
		12.719231, 11.565120, 16.347933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.196424, 12.187682, 16.013056>,  <12.054262, 11.470508, 16.150785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.196424, 12.187682, 16.013056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.545659, 11.996798, 16.053036>,  <12.755199, 11.882267, 16.077024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.545659, 11.996798, 16.053036>,  <12.196424, 12.187682, 16.013056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.545659, 11.996798, 16.053036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341425, 0.452063, -0.824056,
		0.348064, 0.753597, 0.557622,
		0.873087, -0.477210, 0.099950,
		12.807585, 11.853635, 16.083021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.659596, 12.714355, 15.880651>,  <12.196424, 12.187682, 16.013056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.659596, 12.714355, 15.880651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905823, 12.402292, 15.836049>,  <13.053558, 12.215055, 15.809287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905823, 12.402292, 15.836049>,  <12.659596, 12.714355, 15.880651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905823, 12.402292, 15.836049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467124, 0.475152, -0.745671,
		0.634723, 0.406923, 0.656917,
		0.615566, -0.780157, -0.111507,
		13.090492, 12.168245, 15.802597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.464343, 12.908340, 15.921458>,  <12.659596, 12.714355, 15.880651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.464343, 12.908340, 15.921458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.437850, 12.572742, 15.705421>,  <13.421954, 12.371383, 15.575799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.437850, 12.572742, 15.705421>,  <13.464343, 12.908340, 15.921458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.437850, 12.572742, 15.705421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486274, 0.445510, -0.751703,
		0.871292, -0.312421, 0.378475,
		-0.066234, -0.838996, -0.540092,
		13.417980, 12.321043, 15.543394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165181, 12.829265, 15.549416>,  <13.464343, 12.908340, 15.921458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.165181, 12.829265, 15.549416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.940219, 12.561914, 15.354694>,  <13.805242, 12.401505, 15.237862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.940219, 12.561914, 15.354694>,  <14.165181, 12.829265, 15.549416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.940219, 12.561914, 15.354694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428513, 0.267911, -0.862902,
		0.707162, -0.693901, 0.135733,
		-0.562404, -0.668375, -0.486802,
		13.771498, 12.361402, 15.208653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638412, 12.541760, 15.128262>,  <14.165181, 12.829265, 15.549416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638412, 12.541760, 15.128262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.304237, 12.433091, 14.937165>,  <14.103732, 12.367889, 14.822508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.304237, 12.433091, 14.937165>,  <14.638412, 12.541760, 15.128262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.304237, 12.433091, 14.937165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452778, 0.152472, -0.878490,
		0.311504, -0.950235, -0.004373,
		-0.835438, -0.271673, -0.477741,
		14.053606, 12.351589, 14.793843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205616, 12.730247, 15.596700>,  <14.638412, 12.541760, 15.128262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205616, 12.730247, 15.596700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573654, 12.695806, 15.749545>,  <15.794477, 12.675140, 15.841252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573654, 12.695806, 15.749545>,  <15.205616, 12.730247, 15.596700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573654, 12.695806, 15.749545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367945, 0.144526, 0.918547,
		-0.134318, -0.985747, 0.101296,
		0.920095, -0.086106, 0.382113,
		15.849683, 12.669974, 15.864179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.300182, 12.182001, 16.110453>,  <15.205616, 12.730247, 15.596700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.300182, 12.182001, 16.110453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.600127, 12.406796, 16.250095>,  <15.780094, 12.541674, 16.333881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.600127, 12.406796, 16.250095>,  <15.300182, 12.182001, 16.110453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600127, 12.406796, 16.250095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266623, -0.226230, 0.936874,
		0.605490, -0.795606, -0.019802,
		0.749863, 0.561988, 0.349107,
		15.825086, 12.575393, 16.354828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611106, 11.856823, 16.737726>,  <15.300182, 12.182001, 16.110453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.611106, 11.856823, 16.737726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735840, 12.236334, 16.758045>,  <15.810680, 12.464041, 16.770237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735840, 12.236334, 16.758045>,  <15.611106, 11.856823, 16.737726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735840, 12.236334, 16.758045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196779, 0.012189, 0.980372,
		0.929536, -0.315708, 0.190500,
		0.311834, 0.948778, 0.050795,
		15.829390, 12.520967, 16.773283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029186, 12.038931, 17.437910>,  <15.611106, 11.856823, 16.737726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029186, 12.038931, 17.437910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.906561, 12.393085, 17.298134>,  <15.832986, 12.605578, 17.214268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.906561, 12.393085, 17.298134>,  <16.029186, 12.038931, 17.437910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906561, 12.393085, 17.298134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088854, 0.338896, 0.936618,
		0.947694, 0.318181, -0.025222,
		-0.306562, 0.885387, -0.349442,
		15.814592, 12.658702, 17.193302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398592, 12.485794, 17.820086>,  <16.029186, 12.038931, 17.437910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398592, 12.485794, 17.820086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104958, 12.711966, 17.669668>,  <15.928777, 12.847669, 17.579418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.104958, 12.711966, 17.669668>,  <16.398592, 12.485794, 17.820086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104958, 12.711966, 17.669668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118621, 0.438484, 0.890876,
		0.668616, 0.698586, -0.254813,
		-0.734086, 0.565428, -0.376045,
		15.884732, 12.881594, 17.556854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559906, 13.209810, 17.917084>,  <16.398592, 12.485794, 17.820086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.559906, 13.209810, 17.917084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.161922, 13.184434, 17.886021>,  <15.923132, 13.169209, 17.867382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.161922, 13.184434, 17.886021>,  <16.559906, 13.209810, 17.917084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.161922, 13.184434, 17.886021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099218, 0.510458, 0.854159,
		-0.014547, 0.857559, -0.514180,
		-0.994959, -0.063441, -0.077660,
		15.863435, 13.165401, 17.862722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230242, 13.906436, 17.982796>,  <16.559906, 13.209810, 17.917084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230242, 13.906436, 17.982796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.991225, 13.611141, 18.107985>,  <15.847816, 13.433964, 18.183098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.991225, 13.611141, 18.107985>,  <16.230242, 13.906436, 17.982796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.991225, 13.611141, 18.107985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096809, 0.453882, 0.885787,
		-0.795973, 0.498995, -0.342681,
		-0.597540, -0.738238, 0.312970,
		15.811963, 13.389669, 18.201876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965370, 14.171461, 18.471209>,  <16.230242, 13.906436, 17.982796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965370, 14.171461, 18.471209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.805676, 13.808997, 18.527046>,  <15.709859, 13.591519, 18.560549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.805676, 13.808997, 18.527046>,  <15.965370, 14.171461, 18.471209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.805676, 13.808997, 18.527046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073946, 0.183582, 0.980219,
		-0.913861, 0.381017, -0.140299,
		-0.399237, -0.906159, 0.139594,
		15.685905, 13.537149, 18.568924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.347605, 14.265210, 18.833960>,  <15.965370, 14.171461, 18.471209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.347605, 14.265210, 18.833960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.442383, 13.888301, 18.928600>,  <15.499249, 13.662155, 18.985384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.442383, 13.888301, 18.928600>,  <15.347605, 14.265210, 18.833960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442383, 13.888301, 18.928600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330569, 0.150808, 0.931655,
		-0.913554, -0.298963, -0.275753,
		0.236944, -0.942273, 0.236600,
		15.513466, 13.605619, 18.999580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.731715, 14.010061, 19.182640>,  <15.347605, 14.265210, 18.833960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.731715, 14.010061, 19.182640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036283, 13.771008, 19.283102>,  <15.219023, 13.627577, 19.343378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036283, 13.771008, 19.283102>,  <14.731715, 14.010061, 19.182640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.036283, 13.771008, 19.283102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308417, 0.006809, 0.951227,
		-0.570195, -0.801741, -0.179136,
		0.761418, -0.597633, 0.251153,
		15.264708, 13.591719, 19.358448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433753, 13.527139, 19.650425>,  <14.731715, 14.010061, 19.182640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.433753, 13.527139, 19.650425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819620, 13.440008, 19.709713>,  <15.051140, 13.387730, 19.745285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819620, 13.440008, 19.709713>,  <14.433753, 13.527139, 19.650425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.819620, 13.440008, 19.709713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173513, -0.101898, 0.979546,
		-0.198268, -0.970653, -0.136094,
		0.964667, -0.217827, 0.148218,
		15.109020, 13.374660, 19.754179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.374949, 12.918264, 20.021120>,  <14.433753, 13.527139, 19.650425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.374949, 12.918264, 20.021120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.737916, 13.065897, 20.101488>,  <14.955697, 13.154476, 20.149708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.737916, 13.065897, 20.101488>,  <14.374949, 12.918264, 20.021120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737916, 13.065897, 20.101488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151420, -0.158827, 0.975626,
		0.391997, -0.915725, -0.088236,
		0.907420, 0.369082, 0.200919,
		15.010142, 13.176621, 20.161764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.692732, 12.395818, 20.416296>,  <14.374949, 12.918264, 20.021120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.692732, 12.395818, 20.416296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875430, 12.740682, 20.503990>,  <14.985049, 12.947600, 20.556606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875430, 12.740682, 20.503990>,  <14.692732, 12.395818, 20.416296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.875430, 12.740682, 20.503990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106752, -0.191542, 0.975662,
		0.883169, -0.469033, 0.004552,
		0.456745, 0.862160, 0.219235,
		15.012454, 12.999330, 20.569761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159250, 12.267551, 20.980026>,  <14.692732, 12.395818, 20.416296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159250, 12.267551, 20.980026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080528, 12.657579, 21.021023>,  <15.033295, 12.891597, 21.045620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080528, 12.657579, 21.021023>,  <15.159250, 12.267551, 20.980026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080528, 12.657579, 21.021023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044929, -0.095457, 0.994419,
		0.979413, 0.200311, -0.025023,
		-0.196805, 0.975071, 0.102491,
		15.021487, 12.950101, 21.051771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613079, 12.482044, 21.410421>,  <15.159250, 12.267551, 20.980026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613079, 12.482044, 21.410421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.328028, 12.761840, 21.431862>,  <15.156997, 12.929717, 21.444727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.328028, 12.761840, 21.431862>,  <15.613079, 12.482044, 21.410421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.328028, 12.761840, 21.431862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104783, -0.181679, 0.977759,
		0.693671, 0.691163, 0.202765,
		-0.712629, 0.699490, 0.053604,
		15.114239, 12.971686, 21.447943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818322, 12.815484, 22.016176>,  <15.613079, 12.482044, 21.410421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818322, 12.815484, 22.016176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.428859, 12.895387, 21.972198>,  <15.195181, 12.943328, 21.945812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.428859, 12.895387, 21.972198>,  <15.818322, 12.815484, 22.016176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.428859, 12.895387, 21.972198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161884, -0.266023, 0.950276,
		0.160576, 0.943042, 0.291352,
		-0.973657, 0.199757, -0.109947,
		15.136762, 12.955314, 21.939215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674014, 13.064640, 22.631294>,  <15.818322, 12.815484, 22.016176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.674014, 13.064640, 22.631294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.302922, 13.006935, 22.493597>,  <15.080267, 12.972312, 22.410978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.302922, 13.006935, 22.493597>,  <15.674014, 13.064640, 22.631294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.302922, 13.006935, 22.493597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321169, -0.161384, 0.933170,
		-0.190176, 0.976291, 0.103388,
		-0.927730, -0.144262, -0.344245,
		15.024603, 12.963656, 22.390324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.212137, 13.460942, 23.119411>,  <15.674014, 13.064640, 22.631294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.212137, 13.460942, 23.119411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.959600, 13.218259, 22.926201>,  <14.808079, 13.072649, 22.810274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.959600, 13.218259, 22.926201>,  <15.212137, 13.460942, 23.119411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.959600, 13.218259, 22.926201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483944, -0.178467, 0.856707,
		-0.605975, 0.774633, -0.180939,
		-0.631342, -0.606708, -0.483025,
		14.770198, 13.036246, 22.781294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.586782, 13.726037, 23.356283>,  <15.212137, 13.460942, 23.119411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.586782, 13.726037, 23.356283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512477, 13.359780, 23.213682>,  <14.467895, 13.140026, 23.128122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512477, 13.359780, 23.213682>,  <14.586782, 13.726037, 23.356283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512477, 13.359780, 23.213682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534750, -0.210175, 0.818455,
		-0.824339, 0.342676, -0.450597,
		-0.185760, -0.915641, -0.356502,
		14.456749, 13.085088, 23.106731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863400, 13.580270, 23.475567>,  <14.586782, 13.726037, 23.356283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863400, 13.580270, 23.475567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007272, 13.212267, 23.413321>,  <14.093596, 12.991466, 23.375973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007272, 13.212267, 23.413321>,  <13.863400, 13.580270, 23.475567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007272, 13.212267, 23.413321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485982, -0.327082, 0.810456,
		-0.796525, -0.215879, -0.564751,
		0.359680, -0.920008, -0.155616,
		14.115176, 12.936265, 23.366636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.294148, 13.129432, 23.536127>,  <13.863400, 13.580270, 23.475567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.294148, 13.129432, 23.536127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.619557, 12.904756, 23.596376>,  <13.814802, 12.769950, 23.632526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.619557, 12.904756, 23.596376>,  <13.294148, 13.129432, 23.536127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.619557, 12.904756, 23.596376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409548, -0.369494, 0.834113,
		-0.412862, -0.740253, -0.530631,
		0.813520, -0.561693, 0.150619,
		13.863614, 12.736249, 23.641563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.967304, 12.449322, 23.674328>,  <13.294148, 13.129432, 23.536127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.967304, 12.449322, 23.674328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.335114, 12.437067, 23.831060>,  <13.555800, 12.429714, 23.925100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.335114, 12.437067, 23.831060>,  <12.967304, 12.449322, 23.674328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.335114, 12.437067, 23.831060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372130, -0.388621, 0.842907,
		0.126451, -0.920888, -0.368747,
		0.919527, -0.030635, 0.391832,
		13.610972, 12.427876, 23.948610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.988292, 11.799399, 24.032780>,  <12.967304, 12.449322, 23.674328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.988292, 11.799399, 24.032780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274082, 12.022761, 24.201401>,  <13.445557, 12.156778, 24.302574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274082, 12.022761, 24.201401>,  <12.988292, 11.799399, 24.032780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274082, 12.022761, 24.201401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396106, -0.173823, 0.901601,
		0.576735, -0.811153, 0.096995,
		0.714476, 0.558405, 0.421552,
		13.488425, 12.190283, 24.327866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166351, 11.460664, 24.735077>,  <12.988292, 11.799399, 24.032780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.166351, 11.460664, 24.735077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305576, 11.835067, 24.756023>,  <13.389112, 12.059709, 24.768591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305576, 11.835067, 24.756023>,  <13.166351, 11.460664, 24.735077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.305576, 11.835067, 24.756023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317548, 0.065157, 0.946001,
		0.882052, -0.345897, 0.319906,
		0.348063, 0.936007, 0.052367,
		13.409995, 12.115870, 24.771734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.505217, 11.419126, 25.309263>,  <13.166351, 11.460664, 24.735077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.505217, 11.419126, 25.309263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.425340, 11.806993, 25.252884>,  <13.377414, 12.039713, 25.219055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.425340, 11.806993, 25.252884>,  <13.505217, 11.419126, 25.309263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.425340, 11.806993, 25.252884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316902, 0.072204, 0.945706,
		0.927198, 0.233518, 0.292871,
		-0.199693, 0.969668, -0.140949,
		13.365432, 12.097893, 25.210600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877316, 11.797232, 25.784517>,  <13.505217, 11.419126, 25.309263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.877316, 11.797232, 25.784517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559286, 12.017205, 25.682198>,  <13.368468, 12.149189, 25.620806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559286, 12.017205, 25.682198>,  <13.877316, 11.797232, 25.784517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.559286, 12.017205, 25.682198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213622, 0.140813, 0.966715,
		0.567649, 0.823252, 0.005521,
		-0.795073, 0.549934, -0.255797,
		13.320765, 12.182185, 25.605459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.934254, 12.381012, 26.208946>,  <13.877316, 11.797232, 25.784517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.934254, 12.381012, 26.208946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.564592, 12.284628, 26.090368>,  <13.342795, 12.226797, 26.019222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.564592, 12.284628, 26.090368>,  <13.934254, 12.381012, 26.208946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.564592, 12.284628, 26.090368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341657, 0.174154, 0.923548,
		-0.170912, 0.954782, -0.243271,
		-0.924153, -0.240961, -0.296443,
		13.287346, 12.212339, 26.001436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.493579, 12.934649, 26.489542>,  <13.934254, 12.381012, 26.208946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.493579, 12.934649, 26.489542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.267995, 12.607103, 26.446817>,  <13.132645, 12.410576, 26.421183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.267995, 12.607103, 26.446817>,  <13.493579, 12.934649, 26.489542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.267995, 12.607103, 26.446817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330351, 0.105168, 0.937981,
		-0.756846, 0.564270, -0.329823,
		-0.563961, -0.818865, -0.106811,
		13.098806, 12.361444, 26.414774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.918672, 13.122351, 26.717670>,  <13.493579, 12.934649, 26.489542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.918672, 13.122351, 26.717670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882426, 12.724236, 26.703859>,  <12.860679, 12.485367, 26.695572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882426, 12.724236, 26.703859>,  <12.918672, 13.122351, 26.717670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882426, 12.724236, 26.703859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376944, 0.002184, 0.926233,
		-0.921793, 0.096944, -0.375366,
		-0.090613, -0.995287, -0.034529,
		12.855243, 12.425650, 26.693501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.223330, 13.006401, 26.859301>,  <12.918672, 13.122351, 26.717670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.223330, 13.006401, 26.859301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.449396, 12.688648, 26.948334>,  <12.585036, 12.497996, 27.001755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.449396, 12.688648, 26.948334>,  <12.223330, 13.006401, 26.859301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.449396, 12.688648, 26.948334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297372, 0.055504, 0.953147,
		-0.769518, -0.604876, -0.204858,
		0.565166, -0.794383, 0.222584,
		12.618946, 12.450334, 27.015110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.805435, 12.585937, 27.233683>,  <12.223330, 13.006401, 26.859301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.805435, 12.585937, 27.233683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181949, 12.490423, 27.329153>,  <12.407857, 12.433115, 27.386435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181949, 12.490423, 27.329153>,  <11.805435, 12.585937, 27.233683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.181949, 12.490423, 27.329153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269119, -0.103808, 0.957496,
		-0.203862, -0.965508, -0.161975,
		0.941283, -0.238787, 0.238674,
		12.464334, 12.418788, 27.400755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.818241, 12.066708, 27.809414>,  <11.805435, 12.585937, 27.233683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.818241, 12.066708, 27.809414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.185256, 12.223376, 27.836887>,  <12.405465, 12.317378, 27.853371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.185256, 12.223376, 27.836887>,  <11.818241, 12.066708, 27.809414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.185256, 12.223376, 27.836887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011860, -0.145687, 0.989259,
		0.397472, -0.908497, -0.129028,
		0.917537, 0.391673, 0.068681,
		12.460517, 12.340878, 27.857492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.193715, 11.574926, 28.279173>,  <11.818241, 12.066708, 27.809414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.193715, 11.574926, 28.279173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.367042, 11.935234, 28.290852>,  <12.471038, 12.151419, 28.297859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.367042, 11.935234, 28.290852>,  <12.193715, 11.574926, 28.279173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.367042, 11.935234, 28.290852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075964, 0.004223, 0.997102,
		0.898035, -0.434279, 0.070256,
		0.433317, 0.900769, 0.029197,
		12.497037, 12.205464, 28.299610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.711109, 11.448043, 28.835657>,  <12.193715, 11.574926, 28.279173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.711109, 11.448043, 28.835657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.666696, 11.840201, 28.770546>,  <12.640048, 12.075497, 28.731480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.666696, 11.840201, 28.770546>,  <12.711109, 11.448043, 28.835657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.666696, 11.840201, 28.770546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087954, 0.153455, 0.984233,
		0.989917, 0.123600, 0.069191,
		-0.111033, 0.980395, -0.162779,
		12.633386, 12.134320, 28.721712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.331121, 11.740886, 29.292126>,  <12.711109, 11.448043, 28.835657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.331121, 11.740886, 29.292126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053738, 12.019014, 29.216612>,  <12.887307, 12.185892, 29.171303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053738, 12.019014, 29.216612>,  <13.331121, 11.740886, 29.292126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.053738, 12.019014, 29.216612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074123, 0.191782, 0.978635,
		0.716672, 0.692638, -0.081454,
		-0.693460, 0.695322, -0.188785,
		12.845699, 12.227611, 29.159977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.464828, 12.211622, 29.797989>,  <13.331121, 11.740886, 29.292126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.464828, 12.211622, 29.797989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102338, 12.314298, 29.663605>,  <12.884844, 12.375903, 29.582973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102338, 12.314298, 29.663605>,  <13.464828, 12.211622, 29.797989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.102338, 12.314298, 29.663605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250228, 0.314884, 0.915551,
		0.340800, 0.913761, -0.221125,
		-0.906224, 0.256688, -0.335961,
		12.830471, 12.391304, 29.562817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191881, 12.958775, 30.026497>,  <13.464828, 12.211622, 29.797989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191881, 12.958775, 30.026497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.891778, 12.705234, 29.951294>,  <12.711717, 12.553109, 29.906172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.891778, 12.705234, 29.951294>,  <13.191881, 12.958775, 30.026497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.891778, 12.705234, 29.951294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380852, 0.181899, 0.906567,
		-0.540432, 0.751761, -0.377875,
		-0.750257, -0.633852, -0.188006,
		12.666701, 12.515078, 29.894892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.712996, 13.636145, 30.111467>,  <13.191881, 12.958775, 30.026497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.712996, 13.636145, 30.111467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.506076, 13.951648, 29.978645>,  <12.381924, 14.140949, 29.898952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.506076, 13.951648, 29.978645>,  <12.712996, 13.636145, 30.111467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.506076, 13.951648, 29.978645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780073, 0.275008, -0.562012,
		-0.351973, -0.549757, -0.757550,
		-0.517302, 0.788757, -0.332055,
		12.350885, 14.188275, 29.879028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.710614, 13.606099, 29.370167>,  <12.712996, 13.636145, 30.111467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.710614, 13.606099, 29.370167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.677872, 13.986613, 29.489063>,  <12.658226, 14.214922, 29.560402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.677872, 13.986613, 29.489063>,  <12.710614, 13.606099, 29.370167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.677872, 13.986613, 29.489063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720111, 0.262639, -0.642232,
		-0.689014, 0.161477, -0.706530,
		-0.081856, 0.951287, 0.297243,
		12.653315, 14.271999, 29.578236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.408034, 14.159752, 28.828650>,  <12.710614, 13.606099, 29.370167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.408034, 14.159752, 28.828650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.654237, 14.355318, 29.075911>,  <12.801958, 14.472658, 29.224268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.654237, 14.355318, 29.075911>,  <12.408034, 14.159752, 28.828650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.654237, 14.355318, 29.075911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593632, 0.228313, -0.771670,
		-0.518415, 0.841923, -0.149708,
		0.615506, 0.488916, 0.618153,
		12.838888, 14.501993, 29.261356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.570597, 14.841443, 28.514114>,  <12.408034, 14.159752, 28.828650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.570597, 14.841443, 28.514114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.849294, 14.760679, 28.789442>,  <13.016512, 14.712221, 28.954639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.849294, 14.760679, 28.789442>,  <12.570597, 14.841443, 28.514114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.849294, 14.760679, 28.789442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716976, 0.166248, -0.676984,
		0.022257, 0.965191, 0.260595,
		0.696742, -0.201909, 0.688319,
		13.058316, 14.700107, 28.995937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.050550, 15.453310, 28.573679>,  <12.570597, 14.841443, 28.514114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.050550, 15.453310, 28.573679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.253377, 15.133758, 28.703093>,  <13.375072, 14.942026, 28.780741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.253377, 15.133758, 28.703093>,  <13.050550, 15.453310, 28.573679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.253377, 15.133758, 28.703093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802091, 0.299973, -0.516397,
		0.315489, 0.521350, 0.792882,
		0.507066, -0.798881, 0.323532,
		13.405497, 14.894094, 28.800152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.657524, 15.794892, 28.806934>,  <13.050550, 15.453310, 28.573679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.657524, 15.794892, 28.806934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738574, 15.411577, 28.726307>,  <13.787204, 15.181588, 28.677931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738574, 15.411577, 28.726307>,  <13.657524, 15.794892, 28.806934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.738574, 15.411577, 28.726307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840849, 0.275760, -0.465756,
		0.501912, -0.075114, 0.861651,
		0.202624, -0.958287, -0.201567,
		13.799361, 15.124091, 28.665836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.322251, 15.968775, 28.743843>,  <13.657524, 15.794892, 28.806934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.322251, 15.968775, 28.743843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.276763, 15.587627, 28.631338>,  <14.249470, 15.358939, 28.563835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.276763, 15.587627, 28.631338>,  <14.322251, 15.968775, 28.743843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.276763, 15.587627, 28.631338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792402, 0.083782, -0.604218,
		0.599305, -0.291586, 0.745527,
		-0.113720, -0.952868, -0.281264,
		14.242647, 15.301767, 28.546959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.881246, 15.606869, 28.962879>,  <14.322251, 15.968775, 28.743843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.881246, 15.606869, 28.962879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.756327, 15.412735, 28.636219>,  <14.681376, 15.296254, 28.440222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.756327, 15.412735, 28.636219>,  <14.881246, 15.606869, 28.962879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.756327, 15.412735, 28.636219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893048, 0.143148, -0.426584,
		0.323939, -0.862530, 0.388723,
		-0.312297, -0.485335, -0.816652,
		14.662638, 15.267135, 28.391224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429069, 15.281729, 28.717075>,  <14.881246, 15.606869, 28.962879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429069, 15.281729, 28.717075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180677, 15.253977, 28.404776>,  <15.031643, 15.237326, 28.217396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180677, 15.253977, 28.404776>,  <15.429069, 15.281729, 28.717075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180677, 15.253977, 28.404776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781078, 0.028585, -0.623778,
		0.065594, -0.997181, 0.036439,
		-0.620978, -0.069378, -0.780752,
		14.994384, 15.233163, 28.170549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776843, 14.822643, 28.215424>,  <15.429069, 15.281729, 28.717075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.776843, 14.822643, 28.215424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.511479, 15.030885, 28.000441>,  <15.352261, 15.155829, 27.871450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.511479, 15.030885, 28.000441>,  <15.776843, 14.822643, 28.215424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.511479, 15.030885, 28.000441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680803, 0.121928, -0.722247,
		-0.310474, -0.845048, -0.435317,
		-0.663410, 0.520603, -0.537456,
		15.312456, 15.187066, 27.839203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865110, 14.669882, 27.470955>,  <15.776843, 14.822643, 28.215424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865110, 14.669882, 27.470955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.673345, 15.020755, 27.460279>,  <15.558285, 15.231278, 27.453875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.673345, 15.020755, 27.460279>,  <15.865110, 14.669882, 27.470955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.673345, 15.020755, 27.460279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575476, 0.291270, -0.764192,
		-0.662563, -0.381723, -0.644436,
		-0.479414, 0.877183, -0.026688,
		15.529520, 15.283910, 27.452272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582276, 14.757919, 26.767744>,  <15.865110, 14.669882, 27.470955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.582276, 14.757919, 26.767744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.639870, 15.110942, 26.946793>,  <15.674425, 15.322755, 27.054222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.639870, 15.110942, 26.946793>,  <15.582276, 14.757919, 26.767744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.639870, 15.110942, 26.946793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611712, 0.276183, -0.741304,
		-0.777867, 0.380550, -0.500104,
		0.143983, 0.882556, 0.447621,
		15.683064, 15.375709, 27.081079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304966, 15.238335, 26.387774>,  <15.582276, 14.757919, 26.767744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304966, 15.238335, 26.387774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.597280, 15.423743, 26.588213>,  <15.772668, 15.534988, 26.708477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.597280, 15.423743, 26.588213>,  <15.304966, 15.238335, 26.387774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597280, 15.423743, 26.588213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392088, 0.315879, -0.863995,
		-0.558767, 0.827870, 0.049098,
		0.730785, 0.463521, 0.501100,
		15.816515, 15.562799, 26.738543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267008, 16.016020, 26.299208>,  <15.304966, 15.238335, 26.387774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267008, 16.016020, 26.299208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618716, 15.834880, 26.358274>,  <15.829741, 15.726195, 26.393715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618716, 15.834880, 26.358274>,  <15.267008, 16.016020, 26.299208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618716, 15.834880, 26.358274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238117, 0.149398, -0.959677,
		0.412530, 0.878980, 0.239193,
		0.879272, -0.452852, 0.147669,
		15.882498, 15.699024, 26.402575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854321, 16.422186, 26.022587>,  <15.267008, 16.016020, 26.299208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854321, 16.422186, 26.022587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.992731, 16.047258, 26.006100>,  <16.075777, 15.822302, 25.996208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.992731, 16.047258, 26.006100>,  <15.854321, 16.422186, 26.022587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.992731, 16.047258, 26.006100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337979, 0.165510, -0.926486,
		0.875235, 0.306659, 0.374065,
		0.346027, -0.937319, -0.041216,
		16.096539, 15.766063, 25.993734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448118, 16.480473, 25.648750>,  <15.854321, 16.422186, 26.022587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448118, 16.480473, 25.648750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373125, 16.088032, 25.629618>,  <16.328129, 15.852567, 25.618137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373125, 16.088032, 25.629618>,  <16.448118, 16.480473, 25.648750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373125, 16.088032, 25.629618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311361, -0.013173, -0.950200,
		0.931614, -0.193038, 0.307947,
		-0.187481, -0.981103, -0.047833,
		16.316881, 15.793701, 25.615269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967916, 16.334784, 25.267988>,  <16.448118, 16.480473, 25.648750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.967916, 16.334784, 25.267988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725641, 16.016825, 25.253672>,  <16.580276, 15.826050, 25.245083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725641, 16.016825, 25.253672>,  <16.967916, 16.334784, 25.267988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725641, 16.016825, 25.253672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331269, -0.211011, -0.919638,
		0.723465, -0.568871, 0.391132,
		-0.605689, -0.794896, -0.035790,
		16.543934, 15.778356, 25.242935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.328344, 15.968888, 24.863136>,  <16.967916, 16.334784, 25.267988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.328344, 15.968888, 24.863136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.980516, 15.771413, 24.867464>,  <16.771820, 15.652927, 24.870060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.980516, 15.771413, 24.867464>,  <17.328344, 15.968888, 24.863136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.980516, 15.771413, 24.867464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230035, -0.424371, -0.875782,
		0.436955, -0.759066, 0.482586,
		-0.869571, -0.493689, 0.010819,
		16.719645, 15.623306, 24.870710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.407309, 15.284100, 24.622643>,  <17.328344, 15.968888, 24.863136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.407309, 15.284100, 24.622643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039892, 15.429381, 24.560211>,  <16.819443, 15.516551, 24.522753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039892, 15.429381, 24.560211>,  <17.407309, 15.284100, 24.622643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039892, 15.429381, 24.560211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077544, -0.221604, -0.972049,
		-0.387641, -0.904971, 0.175388,
		-0.918543, 0.363206, -0.156078,
		16.764330, 15.538343, 24.513388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009037, 14.620431, 24.329346>,  <17.407309, 15.284100, 24.622643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009037, 14.620431, 24.329346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810133, 14.948299, 24.215597>,  <16.690790, 15.145020, 24.147346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810133, 14.948299, 24.215597>,  <17.009037, 14.620431, 24.329346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810133, 14.948299, 24.215597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017212, -0.318386, -0.947805,
		-0.867430, -0.476201, 0.144213,
		-0.497261, 0.819672, -0.284374,
		16.660955, 15.194201, 24.130285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.469433, 14.376469, 23.826921>,  <17.009037, 14.620431, 24.329346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.469433, 14.376469, 23.826921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.487938, 14.770009, 23.757761>,  <16.499041, 15.006133, 23.716265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.487938, 14.770009, 23.757761>,  <16.469433, 14.376469, 23.826921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487938, 14.770009, 23.757761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260889, -0.155180, -0.952815,
		-0.964260, 0.089188, 0.249497,
		0.046262, 0.983852, -0.172902,
		16.501816, 15.065165, 23.705891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044544, 14.435745, 23.260986>,  <16.469433, 14.376469, 23.826921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.044544, 14.435745, 23.260986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274492, 14.762936, 23.252571>,  <16.412460, 14.959249, 23.247522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274492, 14.762936, 23.252571>,  <16.044544, 14.435745, 23.260986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274492, 14.762936, 23.252571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005470, -0.021869, -0.999746,
		-0.818227, 0.574837, -0.008098,
		0.574868, 0.817975, -0.021038,
		16.446953, 15.008328, 23.246260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677501, 14.821417, 22.754366>,  <16.044544, 14.435745, 23.260986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677501, 14.821417, 22.754366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.053137, 14.956537, 22.779667>,  <16.278519, 15.037610, 22.794847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.053137, 14.956537, 22.779667>,  <15.677501, 14.821417, 22.754366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.053137, 14.956537, 22.779667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051835, 0.042724, -0.997741,
		-0.339741, 0.940247, 0.022612,
		0.939090, 0.337802, 0.063253,
		16.334864, 15.057878, 22.798643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.715343, 15.321257, 22.341946>,  <15.677501, 14.821417, 22.754366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.715343, 15.321257, 22.341946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091412, 15.188010, 22.370543>,  <16.317053, 15.108063, 22.387701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091412, 15.188010, 22.370543>,  <15.715343, 15.321257, 22.341946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091412, 15.188010, 22.370543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089339, 0.038550, -0.995255,
		0.328779, 0.942097, 0.066004,
		0.940172, -0.333116, 0.071492,
		16.373463, 15.088076, 22.391991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065891, 15.720684, 21.734245>,  <15.715343, 15.321257, 22.341946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065891, 15.720684, 21.734245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.313398, 15.432855, 21.860321>,  <16.461903, 15.260158, 21.935966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.313398, 15.432855, 21.860321>,  <16.065891, 15.720684, 21.734245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.313398, 15.432855, 21.860321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375977, -0.081022, -0.923080,
		0.689760, 0.689675, 0.220409,
		0.618767, -0.719572, 0.315188,
		16.499029, 15.216983, 21.954878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721622, 15.955414, 21.446781>,  <16.065891, 15.720684, 21.734245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721622, 15.955414, 21.446781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764618, 15.566588, 21.530247>,  <16.790415, 15.333293, 21.580326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764618, 15.566588, 21.530247>,  <16.721622, 15.955414, 21.446781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764618, 15.566588, 21.530247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189308, -0.186028, -0.964135,
		0.976017, 0.143133, 0.164024,
		0.107487, -0.972063, 0.208663,
		16.796864, 15.274969, 21.592846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388504, 15.680774, 21.139288>,  <16.721622, 15.955414, 21.446781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.388504, 15.680774, 21.139288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.193007, 15.342008, 21.223064>,  <17.075708, 15.138748, 21.273331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.193007, 15.342008, 21.223064>,  <17.388504, 15.680774, 21.139288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.193007, 15.342008, 21.223064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285326, -0.382033, -0.878999,
		0.824452, -0.369844, 0.428362,
		-0.488742, -0.846915, 0.209442,
		17.046385, 15.087933, 21.285896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863956, 15.091245, 21.091616>,  <17.388504, 15.680774, 21.139288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.863956, 15.091245, 21.091616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.488808, 14.967359, 21.029043>,  <17.263718, 14.893027, 20.991501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.488808, 14.967359, 21.029043>,  <17.863956, 15.091245, 21.091616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.488808, 14.967359, 21.029043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232105, -0.224882, -0.946338,
		0.257917, -0.923853, 0.282798,
		-0.937873, -0.309716, -0.156430,
		17.207445, 14.874444, 20.982115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761900, 14.360005, 20.904762>,  <17.863956, 15.091245, 21.091616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761900, 14.360005, 20.904762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429371, 14.529145, 20.760485>,  <17.229853, 14.630629, 20.673918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429371, 14.529145, 20.760485>,  <17.761900, 14.360005, 20.904762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.429371, 14.529145, 20.760485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254992, -0.286472, -0.923533,
		-0.493845, -0.859728, 0.130327,
		-0.831322, 0.422850, -0.360696,
		17.179974, 14.656000, 20.652275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.505310, 13.898406, 20.490854>,  <17.761900, 14.360005, 20.904762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.505310, 13.898406, 20.490854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.359062, 14.253672, 20.379509>,  <17.271313, 14.466831, 20.312702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.359062, 14.253672, 20.379509>,  <17.505310, 13.898406, 20.490854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.359062, 14.253672, 20.379509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303130, -0.169139, -0.937819,
		-0.880020, -0.427264, -0.207389,
		-0.365619, 0.888165, -0.278362,
		17.249376, 14.520122, 20.296000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409660, 13.747536, 19.805399>,  <17.505310, 13.898406, 20.490854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409660, 13.747536, 19.805399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.401316, 14.146539, 19.832354>,  <17.396309, 14.385941, 19.848526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.401316, 14.146539, 19.832354>,  <17.409660, 13.747536, 19.805399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.401316, 14.146539, 19.832354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368726, 0.070327, -0.926874,
		-0.929304, 0.005511, -0.369275,
		-0.020862, 0.997509, 0.067387,
		17.395058, 14.445791, 19.852570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031904, 14.041453, 19.198631>,  <17.409660, 13.747536, 19.805399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031904, 14.041453, 19.198631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256258, 14.354100, 19.307798>,  <17.390871, 14.541688, 19.373299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256258, 14.354100, 19.307798>,  <17.031904, 14.041453, 19.198631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.256258, 14.354100, 19.307798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130617, 0.241983, -0.961449,
		-0.817526, 0.574909, 0.033632,
		0.560884, 0.781616, 0.272920,
		17.424522, 14.588585, 19.389675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.754440, 14.600275, 18.801189>,  <17.031904, 14.041453, 19.198631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.754440, 14.600275, 18.801189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.119032, 14.723262, 18.910490>,  <17.337788, 14.797053, 18.976070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.119032, 14.723262, 18.910490>,  <16.754440, 14.600275, 18.801189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.119032, 14.723262, 18.910490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187120, 0.281657, -0.941093,
		-0.366318, 0.908919, 0.199192,
		0.911481, 0.307466, 0.273253,
		17.392477, 14.815502, 18.992466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870260, 15.277532, 18.474382>,  <16.754440, 14.600275, 18.801189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870260, 15.277532, 18.474382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241684, 15.148677, 18.548147>,  <17.464539, 15.071364, 18.592405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241684, 15.148677, 18.548147>,  <16.870260, 15.277532, 18.474382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241684, 15.148677, 18.548147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308186, 0.392172, -0.866731,
		0.206884, 0.861643, 0.463433,
		0.928558, -0.322136, 0.184413,
		17.520252, 15.052036, 18.603472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286896, 15.784288, 18.240511>,  <16.870260, 15.277532, 18.474382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286896, 15.784288, 18.240511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547716, 15.481483, 18.257292>,  <17.704208, 15.299799, 18.267361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547716, 15.481483, 18.257292>,  <17.286896, 15.784288, 18.240511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547716, 15.481483, 18.257292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392082, 0.289327, -0.873248,
		0.648924, 0.585850, 0.485467,
		0.652050, -0.757014, 0.041950,
		17.743332, 15.254378, 18.269876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784101, 16.090916, 18.101847>,  <17.286896, 15.784288, 18.240511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.784101, 16.090916, 18.101847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885284, 15.709616, 18.035719>,  <17.945993, 15.480836, 17.996042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885284, 15.709616, 18.035719>,  <17.784101, 16.090916, 18.101847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885284, 15.709616, 18.035719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473708, 0.271026, -0.837941,
		0.843572, 0.133650, 0.520120,
		0.252957, -0.953248, -0.165319,
		17.961172, 15.423641, 17.986124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477711, 16.151571, 18.080563>,  <17.784101, 16.090916, 18.101847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.477711, 16.151571, 18.080563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.334307, 15.861941, 17.844873>,  <18.248264, 15.688164, 17.703459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.334307, 15.861941, 17.844873>,  <18.477711, 16.151571, 18.080563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334307, 15.861941, 17.844873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483323, 0.396031, -0.780742,
		0.798667, -0.564690, 0.207980,
		-0.358511, -0.724074, -0.589225,
		18.226753, 15.644719, 17.668106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.011854, 16.015980, 17.666683>,  <18.477711, 16.151571, 18.080563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.011854, 16.015980, 17.666683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.715185, 15.835858, 17.467827>,  <18.537184, 15.727785, 17.348513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.715185, 15.835858, 17.467827>,  <19.011854, 16.015980, 17.666683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.715185, 15.835858, 17.467827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316728, 0.418219, -0.851338,
		0.591277, -0.788870, -0.167556,
		-0.741670, -0.450307, -0.497141,
		18.492683, 15.700767, 17.318686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.315022, 15.781557, 17.046797>,  <19.011854, 16.015980, 17.666683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.315022, 15.781557, 17.046797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.930630, 15.742180, 16.943392>,  <18.699995, 15.718554, 16.881350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.930630, 15.742180, 16.943392>,  <19.315022, 15.781557, 17.046797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.930630, 15.742180, 16.943392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233935, 0.209514, -0.949409,
		0.147621, -0.972838, -0.178310,
		-0.960980, -0.098440, -0.258510,
		18.642336, 15.712646, 16.865839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.331644, 15.366625, 16.588129>,  <19.315022, 15.781557, 17.046797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.331644, 15.366625, 16.588129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988213, 15.566806, 16.543610>,  <18.782154, 15.686914, 16.516897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988213, 15.566806, 16.543610>,  <19.331644, 15.366625, 16.588129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988213, 15.566806, 16.543610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256108, 0.230610, -0.938737,
		-0.444127, -0.834486, -0.326167,
		-0.858580, 0.500452, -0.111298,
		18.730639, 15.716942, 16.510220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.162949, 15.185983, 16.003006>,  <19.331644, 15.366625, 16.588129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.162949, 15.185983, 16.003006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953522, 15.521719, 16.061499>,  <18.827866, 15.723161, 16.096594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953522, 15.521719, 16.061499>,  <19.162949, 15.185983, 16.003006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.953522, 15.521719, 16.061499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356479, 0.371706, -0.857180,
		-0.773822, -0.396662, -0.493820,
		-0.523567, 0.839341, 0.146232,
		18.796452, 15.773521, 16.105368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762196, 15.512535, 15.318005>,  <19.162949, 15.185983, 16.003006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762196, 15.512535, 15.318005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838984, 15.804307, 15.580631>,  <18.885056, 15.979370, 15.738208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838984, 15.804307, 15.580631>,  <18.762196, 15.512535, 15.318005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838984, 15.804307, 15.580631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620285, 0.428259, -0.657146,
		-0.760522, 0.533411, -0.370241,
		0.191970, 0.729429, 0.656568,
		18.896574, 16.023136, 15.777601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899580, 16.065817, 14.851534>,  <18.762196, 15.512535, 15.318005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899580, 16.065817, 14.851534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.085155, 16.140619, 15.197895>,  <19.196501, 16.185501, 15.405712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.085155, 16.140619, 15.197895>,  <18.899580, 16.065817, 14.851534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.085155, 16.140619, 15.197895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750419, 0.436492, -0.496332,
		-0.470776, 0.880059, 0.062174,
		0.463940, 0.187005, 0.865903,
		19.224337, 16.196720, 15.457666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069178, 16.791174, 15.150533>,  <18.899580, 16.065817, 14.851534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069178, 16.791174, 15.150533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303444, 16.467356, 15.166686>,  <19.444004, 16.273066, 15.176378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303444, 16.467356, 15.166686>,  <19.069178, 16.791174, 15.150533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303444, 16.467356, 15.166686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557987, 0.366539, -0.744513,
		0.587915, 0.458570, 0.666385,
		0.585667, -0.809545, 0.040382,
		19.479145, 16.224493, 15.178801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665148, 17.038979, 15.264131>,  <19.069178, 16.791174, 15.150533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665148, 17.038979, 15.264131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.688330, 16.696634, 15.058550>,  <19.702238, 16.491228, 14.935202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.688330, 16.696634, 15.058550>,  <19.665148, 17.038979, 15.264131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.688330, 16.696634, 15.058550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557424, 0.454832, -0.694555,
		0.828203, -0.246236, 0.503437,
		0.057955, -0.855860, -0.513951,
		19.705717, 16.439877, 14.904365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304277, 16.706051, 14.915091>,  <19.665148, 17.038979, 15.264131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.304277, 16.706051, 14.915091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.491789, 16.813181, 15.251785>,  <20.604296, 16.877459, 15.453802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.491789, 16.813181, 15.251785>,  <20.304277, 16.706051, 14.915091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.491789, 16.813181, 15.251785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474672, 0.727265, -0.495754,
		-0.744940, 0.631946, 0.213797,
		0.468777, 0.267823, 0.841736,
		20.632421, 16.893528, 15.504306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.280069, 17.457121, 15.064486>,  <20.304277, 16.706051, 14.915091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.280069, 17.457121, 15.064486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615170, 17.289553, 15.204589>,  <20.816229, 17.189013, 15.288651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615170, 17.289553, 15.204589>,  <20.280069, 17.457121, 15.064486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.615170, 17.289553, 15.204589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543571, 0.700866, -0.461863,
		-0.052000, 0.577316, 0.814863,
		0.837751, -0.418919, 0.350258,
		20.866495, 17.163877, 15.309667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.665443, 17.896996, 15.403078>,  <20.280069, 17.457121, 15.064486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.665443, 17.896996, 15.403078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.936850, 17.639269, 15.261955>,  <21.099693, 17.484632, 15.177281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.936850, 17.639269, 15.261955>,  <20.665443, 17.896996, 15.403078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.936850, 17.639269, 15.261955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527620, 0.761628, -0.376219,
		0.511111, 0.069123, 0.856731,
		0.678515, -0.644318, -0.352806,
		21.140404, 17.445974, 15.156114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.281172, 18.017248, 15.687203>,  <20.665443, 17.896996, 15.403078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.281172, 18.017248, 15.687203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.335835, 17.846857, 15.329462>,  <21.368633, 17.744623, 15.114818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.335835, 17.846857, 15.329462>,  <21.281172, 18.017248, 15.687203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335835, 17.846857, 15.329462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417011, 0.843670, -0.338117,
		0.898569, -0.326749, 0.292931,
		0.136658, -0.425977, -0.894353,
		21.376831, 17.719065, 15.061156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974979, 18.164160, 15.402271>,  <21.281172, 18.017248, 15.687203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974979, 18.164160, 15.402271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.791241, 18.035328, 15.071148>,  <21.680998, 17.958029, 14.872474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.791241, 18.035328, 15.071148>,  <21.974979, 18.164160, 15.402271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.791241, 18.035328, 15.071148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537136, 0.641527, -0.547657,
		0.707450, -0.696210, -0.121683,
		-0.459347, -0.322080, -0.827808,
		21.653437, 17.938704, 14.822805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529625, 18.128183, 14.872915>,  <21.974979, 18.164160, 15.402271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529625, 18.128183, 14.872915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.186752, 18.133362, 14.666975>,  <21.981030, 18.136469, 14.543410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.186752, 18.133362, 14.666975>,  <22.529625, 18.128183, 14.872915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.186752, 18.133362, 14.666975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447821, 0.512460, -0.732694,
		0.254353, -0.858613, -0.445070,
		-0.857182, 0.012949, -0.514851,
		21.929598, 18.137247, 14.512520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.604004, 17.932709, 14.182891>,  <22.529625, 18.128183, 14.872915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.604004, 17.932709, 14.182891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273451, 18.157606, 14.195385>,  <22.075119, 18.292543, 14.202882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273451, 18.157606, 14.195385>,  <22.604004, 17.932709, 14.182891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.273451, 18.157606, 14.195385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346155, 0.550966, -0.759350,
		-0.444148, -0.616702, -0.649932,
		-0.826383, 0.562241, 0.031236,
		22.025536, 18.326279, 14.204756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.434893, 18.155878, 13.519207>,  <22.604004, 17.932709, 14.182891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.434893, 18.155878, 13.519207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.195358, 18.420870, 13.699216>,  <22.051638, 18.579865, 13.807221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.195358, 18.420870, 13.699216>,  <22.434893, 18.155878, 13.519207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.195358, 18.420870, 13.699216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355778, 0.723480, -0.591608,
		-0.717509, -0.194168, -0.668940,
		-0.598835, 0.662477, 0.450022,
		22.015707, 18.619614, 13.834223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.031664, 18.425146, 12.953127>,  <22.434893, 18.155878, 13.519207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.031664, 18.425146, 12.953127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032955, 18.693882, 13.249402>,  <22.033730, 18.855124, 13.427167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032955, 18.693882, 13.249402>,  <22.031664, 18.425146, 12.953127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032955, 18.693882, 13.249402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045939, 0.739810, -0.671246,
		-0.998939, 0.036191, -0.028477,
		0.003226, 0.671842, 0.740688,
		22.033922, 18.895435, 13.471608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676647, 19.023912, 12.743697>,  <22.031664, 18.425146, 12.953127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.676647, 19.023912, 12.743697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887308, 19.169500, 13.050986>,  <22.013704, 19.256853, 13.235359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887308, 19.169500, 13.050986>,  <21.676647, 19.023912, 12.743697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887308, 19.169500, 13.050986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029959, 0.895196, -0.444665,
		-0.849553, 0.257199, 0.460552,
		0.526652, 0.363969, 0.768222,
		22.045303, 19.278690, 13.281453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.463120, 19.704338, 12.773125>,  <21.676647, 19.023912, 12.743697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.463120, 19.704338, 12.773125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.788834, 19.757744, 12.999086>,  <21.984262, 19.789787, 13.134664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.788834, 19.757744, 12.999086>,  <21.463120, 19.704338, 12.773125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.788834, 19.757744, 12.999086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062097, 0.947567, -0.313465,
		-0.577137, 0.290328, 0.763297,
		0.814283, 0.133514, 0.564904,
		22.033119, 19.797798, 13.168558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471746, 20.343821, 13.193159>,  <21.463120, 19.704338, 12.773125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471746, 20.343821, 13.193159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.853018, 20.236502, 13.137351>,  <22.081781, 20.172112, 13.103867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.853018, 20.236502, 13.137351>,  <21.471746, 20.343821, 13.193159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.853018, 20.236502, 13.137351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216099, 0.927058, -0.306373,
		0.211541, 0.261878, 0.941632,
		0.953180, -0.268296, -0.139519,
		22.138971, 20.156013, 13.095495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.846973, 20.922047, 13.425626>,  <21.471746, 20.343821, 13.193159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.846973, 20.922047, 13.425626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.092314, 20.714470, 13.187467>,  <22.239519, 20.589924, 13.044571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.092314, 20.714470, 13.187467>,  <21.846973, 20.922047, 13.425626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.092314, 20.714470, 13.187467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443151, 0.850124, -0.284441,
		0.653770, -0.089389, 0.751395,
		0.613353, -0.518940, -0.595398,
		22.276320, 20.558788, 13.008847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.334757, 21.296024, 13.560696>,  <21.846973, 20.922047, 13.425626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.334757, 21.296024, 13.560696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478855, 21.110443, 13.236975>,  <22.565313, 20.999094, 13.042742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478855, 21.110443, 13.236975>,  <22.334757, 21.296024, 13.560696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.478855, 21.110443, 13.236975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549549, 0.806580, -0.217772,
		0.753804, -0.366301, 0.545531,
		0.360244, -0.463954, -0.809303,
		22.586927, 20.971256, 12.994184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.986032, 21.489384, 13.495832>,  <22.334757, 21.296024, 13.560696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.986032, 21.489384, 13.495832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879288, 21.385059, 13.124723>,  <22.815241, 21.322464, 12.902058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879288, 21.385059, 13.124723>,  <22.986032, 21.489384, 13.495832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.879288, 21.385059, 13.124723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524813, 0.768096, -0.366880,
		0.808305, -0.584813, -0.068097,
		-0.266861, -0.260812, -0.927773,
		22.799229, 21.306816, 12.846392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.669592, 21.576334, 13.076577>,  <22.986032, 21.489384, 13.495832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.669592, 21.576334, 13.076577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358856, 21.572317, 12.824729>,  <23.172415, 21.569906, 12.673620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.358856, 21.572317, 12.824729>,  <23.669592, 21.576334, 13.076577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.358856, 21.572317, 12.824729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376047, 0.794604, -0.476648,
		0.505087, -0.607045, -0.613501,
		-0.776837, -0.010043, -0.629621,
		23.125805, 21.569304, 12.635842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.942694, 21.697870, 12.404152>,  <23.669592, 21.576334, 13.076577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.942694, 21.697870, 12.404152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.549559, 21.759569, 12.363675>,  <23.313679, 21.796589, 12.339389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.549559, 21.759569, 12.363675>,  <23.942694, 21.697870, 12.404152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.549559, 21.759569, 12.363675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182758, 0.888850, -0.420173,
		0.025132, -0.431454, -0.901785,
		-0.982837, 0.154249, -0.101191,
		23.254707, 21.805843, 12.333318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.884714, 21.901896, 11.715746>,  <23.942694, 21.697870, 12.404152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.884714, 21.901896, 11.715746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.577656, 22.031294, 11.937040>,  <23.393421, 22.108932, 12.069817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.577656, 22.031294, 11.937040>,  <23.884714, 21.901896, 11.715746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.577656, 22.031294, 11.937040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171706, 0.935509, -0.308771,
		-0.617442, -0.142034, -0.773687,
		-0.767647, 0.323495, 0.553235,
		23.347363, 22.128342, 12.103011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.555332, 22.395294, 11.372797>,  <23.884714, 21.901896, 11.715746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.555332, 22.395294, 11.372797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.422943, 22.509037, 11.732707>,  <23.343510, 22.577282, 11.948653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.422943, 22.509037, 11.732707>,  <23.555332, 22.395294, 11.372797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.422943, 22.509037, 11.732707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286979, 0.938684, -0.191091,
		-0.898943, 0.194971, -0.392285,
		-0.330974, 0.284358, 0.899776,
		23.323650, 22.594345, 12.002640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.136600, 22.955872, 11.264476>,  <23.555332, 22.395294, 11.372797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.136600, 22.955872, 11.264476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233505, 22.990553, 11.651008>,  <23.291649, 23.011362, 11.882927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233505, 22.990553, 11.651008>,  <23.136600, 22.955872, 11.264476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.233505, 22.990553, 11.651008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307612, 0.937747, -0.161259,
		-0.920154, 0.336322, 0.200512,
		0.242264, 0.086703, 0.966328,
		23.306185, 23.016563, 11.940907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.835897, 23.674000, 11.505260>,  <23.136600, 22.955872, 11.264476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.835897, 23.674000, 11.505260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.114550, 23.566235, 11.771230>,  <23.281740, 23.501575, 11.930811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.114550, 23.566235, 11.771230>,  <22.835897, 23.674000, 11.505260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.114550, 23.566235, 11.771230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356941, 0.934116, 0.004522,
		-0.622333, 0.234188, 0.746898,
		0.696631, -0.269413, 0.664923,
		23.323540, 23.485411, 11.970707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811384, 24.115959, 12.063216>,  <22.835897, 23.674000, 11.505260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811384, 24.115959, 12.063216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191629, 23.998697, 12.104005>,  <23.419777, 23.928339, 12.128478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.191629, 23.998697, 12.104005>,  <22.811384, 24.115959, 12.063216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.191629, 23.998697, 12.104005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276664, 0.949225, 0.149764,
		-0.140698, -0.114155, 0.983450,
		0.950611, -0.293157, 0.101971,
		23.476812, 23.910749, 12.134596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.903387, 24.358028, 12.714330>,  <22.811384, 24.115959, 12.063216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.903387, 24.358028, 12.714330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.266209, 24.291830, 12.559479>,  <23.483902, 24.252111, 12.466568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.266209, 24.291830, 12.559479>,  <22.903387, 24.358028, 12.714330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.266209, 24.291830, 12.559479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326297, 0.857400, 0.397989,
		0.266057, -0.487315, 0.831708,
		0.907052, -0.165496, -0.387126,
		23.538324, 24.242182, 12.443340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.485804, 24.601959, 13.210887>,  <22.903387, 24.358028, 12.714330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.485804, 24.601959, 13.210887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.679689, 24.602316, 12.861018>,  <23.796021, 24.602530, 12.651097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.679689, 24.602316, 12.861018>,  <23.485804, 24.601959, 13.210887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.679689, 24.602316, 12.861018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445001, 0.860654, 0.247483,
		0.753011, -0.509189, 0.416775,
		0.484715, 0.000892, -0.874672,
		23.825104, 24.602583, 12.598617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.133924, 24.638315, 13.401453>,  <23.485804, 24.601959, 13.210887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.133924, 24.638315, 13.401453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116512, 24.789566, 13.031562>,  <24.106066, 24.880318, 12.809627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116512, 24.789566, 13.031562>,  <24.133924, 24.638315, 13.401453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116512, 24.789566, 13.031562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671816, 0.696157, 0.253040,
		0.739438, -0.610233, -0.284337,
		-0.043530, 0.378130, -0.924729,
		24.103453, 24.903006, 12.754143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.802187, 24.802076, 13.146044>,  <24.133924, 24.638315, 13.401453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.802187, 24.802076, 13.146044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531139, 25.034443, 12.965658>,  <24.368511, 25.173862, 12.857427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531139, 25.034443, 12.965658>,  <24.802187, 24.802076, 13.146044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531139, 25.034443, 12.965658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514949, 0.812591, 0.272989,
		0.525033, -0.047240, -0.849770,
		-0.677620, 0.580916, -0.450963,
		24.327854, 25.208717, 12.830369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393843, 24.329504, 12.870453>,  <24.802187, 24.802076, 13.146044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393843, 24.329504, 12.870453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693106, 24.594889, 12.873963>,  <25.872663, 24.754120, 12.876070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693106, 24.594889, 12.873963>,  <25.393843, 24.329504, 12.870453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693106, 24.594889, 12.873963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639063, -0.724079, 0.259440,
		0.178483, -0.188494, -0.965719,
		0.748160, 0.663461, 0.008776,
		25.917553, 24.793926, 12.876596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771467, 23.969542, 12.517744>,  <25.393843, 24.329504, 12.870453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771467, 23.969542, 12.517744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013699, 24.204109, 12.732923>,  <26.159037, 24.344851, 12.862029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013699, 24.204109, 12.732923>,  <25.771467, 23.969542, 12.517744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013699, 24.204109, 12.732923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473718, -0.808820, 0.348427,
		0.639426, 0.043835, -0.767602,
		0.605579, 0.586421, 0.537945,
		26.195372, 24.380035, 12.894306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457478, 23.644680, 12.342515>,  <25.771467, 23.969542, 12.517744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457478, 23.644680, 12.342515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490088, 23.873985, 12.668637>,  <26.509653, 24.011568, 12.864310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490088, 23.873985, 12.668637>,  <26.457478, 23.644680, 12.342515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490088, 23.873985, 12.668637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523528, -0.720717, 0.454406,
		0.848099, 0.389789, -0.358878,
		0.081527, 0.573264, 0.815305,
		26.514545, 24.045965, 12.913229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131081, 23.834545, 12.555649>,  <26.457478, 23.644680, 12.342515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131081, 23.834545, 12.555649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873404, 23.747501, 12.848950>,  <26.718798, 23.695274, 13.024931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873404, 23.747501, 12.848950>,  <27.131081, 23.834545, 12.555649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873404, 23.747501, 12.848950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503604, -0.842218, 0.192488,
		0.575673, 0.493269, 0.652140,
		-0.644193, -0.217611, 0.733254,
		26.680145, 23.682219, 13.068927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440712, 23.911806, 13.209541>,  <27.131081, 23.834545, 12.555649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440712, 23.911806, 13.209541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152357, 23.643276, 13.140670>,  <26.979343, 23.482159, 13.099347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152357, 23.643276, 13.140670>,  <27.440712, 23.911806, 13.209541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152357, 23.643276, 13.140670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600349, -0.729009, 0.328828,
		-0.346270, 0.133681, 0.928562,
		-0.720888, -0.671324, -0.172178,
		26.936090, 23.441879, 13.089016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380644, 23.457085, 13.838569>,  <27.440712, 23.911806, 13.209541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380644, 23.457085, 13.838569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250793, 23.245470, 13.524948>,  <27.172884, 23.118502, 13.336776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250793, 23.245470, 13.524948>,  <27.380644, 23.457085, 13.838569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250793, 23.245470, 13.524948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550518, -0.779748, 0.298200,
		-0.769122, -0.334831, 0.544371,
		-0.324626, -0.529038, -0.784052,
		27.153406, 23.086760, 13.289733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385410, 22.748917, 13.988206>,  <27.380644, 23.457085, 13.838569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385410, 22.748917, 13.988206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380571, 22.712732, 13.589875>,  <27.377668, 22.691021, 13.350877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380571, 22.712732, 13.589875>,  <27.385410, 22.748917, 13.988206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380571, 22.712732, 13.589875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503693, -0.860870, 0.072082,
		-0.863798, -0.500719, 0.055979,
		-0.012098, -0.090460, -0.995827,
		27.376942, 22.685595, 13.291127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086155, 22.103998, 13.906241>,  <27.385410, 22.748917, 13.988206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086155, 22.103998, 13.906241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342495, 22.241817, 13.631841>,  <27.496300, 22.324509, 13.467200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342495, 22.241817, 13.631841>,  <27.086155, 22.103998, 13.906241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342495, 22.241817, 13.631841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524102, -0.849320, 0.063033,
		-0.560918, -0.399930, -0.724864,
		0.640850, 0.344546, -0.686003,
		27.534750, 22.345181, 13.426040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114634, 21.473894, 13.461674>,  <27.086155, 22.103998, 13.906241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114634, 21.473894, 13.461674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939577, 21.294418, 13.149995>,  <26.834543, 21.186733, 12.962988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939577, 21.294418, 13.149995>,  <27.114634, 21.473894, 13.461674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939577, 21.294418, 13.149995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520348, -0.580349, 0.626444,
		-0.733285, 0.679612, 0.020511,
		-0.437643, -0.448689, -0.779196,
		26.808285, 21.159811, 12.916236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523039, 21.266163, 13.783383>,  <27.114634, 21.473894, 13.461674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523039, 21.266163, 13.783383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513000, 21.074854, 13.432242>,  <26.506977, 20.960068, 13.221558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513000, 21.074854, 13.432242>,  <26.523039, 21.266163, 13.783383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513000, 21.074854, 13.432242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634918, -0.670655, 0.383538,
		-0.772172, 0.566990, -0.286832,
		-0.025097, -0.478272, -0.877853,
		26.505472, 20.931372, 13.168886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893421, 21.194416, 13.651518>,  <26.523039, 21.266163, 13.783383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893421, 21.194416, 13.651518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076410, 20.905455, 13.444115>,  <26.186205, 20.732079, 13.319673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076410, 20.905455, 13.444115>,  <25.893421, 21.194416, 13.651518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076410, 20.905455, 13.444115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737797, -0.633848, 0.232149,
		-0.496360, 0.276351, -0.822956,
		0.457474, -0.722404, -0.518507,
		26.213652, 20.688734, 13.288562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400805, 20.907494, 13.296504>,  <25.893421, 21.194416, 13.651518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400805, 20.907494, 13.296504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675978, 20.617422, 13.284719>,  <25.841082, 20.443380, 13.277649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675978, 20.617422, 13.284719>,  <25.400805, 20.907494, 13.296504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675978, 20.617422, 13.284719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699431, -0.673253, 0.239848,
		-0.193767, -0.144392, -0.970363,
		0.687932, -0.725176, -0.029462,
		25.882357, 20.399870, 13.275881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067698, 20.260586, 13.081363>,  <25.400805, 20.907494, 13.296504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067698, 20.260586, 13.081363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412384, 20.119108, 13.226880>,  <25.619196, 20.034222, 13.314191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412384, 20.119108, 13.226880>,  <25.067698, 20.260586, 13.081363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412384, 20.119108, 13.226880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483749, -0.789011, 0.378746,
		0.153076, -0.502357, -0.851003,
		0.861716, -0.353695, 0.363793,
		25.670898, 20.013000, 13.336018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145247, 19.531391, 12.932174>,  <25.067698, 20.260586, 13.081363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145247, 19.531391, 12.932174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400011, 19.565357, 13.238673>,  <25.552870, 19.585737, 13.422573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400011, 19.565357, 13.238673>,  <25.145247, 19.531391, 12.932174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400011, 19.565357, 13.238673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346673, -0.856212, 0.383039,
		0.688596, -0.509599, -0.515892,
		0.636909, 0.084913, 0.766248,
		25.591084, 19.590832, 13.468548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443600, 19.020212, 12.972512>,  <25.145247, 19.531391, 12.932174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443600, 19.020212, 12.972512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513184, 19.149282, 13.344666>,  <25.554934, 19.226725, 13.567959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513184, 19.149282, 13.344666>,  <25.443600, 19.020212, 12.972512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513184, 19.149282, 13.344666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369323, -0.854451, 0.365396,
		0.912874, -0.407177, -0.029468,
		0.173960, 0.322678, 0.930385,
		25.565372, 19.246086, 13.623782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741287, 18.446558, 13.313039>,  <25.443600, 19.020212, 12.972512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741287, 18.446558, 13.313039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590519, 18.701902, 13.581493>,  <25.500057, 18.855110, 13.742566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590519, 18.701902, 13.581493>,  <25.741287, 18.446558, 13.313039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590519, 18.701902, 13.581493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477739, -0.754745, 0.449583,
		0.793534, -0.151172, 0.589449,
		-0.376920, 0.638363, 0.671137,
		25.477444, 18.893412, 13.782834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940289, 18.153545, 13.963020>,  <25.741287, 18.446558, 13.313039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940289, 18.153545, 13.963020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622406, 18.395172, 13.986851>,  <25.431677, 18.540148, 14.001149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622406, 18.395172, 13.986851>,  <25.940289, 18.153545, 13.963020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622406, 18.395172, 13.986851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495846, -0.702660, 0.510300,
		0.350116, 0.375997, 0.857931,
		-0.794705, 0.604066, 0.059576,
		25.383995, 18.576391, 14.004724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667492, 18.097872, 14.624878>,  <25.940289, 18.153545, 13.963020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667492, 18.097872, 14.624878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361935, 18.244513, 14.412436>,  <25.178600, 18.332497, 14.284971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361935, 18.244513, 14.412436>,  <25.667492, 18.097872, 14.624878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361935, 18.244513, 14.412436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625676, -0.622346, 0.470334,
		-0.158105, 0.691584, 0.704780,
		-0.763893, 0.366601, -0.531104,
		25.132767, 18.354492, 14.253105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088924, 18.137947, 15.093690>,  <25.667492, 18.097872, 14.624878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088924, 18.137947, 15.093690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900631, 18.150055, 14.740987>,  <24.787655, 18.157320, 14.529366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900631, 18.150055, 14.740987>,  <25.088924, 18.137947, 15.093690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900631, 18.150055, 14.740987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712166, -0.602978, 0.359495,
		-0.520798, 0.797183, 0.305398,
		-0.470731, 0.030270, -0.881757,
		24.759411, 18.159136, 14.476460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.365826, 18.286152, 15.274951>,  <25.088924, 18.137947, 15.093690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.365826, 18.286152, 15.274951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378443, 18.145329, 14.900773>,  <24.386013, 18.060835, 14.676266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378443, 18.145329, 14.900773>,  <24.365826, 18.286152, 15.274951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378443, 18.145329, 14.900773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713324, -0.663510, 0.225663,
		-0.700124, 0.660158, -0.272062,
		0.031543, -0.352060, -0.935446,
		24.387905, 18.039711, 14.620139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.743774, 18.068653, 15.219702>,  <24.365826, 18.286152, 15.274951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.743774, 18.068653, 15.219702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953648, 17.879395, 14.936621>,  <24.079571, 17.765841, 14.766772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953648, 17.879395, 14.936621>,  <23.743774, 18.068653, 15.219702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.953648, 17.879395, 14.936621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457368, -0.857823, 0.234422,
		-0.717999, 0.200683, -0.666486,
		0.524683, -0.473145, -0.707702,
		24.111052, 17.737452, 14.724310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.278755, 17.636782, 14.788335>,  <23.743774, 18.068653, 15.219702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.278755, 17.636782, 14.788335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.635071, 17.476179, 14.703211>,  <23.848860, 17.379818, 14.652136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.635071, 17.476179, 14.703211>,  <23.278755, 17.636782, 14.788335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.635071, 17.476179, 14.703211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398324, -0.915307, 0.059591,
		-0.218713, 0.031684, -0.975275,
		0.890788, -0.401508, -0.212810,
		23.902308, 17.355726, 14.639368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.054625, 16.983597, 14.306149>,  <23.278755, 17.636782, 14.788335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.054625, 16.983597, 14.306149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.423422, 16.907715, 14.441169>,  <23.644701, 16.862185, 14.522181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.423422, 16.907715, 14.441169>,  <23.054625, 16.983597, 14.306149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.423422, 16.907715, 14.441169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237151, -0.965784, 0.104982,
		0.306085, -0.176843, -0.935435,
		0.921993, -0.189706, 0.337550,
		23.700020, 16.850803, 14.542434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.233206, 16.405638, 13.957029>,  <23.054625, 16.983597, 14.306149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.233206, 16.405638, 13.957029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465580, 16.410318, 14.282576>,  <23.605003, 16.413128, 14.477903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465580, 16.410318, 14.282576>,  <23.233206, 16.405638, 13.957029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465580, 16.410318, 14.282576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273154, -0.939108, 0.208480,
		0.766748, -0.343424, -0.542362,
		0.580933, 0.011704, 0.813867,
		23.639860, 16.413830, 14.526735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550779, 15.738217, 13.948205>,  <23.233206, 16.405638, 13.957029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550779, 15.738217, 13.948205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.626995, 15.860497, 14.321352>,  <23.672724, 15.933866, 14.545240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.626995, 15.860497, 14.321352>,  <23.550779, 15.738217, 13.948205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.626995, 15.860497, 14.321352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272922, -0.896318, 0.349468,
		0.942978, -0.321187, -0.087352,
		0.190540, 0.305701, 0.932867,
		23.684156, 15.952208, 14.601213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.810122, 15.051902, 14.336670>,  <23.550779, 15.738217, 13.948205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.810122, 15.051902, 14.336670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.679407, 15.315551, 14.607599>,  <23.600979, 15.473741, 14.770157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.679407, 15.315551, 14.607599>,  <23.810122, 15.051902, 14.336670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.679407, 15.315551, 14.607599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770586, -0.600751, 0.212825,
		0.547181, -0.452389, 0.704228,
		-0.326786, 0.659122, 0.677325,
		23.581371, 15.513288, 14.810797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.634256, 14.664831, 15.062497>,  <23.810122, 15.051902, 14.336670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.634256, 14.664831, 15.062497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.430538, 15.008759, 15.047896>,  <23.308308, 15.215115, 15.039136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.430538, 15.008759, 15.047896>,  <23.634256, 14.664831, 15.062497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.430538, 15.008759, 15.047896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739105, -0.415278, 0.530348,
		0.440845, 0.297081, 0.846994,
		-0.509294, 0.859818, -0.036501,
		23.277750, 15.266704, 15.036946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.242882, 14.511600, 15.382150>,  <23.634256, 14.664831, 15.062497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.242882, 14.511600, 15.382150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514538, 14.748910, 15.555030>,  <24.677530, 14.891295, 15.658758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514538, 14.748910, 15.555030>,  <24.242882, 14.511600, 15.382150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.514538, 14.748910, 15.555030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733654, -0.566995, -0.374524,
		0.022861, 0.571440, -0.820325,
		0.679138, 0.593273, 0.432201,
		24.718279, 14.926892, 15.684690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620806, 14.827232, 14.836907>,  <24.242882, 14.511600, 15.382150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620806, 14.827232, 14.836907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812614, 14.750415, 15.179410>,  <24.927700, 14.704325, 15.384912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812614, 14.750415, 15.179410>,  <24.620806, 14.827232, 14.836907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812614, 14.750415, 15.179410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638903, -0.592479, -0.490684,
		0.601548, 0.782360, -0.161411,
		0.479524, -0.192044, 0.856257,
		24.956472, 14.692801, 15.436287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267254, 15.060021, 14.851494>,  <24.620806, 14.827232, 14.836907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267254, 15.060021, 14.851494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280500, 14.749582, 15.103392>,  <25.288448, 14.563319, 15.254530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280500, 14.749582, 15.103392>,  <25.267254, 15.060021, 14.851494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280500, 14.749582, 15.103392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609374, -0.483746, -0.628214,
		0.792191, 0.404553, 0.456914,
		0.033116, -0.776097, 0.629743,
		25.290436, 14.516753, 15.292315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981121, 14.790366, 14.916788>,  <25.267254, 15.060021, 14.851494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981121, 14.790366, 14.916788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712755, 14.506602, 15.003148>,  <25.551737, 14.336344, 15.054964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712755, 14.506602, 15.003148>,  <25.981121, 14.790366, 14.916788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712755, 14.506602, 15.003148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398378, -0.590389, -0.701952,
		0.625436, -0.384939, 0.678713,
		-0.670913, -0.709410, 0.215899,
		25.511480, 14.293779, 15.067918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409679, 14.127962, 15.006299>,  <25.981121, 14.790366, 14.916788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409679, 14.127962, 15.006299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034485, 14.067281, 14.881613>,  <25.809368, 14.030872, 14.806801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034485, 14.067281, 14.881613>,  <26.409679, 14.127962, 15.006299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034485, 14.067281, 14.881613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341621, -0.557391, -0.756711,
		-0.058951, -0.816273, 0.574651,
		-0.937987, -0.151704, -0.311714,
		25.753088, 14.021770, 14.788098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760010, 14.819846, 15.215569>,  <26.409679, 14.127962, 15.006299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760010, 14.819846, 15.215569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786444, 15.207389, 15.120113>,  <26.802303, 15.439915, 15.062840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786444, 15.207389, 15.120113>,  <26.760010, 14.819846, 15.215569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786444, 15.207389, 15.120113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592480, -0.154335, -0.790663,
		-0.802870, 0.193639, 0.563830,
		0.066085, 0.968858, -0.238638,
		26.806269, 15.498046, 15.048522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<10.743410, 16.932768, 24.096176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.586651, 16.569540, 24.037081>,  <10.492596, 16.351603, 24.001623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.586651, 16.569540, 24.037081>,  <10.743410, 16.932768, 24.096176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.586651, 16.569540, 24.037081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464607, -0.056740, -0.883697,
		0.794075, -0.414959, 0.444132,
		-0.391898, -0.908069, -0.147737,
		10.469081, 16.297119, 23.992760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.233721, 16.410131, 24.054447>,  <10.743410, 16.932768, 24.096176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.233721, 16.410131, 24.054447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.912243, 16.302137, 23.842340>,  <10.719356, 16.237341, 23.715076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.912243, 16.302137, 23.842340>,  <11.233721, 16.410131, 24.054447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.912243, 16.302137, 23.842340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520424, 0.113128, -0.846381,
		0.288499, -0.956195, 0.049587,
		-0.803696, -0.269986, -0.530265,
		10.671134, 16.221142, 23.683262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.563809, 16.062248, 23.504616>,  <11.233721, 16.410131, 24.054447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.563809, 16.062248, 23.504616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.185925, 16.093092, 23.377132>,  <10.959194, 16.111599, 23.300642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.185925, 16.093092, 23.377132>,  <11.563809, 16.062248, 23.504616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.185925, 16.093092, 23.377132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299942, -0.189517, -0.934943,
		-0.132494, -0.978845, 0.155911,
		-0.944711, 0.077110, -0.318706,
		10.902511, 16.116226, 23.281521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.369892, 15.426482, 23.102736>,  <11.563809, 16.062248, 23.504616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.369892, 15.426482, 23.102736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.122641, 15.718055, 22.985043>,  <10.974290, 15.892999, 22.914427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.122641, 15.718055, 22.985043>,  <11.369892, 15.426482, 23.102736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.122641, 15.718055, 22.985043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161194, -0.248813, -0.955044,
		-0.769372, -0.637770, 0.036299,
		-0.618129, 0.728932, -0.294235,
		10.937201, 15.936734, 22.896772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.177610, 15.204204, 22.411991>,  <11.369892, 15.426482, 23.102736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.177610, 15.204204, 22.411991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.050196, 15.583103, 22.426161>,  <10.973746, 15.810443, 22.434664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.050196, 15.583103, 22.426161>,  <11.177610, 15.204204, 22.411991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.050196, 15.583103, 22.426161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130795, 0.080937, -0.988100,
		-0.938843, -0.310113, -0.149677,
		-0.318537, 0.947248, 0.035426,
		10.954635, 15.867277, 22.436789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.626840, 15.322790, 21.975351>,  <11.177610, 15.204204, 22.411991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.626840, 15.322790, 21.975351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.778515, 15.687785, 22.036777>,  <10.869520, 15.906782, 22.073633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.778515, 15.687785, 22.036777>,  <10.626840, 15.322790, 21.975351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.778515, 15.687785, 22.036777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128996, 0.112212, -0.985276,
		-0.916283, 0.393416, -0.075158,
		0.379189, 0.912487, 0.153567,
		10.892272, 15.961532, 22.082848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.354643, 15.776444, 21.506815>,  <10.626840, 15.322790, 21.975351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.354643, 15.776444, 21.506815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.687222, 15.972854, 21.610807>,  <10.886770, 16.090698, 21.673203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.687222, 15.972854, 21.610807>,  <10.354643, 15.776444, 21.506815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.687222, 15.972854, 21.610807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234634, 0.113840, -0.965395,
		-0.503627, 0.863677, -0.020559,
		0.831449, 0.491022, 0.259981,
		10.936657, 16.120161, 21.688801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.365631, 16.359003, 21.025803>,  <10.354643, 15.776444, 21.506815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.365631, 16.359003, 21.025803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.742196, 16.328283, 21.157162>,  <10.968135, 16.309851, 21.235977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.742196, 16.328283, 21.157162>,  <10.365631, 16.359003, 21.025803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.742196, 16.328283, 21.157162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336869, 0.167432, -0.926545,
		0.016175, 0.982888, 0.183494,
		0.941413, -0.076800, 0.328396,
		11.024620, 16.305243, 21.255680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.859518, 16.888470, 20.658085>,  <10.365631, 16.359003, 21.025803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.859518, 16.888470, 20.658085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.111006, 16.621553, 20.817801>,  <11.261899, 16.461403, 20.913630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.111006, 16.621553, 20.817801>,  <10.859518, 16.888470, 20.658085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.111006, 16.621553, 20.817801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560655, 0.033160, -0.827385,
		0.538866, 0.744058, 0.394969,
		0.628720, -0.667291, 0.399291,
		11.299622, 16.421366, 20.937588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.537225, 17.250788, 20.534458>,  <10.859518, 16.888470, 20.658085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.537225, 17.250788, 20.534458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.571091, 16.856508, 20.592739>,  <11.591411, 16.619940, 20.627708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.571091, 16.856508, 20.592739>,  <11.537225, 17.250788, 20.534458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.571091, 16.856508, 20.592739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744955, -0.034494, -0.666223,
		0.661721, 0.164949, 0.731381,
		0.084665, -0.985699, 0.145705,
		11.596490, 16.560799, 20.636450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.208799, 17.101645, 20.652702>,  <11.537225, 17.250788, 20.534458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.208799, 17.101645, 20.652702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.038134, 16.766459, 20.516603>,  <11.935735, 16.565346, 20.434944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.038134, 16.766459, 20.516603>,  <12.208799, 17.101645, 20.652702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.038134, 16.766459, 20.516603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693394, -0.061546, -0.717925,
		0.580657, -0.542239, 0.607301,
		-0.426664, -0.837968, -0.340248,
		11.910134, 16.515068, 20.414530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.782685, 16.634390, 20.768276>,  <12.208799, 17.101645, 20.652702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.782685, 16.634390, 20.768276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.535275, 16.505377, 20.481670>,  <12.386828, 16.427969, 20.309706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.535275, 16.505377, 20.481670>,  <12.782685, 16.634390, 20.768276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535275, 16.505377, 20.481670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753853, 0.013650, -0.656901,
		0.221654, -0.946459, 0.234701,
		-0.618526, -0.322535, -0.716516,
		12.349716, 16.408617, 20.266716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.222693, 16.291954, 20.361822>,  <12.782685, 16.634390, 20.768276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.222693, 16.291954, 20.361822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.886330, 16.313524, 20.146429>,  <12.684511, 16.326466, 20.017193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.886330, 16.313524, 20.146429>,  <13.222693, 16.291954, 20.361822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.886330, 16.313524, 20.146429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535769, 0.223239, -0.814319,
		0.076297, -0.973271, -0.216617,
		-0.840910, 0.053927, -0.538481,
		12.634057, 16.329702, 19.984884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.316515, 15.830950, 19.752787>,  <13.222693, 16.291954, 20.361822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.316515, 15.830950, 19.752787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.022271, 16.071632, 19.628319>,  <12.845725, 16.216042, 19.553638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.022271, 16.071632, 19.628319>,  <13.316515, 15.830950, 19.752787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022271, 16.071632, 19.628319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471402, 0.124816, -0.873041,
		-0.486477, -0.788903, -0.375462,
		-0.735609, 0.601708, -0.311171,
		12.801588, 16.252144, 19.534967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.262643, 15.758327, 19.046732>,  <13.316515, 15.830950, 19.752787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.262643, 15.758327, 19.046732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.065946, 16.103754, 19.091345>,  <12.947927, 16.311010, 19.118113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.065946, 16.103754, 19.091345>,  <13.262643, 15.758327, 19.046732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.065946, 16.103754, 19.091345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510926, 0.389885, -0.766123,
		-0.705084, -0.319750, -0.632942,
		-0.491743, 0.863568, 0.111533,
		12.918423, 16.362823, 19.124805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.890144, 15.859662, 18.446365>,  <13.262643, 15.758327, 19.046732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.890144, 15.859662, 18.446365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.954732, 16.206329, 18.635178>,  <12.993484, 16.414330, 18.748465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.954732, 16.206329, 18.635178>,  <12.890144, 15.859662, 18.446365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.954732, 16.206329, 18.635178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497766, 0.341485, -0.797256,
		-0.852148, 0.363693, -0.376258,
		0.161470, 0.866669, 0.472030,
		13.003173, 16.466330, 18.776787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.607062, 16.413834, 18.004925>,  <12.890144, 15.859662, 18.446365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.607062, 16.413834, 18.004925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.878575, 16.593046, 18.237656>,  <13.041483, 16.700573, 18.377295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.878575, 16.593046, 18.237656>,  <12.607062, 16.413834, 18.004925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.878575, 16.593046, 18.237656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507424, 0.286567, -0.812650,
		-0.530825, 0.846845, -0.032825,
		0.678782, 0.448031, 0.581827,
		13.082210, 16.727455, 18.412205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.779700, 17.077478, 17.765869>,  <12.607062, 16.413834, 18.004925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.779700, 17.077478, 17.765869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.099529, 17.011276, 17.996794>,  <13.291427, 16.971556, 18.135349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.099529, 17.011276, 17.996794>,  <12.779700, 17.077478, 17.765869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.099529, 17.011276, 17.996794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586043, 0.425152, -0.689782,
		-0.131285, 0.889862, 0.436932,
		0.799573, -0.165503, 0.577314,
		13.339401, 16.961626, 18.169989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.131256, 17.641085, 17.761005>,  <12.779700, 17.077478, 17.765869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.131256, 17.641085, 17.761005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.414128, 17.385071, 17.881174>,  <13.583852, 17.231462, 17.953276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.414128, 17.385071, 17.881174>,  <13.131256, 17.641085, 17.761005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414128, 17.385071, 17.881174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611302, 0.339994, -0.714642,
		0.355253, 0.689030, 0.631691,
		0.707181, -0.640033, 0.300422,
		13.626283, 17.193062, 17.971300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.783794, 18.016344, 17.745829>,  <13.131256, 17.641085, 17.761005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.783794, 18.016344, 17.745829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.889861, 17.630682, 17.742037>,  <13.953502, 17.399284, 17.739761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.889861, 17.630682, 17.742037>,  <13.783794, 18.016344, 17.745829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.889861, 17.630682, 17.742037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755833, 0.213957, -0.618820,
		0.598667, 0.156927, 0.785475,
		0.265168, -0.964156, -0.009478,
		13.969412, 17.341434, 17.739193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544547, 18.013704, 17.814648>,  <13.783794, 18.016344, 17.745829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544547, 18.013704, 17.814648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.454739, 17.650515, 17.673128>,  <14.400854, 17.432602, 17.588217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.454739, 17.650515, 17.673128>,  <14.544547, 18.013704, 17.814648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454739, 17.650515, 17.673128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715054, 0.093154, -0.692835,
		0.662034, -0.408542, 0.628335,
		-0.224521, -0.907973, -0.353801,
		14.387383, 17.378122, 17.566988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195085, 17.595371, 17.791296>,  <14.544547, 18.013704, 17.814648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195085, 17.595371, 17.791296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.924577, 17.461573, 17.528763>,  <14.762272, 17.381294, 17.371243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.924577, 17.461573, 17.528763>,  <15.195085, 17.595371, 17.791296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924577, 17.461573, 17.528763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701390, -0.020009, -0.712497,
		0.225195, -0.942185, 0.248144,
		-0.676269, -0.334496, -0.656333,
		14.721696, 17.361223, 17.331863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.255063, 17.699497, 17.110132>,  <15.195085, 17.595371, 17.791296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.255063, 17.699497, 17.110132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.635465, 17.822115, 17.126244>,  <15.863706, 17.895685, 17.135910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.635465, 17.822115, 17.126244>,  <15.255063, 17.699497, 17.110132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.635465, 17.822115, 17.126244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098950, -0.425195, 0.899677,
		0.292917, -0.851610, -0.434695,
		0.951004, 0.306544, 0.040280,
		15.920766, 17.914078, 17.138327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.627282, 17.065645, 17.321564>,  <15.255063, 17.699497, 17.110132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.627282, 17.065645, 17.321564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.815310, 17.408915, 17.404093>,  <15.928127, 17.614876, 17.453609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.815310, 17.408915, 17.404093>,  <15.627282, 17.065645, 17.321564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815310, 17.408915, 17.404093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150478, -0.308258, 0.939326,
		0.869707, -0.410502, -0.274039,
		0.470070, 0.858175, 0.206323,
		15.956331, 17.666367, 17.465990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248865, 16.780325, 17.786545>,  <15.627282, 17.065645, 17.321564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.248865, 16.780325, 17.786545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.186592, 17.169876, 17.852665>,  <16.149227, 17.403606, 17.892338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.186592, 17.169876, 17.852665>,  <16.248865, 16.780325, 17.786545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186592, 17.169876, 17.852665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198981, -0.132993, 0.970937,
		0.967558, 0.184051, -0.173078,
		-0.155684, 0.973878, 0.165302,
		16.139887, 17.462040, 17.902256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741051, 16.950163, 18.323755>,  <16.248865, 16.780325, 17.786545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.741051, 16.950163, 18.323755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.470297, 17.244558, 18.328705>,  <16.307844, 17.421196, 18.331675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.470297, 17.244558, 18.328705>,  <16.741051, 16.950163, 18.323755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470297, 17.244558, 18.328705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018594, 0.000291, 0.999827,
		0.735856, 0.676996, -0.013881,
		-0.676883, 0.735987, 0.012374,
		16.267233, 17.465355, 18.332417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955460, 17.422279, 18.778536>,  <16.741051, 16.950163, 18.323755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.955460, 17.422279, 18.778536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.565783, 17.511370, 18.763868>,  <16.331976, 17.564823, 18.755068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.565783, 17.511370, 18.763868>,  <16.955460, 17.422279, 18.778536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.565783, 17.511370, 18.763868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023128, 0.063106, 0.997739,
		0.224535, 0.972837, -0.056326,
		-0.974192, 0.222724, -0.036669,
		16.273525, 17.578186, 18.752867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876570, 18.034285, 19.277267>,  <16.955460, 17.422279, 18.778536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876570, 18.034285, 19.277267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.526812, 17.852932, 19.208128>,  <16.316956, 17.744122, 19.166643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.526812, 17.852932, 19.208128>,  <16.876570, 18.034285, 19.277267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526812, 17.852932, 19.208128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259955, 0.136933, 0.955862,
		-0.409700, 0.880736, -0.237593,
		-0.874396, -0.453380, -0.172850,
		16.264492, 17.716917, 19.156273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402252, 18.514565, 19.632692>,  <16.876570, 18.034285, 19.277267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402252, 18.514565, 19.632692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.224808, 18.161102, 19.572872>,  <16.118341, 17.949026, 19.536980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.224808, 18.161102, 19.572872>,  <16.402252, 18.514565, 19.632692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224808, 18.161102, 19.572872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369280, 0.028177, 0.928891,
		-0.816604, 0.467291, -0.338815,
		-0.443610, -0.883654, -0.149552,
		16.091724, 17.896006, 19.528008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670355, 18.675026, 19.832148>,  <16.402252, 18.514565, 19.632692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670355, 18.675026, 19.832148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.728663, 18.279613, 19.847954>,  <15.763648, 18.042366, 19.857437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.728663, 18.279613, 19.847954>,  <15.670355, 18.675026, 19.832148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728663, 18.279613, 19.847954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643367, -0.064379, 0.762846,
		-0.751551, -0.136623, -0.645372,
		0.145771, -0.988529, 0.039515,
		15.772395, 17.983055, 19.859808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.062960, 18.451077, 20.004332>,  <15.670355, 18.675026, 19.832148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.062960, 18.451077, 20.004332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.272469, 18.122107, 20.093128>,  <15.398173, 17.924725, 20.146406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.272469, 18.122107, 20.093128>,  <15.062960, 18.451077, 20.004332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272469, 18.122107, 20.093128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554679, -0.131483, 0.821611,
		-0.646526, -0.553469, -0.525049,
		0.523771, -0.822425, 0.221990,
		15.429600, 17.875380, 20.159725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618941, 17.981758, 20.302391>,  <15.062960, 18.451077, 20.004332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618941, 17.981758, 20.302391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.986429, 17.868088, 20.412079>,  <15.206923, 17.799885, 20.477892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.986429, 17.868088, 20.412079>,  <14.618941, 17.981758, 20.302391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986429, 17.868088, 20.412079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356272, -0.296875, 0.885966,
		-0.170360, -0.911652, -0.373988,
		0.918721, -0.284175, 0.274220,
		15.262045, 17.782835, 20.494345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.473626, 17.342958, 20.544659>,  <14.618941, 17.981758, 20.302391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.473626, 17.342958, 20.544659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.808985, 17.490688, 20.705004>,  <15.010201, 17.579327, 20.801210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.808985, 17.490688, 20.705004>,  <14.473626, 17.342958, 20.544659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.808985, 17.490688, 20.705004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408377, -0.061463, 0.910742,
		0.360997, -0.927266, 0.099294,
		0.838397, 0.369325, 0.400862,
		15.060504, 17.601486, 20.825262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.752553, 16.849945, 21.118221>,  <14.473626, 17.342958, 20.544659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.752553, 16.849945, 21.118221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.900627, 17.215078, 21.187159>,  <14.989471, 17.434158, 21.228521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.900627, 17.215078, 21.187159>,  <14.752553, 16.849945, 21.118221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900627, 17.215078, 21.187159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486486, 0.032447, 0.873086,
		0.791388, -0.407046, 0.456091,
		0.370185, 0.912831, 0.172344,
		15.011683, 17.488928, 21.238861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899865, 16.791994, 21.779619>,  <14.752553, 16.849945, 21.118221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899865, 16.791994, 21.779619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.882435, 17.185804, 21.711721>,  <14.871977, 17.422091, 21.670982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.882435, 17.185804, 21.711721>,  <14.899865, 16.791994, 21.779619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.882435, 17.185804, 21.711721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296410, 0.149516, 0.943285,
		0.954066, 0.091419, 0.285308,
		-0.043576, 0.984524, -0.169745,
		14.869362, 17.481161, 21.660797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303423, 17.180750, 22.333981>,  <14.899865, 16.791994, 21.779619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303423, 17.180750, 22.333981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.034339, 17.433813, 22.180511>,  <14.872889, 17.585651, 22.088430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.034339, 17.433813, 22.180511>,  <15.303423, 17.180750, 22.333981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034339, 17.433813, 22.180511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427331, 0.091110, 0.899493,
		0.604029, 0.769052, 0.209064,
		-0.672709, 0.632659, -0.383673,
		14.832526, 17.623611, 22.065409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.240507, 17.664093, 22.811392>,  <15.303423, 17.180750, 22.333981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.240507, 17.664093, 22.811392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.910573, 17.721378, 22.592619>,  <14.712612, 17.755749, 22.461355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.910573, 17.721378, 22.592619>,  <15.240507, 17.664093, 22.811392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910573, 17.721378, 22.592619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538672, 0.094703, 0.837176,
		0.171690, 0.985151, -0.000969,
		-0.824836, 0.143213, -0.546933,
		14.663122, 17.764341, 22.428539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.763040, 18.153809, 23.276052>,  <15.240507, 17.664093, 22.811392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.763040, 18.153809, 23.276052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.512612, 17.998270, 23.005693>,  <14.362356, 17.904947, 22.843477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.512612, 17.998270, 23.005693>,  <14.763040, 18.153809, 23.276052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512612, 17.998270, 23.005693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698838, -0.104733, 0.707571,
		-0.345923, 0.915331, -0.206169,
		-0.626069, -0.388844, -0.675898,
		14.324792, 17.881617, 22.802923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.164435, 18.557379, 23.329947>,  <14.763040, 18.153809, 23.276052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.164435, 18.557379, 23.329947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.064157, 18.202536, 23.174929>,  <14.003991, 17.989630, 23.081919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.064157, 18.202536, 23.174929>,  <14.164435, 18.557379, 23.329947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.064157, 18.202536, 23.174929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711693, -0.102486, 0.694975,
		-0.656236, 0.450039, -0.605656,
		-0.250695, -0.887109, -0.387545,
		13.988949, 17.936403, 23.058666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.417170, 18.578844, 23.343540>,  <14.164435, 18.557379, 23.329947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.417170, 18.578844, 23.343540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.501795, 18.190231, 23.300896>,  <13.552569, 17.957064, 23.275309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.501795, 18.190231, 23.300896>,  <13.417170, 18.578844, 23.343540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.501795, 18.190231, 23.300896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822502, -0.235900, 0.517534,
		-0.527951, -0.021803, -0.848995,
		0.211562, -0.971533, -0.106611,
		13.565264, 17.898771, 23.268913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.750666, 18.276258, 23.330898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.000212, 17.979116, 23.428022>,  <13.149940, 17.800831, 23.486296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.000212, 17.979116, 23.428022>,  <12.750666, 18.276258, 23.330898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.000212, 17.979116, 23.428022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726875, -0.437381, 0.529481,
		-0.287127, -0.506818, -0.812830,
		0.623867, -0.742855, 0.242810,
		13.187371, 17.756260, 23.500864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293563, 17.700693, 23.366543>,  <12.750666, 18.276258, 23.330898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293563, 17.700693, 23.366543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.638903, 17.609529, 23.546625>,  <12.846107, 17.554831, 23.654675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.638903, 17.609529, 23.546625>,  <12.293563, 17.700693, 23.366543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.638903, 17.609529, 23.546625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503014, -0.459531, 0.731989,
		0.040057, -0.858422, -0.511377,
		0.863350, -0.227909, 0.450206,
		12.897907, 17.541157, 23.681686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.315340, 16.941143, 23.577692>,  <12.293563, 17.700693, 23.366543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.315340, 16.941143, 23.577692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.568189, 17.140108, 23.815348>,  <12.719898, 17.259487, 23.957941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.568189, 17.140108, 23.815348>,  <12.315340, 16.941143, 23.577692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568189, 17.140108, 23.815348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440854, -0.399707, 0.803668,
		0.637235, -0.769946, -0.033378,
		0.632123, 0.497411, 0.594141,
		12.757826, 17.289331, 23.993589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362118, 16.514374, 24.111351>,  <12.315340, 16.941143, 23.577692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.362118, 16.514374, 24.111351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.502369, 16.862886, 24.248713>,  <12.586519, 17.071995, 24.331129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.502369, 16.862886, 24.248713>,  <12.362118, 16.514374, 24.111351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.502369, 16.862886, 24.248713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341534, -0.222467, 0.913161,
		0.872018, -0.437463, 0.219570,
		0.350627, 0.871283, 0.343404,
		12.607557, 17.124271, 24.351734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.494627, 16.305599, 24.690224>,  <12.362118, 16.514374, 24.111351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.494627, 16.305599, 24.690224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.496325, 16.701893, 24.744528>,  <12.497343, 16.939669, 24.777111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.496325, 16.701893, 24.744528>,  <12.494627, 16.305599, 24.690224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.496325, 16.701893, 24.744528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293711, -0.128539, 0.947213,
		0.955885, -0.043894, 0.290444,
		0.004243, 0.990732, 0.135761,
		12.497598, 16.999113, 24.785255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.951156, 16.531090, 25.275122>,  <12.494627, 16.305599, 24.690224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.951156, 16.531090, 25.275122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.684743, 16.827568, 25.241583>,  <12.524896, 17.005455, 25.221460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.684743, 16.827568, 25.241583>,  <12.951156, 16.531090, 25.275122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.684743, 16.827568, 25.241583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044781, 0.072473, 0.996365,
		0.744578, 0.667365, -0.015078,
		-0.666032, 0.741196, -0.083847,
		12.484934, 17.049927, 25.216429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.064837, 17.011721, 25.850468>,  <12.951156, 16.531090, 25.275122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.064837, 17.011721, 25.850468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.690069, 17.083628, 25.730558>,  <12.465208, 17.126772, 25.658613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.690069, 17.083628, 25.730558>,  <13.064837, 17.011721, 25.850468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.690069, 17.083628, 25.730558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264364, 0.196638, 0.944164,
		0.228677, 0.963855, -0.136710,
		-0.936920, 0.179767, -0.299776,
		12.408994, 17.137558, 25.640625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.860206, 17.603924, 26.172028>,  <13.064837, 17.011721, 25.850468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.860206, 17.603924, 26.172028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.520445, 17.412354, 26.083351>,  <12.316588, 17.297411, 26.030146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.520445, 17.412354, 26.083351>,  <12.860206, 17.603924, 26.172028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.520445, 17.412354, 26.083351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361521, 0.222007, 0.905547,
		-0.384474, 0.849319, -0.361715,
		-0.849401, -0.478927, -0.221691,
		12.265624, 17.268675, 26.016844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.412085, 18.041285, 26.447975>,  <12.860206, 17.603924, 26.172028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.412085, 18.041285, 26.447975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.226648, 17.688532, 26.413643>,  <12.115387, 17.476879, 26.393044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.226648, 17.688532, 26.413643>,  <12.412085, 18.041285, 26.447975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.226648, 17.688532, 26.413643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332480, 0.083349, 0.939420,
		-0.821305, 0.464043, -0.331847,
		-0.463590, -0.881883, -0.085830,
		12.087571, 17.423967, 26.387894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.767664, 18.180128, 26.659521>,  <12.412085, 18.041285, 26.447975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.767664, 18.180128, 26.659521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.736426, 17.784475, 26.709349>,  <11.717684, 17.547083, 26.739244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.736426, 17.784475, 26.709349>,  <11.767664, 18.180128, 26.659521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.736426, 17.784475, 26.709349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490383, 0.146899, 0.859037,
		-0.868001, 0.006000, -0.496526,
		-0.078093, -0.989133, 0.124567,
		11.712998, 17.487736, 26.746719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.040850, 18.022411, 26.831453>,  <11.767664, 18.180128, 26.659521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.040850, 18.022411, 26.831453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.274240, 17.720211, 26.950632>,  <11.414273, 17.538891, 27.022141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.274240, 17.720211, 26.950632>,  <11.040850, 18.022411, 26.831453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.274240, 17.720211, 26.950632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566017, -0.115208, 0.816304,
		-0.582394, -0.644936, -0.494848,
		0.583474, -0.755502, 0.297948,
		11.449282, 17.493561, 27.040016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.594169, 17.476826, 27.075815>,  <11.040850, 18.022411, 26.831453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.594169, 17.476826, 27.075815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.949682, 17.389093, 27.236792>,  <11.162991, 17.336454, 27.333378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.949682, 17.389093, 27.236792>,  <10.594169, 17.476826, 27.075815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.949682, 17.389093, 27.236792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442424, -0.181266, 0.878296,
		-0.119683, -0.958665, -0.258142,
		0.888784, -0.219325, 0.402442,
		11.216317, 17.323296, 27.357525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.453261, 17.177471, 27.679531>,  <10.594169, 17.476826, 27.075815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.453261, 17.177471, 27.679531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.843022, 17.238773, 27.745323>,  <11.076879, 17.275555, 27.784798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.843022, 17.238773, 27.745323>,  <10.453261, 17.177471, 27.679531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.843022, 17.238773, 27.745323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169139, 0.017781, 0.985432,
		0.148097, -0.988027, 0.043247,
		0.974402, 0.153254, 0.164481,
		11.135343, 17.284750, 27.794668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.669399, 16.795538, 28.185202>,  <10.453261, 17.177471, 27.679531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.669399, 16.795538, 28.185202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.950967, 17.077587, 28.219381>,  <11.119907, 17.246817, 28.239889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.950967, 17.077587, 28.219381>,  <10.669399, 16.795538, 28.185202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.950967, 17.077587, 28.219381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040959, -0.079805, 0.995969,
		0.709097, -0.704582, -0.027295,
		0.703920, 0.705121, 0.085449,
		11.162143, 17.289124, 28.245016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.214378, 16.534409, 28.556799>,  <10.669399, 16.795538, 28.185202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.214378, 16.534409, 28.556799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.250324, 16.930574, 28.598747>,  <11.271892, 17.168274, 28.623917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.250324, 16.930574, 28.598747>,  <11.214378, 16.534409, 28.556799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.250324, 16.930574, 28.598747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059126, -0.110418, 0.992125,
		0.994197, -0.082957, -0.068482,
		0.089865, 0.990417, 0.104873,
		11.277284, 17.227699, 28.630209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.786574, 16.640757, 28.974918>,  <11.214378, 16.534409, 28.556799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.786574, 16.640757, 28.974918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.592228, 16.988613, 29.009918>,  <11.475620, 17.197327, 29.030918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.592228, 16.988613, 29.009918>,  <11.786574, 16.640757, 28.974918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.592228, 16.988613, 29.009918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041157, -0.077236, 0.996163,
		0.873063, 0.487604, 0.001735,
		-0.485867, 0.869642, 0.087500,
		11.446467, 17.249506, 29.036169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.080240, 16.919853, 29.469755>,  <11.786574, 16.640757, 28.974918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.080240, 16.919853, 29.469755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.760894, 17.160702, 29.466684>,  <11.569285, 17.305212, 29.464842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.760894, 17.160702, 29.466684>,  <12.080240, 16.919853, 29.469755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.760894, 17.160702, 29.466684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003205, 0.008497, 0.999959,
		0.602163, 0.798358, -0.004854,
		-0.798367, 0.602123, -0.007676,
		11.521384, 17.341339, 29.464382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.220801, 17.442375, 29.893824>,  <12.080240, 16.919853, 29.469755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.220801, 17.442375, 29.893824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.824131, 17.392302, 29.881758>,  <11.586129, 17.362257, 29.874517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.824131, 17.392302, 29.881758>,  <12.220801, 17.442375, 29.893824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.824131, 17.392302, 29.881758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016256, -0.110691, 0.993722,
		-0.127735, 0.985939, 0.107735,
		-0.991675, -0.125182, -0.030166,
		11.526628, 17.354748, 29.872707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.935094, 17.793768, 30.554209>,  <12.220801, 17.442375, 29.893824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.935094, 17.793768, 30.554209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.663195, 17.527514, 30.431004>,  <11.500055, 17.367762, 30.357080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.663195, 17.527514, 30.431004>,  <11.935094, 17.793768, 30.554209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.663195, 17.527514, 30.431004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020718, -0.402358, 0.915248,
		-0.733154, 0.628519, 0.259711,
		-0.679747, -0.665637, -0.308012,
		11.459270, 17.327822, 30.338600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.419638, 17.765390, 31.143305>,  <11.935094, 17.793768, 30.554209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.419638, 17.765390, 31.143305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.331250, 17.437981, 30.931196>,  <11.278217, 17.241535, 30.803930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.331250, 17.437981, 30.931196>,  <11.419638, 17.765390, 31.143305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.331250, 17.437981, 30.931196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004464, -0.542858, 0.839813,
		-0.975270, 0.187939, 0.116301,
		-0.220969, -0.818526, -0.530272,
		11.264959, 17.192423, 30.772114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.811114, 17.405085, 31.458519>,  <11.419638, 17.765390, 31.143305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.811114, 17.405085, 31.458519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.999705, 17.125732, 31.243120>,  <11.112860, 16.958122, 31.113882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.999705, 17.125732, 31.243120>,  <10.811114, 17.405085, 31.458519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.999705, 17.125732, 31.243120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095506, -0.647467, 0.756085,
		-0.876692, -0.305047, -0.371965,
		0.471477, -0.698378, -0.538495,
		11.141149, 16.916220, 31.081572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.448170, 16.825153, 31.574928>,  <10.811114, 17.405085, 31.458519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.448170, 16.825153, 31.574928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.820660, 16.734352, 31.460884>,  <11.044154, 16.679871, 31.392458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.820660, 16.734352, 31.460884>,  <10.448170, 16.825153, 31.574928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.820660, 16.734352, 31.460884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113721, -0.562255, 0.819108,
		-0.346245, -0.795197, -0.497771,
		0.931226, -0.227005, -0.285108,
		11.100027, 16.666250, 31.375351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.116654, 16.536320, 30.931810>,  <10.448170, 16.825153, 31.574928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.116654, 16.536320, 30.931810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.725704, 16.467686, 30.882341>,  <9.491134, 16.426506, 30.852659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.725704, 16.467686, 30.882341>,  <10.116654, 16.536320, 30.931810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.725704, 16.467686, 30.882341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179794, 0.366021, 0.913073,
		-0.111402, 0.914652, -0.388589,
		-0.977376, -0.171584, -0.123674,
		9.432491, 16.416210, 30.845240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.325068, 15.951039, 31.411495>,  <10.116654, 16.536320, 30.931810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.325068, 15.951039, 31.411495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.481915, 15.642772, 31.612419>,  <10.576022, 15.457811, 31.732973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.481915, 15.642772, 31.612419>,  <10.325068, 15.951039, 31.411495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.481915, 15.642772, 31.612419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105838, -0.504618, -0.856831,
		0.913808, 0.389140, -0.116302,
		0.392115, -0.770669, 0.502309,
		10.599549, 15.411571, 31.763111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.957802, 15.725382, 31.077642>,  <10.325068, 15.951039, 31.411495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.957802, 15.725382, 31.077642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.795855, 15.418902, 31.277250>,  <10.698687, 15.235015, 31.397015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.795855, 15.418902, 31.277250>,  <10.957802, 15.725382, 31.077642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.795855, 15.418902, 31.277250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072534, -0.517119, -0.852834,
		0.911494, -0.381481, 0.153790,
		-0.404868, -0.766198, 0.499021,
		10.674395, 15.189043, 31.426956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.351187, 15.070460, 31.008314>,  <10.957802, 15.725382, 31.077642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.351187, 15.070460, 31.008314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.955358, 15.024508, 31.043060>,  <10.717859, 14.996937, 31.063908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.955358, 15.024508, 31.043060>,  <11.351187, 15.070460, 31.008314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.955358, 15.024508, 31.043060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033472, -0.403165, -0.914515,
		0.140081, -0.907888, 0.395116,
		-0.989574, -0.114881, 0.086865,
		10.658485, 14.990045, 31.069120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.297734, 14.538943, 30.598082>,  <11.351187, 15.070460, 31.008314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.297734, 14.538943, 30.598082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.924423, 14.670774, 30.655174>,  <10.700437, 14.749873, 30.689430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.924423, 14.670774, 30.655174>,  <11.297734, 14.538943, 30.598082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.924423, 14.670774, 30.655174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264316, -0.361202, -0.894243,
		-0.243166, -0.872303, 0.424214,
		-0.933278, 0.329576, 0.142731,
		10.644440, 14.769648, 30.697994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.943125, 14.029261, 30.444422>,  <11.297734, 14.538943, 30.598082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.943125, 14.029261, 30.444422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.668156, 14.317995, 30.412420>,  <10.503174, 14.491236, 30.393219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.668156, 14.317995, 30.412420>,  <10.943125, 14.029261, 30.444422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.668156, 14.317995, 30.412420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202708, -0.296481, -0.933278,
		-0.697394, -0.625340, 0.350130,
		-0.687423, 0.721837, -0.080003,
		10.461928, 14.534546, 30.388420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.376338, 13.627213, 30.197969>,  <10.943125, 14.029261, 30.444422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.376338, 13.627213, 30.197969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.351625, 14.020533, 30.129492>,  <10.336798, 14.256524, 30.088406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.351625, 14.020533, 30.129492>,  <10.376338, 13.627213, 30.197969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.351625, 14.020533, 30.129492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105991, -0.177015, -0.978484,
		-0.992446, -0.042306, 0.115157,
		-0.061780, 0.983298, -0.171194,
		10.333092, 14.315522, 30.078135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.895866, 13.631086, 29.737442>,  <10.376338, 13.627213, 30.197969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.895866, 13.631086, 29.737442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.014879, 14.010901, 29.697733>,  <10.086287, 14.238791, 29.673908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.014879, 14.010901, 29.697733>,  <9.895866, 13.631086, 29.737442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.014879, 14.010901, 29.697733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306353, -0.003526, -0.951911,
		-0.904225, 0.313637, 0.289844,
		0.297532, 0.949537, -0.099272,
		10.104139, 14.295762, 29.667952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.368195, 14.021881, 29.398287>,  <9.895866, 13.631086, 29.737442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.368195, 14.021881, 29.398287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.702703, 14.231624, 29.334156>,  <9.903407, 14.357470, 29.295677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.702703, 14.231624, 29.334156>,  <9.368195, 14.021881, 29.398287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.702703, 14.231624, 29.334156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282174, 0.160845, -0.945784,
		-0.470141, 0.836169, 0.282469,
		0.836269, 0.524357, -0.160325,
		9.953583, 14.388931, 29.286058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.116789, 14.557490, 28.985186>,  <9.368195, 14.021881, 29.398287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.116789, 14.557490, 28.985186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.511648, 14.583346, 28.926723>,  <9.748564, 14.598860, 28.891645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.511648, 14.583346, 28.926723>,  <9.116789, 14.557490, 28.985186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.511648, 14.583346, 28.926723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159811, 0.395645, -0.904392,
		-0.000634, 0.916126, 0.400890,
		0.987147, 0.064641, -0.146156,
		9.807793, 14.602738, 28.882877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.292514, 15.243090, 28.690256>,  <9.116789, 14.557490, 28.985186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.292514, 15.243090, 28.690256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.602700, 15.003946, 28.609049>,  <9.788812, 14.860460, 28.560324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.602700, 15.003946, 28.609049>,  <9.292514, 15.243090, 28.690256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.602700, 15.003946, 28.609049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108591, 0.190466, -0.975669,
		0.621981, 0.778645, 0.082778,
		0.775466, -0.597859, -0.203020,
		9.835340, 14.824589, 28.548143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.789975, 15.641438, 28.323029>,  <9.292514, 15.243090, 28.690256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.789975, 15.641438, 28.323029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.870706, 15.260366, 28.232109>,  <9.919144, 15.031723, 28.177557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.870706, 15.260366, 28.232109>,  <9.789975, 15.641438, 28.323029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.870706, 15.260366, 28.232109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067779, 0.245106, -0.967124,
		0.977073, 0.179785, 0.114041,
		0.201827, -0.952681, -0.227300,
		9.931253, 14.974563, 28.163919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.376165, 15.660116, 27.972820>,  <9.789975, 15.641438, 28.323029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.376165, 15.660116, 27.972820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.197463, 15.320718, 27.859356>,  <10.090241, 15.117079, 27.791277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.197463, 15.320718, 27.859356>,  <10.376165, 15.660116, 27.972820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197463, 15.320718, 27.859356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177658, 0.226607, -0.957647,
		0.876840, -0.478228, 0.049504,
		-0.446755, -0.848497, -0.283659,
		10.063437, 15.066169, 27.774258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.817281, 15.320369, 27.363485>,  <10.376165, 15.660116, 27.972820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.817281, 15.320369, 27.363485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.449879, 15.164614, 27.335987>,  <10.229438, 15.071161, 27.319489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.449879, 15.164614, 27.335987>,  <10.817281, 15.320369, 27.363485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.449879, 15.164614, 27.335987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025720, 0.232328, -0.972297,
		0.394574, -0.891291, -0.223410,
		-0.918504, -0.389389, -0.068747,
		10.174327, 15.047797, 27.315363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.854234, 14.786040, 26.867695>,  <10.817281, 15.320369, 27.363485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.854234, 14.786040, 26.867695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.478909, 14.922058, 26.892799>,  <10.253714, 15.003669, 26.907862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.478909, 14.922058, 26.892799>,  <10.854234, 14.786040, 26.867695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.478909, 14.922058, 26.892799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008303, 0.159298, -0.987196,
		-0.345690, -0.926819, -0.146647,
		-0.938312, 0.340046, 0.062763,
		10.197414, 15.024072, 26.911629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.677814, 14.687050, 26.214508>,  <10.854234, 14.786040, 26.867695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.677814, 14.687050, 26.214508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.379487, 14.931180, 26.321285>,  <10.200491, 15.077659, 26.385351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.379487, 14.931180, 26.321285>,  <10.677814, 14.687050, 26.214508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.379487, 14.931180, 26.321285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078189, 0.317751, -0.944945,
		-0.661546, -0.725628, -0.189264,
		-0.745817, 0.610326, 0.266943,
		10.155742, 15.114278, 26.401369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.131928, 14.525781, 25.806112>,  <10.677814, 14.687050, 26.214508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.131928, 14.525781, 25.806112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.051570, 14.891369, 25.947136>,  <10.003355, 15.110722, 26.031750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.051570, 14.891369, 25.947136>,  <10.131928, 14.525781, 25.806112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.051570, 14.891369, 25.947136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138880, 0.329687, -0.933820,
		-0.969718, -0.236564, 0.060699,
		-0.200896, 0.913972, 0.352557,
		9.991301, 15.165561, 26.052902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.623834, 14.789124, 25.315977>,  <10.131928, 14.525781, 25.806112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.623834, 14.789124, 25.315977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.774571, 15.095052, 25.524988>,  <9.865014, 15.278609, 25.650394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.774571, 15.095052, 25.524988>,  <9.623834, 14.789124, 25.315977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.774571, 15.095052, 25.524988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004987, 0.565785, -0.824538,
		-0.926263, 0.308117, 0.217027,
		0.376844, 0.764821, 0.522530,
		9.887625, 15.324498, 25.681747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.128957, 15.447470, 25.089218>,  <9.623834, 14.789124, 25.315977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.128957, 15.447470, 25.089218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.474878, 15.591316, 25.229385>,  <9.682431, 15.677624, 25.313486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.474878, 15.591316, 25.229385>,  <9.128957, 15.447470, 25.089218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.474878, 15.591316, 25.229385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168957, 0.448772, -0.877529,
		-0.472831, 0.818095, 0.327340,
		0.864803, 0.359617, 0.350416,
		9.734320, 15.699202, 25.334511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.152678, 16.143852, 24.849195>,  <9.128957, 15.447470, 25.089218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.152678, 16.143852, 24.849195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.525243, 16.013241, 24.913506>,  <9.748782, 15.934875, 24.952091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.525243, 16.013241, 24.913506>,  <9.152678, 16.143852, 24.849195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.525243, 16.013241, 24.913506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299205, 0.435414, -0.849053,
		0.207234, 0.838925, 0.503249,
		0.931413, -0.326527, 0.160778,
		9.804667, 15.915282, 24.961739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.547647, 16.690742, 24.812126>,  <9.152678, 16.143852, 24.849195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.547647, 16.690742, 24.812126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.799829, 16.386955, 24.747953>,  <9.951138, 16.204683, 24.709450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.799829, 16.386955, 24.747953>,  <9.547647, 16.690742, 24.812126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.799829, 16.386955, 24.747953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258511, 0.400311, -0.879160,
		0.731915, 0.512798, 0.448708,
		0.630454, -0.759467, -0.160429,
		9.988966, 16.159115, 24.699825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.072020, 16.967602, 24.428488>,  <9.547647, 16.690742, 24.812126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.072020, 16.967602, 24.428488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.148853, 16.579851, 24.367285>,  <10.194953, 16.347200, 24.330563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.148853, 16.579851, 24.367285>,  <10.072020, 16.967602, 24.428488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.148853, 16.579851, 24.367285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287940, 0.204717, -0.935511,
		0.938186, 0.135640, 0.318446,
		0.192084, -0.969377, -0.153007,
		10.206478, 16.289038, 24.321383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.247225, 27.679266, 12.630939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.265480, 27.443319, 12.953424>,  <26.276434, 27.301752, 13.146914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.265480, 27.443319, 12.953424>,  <26.247225, 27.679266, 12.630939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265480, 27.443319, 12.953424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796487, -0.508591, -0.327024,
		0.602931, -0.627211, -0.493031,
		0.045638, -0.589866, 0.806211,
		26.279171, 27.266359, 13.195287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104406, 27.019770, 12.427973>,  <26.247225, 27.679266, 12.630939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104406, 27.019770, 12.427973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.013672, 27.016558, 12.817533>,  <25.959230, 27.014631, 13.051269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.013672, 27.016558, 12.817533>,  <26.104406, 27.019770, 12.427973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013672, 27.016558, 12.817533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780763, -0.596262, -0.186767,
		0.582198, -0.802750, 0.128986,
		-0.226836, -0.008028, 0.973900,
		25.945621, 27.014149, 13.109702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215498, 26.425970, 12.685602>,  <26.104406, 27.019770, 12.427973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215498, 26.425970, 12.685602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.910633, 26.603378, 12.874239>,  <25.727715, 26.709824, 12.987421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.910633, 26.603378, 12.874239>,  <26.215498, 26.425970, 12.685602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910633, 26.603378, 12.874239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635000, -0.653977, -0.411205,
		0.126032, -0.612866, 0.780072,
		-0.762162, 0.443520, 0.471591,
		25.681984, 26.736435, 13.015717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780029, 25.925230, 12.915228>,  <26.215498, 26.425970, 12.685602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780029, 25.925230, 12.915228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.552900, 26.253784, 12.893669>,  <25.416624, 26.450916, 12.880734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.552900, 26.253784, 12.893669>,  <25.780029, 25.925230, 12.915228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552900, 26.253784, 12.893669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704709, -0.518912, -0.483856,
		-0.425399, -0.236762, 0.873487,
		-0.567821, 0.821385, -0.053896,
		25.382553, 26.500200, 12.877501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192070, 25.749437, 13.367130>,  <25.780029, 25.925230, 12.915228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192070, 25.749437, 13.367130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.151175, 25.975389, 13.039605>,  <25.126637, 26.110962, 12.843090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.151175, 25.975389, 13.039605>,  <25.192070, 25.749437, 13.367130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151175, 25.975389, 13.039605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710621, -0.617477, -0.337254,
		-0.696107, 0.547385, 0.464548,
		-0.102240, 0.564883, -0.818813,
		25.120502, 26.144854, 12.793962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640968, 26.167461, 13.294919>,  <25.192070, 25.749437, 13.367130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640968, 26.167461, 13.294919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.740297, 26.093958, 12.914484>,  <24.799894, 26.049856, 12.686223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.740297, 26.093958, 12.914484>,  <24.640968, 26.167461, 13.294919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740297, 26.093958, 12.914484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745797, -0.662829, -0.066660,
		-0.618159, 0.725872, -0.301644,
		0.248325, -0.183759, -0.951088,
		24.814795, 26.038830, 12.629158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.002048, 26.161148, 12.869071>,  <24.640968, 26.167461, 13.294919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.002048, 26.161148, 12.869071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.273846, 25.966387, 12.649539>,  <24.436924, 25.849529, 12.517819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.273846, 25.966387, 12.649539>,  <24.002048, 26.161148, 12.869071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.273846, 25.966387, 12.649539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612839, -0.787950, -0.059694,
		-0.403385, 0.376906, -0.833800,
		0.679491, -0.486905, -0.548830,
		24.477694, 25.820314, 12.484890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.704084, 25.957705, 12.142957>,  <24.002048, 26.161148, 12.869071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.704084, 25.957705, 12.142957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.978310, 25.698824, 12.276304>,  <24.142845, 25.543495, 12.356313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.978310, 25.698824, 12.276304>,  <23.704084, 25.957705, 12.142957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.978310, 25.698824, 12.276304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648897, -0.750832, -0.123222,
		0.330054, -0.131846, -0.934709,
		0.685563, -0.647200, 0.333369,
		24.183979, 25.504663, 12.376315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.757278, 25.505362, 11.628736>,  <23.704084, 25.957705, 12.142957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.757278, 25.505362, 11.628736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.853083, 25.349112, 11.984274>,  <23.910566, 25.255362, 12.197597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.853083, 25.349112, 11.984274>,  <23.757278, 25.505362, 11.628736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.853083, 25.349112, 11.984274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759810, -0.645344, -0.078871,
		0.604420, -0.656463, -0.451368,
		0.239512, -0.390624, 0.888846,
		23.924936, 25.231924, 12.250928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.820992, 24.707552, 11.671762>,  <23.757278, 25.505362, 11.628736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.820992, 24.707552, 11.671762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.715429, 24.839392, 12.034357>,  <23.652092, 24.918495, 12.251914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.715429, 24.839392, 12.034357>,  <23.820992, 24.707552, 11.671762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.715429, 24.839392, 12.034357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804167, -0.594128, -0.018095,
		0.532605, -0.733742, 0.421847,
		-0.263908, 0.329598, 0.906487,
		23.636257, 24.938271, 12.306303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441565, 24.544542, 11.437467>,  <23.820992, 24.707552, 11.671762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441565, 24.544542, 11.437467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.258533, 24.573263, 11.791973>,  <24.148716, 24.590496, 12.004677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.258533, 24.573263, 11.791973>,  <24.441565, 24.544542, 11.437467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.258533, 24.573263, 11.791973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159912, -0.987128, -0.002586,
		0.874673, -0.142908, 0.463169,
		-0.457576, 0.071804, 0.886266,
		24.121260, 24.594805, 12.057853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768036, 24.158867, 11.999094>,  <24.441565, 24.544542, 11.437467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768036, 24.158867, 11.999094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.386339, 24.186550, 12.115460>,  <24.157322, 24.203161, 12.185281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.386339, 24.186550, 12.115460>,  <24.768036, 24.158867, 11.999094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386339, 24.186550, 12.115460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040424, -0.993774, 0.103828,
		0.296291, 0.087317, 0.951098,
		-0.954242, 0.069210, 0.290917,
		24.100067, 24.207314, 12.202736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672331, 23.609331, 12.528912>,  <24.768036, 24.158867, 11.999094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672331, 23.609331, 12.528912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297594, 23.700790, 12.423043>,  <24.072752, 23.755665, 12.359523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297594, 23.700790, 12.423043>,  <24.672331, 23.609331, 12.528912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297594, 23.700790, 12.423043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236357, -0.971662, -0.002788,
		-0.257807, 0.059945, 0.964335,
		-0.936841, 0.228646, -0.264670,
		24.016542, 23.769384, 12.343642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195541, 23.108604, 12.896710>,  <24.672331, 23.609331, 12.528912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195541, 23.108604, 12.896710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.944826, 23.246637, 12.617268>,  <23.794397, 23.329456, 12.449602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.944826, 23.246637, 12.617268>,  <24.195541, 23.108604, 12.896710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.944826, 23.246637, 12.617268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571493, -0.813047, 0.111132,
		-0.529651, 0.468906, 0.706822,
		-0.626790, 0.345083, -0.698608,
		23.756790, 23.350163, 12.407685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.557661, 22.933529, 13.211113>,  <24.195541, 23.108604, 12.896710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.557661, 22.933529, 13.211113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.443651, 22.989882, 12.831869>,  <23.375244, 23.023693, 12.604322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.443651, 22.989882, 12.831869>,  <23.557661, 22.933529, 13.211113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.443651, 22.989882, 12.831869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540821, -0.840291, 0.037724,
		-0.791373, 0.523511, 0.315697,
		-0.285026, 0.140882, -0.948110,
		23.358143, 23.032146, 12.547436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.833847, 22.926823, 13.156746>,  <23.557661, 22.933529, 13.211113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.833847, 22.926823, 13.156746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.970549, 22.817711, 12.797014>,  <23.052570, 22.752243, 12.581175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.970549, 22.817711, 12.797014>,  <22.833847, 22.926823, 13.156746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.970549, 22.817711, 12.797014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595778, -0.802966, 0.017150,
		-0.726810, 0.529940, -0.436934,
		0.341755, -0.272780, -0.899330,
		23.073074, 22.735876, 12.527215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.300709, 22.603935, 12.821290>,  <22.833847, 22.926823, 13.156746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.300709, 22.603935, 12.821290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.611887, 22.458036, 12.616640>,  <22.798594, 22.370497, 12.493850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.611887, 22.458036, 12.616640>,  <22.300709, 22.603935, 12.821290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.611887, 22.458036, 12.616640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440496, -0.897249, -0.030122,
		-0.448069, 0.248802, -0.858680,
		0.777945, -0.364749, -0.511626,
		22.845270, 22.348612, 12.463152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.017384, 22.241564, 12.251830>,  <22.300709, 22.603935, 12.821290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.017384, 22.241564, 12.251830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.384537, 22.094099, 12.310585>,  <22.604830, 22.005621, 12.345838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.384537, 22.094099, 12.310585>,  <22.017384, 22.241564, 12.251830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384537, 22.094099, 12.310585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357953, -0.928931, -0.094644,
		0.171339, 0.034294, -0.984615,
		0.917885, -0.368662, 0.146887,
		22.659903, 21.983500, 12.354651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.039701, 21.560036, 11.936069>,  <22.017384, 22.241564, 12.251830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.039701, 21.560036, 11.936069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.385910, 21.550621, 12.136196>,  <22.593636, 21.544971, 12.256273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.385910, 21.550621, 12.136196>,  <22.039701, 21.560036, 11.936069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.385910, 21.550621, 12.136196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071893, -0.994390, 0.077592,
		0.495687, -0.103127, -0.862357,
		0.865521, -0.023536, 0.500320,
		22.645567, 21.543560, 12.286292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.531128, 20.973024, 11.644327>,  <22.039701, 21.560036, 11.936069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.531128, 20.973024, 11.644327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.627439, 21.042362, 12.026318>,  <22.685226, 21.083965, 12.255511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.627439, 21.042362, 12.026318>,  <22.531128, 20.973024, 11.644327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.627439, 21.042362, 12.026318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123257, -0.970495, 0.207238,
		0.962722, -0.167606, -0.212308,
		0.240778, 0.173344, 0.954975,
		22.699673, 21.094366, 12.312810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.972359, 20.415405, 11.884514>,  <22.531128, 20.973024, 11.644327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.972359, 20.415405, 11.884514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.838860, 20.573368, 12.226896>,  <22.758760, 20.668146, 12.432325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.838860, 20.573368, 12.226896>,  <22.972359, 20.415405, 11.884514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.838860, 20.573368, 12.226896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278439, -0.908804, 0.310721,
		0.900602, -0.134629, 0.413269,
		-0.333748, 0.394906, 0.855956,
		22.738735, 20.691839, 12.483684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.189903, 19.912441, 12.358392>,  <22.972359, 20.415405, 11.884514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.189903, 19.912441, 12.358392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.929649, 20.122072, 12.578217>,  <22.773497, 20.247850, 12.710112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.929649, 20.122072, 12.578217>,  <23.189903, 19.912441, 12.358392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.929649, 20.122072, 12.578217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212709, -0.820490, 0.530614,
		0.728993, 0.228339, 0.645315,
		-0.650634, 0.524078, 0.549562,
		22.734459, 20.279295, 12.743085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.361803, 19.754774, 13.029237>,  <23.189903, 19.912441, 12.358392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.361803, 19.754774, 13.029237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.985296, 19.889160, 13.042768>,  <22.759392, 19.969791, 13.050887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.985296, 19.889160, 13.042768>,  <23.361803, 19.754774, 13.029237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.985296, 19.889160, 13.042768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269072, -0.806819, 0.525970,
		0.204001, 0.485976, 0.849830,
		-0.941267, 0.335963, 0.033829,
		22.702915, 19.989948, 13.052917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.177340, 19.774256, 13.783063>,  <23.361803, 19.754774, 13.029237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.177340, 19.774256, 13.783063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.818647, 19.763845, 13.606339>,  <22.603432, 19.757599, 13.500305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.818647, 19.763845, 13.606339>,  <23.177340, 19.774256, 13.783063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.818647, 19.763845, 13.606339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249282, -0.795153, 0.552802,
		-0.365693, 0.605850, 0.706551,
		-0.896731, -0.026025, -0.441809,
		22.549627, 19.756039, 13.473797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.703609, 19.726215, 14.344306>,  <23.177340, 19.774256, 13.783063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.703609, 19.726215, 14.344306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.527340, 19.587214, 14.013235>,  <22.421577, 19.503813, 13.814592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.527340, 19.587214, 14.013235>,  <22.703609, 19.726215, 14.344306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.527340, 19.587214, 14.013235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298901, -0.812612, 0.500320,
		-0.846442, 0.467871, 0.254228,
		-0.440674, -0.347503, -0.827676,
		22.395138, 19.482964, 13.764933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.990103, 19.722174, 14.466105>,  <22.703609, 19.726215, 14.344306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.990103, 19.722174, 14.466105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.007622, 19.471247, 14.155091>,  <22.018133, 19.320690, 13.968484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.007622, 19.471247, 14.155091>,  <21.990103, 19.722174, 14.466105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.007622, 19.471247, 14.155091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533381, -0.672758, 0.512739,
		-0.844741, 0.392265, -0.364063,
		0.043796, -0.627316, -0.777533,
		22.020761, 19.283052, 13.921831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.232008, 19.509235, 14.328378>,  <21.990103, 19.722174, 14.466105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.232008, 19.509235, 14.328378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482250, 19.223413, 14.203140>,  <21.632397, 19.051920, 14.127997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482250, 19.223413, 14.203140>,  <21.232008, 19.509235, 14.328378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482250, 19.223413, 14.203140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524514, -0.682342, 0.509210,
		-0.577495, -0.154344, -0.801672,
		0.625607, -0.714554, -0.313093,
		21.669931, 19.009047, 14.109212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.881380, 18.921009, 14.246437>,  <21.232008, 19.509235, 14.328378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.881380, 18.921009, 14.246437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.240847, 18.745831, 14.236656>,  <21.456528, 18.640722, 14.230788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.240847, 18.745831, 14.236656>,  <20.881380, 18.921009, 14.246437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.240847, 18.745831, 14.236656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364063, -0.775828, 0.515314,
		-0.244651, -0.454194, -0.856652,
		0.898668, -0.437948, -0.024452,
		21.510447, 18.614447, 14.229321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.734257, 18.227695, 13.945310>,  <20.881380, 18.921009, 14.246437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.734257, 18.227695, 13.945310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.094894, 18.201944, 14.116415>,  <21.311277, 18.186493, 14.219078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.094894, 18.201944, 14.116415>,  <20.734257, 18.227695, 13.945310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.094894, 18.201944, 14.116415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289559, -0.824468, 0.486219,
		0.321375, -0.562235, -0.761978,
		0.901595, -0.064379, 0.427763,
		21.365374, 18.182631, 14.244744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.994133, 17.551018, 13.693847>,  <20.734257, 18.227695, 13.945310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.994133, 17.551018, 13.693847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158707, 17.690439, 14.030710>,  <21.257450, 17.774092, 14.232828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158707, 17.690439, 14.030710>,  <20.994133, 17.551018, 13.693847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.158707, 17.690439, 14.030710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110749, -0.898022, 0.425783,
		0.904686, -0.268450, -0.330875,
		0.411434, 0.348556, 0.842158,
		21.282137, 17.795006, 14.283358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.499207, 17.038534, 13.936244>,  <20.994133, 17.551018, 13.693847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.499207, 17.038534, 13.936244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.467562, 17.254145, 14.271670>,  <21.448576, 17.383511, 14.472926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.467562, 17.254145, 14.271670>,  <21.499207, 17.038534, 13.936244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.467562, 17.254145, 14.271670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186788, -0.834319, 0.518673,
		0.979210, -0.115602, 0.166687,
		-0.079110, 0.539025, 0.838566,
		21.443829, 17.415852, 14.523240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.907141, 16.628986, 14.499581>,  <21.499207, 17.038534, 13.936244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.907141, 16.628986, 14.499581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.623657, 16.881207, 14.626163>,  <21.453568, 17.032537, 14.702111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.623657, 16.881207, 14.626163>,  <21.907141, 16.628986, 14.499581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.623657, 16.881207, 14.626163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346626, -0.701885, 0.622260,
		0.614479, 0.331309, 0.715996,
		-0.708708, 0.630548, 0.316453,
		21.411045, 17.070372, 14.721098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891445, 16.679661, 15.265746>,  <21.907141, 16.628986, 14.499581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891445, 16.679661, 15.265746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.531029, 16.759666, 15.111802>,  <21.314779, 16.807669, 15.019436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.531029, 16.759666, 15.111802>,  <21.891445, 16.679661, 15.265746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.531029, 16.759666, 15.111802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383824, -0.780938, 0.492763,
		-0.201992, 0.591719, 0.780428,
		-0.901043, 0.200013, -0.384859,
		21.260715, 16.819670, 14.996345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.590200, 16.300550, 15.261047>,  <21.891445, 16.679661, 15.265746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.590200, 16.300550, 15.261047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.819124, 15.981471, 15.185003>,  <22.956478, 15.790024, 15.139377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.819124, 15.981471, 15.185003>,  <22.590200, 16.300550, 15.261047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.819124, 15.981471, 15.185003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807981, 0.508922, 0.296926,
		-0.140106, -0.323538, 0.935785,
		0.572309, -0.797698, -0.190109,
		22.990816, 15.742162, 15.127971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.128216, 16.340445, 15.737587>,  <22.590200, 16.300550, 15.261047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.128216, 16.340445, 15.737587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.283012, 16.110441, 15.449252>,  <23.375891, 15.972440, 15.276251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.283012, 16.110441, 15.449252>,  <23.128216, 16.340445, 15.737587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.283012, 16.110441, 15.449252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815949, 0.577675, -0.022757,
		0.429495, -0.579360, 0.692731,
		0.386989, -0.575007, -0.720837,
		23.399109, 15.937939, 15.233001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.842716, 16.400187, 15.778811>,  <23.128216, 16.340445, 15.737587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.842716, 16.400187, 15.778811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.801474, 16.261890, 15.405751>,  <23.776728, 16.178913, 15.181915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.801474, 16.261890, 15.405751>,  <23.842716, 16.400187, 15.778811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.801474, 16.261890, 15.405751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654025, 0.682884, -0.325455,
		0.749413, -0.643531, 0.155715,
		-0.103106, -0.345742, -0.932648,
		23.770542, 16.158169, 15.125957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487476, 16.507322, 15.509750>,  <23.842716, 16.400187, 15.778811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487476, 16.507322, 15.509750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.226397, 16.486332, 15.207432>,  <24.069748, 16.473738, 15.026041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.226397, 16.486332, 15.207432>,  <24.487476, 16.507322, 15.509750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.226397, 16.486332, 15.207432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466756, 0.757936, -0.455711,
		0.596758, -0.650215, -0.470212,
		-0.652701, -0.052475, -0.755796,
		24.030586, 16.470589, 14.980693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942104, 16.601433, 14.885625>,  <24.487476, 16.507322, 15.509750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.942104, 16.601433, 14.885625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.564714, 16.673529, 14.774366>,  <24.338280, 16.716787, 14.707611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.564714, 16.673529, 14.774366>,  <24.942104, 16.601433, 14.885625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.564714, 16.673529, 14.774366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275664, 0.892661, -0.356604,
		0.184016, -0.413122, -0.891890,
		-0.943476, 0.180241, -0.278147,
		24.281672, 16.727600, 14.690923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940142, 16.706305, 14.209485>,  <24.942104, 16.601433, 14.885625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940142, 16.706305, 14.209485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.616758, 16.906677, 14.333071>,  <24.422728, 17.026901, 14.407222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.616758, 16.906677, 14.333071>,  <24.940142, 16.706305, 14.209485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.616758, 16.906677, 14.333071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351608, 0.832062, -0.429005,
		-0.471980, -0.238200, -0.848820,
		-0.808460, 0.500934, 0.308964,
		24.374220, 17.056957, 14.425760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753185, 17.071226, 13.676964>,  <24.940142, 16.706305, 14.209485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753185, 17.071226, 13.676964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.567253, 17.283129, 13.960736>,  <24.455694, 17.410271, 14.131000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.567253, 17.283129, 13.960736>,  <24.753185, 17.071226, 13.676964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.567253, 17.283129, 13.960736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318849, 0.847652, -0.424054,
		-0.825996, 0.029089, -0.562926,
		-0.464830, 0.529755, 0.709432,
		24.427805, 17.442055, 14.173566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436695, 17.610462, 13.355342>,  <24.753185, 17.071226, 13.676964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436695, 17.610462, 13.355342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.442730, 17.732550, 13.736207>,  <24.446350, 17.805803, 13.964725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.442730, 17.732550, 13.736207>,  <24.436695, 17.610462, 13.355342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.442730, 17.732550, 13.736207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141347, 0.942057, -0.304220,
		-0.989845, 0.139175, -0.028929,
		0.015087, 0.305220, 0.952162,
		24.447256, 17.824116, 14.021855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.108130, 18.229982, 13.351245>,  <24.436695, 17.610462, 13.355342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.108130, 18.229982, 13.351245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.339964, 18.210930, 13.676652>,  <24.479065, 18.199499, 13.871897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.339964, 18.210930, 13.676652>,  <24.108130, 18.229982, 13.351245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.339964, 18.210930, 13.676652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379659, 0.899112, -0.217844,
		-0.721069, 0.435119, 0.539195,
		0.579585, -0.047630, 0.813519,
		24.513840, 18.196640, 13.920708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.114609, 18.925785, 13.635387>,  <24.108130, 18.229982, 13.351245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.114609, 18.925785, 13.635387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.414288, 18.771091, 13.850474>,  <24.594095, 18.678276, 13.979527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.414288, 18.771091, 13.850474>,  <24.114609, 18.925785, 13.635387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414288, 18.771091, 13.850474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522583, 0.843938, -0.121141,
		-0.406951, 0.371761, 0.834377,
		0.749198, -0.386732, 0.537718,
		24.639048, 18.655071, 14.011789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.401875, 19.479511, 14.129144>,  <24.114609, 18.925785, 13.635387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.401875, 19.479511, 14.129144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.700893, 19.213963, 14.120671>,  <24.880304, 19.054632, 14.115588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.700893, 19.213963, 14.120671>,  <24.401875, 19.479511, 14.129144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.700893, 19.213963, 14.120671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660053, 0.746051, -0.087973,
		0.074204, 0.051784, 0.995898,
		0.747546, -0.663873, -0.021180,
		24.925158, 19.014801, 14.114317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885618, 19.598339, 14.690833>,  <24.401875, 19.479511, 14.129144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885618, 19.598339, 14.690833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.064734, 19.406803, 14.388787>,  <25.172203, 19.291882, 14.207560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.064734, 19.406803, 14.388787>,  <24.885618, 19.598339, 14.690833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064734, 19.406803, 14.388787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695329, 0.717427, -0.042607,
		0.562142, -0.505974, 0.654208,
		0.447788, -0.478841, -0.755114,
		25.199070, 19.263151, 14.162253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648817, 19.816097, 14.795957>,  <24.885618, 19.598339, 14.690833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648817, 19.816097, 14.795957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.609114, 19.647593, 14.435360>,  <25.585291, 19.546490, 14.219002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.609114, 19.647593, 14.435360>,  <25.648817, 19.816097, 14.795957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609114, 19.647593, 14.435360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678226, 0.634283, -0.371072,
		0.728118, -0.648248, 0.222751,
		-0.099259, -0.421260, -0.901492,
		25.579336, 19.521215, 14.164912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282696, 19.845888, 14.538781>,  <25.648817, 19.816097, 14.795957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282696, 19.845888, 14.538781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.079405, 19.756948, 14.205971>,  <25.957430, 19.703585, 14.006285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.079405, 19.756948, 14.205971>,  <26.282696, 19.845888, 14.538781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079405, 19.756948, 14.205971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630288, 0.562331, -0.535277,
		0.586894, -0.796457, -0.145645,
		-0.508226, -0.222352, -0.832026,
		25.926937, 19.690243, 13.956363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655663, 19.411968, 13.948153>,  <26.282696, 19.845888, 14.538781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655663, 19.411968, 13.948153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.366192, 19.631546, 13.780844>,  <26.192509, 19.763292, 13.680458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.366192, 19.631546, 13.780844>,  <26.655663, 19.411968, 13.948153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366192, 19.631546, 13.780844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687093, 0.516197, -0.511315,
		-0.064773, -0.657419, -0.750736,
		-0.723676, 0.548945, -0.418272,
		26.149090, 19.796230, 13.655362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903673, 19.571095, 13.335528>,  <26.655663, 19.411968, 13.948153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903673, 19.571095, 13.335528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.593075, 19.823036, 13.342831>,  <26.406715, 19.974201, 13.347212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.593075, 19.823036, 13.342831>,  <26.903673, 19.571095, 13.335528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593075, 19.823036, 13.342831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540637, 0.680831, -0.494147,
		-0.323671, -0.373834, -0.869187,
		-0.776498, 0.629855, 0.018256,
		26.360125, 20.011993, 13.348308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894260, 19.740297, 12.665930>,  <26.903673, 19.571095, 13.335528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894260, 19.740297, 12.665930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.680933, 20.013451, 12.865625>,  <26.552937, 20.177343, 12.985443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.680933, 20.013451, 12.865625>,  <26.894260, 19.740297, 12.665930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680933, 20.013451, 12.865625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275727, 0.698278, -0.660592,
		-0.799717, -0.214651, -0.560694,
		-0.533317, 0.682885, 0.499240,
		26.520937, 20.218317, 13.015397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516666, 20.053169, 12.205205>,  <26.894260, 19.740297, 12.665930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516666, 20.053169, 12.205205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.520647, 20.331633, 12.492333>,  <26.523035, 20.498711, 12.664610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.520647, 20.331633, 12.492333>,  <26.516666, 20.053169, 12.205205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520647, 20.331633, 12.492333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095740, 0.713895, -0.693677,
		-0.995357, 0.075628, -0.059546,
		0.009951, 0.696157, 0.717821,
		26.523632, 20.540480, 12.707680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168453, 20.618479, 11.935815>,  <26.516666, 20.053169, 12.205205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168453, 20.618479, 11.935815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.382547, 20.761873, 12.241760>,  <26.511003, 20.847910, 12.425327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.382547, 20.761873, 12.241760>,  <26.168453, 20.618479, 11.935815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382547, 20.761873, 12.241760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228789, 0.810111, -0.539793,
		-0.813131, 0.463907, 0.351581,
		0.535233, 0.358484, 0.764863,
		26.543118, 20.869419, 12.471219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.534847, 18.682964, 21.424393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.363859, 18.322781, 21.392292>,  <15.261266, 18.106670, 21.373032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.363859, 18.322781, 21.392292>,  <15.534847, 18.682964, 21.424393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.363859, 18.322781, 21.392292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540782, -0.183562, -0.820890,
		0.724447, -0.394306, 0.565420,
		-0.427471, -0.900460, -0.080252,
		15.235618, 18.052643, 21.368216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095123, 18.086866, 21.489517>,  <15.534847, 18.682964, 21.424393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095123, 18.086866, 21.489517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782525, 17.947466, 21.282516>,  <15.594966, 17.863825, 21.158316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782525, 17.947466, 21.282516>,  <16.095123, 18.086866, 21.489517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.782525, 17.947466, 21.282516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610797, -0.258192, -0.748507,
		0.127241, -0.901046, 0.414640,
		-0.781496, -0.348502, -0.517504,
		15.548077, 17.842915, 21.127266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378534, 17.553076, 21.069876>,  <16.095123, 18.086866, 21.489517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.378534, 17.553076, 21.069876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029203, 17.584927, 20.877644>,  <15.819605, 17.604036, 20.762304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029203, 17.584927, 20.877644>,  <16.378534, 17.553076, 21.069876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029203, 17.584927, 20.877644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415096, -0.394655, -0.819721,
		-0.254934, -0.915373, 0.311611,
		-0.873330, 0.079626, -0.480578,
		15.767204, 17.608814, 20.733471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332775, 17.091377, 20.650124>,  <16.378534, 17.553076, 21.069876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332775, 17.091377, 20.650124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024599, 17.261501, 20.460163>,  <15.839693, 17.363575, 20.346188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024599, 17.261501, 20.460163>,  <16.332775, 17.091377, 20.650124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024599, 17.261501, 20.460163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453010, -0.158895, -0.877231,
		-0.448554, -0.890990, -0.070250,
		-0.770442, 0.425310, -0.474900,
		15.793467, 17.389093, 20.317694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052452, 16.712938, 20.089752>,  <16.332775, 17.091377, 20.650124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052452, 16.712938, 20.089752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927672, 17.078430, 19.985609>,  <15.852804, 17.297726, 19.923124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927672, 17.078430, 19.985609>,  <16.052452, 16.712938, 20.089752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927672, 17.078430, 19.985609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471585, -0.088980, -0.877320,
		-0.824800, -0.396460, -0.403144,
		-0.311951, 0.913730, -0.260356,
		15.834087, 17.352549, 19.907503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563527, 16.743965, 19.467016>,  <16.052452, 16.712938, 20.089752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563527, 16.743965, 19.467016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.701711, 17.119074, 19.481140>,  <15.784621, 17.344139, 19.489614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.701711, 17.119074, 19.481140>,  <15.563527, 16.743965, 19.467016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.701711, 17.119074, 19.481140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121301, -0.007313, -0.992589,
		-0.930561, 0.347182, -0.116278,
		0.345459, 0.937770, 0.035309,
		15.805348, 17.400404, 19.491734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.132251, 17.126551, 18.921906>,  <15.563527, 16.743965, 19.467016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.132251, 17.126551, 18.921906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.467261, 17.332851, 18.994072>,  <15.668268, 17.456631, 19.037373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.467261, 17.332851, 18.994072>,  <15.132251, 17.126551, 18.921906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.467261, 17.332851, 18.994072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068911, 0.227855, -0.971253,
		-0.542033, 0.825884, 0.155294,
		0.837527, 0.515750, 0.180418,
		15.718519, 17.487576, 19.048197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032055, 17.780544, 18.625578>,  <15.132251, 17.126551, 18.921906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032055, 17.780544, 18.625578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425500, 17.747766, 18.689814>,  <15.661567, 17.728100, 18.728355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425500, 17.747766, 18.689814>,  <15.032055, 17.780544, 18.625578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425500, 17.747766, 18.689814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179062, 0.340222, -0.923139,
		0.021009, 0.936768, 0.349320,
		0.983614, -0.081944, 0.160591,
		15.720584, 17.723183, 18.737991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.387573, 18.483307, 18.423990>,  <15.032055, 17.780544, 18.625578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.387573, 18.483307, 18.423990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638360, 18.172630, 18.399788>,  <15.788833, 17.986225, 18.385267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638360, 18.172630, 18.399788>,  <15.387573, 18.483307, 18.423990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.638360, 18.172630, 18.399788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265565, 0.286093, -0.920666,
		0.732384, 0.561159, 0.385633,
		0.626968, -0.776692, -0.060506,
		15.826450, 17.939623, 18.381636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.946507, 18.744661, 18.166855>,  <15.387573, 18.483307, 18.423990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.946507, 18.744661, 18.166855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985393, 18.355312, 18.083817>,  <16.008724, 18.121702, 18.033995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985393, 18.355312, 18.083817>,  <15.946507, 18.744661, 18.166855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985393, 18.355312, 18.083817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343379, 0.228578, -0.910957,
		0.934152, 0.017277, 0.356457,
		0.097216, -0.973372, -0.207594,
		16.014557, 18.063301, 18.021538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566408, 18.779530, 17.757467>,  <15.946507, 18.744661, 18.166855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566408, 18.779530, 17.757467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414375, 18.419315, 17.673014>,  <16.323156, 18.203188, 17.622341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414375, 18.419315, 17.673014>,  <16.566408, 18.779530, 17.757467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414375, 18.419315, 17.673014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159115, 0.161204, -0.974010,
		0.911164, -0.403798, 0.082018,
		-0.380082, -0.900533, -0.211133,
		16.300350, 18.149155, 17.609674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076384, 18.421621, 17.344627>,  <16.566408, 18.779530, 17.757467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076384, 18.421621, 17.344627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719763, 18.254049, 17.275768>,  <16.505791, 18.153505, 17.234453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719763, 18.254049, 17.275768>,  <17.076384, 18.421621, 17.344627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719763, 18.254049, 17.275768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147186, 0.091474, -0.984870,
		0.428341, -0.903398, -0.019893,
		-0.891550, -0.418932, -0.172150,
		16.452297, 18.128370, 17.224123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.143984, 17.756407, 16.857931>,  <17.076384, 18.421621, 17.344627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.143984, 17.756407, 16.857931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.810186, 17.974928, 16.829157>,  <16.609909, 18.106041, 16.811892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.810186, 17.974928, 16.829157>,  <17.143984, 17.756407, 16.857931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810186, 17.974928, 16.829157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066332, -0.030004, -0.997346,
		-0.547012, -0.837050, -0.011200,
		-0.834493, 0.546303, -0.071936,
		16.559839, 18.138819, 16.807575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662666, 17.178108, 16.818533>,  <17.143984, 17.756407, 16.857931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662666, 17.178108, 16.818533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371450, 17.115129, 16.551649>,  <17.196722, 17.077341, 16.391518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371450, 17.115129, 16.551649>,  <17.662666, 17.178108, 16.818533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371450, 17.115129, 16.551649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438417, 0.641285, -0.629717,
		0.527020, -0.750975, -0.397852,
		-0.728038, -0.157448, -0.667210,
		17.153040, 17.067894, 16.351486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.212667, 16.868729, 16.452734>,  <17.662666, 17.178108, 16.818533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.212667, 16.868729, 16.452734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363924, 16.518051, 16.333794>,  <18.454678, 16.307646, 16.262428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363924, 16.518051, 16.333794>,  <18.212667, 16.868729, 16.452734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.363924, 16.518051, 16.333794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647918, -0.480053, 0.591398,
		-0.661219, -0.030973, -0.749554,
		0.378143, -0.876693, -0.297352,
		18.477367, 16.255043, 16.244589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.564930, 16.327658, 16.322433>,  <18.212667, 16.868729, 16.452734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.564930, 16.327658, 16.322433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916191, 16.142841, 16.372015>,  <18.126947, 16.031952, 16.401764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916191, 16.142841, 16.372015>,  <17.564930, 16.327658, 16.322433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916191, 16.142841, 16.372015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409891, -0.593136, 0.692949,
		-0.246647, -0.659325, -0.710251,
		0.878154, -0.462039, 0.123956,
		18.179638, 16.004230, 16.409203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405005, 15.724247, 16.540237>,  <17.564930, 16.327658, 16.322433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.405005, 15.724247, 16.540237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792122, 15.672503, 16.626625>,  <18.024393, 15.641456, 16.678457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792122, 15.672503, 16.626625>,  <17.405005, 15.724247, 16.540237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792122, 15.672503, 16.626625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251218, -0.440584, 0.861844,
		-0.016336, -0.888342, -0.458892,
		0.967793, -0.129361, 0.215970,
		18.082460, 15.633694, 16.691416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508797, 15.069209, 16.735228>,  <17.405005, 15.724247, 16.540237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508797, 15.069209, 16.735228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803579, 15.280156, 16.904356>,  <17.980448, 15.406725, 17.005833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803579, 15.280156, 16.904356>,  <17.508797, 15.069209, 16.735228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803579, 15.280156, 16.904356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116917, -0.516651, 0.848176,
		0.665753, -0.674503, -0.319090,
		0.736956, 0.527369, 0.422823,
		18.024666, 15.438367, 17.031202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.010195, 14.530904, 16.990730>,  <17.508797, 15.069209, 16.735228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.010195, 14.530904, 16.990730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021181, 14.871820, 17.199669>,  <18.027773, 15.076370, 17.325031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021181, 14.871820, 17.199669>,  <18.010195, 14.530904, 16.990730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021181, 14.871820, 17.199669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162936, -0.511737, 0.843550,
		0.986254, -0.108278, 0.124813,
		0.027467, 0.852292, 0.522345,
		18.029421, 15.127508, 17.356373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234133, 14.237142, 17.688192>,  <18.010195, 14.530904, 16.990730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234133, 14.237142, 17.688192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159702, 14.617983, 17.785250>,  <18.115044, 14.846488, 17.843485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159702, 14.617983, 17.785250>,  <18.234133, 14.237142, 17.688192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.159702, 14.617983, 17.785250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039750, -0.254050, 0.966374,
		0.981731, 0.170173, 0.085118,
		-0.186075, 0.952103, 0.242645,
		18.103880, 14.903614, 17.858044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508501, 14.176846, 18.350559>,  <18.234133, 14.237142, 17.688192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.508501, 14.176846, 18.350559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284927, 14.508170, 18.335123>,  <18.150784, 14.706965, 18.325861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284927, 14.508170, 18.335123>,  <18.508501, 14.176846, 18.350559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.284927, 14.508170, 18.335123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234629, -0.113344, 0.965455,
		0.795324, 0.548681, 0.257698,
		-0.558935, 0.828313, -0.038591,
		18.117247, 14.756664, 18.323545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715540, 14.647777, 18.828503>,  <18.508501, 14.176846, 18.350559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715540, 14.647777, 18.828503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339434, 14.761852, 18.754137>,  <18.113770, 14.830297, 18.709518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339434, 14.761852, 18.754137>,  <18.715540, 14.647777, 18.828503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.339434, 14.761852, 18.754137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225523, -0.112713, 0.967696,
		0.255021, 0.951821, 0.170297,
		-0.940268, 0.285189, -0.185913,
		18.057354, 14.847409, 18.698362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573021, 15.187953, 19.288322>,  <18.715540, 14.647777, 18.828503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573021, 15.187953, 19.288322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203995, 15.071224, 19.187361>,  <17.982578, 15.001187, 19.126783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203995, 15.071224, 19.187361>,  <18.573021, 15.187953, 19.288322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.203995, 15.071224, 19.187361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189059, -0.228355, 0.955045,
		-0.336341, 0.928813, 0.155501,
		-0.922568, -0.291822, -0.252405,
		17.927225, 14.983678, 19.111639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.136696, 15.639368, 19.666809>,  <18.573021, 15.187953, 19.288322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.136696, 15.639368, 19.666809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917276, 15.313800, 19.590256>,  <17.785624, 15.118459, 19.544323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.917276, 15.313800, 19.590256>,  <18.136696, 15.639368, 19.666809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917276, 15.313800, 19.590256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294163, -0.026396, 0.955391,
		-0.782663, 0.580378, -0.224946,
		-0.548550, -0.813920, -0.191384,
		17.752712, 15.069624, 19.532841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528986, 15.743642, 20.014692>,  <18.136696, 15.639368, 19.666809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.528986, 15.743642, 20.014692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.442186, 15.363634, 19.924915>,  <17.390106, 15.135630, 19.871050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.442186, 15.363634, 19.924915>,  <17.528986, 15.743642, 20.014692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.442186, 15.363634, 19.924915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524503, -0.080439, 0.847600,
		-0.823290, 0.301651, -0.480832,
		-0.217001, -0.950019, -0.224442,
		17.377087, 15.078629, 19.857582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771828, 15.640428, 19.918297>,  <17.528986, 15.743642, 20.014692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771828, 15.640428, 19.918297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911631, 15.283437, 20.032372>,  <16.995512, 15.069242, 20.100817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911631, 15.283437, 20.032372>,  <16.771828, 15.640428, 19.918297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911631, 15.283437, 20.032372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650660, -0.012186, 0.759272,
		-0.674157, -0.450928, -0.584958,
		0.349505, -0.892477, 0.285186,
		17.016481, 15.015694, 20.117928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140764, 15.218555, 20.098679>,  <16.771828, 15.640428, 19.918297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.140764, 15.218555, 20.098679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.462643, 15.071296, 20.284983>,  <16.655769, 14.982940, 20.396765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.462643, 15.071296, 20.284983>,  <16.140764, 15.218555, 20.098679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462643, 15.071296, 20.284983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493200, 0.022176, 0.869633,
		-0.330485, -0.929502, -0.163727,
		0.804694, -0.368151, 0.465759,
		16.704052, 14.960851, 20.424711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.995452, 14.505321, 20.486725>,  <16.140764, 15.218555, 20.098679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.995452, 14.505321, 20.486725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.253685, 14.747710, 20.672636>,  <16.408625, 14.893144, 20.784182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.253685, 14.747710, 20.672636>,  <15.995452, 14.505321, 20.486725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253685, 14.747710, 20.672636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604998, 0.034415, 0.795483,
		0.466047, -0.794740, 0.388830,
		0.645583, 0.605974, 0.464777,
		16.447361, 14.929502, 20.812069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150417, 13.810510, 20.407776>,  <15.995452, 14.505321, 20.486725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150417, 13.810510, 20.407776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799947, 13.629656, 20.340973>,  <15.589664, 13.521143, 20.300892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799947, 13.629656, 20.340973>,  <16.150417, 13.810510, 20.407776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.799947, 13.629656, 20.340973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228136, -0.083794, -0.970017,
		0.424585, -0.888004, 0.176567,
		-0.876174, -0.452136, -0.167008,
		15.537094, 13.494015, 20.290871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389931, 13.216156, 19.963514>,  <16.150417, 13.810510, 20.407776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389931, 13.216156, 19.963514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001120, 13.290472, 19.906040>,  <15.767833, 13.335062, 19.871555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001120, 13.290472, 19.906040>,  <16.389931, 13.216156, 19.963514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.001120, 13.290472, 19.906040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098474, -0.233004, -0.967477,
		-0.213219, -0.954565, 0.208192,
		-0.972029, 0.185783, -0.143681,
		15.709512, 13.346210, 19.862936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.202026, 12.657861, 19.560944>,  <16.389931, 13.216156, 19.963514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.202026, 12.657861, 19.560944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.918470, 12.937047, 19.520304>,  <15.748337, 13.104559, 19.495920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.918470, 12.937047, 19.520304>,  <16.202026, 12.657861, 19.560944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.918470, 12.937047, 19.520304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017299, -0.126800, -0.991777,
		-0.705109, -0.704817, 0.077813,
		-0.708888, 0.697965, -0.101601,
		15.705804, 13.146437, 19.489824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.668871, 12.264239, 19.143990>,  <16.202026, 12.657861, 19.560944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.668871, 12.264239, 19.143990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611917, 12.659184, 19.116142>,  <15.577744, 12.896150, 19.099434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611917, 12.659184, 19.116142>,  <15.668871, 12.264239, 19.143990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611917, 12.659184, 19.116142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000028, -0.070338, -0.997523,
		-0.989811, -0.142031, 0.010042,
		-0.142386, 0.987360, -0.069618,
		15.569201, 12.955392, 19.095257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084096, 12.399570, 18.704004>,  <15.668871, 12.264239, 19.143990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.084096, 12.399570, 18.704004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279562, 12.746671, 18.667747>,  <15.396841, 12.954931, 18.645994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279562, 12.746671, 18.667747>,  <15.084096, 12.399570, 18.704004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279562, 12.746671, 18.667747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119527, -0.036328, -0.992166,
		-0.864246, 0.495671, 0.085967,
		0.488665, 0.867751, -0.090643,
		15.426162, 13.006996, 18.640554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730197, 12.685113, 18.259144>,  <15.084096, 12.399570, 18.704004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.730197, 12.685113, 18.259144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060727, 12.909419, 18.238245>,  <15.259045, 13.044003, 18.225706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060727, 12.909419, 18.238245>,  <14.730197, 12.685113, 18.259144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060727, 12.909419, 18.238245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043177, -0.029415, -0.998634,
		-0.561536, 0.827452, -0.000094,
		0.826325, 0.560766, -0.052245,
		15.308624, 13.077649, 18.222572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602514, 13.164557, 17.658381>,  <14.730197, 12.685113, 18.259144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602514, 13.164557, 17.658381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.997327, 13.185509, 17.719078>,  <15.234215, 13.198079, 17.755497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.997327, 13.185509, 17.719078>,  <14.602514, 13.164557, 17.658381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997327, 13.185509, 17.719078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149248, 0.048683, -0.987601,
		-0.059116, 0.997440, 0.040235,
		0.987031, 0.052378, 0.151744,
		15.293436, 13.201222, 17.764601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.837525, 13.607594, 17.096565>,  <14.602514, 13.164557, 17.658381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.837525, 13.607594, 17.096565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152793, 13.403675, 17.234491>,  <15.341953, 13.281324, 17.317247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152793, 13.403675, 17.234491>,  <14.837525, 13.607594, 17.096565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.152793, 13.403675, 17.234491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247268, -0.250762, -0.935937,
		0.563602, 0.822938, -0.071587,
		0.788170, -0.509795, 0.344816,
		15.389244, 13.250736, 17.337936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.408815, 13.746463, 16.646090>,  <14.837525, 13.607594, 17.096565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.408815, 13.746463, 16.646090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545780, 13.424706, 16.840286>,  <15.627959, 13.231651, 16.956804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545780, 13.424706, 16.840286>,  <15.408815, 13.746463, 16.646090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545780, 13.424706, 16.840286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611282, -0.201680, -0.765284,
		0.713504, 0.558817, 0.422654,
		0.342412, -0.804394, 0.485494,
		15.648504, 13.183388, 16.985935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161310, 13.732719, 16.634947>,  <15.408815, 13.746463, 16.646090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161310, 13.732719, 16.634947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075874, 13.346651, 16.695375>,  <16.024612, 13.115009, 16.731632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075874, 13.346651, 16.695375>,  <16.161310, 13.732719, 16.634947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.075874, 13.346651, 16.695375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451057, -0.234600, -0.861110,
		0.866560, -0.115784, 0.485456,
		-0.213591, -0.965172, 0.151069,
		16.011797, 13.057099, 16.740696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.813829, 13.286290, 16.629652>,  <16.161310, 13.732719, 16.634947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.813829, 13.286290, 16.629652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525936, 13.021716, 16.545284>,  <16.353201, 12.862972, 16.494663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525936, 13.021716, 16.545284>,  <16.813829, 13.286290, 16.629652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525936, 13.021716, 16.545284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488810, -0.267058, -0.830508,
		0.492999, -0.700845, 0.515527,
		-0.719733, -0.661435, -0.210921,
		16.310017, 12.823286, 16.482008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118893, 12.671844, 16.421337>,  <16.813829, 13.286290, 16.629652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118893, 12.671844, 16.421337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755493, 12.666950, 16.254253>,  <16.537455, 12.664014, 16.154003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755493, 12.666950, 16.254253>,  <17.118893, 12.671844, 16.421337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755493, 12.666950, 16.254253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383691, -0.420459, -0.822189,
		-0.165568, -0.907229, 0.386682,
		-0.908498, -0.012238, -0.417710,
		16.482944, 12.663280, 16.128941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.622085, 13.239527, 25.362169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.853255, 12.919915, 25.428564>,  <12.991958, 12.728148, 25.468401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.853255, 12.919915, 25.428564>,  <12.622085, 13.239527, 25.362169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853255, 12.919915, 25.428564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270654, -0.004221, -0.962667,
		0.769900, 0.601277, 0.213821,
		0.577927, -0.799030, 0.165988,
		13.026633, 12.680206, 25.478361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.242038, 13.411696, 25.129408>,  <12.622085, 13.239527, 25.362169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.242038, 13.411696, 25.129408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.269975, 13.013542, 25.155729>,  <13.286737, 12.774650, 25.171522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.269975, 13.013542, 25.155729>,  <13.242038, 13.411696, 25.129408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.269975, 13.013542, 25.155729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469160, -0.025437, -0.882747,
		0.880347, 0.092526, 0.465218,
		0.069843, -0.995385, 0.065802,
		13.290928, 12.714927, 25.175470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891509, 13.339813, 24.940748>,  <13.242038, 13.411696, 25.129408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891509, 13.339813, 24.940748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.734404, 12.976734, 24.881660>,  <13.640141, 12.758886, 24.846209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.734404, 12.976734, 24.881660>,  <13.891509, 13.339813, 24.940748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734404, 12.976734, 24.881660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448528, -0.048846, -0.892433,
		0.802844, -0.416771, 0.426313,
		-0.392764, -0.907698, -0.147718,
		13.616574, 12.704425, 24.837345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468224, 12.973259, 24.743246>,  <13.891509, 13.339813, 24.940748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468224, 12.973259, 24.743246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.172389, 12.734354, 24.619123>,  <13.994888, 12.591011, 24.544651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.172389, 12.734354, 24.619123>,  <14.468224, 12.973259, 24.743246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.172389, 12.734354, 24.619123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524798, -0.223058, -0.821482,
		0.421425, -0.770404, 0.478414,
		-0.739586, -0.597263, -0.310304,
		13.950513, 12.555175, 24.526031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858571, 12.443092, 24.437498>,  <14.468224, 12.973259, 24.743246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.858571, 12.443092, 24.437498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.485441, 12.434318, 24.293633>,  <14.261563, 12.429052, 24.207314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.485441, 12.434318, 24.293633>,  <14.858571, 12.443092, 24.437498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485441, 12.434318, 24.293633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354592, 0.121573, -0.927084,
		0.064062, -0.992340, -0.105628,
		-0.932824, -0.021936, -0.359664,
		14.205594, 12.427736, 24.185734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.931885, 12.113426, 23.813438>,  <14.858571, 12.443092, 24.437498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.931885, 12.113426, 23.813438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.567535, 12.272105, 23.767935>,  <14.348926, 12.367312, 23.740633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.567535, 12.272105, 23.767935>,  <14.931885, 12.113426, 23.813438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.567535, 12.272105, 23.767935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162948, 0.092466, -0.982292,
		-0.379154, -0.913281, -0.148866,
		-0.910873, 0.396697, -0.113758,
		14.294273, 12.391114, 23.733807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.794202, 11.849632, 23.259026>,  <14.931885, 12.113426, 23.813438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.794202, 11.849632, 23.259026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.554987, 12.168604, 23.291170>,  <14.411458, 12.359987, 23.310457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.554987, 12.168604, 23.291170>,  <14.794202, 11.849632, 23.259026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.554987, 12.168604, 23.291170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154428, 0.213039, -0.964763,
		-0.786450, -0.564554, -0.250551,
		-0.598037, 0.797430, 0.080361,
		14.375576, 12.407833, 23.315279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267711, 11.709105, 22.760353>,  <14.794202, 11.849632, 23.259026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267711, 11.709105, 22.760353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.338424, 12.091573, 22.853725>,  <14.380852, 12.321054, 22.909750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.338424, 12.091573, 22.853725>,  <14.267711, 11.709105, 22.760353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338424, 12.091573, 22.853725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218069, 0.193223, -0.956614,
		-0.959788, 0.220017, -0.174352,
		0.176783, 0.956168, 0.233432,
		14.391459, 12.378423, 22.923756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.976671, 12.127194, 22.277035>,  <14.267711, 11.709105, 22.760353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.976671, 12.127194, 22.277035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.241884, 12.390950, 22.418791>,  <14.401012, 12.549204, 22.503845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.241884, 12.390950, 22.418791>,  <13.976671, 12.127194, 22.277035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241884, 12.390950, 22.418791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061461, 0.423862, -0.903639,
		-0.746063, 0.620924, 0.240508,
		0.663033, 0.659390, 0.354390,
		14.440794, 12.588767, 22.525108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.827302, 12.823255, 21.948147>,  <13.976671, 12.127194, 22.277035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.827302, 12.823255, 21.948147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.195168, 12.884256, 22.092901>,  <14.415887, 12.920857, 22.179754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.195168, 12.884256, 22.092901>,  <13.827302, 12.823255, 21.948147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195168, 12.884256, 22.092901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259321, 0.456194, -0.851258,
		-0.294911, 0.876715, 0.379997,
		0.919663, 0.152504, 0.361887,
		14.471066, 12.930008, 22.201468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.969710, 13.534984, 21.763805>,  <13.827302, 12.823255, 21.948147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.969710, 13.534984, 21.763805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.329542, 13.367234, 21.812603>,  <14.545442, 13.266584, 21.841881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.329542, 13.367234, 21.812603>,  <13.969710, 13.534984, 21.763805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.329542, 13.367234, 21.812603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298617, 0.386745, -0.872500,
		0.318724, 0.821312, 0.473140,
		0.899579, -0.419374, 0.121993,
		14.599416, 13.241422, 21.849201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.486480, 14.110831, 21.607178>,  <13.969710, 13.534984, 21.763805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.486480, 14.110831, 21.607178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.645959, 13.749929, 21.541481>,  <14.741647, 13.533388, 21.502064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.645959, 13.749929, 21.541481>,  <14.486480, 14.110831, 21.607178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645959, 13.749929, 21.541481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297646, 0.296703, -0.907400,
		0.867437, 0.312894, 0.386848,
		0.398699, -0.902255, -0.164240,
		14.765569, 13.479253, 21.492208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075040, 14.234413, 21.107508>,  <14.486480, 14.110831, 21.607178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075040, 14.234413, 21.107508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.019258, 13.839050, 21.083490>,  <14.985790, 13.601832, 21.069080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.019258, 13.839050, 21.083490>,  <15.075040, 14.234413, 21.107508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.019258, 13.839050, 21.083490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255958, 0.022595, -0.966424,
		0.956576, -0.150139, 0.249840,
		-0.139452, -0.988407, -0.060043,
		14.977423, 13.542528, 21.065477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743254, 13.952497, 20.973228>,  <15.075040, 14.234413, 21.107508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743254, 13.952497, 20.973228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.472352, 13.685794, 20.848803>,  <15.309811, 13.525772, 20.774147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.472352, 13.685794, 20.848803>,  <15.743254, 13.952497, 20.973228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.472352, 13.685794, 20.848803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375683, 0.050126, -0.925391,
		0.632604, -0.743587, 0.216542,
		-0.677255, -0.666757, -0.311063,
		15.269176, 13.485766, 20.755484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245438, 14.051935, 21.547237>,  <15.743254, 13.952497, 20.973228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245438, 14.051935, 21.547237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.523951, 14.328181, 21.469021>,  <16.691059, 14.493929, 21.422091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.523951, 14.328181, 21.469021>,  <16.245438, 14.051935, 21.547237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.523951, 14.328181, 21.469021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059934, 0.215541, 0.974654,
		0.715259, -0.690356, 0.108686,
		0.696285, 0.690616, -0.195543,
		16.732836, 14.535366, 21.410358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.865658, 13.882413, 21.909578>,  <16.245438, 14.051935, 21.547237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.865658, 13.882413, 21.909578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.818224, 14.272067, 21.832640>,  <16.789764, 14.505859, 21.786476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.818224, 14.272067, 21.832640>,  <16.865658, 13.882413, 21.909578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818224, 14.272067, 21.832640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006926, 0.194518, 0.980874,
		0.992920, 0.114984, -0.029814,
		-0.118584, 0.974136, -0.192344,
		16.782648, 14.564308, 21.774937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180443, 14.198044, 22.347008>,  <16.865658, 13.882413, 21.909578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180443, 14.198044, 22.347008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.942204, 14.500474, 22.238480>,  <16.799261, 14.681932, 22.173363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.942204, 14.500474, 22.238480>,  <17.180443, 14.198044, 22.347008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.942204, 14.500474, 22.238480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023838, 0.354250, 0.934847,
		0.802929, 0.550324, -0.229014,
		-0.595597, 0.756075, -0.271319,
		16.763525, 14.727297, 22.157084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607828, 14.760392, 22.537693>,  <17.180443, 14.198044, 22.347008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.607828, 14.760392, 22.537693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.234024, 14.894784, 22.490686>,  <17.009743, 14.975419, 22.462482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.234024, 14.894784, 22.490686>,  <17.607828, 14.760392, 22.537693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234024, 14.894784, 22.490686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029477, 0.402076, 0.915132,
		0.354716, 0.851735, -0.385648,
		-0.934510, 0.335979, -0.117516,
		16.953671, 14.995578, 22.455431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.608669, 15.411423, 22.855122>,  <17.607828, 14.760392, 22.537693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.608669, 15.411423, 22.855122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.220732, 15.316315, 22.833694>,  <16.987968, 15.259250, 22.820839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.220732, 15.316315, 22.833694>,  <17.608669, 15.411423, 22.855122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.220732, 15.316315, 22.833694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156326, 0.438227, 0.885166,
		-0.186993, 0.866846, -0.462181,
		-0.969843, -0.237771, -0.053566,
		16.929779, 15.244984, 22.817625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202215, 16.092297, 23.104109>,  <17.608669, 15.411423, 22.855122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.202215, 16.092297, 23.104109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.992943, 15.756368, 23.162048>,  <16.867380, 15.554811, 23.196812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.992943, 15.756368, 23.162048>,  <17.202215, 16.092297, 23.104109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.992943, 15.756368, 23.162048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292090, 0.336376, 0.895285,
		-0.800603, 0.426087, -0.421289,
		-0.523181, -0.839822, 0.144847,
		16.835989, 15.504421, 23.205503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778488, 16.341990, 23.632067>,  <17.202215, 16.092297, 23.104109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778488, 16.341990, 23.632067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.656487, 15.961083, 23.637234>,  <16.583286, 15.732540, 23.640335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.656487, 15.961083, 23.637234>,  <16.778488, 16.341990, 23.632067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656487, 15.961083, 23.637234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319539, 0.115107, 0.940556,
		-0.897144, 0.282746, -0.339394,
		-0.305005, -0.952263, 0.012919,
		16.564985, 15.675405, 23.641109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026800, 16.301668, 23.906364>,  <16.778488, 16.341990, 23.632067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026800, 16.301668, 23.906364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.215824, 15.954761, 23.969011>,  <16.329239, 15.746615, 24.006599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.215824, 15.954761, 23.969011>,  <16.026800, 16.301668, 23.906364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215824, 15.954761, 23.969011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363590, -0.029972, 0.931077,
		-0.802801, -0.496934, -0.329495,
		0.472560, -0.867270, 0.156619,
		16.357592, 15.694579, 24.015997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545868, 15.788750, 24.225384>,  <16.026800, 16.301668, 23.906364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.545868, 15.788750, 24.225384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.912509, 15.677301, 24.340075>,  <16.132494, 15.610433, 24.408888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.912509, 15.677301, 24.340075>,  <15.545868, 15.788750, 24.225384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.912509, 15.677301, 24.340075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334934, -0.143524, 0.931247,
		-0.218315, -0.949616, -0.224874,
		0.916601, -0.278623, 0.286725,
		16.187490, 15.593716, 24.426092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.546358, 15.143093, 24.579220>,  <15.545868, 15.788750, 24.225384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.546358, 15.143093, 24.579220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.897955, 15.295827, 24.693464>,  <16.108913, 15.387467, 24.762011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.897955, 15.295827, 24.693464>,  <15.546358, 15.143093, 24.579220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897955, 15.295827, 24.693464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276064, -0.080870, 0.957731,
		0.388793, -0.920686, 0.034327,
		0.878993, 0.381835, 0.285610,
		16.161654, 15.410378, 24.779148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759358, 14.708807, 25.108971>,  <15.546358, 15.143093, 24.579220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.759358, 14.708807, 25.108971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.980119, 15.040209, 25.146889>,  <16.112576, 15.239050, 25.169640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.980119, 15.040209, 25.146889>,  <15.759358, 14.708807, 25.108971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980119, 15.040209, 25.146889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036289, -0.089708, 0.995307,
		0.833120, -0.552750, -0.019444,
		0.551900, 0.828504, 0.094796,
		16.145689, 15.288760, 25.175327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.124325, 14.527521, 25.580139>,  <15.759358, 14.708807, 25.108971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.124325, 14.527521, 25.580139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.174400, 14.924273, 25.589092>,  <16.204447, 15.162325, 25.594465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.174400, 14.924273, 25.589092>,  <16.124325, 14.527521, 25.580139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174400, 14.924273, 25.589092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105676, -0.035764, 0.993757,
		0.986489, -0.122043, -0.109295,
		0.125190, 0.991880, 0.022384,
		16.211958, 15.221838, 25.595808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711218, 14.670366, 25.966637>,  <16.124325, 14.527521, 25.580139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711218, 14.670366, 25.966637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.499718, 15.009521, 25.982189>,  <16.372818, 15.213014, 25.991520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.499718, 15.009521, 25.982189>,  <16.711218, 14.670366, 25.966637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499718, 15.009521, 25.982189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100167, 0.016845, 0.994828,
		0.842846, 0.529910, -0.093837,
		-0.528750, 0.847887, 0.038882,
		16.341093, 15.263886, 25.993855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968195, 14.998024, 26.544571>,  <16.711218, 14.670366, 25.966637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968195, 14.998024, 26.544571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.634598, 15.211871, 26.489956>,  <16.434441, 15.340179, 26.457188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.634598, 15.211871, 26.489956>,  <16.968195, 14.998024, 26.544571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634598, 15.211871, 26.489956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174507, -0.020812, 0.984436,
		0.523455, 0.844838, 0.110651,
		-0.833992, 0.534617, -0.136536,
		16.384399, 15.372256, 26.448996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.213807, 13.761865, 24.895039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.561449, 13.567595, 24.932518>,  <8.770034, 13.451035, 24.955006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.561449, 13.567595, 24.932518>,  <8.213807, 13.761865, 24.895039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.561449, 13.567595, 24.932518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105718, -0.002665, -0.994393,
		0.483198, 0.874137, 0.049028,
		0.869105, -0.485672, 0.093700,
		8.822181, 13.421894, 24.960629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.726845, 14.170486, 24.607115>,  <8.213807, 13.761865, 24.895039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.726845, 14.170486, 24.607115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.877990, 13.800189, 24.601179>,  <8.968677, 13.578011, 24.597618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.877990, 13.800189, 24.601179>,  <8.726845, 14.170486, 24.607115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.877990, 13.800189, 24.601179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256850, 0.120208, -0.958946,
		0.889521, 0.358539, 0.283199,
		0.377862, -0.925743, -0.014837,
		8.991348, 13.522466, 24.596727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.333837, 14.280277, 24.216557>,  <8.726845, 14.170486, 24.607115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.333837, 14.280277, 24.216557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.276569, 13.884713, 24.200764>,  <9.242209, 13.647375, 24.191288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.276569, 13.884713, 24.200764>,  <9.333837, 14.280277, 24.216557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.276569, 13.884713, 24.200764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393809, -0.020323, -0.918968,
		0.907974, -0.147115, 0.392351,
		-0.143168, -0.988911, -0.039482,
		9.233619, 13.588040, 24.188919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.792123, 14.107446, 23.812130>,  <9.333837, 14.280277, 24.216557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.792123, 14.107446, 23.812130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.581875, 13.767888, 23.834408>,  <9.455726, 13.564154, 23.847775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.581875, 13.767888, 23.834408>,  <9.792123, 14.107446, 23.812130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.581875, 13.767888, 23.834408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391886, -0.299716, -0.869825,
		0.755082, -0.435372, 0.490207,
		-0.525620, -0.848894, 0.055694,
		9.424189, 13.513220, 23.851116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.214370, 13.654744, 23.822561>,  <9.792123, 14.107446, 23.812130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.214370, 13.654744, 23.822561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.888176, 13.470014, 23.683018>,  <9.692460, 13.359176, 23.599293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.888176, 13.470014, 23.683018>,  <10.214370, 13.654744, 23.822561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.888176, 13.470014, 23.683018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488452, -0.225807, -0.842867,
		0.310484, -0.857746, 0.409722,
		-0.815484, -0.461826, -0.348858,
		9.643531, 13.331466, 23.578360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452698, 13.004811, 23.513762>,  <10.214370, 13.654744, 23.822561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452698, 13.004811, 23.513762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.094481, 13.061722, 23.345114>,  <9.879552, 13.095868, 23.243925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.094481, 13.061722, 23.345114>,  <10.452698, 13.004811, 23.513762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.094481, 13.061722, 23.345114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408299, -0.113975, -0.905705,
		-0.176914, -0.983243, 0.043979,
		-0.895541, 0.142276, -0.421621,
		9.825819, 13.104404, 23.218628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.153701, 12.396911, 23.048668>,  <10.452698, 13.004811, 23.513762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.153701, 12.396911, 23.048668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.018981, 12.758747, 22.944145>,  <9.938149, 12.975849, 22.881432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.018981, 12.758747, 22.944145>,  <10.153701, 12.396911, 23.048668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.018981, 12.758747, 22.944145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476477, -0.075626, -0.875929,
		-0.812119, -0.419519, -0.405546,
		-0.336799, 0.904591, -0.261308,
		9.917941, 13.030125, 22.865753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.007559, 12.284203, 22.308750>,  <10.153701, 12.396911, 23.048668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.007559, 12.284203, 22.308750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.997639, 12.681811, 22.351278>,  <9.991687, 12.920377, 22.376795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.997639, 12.681811, 22.351278>,  <10.007559, 12.284203, 22.308750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.997639, 12.681811, 22.351278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329376, 0.108540, -0.937940,
		-0.943873, 0.011759, -0.330099,
		-0.024799, 0.994023, 0.106321,
		9.990199, 12.980018, 22.383175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.639069, 12.536144, 21.698200>,  <10.007559, 12.284203, 22.308750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.639069, 12.536144, 21.698200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.820691, 12.869386, 21.824547>,  <9.929665, 13.069330, 21.900354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.820691, 12.869386, 21.824547>,  <9.639069, 12.536144, 21.698200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.820691, 12.869386, 21.824547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175510, 0.263938, -0.948437,
		-0.873515, 0.486082, -0.026375,
		0.454057, 0.833103, 0.315866,
		9.956908, 13.119317, 21.919306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.319283, 13.177001, 21.412420>,  <9.639069, 12.536144, 21.698200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.319283, 13.177001, 21.412420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.690660, 13.288936, 21.510141>,  <9.913487, 13.356096, 21.568773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.690660, 13.288936, 21.510141>,  <9.319283, 13.177001, 21.412420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.690660, 13.288936, 21.510141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130981, 0.368808, -0.920231,
		-0.347615, 0.886382, 0.305764,
		0.928444, 0.279837, 0.244302,
		9.969193, 13.372887, 21.583431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.321014, 13.909227, 21.153982>,  <9.319283, 13.177001, 21.412420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.321014, 13.909227, 21.153982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.699321, 13.792093, 21.210230>,  <9.926305, 13.721812, 21.243979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.699321, 13.792093, 21.210230>,  <9.321014, 13.909227, 21.153982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.699321, 13.792093, 21.210230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263232, 0.437190, -0.859985,
		0.190356, 0.850360, 0.490563,
		0.945766, -0.292836, 0.140621,
		9.983050, 13.704243, 21.252417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.793596, 14.501232, 21.062002>,  <9.321014, 13.909227, 21.153982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.793596, 14.501232, 21.062002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.018366, 14.174039, 21.012772>,  <10.153228, 13.977723, 20.983234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.018366, 14.174039, 21.012772>,  <9.793596, 14.501232, 21.062002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.018366, 14.174039, 21.012772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219886, 0.291144, -0.931067,
		0.797429, 0.496125, 0.343463,
		0.561923, -0.817982, -0.123075,
		10.186943, 13.928644, 20.975849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.374640, 14.884466, 21.050688>,  <9.793596, 14.501232, 21.062002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.374640, 14.884466, 21.050688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.456736, 14.514638, 20.922285>,  <10.505994, 14.292741, 20.845243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.456736, 14.514638, 20.922285>,  <10.374640, 14.884466, 21.050688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.456736, 14.514638, 20.922285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342158, 0.375074, -0.861538,
		0.916954, 0.066989, 0.393330,
		0.205241, -0.924571, -0.321004,
		10.518308, 14.237267, 20.825983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.062352, 14.911354, 20.895756>,  <10.374640, 14.884466, 21.050688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.062352, 14.911354, 20.895756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.926558, 14.594537, 20.692810>,  <10.845081, 14.404447, 20.571043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.926558, 14.594537, 20.692810>,  <11.062352, 14.911354, 20.895756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.926558, 14.594537, 20.692810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315203, 0.412415, -0.854728,
		0.886226, -0.450090, 0.109645,
		-0.339485, -0.792043, -0.507363,
		10.824712, 14.356924, 20.540602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.757068, 15.262850, 20.784798>,  <11.062352, 14.911354, 20.895756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.757068, 15.262850, 20.784798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.688884, 15.653812, 20.734806>,  <11.647974, 15.888390, 20.704811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.688884, 15.653812, 20.734806>,  <11.757068, 15.262850, 20.784798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.688884, 15.653812, 20.734806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422538, 0.042077, 0.905368,
		0.890172, 0.207136, 0.405819,
		-0.170459, 0.977407, -0.124978,
		11.637746, 15.947035, 20.697313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.063596, 15.500707, 21.380007>,  <11.757068, 15.262850, 20.784798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.063596, 15.500707, 21.380007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.824571, 15.786737, 21.234909>,  <11.681155, 15.958356, 21.147850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.824571, 15.786737, 21.234909>,  <12.063596, 15.500707, 21.380007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.824571, 15.786737, 21.234909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372451, 0.153090, 0.915338,
		0.710070, 0.682076, 0.174850,
		-0.597563, 0.715077, -0.362745,
		11.645302, 16.001261, 21.126085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.259470, 16.160280, 21.736582>,  <12.063596, 15.500707, 21.380007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.259470, 16.160280, 21.736582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.890038, 16.204147, 21.589626>,  <11.668378, 16.230467, 21.501453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.890038, 16.204147, 21.589626>,  <12.259470, 16.160280, 21.736582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.890038, 16.204147, 21.589626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344576, 0.182773, 0.920794,
		0.168128, 0.977020, -0.131017,
		-0.923580, 0.109666, -0.367387,
		11.612964, 16.237047, 21.479410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.925373, 16.647982, 22.250584>,  <12.259470, 16.160280, 21.736582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.925373, 16.647982, 22.250584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.622039, 16.517876, 22.024616>,  <11.440039, 16.439812, 21.889036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.622039, 16.517876, 22.024616>,  <11.925373, 16.647982, 22.250584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.622039, 16.517876, 22.024616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614420, 0.067162, 0.786115,
		-0.217753, 0.943236, -0.250780,
		-0.758335, -0.325263, -0.564918,
		11.394539, 16.420298, 21.855141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.342911, 17.064739, 22.350380>,  <11.925373, 16.647982, 22.250584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.342911, 17.064739, 22.350380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.187621, 16.718025, 22.225183>,  <11.094447, 16.509996, 22.150066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.187621, 16.718025, 22.225183>,  <11.342911, 17.064739, 22.350380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.187621, 16.718025, 22.225183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650421, 0.017110, 0.759381,
		-0.652867, 0.498384, -0.570419,
		-0.388223, -0.866787, -0.312989,
		11.071154, 16.457989, 22.131287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.638922, 17.139320, 22.456520>,  <11.342911, 17.064739, 22.350380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.638922, 17.139320, 22.456520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.726084, 16.749174, 22.442802>,  <10.778381, 16.515085, 22.434572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.726084, 16.749174, 22.442802>,  <10.638922, 17.139320, 22.456520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.726084, 16.749174, 22.442802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525602, -0.146885, 0.837954,
		-0.822350, -0.164570, -0.544663,
		0.217905, -0.975367, -0.034292,
		10.791455, 16.456564, 22.432514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.075414, 16.803360, 22.509520>,  <10.638922, 17.139320, 22.456520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.075414, 16.803360, 22.509520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.350760, 16.539207, 22.629555>,  <10.515966, 16.380716, 22.701576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.350760, 16.539207, 22.629555>,  <10.075414, 16.803360, 22.509520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.350760, 16.539207, 22.629555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502178, -0.135335, 0.854109,
		-0.523424, -0.738635, -0.424788,
		0.688363, -0.660380, 0.300089,
		10.557269, 16.341093, 22.719582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.720235, 16.171383, 22.730600>,  <10.075414, 16.803360, 22.509520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.720235, 16.171383, 22.730600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.073788, 16.176447, 22.917614>,  <10.285919, 16.179485, 23.029823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.073788, 16.176447, 22.917614>,  <9.720235, 16.171383, 22.730600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.073788, 16.176447, 22.917614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438964, -0.322579, 0.838602,
		0.161434, -0.946458, -0.279564,
		0.883883, 0.012660, 0.467536,
		10.338953, 16.180244, 23.057875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.732490, 15.569601, 23.111183>,  <9.720235, 16.171383, 22.730600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.732490, 15.569601, 23.111183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.036757, 15.764061, 23.283247>,  <10.219318, 15.880736, 23.386486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.036757, 15.764061, 23.283247>,  <9.732490, 15.569601, 23.111183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.036757, 15.764061, 23.283247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355563, -0.242376, 0.902678,
		0.543098, -0.839591, -0.011512,
		0.760671, 0.486149, 0.430162,
		10.264958, 15.909905, 23.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.908983, 15.154409, 23.706604>,  <9.732490, 15.569601, 23.111183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.908983, 15.154409, 23.706604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.108702, 15.490728, 23.790281>,  <10.228533, 15.692520, 23.840487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.108702, 15.490728, 23.790281>,  <9.908983, 15.154409, 23.706604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.108702, 15.490728, 23.790281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055684, -0.209802, 0.976157,
		0.864640, -0.499040, -0.057934,
		0.499296, 0.840799, 0.209191,
		10.258491, 15.742968, 23.853039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.335484, 14.988985, 24.258331>,  <9.908983, 15.154409, 23.706604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.335484, 14.988985, 24.258331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.301821, 15.387051, 24.278591>,  <10.281623, 15.625890, 24.290747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.301821, 15.387051, 24.278591>,  <10.335484, 14.988985, 24.258331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.301821, 15.387051, 24.278591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073096, -0.056858, 0.995703,
		0.993768, 0.080093, 0.077528,
		-0.084157, 0.995165, 0.050649,
		10.276573, 15.685600, 24.293785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.847463, 15.202841, 24.665426>,  <10.335484, 14.988985, 24.258331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.847463, 15.202841, 24.665426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.586411, 15.505378, 24.683413>,  <10.429781, 15.686900, 24.694204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.586411, 15.505378, 24.683413>,  <10.847463, 15.202841, 24.665426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.586411, 15.505378, 24.683413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184149, -0.215903, 0.958893,
		0.734959, 0.617520, 0.280184,
		-0.652628, 0.756343, 0.044964,
		10.390623, 15.732281, 24.696901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.008041, 15.604570, 25.310747>,  <10.847463, 15.202841, 24.665426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.008041, 15.604570, 25.310747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.637195, 15.694820, 25.191050>,  <10.414686, 15.748971, 25.119232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.637195, 15.694820, 25.191050>,  <11.008041, 15.604570, 25.310747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.637195, 15.694820, 25.191050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326524, -0.094401, 0.940463,
		0.183944, 0.969629, 0.161194,
		-0.927117, 0.225626, -0.299243,
		10.359059, 15.762508, 25.101276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.874269, 16.185547, 25.682173>,  <11.008041, 15.604570, 25.310747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.874269, 16.185547, 25.682173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.527925, 16.009378, 25.587252>,  <10.320117, 15.903678, 25.530300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.527925, 16.009378, 25.587252>,  <10.874269, 16.185547, 25.682173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.527925, 16.009378, 25.587252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113119, -0.289697, 0.950410,
		-0.487324, 0.849769, 0.201018,
		-0.865863, -0.440419, -0.237301,
		10.268166, 15.877253, 25.516062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.103029, 16.790552, 25.812460>,  <10.874269, 16.185547, 25.682173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.103029, 16.790552, 25.812460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.466314, 16.944344, 25.878586>,  <11.684285, 17.036617, 25.918261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.466314, 16.944344, 25.878586>,  <11.103029, 16.790552, 25.812460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.466314, 16.944344, 25.878586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209179, -0.074901, -0.975004,
		-0.362484, 0.920091, -0.148451,
		0.908212, 0.384476, 0.165314,
		11.738778, 17.059687, 25.928181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.159783, 17.443806, 25.366385>,  <11.103029, 16.790552, 25.812460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.159783, 17.443806, 25.366385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.543056, 17.366772, 25.451050>,  <11.773019, 17.320551, 25.501848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.543056, 17.366772, 25.451050>,  <11.159783, 17.443806, 25.366385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.543056, 17.366772, 25.451050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239741, 0.136376, -0.961211,
		0.156250, 0.971757, 0.176843,
		0.958181, -0.192586, 0.211661,
		11.830510, 17.308996, 25.514547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.595595, 17.971348, 25.047470>,  <11.159783, 17.443806, 25.366385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.595595, 17.971348, 25.047470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.873247, 17.691153, 25.113808>,  <12.039838, 17.523035, 25.153610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.873247, 17.691153, 25.113808>,  <11.595595, 17.971348, 25.047470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.873247, 17.691153, 25.113808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507052, 0.312247, -0.803368,
		0.510963, 0.641733, 0.571922,
		0.694129, -0.700486, 0.165845,
		12.081486, 17.481007, 25.163561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.304049, 18.316553, 24.927450>,  <11.595595, 17.971348, 25.047470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.304049, 18.316553, 24.927450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.400876, 17.931549, 24.878502>,  <12.458973, 17.700546, 24.849133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.400876, 17.931549, 24.878502>,  <12.304049, 18.316553, 24.927450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.400876, 17.931549, 24.878502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503944, 0.232498, -0.831856,
		0.829122, 0.139699, 0.541333,
		0.242069, -0.962512, -0.122369,
		12.473496, 17.642796, 24.841791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.039379, 18.257212, 24.856726>,  <12.304049, 18.316553, 24.927450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.039379, 18.257212, 24.856726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.921135, 17.907452, 24.702822>,  <12.850188, 17.697596, 24.610479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.921135, 17.907452, 24.702822>,  <13.039379, 18.257212, 24.856726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921135, 17.907452, 24.702822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738342, 0.046447, -0.672825,
		0.606188, -0.482979, 0.631876,
		-0.295612, -0.874399, -0.384759,
		12.832452, 17.645132, 24.587395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.648085, 17.906561, 24.715126>,  <13.039379, 18.257212, 24.856726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.648085, 17.906561, 24.715126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.359400, 17.714520, 24.515675>,  <13.186189, 17.599295, 24.396004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.359400, 17.714520, 24.515675>,  <13.648085, 17.906561, 24.715126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.359400, 17.714520, 24.515675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556471, 0.025992, -0.830460,
		0.411668, -0.876826, 0.248405,
		-0.721713, -0.480104, -0.498629,
		13.142886, 17.570488, 24.366085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893603, 17.230980, 24.461136>,  <13.648085, 17.906561, 24.715126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893603, 17.230980, 24.461136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.602980, 17.346624, 24.211807>,  <13.428606, 17.416010, 24.062210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.602980, 17.346624, 24.211807>,  <13.893603, 17.230980, 24.461136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.602980, 17.346624, 24.211807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646300, -0.020409, -0.762811,
		-0.233258, -0.957078, -0.172024,
		-0.726558, 0.289111, -0.623320,
		13.385012, 17.433357, 24.024811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.068249, 16.841814, 23.935862>,  <13.893603, 17.230980, 24.461136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.068249, 16.841814, 23.935862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.793092, 17.091810, 23.788246>,  <13.627997, 17.241808, 23.699677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.793092, 17.091810, 23.788246>,  <14.068249, 16.841814, 23.935862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.793092, 17.091810, 23.788246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560793, 0.134879, -0.816896,
		-0.460778, -0.768890, -0.443273,
		-0.687892, 0.624992, -0.369039,
		13.586724, 17.279308, 23.677534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.996657, 16.682903, 23.260225>,  <14.068249, 16.841814, 23.935862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.996657, 16.682903, 23.260225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.826603, 17.043932, 23.233034>,  <13.724570, 17.260550, 23.216719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.826603, 17.043932, 23.233034>,  <13.996657, 16.682903, 23.260225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.826603, 17.043932, 23.233034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427921, 0.134246, -0.893790,
		-0.797585, -0.409072, -0.443303,
		-0.425136, 0.902573, -0.067978,
		13.699062, 17.314703, 23.212641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.735010, 16.805475, 22.528767>,  <13.996657, 16.682903, 23.260225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.735010, 16.805475, 22.528767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.819219, 17.159695, 22.694408>,  <13.869743, 17.372227, 22.793793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.819219, 17.159695, 22.694408>,  <13.735010, 16.805475, 22.528767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.819219, 17.159695, 22.694408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428838, 0.297010, -0.853160,
		-0.878509, 0.357192, -0.317231,
		0.210521, 0.885550, 0.414104,
		13.882375, 17.425360, 22.818640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.631124, 17.236252, 21.974983>,  <13.735010, 16.805475, 22.528767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.631124, 17.236252, 21.974983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.839315, 17.467447, 22.226389>,  <13.964230, 17.606165, 22.377232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.839315, 17.467447, 22.226389>,  <13.631124, 17.236252, 21.974983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.839315, 17.467447, 22.226389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543295, 0.343691, -0.765968,
		-0.658737, 0.740137, -0.135136,
		0.520476, 0.577991, 0.628515,
		13.995459, 17.640844, 22.414944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689521, 17.916990, 21.641380>,  <13.631124, 17.236252, 21.974983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689521, 17.916990, 21.641380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.985481, 17.895941, 21.909643>,  <14.163057, 17.883312, 22.070601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.985481, 17.895941, 21.909643>,  <13.689521, 17.916990, 21.641380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985481, 17.895941, 21.909643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663145, 0.224626, -0.713990,
		-0.113075, 0.973023, 0.201097,
		0.739900, -0.052622, 0.670655,
		14.207451, 17.880154, 22.110840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.154763, 18.562517, 21.550608>,  <13.689521, 17.916990, 21.641380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.154763, 18.562517, 21.550608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.350016, 18.252537, 21.711197>,  <14.467167, 18.066549, 21.807550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.350016, 18.252537, 21.711197>,  <14.154763, 18.562517, 21.550608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350016, 18.252537, 21.711197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618795, -0.017102, -0.785367,
		0.615485, 0.631792, 0.471187,
		0.488130, -0.774949, 0.401475,
		14.496454, 18.020052, 21.831640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831245, 18.775316, 21.579275>,  <14.154763, 18.562517, 21.550608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831245, 18.775316, 21.579275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.836798, 18.375425, 21.586788>,  <14.840129, 18.135490, 21.591295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.836798, 18.375425, 21.586788>,  <14.831245, 18.775316, 21.579275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836798, 18.375425, 21.586788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749669, -0.002026, -0.661810,
		0.661667, 0.023267, 0.749436,
		0.013880, -0.999727, 0.018783,
		14.840961, 18.075508, 21.592422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<10.028684, 18.586693, 5.669812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.355604, 18.772703, 5.805912>,  <10.551757, 18.884310, 5.887572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.355604, 18.772703, 5.805912>,  <10.028684, 18.586693, 5.669812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.355604, 18.772703, 5.805912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562610, 0.516489, 0.645530,
		0.124451, -0.719021, 0.683755,
		0.817302, 0.465024, 0.340251,
		10.600795, 18.912210, 5.907987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.894542, 18.561022, 6.445218>,  <10.028684, 18.586693, 5.669812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.894542, 18.561022, 6.445218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.145281, 18.855764, 6.343942>,  <10.295725, 19.032610, 6.283176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.145281, 18.855764, 6.343942>,  <9.894542, 18.561022, 6.445218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.145281, 18.855764, 6.343942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314544, 0.536631, 0.783001,
		0.712829, -0.411183, 0.568159,
		0.626848, 0.736856, -0.253191,
		10.333336, 19.076820, 6.267984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452756, 18.586868, 6.896332>,  <9.894542, 18.561022, 6.445218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452756, 18.586868, 6.896332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.321292, 18.928343, 6.734736>,  <10.242414, 19.133226, 6.637779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.321292, 18.928343, 6.734736>,  <10.452756, 18.586868, 6.896332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.321292, 18.928343, 6.734736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307676, 0.307638, 0.900386,
		0.892927, 0.420218, 0.161550,
		-0.328659, 0.853684, -0.403989,
		10.222694, 19.184448, 6.613540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.770514, 19.210888, 7.182419>,  <10.452756, 18.586868, 6.896332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.770514, 19.210888, 7.182419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.410350, 19.314491, 7.042604>,  <10.194251, 19.376654, 6.958716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.410350, 19.314491, 7.042604>,  <10.770514, 19.210888, 7.182419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.410350, 19.314491, 7.042604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236047, 0.384036, 0.892636,
		0.365435, 0.886245, -0.284652,
		-0.900410, 0.259009, -0.349535,
		10.140226, 19.392195, 6.937744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.304627, 19.644018, 7.343818>,  <10.770514, 19.210888, 7.182419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.304627, 19.644018, 7.343818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.235318, 19.270306, 7.468456>,  <11.193732, 19.046078, 7.543239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.235318, 19.270306, 7.468456>,  <11.304627, 19.644018, 7.343818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.235318, 19.270306, 7.468456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167608, 0.339739, 0.925465,
		-0.970507, 0.108133, -0.215461,
		-0.173274, -0.934283, 0.311595,
		11.183336, 18.990021, 7.561934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.277016, 20.049330, 8.067883>,  <11.304627, 19.644018, 7.343818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.277016, 20.049330, 8.067883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.182399, 19.663080, 8.111002>,  <11.125628, 19.431330, 8.136873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.182399, 19.663080, 8.111002>,  <11.277016, 20.049330, 8.067883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.182399, 19.663080, 8.111002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401150, 0.198106, 0.894334,
		-0.884945, 0.168304, -0.434219,
		-0.236541, -0.965623, 0.107798,
		11.111437, 19.373394, 8.143341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.692702, 20.141319, 8.594192>,  <11.277016, 20.049330, 8.067883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.692702, 20.141319, 8.594192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.831109, 19.766090, 8.601044>,  <10.914153, 19.540953, 8.605155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.831109, 19.766090, 8.601044>,  <10.692702, 20.141319, 8.594192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.831109, 19.766090, 8.601044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472412, -0.158422, 0.867023,
		-0.810616, -0.308098, -0.497973,
		0.346018, -0.938071, 0.017130,
		10.934915, 19.484669, 8.606183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.085392, 19.669571, 8.802315>,  <10.692702, 20.141319, 8.594192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.085392, 19.669571, 8.802315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.440084, 19.542957, 8.937085>,  <10.652899, 19.466990, 9.017947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.440084, 19.542957, 8.937085>,  <10.085392, 19.669571, 8.802315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.440084, 19.542957, 8.937085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359580, -0.014205, 0.933006,
		-0.290542, -0.948475, -0.126415,
		0.886729, -0.316534, 0.336925,
		10.706102, 19.447998, 9.038163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.947335, 19.159712, 9.379150>,  <10.085392, 19.669571, 8.802315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.947335, 19.159712, 9.379150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.320287, 19.296511, 9.425979>,  <10.544058, 19.378590, 9.454076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.320287, 19.296511, 9.425979>,  <9.947335, 19.159712, 9.379150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.320287, 19.296511, 9.425979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175604, 0.145449, 0.973657,
		0.315963, -0.928375, 0.195670,
		0.932379, 0.342000, 0.117070,
		10.600000, 19.399111, 9.461100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.428213, 18.732210, 9.912829>,  <9.947335, 19.159712, 9.379150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.428213, 18.732210, 9.912829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.545048, 19.114084, 9.889977>,  <10.615149, 19.343208, 9.876266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.545048, 19.114084, 9.889977>,  <10.428213, 18.732210, 9.912829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.545048, 19.114084, 9.889977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027010, 0.067945, 0.997323,
		0.956011, -0.289761, 0.045632,
		0.292086, 0.954684, -0.057129,
		10.632673, 19.400490, 9.872839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.013294, 18.808052, 10.297400>,  <10.428213, 18.732210, 9.912829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.013294, 18.808052, 10.297400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.791066, 19.139221, 10.266705>,  <10.657730, 19.337923, 10.248287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.791066, 19.139221, 10.266705>,  <11.013294, 18.808052, 10.297400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.791066, 19.139221, 10.266705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172519, -0.024498, 0.984702,
		0.813376, 0.560308, 0.156443,
		-0.555569, 0.827922, -0.076738,
		10.624395, 19.387598, 10.243683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.340455, 19.346575, 10.739349>,  <11.013294, 18.808052, 10.297400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.340455, 19.346575, 10.739349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.959785, 19.458054, 10.687753>,  <10.731382, 19.524940, 10.656795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.959785, 19.458054, 10.687753>,  <11.340455, 19.346575, 10.739349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.959785, 19.458054, 10.687753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184166, -0.181808, 0.965934,
		0.245750, 0.943014, 0.224349,
		-0.951678, 0.278695, -0.128992,
		10.674281, 19.541662, 10.649055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.120820, 19.765207, 11.249580>,  <11.340455, 19.346575, 10.739349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.120820, 19.765207, 11.249580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.775262, 19.609041, 11.122295>,  <10.567927, 19.515341, 11.045924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.775262, 19.609041, 11.122295>,  <11.120820, 19.765207, 11.249580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.775262, 19.609041, 11.122295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289985, -0.131030, 0.948019,
		-0.411818, 0.911266, -0.000019,
		-0.863895, -0.390417, -0.318214,
		10.516093, 19.491917, 11.026832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.586482, 20.176258, 11.619617>,  <11.120820, 19.765207, 11.249580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.586482, 20.176258, 11.619617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.408162, 19.845425, 11.482681>,  <10.301170, 19.646925, 11.400520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.408162, 19.845425, 11.482681>,  <10.586482, 20.176258, 11.619617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.408162, 19.845425, 11.482681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314826, -0.213138, 0.924909,
		-0.837942, 0.520103, -0.165369,
		-0.445801, -0.827082, -0.342339,
		10.274422, 19.597300, 11.379979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.999937, 20.275263, 11.975351>,  <10.586482, 20.176258, 11.619617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.999937, 20.275263, 11.975351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.979574, 19.901169, 11.835215>,  <9.967357, 19.676712, 11.751132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.979574, 19.901169, 11.835215>,  <9.999937, 20.275263, 11.975351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.979574, 19.901169, 11.835215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535728, -0.270483, 0.799897,
		-0.842855, 0.228408, -0.487263,
		-0.050907, -0.935237, -0.350343,
		9.964302, 19.620598, 11.730112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.243607, 20.036978, 12.027029>,  <9.999937, 20.275263, 11.975351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.243607, 20.036978, 12.027029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.480761, 19.715446, 12.007636>,  <9.623053, 19.522528, 11.996000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.480761, 19.715446, 12.007636>,  <9.243607, 20.036978, 12.027029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.480761, 19.715446, 12.007636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553427, -0.450449, 0.700581,
		-0.584984, -0.388533, -0.711924,
		0.592885, -0.803827, -0.048481,
		9.658626, 19.474298, 11.993092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.881881, 19.496222, 11.765497>,  <9.243607, 20.036978, 12.027029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.881881, 19.496222, 11.765497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.184838, 19.328600, 11.965796>,  <9.366612, 19.228027, 12.085976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.184838, 19.328600, 11.965796>,  <8.881881, 19.496222, 11.765497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.184838, 19.328600, 11.965796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652959, -0.486376, 0.580589,
		0.000254, -0.766703, -0.642002,
		0.757394, -0.419054, 0.500748,
		9.412056, 19.202883, 12.116021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.676754, 18.824684, 11.861371>,  <8.881881, 19.496222, 11.765497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.676754, 18.824684, 11.861371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.964032, 18.857349, 12.137785>,  <9.136399, 18.876947, 12.303633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.964032, 18.857349, 12.137785>,  <8.676754, 18.824684, 11.861371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.964032, 18.857349, 12.137785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516914, -0.602207, 0.608397,
		0.465828, -0.794153, -0.390289,
		0.718195, 0.081662, 0.691034,
		9.179491, 18.881847, 12.345095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.721959, 18.106621, 12.138823>,  <8.676754, 18.824684, 11.861371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.721959, 18.106621, 12.138823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.884416, 18.340176, 12.419998>,  <8.981890, 18.480309, 12.588704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.884416, 18.340176, 12.419998>,  <8.721959, 18.106621, 12.138823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.884416, 18.340176, 12.419998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584876, -0.424944, 0.690900,
		0.702118, -0.691735, 0.168915,
		0.406141, 0.583888, 0.702940,
		9.006258, 18.515343, 12.630880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.998079, 17.717417, 12.608710>,  <8.721959, 18.106621, 12.138823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.998079, 17.717417, 12.608710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.940072, 18.051447, 12.820981>,  <8.905268, 18.251865, 12.948343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.940072, 18.051447, 12.820981>,  <8.998079, 17.717417, 12.608710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.940072, 18.051447, 12.820981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391937, -0.540954, 0.744146,
		0.908491, -0.100078, 0.405745,
		-0.145017, 0.835077, 0.530676,
		8.896567, 18.301970, 12.980184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.161456, 17.617331, 13.348841>,  <8.998079, 17.717417, 12.608710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.161456, 17.617331, 13.348841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.891575, 17.911854, 13.328335>,  <8.729646, 18.088568, 13.316031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.891575, 17.911854, 13.328335>,  <9.161456, 17.617331, 13.348841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.891575, 17.911854, 13.328335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485975, -0.390892, 0.781685,
		0.555521, 0.552319, 0.621563,
		-0.674703, 0.736306, -0.051264,
		8.689164, 18.132746, 13.312956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.980950, 17.755339, 13.975806>,  <9.161456, 17.617331, 13.348841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.980950, 17.755339, 13.975806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.679398, 17.937962, 13.786823>,  <8.498466, 18.047535, 13.673433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.679398, 17.937962, 13.786823>,  <8.980950, 17.755339, 13.975806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.679398, 17.937962, 13.786823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628939, -0.293544, 0.719908,
		0.189993, 0.839872, 0.508446,
		-0.753882, 0.456559, -0.472457,
		8.453233, 18.074930, 13.645086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.546649, 18.056593, 14.501581>,  <8.980950, 17.755339, 13.975806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.546649, 18.056593, 14.501581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.323100, 17.988874, 14.176866>,  <8.188971, 17.948244, 13.982037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.323100, 17.988874, 14.176866>,  <8.546649, 18.056593, 14.501581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.323100, 17.988874, 14.176866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680510, -0.465793, 0.565635,
		-0.473886, 0.868548, 0.145111,
		-0.558873, -0.169297, -0.811788,
		8.155438, 17.938086, 13.933330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.793068, 18.325874, 14.777658>,  <8.546649, 18.056593, 14.501581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.793068, 18.325874, 14.777658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.694472, 18.170511, 14.422494>,  <7.635314, 18.077293, 14.209395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.694472, 18.170511, 14.422494>,  <7.793068, 18.325874, 14.777658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.694472, 18.170511, 14.422494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817512, -0.408719, 0.405738,
		-0.520497, 0.825886, -0.216784,
		-0.246490, -0.388408, -0.887909,
		7.620525, 18.053989, 14.156121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.091919, 18.409182, 14.672177>,  <7.793068, 18.325874, 14.777658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.091919, 18.409182, 14.672177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.214027, 18.098007, 14.452497>,  <7.287292, 17.911303, 14.320688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.214027, 18.098007, 14.452497>,  <7.091919, 18.409182, 14.672177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.214027, 18.098007, 14.452497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810110, -0.515299, 0.279621,
		-0.500532, 0.359556, -0.787520,
		0.305269, -0.777937, -0.549204,
		7.305608, 17.864626, 14.287736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.481918, 18.178080, 14.372220>,  <7.091919, 18.409182, 14.672177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.481918, 18.178080, 14.372220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.735486, 17.870367, 14.340334>,  <6.887626, 17.685740, 14.321202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.735486, 17.870367, 14.340334>,  <6.481918, 18.178080, 14.372220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.735486, 17.870367, 14.340334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763735, -0.638907, 0.092235,
		-0.121885, 0.002412, -0.992541,
		0.633919, -0.769280, -0.079716,
		6.925661, 17.639584, 14.316420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.148640, 17.749332, 14.066494>,  <6.481918, 18.178080, 14.372220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.148640, 17.749332, 14.066494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.427998, 17.499283, 14.205900>,  <6.595612, 17.349253, 14.289544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.427998, 17.499283, 14.205900>,  <6.148640, 17.749332, 14.066494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.427998, 17.499283, 14.205900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680651, -0.730660, 0.053393,
		0.221268, -0.274506, -0.935781,
		0.698395, -0.625126, 0.348515,
		6.637516, 17.311745, 14.310454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.925912, 17.140604, 13.974709>,  <6.148640, 17.749332, 14.066494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.925912, 17.140604, 13.974709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.212788, 17.041277, 14.235162>,  <6.384914, 16.981680, 14.391434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.212788, 17.041277, 14.235162>,  <5.925912, 17.140604, 13.974709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.212788, 17.041277, 14.235162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442520, -0.884080, 0.150260,
		0.538342, -0.395905, -0.743940,
		0.717191, -0.248318, 0.651134,
		6.427946, 16.966782, 14.430502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.195720, 16.427671, 13.840293>,  <5.925912, 17.140604, 13.974709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.195720, 16.427671, 13.840293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.256698, 16.503565, 14.228265>,  <6.293285, 16.549101, 14.461048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.256698, 16.503565, 14.228265>,  <6.195720, 16.427671, 13.840293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.256698, 16.503565, 14.228265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432331, -0.869717, 0.238079,
		0.888735, -0.455625, -0.050557,
		0.152445, 0.189732, 0.969929,
		6.302432, 16.560484, 14.519243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.167490, 15.866468, 14.121878>,  <6.195720, 16.427671, 13.840293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.167490, 15.866468, 14.121878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.172130, 16.047836, 14.478366>,  <6.174914, 16.156656, 14.692259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.172130, 16.047836, 14.478366>,  <6.167490, 15.866468, 14.121878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.172130, 16.047836, 14.478366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643747, -0.678624, 0.353638,
		0.765151, -0.577824, 0.284014,
		0.011601, 0.453420, 0.891222,
		6.175611, 16.183863, 14.745732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.233067, 15.323900, 14.606262>,  <6.167490, 15.866468, 14.121878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.233067, 15.323900, 14.606262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.068042, 15.645752, 14.777080>,  <5.969028, 15.838862, 14.879570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.068042, 15.645752, 14.777080>,  <6.233067, 15.323900, 14.606262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.068042, 15.645752, 14.777080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736524, -0.570507, 0.363393,
		0.536028, -0.164607, 0.827996,
		-0.412561, 0.804628, 0.427044,
		5.944274, 15.887140, 14.905193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.766403, 15.213669, 14.126507>,  <6.233067, 15.323900, 14.606262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.766403, 15.213669, 14.126507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.877963, 14.867442, 13.960130>,  <6.944899, 14.659706, 13.860304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.877963, 14.867442, 13.960130>,  <6.766403, 15.213669, 14.126507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.877963, 14.867442, 13.960130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944257, 0.326066, -0.045386,
		0.174909, -0.380098, 0.908258,
		0.278900, -0.865567, -0.415942,
		6.961633, 14.607772, 13.835347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.345965, 15.011246, 14.462252>,  <6.766403, 15.213669, 14.126507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.345965, 15.011246, 14.462252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.362832, 14.814081, 14.114629>,  <7.372952, 14.695782, 13.906055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.362832, 14.814081, 14.114629>,  <7.345965, 15.011246, 14.462252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.362832, 14.814081, 14.114629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975595, 0.207921, -0.070592,
		0.215491, -0.844871, 0.489650,
		0.042168, -0.492912, -0.869056,
		7.375483, 14.666207, 13.853911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.811415, 14.459564, 14.440321>,  <7.345965, 15.011246, 14.462252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.811415, 14.459564, 14.440321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.783544, 14.559875, 14.054108>,  <7.766821, 14.620061, 13.822379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.783544, 14.559875, 14.054108>,  <7.811415, 14.459564, 14.440321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.783544, 14.559875, 14.054108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992948, -0.075621, -0.091297,
		-0.095909, -0.965087, -0.243739,
		-0.069678, 0.250777, -0.965534,
		7.762641, 14.635108, 13.764447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.413788, 14.004785, 14.136498>,  <7.811415, 14.459564, 14.440321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.413788, 14.004785, 14.136498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.276049, 14.287229, 13.889005>,  <8.193405, 14.456695, 13.740508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.276049, 14.287229, 13.889005>,  <8.413788, 14.004785, 14.136498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.276049, 14.287229, 13.889005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921500, 0.128117, -0.366638,
		-0.179616, -0.696415, -0.694798,
		-0.344348, 0.706110, -0.618735,
		8.172745, 14.499062, 13.703384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.829171, 13.940042, 13.635165>,  <8.413788, 14.004785, 14.136498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.829171, 13.940042, 13.635165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.654585, 14.279524, 13.515704>,  <8.549833, 14.483213, 13.444027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.654585, 14.279524, 13.515704>,  <8.829171, 13.940042, 13.635165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.654585, 14.279524, 13.515704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885094, 0.345417, -0.311922,
		-0.161571, -0.400480, -0.901948,
		-0.436466, 0.848707, -0.298653,
		8.523645, 14.534136, 13.426108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.970874, 14.134384, 12.926938>,  <8.829171, 13.940042, 13.635165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.970874, 14.134384, 12.926938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.873505, 14.484244, 13.094619>,  <8.815083, 14.694160, 13.195227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.873505, 14.484244, 13.094619>,  <8.970874, 14.134384, 12.926938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.873505, 14.484244, 13.094619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797202, 0.426604, -0.427175,
		-0.552462, 0.230203, -0.801119,
		-0.243424, 0.874651, 0.419201,
		8.800477, 14.746640, 13.220379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.033032, 14.593807, 12.383123>,  <8.970874, 14.134384, 12.926938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.033032, 14.593807, 12.383123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.072638, 14.804295, 12.720949>,  <9.096401, 14.930587, 12.923645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.072638, 14.804295, 12.720949>,  <9.033032, 14.593807, 12.383123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.072638, 14.804295, 12.720949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760589, 0.507250, -0.405218,
		-0.641639, 0.682489, -0.350011,
		0.099013, 0.526218, 0.844565,
		9.102342, 14.962160, 12.974319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.028543, 15.300113, 12.131213>,  <9.033032, 14.593807, 12.383123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.028543, 15.300113, 12.131213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.177721, 15.282754, 12.501948>,  <9.267227, 15.272339, 12.724390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.177721, 15.282754, 12.501948>,  <9.028543, 15.300113, 12.131213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.177721, 15.282754, 12.501948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747228, 0.606226, -0.272288,
		-0.550057, 0.794108, 0.258515,
		0.372944, -0.043396, 0.926838,
		9.289604, 15.269735, 12.780000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.238966, 15.906405, 12.254284>,  <9.028543, 15.300113, 12.131213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.238966, 15.906405, 12.254284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.455834, 15.710370, 12.527300>,  <9.585956, 15.592749, 12.691110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.455834, 15.710370, 12.527300>,  <9.238966, 15.906405, 12.254284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.455834, 15.710370, 12.527300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759477, 0.633354, -0.148514,
		-0.359505, 0.598894, 0.715599,
		0.542172, -0.490090, 0.682541,
		9.618486, 15.563343, 12.732062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.792221, 16.372129, 12.356263>,  <9.238966, 15.906405, 12.254284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.792221, 16.372129, 12.356263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.932451, 16.044184, 12.537335>,  <10.016589, 15.847417, 12.645979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.932451, 16.044184, 12.537335>,  <9.792221, 16.372129, 12.356263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.932451, 16.044184, 12.537335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926691, 0.373572, -0.041083,
		-0.135426, 0.433898, 0.890726,
		0.350576, -0.819864, 0.452681,
		10.037624, 15.798224, 12.673140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.325038, 16.591370, 12.771982>,  <9.792221, 16.372129, 12.356263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.325038, 16.591370, 12.771982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.419518, 16.202690, 12.770879>,  <10.476205, 15.969481, 12.770217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.419518, 16.202690, 12.770879>,  <10.325038, 16.591370, 12.771982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.419518, 16.202690, 12.770879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970498, 0.235763, 0.050485,
		-0.048406, -0.014601, 0.998721,
		0.236198, -0.971701, -0.002757,
		10.490377, 15.911180, 12.770052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.546296, 16.466780, 13.375599>,  <10.325038, 16.591370, 12.771982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.546296, 16.466780, 13.375599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.683887, 16.191284, 13.120315>,  <10.766442, 16.025986, 12.967144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.683887, 16.191284, 13.120315>,  <10.546296, 16.466780, 13.375599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.683887, 16.191284, 13.120315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916376, 0.394467, 0.068204,
		0.204778, -0.608302, 0.766834,
		0.343979, -0.688741, -0.638212,
		10.787082, 15.984662, 12.928851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186877, 16.195244, 13.670466>,  <10.546296, 16.466780, 13.375599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186877, 16.195244, 13.670466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.219855, 16.116800, 13.279622>,  <11.239642, 16.069735, 13.045115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.219855, 16.116800, 13.279622>,  <11.186877, 16.195244, 13.670466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.219855, 16.116800, 13.279622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912707, 0.408584, -0.004992,
		0.400211, -0.891404, 0.212675,
		0.082446, -0.196108, -0.977110,
		11.244589, 16.057968, 12.986489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.803966, 16.201038, 13.798110>,  <11.186877, 16.195244, 13.670466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.803966, 16.201038, 13.798110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.745327, 16.172319, 13.403475>,  <11.710144, 16.155088, 13.166694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.745327, 16.172319, 13.403475>,  <11.803966, 16.201038, 13.798110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.745327, 16.172319, 13.403475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904430, 0.394225, -0.163077,
		0.400645, -0.916205, 0.007142,
		-0.146597, -0.071795, -0.986587,
		11.701348, 16.150780, 13.107498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374788, 15.834957, 13.509729>,  <11.803966, 16.201038, 13.798110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374788, 15.834957, 13.509729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.222542, 16.088444, 13.240350>,  <12.131194, 16.240536, 13.078722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.222542, 16.088444, 13.240350>,  <12.374788, 15.834957, 13.509729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.222542, 16.088444, 13.240350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916269, 0.356756, -0.182142,
		0.124830, -0.686387, -0.716443,
		-0.380616, 0.633718, -0.673449,
		12.108357, 16.278559, 13.038315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.952442, 16.188219, 13.246666>,  <12.374788, 15.834957, 13.509729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.952442, 16.188219, 13.246666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.690902, 16.407497, 13.038067>,  <12.533978, 16.539064, 12.912908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.690902, 16.407497, 13.038067>,  <12.952442, 16.188219, 13.246666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.690902, 16.407497, 13.038067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742016, 0.599368, -0.300283,
		0.147954, -0.583299, -0.798669,
		-0.653851, 0.548197, -0.521497,
		12.494746, 16.571957, 12.881618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371516, 16.421566, 12.571061>,  <12.952442, 16.188219, 13.246666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371516, 16.421566, 12.571061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.043406, 16.648872, 12.597059>,  <12.846540, 16.785255, 12.612659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.043406, 16.648872, 12.597059>,  <13.371516, 16.421566, 12.571061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.043406, 16.648872, 12.597059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539477, 0.806421, -0.242177,
		-0.190034, -0.163589, -0.968053,
		-0.820275, 0.568264, 0.064995,
		12.797324, 16.819351, 12.616558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.297753, 16.735994, 11.924253>,  <13.371516, 16.421566, 12.571061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.297753, 16.735994, 11.924253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.118433, 16.975840, 12.189429>,  <13.010840, 17.119747, 12.348536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.118433, 16.975840, 12.189429>,  <13.297753, 16.735994, 11.924253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.118433, 16.975840, 12.189429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374580, 0.799400, -0.469733,
		-0.811613, 0.037743, -0.582975,
		-0.448301, 0.599612, 0.662942,
		12.983943, 17.155724, 12.388311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.032369, 17.301991, 11.508857>,  <13.297753, 16.735994, 11.924253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.032369, 17.301991, 11.508857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.063914, 17.447535, 11.880100>,  <13.082842, 17.534861, 12.102846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.063914, 17.447535, 11.880100>,  <13.032369, 17.301991, 11.508857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063914, 17.447535, 11.880100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303916, 0.877912, -0.370007,
		-0.949429, 0.311247, -0.041347,
		0.078865, 0.363862, 0.928108,
		13.087574, 17.556694, 12.158533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.611740, 17.857769, 11.464264>,  <13.032369, 17.301991, 11.508857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.611740, 17.857769, 11.464264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.829218, 17.915783, 11.794926>,  <12.959704, 17.950592, 11.993323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.829218, 17.915783, 11.794926>,  <12.611740, 17.857769, 11.464264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.829218, 17.915783, 11.794926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188660, 0.938628, -0.288765,
		-0.817803, 0.312957, 0.482965,
		0.543695, 0.145037, 0.826656,
		12.992327, 17.959293, 12.042922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337503, 18.488678, 11.795443>,  <12.611740, 17.857769, 11.464264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337503, 18.488678, 11.795443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.707076, 18.417505, 11.930905>,  <12.928820, 18.374802, 12.012183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.707076, 18.417505, 11.930905>,  <12.337503, 18.488678, 11.795443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.707076, 18.417505, 11.930905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257295, 0.944143, -0.205897,
		-0.283104, 0.277370, 0.918105,
		0.923932, -0.177933, 0.338657,
		12.984256, 18.364124, 12.032502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.381550, 16.350567, 27.553654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.199961, 16.129801, 27.273855>,  <16.091007, 15.997341, 27.105976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.199961, 16.129801, 27.273855>,  <16.381550, 16.350567, 27.553654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199961, 16.129801, 27.273855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773496, -0.145570, 0.616857,
		-0.442279, 0.821095, -0.360820,
		-0.453974, -0.551917, -0.699497,
		16.063768, 15.964226, 27.064007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714263, 16.607100, 27.556866>,  <16.381550, 16.350567, 27.553654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714263, 16.607100, 27.556866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.711550, 16.233391, 27.414265>,  <15.709922, 16.009167, 27.328705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.711550, 16.233391, 27.414265>,  <15.714263, 16.607100, 27.556866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.711550, 16.233391, 27.414265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813766, -0.202036, 0.544946,
		-0.581153, 0.293806, -0.758906,
		-0.006782, -0.934269, -0.356503,
		15.709516, 15.953110, 27.307314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965264, 16.468206, 27.397512>,  <15.714263, 16.607100, 27.556866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965264, 16.468206, 27.397512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.128810, 16.103291, 27.406969>,  <15.226937, 15.884341, 27.412643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.128810, 16.103291, 27.406969>,  <14.965264, 16.468206, 27.397512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.128810, 16.103291, 27.406969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820444, -0.356110, 0.447278,
		-0.399630, -0.202269, -0.894082,
		0.408862, -0.912290, 0.023638,
		15.251469, 15.829604, 27.414061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423894, 15.940022, 27.207977>,  <14.965264, 16.468206, 27.397512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423894, 15.940022, 27.207977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.701286, 15.729173, 27.404436>,  <14.867722, 15.602663, 27.522312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.701286, 15.729173, 27.404436>,  <14.423894, 15.940022, 27.207977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.701286, 15.729173, 27.404436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719984, -0.532209, 0.445395,
		0.026615, -0.662491, -0.748596,
		0.693480, -0.527123, 0.491148,
		14.909330, 15.571035, 27.551781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.166120, 15.198772, 27.177832>,  <14.423894, 15.940022, 27.207977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.166120, 15.198772, 27.177832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.431979, 15.222346, 27.475763>,  <14.591495, 15.236490, 27.654522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.431979, 15.222346, 27.475763>,  <14.166120, 15.198772, 27.177832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.431979, 15.222346, 27.475763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631291, -0.488921, 0.602020,
		0.399641, -0.870335, -0.287756,
		0.664649, 0.058934, 0.744828,
		14.631374, 15.240026, 27.699211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085498, 14.568159, 27.469667>,  <14.166120, 15.198772, 27.177832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085498, 14.568159, 27.469667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.295663, 14.771276, 27.742750>,  <14.421762, 14.893146, 27.906601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.295663, 14.771276, 27.742750>,  <14.085498, 14.568159, 27.469667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.295663, 14.771276, 27.742750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573636, -0.381200, 0.725003,
		0.628398, -0.772551, 0.091000,
		0.525413, 0.507791, 0.682708,
		14.453287, 14.923613, 27.947563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.273936, 14.107422, 28.008368>,  <14.085498, 14.568159, 27.469667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.273936, 14.107422, 28.008368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.257156, 14.471800, 28.172523>,  <14.247088, 14.690427, 28.271017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.257156, 14.471800, 28.172523>,  <14.273936, 14.107422, 28.008368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.257156, 14.471800, 28.172523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724969, -0.310393, 0.614879,
		0.687503, -0.271725, 0.673428,
		-0.041950, 0.910946, 0.410388,
		14.244572, 14.745084, 28.295641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.153386, 13.866191, 28.603882>,  <14.273936, 14.107422, 28.008368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.153386, 13.866191, 28.603882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.048966, 14.250770, 28.638456>,  <13.986315, 14.481517, 28.659201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.048966, 14.250770, 28.638456>,  <14.153386, 13.866191, 28.603882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.048966, 14.250770, 28.638456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723682, -0.254177, 0.641622,
		0.638856, 0.104942, 0.762135,
		-0.261050, 0.961448, 0.086437,
		13.970652, 14.539204, 28.664387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.111876, 13.938138, 29.315752>,  <14.153386, 13.866191, 28.603882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.111876, 13.938138, 29.315752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.918243, 14.256233, 29.169731>,  <13.802064, 14.447090, 29.082119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.918243, 14.256233, 29.169731>,  <14.111876, 13.938138, 29.315752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918243, 14.256233, 29.169731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680090, -0.079428, 0.728813,
		0.550585, 0.601071, 0.579284,
		-0.484080, 0.795238, -0.365051,
		13.773020, 14.494804, 29.060215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.068003, 14.572419, 29.843742>,  <14.111876, 13.938138, 29.315752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.068003, 14.572419, 29.843742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.752493, 14.631669, 29.605114>,  <13.563188, 14.667219, 29.461937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.752493, 14.631669, 29.605114>,  <14.068003, 14.572419, 29.843742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.752493, 14.631669, 29.605114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588166, 0.100114, 0.802520,
		0.178598, 0.983888, 0.008155,
		-0.788773, 0.148125, -0.596570,
		13.515861, 14.676106, 29.426144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625921, 15.024957, 30.219687>,  <14.068003, 14.572419, 29.843742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625921, 15.024957, 30.219687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.385852, 14.914495, 29.919413>,  <13.241810, 14.848217, 29.739248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.385852, 14.914495, 29.919413>,  <13.625921, 15.024957, 30.219687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.385852, 14.914495, 29.919413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797730, 0.275257, 0.536526,
		0.058466, 0.920854, -0.385500,
		-0.600174, -0.276156, -0.750686,
		13.205800, 14.831648, 29.694206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.990470, 15.477649, 30.073410>,  <13.625921, 15.024957, 30.219687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.990470, 15.477649, 30.073410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.887690, 15.124101, 29.917076>,  <12.826021, 14.911972, 29.823277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.887690, 15.124101, 29.917076>,  <12.990470, 15.477649, 30.073410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.887690, 15.124101, 29.917076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816124, -0.018145, 0.577592,
		-0.517608, 0.467380, -0.716685,
		-0.256950, -0.883870, -0.390833,
		12.810604, 14.858940, 29.799826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.272066, 15.567182, 29.943556>,  <12.990470, 15.477649, 30.073410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.272066, 15.567182, 29.943556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.419563, 15.197525, 29.983538>,  <12.508061, 14.975731, 30.007526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.419563, 15.197525, 29.983538>,  <12.272066, 15.567182, 29.943556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.419563, 15.197525, 29.983538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656957, -0.183029, 0.731374,
		-0.657599, -0.335353, -0.674612,
		0.368742, -0.924142, 0.099953,
		12.530186, 14.920282, 30.013523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.188143, 15.386807, 30.636789>,  <12.272066, 15.567182, 29.943556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.188143, 15.386807, 30.636789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.271702, 15.104643, 30.907715>,  <12.321837, 14.935344, 31.070271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.271702, 15.104643, 30.907715>,  <12.188143, 15.386807, 30.636789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.271702, 15.104643, 30.907715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018871, 0.695374, 0.718400,
		-0.977756, -0.137289, 0.158573,
		0.208896, -0.705412, 0.677315,
		12.334371, 14.893020, 31.110909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982356, 16.045382, 30.996178>,  <12.188143, 15.386807, 30.636789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982356, 16.045382, 30.996178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.598008, 16.156151, 30.998894>,  <11.367399, 16.222612, 31.000523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.598008, 16.156151, 30.998894>,  <11.982356, 16.045382, 30.996178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.598008, 16.156151, 30.998894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148710, 0.536364, -0.830782,
		-0.233703, -0.797263, -0.556556,
		-0.960869, 0.276921, 0.006789,
		11.309748, 16.239227, 31.000931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600982, 16.028667, 30.315508>,  <11.982356, 16.045382, 30.996178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600982, 16.028667, 30.315508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.428887, 16.299053, 30.554831>,  <11.325631, 16.461285, 30.698423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.428887, 16.299053, 30.554831>,  <11.600982, 16.028667, 30.315508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.428887, 16.299053, 30.554831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006927, 0.660291, -0.750978,
		-0.902690, -0.327242, -0.279398,
		-0.430236, 0.675965, 0.598305,
		11.299817, 16.501842, 30.734322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.955088, 16.186295, 30.006746>,  <11.600982, 16.028667, 30.315508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.955088, 16.186295, 30.006746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.071960, 16.496490, 30.230621>,  <11.142084, 16.682608, 30.364946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.071960, 16.496490, 30.230621>,  <10.955088, 16.186295, 30.006746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.071960, 16.496490, 30.230621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178158, 0.619114, -0.764825,
		-0.939622, 0.123755, 0.319053,
		0.292182, 0.775488, 0.559686,
		11.159615, 16.729137, 30.398527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.403400, 16.723673, 29.939049>,  <10.955088, 16.186295, 30.006746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.403400, 16.723673, 29.939049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.745351, 16.895500, 30.055433>,  <10.950521, 16.998596, 30.125263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.745351, 16.895500, 30.055433>,  <10.403400, 16.723673, 29.939049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.745351, 16.895500, 30.055433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068594, 0.649451, -0.757303,
		-0.514278, 0.627442, 0.584666,
		0.854876, 0.429568, 0.290960,
		11.001814, 17.024370, 30.142721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.244992, 17.395903, 29.880102>,  <10.403400, 16.723673, 29.939049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.244992, 17.395903, 29.880102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.644707, 17.399509, 29.894779>,  <10.884536, 17.401674, 29.903585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.644707, 17.399509, 29.894779>,  <10.244992, 17.395903, 29.880102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.644707, 17.399509, 29.894779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026456, 0.526312, -0.849880,
		-0.026976, 0.850244, 0.525697,
		0.999286, 0.009019, 0.036692,
		10.944492, 17.402216, 29.905787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.493444, 18.109987, 29.730545>,  <10.244992, 17.395903, 29.880102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.493444, 18.109987, 29.730545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.784083, 17.851751, 29.636505>,  <10.958467, 17.696810, 29.580080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.784083, 17.851751, 29.636505>,  <10.493444, 18.109987, 29.730545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.784083, 17.851751, 29.636505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126824, 0.462328, -0.877592,
		0.675257, 0.607839, 0.417803,
		0.726597, -0.645588, -0.235102,
		11.002063, 17.658075, 29.565975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.886641, 18.397039, 29.278200>,  <10.493444, 18.109987, 29.730545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.886641, 18.397039, 29.278200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.067718, 18.049641, 29.197420>,  <11.176364, 17.841202, 29.148952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.067718, 18.049641, 29.197420>,  <10.886641, 18.397039, 29.278200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.067718, 18.049641, 29.197420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168010, 0.305508, -0.937250,
		0.875696, 0.390356, 0.284217,
		0.452692, -0.868497, -0.201948,
		11.203525, 17.789091, 29.136835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.373833, 18.521460, 28.683588>,  <10.886641, 18.397039, 29.278200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.373833, 18.521460, 28.683588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.378407, 18.121492, 28.686045>,  <11.381152, 17.881512, 28.687519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.378407, 18.121492, 28.686045>,  <11.373833, 18.521460, 28.683588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.378407, 18.121492, 28.686045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426553, -0.000677, -0.904462,
		0.904390, 0.012965, 0.426510,
		0.011438, -0.999916, 0.006143,
		11.381839, 17.821518, 28.687887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.980271, 18.267134, 28.322105>,  <11.373833, 18.521460, 28.683588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.980271, 18.267134, 28.322105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.745750, 17.943384, 28.308445>,  <11.605038, 17.749134, 28.300249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.745750, 17.943384, 28.308445>,  <11.980271, 18.267134, 28.322105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.745750, 17.943384, 28.308445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359642, -0.222284, -0.906227,
		0.725883, -0.543606, 0.421409,
		-0.586303, -0.809372, -0.034151,
		11.569860, 17.700573, 28.298199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.384249, 17.668219, 28.115044>,  <11.980271, 18.267134, 28.322105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.384249, 17.668219, 28.115044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.009021, 17.561531, 28.026604>,  <11.783884, 17.497519, 27.973539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.009021, 17.561531, 28.026604>,  <12.384249, 17.668219, 28.115044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.009021, 17.561531, 28.026604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300016, -0.306258, -0.903436,
		0.173250, -0.913820, 0.367311,
		-0.938070, -0.266719, -0.221101,
		11.727600, 17.481516, 27.960274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.289051, 16.997278, 27.874519>,  <12.384249, 17.668219, 28.115044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.289051, 16.997278, 27.874519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.962748, 17.152901, 27.703325>,  <11.766966, 17.246275, 27.600609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.962748, 17.152901, 27.703325>,  <12.289051, 16.997278, 27.874519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.962748, 17.152901, 27.703325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241125, -0.443835, -0.863058,
		-0.525735, -0.807245, 0.268250,
		-0.815759, 0.389058, -0.427987,
		11.718020, 17.269617, 27.574930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118978, 16.475025, 27.498396>,  <12.289051, 16.997278, 27.874519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.118978, 16.475025, 27.498396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.908015, 16.777069, 27.342627>,  <11.781438, 16.958296, 27.249165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.908015, 16.777069, 27.342627>,  <12.118978, 16.475025, 27.498396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908015, 16.777069, 27.342627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219599, -0.321621, -0.921052,
		-0.820743, -0.571285, 0.003803,
		-0.527405, 0.755112, -0.389422,
		11.749794, 17.003603, 27.225800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.673271, 16.227732, 26.896414>,  <12.118978, 16.475025, 27.498396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.673271, 16.227732, 26.896414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.706609, 16.623512, 26.849016>,  <11.726611, 16.860981, 26.820578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.706609, 16.623512, 26.849016>,  <11.673271, 16.227732, 26.896414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.706609, 16.623512, 26.849016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166915, -0.131087, -0.977218,
		-0.982442, 0.061668, -0.176080,
		0.083345, 0.989451, -0.118492,
		11.731612, 16.920347, 26.813469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.203323, 16.429909, 26.459335>,  <11.673271, 16.227732, 26.896414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.203323, 16.429909, 26.459335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.488017, 16.708809, 26.425224>,  <11.658834, 16.876150, 26.404757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.488017, 16.708809, 26.425224>,  <11.203323, 16.429909, 26.459335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.488017, 16.708809, 26.425224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109741, -0.230281, -0.966917,
		-0.693823, 0.678830, -0.240416,
		0.711735, 0.697252, -0.085279,
		11.701537, 16.917984, 26.399641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.432208, 16.440052, 26.185795>,  <11.203323, 16.429909, 26.459335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.432208, 16.440052, 26.185795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.283841, 16.100246, 26.035730>,  <10.194820, 15.896363, 25.945692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.283841, 16.100246, 26.035730>,  <10.432208, 16.440052, 26.185795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.283841, 16.100246, 26.035730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154003, -0.342116, 0.926952,
		-0.915807, 0.401599, -0.003931,
		-0.370918, -0.849515, -0.375160,
		10.172565, 15.845392, 25.923182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.762009, 16.335583, 26.588287>,  <10.432208, 16.440052, 26.185795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.762009, 16.335583, 26.588287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.834555, 15.978503, 26.423269>,  <9.878082, 15.764256, 26.324259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.834555, 15.978503, 26.423269>,  <9.762009, 16.335583, 26.588287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.834555, 15.978503, 26.423269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319033, -0.450222, 0.833977,
		-0.930228, -0.019639, -0.366456,
		0.181365, -0.892701, -0.412544,
		9.888965, 15.710693, 26.299505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.214264, 15.889896, 26.772274>,  <9.762009, 16.335583, 26.588287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.214264, 15.889896, 26.772274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.500830, 15.634429, 26.659950>,  <9.672770, 15.481149, 26.592556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.500830, 15.634429, 26.659950>,  <9.214264, 15.889896, 26.772274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.500830, 15.634429, 26.659950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169606, -0.549847, 0.817864,
		-0.676747, -0.538301, -0.502240,
		0.716412, -0.638670, -0.280809,
		9.715754, 15.442828, 26.575708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.878393, 15.139085, 26.901728>,  <9.214264, 15.889896, 26.772274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.878393, 15.139085, 26.901728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.278245, 15.130462, 26.908354>,  <9.518156, 15.125288, 26.912331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.278245, 15.130462, 26.908354>,  <8.878393, 15.139085, 26.901728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.278245, 15.130462, 26.908354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024450, -0.446320, 0.894540,
		-0.011891, -0.894614, -0.446682,
		0.999630, -0.021558, 0.016567,
		9.578135, 15.123994, 26.913324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.024159, 14.434846, 27.174438>,  <8.878393, 15.139085, 26.901728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.024159, 14.434846, 27.174438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.375105, 14.623476, 27.209879>,  <9.585672, 14.736654, 27.231144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.375105, 14.623476, 27.209879>,  <9.024159, 14.434846, 27.174438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.375105, 14.623476, 27.209879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169578, -0.477478, 0.862124,
		0.448861, -0.741371, -0.498891,
		0.877364, 0.471575, 0.088601,
		9.638314, 14.764949, 27.236460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.516864, 13.965343, 27.357027>,  <9.024159, 14.434846, 27.174438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.516864, 13.965343, 27.357027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.692148, 14.303041, 27.480457>,  <9.797319, 14.505661, 27.554516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.692148, 14.303041, 27.480457>,  <9.516864, 13.965343, 27.357027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.692148, 14.303041, 27.480457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186735, -0.421305, 0.887487,
		0.879262, -0.331285, -0.342271,
		0.438212, 0.844247, 0.308575,
		9.823611, 14.556315, 27.573030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.107671, 13.744634, 27.703709>,  <9.516864, 13.965343, 27.357027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.107671, 13.744634, 27.703709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.038984, 14.104394, 27.864502>,  <9.997772, 14.320251, 27.960978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.038984, 14.104394, 27.864502>,  <10.107671, 13.744634, 27.703709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.038984, 14.104394, 27.864502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527992, -0.260470, 0.808319,
		0.831708, 0.351045, -0.430150,
		-0.171716, 0.899401, 0.401984,
		9.987470, 14.374214, 27.985098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.343739, 13.109663, 27.605572>,  <10.107671, 13.744634, 27.703709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.343739, 13.109663, 27.605572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.993162, 12.917798, 27.622417>,  <9.782816, 12.802679, 27.632524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.993162, 12.917798, 27.622417>,  <10.343739, 13.109663, 27.605572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.993162, 12.917798, 27.622417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189759, 0.263687, -0.945760,
		0.442542, -0.836894, -0.322126,
		-0.876441, -0.479665, 0.042116,
		9.730229, 12.773899, 27.635052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.229989, 12.748632, 26.950897>,  <10.343739, 13.109663, 27.605572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.229989, 12.748632, 26.950897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.853165, 12.806896, 27.071764>,  <9.627070, 12.841854, 27.144283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.853165, 12.806896, 27.071764>,  <10.229989, 12.748632, 26.950897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.853165, 12.806896, 27.071764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211970, 0.439654, -0.872796,
		-0.259979, -0.886277, -0.383305,
		-0.942061, 0.145659, 0.302165,
		9.570546, 12.850595, 27.162415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.828504, 12.325672, 26.526674>,  <10.229989, 12.748632, 26.950897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.828504, 12.325672, 26.526674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.592031, 12.608965, 26.681032>,  <9.450149, 12.778940, 26.773647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.592031, 12.608965, 26.681032>,  <9.828504, 12.325672, 26.526674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.592031, 12.608965, 26.681032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282599, 0.266234, -0.921552,
		-0.755410, -0.653856, 0.042754,
		-0.591179, 0.708232, 0.385895,
		9.414678, 12.821434, 26.796801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.144016, 12.135374, 26.408068>,  <9.828504, 12.325672, 26.526674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.144016, 12.135374, 26.408068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.124163, 12.530867, 26.464561>,  <9.112250, 12.768162, 26.498457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.124163, 12.530867, 26.464561>,  <9.144016, 12.135374, 26.408068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.124163, 12.530867, 26.464561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239989, 0.125458, -0.962635,
		-0.969506, -0.081673, 0.231058,
		-0.049633, 0.988732, 0.141232,
		9.109273, 12.827486, 26.506931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.566612, 12.239610, 25.999523>,  <9.144016, 12.135374, 26.408068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.566612, 12.239610, 25.999523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.669506, 12.622228, 26.054447>,  <8.731242, 12.851798, 26.087402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.669506, 12.622228, 26.054447>,  <8.566612, 12.239610, 25.999523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.669506, 12.622228, 26.054447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003779, 0.141096, -0.989989,
		-0.966342, 0.255178, 0.032680,
		0.257234, 0.956544, 0.137311,
		8.746676, 12.909191, 26.095640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.170598, 12.527003, 25.526423>,  <8.566612, 12.239610, 25.999523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.170598, 12.527003, 25.526423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.435074, 12.809116, 25.628719>,  <8.593760, 12.978384, 25.690098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.435074, 12.809116, 25.628719>,  <8.170598, 12.527003, 25.526423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.435074, 12.809116, 25.628719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215233, 0.148230, -0.965247,
		-0.718681, 0.693256, -0.053792,
		0.661190, 0.705283, 0.255742,
		8.633430, 13.020701, 25.705442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.006368, 13.128255, 25.222132>,  <8.170598, 12.527003, 25.526423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.006368, 13.128255, 25.222132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.398141, 13.162792, 25.295074>,  <8.633205, 13.183515, 25.338840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.398141, 13.162792, 25.295074>,  <8.006368, 13.128255, 25.222132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.398141, 13.162792, 25.295074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175039, 0.085896, -0.980807,
		-0.100350, 0.992556, 0.069016,
		0.979434, 0.086344, 0.182356,
		8.691971, 13.188695, 25.349781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.057832, 11.848659, 30.152264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.051877, 12.248610, 30.150280>,  <12.048304, 12.488580, 30.149090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.051877, 12.248610, 30.150280>,  <12.057832, 11.848659, 30.152264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.051877, 12.248610, 30.150280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301612, -0.000236, -0.953431,
		-0.953315, -0.015689, -0.301571,
		-0.014887, 0.999877, -0.004957,
		12.047411, 12.548573, 30.148792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.615413, 12.183217, 29.601662>,  <12.057832, 11.848659, 30.152264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.615413, 12.183217, 29.601662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.943701, 12.395874, 29.685352>,  <12.140674, 12.523468, 29.735567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.943701, 12.395874, 29.685352>,  <11.615413, 12.183217, 29.601662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.943701, 12.395874, 29.685352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259190, -0.020105, -0.965617,
		-0.509156, 0.846731, -0.154297,
		0.820720, 0.531642, 0.209228,
		12.189917, 12.555367, 29.748121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.653627, 12.782788, 29.208010>,  <11.615413, 12.183217, 29.601662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.653627, 12.782788, 29.208010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.024158, 12.673479, 29.311735>,  <12.246475, 12.607893, 29.373970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.024158, 12.673479, 29.311735>,  <11.653627, 12.782788, 29.208010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.024158, 12.673479, 29.311735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284756, 0.057240, -0.956890,
		0.246649, 0.960232, 0.130839,
		0.926325, -0.273273, 0.259313,
		12.302055, 12.591497, 29.389528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.970568, 13.101162, 28.727179>,  <11.653627, 12.782788, 29.208010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.970568, 13.101162, 28.727179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.249719, 12.858923, 28.880133>,  <12.417209, 12.713579, 28.971905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.249719, 12.858923, 28.880133>,  <11.970568, 13.101162, 28.727179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.249719, 12.858923, 28.880133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433375, -0.068011, -0.898644,
		0.570224, 0.792859, 0.214987,
		0.697876, -0.605598, 0.382387,
		12.459082, 12.677243, 28.994848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.575073, 13.424770, 28.595909>,  <11.970568, 13.101162, 28.727179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.575073, 13.424770, 28.595909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.611945, 13.028212, 28.633081>,  <12.634068, 12.790277, 28.655384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.611945, 13.028212, 28.633081>,  <12.575073, 13.424770, 28.595909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611945, 13.028212, 28.633081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306813, -0.060508, -0.949844,
		0.947295, 0.116070, 0.298596,
		0.092181, -0.991396, 0.092931,
		12.639600, 12.730793, 28.660961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.344651, 13.163833, 28.470772>,  <12.575073, 13.424770, 28.595909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.344651, 13.163833, 28.470772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.054960, 12.896623, 28.402372>,  <12.881145, 12.736297, 28.361332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.054960, 12.896623, 28.402372>,  <13.344651, 13.163833, 28.470772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.054960, 12.896623, 28.402372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314732, -0.099584, -0.943942,
		0.613547, -0.737446, 0.282369,
		-0.724226, -0.668024, -0.170998,
		12.837692, 12.696216, 28.351072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.642297, 12.802009, 28.034319>,  <13.344651, 13.163833, 28.470772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.642297, 12.802009, 28.034319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.271603, 12.663579, 27.975813>,  <13.049186, 12.580522, 27.940710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.271603, 12.663579, 27.975813>,  <13.642297, 12.802009, 28.034319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.271603, 12.663579, 27.975813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225930, -0.202270, -0.952913,
		0.300193, -0.916144, 0.265640,
		-0.926736, -0.346074, -0.146264,
		12.993582, 12.559757, 27.931934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.635307, 12.039409, 27.807064>,  <13.642297, 12.802009, 28.034319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.635307, 12.039409, 27.807064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.262336, 12.135925, 27.699469>,  <13.038553, 12.193835, 27.634911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.262336, 12.135925, 27.699469>,  <13.635307, 12.039409, 27.807064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.262336, 12.135925, 27.699469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148830, -0.421880, -0.894353,
		-0.329278, -0.873955, 0.357463,
		-0.932430, 0.241290, -0.268987,
		12.982607, 12.208313, 27.618773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.355574, 11.444536, 27.333477>,  <13.635307, 12.039409, 27.807064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.355574, 11.444536, 27.333477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.113283, 11.745849, 27.230978>,  <12.967909, 11.926636, 27.169479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.113283, 11.745849, 27.230978>,  <13.355574, 11.444536, 27.333477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.113283, 11.745849, 27.230978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116929, -0.234281, -0.965111,
		-0.787034, -0.614557, 0.053830,
		-0.605727, 0.753281, -0.256247,
		12.931565, 11.971833, 27.154104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.789690, 11.126658, 26.795265>,  <13.355574, 11.444536, 27.333477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.789690, 11.126658, 26.795265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.811864, 11.524736, 26.762976>,  <12.825169, 11.763583, 26.743603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.811864, 11.524736, 26.762976>,  <12.789690, 11.126658, 26.795265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.811864, 11.524736, 26.762976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122033, -0.086994, -0.988706,
		-0.990977, 0.044958, -0.126269,
		0.055435, 0.995194, -0.080723,
		12.828494, 11.823295, 26.738758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.423589, 11.289200, 26.170549>,  <12.789690, 11.126658, 26.795265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.423589, 11.289200, 26.170549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.633684, 11.622041, 26.241804>,  <12.759741, 11.821745, 26.284557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.633684, 11.622041, 26.241804>,  <12.423589, 11.289200, 26.170549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.633684, 11.622041, 26.241804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175303, 0.099039, -0.979520,
		-0.832703, 0.545709, -0.093851,
		0.525238, 0.832101, 0.178135,
		12.791256, 11.871672, 26.295244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104734, 11.828529, 25.709633>,  <12.423589, 11.289200, 26.170549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104734, 11.828529, 25.709633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.471354, 11.955301, 25.807198>,  <12.691326, 12.031364, 25.865736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.471354, 11.955301, 25.807198>,  <12.104734, 11.828529, 25.709633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.471354, 11.955301, 25.807198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218315, 0.114492, -0.969139,
		-0.335075, 0.941513, 0.035747,
		0.916550, 0.316930, 0.243910,
		12.746320, 12.050381, 25.880371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.282163, 11.322998, 25.146082>,  <12.104734, 11.828529, 25.709633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.282163, 11.322998, 25.146082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.193532, 10.997957, 24.930460>,  <12.140353, 10.802933, 24.801086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.193532, 10.997957, 24.930460>,  <12.282163, 11.322998, 25.146082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.193532, 10.997957, 24.930460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606290, -0.318160, 0.728826,
		-0.763752, 0.488315, -0.422175,
		-0.221578, -0.812602, -0.539055,
		12.127059, 10.754176, 24.768744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.611707, 11.261350, 25.094547>,  <12.282163, 11.322998, 25.146082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.611707, 11.261350, 25.094547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.736677, 10.882898, 25.060535>,  <11.811659, 10.655828, 25.040129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.736677, 10.882898, 25.060535>,  <11.611707, 11.261350, 25.094547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.736677, 10.882898, 25.060535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569208, -0.258118, 0.780626,
		-0.760521, -0.195486, -0.619187,
		0.312425, -0.946129, -0.085032,
		11.830404, 10.599060, 25.035027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.021145, 10.855341, 25.178598>,  <11.611707, 11.261350, 25.094547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.021145, 10.855341, 25.178598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.323602, 10.600255, 25.237341>,  <11.505076, 10.447204, 25.272587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.323602, 10.600255, 25.237341>,  <11.021145, 10.855341, 25.178598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.323602, 10.600255, 25.237341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471668, -0.375533, 0.797812,
		-0.453630, -0.672525, -0.584747,
		0.756140, -0.637718, 0.146856,
		11.550445, 10.408940, 25.281399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.735835, 10.249752, 25.484577>,  <11.021145, 10.855341, 25.178598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.735835, 10.249752, 25.484577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.127216, 10.214023, 25.559036>,  <11.362045, 10.192585, 25.603712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.127216, 10.214023, 25.559036>,  <10.735835, 10.249752, 25.484577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.127216, 10.214023, 25.559036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206465, -0.418098, 0.884628,
		-0.001190, -0.904000, -0.427531,
		0.978454, -0.089323, 0.186147,
		11.420753, 10.187225, 25.614880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.778083, 9.628431, 25.807693>,  <10.735835, 10.249752, 25.484577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.778083, 9.628431, 25.807693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.120968, 9.809555, 25.905794>,  <11.326699, 9.918229, 25.964655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.120968, 9.809555, 25.905794>,  <10.778083, 9.628431, 25.807693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.120968, 9.809555, 25.905794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107687, -0.308102, 0.945239,
		0.503577, -0.836681, -0.215347,
		0.857213, 0.452810, 0.245253,
		11.378132, 9.945398, 25.979370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.135775, 9.118028, 26.197645>,  <10.778083, 9.628431, 25.807693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.135775, 9.118028, 26.197645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.272202, 9.477459, 26.308086>,  <11.354057, 9.693117, 26.374352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.272202, 9.477459, 26.308086>,  <11.135775, 9.118028, 26.197645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.272202, 9.477459, 26.308086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087873, -0.322903, 0.942344,
		0.935923, -0.297139, -0.189093,
		0.341066, 0.898578, 0.276102,
		11.374521, 9.747032, 26.390917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.620445, 9.006208, 26.741127>,  <11.135775, 9.118028, 26.197645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.620445, 9.006208, 26.741127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.583077, 9.402187, 26.783604>,  <11.560657, 9.639774, 26.809090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.583077, 9.402187, 26.783604>,  <11.620445, 9.006208, 26.741127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.583077, 9.402187, 26.783604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106583, -0.096104, 0.989649,
		0.989905, 0.103772, -0.096533,
		-0.093421, 0.989947, 0.106194,
		11.555051, 9.699171, 26.815462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.101265, 9.147318, 27.214554>,  <11.620445, 9.006208, 26.741127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.101265, 9.147318, 27.214554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.822143, 9.433240, 27.232971>,  <11.654669, 9.604793, 27.244022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.822143, 9.433240, 27.232971>,  <12.101265, 9.147318, 27.214554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.822143, 9.433240, 27.232971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022677, -0.042204, 0.998851,
		0.715927, 0.698050, 0.013241,
		-0.697807, 0.714804, 0.046045,
		11.612801, 9.647681, 27.246784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.191794, 9.492345, 27.782320>,  <12.101265, 9.147318, 27.214554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.191794, 9.492345, 27.782320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.824577, 9.639296, 27.722681>,  <11.604247, 9.727466, 27.686897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.824577, 9.639296, 27.722681>,  <12.191794, 9.492345, 27.782320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.824577, 9.639296, 27.722681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189941, -0.077434, 0.978737,
		0.348021, 0.926843, 0.140867,
		-0.918044, 0.367377, -0.149097,
		11.549164, 9.749509, 27.677952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104432, 9.974856, 28.242867>,  <12.191794, 9.492345, 27.782320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104432, 9.974856, 28.242867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.731192, 9.870060, 28.144331>,  <11.507248, 9.807182, 28.085209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.731192, 9.870060, 28.144331>,  <12.104432, 9.974856, 28.242867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.731192, 9.870060, 28.144331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205185, -0.174698, 0.963006,
		-0.295335, 0.949126, 0.109254,
		-0.933100, -0.261992, -0.246341,
		11.451262, 9.791462, 28.070429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.696426, 10.274519, 28.732645>,  <12.104432, 9.974856, 28.242867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.696426, 10.274519, 28.732645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.487539, 9.957898, 28.605690>,  <11.362206, 9.767926, 28.529518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.487539, 9.957898, 28.605690>,  <11.696426, 10.274519, 28.732645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.487539, 9.957898, 28.605690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073118, -0.329237, 0.941412,
		-0.849671, 0.514830, 0.114057,
		-0.522219, -0.791551, -0.317387,
		11.330873, 9.720433, 28.510473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.199783, 10.255705, 29.250477>,  <11.696426, 10.274519, 28.732645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.199783, 10.255705, 29.250477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.206029, 9.899531, 29.068539>,  <11.209776, 9.685827, 28.959375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.206029, 9.899531, 29.068539>,  <11.199783, 10.255705, 29.250477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.206029, 9.899531, 29.068539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284170, -0.440095, 0.851800,
		-0.958647, 0.115954, -0.259905,
		0.015613, -0.890433, -0.454846,
		11.210712, 9.632401, 28.932085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.722229, 9.946424, 29.579983>,  <11.199783, 10.255705, 29.250477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.722229, 9.946424, 29.579983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.889656, 9.625914, 29.408983>,  <10.990112, 9.433607, 29.306383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.889656, 9.625914, 29.408983>,  <10.722229, 9.946424, 29.579983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.889656, 9.625914, 29.408983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293955, -0.564909, 0.771018,
		-0.859296, -0.197059, -0.471993,
		0.418569, -0.801278, -0.427498,
		11.015226, 9.385530, 29.280733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.229595, 9.518384, 29.628748>,  <10.722229, 9.946424, 29.579983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.229595, 9.518384, 29.628748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.550133, 9.286963, 29.567921>,  <10.742455, 9.148109, 29.531424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.550133, 9.286963, 29.567921>,  <10.229595, 9.518384, 29.628748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.550133, 9.286963, 29.567921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250998, -0.555935, 0.792425,
		-0.542996, -0.596838, -0.590711,
		0.801346, -0.578550, -0.152065,
		10.790536, 9.113397, 29.522301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.787283, 10.221902, 29.529663>,  <10.229595, 9.518384, 29.628748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.787283, 10.221902, 29.529663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.906245, 10.576618, 29.671171>,  <9.977623, 10.789448, 29.756075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.906245, 10.576618, 29.671171>,  <9.787283, 10.221902, 29.529663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.906245, 10.576618, 29.671171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230852, 0.426331, -0.874614,
		-0.926422, 0.178447, 0.331511,
		0.297405, 0.886791, 0.353768,
		9.995467, 10.842655, 29.777302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.276368, 10.667011, 29.367849>,  <9.787283, 10.221902, 29.529663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.276368, 10.667011, 29.367849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.570120, 10.927024, 29.445972>,  <9.746371, 11.083032, 29.492846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.570120, 10.927024, 29.445972>,  <9.276368, 10.667011, 29.367849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.570120, 10.927024, 29.445972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276613, 0.549400, -0.788445,
		-0.619816, 0.524993, 0.583275,
		0.734379, 0.650032, 0.195307,
		9.790434, 11.122034, 29.504564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.982866, 11.263296, 29.191313>,  <9.276368, 10.667011, 29.367849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.982866, 11.263296, 29.191313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.371959, 11.355389, 29.202536>,  <9.605414, 11.410644, 29.209270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.371959, 11.355389, 29.202536>,  <8.982866, 11.263296, 29.191313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.371959, 11.355389, 29.202536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132878, 0.652351, -0.746178,
		-0.190097, 0.722103, 0.665155,
		0.972732, 0.230230, 0.028058,
		9.663778, 11.424458, 29.210953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.960930, 11.958122, 29.110474>,  <8.982866, 11.263296, 29.191313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.960930, 11.958122, 29.110474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.349704, 11.900509, 29.036070>,  <9.582968, 11.865941, 28.991428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.349704, 11.900509, 29.036070>,  <8.960930, 11.958122, 29.110474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.349704, 11.900509, 29.036070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075789, 0.556809, -0.827175,
		0.222713, 0.818057, 0.530266,
		0.971934, -0.144034, -0.186008,
		9.641284, 11.857299, 28.980267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.257765, 12.565066, 28.951792>,  <8.960930, 11.958122, 29.110474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.257765, 12.565066, 28.951792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.505456, 12.319325, 28.756189>,  <9.654071, 12.171881, 28.638828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.505456, 12.319325, 28.756189>,  <9.257765, 12.565066, 28.951792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.505456, 12.319325, 28.756189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125959, 0.692423, -0.710411,
		0.775042, 0.378312, 0.506152,
		0.619229, -0.614353, -0.489005,
		9.691225, 12.135019, 28.609488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.901994, 12.925501, 28.878897>,  <9.257765, 12.565066, 28.951792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.901994, 12.925501, 28.878897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.861724, 12.646214, 28.595388>,  <9.837562, 12.478642, 28.425283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.861724, 12.646214, 28.595388>,  <9.901994, 12.925501, 28.878897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.861724, 12.646214, 28.595388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053194, 0.707595, -0.704613,
		0.993496, -0.108639, -0.034096,
		-0.100674, -0.698217, -0.708772,
		9.831522, 12.436749, 28.382757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.291512, 13.238834, 28.328196>,  <9.901994, 12.925501, 28.878897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.291512, 13.238834, 28.328196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.062670, 12.951831, 28.169262>,  <9.925364, 12.779629, 28.073902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.062670, 12.951831, 28.169262>,  <10.291512, 13.238834, 28.328196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.062670, 12.951831, 28.169262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032905, 0.504136, -0.862997,
		0.819519, -0.480651, -0.312030,
		-0.572106, -0.717510, -0.397334,
		9.891038, 12.736578, 28.050062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.692643, 13.839497, 28.292761>,  <10.291512, 13.238834, 28.328196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.692643, 13.839497, 28.292761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.421254, 14.125242, 28.361296>,  <10.258421, 14.296690, 28.402416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.421254, 14.125242, 28.361296>,  <10.692643, 13.839497, 28.292761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.421254, 14.125242, 28.361296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217752, -0.027188, 0.975625,
		0.701611, 0.699245, -0.137108,
		-0.678473, 0.714365, 0.171337,
		10.217712, 14.339552, 28.412697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.045761, 14.436263, 28.594049>,  <10.692643, 13.839497, 28.292761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.045761, 14.436263, 28.594049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.658791, 14.453388, 28.693851>,  <10.426608, 14.463663, 28.753733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.658791, 14.453388, 28.693851>,  <11.045761, 14.436263, 28.594049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.658791, 14.453388, 28.693851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253070, 0.138858, 0.957431,
		0.006345, 0.989387, -0.145170,
		-0.967427, 0.042813, 0.249503,
		10.368563, 14.466232, 28.768702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.049789, 15.060187, 29.038115>,  <11.045761, 14.436263, 28.594049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.049789, 15.060187, 29.038115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.752795, 14.805654, 29.121820>,  <10.574598, 14.652933, 29.172045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.752795, 14.805654, 29.121820>,  <11.049789, 15.060187, 29.038115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.752795, 14.805654, 29.121820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161296, 0.133376, 0.977852,
		-0.650153, 0.759795, 0.003608,
		-0.742486, -0.636335, 0.209267,
		10.530049, 14.614753, 29.184601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.650543, 15.383693, 29.641819>,  <11.049789, 15.060187, 29.038115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.650543, 15.383693, 29.641819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.410023, 15.064200, 29.633175>,  <10.265711, 14.872505, 29.627989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.410023, 15.064200, 29.633175>,  <10.650543, 15.383693, 29.641819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.410023, 15.064200, 29.633175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302570, 0.202585, 0.931349,
		-0.739519, 0.566559, -0.363486,
		-0.601301, -0.798731, -0.021608,
		10.229632, 14.824581, 29.626692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.996181, 15.557758, 29.694437>,  <10.650543, 15.383693, 29.641819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.996181, 15.557758, 29.694437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.097276, 15.204158, 29.851748>,  <10.157933, 14.991998, 29.946135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.097276, 15.204158, 29.851748>,  <9.996181, 15.557758, 29.694437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.097276, 15.204158, 29.851748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202326, 0.349198, 0.914946,
		-0.946144, -0.310811, -0.090601,
		0.252738, -0.884001, 0.393276,
		10.173098, 14.938957, 29.969730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.566300, 15.459105, 30.286085>,  <9.996181, 15.557758, 29.694437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.566300, 15.459105, 30.286085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.846146, 15.175873, 30.324377>,  <10.014052, 15.005934, 30.347353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.846146, 15.175873, 30.324377>,  <9.566300, 15.459105, 30.286085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.846146, 15.175873, 30.324377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009836, 0.124423, 0.992180,
		-0.714455, -0.695083, 0.080084,
		0.699612, -0.708081, 0.095732,
		10.056029, 14.963449, 30.353096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.389128, 15.214094, 30.886677>,  <9.566300, 15.459105, 30.286085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.389128, 15.214094, 30.886677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.757400, 15.071157, 30.823868>,  <9.978362, 14.985394, 30.786182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.757400, 15.071157, 30.823868>,  <9.389128, 15.214094, 30.886677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.757400, 15.071157, 30.823868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219960, 0.142676, 0.965019,
		-0.322441, -0.923010, 0.209961,
		0.920679, -0.357345, -0.157021,
		10.033603, 14.963953, 30.776762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.442513, 14.765128, 31.327316>,  <9.389128, 15.214094, 30.886677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.442513, 14.765128, 31.327316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.830462, 14.822418, 31.248491>,  <10.063231, 14.856792, 31.201197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.830462, 14.822418, 31.248491>,  <9.442513, 14.765128, 31.327316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.830462, 14.822418, 31.248491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190113, 0.060821, 0.979877,
		0.152330, -0.987819, 0.031759,
		0.969872, 0.143227, -0.197062,
		10.121424, 14.865386, 31.189373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.796662, 14.455593, 31.949327>,  <9.442513, 14.765128, 31.327316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.796662, 14.455593, 31.949327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.084894, 14.659069, 31.760860>,  <10.257833, 14.781155, 31.647779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.084894, 14.659069, 31.760860>,  <9.796662, 14.455593, 31.949327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.084894, 14.659069, 31.760860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444460, 0.182693, 0.876971,
		0.532186, -0.841343, -0.094447,
		0.720579, 0.508690, -0.471170,
		10.301068, 14.811676, 31.619509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.778550, 16.707933, 16.670609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.088892, 16.888910, 16.846495>,  <14.275097, 16.997496, 16.952026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.088892, 16.888910, 16.846495>,  <13.778550, 16.707933, 16.670609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.088892, 16.888910, 16.846495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288142, -0.365916, 0.884918,
		0.561272, -0.813267, -0.153530,
		0.775853, 0.452441, 0.439714,
		14.321648, 17.024643, 16.978409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.057668, 16.205961, 17.130373>,  <13.778550, 16.707933, 16.670609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.057668, 16.205961, 17.130373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.175610, 16.554625, 17.286972>,  <14.246375, 16.763823, 17.380932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.175610, 16.554625, 17.286972>,  <14.057668, 16.205961, 17.130373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.175610, 16.554625, 17.286972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293868, -0.307139, 0.905156,
		0.909232, -0.381939, 0.165591,
		0.294855, 0.871659, 0.391500,
		14.264066, 16.816122, 17.404423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423079, 16.095413, 17.785755>,  <14.057668, 16.205961, 17.130373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423079, 16.095413, 17.785755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.275379, 16.467125, 17.781820>,  <14.186759, 16.690151, 17.779459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.275379, 16.467125, 17.781820>,  <14.423079, 16.095413, 17.785755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.275379, 16.467125, 17.781820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417019, -0.156227, 0.895371,
		0.830512, 0.334717, 0.445213,
		-0.369250, 0.929278, -0.009835,
		14.164604, 16.745909, 17.778870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.522391, 16.397938, 18.468126>,  <14.423079, 16.095413, 17.785755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.522391, 16.397938, 18.468126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253623, 16.651928, 18.315636>,  <14.092362, 16.804321, 18.224142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253623, 16.651928, 18.315636>,  <14.522391, 16.397938, 18.468126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253623, 16.651928, 18.315636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553858, -0.089070, 0.827833,
		0.491696, 0.767382, 0.411533,
		-0.671920, 0.634974, -0.381225,
		14.052047, 16.842421, 18.201267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288622, 16.859667, 19.026995>,  <14.522391, 16.397938, 18.468126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.288622, 16.859667, 19.026995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.994699, 16.872450, 18.755985>,  <13.818346, 16.880119, 18.593380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.994699, 16.872450, 18.755985>,  <14.288622, 16.859667, 19.026995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.994699, 16.872450, 18.755985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663989, 0.170058, 0.728148,
		0.138487, 0.984916, -0.103741,
		-0.734806, 0.031957, -0.677524,
		13.774258, 16.882036, 18.552729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.909635, 17.467310, 19.129677>,  <14.288622, 16.859667, 19.026995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.909635, 17.467310, 19.129677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668776, 17.211826, 18.938065>,  <13.524261, 17.058537, 18.823097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668776, 17.211826, 18.938065>,  <13.909635, 17.467310, 19.129677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.668776, 17.211826, 18.938065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709636, 0.153239, 0.687703,
		-0.365835, 0.754036, -0.545523,
		-0.602148, -0.638708, -0.479030,
		13.488132, 17.020214, 18.794355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.386174, 17.548660, 19.471762>,  <13.909635, 17.467310, 19.129677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.386174, 17.548660, 19.471762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.285509, 17.225361, 19.258821>,  <13.225110, 17.031382, 19.131058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.285509, 17.225361, 19.258821>,  <13.386174, 17.548660, 19.471762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.285509, 17.225361, 19.258821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679917, -0.243797, 0.691574,
		-0.688751, 0.535998, -0.488189,
		-0.251663, -0.808251, -0.532350,
		13.210011, 16.982885, 19.099117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.667855, 17.559717, 19.390608>,  <13.386174, 17.548660, 19.471762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.667855, 17.559717, 19.390608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.723629, 17.168509, 19.328600>,  <12.757093, 16.933783, 19.291395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.723629, 17.168509, 19.328600>,  <12.667855, 17.559717, 19.390608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.723629, 17.168509, 19.328600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778826, -0.204997, 0.592796,
		-0.611546, 0.038079, -0.790292,
		0.139435, -0.978022, -0.155022,
		12.765459, 16.875103, 19.282093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.988767, 17.161755, 19.189819>,  <12.667855, 17.559717, 19.390608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.988767, 17.161755, 19.189819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.235273, 16.877075, 19.324696>,  <12.383178, 16.706266, 19.405621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.235273, 16.877075, 19.324696>,  <11.988767, 17.161755, 19.189819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.235273, 16.877075, 19.324696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762136, -0.431095, 0.483018,
		-0.198403, -0.554652, -0.808083,
		0.616267, -0.711700, 0.337189,
		12.420154, 16.663565, 19.425852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.589256, 16.549364, 19.223742>,  <11.988767, 17.161755, 19.189819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.589256, 16.549364, 19.223742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901588, 16.473417, 19.461819>,  <12.088988, 16.427849, 19.604664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.901588, 16.473417, 19.461819>,  <11.589256, 16.549364, 19.223742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.901588, 16.473417, 19.461819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567329, -0.614442, 0.548269,
		0.261612, -0.765775, -0.587493,
		0.780831, -0.189868, 0.595192,
		12.135838, 16.416456, 19.640377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.402882, 15.937478, 19.523529>,  <11.589256, 16.549364, 19.223742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.402882, 15.937478, 19.523529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.707189, 16.075954, 19.743124>,  <11.889772, 16.159040, 19.874880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.707189, 16.075954, 19.743124>,  <11.402882, 15.937478, 19.523529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.707189, 16.075954, 19.743124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419889, -0.382465, 0.823051,
		0.494900, -0.856664, -0.145605,
		0.760767, 0.346190, 0.548986,
		11.935419, 16.179811, 19.907820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.570290, 15.330076, 20.049665>,  <11.402882, 15.937478, 19.523529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.570290, 15.330076, 20.049665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.681700, 15.695063, 20.169552>,  <11.748546, 15.914055, 20.241484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.681700, 15.695063, 20.169552>,  <11.570290, 15.330076, 20.049665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.681700, 15.695063, 20.169552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632682, -0.060471, 0.772047,
		0.722591, -0.404659, 0.560458,
		0.278525, 0.912466, 0.299717,
		11.765257, 15.968802, 20.259466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.560076, 14.735879, 20.348703>,  <11.570290, 15.330076, 20.049665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.560076, 14.735879, 20.348703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220926, 14.554951, 20.238058>,  <11.017436, 14.446394, 20.171671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220926, 14.554951, 20.238058>,  <11.560076, 14.735879, 20.348703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220926, 14.554951, 20.238058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216464, 0.180941, -0.959377,
		0.483996, -0.873308, -0.055504,
		-0.847875, -0.452320, -0.276615,
		10.966564, 14.419255, 20.155073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647923, 14.143413, 19.901930>,  <11.560076, 14.735879, 20.348703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647923, 14.143413, 19.901930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.277653, 14.260599, 19.806185>,  <11.055490, 14.330911, 19.748737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.277653, 14.260599, 19.806185>,  <11.647923, 14.143413, 19.901930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.277653, 14.260599, 19.806185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236113, -0.046963, -0.970590,
		-0.295592, -0.954969, -0.025701,
		-0.925676, 0.292967, -0.239363,
		10.999949, 14.348489, 19.734377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558874, 13.741509, 19.385180>,  <11.647923, 14.143413, 19.901930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558874, 13.741509, 19.385180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.281538, 14.027918, 19.352697>,  <11.115136, 14.199762, 19.333208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.281538, 14.027918, 19.352697>,  <11.558874, 13.741509, 19.385180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.281538, 14.027918, 19.352697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121819, 0.005398, -0.992538,
		-0.710239, -0.698058, -0.090967,
		-0.693340, 0.716020, -0.081203,
		11.073536, 14.242723, 19.328337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.185465, 13.527399, 18.825703>,  <11.558874, 13.741509, 19.385180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.185465, 13.527399, 18.825703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.111086, 13.918184, 18.867590>,  <11.066459, 14.152656, 18.892721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.111086, 13.918184, 18.867590>,  <11.185465, 13.527399, 18.825703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.111086, 13.918184, 18.867590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210799, 0.143761, -0.966900,
		-0.959681, -0.157719, -0.232675,
		-0.185948, 0.976963, 0.104717,
		11.055302, 14.211273, 18.899006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.672733, 13.700027, 18.448856>,  <11.185465, 13.527399, 18.825703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.672733, 13.700027, 18.448856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.857064, 14.051339, 18.499866>,  <10.967663, 14.262126, 18.530474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.857064, 14.051339, 18.499866>,  <10.672733, 13.700027, 18.448856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.857064, 14.051339, 18.499866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018697, 0.153269, -0.988008,
		-0.887293, 0.452916, 0.087052,
		0.460827, 0.878280, 0.127527,
		10.995313, 14.314823, 18.538124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.383236, 14.026901, 17.927618>,  <10.672733, 13.700027, 18.448856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.383236, 14.026901, 17.927618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.695064, 14.257072, 18.026537>,  <10.882160, 14.395175, 18.085888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.695064, 14.257072, 18.026537>,  <10.383236, 14.026901, 17.927618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.695064, 14.257072, 18.026537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156363, 0.203534, -0.966501,
		-0.606485, 0.792122, 0.068693,
		0.779568, 0.575428, 0.247299,
		10.928934, 14.429701, 18.100727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.216520, 14.693994, 17.614422>,  <10.383236, 14.026901, 17.927618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.216520, 14.693994, 17.614422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612746, 14.667741, 17.662546>,  <10.850482, 14.651989, 17.691422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612746, 14.667741, 17.662546>,  <10.216520, 14.693994, 17.614422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.612746, 14.667741, 17.662546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132213, 0.226489, -0.964999,
		0.036085, 0.971800, 0.233030,
		0.990564, -0.065632, 0.120312,
		10.909916, 14.648051, 17.698639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.367265, 15.092352, 17.154953>,  <10.216520, 14.693994, 17.614422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.367265, 15.092352, 17.154953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.702455, 14.898905, 17.256079>,  <10.903568, 14.782837, 17.316753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.702455, 14.898905, 17.256079>,  <10.367265, 15.092352, 17.154953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.702455, 14.898905, 17.256079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283270, -0.010484, -0.958983,
		0.466431, 0.875217, 0.128209,
		0.837973, -0.483618, 0.252813,
		10.953847, 14.753819, 17.331923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.784841, 15.357023, 16.691952>,  <10.367265, 15.092352, 17.154953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.784841, 15.357023, 16.691952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.982591, 15.030855, 16.812407>,  <11.101241, 14.835155, 16.884680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.982591, 15.030855, 16.812407>,  <10.784841, 15.357023, 16.691952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.982591, 15.030855, 16.812407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327197, -0.146385, -0.933549,
		0.805317, 0.560054, 0.194434,
		0.494375, -0.815421, 0.301135,
		11.130903, 14.786229, 16.902746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.408987, 15.418306, 16.510635>,  <10.784841, 15.357023, 16.691952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.408987, 15.418306, 16.510635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.357670, 15.023888, 16.553070>,  <11.326880, 14.787236, 16.578531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.357670, 15.023888, 16.553070>,  <11.408987, 15.418306, 16.510635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.357670, 15.023888, 16.553070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370831, -0.146909, -0.917007,
		0.919796, -0.078305, 0.384504,
		-0.128293, -0.986045, 0.106089,
		11.319181, 14.728074, 16.584896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.958340, 15.082980, 16.129786>,  <11.408987, 15.418306, 16.510635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.958340, 15.082980, 16.129786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682611, 14.794885, 16.161007>,  <11.517173, 14.622027, 16.179739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682611, 14.794885, 16.161007>,  <11.958340, 15.082980, 16.129786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.682611, 14.794885, 16.161007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224404, -0.314718, -0.922277,
		0.688823, -0.618231, 0.378566,
		-0.689322, -0.720237, 0.078052,
		11.475814, 14.578814, 16.184423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.227422, 14.371444, 15.996843>,  <11.958340, 15.082980, 16.129786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.227422, 14.371444, 15.996843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838081, 14.343379, 15.909516>,  <11.604477, 14.326540, 15.857120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838081, 14.343379, 15.909516>,  <12.227422, 14.371444, 15.996843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.838081, 14.343379, 15.909516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228526, -0.375717, -0.898116,
		-0.019011, -0.924075, 0.381739,
		-0.973352, -0.070163, -0.218318,
		11.546076, 14.322330, 15.844021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274539, 13.755691, 15.594288>,  <12.227422, 14.371444, 15.996843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.274539, 13.755691, 15.594288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.940509, 13.955464, 15.502014>,  <11.740091, 14.075329, 15.446650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.940509, 13.955464, 15.502014>,  <12.274539, 13.755691, 15.594288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.940509, 13.955464, 15.502014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211327, -0.095934, -0.972696,
		-0.507929, -0.861023, -0.025433,
		-0.835074, 0.499435, -0.230685,
		11.689986, 14.105295, 15.432809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.331726, 13.866237, 14.770053>,  <12.274539, 13.755691, 15.594288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.331726, 13.866237, 14.770053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596653, 13.589049, 14.883986>,  <12.755610, 13.422737, 14.952345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596653, 13.589049, 14.883986>,  <12.331726, 13.866237, 14.770053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.596653, 13.589049, 14.883986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513023, -0.696526, -0.501656,
		0.546025, 0.186130, -0.816831,
		0.662317, -0.692969, 0.284832,
		12.795348, 13.381159, 14.969436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.758397, 13.540297, 14.222425>,  <12.331726, 13.866237, 14.770053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.758397, 13.540297, 14.222425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.674106, 13.325426, 14.549114>,  <12.623531, 13.196504, 14.745128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.674106, 13.325426, 14.549114>,  <12.758397, 13.540297, 14.222425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.674106, 13.325426, 14.549114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595725, -0.591848, -0.542980,
		0.775052, -0.600963, -0.195291,
		-0.210728, -0.537177, 0.816722,
		12.610888, 13.164273, 14.794130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.169149, 12.880166, 14.181057>,  <12.758397, 13.540297, 14.222425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.169149, 12.880166, 14.181057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.470369, 12.617018, 14.185453>,  <13.651101, 12.459128, 14.188091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.470369, 12.617018, 14.185453>,  <13.169149, 12.880166, 14.181057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.470369, 12.617018, 14.185453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444850, -0.496762, 0.745209,
		-0.484791, -0.566069, -0.666741,
		0.753052, -0.657870, 0.010990,
		13.696284, 12.419657, 14.188750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.935916, 12.209214, 14.239732>,  <13.169149, 12.880166, 14.181057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.935916, 12.209214, 14.239732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.301581, 12.227653, 14.400819>,  <13.520981, 12.238715, 14.497471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.301581, 12.227653, 14.400819>,  <12.935916, 12.209214, 14.239732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.301581, 12.227653, 14.400819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361981, -0.354274, 0.862241,
		0.182419, -0.934005, -0.307178,
		0.914162, 0.046097, 0.402718,
		13.575830, 12.241482, 14.521634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018469, 11.490059, 14.572342>,  <12.935916, 12.209214, 14.239732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018469, 11.490059, 14.572342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250575, 11.764698, 14.747557>,  <13.389839, 11.929482, 14.852686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250575, 11.764698, 14.747557>,  <13.018469, 11.490059, 14.572342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250575, 11.764698, 14.747557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298133, -0.321440, 0.898773,
		0.757898, -0.652120, 0.018177,
		0.580265, 0.686597, 0.438037,
		13.424655, 11.970677, 14.878967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.433083, 11.135440, 15.030196>,  <13.018469, 11.490059, 14.572342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.433083, 11.135440, 15.030196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.420087, 11.504067, 15.184937>,  <13.412290, 11.725245, 15.277782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.420087, 11.504067, 15.184937>,  <13.433083, 11.135440, 15.030196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.420087, 11.504067, 15.184937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283453, -0.379660, 0.880632,
		0.958436, -0.081044, 0.273556,
		-0.032489, 0.921569, 0.386852,
		13.410340, 11.780539, 15.300993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881433, 11.153088, 15.611062>,  <13.433083, 11.135440, 15.030196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.881433, 11.153088, 15.611062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.639399, 11.465567, 15.672511>,  <13.494178, 11.653054, 15.709380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.639399, 11.465567, 15.672511>,  <13.881433, 11.153088, 15.611062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.639399, 11.465567, 15.672511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226201, -0.353685, 0.907601,
		0.763350, 0.514427, 0.390718,
		-0.605086, 0.781198, 0.153622,
		13.457872, 11.699926, 15.718597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.009284, 11.338224, 16.253582>,  <13.881433, 11.153088, 15.611062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.009284, 11.338224, 16.253582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.666429, 11.539190, 16.208164>,  <13.460715, 11.659770, 16.180914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.666429, 11.539190, 16.208164>,  <14.009284, 11.338224, 16.253582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.666429, 11.539190, 16.208164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226605, -0.169855, 0.959062,
		0.462560, 0.847779, 0.259439,
		-0.857140, 0.502414, -0.113543,
		13.409286, 11.689915, 16.174101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.917388, 11.785419, 16.770861>,  <14.009284, 11.338224, 16.253582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.917388, 11.785419, 16.770861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.539590, 11.735004, 16.649506>,  <13.312911, 11.704756, 16.576693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.539590, 11.735004, 16.649506>,  <13.917388, 11.785419, 16.770861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.539590, 11.735004, 16.649506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277084, -0.190543, 0.941763,
		-0.176505, 0.973554, 0.145044,
		-0.944495, -0.126037, -0.303388,
		13.256242, 11.697193, 16.558489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.521397, 11.966713, 17.352713>,  <13.917388, 11.785419, 16.770861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.521397, 11.966713, 17.352713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.253666, 11.748884, 17.150547>,  <13.093027, 11.618187, 17.029247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.253666, 11.748884, 17.150547>,  <13.521397, 11.966713, 17.352713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.253666, 11.748884, 17.150547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381240, -0.332137, 0.862752,
		-0.637697, 0.770147, 0.014695,
		-0.669327, -0.544572, -0.505414,
		13.052868, 11.585512, 16.998922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.815854, 11.980337, 17.668642>,  <13.521397, 11.966713, 17.352713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.815854, 11.980337, 17.668642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825597, 11.642427, 17.454815>,  <12.831443, 11.439681, 17.326519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825597, 11.642427, 17.454815>,  <12.815854, 11.980337, 17.668642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825597, 11.642427, 17.454815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462130, -0.483677, 0.743298,
		-0.886478, 0.228935, -0.402177,
		0.024357, -0.844775, -0.534567,
		12.832904, 11.388995, 17.294445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.167744, 11.713779, 17.771732>,  <12.815854, 11.980337, 17.668642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.167744, 11.713779, 17.771732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417774, 11.418523, 17.670200>,  <12.567792, 11.241369, 17.609282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.417774, 11.418523, 17.670200>,  <12.167744, 11.713779, 17.771732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.417774, 11.418523, 17.670200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162535, -0.441141, 0.882597,
		-0.763455, -0.510433, -0.395720,
		0.625075, -0.738141, -0.253828,
		12.605297, 11.197081, 17.594051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.811401, 11.154500, 17.781878>,  <12.167744, 11.713779, 17.771732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.811401, 11.154500, 17.781878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183714, 11.010303, 17.806179>,  <12.407102, 10.923786, 17.820761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183714, 11.010303, 17.806179>,  <11.811401, 11.154500, 17.781878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.183714, 11.010303, 17.806179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212632, -0.398661, 0.892108,
		-0.297372, -0.843279, -0.447718,
		0.930783, -0.360487, 0.060757,
		12.462949, 10.902157, 17.824406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.754630, 10.434340, 17.980366>,  <11.811401, 11.154500, 17.781878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.754630, 10.434340, 17.980366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136081, 10.509280, 18.074596>,  <12.364951, 10.554244, 18.131134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136081, 10.509280, 18.074596>,  <11.754630, 10.434340, 17.980366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.136081, 10.509280, 18.074596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108944, -0.514752, 0.850389,
		0.280585, -0.836618, -0.470471,
		0.953627, 0.187351, 0.235576,
		12.422169, 10.565485, 18.145269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.915513, 9.915325, 18.575033>,  <11.754630, 10.434340, 17.980366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.915513, 9.915325, 18.575033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.230646, 10.161116, 18.591707>,  <12.419726, 10.308590, 18.601711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.230646, 10.161116, 18.591707>,  <11.915513, 9.915325, 18.575033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.230646, 10.161116, 18.591707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087519, -0.178689, 0.980005,
		0.609638, -0.768433, -0.194555,
		0.787833, 0.614476, 0.041683,
		12.466996, 10.345459, 18.604212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.451120, 9.569031, 18.910784>,  <11.915513, 9.915325, 18.575033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.451120, 9.569031, 18.910784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528141, 9.958138, 18.962397>,  <12.574353, 10.191602, 18.993364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528141, 9.958138, 18.962397>,  <12.451120, 9.569031, 18.910784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.528141, 9.958138, 18.962397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180959, -0.164439, 0.969646,
		0.964458, -0.163356, -0.207693,
		0.192551, 0.972766, 0.129034,
		12.585906, 10.249968, 19.001106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.088908, 9.577292, 19.423489>,  <12.451120, 9.569031, 18.910784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.088908, 9.577292, 19.423489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.902746, 9.931324, 19.425827>,  <12.791049, 10.143743, 19.427229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.902746, 9.931324, 19.425827>,  <13.088908, 9.577292, 19.423489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.902746, 9.931324, 19.425827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072830, 0.031713, 0.996840,
		0.882096, 0.464361, -0.079219,
		-0.465406, 0.885078, 0.005845,
		12.763124, 10.196847, 19.427580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361200, 9.864809, 19.952522>,  <13.088908, 9.577292, 19.423489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.361200, 9.864809, 19.952522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046998, 10.106210, 19.897724>,  <12.858477, 10.251050, 19.864845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046998, 10.106210, 19.897724>,  <13.361200, 9.864809, 19.952522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046998, 10.106210, 19.897724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008486, 0.210843, 0.977483,
		0.618797, 0.768981, -0.160497,
		-0.785505, 0.603502, -0.136995,
		12.811346, 10.287260, 19.856627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.540248, 10.498472, 20.257107>,  <13.361200, 9.864809, 19.952522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.540248, 10.498472, 20.257107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.140392, 10.507616, 20.251434>,  <12.900479, 10.513103, 20.248030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.140392, 10.507616, 20.251434>,  <13.540248, 10.498472, 20.257107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.140392, 10.507616, 20.251434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003016, 0.428629, 0.903476,
		0.026732, 0.903191, -0.428405,
		-0.999638, 0.022860, -0.014182,
		12.840501, 10.514474, 20.247179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336354, 11.168073, 20.511250>,  <13.540248, 10.498472, 20.257107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.336354, 11.168073, 20.511250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022623, 10.924747, 20.559883>,  <12.834384, 10.778750, 20.589064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022623, 10.924747, 20.559883>,  <13.336354, 11.168073, 20.511250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022623, 10.924747, 20.559883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035656, 0.239876, 0.970149,
		-0.619321, 0.756579, -0.209831,
		-0.784328, -0.608315, 0.121584,
		12.787325, 10.742252, 20.596357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.828975, 11.508564, 21.036049>,  <13.336354, 11.168073, 20.511250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.828975, 11.508564, 21.036049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.729143, 11.121382, 21.024948>,  <12.669244, 10.889072, 21.018288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.729143, 11.121382, 21.024948>,  <12.828975, 11.508564, 21.036049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.729143, 11.121382, 21.024948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176571, 0.017310, 0.984136,
		-0.952120, 0.250520, -0.175233,
		-0.249579, -0.967957, -0.027754,
		12.654269, 10.830995, 21.016623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.209806, 11.447642, 21.430288>,  <12.828975, 11.508564, 21.036049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.209806, 11.447642, 21.430288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374320, 11.083133, 21.422045>,  <12.473028, 10.864427, 21.417099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374320, 11.083133, 21.422045>,  <12.209806, 11.447642, 21.430288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.374320, 11.083133, 21.422045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225165, -0.123482, 0.966464,
		-0.883259, -0.392851, -0.255973,
		0.411284, -0.911274, -0.020610,
		12.497705, 10.809751, 21.415861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.706456, 10.992679, 21.802025>,  <12.209806, 11.447642, 21.430288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.706456, 10.992679, 21.802025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.062243, 10.810039, 21.809689>,  <12.275714, 10.700455, 21.814287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.062243, 10.810039, 21.809689>,  <11.706456, 10.992679, 21.802025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.062243, 10.810039, 21.809689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133638, -0.219780, 0.966353,
		-0.437028, -0.862097, -0.256506,
		0.889465, -0.456602, 0.019159,
		12.329082, 10.673059, 21.815437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.565957, 10.492823, 22.260588>,  <11.706456, 10.992679, 21.802025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.565957, 10.492823, 22.260588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.965884, 10.500477, 22.260744>,  <12.205840, 10.505069, 22.260838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.965884, 10.500477, 22.260744>,  <11.565957, 10.492823, 22.260588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.965884, 10.500477, 22.260744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004183, -0.238460, 0.971143,
		0.018677, -0.970964, -0.238496,
		0.999817, 0.019136, 0.000392,
		12.265829, 10.506217, 22.260862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.795082, 9.860884, 22.487766>,  <11.565957, 10.492823, 22.260588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.795082, 9.860884, 22.487766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096169, 10.116822, 22.549753>,  <12.276820, 10.270385, 22.586945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096169, 10.116822, 22.549753>,  <11.795082, 9.860884, 22.487766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096169, 10.116822, 22.549753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024205, -0.262128, 0.964730,
		0.657900, -0.722417, -0.212795,
		0.752717, 0.639846, 0.154968,
		12.321983, 10.308776, 22.596243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.431990, 9.512983, 22.765860>,  <11.795082, 9.860884, 22.487766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.431990, 9.512983, 22.765860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499307, 9.889864, 22.881746>,  <12.539697, 10.115993, 22.951279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499307, 9.889864, 22.881746>,  <12.431990, 9.512983, 22.765860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.499307, 9.889864, 22.881746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138813, -0.313631, 0.939344,
		0.975914, -0.117868, -0.183571,
		0.168292, 0.942201, 0.289715,
		12.549794, 10.172524, 22.968660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.053432, 9.514053, 23.152020>,  <12.431990, 9.512983, 22.765860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.053432, 9.514053, 23.152020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834721, 9.838428, 23.235363>,  <12.703493, 10.033053, 23.285368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834721, 9.838428, 23.235363>,  <13.053432, 9.514053, 23.152020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834721, 9.838428, 23.235363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007894, -0.253833, 0.967216,
		0.837239, 0.527209, 0.145193,
		-0.546780, 0.810937, 0.208357,
		12.670687, 10.081710, 23.297871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336837, 9.745032, 23.803833>,  <13.053432, 9.514053, 23.152020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.336837, 9.745032, 23.803833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.985909, 9.936522, 23.790342>,  <12.775353, 10.051415, 23.782248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.985909, 9.936522, 23.790342>,  <13.336837, 9.745032, 23.803833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.985909, 9.936522, 23.790342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063843, -0.046774, 0.996863,
		0.475644, 0.876719, 0.071599,
		-0.877318, 0.478723, -0.033724,
		12.722714, 10.080138, 23.780226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.952663, 10.124301, 23.331774>,  <13.336837, 9.745032, 23.803833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.952663, 10.124301, 23.331774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079998, 10.479472, 23.198961>,  <14.156399, 10.692575, 23.119274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079998, 10.479472, 23.198961>,  <13.952663, 10.124301, 23.331774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079998, 10.479472, 23.198961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643704, -0.054659, -0.763320,
		-0.695922, 0.456724, 0.554163,
		0.318336, 0.887928, -0.332033,
		14.175499, 10.745851, 23.099352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
