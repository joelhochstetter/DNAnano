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
	<24.474028, 34.770260, 35.651215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457420, 34.816429, 35.254234>,  <24.447456, 34.844131, 35.016048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457420, 34.816429, 35.254234>,  <24.474028, 34.770260, 35.651215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457420, 34.816429, 35.254234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205833, 0.972986, 0.104553,
		0.977706, -0.199938, -0.064153,
		-0.041516, 0.115427, -0.992448,
		24.444965, 34.851059, 34.956501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915878, 35.340057, 35.596283>,  <24.474028, 34.770260, 35.651215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915878, 35.340057, 35.596283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736670, 35.297005, 35.241276>,  <24.629145, 35.271172, 35.028271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736670, 35.297005, 35.241276>,  <24.915878, 35.340057, 35.596283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.736670, 35.297005, 35.241276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117859, 0.976952, -0.177974,
		0.886221, -0.184338, -0.425009,
		-0.448020, -0.107633, -0.887521,
		24.602264, 35.264713, 34.975021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531109, 34.864281, 35.484123>,  <24.915878, 35.340057, 35.596283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531109, 34.864281, 35.484123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457188, 34.615665, 35.179611>,  <25.412834, 34.466496, 34.996906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457188, 34.615665, 35.179611>,  <25.531109, 34.864281, 35.484123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457188, 34.615665, 35.179611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967557, 0.020724, -0.251800,
		0.172280, -0.783111, 0.597543,
		-0.184804, -0.621537, -0.761275,
		25.401747, 34.429203, 34.951229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214191, 34.647091, 35.486393>,  <25.531109, 34.864281, 35.484123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214191, 34.647091, 35.486393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052923, 34.508301, 35.147675>,  <25.956161, 34.425026, 34.944443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052923, 34.508301, 35.147675>,  <26.214191, 34.647091, 35.486393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052923, 34.508301, 35.147675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898159, 0.027320, -0.438820,
		0.175394, -0.937477, 0.300623,
		-0.403171, -0.346973, -0.846796,
		25.931973, 34.404209, 34.893635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010580, 34.222878, 36.135841>,  <26.214191, 34.647091, 35.486393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010580, 34.222878, 36.135841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325632, 34.455982, 36.055813>,  <26.514664, 34.595844, 36.007797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325632, 34.455982, 36.055813>,  <26.010580, 34.222878, 36.135841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325632, 34.455982, 36.055813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615011, 0.763297, -0.197836,
		0.037421, 0.278866, 0.959601,
		0.787630, 0.582762, -0.200069,
		26.561920, 34.630810, 35.995792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743261, 34.305996, 36.381386>,  <26.010580, 34.222878, 36.135841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743261, 34.305996, 36.381386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797258, 33.921352, 36.285816>,  <26.829657, 33.690567, 36.228474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797258, 33.921352, 36.285816>,  <26.743261, 34.305996, 36.381386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797258, 33.921352, 36.285816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336649, -0.182272, 0.923821,
		-0.931904, -0.205142, 0.299119,
		0.134993, -0.961610, -0.238920,
		26.837757, 33.632870, 36.214142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633066, 33.897079, 36.899113>,  <26.743261, 34.305996, 36.381386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633066, 33.897079, 36.899113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870050, 33.648884, 36.693596>,  <27.012241, 33.499966, 36.570286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870050, 33.648884, 36.693596>,  <26.633066, 33.897079, 36.899113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870050, 33.648884, 36.693596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387775, -0.339382, 0.857001,
		-0.706133, -0.706975, 0.039540,
		0.592459, -0.620489, -0.513796,
		27.047789, 33.462738, 36.539455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525661, 33.272732, 37.099686>,  <26.633066, 33.897079, 36.899113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525661, 33.272732, 37.099686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901562, 33.319431, 36.971161>,  <27.127102, 33.347450, 36.894047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901562, 33.319431, 36.971161>,  <26.525661, 33.272732, 37.099686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901562, 33.319431, 36.971161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341829, -0.334079, 0.878376,
		-0.004794, -0.935286, -0.353859,
		0.939750, 0.116749, -0.321310,
		27.183487, 33.354454, 36.874767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899435, 32.630852, 37.236794>,  <26.525661, 33.272732, 37.099686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899435, 32.630852, 37.236794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170614, 32.921230, 37.190510>,  <27.333323, 33.095459, 37.162739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170614, 32.921230, 37.190510>,  <26.899435, 32.630852, 37.236794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170614, 32.921230, 37.190510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435811, -0.270150, 0.858538,
		0.591993, -0.632472, -0.499523,
		0.677947, 0.725946, -0.115711,
		27.373999, 33.139015, 37.155796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524002, 32.299316, 37.270252>,  <26.899435, 32.630852, 37.236794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524002, 32.299316, 37.270252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614275, 32.678116, 37.361694>,  <27.668438, 32.905396, 37.416561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614275, 32.678116, 37.361694>,  <27.524002, 32.299316, 37.270252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614275, 32.678116, 37.361694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490181, -0.313176, 0.813414,
		0.841897, -0.071512, -0.534879,
		0.225681, 0.946999, 0.228608,
		27.681980, 32.962215, 37.430275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115135, 32.205341, 37.543896>,  <27.524002, 32.299316, 37.270252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115135, 32.205341, 37.543896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004715, 32.560345, 37.691479>,  <27.938463, 32.773346, 37.780029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004715, 32.560345, 37.691479>,  <28.115135, 32.205341, 37.543896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004715, 32.560345, 37.691479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518386, -0.185777, 0.834724,
		0.809365, 0.421690, -0.408786,
		-0.276051, 0.887505, 0.368959,
		27.921900, 32.826595, 37.802166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645681, 32.611820, 37.673653>,  <28.115135, 32.205341, 37.543896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645681, 32.611820, 37.673653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355978, 32.704227, 37.933521>,  <28.182156, 32.759674, 38.089443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355978, 32.704227, 37.933521>,  <28.645681, 32.611820, 37.673653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355978, 32.704227, 37.933521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637015, -0.136476, 0.758674,
		0.263934, 0.963330, -0.048320,
		-0.724259, 0.231021, 0.649676,
		28.138700, 32.773533, 38.128426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708494, 33.296730, 38.028713>,  <28.645681, 32.611820, 37.673653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708494, 33.296730, 38.028713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577110, 33.004982, 38.268757>,  <28.498280, 32.829933, 38.412785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577110, 33.004982, 38.268757>,  <28.708494, 33.296730, 38.028713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577110, 33.004982, 38.268757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840369, 0.064360, 0.538181,
		-0.431155, 0.681087, 0.591798,
		-0.328460, -0.729368, 0.600114,
		28.478573, 32.786171, 38.448792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782253, 33.599136, 38.635609>,  <28.708494, 33.296730, 38.028713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782253, 33.599136, 38.635609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817480, 33.203472, 38.682598>,  <28.838615, 32.966072, 38.710793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817480, 33.203472, 38.682598>,  <28.782253, 33.599136, 38.635609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817480, 33.203472, 38.682598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840064, 0.137125, 0.524870,
		-0.535291, 0.052463, 0.843037,
		0.088065, -0.989163, 0.117474,
		28.843899, 32.906723, 38.717842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053909, 33.754166, 38.799610>,  <28.782253, 33.599136, 38.635609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053909, 33.754166, 38.799610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159967, 34.107410, 38.954433>,  <28.223602, 34.319359, 39.047329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159967, 34.107410, 38.954433>,  <28.053909, 33.754166, 38.799610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159967, 34.107410, 38.954433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828630, -0.413955, 0.376847,
		0.493022, 0.220809, -0.841530,
		0.265144, 0.883111, 0.387058,
		28.239511, 34.372345, 39.070549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433435, 33.504044, 38.739883>,  <28.053909, 33.754166, 38.799610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433435, 33.504044, 38.739883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725739, 33.303120, 38.554981>,  <27.901121, 33.182568, 38.444038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725739, 33.303120, 38.554981>,  <27.433435, 33.504044, 38.739883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725739, 33.303120, 38.554981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427514, 0.191170, -0.883564,
		0.532189, 0.843293, -0.075044,
		0.730758, -0.502306, -0.462258,
		27.944965, 33.152428, 38.416306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645700, 34.039467, 38.184933>,  <27.433435, 33.504044, 38.739883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645700, 34.039467, 38.184933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750109, 33.667042, 38.082962>,  <27.812754, 33.443588, 38.021778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750109, 33.667042, 38.082962>,  <27.645700, 34.039467, 38.184933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750109, 33.667042, 38.082962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322953, 0.164639, -0.931985,
		0.909708, 0.325598, -0.257715,
		0.261022, -0.931064, -0.254927,
		27.828415, 33.387722, 38.006485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991055, 34.215347, 37.562119>,  <27.645700, 34.039467, 38.184933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991055, 34.215347, 37.562119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909094, 33.824100, 37.547638>,  <27.859919, 33.589352, 37.538948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909094, 33.824100, 37.547638>,  <27.991055, 34.215347, 37.562119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909094, 33.824100, 37.547638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260195, 0.090090, -0.961344,
		0.943565, -0.187559, -0.272960,
		-0.204899, -0.978113, -0.036204,
		27.847624, 33.530666, 37.536777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379654, 33.969921, 36.957867>,  <27.991055, 34.215347, 37.562119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379654, 33.969921, 36.957867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064379, 33.734020, 37.028233>,  <27.875214, 33.592480, 37.070450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064379, 33.734020, 37.028233>,  <28.379654, 33.969921, 36.957867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064379, 33.734020, 37.028233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261772, 0.062575, -0.963099,
		0.556986, -0.805153, -0.203703,
		-0.788189, -0.589756, 0.175913,
		27.827923, 33.557095, 37.081005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275213, 33.653568, 36.318989>,  <28.379654, 33.969921, 36.957867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275213, 33.653568, 36.318989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925949, 33.573002, 36.496540>,  <27.716391, 33.524662, 36.603069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925949, 33.573002, 36.496540>,  <28.275213, 33.653568, 36.318989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925949, 33.573002, 36.496540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471971, 0.121803, -0.873159,
		0.121803, -0.971903, -0.201416,
		0.873159, 0.201416, -0.443875,
		27.664001, 33.512577, 36.629704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949400, 33.048492, 35.925781>,  <28.275213, 33.653568, 36.318989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949400, 33.048492, 35.925781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695841, 33.294071, 36.113930>,  <27.543705, 33.441418, 36.226818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695841, 33.294071, 36.113930>,  <27.949400, 33.048492, 35.925781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695841, 33.294071, 36.113930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343203, 0.321722, -0.882444,
		-0.693098, -0.720812, 0.006768,
		-0.633898, 0.613943, 0.470370,
		27.505671, 33.478252, 36.255039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037493, 33.695969, 35.521114>,  <27.949400, 33.048492, 35.925781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037493, 33.695969, 35.521114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701588, 33.559441, 35.690014>,  <27.500044, 33.477524, 35.791355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701588, 33.559441, 35.690014>,  <28.037493, 33.695969, 35.521114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701588, 33.559441, 35.690014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120398, -0.641271, -0.757810,
		0.529436, -0.687219, 0.497421,
		-0.839763, -0.341324, 0.422252,
		27.449659, 33.457043, 35.816689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808979, 33.862396, 35.303623>,  <28.037493, 33.695969, 35.521114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808979, 33.862396, 35.303623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023756, 34.173523, 35.434280>,  <29.152622, 34.360199, 35.512676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023756, 34.173523, 35.434280>,  <28.808979, 33.862396, 35.303623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023756, 34.173523, 35.434280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726275, -0.623190, 0.290102,
		0.429208, 0.081466, -0.899524,
		0.536941, 0.777816, 0.326645,
		29.184839, 34.406868, 35.532272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434088, 33.794659, 35.000641>,  <28.808979, 33.862396, 35.303623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434088, 33.794659, 35.000641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456835, 33.992542, 35.347519>,  <29.470482, 34.111271, 35.555645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456835, 33.992542, 35.347519>,  <29.434088, 33.794659, 35.000641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456835, 33.992542, 35.347519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804346, -0.537255, 0.253741,
		0.591433, 0.683098, -0.428467,
		0.056867, 0.494707, 0.867197,
		29.473894, 34.140953, 35.607677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092216, 34.194771, 35.047100>,  <29.434088, 33.794659, 35.000641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092216, 34.194771, 35.047100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935625, 33.985794, 35.350098>,  <29.841671, 33.860409, 35.531895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935625, 33.985794, 35.350098>,  <30.092216, 34.194771, 35.047100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935625, 33.985794, 35.350098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833559, -0.550032, 0.051432,
		0.389775, 0.651550, 0.650814,
		-0.391478, -0.522444, 0.757494,
		29.818182, 33.829060, 35.577347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596455, 34.162479, 35.581074>,  <30.092216, 34.194771, 35.047100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596455, 34.162479, 35.581074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369318, 33.833294, 35.574265>,  <30.233036, 33.635784, 35.570179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369318, 33.833294, 35.574265>,  <30.596455, 34.162479, 35.581074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369318, 33.833294, 35.574265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816409, -0.565719, 0.115924,
		-0.105031, 0.051929, 0.993112,
		-0.567842, -0.822961, -0.017022,
		30.198965, 33.586407, 35.569157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623747, 34.707176, 35.063843>,  <30.596455, 34.162479, 35.581074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623747, 34.707176, 35.063843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450386, 34.823696, 35.404972>,  <30.346369, 34.893608, 35.609650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450386, 34.823696, 35.404972>,  <30.623747, 34.707176, 35.063843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450386, 34.823696, 35.404972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666146, 0.740909, 0.085463,
		-0.606968, 0.605144, -0.515160,
		-0.433404, 0.291298, 0.852823,
		30.320364, 34.911087, 35.660820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257256, 34.982250, 34.504936>,  <30.623747, 34.707176, 35.063843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257256, 34.982250, 34.504936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940010, 34.888802, 34.279942>,  <29.749662, 34.832733, 34.144943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940010, 34.888802, 34.279942>,  <30.257256, 34.982250, 34.504936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940010, 34.888802, 34.279942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281137, 0.678828, -0.678347,
		0.540305, -0.696143, -0.472711,
		-0.793115, -0.233618, -0.562486,
		29.702076, 34.818714, 34.111195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420759, 35.408150, 34.040413>,  <30.257256, 34.982250, 34.504936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420759, 35.408150, 34.040413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088314, 35.243965, 33.890335>,  <29.888847, 35.145454, 33.800289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088314, 35.243965, 33.890335>,  <30.420759, 35.408150, 34.040413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088314, 35.243965, 33.890335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142987, 0.494276, -0.857465,
		0.537412, -0.766296, -0.352106,
		-0.831110, -0.410465, -0.375200,
		29.838982, 35.120827, 33.777775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061377, 35.030987, 34.186069>,  <30.420759, 35.408150, 34.040413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061377, 35.030987, 34.186069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214405, 35.326256, 33.963810>,  <31.306223, 35.503418, 33.830456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214405, 35.326256, 33.963810>,  <31.061377, 35.030987, 34.186069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214405, 35.326256, 33.963810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314442, -0.669524, -0.672952,
		-0.868772, 0.082734, -0.488253,
		0.382573, 0.738169, -0.555648,
		31.329176, 35.547707, 33.797115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768278, 34.968739, 33.518559>,  <31.061377, 35.030987, 34.186069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768278, 34.968739, 33.518559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131754, 35.135731, 33.518253>,  <31.349838, 35.235924, 33.518070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131754, 35.135731, 33.518253>,  <30.768278, 34.968739, 33.518559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131754, 35.135731, 33.518253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309772, -0.675481, -0.669154,
		-0.279873, 0.607815, -0.743123,
		0.908687, 0.417477, -0.000765,
		31.404360, 35.260975, 33.518024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935144, 35.324623, 32.802608>,  <30.768278, 34.968739, 33.518559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935144, 35.324623, 32.802608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217098, 35.140358, 33.018360>,  <31.386271, 35.029800, 33.147812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217098, 35.140358, 33.018360>,  <30.935144, 35.324623, 32.802608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217098, 35.140358, 33.018360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137135, -0.657564, -0.740813,
		0.695941, 0.596154, -0.400332,
		0.704883, -0.460662, 0.539380,
		31.428562, 35.002159, 33.180176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491808, 35.178471, 32.313087>,  <30.935144, 35.324623, 32.802608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491808, 35.178471, 32.313087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529524, 34.924091, 32.619465>,  <31.552153, 34.771461, 32.803291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529524, 34.924091, 32.619465>,  <31.491808, 35.178471, 32.313087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529524, 34.924091, 32.619465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195638, -0.742537, -0.640597,
		0.976133, 0.210250, 0.054403,
		0.094289, -0.635951, 0.765948,
		31.557810, 34.733307, 32.849251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180416, 34.761971, 32.247246>,  <31.491808, 35.178471, 32.313087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180416, 34.761971, 32.247246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890358, 34.558273, 32.432644>,  <31.716322, 34.436054, 32.543884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890358, 34.558273, 32.432644>,  <32.180416, 34.761971, 32.247246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890358, 34.558273, 32.432644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073932, -0.726796, -0.682862,
		0.684612, -0.460909, 0.564685,
		-0.725148, -0.509244, 0.463498,
		31.672813, 34.405499, 32.571693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330082, 34.044174, 32.146328>,  <32.180416, 34.761971, 32.247246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330082, 34.044174, 32.146328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938358, 34.032021, 32.226360>,  <31.703323, 34.024731, 32.274380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938358, 34.032021, 32.226360>,  <32.330082, 34.044174, 32.146328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938358, 34.032021, 32.226360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081894, -0.844605, -0.529089,
		0.185063, -0.534527, 0.824641,
		-0.979308, -0.030382, 0.200080,
		31.644566, 34.022907, 32.286385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697651, 33.974514, 31.690588>,  <32.330082, 34.044174, 32.146328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697651, 33.974514, 31.690588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349730, 34.118256, 31.555353>,  <31.140976, 34.204502, 31.474213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349730, 34.118256, 31.555353>,  <31.697651, 33.974514, 31.690588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349730, 34.118256, 31.555353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334923, -0.933200, -0.130245,
		-0.362306, -0.000055, 0.932059,
		-0.869805, 0.359356, -0.338086,
		31.088787, 34.226063, 31.453928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150249, 33.501869, 31.934616>,  <31.697651, 33.974514, 31.690588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150249, 33.501869, 31.934616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984549, 33.697021, 31.627275>,  <30.885128, 33.814114, 31.442871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984549, 33.697021, 31.627275>,  <31.150249, 33.501869, 31.934616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984549, 33.697021, 31.627275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503548, -0.826077, -0.253052,
		-0.758178, 0.282075, 0.587877,
		-0.414252, 0.487883, -0.768352,
		30.860273, 33.843388, 31.396770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725737, 34.138424, 32.133949>,  <31.150249, 33.501869, 31.934616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725737, 34.138424, 32.133949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856192, 34.417591, 32.388992>,  <30.934464, 34.585091, 32.542019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856192, 34.417591, 32.388992>,  <30.725737, 34.138424, 32.133949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856192, 34.417591, 32.388992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283039, -0.571454, 0.770278,
		0.901955, -0.431685, 0.011166,
		0.326136, 0.697917, 0.637610,
		30.954033, 34.626965, 32.580276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498787, 33.779552, 32.823872>,  <30.725737, 34.138424, 32.133949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498787, 33.779552, 32.823872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878046, 33.725273, 32.708912>,  <31.105602, 33.692707, 32.639935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878046, 33.725273, 32.708912>,  <30.498787, 33.779552, 32.823872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878046, 33.725273, 32.708912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265387, 0.835585, 0.481007,
		0.174875, -0.532339, 0.828272,
		0.948150, -0.135697, -0.287399,
		31.162491, 33.684563, 32.622692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008823, 33.656040, 33.333988>,  <30.498787, 33.779552, 32.823872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008823, 33.656040, 33.333988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193966, 33.903492, 33.080040>,  <31.305052, 34.051964, 32.927673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193966, 33.903492, 33.080040>,  <31.008823, 33.656040, 33.333988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193966, 33.903492, 33.080040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134432, 0.658933, 0.740091,
		0.876179, -0.427905, 0.221829,
		0.462859, 0.618632, -0.634868,
		31.332823, 34.089081, 32.889580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684784, 33.829319, 33.779316>,  <31.008823, 33.656040, 33.333988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684784, 33.829319, 33.779316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631437, 34.112335, 33.501724>,  <31.599430, 34.282146, 33.335171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631437, 34.112335, 33.501724>,  <31.684784, 33.829319, 33.779316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631437, 34.112335, 33.501724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367892, 0.685543, 0.628241,
		0.920255, -0.171523, -0.351725,
		-0.133365, 0.707539, -0.693976,
		31.591429, 34.324596, 33.293533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306980, 34.273895, 33.880383>,  <31.684784, 33.829319, 33.779316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306980, 34.273895, 33.880383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019108, 34.473927, 33.687721>,  <31.846386, 34.593945, 33.572124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019108, 34.473927, 33.687721>,  <32.306980, 34.273895, 33.880383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019108, 34.473927, 33.687721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215774, 0.820452, 0.529435,
		0.659928, 0.277095, -0.698365,
		-0.719678, 0.500078, -0.481649,
		31.803204, 34.623951, 33.543228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519100, 33.655743, 33.420952>,  <32.306980, 34.273895, 33.880383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519100, 33.655743, 33.420952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393921, 33.882854, 33.116402>,  <32.318813, 34.019123, 32.933674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393921, 33.882854, 33.116402>,  <32.519100, 33.655743, 33.420952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393921, 33.882854, 33.116402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934247, 0.328364, -0.139138,
		0.171007, -0.754852, -0.633210,
		-0.312952, 0.567781, -0.761371,
		32.300034, 34.053188, 32.887989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844234, 33.506588, 32.836781>,  <32.519100, 33.655743, 33.420952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844234, 33.506588, 32.836781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764336, 33.897335, 32.867317>,  <32.716396, 34.131783, 32.885639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764336, 33.897335, 32.867317>,  <32.844234, 33.506588, 32.836781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764336, 33.897335, 32.867317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978800, 0.202531, -0.030536,
		-0.045292, 0.068627, -0.996614,
		-0.199750, 0.976868, 0.076345,
		32.704411, 34.190395, 32.890221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479492, 33.381630, 32.712852>,  <32.844234, 33.506588, 32.836781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479492, 33.381630, 32.712852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647736, 33.067833, 32.530579>,  <33.748684, 32.879555, 32.421215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647736, 33.067833, 32.530579>,  <33.479492, 33.381630, 32.712852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647736, 33.067833, 32.530579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061586, -0.476431, 0.877052,
		-0.905148, -0.396962, -0.152078,
		0.420611, -0.784497, -0.455688,
		33.773918, 32.832485, 32.393871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160084, 32.861507, 32.997841>,  <33.479492, 33.381630, 32.712852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160084, 32.861507, 32.997841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481739, 32.681763, 32.842178>,  <33.674732, 32.573917, 32.748779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481739, 32.681763, 32.842178>,  <33.160084, 32.861507, 32.997841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481739, 32.681763, 32.842178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037218, -0.615312, 0.787405,
		-0.593279, -0.647664, -0.478070,
		0.804136, -0.449358, -0.389156,
		33.722980, 32.546955, 32.725430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131683, 32.047535, 33.016850>,  <33.160084, 32.861507, 32.997841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131683, 32.047535, 33.016850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519035, 32.145775, 32.999355>,  <33.751446, 32.204720, 32.988857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519035, 32.145775, 32.999355>,  <33.131683, 32.047535, 33.016850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519035, 32.145775, 32.999355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201837, -0.668323, 0.715966,
		0.146614, -0.702157, -0.696764,
		0.968383, 0.245603, -0.043735,
		33.809551, 32.219456, 32.986233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262146, 31.423111, 32.796093>,  <33.131683, 32.047535, 33.016850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262146, 31.423111, 32.796093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539856, 31.634586, 32.991425>,  <33.706482, 31.761473, 33.108624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539856, 31.634586, 32.991425>,  <33.262146, 31.423111, 32.796093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539856, 31.634586, 32.991425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067094, -0.628014, 0.775304,
		0.716576, -0.571038, -0.400542,
		0.694275, 0.528690, 0.488333,
		33.748138, 31.793194, 33.137924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872139, 31.141521, 33.289703>,  <33.262146, 31.423111, 32.796093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872139, 31.141521, 33.289703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152130, 31.426266, 33.266785>,  <34.320126, 31.597113, 33.253033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152130, 31.426266, 33.266785>,  <33.872139, 31.141521, 33.289703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152130, 31.426266, 33.266785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371439, -0.294361, 0.880559,
		0.609966, -0.637659, -0.470460,
		0.699981, 0.711859, -0.057301,
		34.362125, 31.639824, 33.249596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544731, 30.828335, 33.413914>,  <33.872139, 31.141521, 33.289703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544731, 30.828335, 33.413914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537117, 31.213171, 33.522743>,  <34.532551, 31.444073, 33.588039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537117, 31.213171, 33.522743>,  <34.544731, 30.828335, 33.413914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537117, 31.213171, 33.522743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304392, -0.253629, 0.918160,
		0.952357, 0.100293, -0.288025,
		-0.019034, 0.962088, 0.272074,
		34.531406, 31.501797, 33.604366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226021, 30.971054, 33.698330>,  <34.544731, 30.828335, 33.413914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226021, 30.971054, 33.698330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978237, 31.232201, 33.872704>,  <34.829567, 31.388889, 33.977329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978237, 31.232201, 33.872704>,  <35.226021, 30.971054, 33.698330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978237, 31.232201, 33.872704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281194, -0.333933, 0.899677,
		0.732943, 0.679892, 0.023274,
		-0.619455, 0.652867, 0.435936,
		34.792400, 31.428061, 34.003483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556423, 31.507835, 34.146236>,  <35.226021, 30.971054, 33.698330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556423, 31.507835, 34.146236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186806, 31.428534, 34.276974>,  <34.965034, 31.380953, 34.355415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186806, 31.428534, 34.276974>,  <35.556423, 31.507835, 34.146236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186806, 31.428534, 34.276974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360770, -0.169536, 0.917116,
		-0.126411, 0.965377, 0.228184,
		-0.924048, -0.198255, 0.326848,
		34.909592, 31.369057, 34.375027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373363, 32.036297, 34.589481>,  <35.556423, 31.507835, 34.146236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373363, 32.036297, 34.589481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198925, 31.687477, 34.678341>,  <35.094261, 31.478186, 34.731655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198925, 31.687477, 34.678341>,  <35.373363, 32.036297, 34.589481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198925, 31.687477, 34.678341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524320, -0.045597, 0.850300,
		-0.731372, 0.487294, 0.477116,
		-0.436101, -0.872047, 0.222149,
		35.068096, 31.425863, 34.744987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198689, 32.622345, 35.139347>,  <35.373363, 32.036297, 34.589481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198689, 32.622345, 35.139347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524899, 32.789646, 35.299343>,  <35.720623, 32.890026, 35.395340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524899, 32.789646, 35.299343>,  <35.198689, 32.622345, 35.139347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524899, 32.789646, 35.299343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574424, 0.500906, 0.647402,
		0.070421, -0.757733, 0.648754,
		0.815523, 0.418251, 0.399986,
		35.769554, 32.915123, 35.419338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081406, 33.301506, 35.635574>,  <35.198689, 32.622345, 35.139347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081406, 33.301506, 35.635574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913239, 33.023178, 35.868500>,  <34.812340, 32.856182, 36.008255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913239, 33.023178, 35.868500>,  <35.081406, 33.301506, 35.635574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913239, 33.023178, 35.868500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552174, -0.705468, -0.444319,
		0.719967, 0.134738, 0.680804,
		-0.420418, -0.695817, 0.582312,
		34.787113, 32.814434, 36.043194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699768, 33.123917, 35.952774>,  <35.081406, 33.301506, 35.635574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699768, 33.123917, 35.952774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394470, 32.865650, 35.962273>,  <35.211292, 32.710690, 35.967972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394470, 32.865650, 35.962273>,  <35.699768, 33.123917, 35.952774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394470, 32.865650, 35.962273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532854, -0.649827, -0.542025,
		0.365403, -0.401043, 0.840027,
		-0.763248, -0.645669, 0.023751,
		35.165497, 32.671951, 35.969398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997299, 32.336136, 35.982616>,  <35.699768, 33.123917, 35.952774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997299, 32.336136, 35.982616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633854, 32.332264, 35.815601>,  <35.415787, 32.329941, 35.715393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633854, 32.332264, 35.815601>,  <35.997299, 32.336136, 35.982616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633854, 32.332264, 35.815601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320226, -0.657930, -0.681604,
		-0.268113, -0.753017, 0.600900,
		-0.908609, -0.009677, -0.417535,
		35.361271, 32.329361, 35.690342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742470, 31.615927, 36.318325>,  <35.997299, 32.336136, 35.982616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742470, 31.615927, 36.318325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449345, 31.375853, 36.446548>,  <35.273468, 31.231808, 36.523483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449345, 31.375853, 36.446548>,  <35.742470, 31.615927, 36.318325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449345, 31.375853, 36.446548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572884, 0.290038, -0.766604,
		0.367131, -0.745423, -0.556381,
		-0.732815, -0.600186, 0.320559,
		35.229500, 31.195797, 36.542717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620373, 30.942520, 35.875092>,  <35.742470, 31.615927, 36.318325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620373, 30.942520, 35.875092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266697, 31.058847, 36.021313>,  <35.054489, 31.128643, 36.109047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266697, 31.058847, 36.021313>,  <35.620373, 30.942520, 35.875092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266697, 31.058847, 36.021313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331077, 0.161903, -0.929610,
		-0.329532, -0.942980, -0.046870,
		-0.884192, 0.290819, 0.365551,
		35.001438, 31.146093, 36.130978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190979, 30.836864, 35.418709>,  <35.620373, 30.942520, 35.875092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190979, 30.836864, 35.418709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956577, 31.087603, 35.624104>,  <34.815937, 31.238045, 35.747341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956577, 31.087603, 35.624104>,  <35.190979, 30.836864, 35.418709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956577, 31.087603, 35.624104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443700, 0.282027, -0.850642,
		-0.678038, -0.726310, 0.112863,
		-0.585999, 0.626845, 0.513489,
		34.780777, 31.275656, 35.778149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740162, 30.525873, 34.962170>,  <35.190979, 30.836864, 35.418709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740162, 30.525873, 34.962170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678101, 30.864668, 35.165558>,  <34.640862, 31.067945, 35.287590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678101, 30.864668, 35.165558>,  <34.740162, 30.525873, 34.962170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678101, 30.864668, 35.165558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313847, 0.445772, -0.838324,
		-0.936711, -0.289652, 0.196661,
		-0.155156, 0.846988, 0.508466,
		34.631554, 31.118765, 35.318096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017632, 30.844982, 34.859489>,  <34.740162, 30.525873, 34.962170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017632, 30.844982, 34.859489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310829, 31.110798, 34.917606>,  <34.486748, 31.270287, 34.952477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310829, 31.110798, 34.917606>,  <34.017632, 30.844982, 34.859489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310829, 31.110798, 34.917606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228965, 0.442152, -0.867224,
		-0.640543, 0.602404, 0.476251,
		0.732994, 0.664539, 0.145288,
		34.530727, 31.310160, 34.961193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742966, 31.569172, 34.690018>,  <34.017632, 30.844982, 34.859489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742966, 31.569172, 34.690018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135239, 31.547293, 34.614887>,  <34.370602, 31.534166, 34.569809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135239, 31.547293, 34.614887>,  <33.742966, 31.569172, 34.690018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135239, 31.547293, 34.614887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115565, 0.612708, -0.781814,
		0.157844, 0.788414, 0.594549,
		0.980678, -0.054696, -0.187825,
		34.429443, 31.530884, 34.558540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999504, 32.278801, 34.575516>,  <33.742966, 31.569172, 34.690018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999504, 32.278801, 34.575516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220200, 31.991529, 34.405907>,  <34.352619, 31.819166, 34.304142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220200, 31.991529, 34.405907>,  <33.999504, 32.278801, 34.575516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220200, 31.991529, 34.405907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202727, 0.377681, -0.903471,
		0.809002, 0.584443, 0.062787,
		0.551741, -0.718181, -0.424027,
		34.385723, 31.776075, 34.278698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248665, 32.665157, 34.009323>,  <33.999504, 32.278801, 34.575516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248665, 32.665157, 34.009323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335526, 32.291271, 33.896786>,  <34.387642, 32.066940, 33.829262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335526, 32.291271, 33.896786>,  <34.248665, 32.665157, 34.009323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335526, 32.291271, 33.896786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175358, 0.246178, -0.953229,
		0.960258, 0.256332, -0.110451,
		0.217153, -0.934714, -0.281344,
		34.400673, 32.010857, 33.812382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824604, 32.679043, 33.471691>,  <34.248665, 32.665157, 34.009323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824604, 32.679043, 33.471691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585979, 32.367332, 33.394913>,  <34.442806, 32.180305, 33.348846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585979, 32.367332, 33.394913>,  <34.824604, 32.679043, 33.471691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585979, 32.367332, 33.394913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021311, 0.254465, -0.966847,
		0.802288, -0.572688, -0.168410,
		-0.596557, -0.779279, -0.191950,
		34.407013, 32.133549, 33.337326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089474, 32.237690, 32.917599>,  <34.824604, 32.679043, 33.471691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089474, 32.237690, 32.917599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690552, 32.264866, 32.928711>,  <34.451199, 32.281170, 32.935379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690552, 32.264866, 32.928711>,  <35.089474, 32.237690, 32.917599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690552, 32.264866, 32.928711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011228, 0.232845, -0.972449,
		-0.072538, -0.970138, -0.231454,
		-0.997303, 0.067941, 0.027783,
		34.391361, 32.285248, 32.937046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814255, 32.066830, 32.186218>,  <35.089474, 32.237690, 32.917599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814255, 32.066830, 32.186218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477951, 32.202869, 32.354721>,  <34.276169, 32.284492, 32.455822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477951, 32.202869, 32.354721>,  <34.814255, 32.066830, 32.186218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477951, 32.202869, 32.354721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337173, 0.279858, -0.898885,
		-0.423604, -0.897781, -0.120620,
		-0.840758, 0.340101, 0.421257,
		34.225723, 32.304901, 32.481098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296600, 31.832172, 31.750076>,  <34.814255, 32.066830, 32.186218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296600, 31.832172, 31.750076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127823, 32.133682, 31.951584>,  <34.026558, 32.314587, 32.072491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127823, 32.133682, 31.951584>,  <34.296600, 31.832172, 31.750076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127823, 32.133682, 31.951584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242826, 0.441397, -0.863831,
		-0.873498, -0.486817, -0.003209,
		-0.421944, 0.753776, 0.503771,
		34.001240, 32.359814, 32.102715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583187, 31.933207, 31.665651>,  <34.296600, 31.832172, 31.750076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583187, 31.933207, 31.665651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740021, 32.298439, 31.710464>,  <33.834122, 32.517578, 31.737352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740021, 32.298439, 31.710464>,  <33.583187, 31.933207, 31.665651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740021, 32.298439, 31.710464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283448, 0.235770, -0.929554,
		-0.875173, 0.332707, 0.351253,
		0.392084, 0.913082, 0.112035,
		33.857647, 32.572365, 31.744076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016186, 32.364632, 31.401405>,  <33.583187, 31.933207, 31.665651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016186, 32.364632, 31.401405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367420, 32.553173, 31.368425>,  <33.578159, 32.666298, 31.348637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367420, 32.553173, 31.368425>,  <33.016186, 32.364632, 31.401405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367420, 32.553173, 31.368425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292278, 0.391886, -0.872353,
		-0.378876, 0.790095, 0.481874,
		0.878082, 0.471354, -0.082451,
		33.630844, 32.694580, 31.343691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811050, 33.023335, 31.220242>,  <33.016186, 32.364632, 31.401405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811050, 33.023335, 31.220242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193150, 33.006088, 31.103182>,  <33.422409, 32.995739, 31.032946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193150, 33.006088, 31.103182>,  <32.811050, 33.023335, 31.220242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193150, 33.006088, 31.103182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227325, 0.526014, -0.819532,
		0.189274, 0.849382, 0.492671,
		0.955248, -0.043120, -0.292647,
		33.479725, 32.993153, 31.015388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974625, 33.694260, 31.071507>,  <32.811050, 33.023335, 31.220242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974625, 33.694260, 31.071507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250397, 33.471241, 30.886541>,  <33.415859, 33.337429, 30.775562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250397, 33.471241, 30.886541>,  <32.974625, 33.694260, 31.071507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250397, 33.471241, 30.886541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092627, 0.565282, -0.819681,
		0.718408, 0.607943, 0.338076,
		0.689427, -0.557551, -0.462415,
		33.457226, 33.303974, 30.747816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424538, 34.189663, 30.717596>,  <32.974625, 33.694260, 31.071507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424538, 34.189663, 30.717596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456814, 33.846157, 30.515205>,  <33.476181, 33.640053, 30.393770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456814, 33.846157, 30.515205>,  <33.424538, 34.189663, 30.717596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456814, 33.846157, 30.515205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011226, 0.508383, -0.861058,
		0.996676, 0.063798, 0.050662,
		0.080690, -0.858764, -0.505977,
		33.481022, 33.588528, 30.363413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944897, 34.310780, 30.328129>,  <33.424538, 34.189663, 30.717596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944897, 34.310780, 30.328129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741756, 34.017822, 30.146719>,  <33.619873, 33.842049, 30.037874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741756, 34.017822, 30.146719>,  <33.944897, 34.310780, 30.328129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741756, 34.017822, 30.146719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111953, 0.465890, -0.877731,
		0.854138, -0.496532, -0.154610,
		-0.507853, -0.732395, -0.453523,
		33.589401, 33.798103, 30.010662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287949, 34.134457, 29.757303>,  <33.944897, 34.310780, 30.328129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287949, 34.134457, 29.757303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918663, 34.005306, 29.673952>,  <33.697090, 33.927814, 29.623941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918663, 34.005306, 29.673952>,  <34.287949, 34.134457, 29.757303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918663, 34.005306, 29.673952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021340, 0.498341, -0.866719,
		0.383688, -0.804615, -0.453186,
		-0.923216, -0.322879, -0.208378,
		33.641697, 33.908443, 29.611439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352749, 33.983955, 29.040503>,  <34.287949, 34.134457, 29.757303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352749, 33.983955, 29.040503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960041, 34.010277, 29.111835>,  <33.724419, 34.026070, 29.154634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960041, 34.010277, 29.111835>,  <34.352749, 33.983955, 29.040503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960041, 34.010277, 29.111835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112458, 0.555274, -0.824029,
		-0.153250, -0.829060, -0.537750,
		-0.981767, 0.065808, 0.178330,
		33.665512, 34.030018, 29.165335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069267, 33.779926, 28.408262>,  <34.352749, 33.983955, 29.040503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069267, 33.779926, 28.408262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803444, 33.997169, 28.613550>,  <33.643948, 34.127514, 28.736723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803444, 33.997169, 28.613550>,  <34.069267, 33.779926, 28.408262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803444, 33.997169, 28.613550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091522, 0.622496, -0.777253,
		-0.741608, -0.563503, -0.363981,
		-0.664561, 0.543105, 0.513221,
		33.604076, 34.160099, 28.767517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471825, 33.857063, 27.953180>,  <34.069267, 33.779926, 28.408262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471825, 33.857063, 27.953180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456165, 34.157677, 28.216591>,  <33.446770, 34.338047, 28.374638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456165, 34.157677, 28.216591>,  <33.471825, 33.857063, 27.953180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456165, 34.157677, 28.216591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091601, 0.653558, -0.751313,
		-0.995026, -0.089738, 0.043253,
		-0.039153, 0.751538, 0.658528,
		33.444420, 34.383137, 28.414148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949276, 34.336033, 27.685349>,  <33.471825, 33.857063, 27.953180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949276, 34.336033, 27.685349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144958, 34.567520, 27.946350>,  <33.262367, 34.706413, 28.102951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144958, 34.567520, 27.946350>,  <32.949276, 34.336033, 27.685349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144958, 34.567520, 27.946350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103339, 0.781331, -0.615503,
		-0.866024, 0.233679, 0.442037,
		0.489207, 0.578720, 0.652503,
		33.291721, 34.741135, 28.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506096, 34.952435, 27.876560>,  <32.949276, 34.336033, 27.685349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506096, 34.952435, 27.876560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880779, 35.054260, 27.972712>,  <33.105587, 35.115356, 28.030403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880779, 35.054260, 27.972712>,  <32.506096, 34.952435, 27.876560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880779, 35.054260, 27.972712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003956, 0.694209, -0.719763,
		-0.350101, 0.673254, 0.651275,
		0.936704, 0.254566, 0.240379,
		33.161789, 35.130630, 28.044825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657413, 35.714939, 28.202517>,  <32.506096, 34.952435, 27.876560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657413, 35.714939, 28.202517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959274, 35.567223, 27.985584>,  <33.140392, 35.478592, 27.855425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959274, 35.567223, 27.985584>,  <32.657413, 35.714939, 28.202517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959274, 35.567223, 27.985584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001726, 0.825446, -0.564478,
		0.656122, 0.426921, 0.622287,
		0.754653, -0.369293, -0.542331,
		33.185669, 35.456436, 27.822886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059254, 36.265625, 28.108870>,  <32.657413, 35.714939, 28.202517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059254, 36.265625, 28.108870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175823, 36.012356, 27.822050>,  <33.245766, 35.860394, 27.649960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175823, 36.012356, 27.822050>,  <33.059254, 36.265625, 28.108870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175823, 36.012356, 27.822050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114319, 0.767265, -0.631059,
		0.949737, 0.101936, 0.295987,
		0.291428, -0.633177, -0.717047,
		33.263252, 35.822403, 27.606936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747841, 36.477676, 27.870480>,  <33.059254, 36.265625, 28.108870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747841, 36.477676, 27.870480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576214, 36.249630, 27.590231>,  <33.473236, 36.112801, 27.422083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576214, 36.249630, 27.590231>,  <33.747841, 36.477676, 27.870480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576214, 36.249630, 27.590231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010451, 0.778728, -0.627274,
		0.903211, -0.261821, -0.340087,
		-0.429069, -0.570115, -0.700620,
		33.447495, 36.078594, 27.380045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877121, 36.746262, 27.229593>,  <33.747841, 36.477676, 27.870480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877121, 36.746262, 27.229593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574306, 36.517029, 27.104065>,  <33.392620, 36.379490, 27.028748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574306, 36.517029, 27.104065>,  <33.877121, 36.746262, 27.229593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574306, 36.517029, 27.104065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243064, 0.692849, -0.678881,
		0.606483, -0.437657, -0.663804,
		-0.757033, -0.573077, -0.313822,
		33.347198, 36.345104, 27.009918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878582, 36.787395, 26.406887>,  <33.877121, 36.746262, 27.229593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878582, 36.787395, 26.406887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514317, 36.643295, 26.487797>,  <33.295757, 36.556835, 26.536343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514317, 36.643295, 26.487797>,  <33.878582, 36.787395, 26.406887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514317, 36.643295, 26.487797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397608, 0.631136, -0.666014,
		0.112269, -0.686940, -0.717990,
		-0.910661, -0.360252, 0.202276,
		33.241119, 36.535221, 26.548479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654018, 36.585110, 25.722878>,  <33.878582, 36.787395, 26.406887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654018, 36.585110, 25.722878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326424, 36.644951, 25.944468>,  <33.129868, 36.680855, 26.077421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326424, 36.644951, 25.944468>,  <33.654018, 36.585110, 25.722878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326424, 36.644951, 25.944468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336073, 0.657454, -0.674396,
		-0.465105, -0.738494, -0.488165,
		-0.818982, 0.149606, 0.553973,
		33.080730, 36.689831, 26.110659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966286, 36.529156, 25.386992>,  <33.654018, 36.585110, 25.722878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966286, 36.529156, 25.386992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891541, 36.773701, 25.694582>,  <32.846695, 36.920425, 25.879135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891541, 36.773701, 25.694582>,  <32.966286, 36.529156, 25.386992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891541, 36.773701, 25.694582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384848, 0.674642, -0.629881,
		-0.903866, -0.413640, 0.109214,
		-0.186863, 0.611359, 0.768975,
		32.835480, 36.957108, 25.925274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303410, 36.787083, 25.278383>,  <32.966286, 36.529156, 25.386992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303410, 36.787083, 25.278383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502113, 37.038052, 25.518240>,  <32.621338, 37.188633, 25.662153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502113, 37.038052, 25.518240>,  <32.303410, 36.787083, 25.278383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502113, 37.038052, 25.518240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230303, 0.761449, -0.605935,
		-0.836771, 0.162907, 0.522757,
		0.496764, 0.627421, 0.599640,
		32.651142, 37.226276, 25.698132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739569, 37.298794, 25.458103>,  <32.303410, 36.787083, 25.278383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739569, 37.298794, 25.458103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104919, 37.444653, 25.530519>,  <32.324131, 37.532169, 25.573969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104919, 37.444653, 25.530519>,  <31.739569, 37.298794, 25.458103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104919, 37.444653, 25.530519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207233, 0.799203, -0.564207,
		-0.350425, 0.477816, 0.805540,
		0.913377, 0.364647, 0.181041,
		32.378933, 37.554047, 25.584831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563011, 37.946350, 25.663540>,  <31.739569, 37.298794, 25.458103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563011, 37.946350, 25.663540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948729, 37.929729, 25.558920>,  <32.180161, 37.919758, 25.496147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948729, 37.929729, 25.558920>,  <31.563011, 37.946350, 25.663540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948729, 37.929729, 25.558920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156315, 0.707919, -0.688779,
		0.213778, 0.705070, 0.676147,
		0.964295, -0.041554, -0.261551,
		32.238018, 37.917263, 25.480455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710735, 38.673176, 25.647409>,  <31.563011, 37.946350, 25.663540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710735, 38.673176, 25.647409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009224, 38.484753, 25.459257>,  <32.188316, 38.371700, 25.346365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009224, 38.484753, 25.459257>,  <31.710735, 38.673176, 25.647409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009224, 38.484753, 25.459257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011664, 0.697241, -0.716742,
		0.665593, 0.540336, 0.514803,
		0.746224, -0.471054, -0.470381,
		32.233089, 38.343437, 25.318142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232948, 39.228600, 25.596682>,  <31.710735, 38.673176, 25.647409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232948, 39.228600, 25.596682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283356, 38.933735, 25.331139>,  <32.313599, 38.756817, 25.171812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283356, 38.933735, 25.331139>,  <32.232948, 39.228600, 25.596682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283356, 38.933735, 25.331139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028859, 0.671633, -0.740322,
		0.991608, 0.074133, 0.105909,
		0.126015, -0.737166, -0.663858,
		32.321159, 38.712585, 25.131981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726189, 39.473106, 25.189905>,  <32.232948, 39.228600, 25.596682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726189, 39.473106, 25.189905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592808, 39.184628, 24.947027>,  <32.512779, 39.011539, 24.801300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592808, 39.184628, 24.947027>,  <32.726189, 39.473106, 25.189905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592808, 39.184628, 24.947027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042415, 0.654880, -0.754541,
		0.941811, -0.225851, -0.248963,
		-0.333455, -0.721195, -0.607194,
		32.492771, 38.968269, 24.764870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176014, 39.358105, 24.639269>,  <32.726189, 39.473106, 25.189905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176014, 39.358105, 24.639269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814194, 39.238342, 24.517851>,  <32.597099, 39.166485, 24.445000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814194, 39.238342, 24.517851>,  <33.176014, 39.358105, 24.639269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814194, 39.238342, 24.517851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161409, 0.418482, -0.893767,
		0.394623, -0.857457, -0.330214,
		-0.904555, -0.299401, -0.303544,
		32.542828, 39.148521, 24.426786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224941, 39.041256, 23.885977>,  <33.176014, 39.358105, 24.639269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224941, 39.041256, 23.885977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835484, 39.123833, 23.924772>,  <32.601810, 39.173378, 23.948050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835484, 39.123833, 23.924772>,  <33.224941, 39.041256, 23.885977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835484, 39.123833, 23.924772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046096, 0.238354, -0.970084,
		-0.223381, -0.948984, -0.222555,
		-0.973641, 0.206440, 0.096988,
		32.543392, 39.185764, 23.953869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841709, 38.702156, 23.344154>,  <33.224941, 39.041256, 23.885977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841709, 38.702156, 23.344154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608837, 39.004982, 23.462755>,  <32.469112, 39.186676, 23.533916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608837, 39.004982, 23.462755>,  <32.841709, 38.702156, 23.344154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608837, 39.004982, 23.462755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009938, 0.358022, -0.933660,
		-0.812996, -0.546509, -0.200912,
		-0.582184, 0.757066, 0.296502,
		32.434181, 39.232101, 23.551706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226826, 38.739979, 22.892479>,  <32.841709, 38.702156, 23.344154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226826, 38.739979, 22.892479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223106, 39.110527, 23.043079>,  <32.220875, 39.332855, 23.133440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223106, 39.110527, 23.043079>,  <32.226826, 38.739979, 22.892479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223106, 39.110527, 23.043079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017616, 0.376308, -0.926327,
		-0.999802, -0.015248, 0.012819,
		-0.009301, 0.926369, 0.376502,
		32.220318, 39.388439, 23.156031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884525, 39.156166, 22.281771>,  <32.226826, 38.739979, 22.892479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884525, 39.156166, 22.281771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039524, 39.406517, 22.552509>,  <32.132523, 39.556728, 22.714952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039524, 39.406517, 22.552509>,  <31.884525, 39.156166, 22.281771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039524, 39.406517, 22.552509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185346, 0.772113, -0.607856,
		-0.903046, 0.110092, 0.415196,
		0.387498, 0.625877, 0.676848,
		32.155773, 39.594280, 22.755564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411219, 39.738400, 22.360737>,  <31.884525, 39.156166, 22.281771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411219, 39.738400, 22.360737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796526, 39.831409, 22.414473>,  <32.027710, 39.887215, 22.446714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796526, 39.831409, 22.414473>,  <31.411219, 39.738400, 22.360737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796526, 39.831409, 22.414473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075324, 0.714126, -0.695953,
		-0.257758, 0.660271, 0.705410,
		0.963269, 0.232522, 0.134338,
		32.085506, 39.901165, 22.454773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452780, 40.433880, 22.161646>,  <31.411219, 39.738400, 22.360737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452780, 40.433880, 22.161646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846323, 40.365383, 22.182440>,  <32.082447, 40.324284, 22.194916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846323, 40.365383, 22.182440>,  <31.452780, 40.433880, 22.161646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846323, 40.365383, 22.182440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169503, 0.798508, -0.577628,
		0.057402, 0.577115, 0.814643,
		0.983856, -0.171242, 0.051987,
		32.141479, 40.314011, 22.198036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671761, 41.047512, 22.048143>,  <31.452780, 40.433880, 22.161646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671761, 41.047512, 22.048143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022846, 40.856178, 22.059528>,  <32.233498, 40.741379, 22.066359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022846, 40.856178, 22.059528>,  <31.671761, 41.047512, 22.048143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022846, 40.856178, 22.059528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471929, 0.852605, -0.224382,
		0.083063, 0.210376, 0.974085,
		0.877715, -0.478337, 0.028463,
		32.286160, 40.712677, 22.068068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073147, 41.360836, 22.501623>,  <31.671761, 41.047512, 22.048143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073147, 41.360836, 22.501623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290802, 41.199272, 22.207474>,  <32.421394, 41.102333, 22.030985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290802, 41.199272, 22.207474>,  <32.073147, 41.360836, 22.501623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290802, 41.199272, 22.207474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155626, 0.909871, -0.384599,
		0.824438, 0.094831, 0.557950,
		0.544134, -0.403910, -0.735374,
		32.454041, 41.078098, 21.986862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652283, 41.897472, 22.346781>,  <32.073147, 41.360836, 22.501623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652283, 41.897472, 22.346781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660156, 41.659805, 22.025141>,  <32.664879, 41.517204, 21.832157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660156, 41.659805, 22.025141>,  <32.652283, 41.897472, 22.346781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660156, 41.659805, 22.025141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030716, 0.803515, -0.594492,
		0.999334, 0.036398, -0.002438,
		0.019679, -0.594171, -0.804098,
		32.666061, 41.481556, 21.783911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212650, 42.138790, 21.932848>,  <32.652283, 41.897472, 22.346781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212650, 42.138790, 21.932848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952213, 41.964439, 21.684303>,  <32.795952, 41.859829, 21.535177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952213, 41.964439, 21.684303>,  <33.212650, 42.138790, 21.932848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952213, 41.964439, 21.684303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033516, 0.801348, -0.597260,
		0.758258, -0.409697, -0.507143,
		-0.651093, -0.435879, -0.621359,
		32.756886, 41.833675, 21.497894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397972, 42.331627, 21.198458>,  <33.212650, 42.138790, 21.932848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397972, 42.331627, 21.198458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031452, 42.175301, 21.163456>,  <32.811539, 42.081505, 21.142454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031452, 42.175301, 21.163456>,  <33.397972, 42.331627, 21.198458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031452, 42.175301, 21.163456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177593, 0.592349, -0.785865,
		0.358959, -0.704549, -0.612176,
		-0.916302, -0.390811, -0.087506,
		32.756561, 42.058056, 21.137203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373043, 41.933895, 20.571466>,  <33.397972, 42.331627, 21.198458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373043, 41.933895, 20.571466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006195, 42.041718, 20.688929>,  <32.786087, 42.106411, 20.759405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006195, 42.041718, 20.688929>,  <33.373043, 41.933895, 20.571466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006195, 42.041718, 20.688929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089247, 0.579132, -0.810334,
		-0.388497, -0.769379, -0.507075,
		-0.917118, 0.269558, 0.293656,
		32.731060, 42.122585, 20.777025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927223, 41.896362, 19.994133>,  <33.373043, 41.933895, 20.571466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927223, 41.896362, 19.994133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770660, 42.137566, 20.272179>,  <32.676723, 42.282288, 20.439005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770660, 42.137566, 20.272179>,  <32.927223, 41.896362, 19.994133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770660, 42.137566, 20.272179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282097, 0.640382, -0.714375,
		-0.875912, -0.475701, -0.080544,
		-0.391408, 0.603008, 0.695112,
		32.653236, 42.318466, 20.480713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243301, 42.049755, 19.710579>,  <32.927223, 41.896362, 19.994133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243301, 42.049755, 19.710579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331272, 42.341190, 19.970055>,  <32.384052, 42.516052, 20.125740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331272, 42.341190, 19.970055>,  <32.243301, 42.049755, 19.710579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331272, 42.341190, 19.970055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226999, 0.684936, -0.692339,
		-0.948739, 0.005010, 0.316022,
		0.219924, 0.728586, 0.648688,
		32.397251, 42.559765, 20.164661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762251, 42.535244, 19.610897>,  <32.243301, 42.049755, 19.710579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762251, 42.535244, 19.610897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020210, 42.751778, 19.826700>,  <32.174988, 42.881699, 19.956182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020210, 42.751778, 19.826700>,  <31.762251, 42.535244, 19.610897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020210, 42.751778, 19.826700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202910, 0.801853, -0.562014,
		-0.736840, 0.252970, 0.626955,
		0.644898, 0.541330, 0.539507,
		32.213680, 42.914177, 19.988552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455153, 43.195499, 19.858421>,  <31.762251, 42.535244, 19.610897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455153, 43.195499, 19.858421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851759, 43.227188, 19.817209>,  <32.089722, 43.246201, 19.792482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851759, 43.227188, 19.817209>,  <31.455153, 43.195499, 19.858421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851759, 43.227188, 19.817209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124905, 0.799987, -0.586872,
		0.035927, 0.594763, 0.803098,
		0.991518, 0.079226, -0.103030,
		32.149216, 43.250957, 19.786301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672066, 43.941196, 19.791094>,  <31.455153, 43.195499, 19.858421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672066, 43.941196, 19.791094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949732, 43.719921, 19.606871>,  <32.116333, 43.587154, 19.496338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949732, 43.719921, 19.606871>,  <31.672066, 43.941196, 19.791094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949732, 43.719921, 19.606871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034814, 0.613276, -0.789101,
		0.718973, 0.563800, 0.406456,
		0.694165, -0.553193, -0.460557,
		32.157982, 43.553963, 19.468704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287971, 44.320927, 19.556282>,  <31.672066, 43.941196, 19.791094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287971, 44.320927, 19.556282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287487, 44.018097, 19.294949>,  <32.287197, 43.836399, 19.138149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287487, 44.018097, 19.294949>,  <32.287971, 44.320927, 19.556282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287487, 44.018097, 19.294949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004292, 0.653323, -0.757068,
		0.999990, -0.003719, 0.002460,
		-0.001209, -0.757070, -0.653332,
		32.287125, 43.790977, 19.098949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850021, 44.124657, 19.183064>,  <32.287971, 44.320927, 19.556282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850021, 44.124657, 19.183064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525013, 44.102982, 18.950899>,  <32.330009, 44.089977, 18.811600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525013, 44.102982, 18.950899>,  <32.850021, 44.124657, 19.183064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525013, 44.102982, 18.950899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448277, 0.578398, -0.681545,
		0.372640, -0.813953, -0.445668,
		-0.812519, -0.054188, -0.580410,
		32.281258, 44.086723, 18.776775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998295, 43.494633, 18.849766>,  <32.850021, 44.124657, 19.183064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998295, 43.494633, 18.849766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799801, 43.593689, 19.182615>,  <32.680706, 43.653122, 19.382324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799801, 43.593689, 19.182615>,  <32.998295, 43.494633, 18.849766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799801, 43.593689, 19.182615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179519, -0.908476, 0.377417,
		0.849425, 0.336670, 0.406363,
		-0.496236, 0.247637, 0.832121,
		32.650928, 43.667980, 19.432251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475330, 43.441826, 19.489256>,  <32.998295, 43.494633, 18.849766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475330, 43.441826, 19.489256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084789, 43.410473, 19.569855>,  <32.850464, 43.391663, 19.618214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084789, 43.410473, 19.569855>,  <33.475330, 43.441826, 19.489256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084789, 43.410473, 19.569855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175992, -0.829472, 0.530098,
		0.125584, 0.553021, 0.823648,
		-0.976348, -0.078383, 0.201496,
		32.791885, 43.386959, 19.630304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743988, 44.203083, 19.352072>,  <33.475330, 43.441826, 19.489256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743988, 44.203083, 19.352072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860863, 44.565147, 19.228586>,  <33.930988, 44.782387, 19.154495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860863, 44.565147, 19.228586>,  <33.743988, 44.203083, 19.352072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860863, 44.565147, 19.228586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068765, 0.341851, 0.937235,
		0.953885, -0.252622, 0.162129,
		0.292190, 0.905163, -0.308715,
		33.948521, 44.836697, 19.135971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262608, 44.420307, 19.803049>,  <33.743988, 44.203083, 19.352072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262608, 44.420307, 19.803049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071941, 44.746357, 19.671373>,  <33.957542, 44.941986, 19.592367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071941, 44.746357, 19.671373>,  <34.262608, 44.420307, 19.803049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071941, 44.746357, 19.671373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161909, 0.286661, 0.944252,
		0.864045, 0.503393, -0.004666,
		-0.476667, 0.815120, -0.329192,
		33.928940, 44.990894, 19.572617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402454, 44.957737, 20.229115>,  <34.262608, 44.420307, 19.803049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402454, 44.957737, 20.229115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021484, 44.994396, 20.112852>,  <33.792900, 45.016392, 20.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021484, 44.994396, 20.112852>,  <34.402454, 44.957737, 20.229115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021484, 44.994396, 20.112852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287101, 0.050153, 0.956586,
		0.102242, 0.994528, -0.021456,
		-0.952428, 0.091644, -0.290657,
		33.735756, 45.021889, 20.025656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000652, 45.609280, 20.493156>,  <34.402454, 44.957737, 20.229115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000652, 45.609280, 20.493156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741241, 45.307262, 20.454531>,  <33.585594, 45.126053, 20.431356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741241, 45.307262, 20.454531>,  <34.000652, 45.609280, 20.493156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741241, 45.307262, 20.454531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160435, 0.011576, 0.986979,
		-0.744096, 0.655570, -0.128643,
		-0.648523, -0.755046, -0.096562,
		33.546684, 45.080750, 20.425562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377373, 45.816570, 20.797037>,  <34.000652, 45.609280, 20.493156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377373, 45.816570, 20.797037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418400, 45.418842, 20.808447>,  <33.443016, 45.180206, 20.815292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418400, 45.418842, 20.808447>,  <33.377373, 45.816570, 20.797037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418400, 45.418842, 20.808447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091352, 0.037969, 0.995095,
		-0.990522, -0.099460, 0.094727,
		0.102568, -0.994317, 0.028523,
		33.449169, 45.120548, 20.817003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274414, 45.608864, 21.517673>,  <33.377373, 45.816570, 20.797037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274414, 45.608864, 21.517673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467583, 45.294872, 21.362448>,  <33.583485, 45.106476, 21.269312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467583, 45.294872, 21.362448>,  <33.274414, 45.608864, 21.517673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467583, 45.294872, 21.362448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003497, -0.441434, 0.897287,
		-0.875659, -0.434672, -0.210431,
		0.482917, -0.784982, -0.388066,
		33.612457, 45.059380, 21.246029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953907, 44.924255, 21.779087>,  <33.274414, 45.608864, 21.517673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953907, 44.924255, 21.779087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305988, 44.807804, 21.629162>,  <33.517239, 44.737934, 21.539206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305988, 44.807804, 21.629162>,  <32.953907, 44.924255, 21.779087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305988, 44.807804, 21.629162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125853, -0.618297, 0.775803,
		-0.457608, -0.730035, -0.507587,
		0.880202, -0.291132, -0.374815,
		33.570049, 44.720463, 21.516718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976730, 44.138596, 21.750408>,  <32.953907, 44.924255, 21.779087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976730, 44.138596, 21.750408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352810, 44.274830, 21.752604>,  <33.578457, 44.356571, 21.753920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352810, 44.274830, 21.752604>,  <32.976730, 44.138596, 21.750408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352810, 44.274830, 21.752604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245663, -0.689142, 0.681714,
		0.235964, -0.639597, -0.731599,
		0.940197, 0.340586, 0.005487,
		33.634869, 44.377007, 21.754250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479221, 43.556778, 21.655956>,  <32.976730, 44.138596, 21.750408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479221, 43.556778, 21.655956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721432, 43.821190, 21.833214>,  <33.866760, 43.979836, 21.939568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721432, 43.821190, 21.833214>,  <33.479221, 43.556778, 21.655956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721432, 43.821190, 21.833214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283956, -0.699647, 0.655640,
		0.743440, -0.271176, -0.611359,
		0.605529, 0.661028, 0.443144,
		33.903091, 44.019497, 21.966156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078518, 43.239967, 21.915165>,  <33.479221, 43.556778, 21.655956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078518, 43.239967, 21.915165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101307, 43.578671, 22.126734>,  <34.114983, 43.781891, 22.253675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101307, 43.578671, 22.126734>,  <34.078518, 43.239967, 21.915165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101307, 43.578671, 22.126734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487541, -0.485916, 0.725389,
		0.871239, 0.216541, -0.440514,
		0.056976, 0.846756, 0.528921,
		34.118401, 43.832699, 22.285410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683750, 43.118862, 22.241280>,  <34.078518, 43.239967, 21.915165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683750, 43.118862, 22.241280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494736, 43.412163, 22.436850>,  <34.381329, 43.588142, 22.554192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494736, 43.412163, 22.436850>,  <34.683750, 43.118862, 22.241280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494736, 43.412163, 22.436850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396081, -0.318893, 0.861062,
		0.787292, 0.600537, -0.139739,
		-0.472538, 0.733255, 0.488923,
		34.352974, 43.632137, 22.583527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094135, 43.133430, 22.832613>,  <34.683750, 43.118862, 22.241280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094135, 43.133430, 22.832613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760273, 43.333286, 22.925308>,  <34.559956, 43.453201, 22.980925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760273, 43.333286, 22.925308>,  <35.094135, 43.133430, 22.832613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760273, 43.333286, 22.925308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030733, -0.377849, 0.925357,
		0.549911, 0.779478, 0.300020,
		-0.834658, 0.499643, 0.231739,
		34.509876, 43.483181, 22.994829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228882, 43.396881, 23.556999>,  <35.094135, 43.133430, 22.832613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228882, 43.396881, 23.556999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834053, 43.391499, 23.493120>,  <34.597157, 43.388271, 23.454794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834053, 43.391499, 23.493120>,  <35.228882, 43.396881, 23.556999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834053, 43.391499, 23.493120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144501, -0.356218, 0.923162,
		-0.069306, 0.934306, 0.349670,
		-0.987074, -0.013453, -0.159696,
		34.537930, 43.387463, 23.445211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052917, 43.639790, 24.149645>,  <35.228882, 43.396881, 23.556999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052917, 43.639790, 24.149645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740673, 43.438526, 24.001331>,  <34.553326, 43.317768, 23.912344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740673, 43.438526, 24.001331>,  <35.052917, 43.639790, 24.149645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740673, 43.438526, 24.001331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114185, -0.468448, 0.876081,
		-0.614498, 0.726217, 0.308223,
		-0.780612, -0.503155, -0.370783,
		34.506489, 43.287579, 23.890097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559010, 43.560627, 24.700533>,  <35.052917, 43.639790, 24.149645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559010, 43.560627, 24.700533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444035, 43.283089, 24.436426>,  <34.375050, 43.116566, 24.277962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444035, 43.283089, 24.436426>,  <34.559010, 43.560627, 24.700533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444035, 43.283089, 24.436426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349611, -0.565787, 0.746764,
		-0.891712, 0.445486, -0.079948,
		-0.287439, -0.693850, -0.660266,
		34.357803, 43.074932, 24.238346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827751, 43.296997, 24.839758>,  <34.559010, 43.560627, 24.700533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827751, 43.296997, 24.839758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024860, 43.006832, 24.647528>,  <34.143124, 42.832733, 24.532190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024860, 43.006832, 24.647528>,  <33.827751, 43.296997, 24.839758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024860, 43.006832, 24.647528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219429, -0.638027, 0.738087,
		-0.842039, -0.258254, -0.473577,
		0.492769, -0.725415, -0.480575,
		34.172691, 42.789207, 24.503355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543701, 42.763226, 25.126694>,  <33.827751, 43.296997, 24.839758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543701, 42.763226, 25.126694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830276, 42.563671, 24.931623>,  <34.002220, 42.443939, 24.814581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830276, 42.563671, 24.931623>,  <33.543701, 42.763226, 25.126694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830276, 42.563671, 24.931623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031475, -0.675199, 0.736964,
		-0.696947, -0.543334, -0.468031,
		0.716432, -0.498893, -0.487679,
		34.045208, 42.414005, 24.785320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311123, 42.072403, 25.030672>,  <33.543701, 42.763226, 25.126694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311123, 42.072403, 25.030672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710670, 42.062439, 25.046862>,  <33.950397, 42.056461, 25.056576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710670, 42.062439, 25.046862>,  <33.311123, 42.072403, 25.030672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710670, 42.062439, 25.046862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047225, -0.616165, 0.786200,
		0.005353, -0.787223, -0.616645,
		0.998870, -0.024913, 0.040475,
		34.010330, 42.054966, 25.059004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496582, 41.329212, 25.060436>,  <33.311123, 42.072403, 25.030672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496582, 41.329212, 25.060436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809261, 41.545662, 25.184462>,  <33.996868, 41.675529, 25.258877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809261, 41.545662, 25.184462>,  <33.496582, 41.329212, 25.060436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809261, 41.545662, 25.184462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119348, -0.617771, 0.777249,
		0.612134, -0.570567, -0.547491,
		0.781696, 0.541122, 0.310062,
		34.043770, 41.708000, 25.277479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878681, 40.867779, 25.328348>,  <33.496582, 41.329212, 25.060436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878681, 40.867779, 25.328348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054806, 41.189957, 25.487040>,  <34.160480, 41.383263, 25.582254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054806, 41.189957, 25.487040>,  <33.878681, 40.867779, 25.328348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054806, 41.189957, 25.487040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310330, -0.551156, 0.774547,
		0.842511, -0.217922, -0.492631,
		0.440307, 0.805442, 0.396727,
		34.186897, 41.431591, 25.606058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499393, 40.542625, 25.728138>,  <33.878681, 40.867779, 25.328348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499393, 40.542625, 25.728138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401703, 40.902130, 25.873789>,  <34.343090, 41.117832, 25.961180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401703, 40.902130, 25.873789>,  <34.499393, 40.542625, 25.728138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401703, 40.902130, 25.873789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117009, -0.345440, 0.931118,
		0.962633, 0.270008, -0.020798,
		-0.244225, 0.898758, 0.364125,
		34.328434, 41.171757, 25.983027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976700, 40.650368, 26.240564>,  <34.499393, 40.542625, 25.728138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976700, 40.650368, 26.240564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685112, 40.915920, 26.307333>,  <34.510159, 41.075253, 26.347393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685112, 40.915920, 26.307333>,  <34.976700, 40.650368, 26.240564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685112, 40.915920, 26.307333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019087, -0.224033, 0.974394,
		0.684278, 0.713491, 0.150643,
		-0.728971, 0.663882, 0.166919,
		34.466419, 41.115086, 26.357409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232910, 41.198654, 26.679901>,  <34.976700, 40.650368, 26.240564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232910, 41.198654, 26.679901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840206, 41.145222, 26.734018>,  <34.604584, 41.113163, 26.766489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840206, 41.145222, 26.734018>,  <35.232910, 41.198654, 26.679901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840206, 41.145222, 26.734018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150317, -0.109617, 0.982542,
		-0.116418, 0.984957, 0.127697,
		-0.981759, -0.133580, 0.135294,
		34.545677, 41.105148, 26.774607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152592, 41.307747, 27.366440>,  <35.232910, 41.198654, 26.679901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152592, 41.307747, 27.366440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804222, 41.127987, 27.286911>,  <34.595200, 41.020130, 27.239193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804222, 41.127987, 27.286911>,  <35.152592, 41.307747, 27.366440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804222, 41.127987, 27.286911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082555, -0.265041, 0.960697,
		-0.484432, 0.853108, 0.193730,
		-0.870925, -0.449399, -0.198822,
		34.542946, 40.993168, 27.227264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818428, 41.294224, 28.009546>,  <35.152592, 41.307747, 27.366440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818428, 41.294224, 28.009546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590668, 41.055443, 27.783474>,  <34.454010, 40.912174, 27.647831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590668, 41.055443, 27.783474>,  <34.818428, 41.294224, 28.009546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590668, 41.055443, 27.783474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267403, -0.515631, 0.814015,
		-0.777352, 0.614633, 0.133975,
		-0.569402, -0.596951, -0.565182,
		34.419846, 40.876358, 27.613920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065739, 41.274040, 28.233313>,  <34.818428, 41.294224, 28.009546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065739, 41.274040, 28.233313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114891, 40.933044, 28.030071>,  <34.144382, 40.728447, 27.908127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114891, 40.933044, 28.030071>,  <34.065739, 41.274040, 28.233313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114891, 40.933044, 28.030071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364888, -0.514931, 0.775695,
		-0.922907, 0.090087, -0.374335,
		0.122877, -0.852485, -0.508105,
		34.151752, 40.677299, 27.877640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473385, 40.886032, 28.240355>,  <34.065739, 41.274040, 28.233313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473385, 40.886032, 28.240355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749660, 40.604462, 28.174105>,  <33.915428, 40.435520, 28.134356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749660, 40.604462, 28.174105>,  <33.473385, 40.886032, 28.240355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749660, 40.604462, 28.174105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379983, -0.548146, 0.745083,
		-0.615270, -0.451688, -0.646081,
		0.690692, -0.703927, -0.165624,
		33.956867, 40.393284, 28.124418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171440, 40.265072, 28.497458>,  <33.473385, 40.886032, 28.240355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171440, 40.265072, 28.497458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545685, 40.132050, 28.450054>,  <33.770229, 40.052238, 28.421612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545685, 40.132050, 28.450054>,  <33.171440, 40.265072, 28.497458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545685, 40.132050, 28.450054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181911, -0.741807, 0.645470,
		-0.302561, -0.582350, -0.754537,
		0.935610, -0.332552, -0.118506,
		33.826366, 40.032284, 28.414503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174297, 39.574074, 28.398769>,  <33.171440, 40.265072, 28.497458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174297, 39.574074, 28.398769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544872, 39.647404, 28.530285>,  <33.767220, 39.691402, 28.609194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544872, 39.647404, 28.530285>,  <33.174297, 39.574074, 28.398769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544872, 39.647404, 28.530285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028011, -0.837411, 0.545856,
		0.375400, -0.514912, -0.770675,
		0.926440, 0.183327, 0.328787,
		33.822803, 39.702400, 28.628922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565689, 38.955940, 28.321424>,  <33.174297, 39.574074, 28.398769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565689, 38.955940, 28.321424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758022, 39.165966, 28.602312>,  <33.873421, 39.291981, 28.770844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758022, 39.165966, 28.602312>,  <33.565689, 38.955940, 28.321424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758022, 39.165966, 28.602312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148771, -0.740409, 0.655486,
		0.864099, -0.419649, -0.277899,
		0.480833, 0.525061, 0.702218,
		33.902271, 39.323486, 28.812977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916344, 38.435093, 28.761257>,  <33.565689, 38.955940, 28.321424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916344, 38.435093, 28.761257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912891, 38.765018, 28.987392>,  <33.910820, 38.962975, 29.123074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912891, 38.765018, 28.987392>,  <33.916344, 38.435093, 28.761257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912891, 38.765018, 28.987392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178788, -0.557520, 0.810683,
		0.983850, -0.094079, 0.152278,
		-0.008630, 0.824816, 0.565336,
		33.910301, 39.012463, 29.156994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356731, 38.282513, 29.305485>,  <33.916344, 38.435093, 28.761257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356731, 38.282513, 29.305485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147564, 38.589481, 29.453875>,  <34.022064, 38.773663, 29.542908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147564, 38.589481, 29.453875>,  <34.356731, 38.282513, 29.305485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147564, 38.589481, 29.453875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154646, -0.513410, 0.844094,
		0.838238, 0.384021, 0.387149,
		-0.522916, 0.767423, 0.370972,
		33.990688, 38.819710, 29.565166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629730, 38.362812, 29.917097>,  <34.356731, 38.282513, 29.305485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629730, 38.362812, 29.917097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260471, 38.513340, 29.948542>,  <34.038918, 38.603657, 29.967409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260471, 38.513340, 29.948542>,  <34.629730, 38.362812, 29.917097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260471, 38.513340, 29.948542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129275, -0.496435, 0.858394,
		0.362057, 0.782263, 0.506932,
		-0.923148, 0.376321, 0.078611,
		33.983528, 38.626236, 29.972124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593513, 38.668900, 30.585798>,  <34.629730, 38.362812, 29.917097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593513, 38.668900, 30.585798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207890, 38.605583, 30.500443>,  <33.976517, 38.567593, 30.449228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207890, 38.605583, 30.500443>,  <34.593513, 38.668900, 30.585798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207890, 38.605583, 30.500443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124635, -0.439876, 0.889368,
		-0.234641, 0.883999, 0.404339,
		-0.964059, -0.158287, -0.213390,
		33.918671, 38.558098, 30.436426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170910, 38.939922, 31.232681>,  <34.593513, 38.668900, 30.585798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170910, 38.939922, 31.232681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933243, 38.685574, 31.035646>,  <33.790642, 38.532967, 30.917425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933243, 38.685574, 31.035646>,  <34.170910, 38.939922, 31.232681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933243, 38.685574, 31.035646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029375, -0.594843, 0.803305,
		-0.803807, 0.491765, 0.334756,
		-0.594164, -0.635869, -0.492585,
		33.754993, 38.494812, 30.887871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701298, 38.735085, 31.755653>,  <34.170910, 38.939922, 31.232681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701298, 38.735085, 31.755653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685856, 38.446442, 31.479164>,  <33.676590, 38.273254, 31.313271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685856, 38.446442, 31.479164>,  <33.701298, 38.735085, 31.755653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685856, 38.446442, 31.479164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132068, -0.681986, 0.719341,
		-0.990488, 0.119061, -0.068972,
		-0.038608, -0.721608, -0.691224,
		33.674274, 38.229958, 31.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220646, 38.330921, 31.967402>,  <33.701298, 38.735085, 31.755653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220646, 38.330921, 31.967402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431831, 38.097008, 31.721058>,  <33.558544, 37.956661, 31.573252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431831, 38.097008, 31.721058>,  <33.220646, 38.330921, 31.967402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431831, 38.097008, 31.721058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118804, -0.768894, 0.628242,
		-0.840914, -0.258525, -0.475424,
		0.527967, -0.584780, -0.615860,
		33.590221, 37.921574, 31.536301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800201, 37.676239, 31.994335>,  <33.220646, 38.330921, 31.967402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800201, 37.676239, 31.994335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174847, 37.586582, 31.886620>,  <33.399635, 37.532787, 31.821989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174847, 37.586582, 31.886620>,  <32.800201, 37.676239, 31.994335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174847, 37.586582, 31.886620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033247, -0.821991, 0.568528,
		-0.348784, -0.523538, -0.777340,
		0.936613, -0.224137, -0.269291,
		33.455830, 37.519341, 31.805832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804695, 36.990112, 31.834574>,  <32.800201, 37.676239, 31.994335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804695, 36.990112, 31.834574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188599, 37.073540, 31.909800>,  <33.418941, 37.123596, 31.954935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188599, 37.073540, 31.909800>,  <32.804695, 36.990112, 31.834574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188599, 37.073540, 31.909800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085960, -0.855686, 0.510306,
		0.267361, -0.473602, -0.839177,
		0.959755, 0.208571, 0.188067,
		33.476524, 37.136112, 31.966219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168293, 36.346478, 31.661581>,  <32.804695, 36.990112, 31.834574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168293, 36.346478, 31.661581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413399, 36.542984, 31.909185>,  <33.560463, 36.660889, 32.057747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413399, 36.542984, 31.909185>,  <33.168293, 36.346478, 31.661581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413399, 36.542984, 31.909185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369896, -0.870491, 0.324687,
		0.698354, 0.030015, -0.715123,
		0.612763, 0.491268, 0.619013,
		33.597229, 36.690365, 32.094891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818382, 35.943657, 31.624039>,  <33.168293, 36.346478, 31.661581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818382, 35.943657, 31.624039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828781, 36.168365, 31.954792>,  <33.835018, 36.303192, 32.153244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828781, 36.168365, 31.954792>,  <33.818382, 35.943657, 31.624039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828781, 36.168365, 31.954792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409175, -0.760679, 0.503928,
		0.912085, 0.325242, -0.249635,
		0.025993, 0.561770, 0.826885,
		33.836578, 36.336895, 32.202858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419384, 35.662727, 31.951181>,  <33.818382, 35.943657, 31.624039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419384, 35.662727, 31.951181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239342, 35.877304, 32.236736>,  <34.131317, 36.006050, 32.408070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239342, 35.877304, 32.236736>,  <34.419384, 35.662727, 31.951181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239342, 35.877304, 32.236736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285679, -0.670927, 0.684283,
		0.846045, 0.511942, 0.148738,
		-0.450106, 0.536443, 0.713886,
		34.104309, 36.038239, 32.450901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895412, 35.596127, 32.507179>,  <34.419384, 35.662727, 31.951181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895412, 35.596127, 32.507179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551353, 35.702583, 32.681217>,  <34.344917, 35.766457, 32.785641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551353, 35.702583, 32.681217>,  <34.895412, 35.596127, 32.507179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551353, 35.702583, 32.681217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090426, -0.759976, 0.643630,
		0.501958, 0.592963, 0.629629,
		-0.860152, 0.266140, 0.435096,
		34.293308, 35.782425, 32.811745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213051, 35.836121, 31.843235>,  <34.895412, 35.596127, 32.507179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213051, 35.836121, 31.843235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565353, 35.685162, 31.957664>,  <35.776733, 35.594585, 32.026321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565353, 35.685162, 31.957664>,  <35.213051, 35.836121, 31.843235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565353, 35.685162, 31.957664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472049, 0.651311, -0.594108,
		0.037891, 0.658306, 0.751796,
		0.880758, -0.377396, 0.286074,
		35.829582, 35.571941, 32.043488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600994, 36.375111, 32.286697>,  <35.213051, 35.836121, 31.843235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600994, 36.375111, 32.286697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853157, 36.124184, 32.103809>,  <36.004456, 35.973625, 31.994076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853157, 36.124184, 32.103809>,  <35.600994, 36.375111, 32.286697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853157, 36.124184, 32.103809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350055, 0.755452, -0.553853,
		0.692853, 0.189101, 0.695841,
		0.630409, -0.627322, -0.457222,
		36.042278, 35.935986, 31.966642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367508, 36.661308, 32.362350>,  <35.600994, 36.375111, 32.286697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367508, 36.661308, 32.362350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336170, 36.425373, 32.040867>,  <36.317368, 36.283813, 31.847977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336170, 36.425373, 32.040867>,  <36.367508, 36.661308, 32.362350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336170, 36.425373, 32.040867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455326, 0.696021, -0.555187,
		0.886871, -0.409445, 0.214042,
		-0.078340, -0.589838, -0.803712,
		36.312668, 36.248421, 31.799753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025307, 36.828018, 32.166592>,  <36.367508, 36.661308, 32.362350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025307, 36.828018, 32.166592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849983, 36.665073, 31.846107>,  <36.744789, 36.567307, 31.653816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849983, 36.665073, 31.846107>,  <37.025307, 36.828018, 32.166592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849983, 36.665073, 31.846107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463337, 0.661435, -0.589765,
		0.770197, -0.629731, -0.101167,
		-0.438309, -0.407361, -0.801213,
		36.718491, 36.542866, 31.605743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563816, 36.634476, 31.676115>,  <37.025307, 36.828018, 32.166592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563816, 36.634476, 31.676115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224911, 36.699982, 31.473997>,  <37.021568, 36.739285, 31.352726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224911, 36.699982, 31.473997>,  <37.563816, 36.634476, 31.676115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224911, 36.699982, 31.473997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453453, 0.718422, -0.527494,
		0.276630, -0.676054, -0.682954,
		-0.847264, 0.163768, -0.505296,
		36.970730, 36.749111, 31.322409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684704, 36.789001, 30.975473>,  <37.563816, 36.634476, 31.676115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684704, 36.789001, 30.975473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303917, 36.908318, 30.947842>,  <37.075443, 36.979908, 30.931263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303917, 36.908318, 30.947842>,  <37.684704, 36.789001, 30.975473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303917, 36.908318, 30.947842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240557, 0.589057, -0.771456,
		-0.189428, -0.751021, -0.632522,
		-0.951971, 0.298293, -0.069080,
		37.018326, 36.997807, 30.927118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521423, 36.818832, 30.273413>,  <37.684704, 36.789001, 30.975473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521423, 36.818832, 30.273413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210888, 37.017391, 30.428791>,  <37.024567, 37.136528, 30.522018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210888, 37.017391, 30.428791>,  <37.521423, 36.818832, 30.273413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210888, 37.017391, 30.428791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060554, 0.672153, -0.737932,
		-0.627405, -0.549361, -0.551875,
		-0.776335, 0.496400, 0.388446,
		36.977989, 37.166313, 30.545324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121838, 36.967731, 29.737175>,  <37.521423, 36.818832, 30.273413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121838, 36.967731, 29.737175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009506, 37.233181, 30.014515>,  <36.942108, 37.392452, 30.180920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009506, 37.233181, 30.014515>,  <37.121838, 36.967731, 29.737175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009506, 37.233181, 30.014515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133456, 0.742407, -0.656523,
		-0.950433, -0.091839, -0.297055,
		-0.280830, 0.663625, 0.693352,
		36.925259, 37.432270, 30.222521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554466, 37.393219, 29.447609>,  <37.121838, 36.967731, 29.737175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554466, 37.393219, 29.447609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737926, 37.620461, 29.720928>,  <36.848003, 37.756805, 29.884920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737926, 37.620461, 29.720928>,  <36.554466, 37.393219, 29.447609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737926, 37.620461, 29.720928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050072, 0.751202, -0.658171,
		-0.887206, 0.336083, 0.316092,
		0.458649, 0.568106, 0.683299,
		36.875523, 37.790894, 29.925919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140984, 38.065224, 29.454777>,  <36.554466, 37.393219, 29.447609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140984, 38.065224, 29.454777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478470, 38.170094, 29.642139>,  <36.680962, 38.233013, 29.754557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478470, 38.170094, 29.642139>,  <36.140984, 38.065224, 29.454777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478470, 38.170094, 29.642139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120853, 0.757435, -0.641628,
		-0.523004, 0.597962, 0.607378,
		0.843719, 0.262171, 0.468407,
		36.731586, 38.248745, 29.782661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060272, 38.705139, 29.679844>,  <36.140984, 38.065224, 29.454777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060272, 38.705139, 29.679844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450756, 38.648872, 29.613829>,  <36.685047, 38.615112, 29.574221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450756, 38.648872, 29.613829>,  <36.060272, 38.705139, 29.679844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450756, 38.648872, 29.613829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042967, 0.871453, -0.488593,
		0.212548, 0.469876, 0.856761,
		0.976205, -0.140662, -0.165037,
		36.743618, 38.606674, 29.564318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394493, 39.301014, 29.761906>,  <36.060272, 38.705139, 29.679844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394493, 39.301014, 29.761906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688297, 39.099339, 29.580233>,  <36.864582, 38.978333, 29.471230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688297, 39.099339, 29.580233>,  <36.394493, 39.301014, 29.761906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688297, 39.099339, 29.580233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260247, 0.827419, -0.497644,
		0.626705, 0.247328, 0.738966,
		0.734515, -0.504189, -0.454181,
		36.908653, 38.948082, 29.443977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970715, 39.711872, 29.836599>,  <36.394493, 39.301014, 29.761906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970715, 39.711872, 29.836599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064144, 39.481129, 29.523506>,  <37.120201, 39.342682, 29.335649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064144, 39.481129, 29.523506>,  <36.970715, 39.711872, 29.836599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064144, 39.481129, 29.523506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130269, 0.816310, -0.562732,
		0.963573, 0.029474, 0.265817,
		0.233575, -0.576861, -0.782735,
		37.134216, 39.308071, 29.288685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593552, 40.041042, 29.469025>,  <36.970715, 39.711872, 29.836599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593552, 40.041042, 29.469025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388542, 39.787682, 29.237120>,  <37.265537, 39.635666, 29.097977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388542, 39.787682, 29.237120>,  <37.593552, 40.041042, 29.469025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388542, 39.787682, 29.237120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009320, 0.671037, -0.741365,
		0.858624, -0.385369, -0.338018,
		-0.512521, -0.633404, -0.579760,
		37.234787, 39.597660, 29.063192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112286, 40.021595, 28.894482>,  <37.593552, 40.041042, 29.469025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112286, 40.021595, 28.894482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758099, 39.895481, 28.757925>,  <37.545586, 39.819813, 28.675991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758099, 39.895481, 28.757925>,  <38.112286, 40.021595, 28.894482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758099, 39.895481, 28.757925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117767, 0.558413, -0.821161,
		0.449537, -0.767313, -0.457325,
		-0.885464, -0.315285, -0.341392,
		37.492458, 39.800896, 28.655508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225128, 39.928936, 28.205967>,  <38.112286, 40.021595, 28.894482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225128, 39.928936, 28.205967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825798, 39.952068, 28.205662>,  <37.586201, 39.965946, 28.205479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825798, 39.952068, 28.205662>,  <38.225128, 39.928936, 28.205967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825798, 39.952068, 28.205662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033253, 0.563112, -0.825711,
		-0.047322, -0.824355, -0.564092,
		-0.998326, 0.057832, -0.000764,
		37.526299, 39.969418, 28.205433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989193, 39.830612, 27.662907>,  <38.225128, 39.928936, 28.205967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989193, 39.830612, 27.662907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641930, 39.993580, 27.776258>,  <37.433571, 40.091362, 27.844269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641930, 39.993580, 27.776258>,  <37.989193, 39.830612, 27.662907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641930, 39.993580, 27.776258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130523, 0.363456, -0.922423,
		-0.478813, -0.837798, -0.262360,
		-0.868160, 0.407424, 0.283379,
		37.381481, 40.115807, 27.861273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370701, 39.708633, 27.200607>,  <37.989193, 39.830612, 27.662907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370701, 39.708633, 27.200607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246220, 40.023949, 27.412928>,  <37.171532, 40.213139, 27.540319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246220, 40.023949, 27.412928>,  <37.370701, 39.708633, 27.200607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246220, 40.023949, 27.412928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366870, 0.415588, -0.832282,
		-0.876674, -0.453747, 0.159866,
		-0.311207, 0.788289, 0.530801,
		37.152859, 40.260437, 27.572168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670994, 39.809479, 26.929176>,  <37.370701, 39.708633, 27.200607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670994, 39.809479, 26.929176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808731, 40.146709, 27.094416>,  <36.891373, 40.349049, 27.193560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808731, 40.146709, 27.094416>,  <36.670994, 39.809479, 26.929176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808731, 40.146709, 27.094416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245213, 0.505498, -0.827250,
		-0.906257, 0.183558, 0.380796,
		0.344340, 0.843077, 0.413100,
		36.912033, 40.399632, 27.218346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121449, 40.214367, 26.677523>,  <36.670994, 39.809479, 26.929176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121449, 40.214367, 26.677523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429085, 40.447613, 26.782188>,  <36.613667, 40.587563, 26.844988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429085, 40.447613, 26.782188>,  <36.121449, 40.214367, 26.677523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429085, 40.447613, 26.782188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110878, 0.524923, -0.843897,
		-0.629444, 0.620024, 0.468370,
		0.769094, 0.583118, 0.261663,
		36.659813, 40.622547, 26.860687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898308, 40.909473, 26.594332>,  <36.121449, 40.214367, 26.677523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898308, 40.909473, 26.594332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298046, 40.915939, 26.581432>,  <36.537891, 40.919819, 26.573692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298046, 40.915939, 26.581432>,  <35.898308, 40.909473, 26.594332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298046, 40.915939, 26.581432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036015, 0.395100, -0.917932,
		-0.002099, 0.918496, 0.395425,
		0.999349, 0.016168, -0.032251,
		36.597851, 40.920788, 26.571756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043171, 41.554329, 26.449377>,  <35.898308, 40.909473, 26.594332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043171, 41.554329, 26.449377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354652, 41.338406, 26.321491>,  <36.541542, 41.208851, 26.244761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354652, 41.338406, 26.321491>,  <36.043171, 41.554329, 26.449377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354652, 41.338406, 26.321491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086106, 0.412819, -0.906734,
		0.621451, 0.733609, 0.274984,
		0.778707, -0.539813, -0.319715,
		36.588264, 41.176460, 26.225576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532669, 42.037846, 26.115818>,  <36.043171, 41.554329, 26.449377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532669, 42.037846, 26.115818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647362, 41.676895, 25.987129>,  <36.716179, 41.460327, 25.909916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647362, 41.676895, 25.987129>,  <36.532669, 42.037846, 26.115818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647362, 41.676895, 25.987129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011078, 0.332678, -0.942975,
		0.957946, 0.273949, 0.085394,
		0.286736, -0.902373, -0.321723,
		36.733383, 41.406181, 25.890612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093445, 42.135517, 25.666670>,  <36.532669, 42.037846, 26.115818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093445, 42.135517, 25.666670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940384, 41.783485, 25.554220>,  <36.848545, 41.572266, 25.486750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940384, 41.783485, 25.554220>,  <37.093445, 42.135517, 25.666670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940384, 41.783485, 25.554220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049336, 0.323313, -0.945005,
		0.922573, -0.347741, -0.167137,
		-0.382654, -0.880083, -0.281124,
		36.825588, 41.519459, 25.469883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530441, 41.939865, 25.140642>,  <37.093445, 42.135517, 25.666670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530441, 41.939865, 25.140642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195530, 41.725956, 25.095066>,  <36.994583, 41.597610, 25.067720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195530, 41.725956, 25.095066>,  <37.530441, 41.939865, 25.140642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195530, 41.725956, 25.095066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014331, 0.186850, -0.982284,
		0.546593, -0.824076, -0.148781,
		-0.837276, -0.534777, -0.113941,
		36.944347, 41.565521, 25.060884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648903, 41.468178, 24.572815>,  <37.530441, 41.939865, 25.140642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648903, 41.468178, 24.572815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252010, 41.509193, 24.600992>,  <37.013874, 41.533802, 24.617899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252010, 41.509193, 24.600992>,  <37.648903, 41.468178, 24.572815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252010, 41.509193, 24.600992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054047, 0.154692, -0.986483,
		-0.112051, -0.982627, -0.147948,
		-0.992232, 0.102540, 0.070442,
		36.954342, 41.539955, 24.622124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421467, 41.013523, 24.125563>,  <37.648903, 41.468178, 24.572815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421467, 41.013523, 24.125563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107029, 41.253742, 24.184059>,  <36.918365, 41.397873, 24.219158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107029, 41.253742, 24.184059>,  <37.421467, 41.013523, 24.125563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107029, 41.253742, 24.184059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151818, 0.041753, -0.987526,
		-0.599167, -0.798495, 0.058353,
		-0.786098, 0.600552, 0.146242,
		36.871201, 41.433907, 24.227932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927078, 40.772736, 23.651657>,  <37.421467, 41.013523, 24.125563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927078, 40.772736, 23.651657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816242, 41.147335, 23.737625>,  <36.749741, 41.372093, 23.789206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816242, 41.147335, 23.737625>,  <36.927078, 40.772736, 23.651657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816242, 41.147335, 23.737625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217043, 0.156891, -0.963471,
		-0.936008, -0.313618, 0.159787,
		-0.277093, 0.936498, 0.214920,
		36.733116, 41.428284, 23.802101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507721, 40.940769, 23.120806>,  <36.927078, 40.772736, 23.651657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507721, 40.940769, 23.120806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570019, 41.316483, 23.243107>,  <36.607395, 41.541912, 23.316488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570019, 41.316483, 23.243107>,  <36.507721, 40.940769, 23.120806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570019, 41.316483, 23.243107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031463, 0.304657, -0.951943,
		-0.987297, 0.157877, 0.017895,
		0.155742, 0.939287, 0.305754,
		36.616741, 41.598267, 23.334833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956383, 41.278553, 22.863249>,  <36.507721, 40.940769, 23.120806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956383, 41.278553, 22.863249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224247, 41.560482, 22.956875>,  <36.384964, 41.729637, 23.013050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224247, 41.560482, 22.956875>,  <35.956383, 41.278553, 22.863249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224247, 41.560482, 22.956875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087478, 0.387830, -0.917570,
		-0.737498, 0.593985, 0.321371,
		0.669660, 0.704819, 0.234063,
		36.425144, 41.771927, 23.027094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577255, 41.940319, 22.836378>,  <35.956383, 41.278553, 22.863249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577255, 41.940319, 22.836378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971809, 41.995296, 22.800238>,  <36.208542, 42.028282, 22.778553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971809, 41.995296, 22.800238>,  <35.577255, 41.940319, 22.836378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971809, 41.995296, 22.800238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154635, 0.587758, -0.794121,
		-0.056040, 0.797277, 0.601006,
		0.986381, 0.137439, -0.090350,
		36.267723, 42.036530, 22.773132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650013, 42.632450, 22.627960>,  <35.577255, 41.940319, 22.836378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650013, 42.632450, 22.627960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011833, 42.483681, 22.544577>,  <36.228928, 42.394421, 22.494547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011833, 42.483681, 22.544577>,  <35.650013, 42.632450, 22.627960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011833, 42.483681, 22.544577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013492, 0.513660, -0.857888,
		0.426143, 0.773195, 0.469651,
		0.904555, -0.371919, -0.208460,
		36.283199, 42.372105, 22.482038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007534, 43.156574, 22.235214>,  <35.650013, 42.632450, 22.627960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007534, 43.156574, 22.235214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244434, 42.846146, 22.148535>,  <36.386574, 42.659889, 22.096527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244434, 42.846146, 22.148535>,  <36.007534, 43.156574, 22.235214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244434, 42.846146, 22.148535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204624, 0.404984, -0.891133,
		0.779340, 0.483430, 0.398653,
		0.592248, -0.776069, -0.216699,
		36.422108, 42.613323, 22.083525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565243, 43.504570, 21.916265>,  <36.007534, 43.156574, 22.235214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565243, 43.504570, 21.916265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553856, 43.119507, 21.808580>,  <36.547024, 42.888470, 21.743969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553856, 43.119507, 21.808580>,  <36.565243, 43.504570, 21.916265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553856, 43.119507, 21.808580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058641, 0.267250, -0.961841,
		0.997873, -0.043166, 0.048844,
		-0.028465, -0.962660, -0.269213,
		36.545315, 42.830708, 21.727816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997639, 43.381012, 21.340986>,  <36.565243, 43.504570, 21.916265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997639, 43.381012, 21.340986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749352, 43.068382, 21.316133>,  <36.600380, 42.880806, 21.301222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749352, 43.068382, 21.316133>,  <36.997639, 43.381012, 21.340986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749352, 43.068382, 21.316133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055409, 0.122776, -0.990886,
		0.782077, -0.611614, -0.119515,
		-0.620713, -0.781572, -0.062131,
		36.563137, 42.833912, 21.297495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234016, 42.972794, 20.694910>,  <36.997639, 43.381012, 21.340986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234016, 42.972794, 20.694910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864918, 42.834080, 20.762186>,  <36.643459, 42.750851, 20.802551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864918, 42.834080, 20.762186>,  <37.234016, 42.972794, 20.694910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864918, 42.834080, 20.762186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232286, 0.152156, -0.960672,
		0.307555, -0.925521, -0.220954,
		-0.922742, -0.346784, 0.168189,
		36.588097, 42.730045, 20.812643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028824, 42.498665, 20.168671>,  <37.234016, 42.972794, 20.694910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028824, 42.498665, 20.168671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693737, 42.632393, 20.341393>,  <36.492683, 42.712631, 20.445026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693737, 42.632393, 20.341393>,  <37.028824, 42.498665, 20.168671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693737, 42.632393, 20.341393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415633, 0.122564, -0.901236,
		-0.354229, -0.934455, 0.036282,
		-0.837718, 0.334324, 0.431806,
		36.442421, 42.732689, 20.470934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968452, 41.794804, 19.938498>,  <37.028824, 42.498665, 20.168671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968452, 41.794804, 19.938498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828110, 41.445477, 19.803310>,  <36.743904, 41.235882, 19.722198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828110, 41.445477, 19.803310>,  <36.968452, 41.794804, 19.938498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828110, 41.445477, 19.803310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466116, -0.475896, 0.745828,
		-0.812178, 0.104149, 0.574037,
		-0.350859, -0.873313, -0.337967,
		36.722851, 41.183483, 19.701920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645218, 41.433571, 20.518501>,  <36.968452, 41.794804, 19.938498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645218, 41.433571, 20.518501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760059, 41.154640, 20.255804>,  <36.828964, 40.987282, 20.098186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760059, 41.154640, 20.255804>,  <36.645218, 41.433571, 20.518501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760059, 41.154640, 20.255804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590783, -0.410779, 0.694432,
		-0.754020, -0.587366, 0.294032,
		0.287104, -0.697325, -0.656742,
		36.846191, 40.945442, 20.058783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744026, 40.823826, 20.936827>,  <36.645218, 41.433571, 20.518501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744026, 40.823826, 20.936827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963032, 40.754395, 20.609388>,  <37.094433, 40.712734, 20.412926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963032, 40.754395, 20.609388>,  <36.744026, 40.823826, 20.936827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963032, 40.754395, 20.609388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642989, -0.538793, 0.544305,
		-0.535514, -0.824368, -0.183416,
		0.547531, -0.173549, -0.818591,
		37.127285, 40.702320, 20.363810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911255, 40.066132, 20.953985>,  <36.744026, 40.823826, 20.936827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911255, 40.066132, 20.953985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170330, 40.269463, 20.726971>,  <37.325775, 40.391460, 20.590761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170330, 40.269463, 20.726971>,  <36.911255, 40.066132, 20.953985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170330, 40.269463, 20.726971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759369, -0.491420, 0.426456,
		-0.062118, -0.707181, -0.704298,
		0.647688, 0.508332, -0.567538,
		37.364635, 40.421963, 20.556709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379448, 39.540424, 20.667631>,  <36.911255, 40.066132, 20.953985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379448, 39.540424, 20.667631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587708, 39.879253, 20.624922>,  <37.712662, 40.082550, 20.599297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587708, 39.879253, 20.624922>,  <37.379448, 39.540424, 20.667631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587708, 39.879253, 20.624922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808993, -0.449496, 0.378792,
		0.272868, -0.283597, -0.919302,
		0.520646, 0.847069, -0.106775,
		37.743900, 40.133373, 20.592890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065281, 39.279015, 20.728012>,  <37.379448, 39.540424, 20.667631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065281, 39.279015, 20.728012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102074, 39.676712, 20.749998>,  <38.124149, 39.915329, 20.763189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102074, 39.676712, 20.749998>,  <38.065281, 39.279015, 20.728012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102074, 39.676712, 20.749998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763462, -0.105856, 0.637119,
		0.639269, -0.016643, -0.768803,
		0.091986, 0.994242, 0.054964,
		38.129669, 39.974983, 20.766487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755573, 39.365009, 20.594557>,  <38.065281, 39.279015, 20.728012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755573, 39.365009, 20.594557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615116, 39.680992, 20.795618>,  <38.530842, 39.870583, 20.916254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615116, 39.680992, 20.795618>,  <38.755573, 39.365009, 20.594557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615116, 39.680992, 20.795618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755461, -0.078116, 0.650520,
		0.553150, 0.608162, -0.569354,
		-0.351146, 0.789960, 0.502653,
		38.509773, 39.917980, 20.946413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336018, 39.774891, 20.810909>,  <38.755573, 39.365009, 20.594557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336018, 39.774891, 20.810909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087082, 39.960934, 21.062740>,  <38.937721, 40.072559, 21.213839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087082, 39.960934, 21.062740>,  <39.336018, 39.774891, 20.810909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087082, 39.960934, 21.062740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762326, 0.177627, 0.622340,
		0.177627, 0.867249, -0.465110,
		-0.622340, 0.465110, 0.629576,
		38.900379, 40.100468, 21.251614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544121, 40.491776, 21.035866>,  <39.336018, 39.774891, 20.810909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544121, 40.491776, 21.035866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298714, 40.388947, 21.334532>,  <39.151470, 40.327248, 21.513731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298714, 40.388947, 21.334532>,  <39.544121, 40.491776, 21.035866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298714, 40.388947, 21.334532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695718, 0.271368, 0.665083,
		-0.373599, 0.927508, 0.012365,
		-0.613514, -0.257077, 0.746667,
		39.114658, 40.311825, 21.558533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735432, 40.952240, 21.500763>,  <39.544121, 40.491776, 21.035866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735432, 40.952240, 21.500763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517838, 40.729736, 21.752048>,  <39.387283, 40.596233, 21.902821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517838, 40.729736, 21.752048>,  <39.735432, 40.952240, 21.500763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517838, 40.729736, 21.752048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784631, -0.071877, 0.615782,
		-0.297382, 0.827892, 0.475561,
		-0.543983, -0.556263, 0.628215,
		39.354641, 40.562859, 21.940514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797813, 41.255932, 22.225197>,  <39.735432, 40.952240, 21.500763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797813, 41.255932, 22.225197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703236, 40.868793, 22.259535>,  <39.646488, 40.636509, 22.280138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703236, 40.868793, 22.259535>,  <39.797813, 41.255932, 22.225197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703236, 40.868793, 22.259535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756998, -0.128101, 0.640738,
		-0.609138, 0.216483, 0.762946,
		-0.236443, -0.967845, 0.085846,
		39.632301, 40.578442, 22.285288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725567, 41.061649, 23.018482>,  <39.797813, 41.255932, 22.225197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725567, 41.061649, 23.018482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770866, 40.721867, 22.812340>,  <39.798046, 40.517998, 22.688654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770866, 40.721867, 22.812340>,  <39.725567, 41.061649, 23.018482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770866, 40.721867, 22.812340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730084, -0.280667, 0.623060,
		-0.673908, -0.446815, 0.588392,
		0.113251, -0.849460, -0.515356,
		39.804840, 40.467030, 22.657734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678463, 40.535095, 23.525352>,  <39.725567, 41.061649, 23.018482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678463, 40.535095, 23.525352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903046, 40.437969, 23.208921>,  <40.037796, 40.379692, 23.019062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903046, 40.437969, 23.208921>,  <39.678463, 40.535095, 23.525352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903046, 40.437969, 23.208921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789978, -0.127352, 0.599764,
		-0.246380, -0.961676, 0.120319,
		0.561455, -0.242819, -0.791080,
		40.071484, 40.365124, 22.971598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716148, 39.877701, 23.162479>,  <39.678463, 40.535095, 23.525352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716148, 39.877701, 23.162479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973530, 40.078419, 23.393709>,  <40.127960, 40.198849, 23.532448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973530, 40.078419, 23.393709>,  <39.716148, 39.877701, 23.162479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973530, 40.078419, 23.393709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325676, -0.503965, 0.799971,
		0.692751, -0.703009, -0.160854,
		0.643452, 0.501795, 0.578076,
		40.166565, 40.228958, 23.567131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118904, 39.450294, 23.551601>,  <39.716148, 39.877701, 23.162479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118904, 39.450294, 23.551601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104282, 39.787296, 23.766579>,  <40.095509, 39.989498, 23.895565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104282, 39.787296, 23.766579>,  <40.118904, 39.450294, 23.551601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104282, 39.787296, 23.766579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123205, -0.537499, 0.834216,
		0.991708, -0.035724, 0.123448,
		-0.036552, 0.842508, 0.537443,
		40.093315, 40.040047, 23.927811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471119, 39.242619, 24.224609>,  <40.118904, 39.450294, 23.551601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471119, 39.242619, 24.224609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293850, 39.586872, 24.324938>,  <40.187489, 39.793423, 24.385134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293850, 39.586872, 24.324938>,  <40.471119, 39.242619, 24.224609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293850, 39.586872, 24.324938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156566, -0.349806, 0.923647,
		0.882658, 0.370064, 0.289770,
		-0.443172, 0.860632, 0.250819,
		40.160900, 39.845062, 24.400183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807430, 39.492374, 24.873741>,  <40.471119, 39.242619, 24.224609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807430, 39.492374, 24.873741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454990, 39.678944, 24.842487>,  <40.243526, 39.790886, 24.823736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454990, 39.678944, 24.842487>,  <40.807430, 39.492374, 24.873741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454990, 39.678944, 24.842487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208311, -0.234450, 0.949547,
		0.424573, 0.852926, 0.303736,
		-0.881104, 0.466423, -0.078133,
		40.190659, 39.818871, 24.819048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725475, 40.056007, 25.385326>,  <40.807430, 39.492374, 24.873741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725475, 40.056007, 25.385326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365993, 39.920303, 25.274162>,  <40.150307, 39.838879, 25.207464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365993, 39.920303, 25.274162>,  <40.725475, 40.056007, 25.385326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365993, 39.920303, 25.274162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230103, -0.174690, 0.957359,
		-0.373344, 0.924329, 0.078929,
		-0.898703, -0.339263, -0.277910,
		40.096382, 39.818523, 25.190790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414036, 40.343513, 25.845957>,  <40.725475, 40.056007, 25.385326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414036, 40.343513, 25.845957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149654, 40.088264, 25.687998>,  <39.991028, 39.935116, 25.593224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149654, 40.088264, 25.687998>,  <40.414036, 40.343513, 25.845957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149654, 40.088264, 25.687998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375567, -0.174302, 0.910257,
		-0.649686, 0.749946, -0.124452,
		-0.660952, -0.638122, -0.394896,
		39.951370, 39.896828, 25.569529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736656, 40.509338, 26.065172>,  <40.414036, 40.343513, 25.845957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736656, 40.509338, 26.065172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728466, 40.118484, 25.980526>,  <39.723553, 39.883972, 25.929737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728466, 40.118484, 25.980526>,  <39.736656, 40.509338, 26.065172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728466, 40.118484, 25.980526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429158, -0.182579, 0.884584,
		-0.902997, 0.108931, -0.415608,
		-0.020478, -0.977138, -0.211617,
		39.722324, 39.825344, 25.917042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240494, 40.219799, 26.504946>,  <39.736656, 40.509338, 26.065172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240494, 40.219799, 26.504946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370884, 39.864944, 26.374266>,  <39.449116, 39.652031, 26.295856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370884, 39.864944, 26.374266>,  <39.240494, 40.219799, 26.504946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370884, 39.864944, 26.374266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235919, -0.410979, 0.880590,
		-0.915469, -0.209973, -0.343260,
		0.325973, -0.887134, -0.326702,
		39.468678, 39.598804, 26.276255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723465, 39.821190, 26.549520>,  <39.240494, 40.219799, 26.504946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723465, 39.821190, 26.549520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053528, 39.595284, 26.544449>,  <39.251564, 39.459740, 26.541405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053528, 39.595284, 26.544449>,  <38.723465, 39.821190, 26.549520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053528, 39.595284, 26.544449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273429, -0.418936, 0.865869,
		-0.494326, -0.711008, -0.500110,
		0.825154, -0.564766, -0.012681,
		39.301075, 39.425854, 26.540646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551487, 39.149101, 26.660521>,  <38.723465, 39.821190, 26.549520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551487, 39.149101, 26.660521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943588, 39.124470, 26.735691>,  <39.178848, 39.109692, 26.780794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943588, 39.124470, 26.735691>,  <38.551487, 39.149101, 26.660521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943588, 39.124470, 26.735691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187026, -0.597486, 0.779764,
		0.064264, -0.799511, -0.597204,
		0.980251, -0.061582, 0.187926,
		39.237663, 39.105995, 26.792068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650208, 38.468349, 26.711319>,  <38.551487, 39.149101, 26.660521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650208, 38.468349, 26.711319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932606, 38.660088, 26.919857>,  <39.102043, 38.775131, 27.044981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932606, 38.660088, 26.919857>,  <38.650208, 38.468349, 26.711319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932606, 38.660088, 26.919857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007811, -0.730823, 0.682522,
		0.708175, -0.485929, -0.512212,
		0.705994, 0.479345, 0.521346,
		39.144405, 38.803890, 27.076262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059544, 37.947475, 27.028748>,  <38.650208, 38.468349, 26.711319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059544, 37.947475, 27.028748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162735, 38.253235, 27.265099>,  <39.224651, 38.436691, 27.406910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162735, 38.253235, 27.265099>,  <39.059544, 37.947475, 27.028748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162735, 38.253235, 27.265099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065079, -0.623940, 0.778758,
		0.963956, -0.162450, -0.210710,
		0.257979, 0.764401, 0.590879,
		39.240128, 38.482555, 27.442362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657619, 37.819660, 27.426781>,  <39.059544, 37.947475, 27.028748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657619, 37.819660, 27.426781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448933, 38.103050, 27.616886>,  <39.323719, 38.273083, 27.730949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448933, 38.103050, 27.616886>,  <39.657619, 37.819660, 27.426781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448933, 38.103050, 27.616886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235567, -0.415794, 0.878421,
		0.819950, 0.570244, 0.050034,
		-0.521718, 0.708475, 0.475262,
		39.292416, 38.315594, 27.759464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131279, 37.891777, 28.042837>,  <39.657619, 37.819660, 27.426781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131279, 37.891777, 28.042837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805653, 38.116299, 28.102472>,  <39.610275, 38.251011, 28.138254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805653, 38.116299, 28.102472>,  <40.131279, 37.891777, 28.042837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805653, 38.116299, 28.102472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017177, -0.279868, 0.959885,
		0.580515, 0.778851, 0.237473,
		-0.814069, 0.561306, 0.149089,
		39.561432, 38.284691, 28.147200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212757, 38.399918, 28.626146>,  <40.131279, 37.891777, 28.042837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212757, 38.399918, 28.626146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823055, 38.315704, 28.593887>,  <39.589233, 38.265175, 28.574532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823055, 38.315704, 28.593887>,  <40.212757, 38.399918, 28.626146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823055, 38.315704, 28.593887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043049, -0.524849, 0.850106,
		-0.221306, 0.824747, 0.520399,
		-0.974254, -0.210537, -0.080648,
		39.530781, 38.252544, 28.569693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973675, 38.663857, 29.205000>,  <40.212757, 38.399918, 28.626146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973675, 38.663857, 29.205000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708656, 38.387699, 29.088797>,  <39.549644, 38.222004, 29.019075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708656, 38.387699, 29.088797>,  <39.973675, 38.663857, 29.205000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708656, 38.387699, 29.088797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058384, -0.434268, 0.898890,
		-0.746745, 0.578592, 0.328029,
		-0.662543, -0.690393, -0.290507,
		39.509895, 38.180580, 29.001644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465305, 38.528603, 29.729252>,  <39.973675, 38.663857, 29.205000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465305, 38.528603, 29.729252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422447, 38.197929, 29.508307>,  <39.396732, 37.999523, 29.375738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422447, 38.197929, 29.508307>,  <39.465305, 38.528603, 29.729252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422447, 38.197929, 29.508307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171636, -0.531843, 0.829268,
		-0.979316, 0.183660, -0.084903,
		-0.107148, -0.826688, -0.552365,
		39.390305, 37.949924, 29.342598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945126, 38.173641, 30.079498>,  <39.465305, 38.528603, 29.729252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945126, 38.173641, 30.079498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122391, 37.916210, 29.829885>,  <39.228752, 37.761753, 29.680117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122391, 37.916210, 29.829885>,  <38.945126, 38.173641, 30.079498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122391, 37.916210, 29.829885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110878, -0.730131, 0.674251,
		-0.889557, -0.229612, -0.394926,
		0.443164, -0.643573, -0.624035,
		39.255341, 37.723137, 29.642675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579056, 37.609917, 30.220604>,  <38.945126, 38.173641, 30.079498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579056, 37.609917, 30.220604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913231, 37.486736, 30.038525>,  <39.113735, 37.412827, 29.929277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913231, 37.486736, 30.038525>,  <38.579056, 37.609917, 30.220604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913231, 37.486736, 30.038525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108885, -0.719098, 0.686325,
		-0.538688, -0.622947, -0.567232,
		0.835439, -0.307952, -0.455200,
		39.163864, 37.394352, 29.901964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550259, 36.859787, 30.265179>,  <38.579056, 37.609917, 30.220604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550259, 36.859787, 30.265179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934616, 36.946594, 30.196379>,  <39.165230, 36.998680, 30.155100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934616, 36.946594, 30.196379>,  <38.550259, 36.859787, 30.265179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934616, 36.946594, 30.196379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276906, -0.757064, 0.591758,
		-0.001792, -0.616245, -0.787552,
		0.960895, 0.217018, -0.171999,
		39.222885, 37.011700, 30.144779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782093, 36.212742, 30.175119>,  <38.550259, 36.859787, 30.265179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782093, 36.212742, 30.175119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121578, 36.415421, 30.235716>,  <39.325268, 36.537025, 30.272074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121578, 36.415421, 30.235716>,  <38.782093, 36.212742, 30.175119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121578, 36.415421, 30.235716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319209, -0.719190, 0.617148,
		0.421654, -0.475424, -0.772127,
		0.848713, 0.506693, 0.151489,
		39.376190, 36.567429, 30.281162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341709, 35.764179, 30.176685>,  <38.782093, 36.212742, 30.175119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341709, 35.764179, 30.176685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494667, 36.076546, 30.374249>,  <39.586441, 36.263966, 30.492786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494667, 36.076546, 30.374249>,  <39.341709, 35.764179, 30.176685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494667, 36.076546, 30.374249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341948, -0.616185, 0.709498,
		0.858396, -0.102419, -0.502660,
		0.382398, 0.780913, 0.493909,
		39.609386, 36.310822, 30.522421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010933, 35.563034, 30.244793>,  <39.341709, 35.764179, 30.176685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010933, 35.563034, 30.244793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895630, 35.832024, 30.517462>,  <39.826447, 35.993420, 30.681063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895630, 35.832024, 30.517462>,  <40.010933, 35.563034, 30.244793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895630, 35.832024, 30.517462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248671, -0.634895, 0.731485,
		0.924700, 0.380370, 0.015789,
		-0.288259, 0.672478, 0.681674,
		39.809151, 36.033768, 30.721964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526798, 35.546322, 30.752798>,  <40.010933, 35.563034, 30.244793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526798, 35.546322, 30.752798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215946, 35.718159, 30.936760>,  <40.029434, 35.821262, 31.047138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215946, 35.718159, 30.936760>,  <40.526798, 35.546322, 30.752798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215946, 35.718159, 30.936760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128305, -0.607280, 0.784059,
		0.616117, 0.668328, 0.416819,
		-0.777134, 0.429592, 0.459906,
		39.982807, 35.847038, 31.074732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770191, 35.772118, 31.465384>,  <40.526798, 35.546322, 30.752798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770191, 35.772118, 31.465384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371307, 35.744541, 31.476772>,  <40.131977, 35.727993, 31.483606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371307, 35.744541, 31.476772>,  <40.770191, 35.772118, 31.465384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371307, 35.744541, 31.476772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060876, -0.531639, 0.844780,
		-0.043106, 0.844160, 0.534355,
		-0.997214, -0.068945, 0.028472,
		40.072144, 35.723858, 31.485313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630253, 36.086555, 32.097443>,  <40.770191, 35.772118, 31.465384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630253, 36.086555, 32.097443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337543, 35.829929, 32.005451>,  <40.161919, 35.675953, 31.950256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337543, 35.829929, 32.005451>,  <40.630253, 36.086555, 32.097443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337543, 35.829929, 32.005451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099069, -0.433988, 0.895455,
		-0.674306, 0.632489, 0.381141,
		-0.731777, -0.641570, -0.229981,
		40.118011, 35.637459, 31.936457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364109, 35.940811, 32.636139>,  <40.630253, 36.086555, 32.097443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364109, 35.940811, 32.636139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141861, 35.658421, 32.460464>,  <40.008511, 35.488987, 32.355061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141861, 35.658421, 32.460464>,  <40.364109, 35.940811, 32.636139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141861, 35.658421, 32.460464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072632, -0.484995, 0.871496,
		-0.828257, 0.516121, 0.218198,
		-0.555622, -0.705974, -0.439187,
		39.975174, 35.446629, 32.328709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708851, 35.856239, 33.007843>,  <40.364109, 35.940811, 32.636139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708851, 35.856239, 33.007843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790443, 35.506073, 32.832550>,  <39.839397, 35.295975, 32.727375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790443, 35.506073, 32.832550>,  <39.708851, 35.856239, 33.007843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790443, 35.506073, 32.832550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107215, -0.464925, 0.878834,
		-0.973086, -0.132282, -0.188693,
		0.203982, -0.875412, -0.438230,
		39.851639, 35.243450, 32.701080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306458, 35.416508, 33.349609>,  <39.708851, 35.856239, 33.007843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306458, 35.416508, 33.349609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556190, 35.157738, 33.174477>,  <39.706032, 35.002476, 33.069397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556190, 35.157738, 33.174477>,  <39.306458, 35.416508, 33.349609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556190, 35.157738, 33.174477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143823, -0.646106, 0.749575,
		-0.767803, -0.405015, -0.496428,
		0.624334, -0.646923, -0.437832,
		39.743492, 34.963661, 33.043125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019619, 34.741428, 33.421864>,  <39.306458, 35.416508, 33.349609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019619, 34.741428, 33.421864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398712, 34.659206, 33.324253>,  <39.626167, 34.609875, 33.265686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398712, 34.659206, 33.324253>,  <39.019619, 34.741428, 33.421864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398712, 34.659206, 33.324253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040308, -0.681558, 0.730653,
		-0.316508, -0.702300, -0.637650,
		0.947733, -0.205555, -0.244027,
		39.683033, 34.597538, 33.251045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000443, 34.009075, 33.422108>,  <39.019619, 34.741428, 33.421864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000443, 34.009075, 33.422108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383526, 34.100445, 33.492096>,  <39.613377, 34.155266, 33.534088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383526, 34.100445, 33.492096>,  <39.000443, 34.009075, 33.422108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383526, 34.100445, 33.492096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044773, -0.718989, 0.693578,
		0.284232, -0.656412, -0.698810,
		0.957709, 0.228425, 0.174970,
		39.670837, 34.168972, 33.544586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453602, 33.328281, 33.304493>,  <39.000443, 34.009075, 33.422108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453602, 33.328281, 33.304493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626583, 33.549686, 33.589199>,  <39.730373, 33.682529, 33.760021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626583, 33.549686, 33.589199>,  <39.453602, 33.328281, 33.304493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626583, 33.549686, 33.589199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092518, -0.757992, 0.645669,
		0.896897, -0.345073, -0.276587,
		0.432453, 0.553510, 0.711766,
		39.756321, 33.715740, 33.802731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102581, 32.989410, 33.500282>,  <39.453602, 33.328281, 33.304493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102581, 32.989410, 33.500282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945782, 33.210445, 33.794487>,  <39.851704, 33.343067, 33.971012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945782, 33.210445, 33.794487>,  <40.102581, 32.989410, 33.500282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945782, 33.210445, 33.794487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192809, -0.831095, 0.521638,
		0.899534, 0.062668, 0.432333,
		-0.392000, 0.552589, 0.735514,
		39.828182, 33.376221, 34.015141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420795, 32.751438, 34.139885>,  <40.102581, 32.989410, 33.500282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420795, 32.751438, 34.139885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260609, 33.092216, 34.274830>,  <40.164497, 33.296684, 34.355797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260609, 33.092216, 34.274830>,  <40.420795, 32.751438, 34.139885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260609, 33.092216, 34.274830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265869, -0.460371, 0.846978,
		0.876894, 0.249489, 0.410868,
		-0.400463, 0.851947, 0.337365,
		40.140469, 33.347801, 34.376038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501408, 32.733337, 34.911720>,  <40.420795, 32.751438, 34.139885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501408, 32.733337, 34.911720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180912, 32.949688, 34.809368>,  <39.988617, 33.079498, 34.747955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180912, 32.949688, 34.809368>,  <40.501408, 32.733337, 34.911720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180912, 32.949688, 34.809368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472311, -0.309161, 0.825434,
		0.367348, 0.782223, 0.503172,
		-0.801235, 0.540875, -0.255883,
		39.940540, 33.111950, 34.732605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257999, 32.926849, 35.497375>,  <40.501408, 32.733337, 34.911720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257999, 32.926849, 35.497375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942593, 33.010181, 35.265915>,  <39.753349, 33.060181, 35.127037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942593, 33.010181, 35.265915>,  <40.257999, 32.926849, 35.497375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942593, 33.010181, 35.265915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615001, -0.272531, 0.739933,
		-0.003552, 0.939322, 0.343018,
		-0.788519, 0.208328, -0.578652,
		39.706036, 33.072681, 35.092319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835251, 33.367691, 35.809017>,  <40.257999, 32.926849, 35.497375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835251, 33.367691, 35.809017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596966, 33.165558, 35.559292>,  <39.453995, 33.044277, 35.409458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596966, 33.165558, 35.559292>,  <39.835251, 33.367691, 35.809017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596966, 33.165558, 35.559292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639232, -0.172355, 0.749450,
		-0.486327, 0.845536, -0.220353,
		-0.595708, -0.505335, -0.624315,
		39.418255, 33.013958, 35.371998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150623, 33.506886, 35.988991>,  <39.835251, 33.367691, 35.809017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150623, 33.506886, 35.988991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097294, 33.166576, 35.785652>,  <39.065296, 32.962391, 35.663651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097294, 33.166576, 35.785652>,  <39.150623, 33.506886, 35.988991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097294, 33.166576, 35.785652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621275, -0.327885, 0.711694,
		-0.772167, 0.410710, -0.484847,
		-0.133326, -0.850770, -0.508345,
		39.057297, 32.911346, 35.633148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430782, 33.326988, 36.142094>,  <39.150623, 33.506886, 35.988991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430782, 33.326988, 36.142094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604153, 32.999268, 35.991951>,  <38.708176, 32.802635, 35.901867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604153, 32.999268, 35.991951>,  <38.430782, 33.326988, 36.142094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604153, 32.999268, 35.991951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575320, -0.572149, 0.584511,
		-0.693648, -0.037393, -0.719343,
		0.433428, -0.819297, -0.375356,
		38.734180, 32.753479, 35.879345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930027, 32.872562, 36.064034>,  <38.430782, 33.326988, 36.142094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930027, 32.872562, 36.064034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276997, 32.675171, 36.089520>,  <38.485176, 32.556736, 36.104813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276997, 32.675171, 36.089520>,  <37.930027, 32.872562, 36.064034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276997, 32.675171, 36.089520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423368, -0.664704, 0.615571,
		-0.261420, -0.560934, -0.785502,
		0.867421, -0.493479, 0.063714,
		38.537224, 32.527126, 36.108635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704346, 32.224705, 35.873047>,  <37.930027, 32.872562, 36.064034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704346, 32.224705, 35.873047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050972, 32.183922, 36.068462>,  <38.258949, 32.159454, 36.185711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050972, 32.183922, 36.068462>,  <37.704346, 32.224705, 35.873047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050972, 32.183922, 36.068462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351411, -0.819738, 0.452260,
		0.354364, -0.563591, -0.746185,
		0.866566, -0.101953, 0.488538,
		38.310944, 32.153336, 36.215023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152279, 31.516178, 35.733219>,  <37.704346, 32.224705, 35.873047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152279, 31.516178, 35.733219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185452, 31.669264, 36.101273>,  <38.205357, 31.761114, 36.322105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185452, 31.669264, 36.101273>,  <38.152279, 31.516178, 35.733219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185452, 31.669264, 36.101273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491763, -0.787355, 0.371809,
		0.866770, -0.483325, 0.122905,
		0.082935, 0.382713, 0.920137,
		38.210331, 31.784079, 36.377316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251923, 30.927465, 36.194099>,  <38.152279, 31.516178, 35.733219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251923, 30.927465, 36.194099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155327, 31.222294, 36.446579>,  <38.097370, 31.399191, 36.598068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155327, 31.222294, 36.446579>,  <38.251923, 30.927465, 36.194099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155327, 31.222294, 36.446579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536968, -0.643289, 0.545751,
		0.808300, -0.207142, 0.551129,
		-0.241487, 0.737069, 0.631199,
		38.082882, 31.443415, 36.635941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127178, 30.568295, 36.821587>,  <38.251923, 30.927465, 36.194099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127178, 30.568295, 36.821587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024845, 30.922804, 36.976025>,  <37.963444, 31.135509, 37.068687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024845, 30.922804, 36.976025>,  <38.127178, 30.568295, 36.821587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024845, 30.922804, 36.976025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548614, -0.461948, 0.696869,
		0.795972, -0.033532, 0.604405,
		-0.255836, 0.886273, 0.386094,
		37.948093, 31.188686, 37.091854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338840, 30.605862, 37.540222>,  <38.127178, 30.568295, 36.821587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338840, 30.605862, 37.540222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030968, 30.840788, 37.440094>,  <37.846245, 30.981743, 37.380016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030968, 30.840788, 37.440094>,  <38.338840, 30.605862, 37.540222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030968, 30.840788, 37.440094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535220, -0.379838, 0.754495,
		0.348046, 0.714692, 0.606695,
		-0.769678, 0.587314, -0.250316,
		37.800064, 31.016983, 37.364998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114334, 31.000504, 38.087696>,  <38.338840, 30.605862, 37.540222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114334, 31.000504, 38.087696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796310, 30.954933, 37.849400>,  <37.605495, 30.927591, 37.706421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796310, 30.954933, 37.849400>,  <38.114334, 31.000504, 38.087696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796310, 30.954933, 37.849400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543366, -0.302669, 0.783036,
		-0.269519, 0.946262, 0.178736,
		-0.795055, -0.113924, -0.595742,
		37.557793, 30.920755, 37.670677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542912, 31.244516, 38.466652>,  <38.114334, 31.000504, 38.087696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542912, 31.244516, 38.466652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386871, 31.041311, 38.159473>,  <37.293247, 30.919388, 37.975166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386871, 31.041311, 38.159473>,  <37.542912, 31.244516, 38.466652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386871, 31.041311, 38.159473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511173, -0.574211, 0.639518,
		-0.765848, 0.642031, -0.035683,
		-0.390101, -0.508014, -0.767947,
		37.269840, 30.888906, 37.929089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859631, 31.388245, 38.503155>,  <37.542912, 31.244516, 38.466652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859631, 31.388245, 38.503155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982582, 31.037786, 38.354626>,  <37.056355, 30.827511, 38.265507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982582, 31.037786, 38.354626>,  <36.859631, 31.388245, 38.503155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982582, 31.037786, 38.354626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478525, -0.479608, 0.735520,
		-0.822515, -0.048394, -0.566680,
		0.307379, -0.876148, -0.371327,
		37.074795, 30.774942, 38.243229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529655, 30.993305, 39.045818>,  <36.859631, 31.388245, 38.503155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529655, 30.993305, 39.045818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238670, 31.265827, 39.013290>,  <36.064079, 31.429340, 38.993774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238670, 31.265827, 39.013290>,  <36.529655, 30.993305, 39.045818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238670, 31.265827, 39.013290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104278, -0.226926, -0.968313,
		-0.678174, -0.695935, 0.236126,
		-0.727466, 0.681308, -0.081325,
		36.020432, 31.470219, 38.988892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404991, 30.344280, 39.536064>,  <36.529655, 30.993305, 39.045818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404991, 30.344280, 39.536064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374973, 30.060028, 39.256245>,  <36.356964, 29.889477, 39.088352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374973, 30.060028, 39.256245>,  <36.404991, 30.344280, 39.536064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374973, 30.060028, 39.256245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466270, 0.595108, -0.654553,
		0.881454, -0.375297, 0.286689,
		-0.075040, -0.710633, -0.699550,
		36.352463, 29.846838, 39.046379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999138, 30.370497, 39.016529>,  <36.404991, 30.344280, 39.536064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999138, 30.370497, 39.016529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770668, 30.092852, 38.841270>,  <36.633587, 29.926264, 38.736115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770668, 30.092852, 38.841270>,  <36.999138, 30.370497, 39.016529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770668, 30.092852, 38.841270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361407, 0.266595, -0.893483,
		0.736985, -0.668681, 0.098586,
		-0.571172, -0.694113, -0.438143,
		36.599316, 29.884617, 38.709827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401138, 29.962505, 38.495991>,  <36.999138, 30.370497, 39.016529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401138, 29.962505, 38.495991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008255, 29.936832, 38.425400>,  <36.772526, 29.921429, 38.383045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008255, 29.936832, 38.425400>,  <37.401138, 29.962505, 38.495991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008255, 29.936832, 38.425400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147495, 0.317952, -0.936564,
		0.116221, -0.945932, -0.302829,
		-0.982211, -0.064182, -0.176473,
		36.713593, 29.917578, 38.372459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399586, 29.558865, 37.893791>,  <37.401138, 29.962505, 38.495991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399586, 29.558865, 37.893791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076069, 29.787975, 37.947140>,  <36.881958, 29.925442, 37.979149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076069, 29.787975, 37.947140>,  <37.399586, 29.558865, 37.893791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076069, 29.787975, 37.947140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179070, 0.455865, -0.871849,
		-0.560174, -0.681259, -0.471265,
		-0.808789, 0.572776, 0.133370,
		36.833431, 29.959808, 37.987152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959087, 29.799913, 37.347187>,  <37.399586, 29.558865, 37.893791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959087, 29.799913, 37.347187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930798, 30.124437, 37.579315>,  <36.913822, 30.319153, 37.718594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930798, 30.124437, 37.579315>,  <36.959087, 29.799913, 37.347187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930798, 30.124437, 37.579315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216337, 0.580405, -0.785065,
		-0.973754, 0.070021, -0.216566,
		-0.070725, 0.811312, 0.580320,
		36.909580, 30.367830, 37.753410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837040, 30.321802, 36.880737>,  <36.959087, 29.799913, 37.347187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837040, 30.321802, 36.880737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975365, 30.490870, 37.215824>,  <37.058361, 30.592310, 37.416874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975365, 30.490870, 37.215824>,  <36.837040, 30.321802, 36.880737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975365, 30.490870, 37.215824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432755, 0.720325, -0.542085,
		-0.832549, 0.549984, 0.066184,
		0.345812, 0.422671, 0.837713,
		37.079109, 30.617670, 37.467136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486557, 30.927189, 36.889103>,  <36.837040, 30.321802, 36.880737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486557, 30.927189, 36.889103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813896, 30.935915, 37.118828>,  <37.010300, 30.941151, 37.256664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813896, 30.935915, 37.118828>,  <36.486557, 30.927189, 36.889103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813896, 30.935915, 37.118828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409567, 0.678903, -0.609382,
		-0.403197, 0.733904, 0.546641,
		0.818344, 0.021815, 0.574314,
		37.059399, 30.942459, 37.291122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745113, 31.699659, 37.078186>,  <36.486557, 30.927189, 36.889103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745113, 31.699659, 37.078186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069633, 31.472757, 37.134773>,  <37.264347, 31.336617, 37.168728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069633, 31.472757, 37.134773>,  <36.745113, 31.699659, 37.078186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069633, 31.472757, 37.134773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556425, 0.674954, -0.484592,
		0.179399, 0.471868, 0.863225,
		0.811300, -0.567255, 0.141473,
		37.313023, 31.302582, 37.177216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156555, 32.227970, 36.978519>,  <36.745113, 31.699659, 37.078186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156555, 32.227970, 36.978519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373035, 31.891615, 36.980198>,  <37.502922, 31.689802, 36.981205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373035, 31.891615, 36.980198>,  <37.156555, 32.227970, 36.978519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373035, 31.891615, 36.980198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782368, 0.501697, -0.369055,
		0.308228, 0.203014, 0.929398,
		0.541199, -0.840884, 0.004194,
		37.535397, 31.639349, 36.981457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741165, 32.415016, 37.424866>,  <37.156555, 32.227970, 36.978519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741165, 32.415016, 37.424866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826668, 32.113853, 37.175888>,  <37.877968, 31.933155, 37.026501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826668, 32.113853, 37.175888>,  <37.741165, 32.415016, 37.424866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826668, 32.113853, 37.175888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824217, 0.481026, -0.298799,
		0.524380, -0.449159, 0.723382,
		0.213757, -0.752908, -0.622445,
		37.890797, 31.887981, 36.989155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394356, 32.259388, 37.601257>,  <37.741165, 32.415016, 37.424866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394356, 32.259388, 37.601257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313164, 32.127079, 37.232609>,  <38.264450, 32.047695, 37.011417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313164, 32.127079, 37.232609>,  <38.394356, 32.259388, 37.601257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313164, 32.127079, 37.232609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786344, 0.505805, -0.354718,
		0.583491, -0.796715, 0.157428,
		-0.202981, -0.330768, -0.921624,
		38.252270, 32.027847, 36.956123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157764, 32.280594, 37.245159>,  <38.394356, 32.259388, 37.601257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157764, 32.280594, 37.245159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916740, 32.127403, 36.965088>,  <38.772125, 32.035488, 36.797047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916740, 32.127403, 36.965088>,  <39.157764, 32.280594, 37.245159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916740, 32.127403, 36.965088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590248, 0.376640, -0.713968,
		0.537147, -0.843488, -0.000898,
		-0.602561, -0.382976, -0.700178,
		38.735973, 32.012512, 36.755035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596546, 32.106983, 36.767021>,  <39.157764, 32.280594, 37.245159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596546, 32.106983, 36.767021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239773, 32.086056, 36.587368>,  <39.025707, 32.073498, 36.479576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239773, 32.086056, 36.587368>,  <39.596546, 32.106983, 36.767021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239773, 32.086056, 36.587368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407210, 0.338836, -0.848157,
		0.196558, -0.939390, -0.280913,
		-0.891933, -0.052322, -0.449129,
		38.972191, 32.070358, 36.452629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633884, 31.780968, 36.165379>,  <39.596546, 32.106983, 36.767021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633884, 31.780968, 36.165379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294804, 31.987228, 36.115574>,  <39.091354, 32.110985, 36.085693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294804, 31.987228, 36.115574>,  <39.633884, 31.780968, 36.165379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294804, 31.987228, 36.115574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321085, 0.311931, -0.894206,
		-0.422263, -0.797998, -0.429993,
		-0.847702, 0.515654, -0.124509,
		39.040493, 32.141926, 36.078220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388489, 31.722965, 35.481106>,  <39.633884, 31.780968, 36.165379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388489, 31.722965, 35.481106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195583, 32.055336, 35.592091>,  <39.079842, 32.254757, 35.658680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195583, 32.055336, 35.592091>,  <39.388489, 31.722965, 35.481106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195583, 32.055336, 35.592091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245731, 0.432325, -0.867589,
		-0.840855, -0.350227, -0.412679,
		-0.482265, 0.830925, 0.277461,
		39.050903, 32.304615, 35.675327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841297, 31.868715, 35.016056>,  <39.388489, 31.722965, 35.481106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841297, 31.868715, 35.016056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997810, 32.190937, 35.194035>,  <39.091717, 32.384270, 35.300823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997810, 32.190937, 35.194035>,  <38.841297, 31.868715, 35.016056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997810, 32.190937, 35.194035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122116, 0.433773, -0.892709,
		-0.912134, 0.403634, 0.071355,
		0.391279, 0.805556, 0.444949,
		39.115192, 32.432606, 35.327518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600071, 32.484497, 34.562767>,  <38.841297, 31.868715, 35.016056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600071, 32.484497, 34.562767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878723, 32.635807, 34.806606>,  <39.045914, 32.726593, 34.952911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878723, 32.635807, 34.806606>,  <38.600071, 32.484497, 34.562767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878723, 32.635807, 34.806606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337764, 0.576710, -0.743856,
		-0.632945, 0.724094, 0.273986,
		0.696632, 0.378277, 0.609598,
		39.087711, 32.749290, 34.989487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653675, 33.223385, 34.329479>,  <38.600071, 32.484497, 34.562767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653675, 33.223385, 34.329479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985359, 33.181595, 34.549114>,  <39.184368, 33.156521, 34.680897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985359, 33.181595, 34.549114>,  <38.653675, 33.223385, 34.329479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985359, 33.181595, 34.549114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501300, 0.573506, -0.647912,
		-0.247217, 0.812512, 0.527928,
		0.829206, -0.104475, 0.549092,
		39.234119, 33.150253, 34.713840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925884, 33.928322, 34.453587>,  <38.653675, 33.223385, 34.329479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925884, 33.928322, 34.453587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223621, 33.670979, 34.525196>,  <39.402264, 33.516571, 34.568161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223621, 33.670979, 34.525196>,  <38.925884, 33.928322, 34.453587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223621, 33.670979, 34.525196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624425, 0.575482, -0.528123,
		0.236748, 0.504889, 0.830083,
		0.744341, -0.643357, 0.179021,
		39.446922, 33.477970, 34.578903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442558, 34.199871, 34.941532>,  <38.925884, 33.928322, 34.453587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442558, 34.199871, 34.941532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566811, 33.930237, 34.673470>,  <39.641361, 33.768456, 34.512630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566811, 33.930237, 34.673470>,  <39.442558, 34.199871, 34.941532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566811, 33.930237, 34.673470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494621, 0.716694, -0.491630,
		0.811701, -0.178758, 0.556047,
		0.310632, -0.674088, -0.670158,
		39.660000, 33.728012, 34.472424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165787, 34.235706, 34.859375>,  <39.442558, 34.199871, 34.941532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165787, 34.235706, 34.859375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036129, 34.077206, 34.515766>,  <39.958332, 33.982105, 34.309601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036129, 34.077206, 34.515766>,  <40.165787, 34.235706, 34.859375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036129, 34.077206, 34.515766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475118, 0.717028, -0.510033,
		0.818041, -0.573462, -0.044159,
		-0.324148, -0.396247, -0.859020,
		39.938885, 33.958332, 34.258060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710045, 34.300110, 34.301426>,  <40.165787, 34.235706, 34.859375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710045, 34.300110, 34.301426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388336, 34.220478, 34.077454>,  <40.195312, 34.172699, 33.943069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388336, 34.220478, 34.077454>,  <40.710045, 34.300110, 34.301426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388336, 34.220478, 34.077454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361106, 0.584594, -0.726534,
		0.471969, -0.786522, -0.398281,
		-0.804268, -0.199080, -0.559928,
		40.147057, 34.160755, 33.909473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862682, 34.610161, 33.734013>,  <40.710045, 34.300110, 34.301426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862682, 34.610161, 33.734013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508953, 34.453266, 33.632721>,  <40.296715, 34.359131, 33.571945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508953, 34.453266, 33.632721>,  <40.862682, 34.610161, 33.734013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508953, 34.453266, 33.632721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039623, 0.477382, -0.877802,
		0.465187, -0.786296, -0.406620,
		-0.884325, -0.392231, -0.253227,
		40.243656, 34.335598, 33.556751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894371, 34.362690, 33.053371>,  <40.862682, 34.610161, 33.734013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894371, 34.362690, 33.053371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503551, 34.432678, 33.101963>,  <40.269058, 34.474670, 33.131119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503551, 34.432678, 33.101963>,  <40.894371, 34.362690, 33.053371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503551, 34.432678, 33.101963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039114, 0.413216, -0.909792,
		-0.209383, -0.893665, -0.396890,
		-0.977051, 0.174971, 0.121475,
		40.210438, 34.485168, 33.138405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702206, 34.153606, 32.500847>,  <40.894371, 34.362690, 33.053371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702206, 34.153606, 32.500847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418259, 34.392509, 32.650173>,  <40.247890, 34.535851, 32.739769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418259, 34.392509, 32.650173>,  <40.702206, 34.153606, 32.500847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418259, 34.392509, 32.650173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141173, 0.398620, -0.906185,
		-0.690041, -0.695975, -0.198651,
		-0.709869, 0.597261, 0.373317,
		40.205299, 34.571690, 32.762169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140388, 34.500843, 32.031181>,  <40.702206, 34.153606, 32.500847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140388, 34.500843, 32.031181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183739, 34.109055, 31.963198>,  <41.209751, 33.873981, 31.922409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183739, 34.109055, 31.963198>,  <41.140388, 34.500843, 32.031181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183739, 34.109055, 31.963198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161501, 0.186039, -0.969179,
		0.980904, 0.077590, 0.178349,
		0.108378, -0.979474, -0.169955,
		41.216251, 33.815212, 31.912210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050594, 35.071579, 32.595478>,  <41.140388, 34.500843, 32.031181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050594, 35.071579, 32.595478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886608, 35.350491, 32.830673>,  <40.788216, 35.517838, 32.971790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886608, 35.350491, 32.830673>,  <41.050594, 35.071579, 32.595478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886608, 35.350491, 32.830673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527047, -0.345038, 0.776641,
		0.744415, 0.628291, -0.226047,
		-0.409962, 0.697280, 0.587990,
		40.763618, 35.559673, 33.007069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505032, 35.626102, 32.863827>,  <41.050594, 35.071579, 32.595478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505032, 35.626102, 32.863827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212040, 35.639008, 33.135838>,  <41.036243, 35.646751, 33.299042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212040, 35.639008, 33.135838>,  <41.505032, 35.626102, 32.863827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212040, 35.639008, 33.135838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649013, -0.268511, 0.711818,
		0.205559, 0.962736, 0.175739,
		-0.732481, 0.032264, 0.680023,
		40.992294, 35.648685, 33.339844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555134, 36.190399, 33.385483>,  <41.505032, 35.626102, 32.863827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555134, 36.190399, 33.385483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406155, 35.849346, 33.532070>,  <41.316765, 35.644714, 33.620022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406155, 35.849346, 33.532070>,  <41.555134, 36.190399, 33.385483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406155, 35.849346, 33.532070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820251, -0.117721, 0.559758,
		-0.434128, 0.509076, 0.743219,
		-0.372452, -0.852633, 0.366464,
		41.294418, 35.593555, 33.642010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462902, 36.201469, 34.146908>,  <41.555134, 36.190399, 33.385483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462902, 36.201469, 34.146908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548115, 35.851170, 33.973618>,  <41.599243, 35.640991, 33.869644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548115, 35.851170, 33.973618>,  <41.462902, 36.201469, 34.146908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548115, 35.851170, 33.973618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809128, -0.090412, 0.580635,
		-0.547659, -0.474227, 0.689332,
		0.213029, -0.875748, -0.433226,
		41.612022, 35.588444, 33.843651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786518, 35.746826, 34.533695>,  <41.462902, 36.201469, 34.146908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786518, 35.746826, 34.533695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931675, 35.558514, 34.212029>,  <42.018768, 35.445526, 34.019028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931675, 35.558514, 34.212029>,  <41.786518, 35.746826, 34.533695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931675, 35.558514, 34.212029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904821, -0.028250, 0.424855,
		-0.222730, -0.881799, 0.415718,
		0.362893, -0.470778, -0.804162,
		42.040543, 35.417278, 33.970779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167244, 35.086193, 34.703884>,  <41.786518, 35.746826, 34.533695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167244, 35.086193, 34.703884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302326, 35.222980, 34.353111>,  <42.383373, 35.305054, 34.142647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302326, 35.222980, 34.353111>,  <42.167244, 35.086193, 34.703884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302326, 35.222980, 34.353111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936595, -0.214652, 0.276973,
		-0.093520, -0.914868, -0.392774,
		0.337703, 0.341968, -0.876935,
		42.403637, 35.325569, 34.090031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314919, 34.521820, 34.302879>,  <42.167244, 35.086193, 34.703884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314919, 34.521820, 34.302879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547928, 34.844376, 34.262074>,  <42.687733, 35.037910, 34.237591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547928, 34.844376, 34.262074>,  <42.314919, 34.521820, 34.302879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547928, 34.844376, 34.262074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801855, -0.549584, 0.234490,
		0.133028, -0.218393, -0.966751,
		0.582522, 0.806388, -0.102010,
		42.722683, 35.086292, 34.231472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816891, 34.432827, 33.765324>,  <42.314919, 34.521820, 34.302879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816891, 34.432827, 33.765324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949318, 34.720833, 34.009281>,  <43.028774, 34.893635, 34.155655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949318, 34.720833, 34.009281>,  <42.816891, 34.432827, 33.765324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949318, 34.720833, 34.009281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911331, -0.411580, -0.008795,
		0.244689, 0.558731, -0.792431,
		0.331063, 0.720015, 0.609898,
		43.048637, 34.936836, 34.192249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416832, 34.871696, 33.460526>,  <42.816891, 34.432827, 33.765324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416832, 34.871696, 33.460526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457047, 34.858727, 33.858288>,  <43.481174, 34.850945, 34.096947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457047, 34.858727, 33.858288>,  <43.416832, 34.871696, 33.460526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457047, 34.858727, 33.858288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974286, -0.199352, -0.105005,
		0.201641, 0.979391, 0.011547,
		0.100539, -0.032424, 0.994405,
		43.487209, 34.848999, 34.156609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021626, 35.246449, 33.639484>,  <43.416832, 34.871696, 33.460526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021626, 35.246449, 33.639484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939064, 34.956974, 33.902901>,  <43.889526, 34.783287, 34.060951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939064, 34.956974, 33.902901>,  <44.021626, 35.246449, 33.639484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939064, 34.956974, 33.902901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977896, -0.175548, 0.113585,
		0.033404, 0.667426, 0.743927,
		-0.206404, -0.723689, 0.658537,
		43.877144, 34.739868, 34.100460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310616, 35.536324, 34.216888>,  <44.021626, 35.246449, 33.639484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310616, 35.536324, 34.216888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277649, 35.138332, 34.194180>,  <44.257870, 34.899536, 34.180553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277649, 35.138332, 34.194180>,  <44.310616, 35.536324, 34.216888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277649, 35.138332, 34.194180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990920, -0.087886, 0.101754,
		-0.106232, -0.047868, 0.993188,
		-0.082416, -0.994980, -0.056770,
		44.252926, 34.839840, 34.177147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735847, 35.040054, 34.735584>,  <44.310616, 35.536324, 34.216888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735847, 35.040054, 34.735584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664543, 34.841946, 34.395481>,  <44.621761, 34.723080, 34.191422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664543, 34.841946, 34.395481>,  <44.735847, 35.040054, 34.735584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664543, 34.841946, 34.395481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933003, -0.359602, 0.013859,
		-0.312617, -0.790820, 0.526189,
		-0.178258, -0.495268, -0.850255,
		44.611065, 34.693367, 34.140404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785183, 34.227165, 34.868870>,  <44.735847, 35.040054, 34.735584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785183, 34.227165, 34.868870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935986, 34.447750, 34.571213>,  <45.026466, 34.580101, 34.392616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935986, 34.447750, 34.571213>,  <44.785183, 34.227165, 34.868870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935986, 34.447750, 34.571213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899969, -0.407997, 0.153602,
		-0.218903, -0.727618, -0.650118,
		0.377010, 0.551462, -0.744146,
		45.049088, 34.613190, 34.347969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188442, 33.852207, 34.409340>,  <44.785183, 34.227165, 34.868870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188442, 33.852207, 34.409340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319645, 34.229877, 34.421658>,  <45.398365, 34.456478, 34.429047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319645, 34.229877, 34.421658>,  <45.188442, 33.852207, 34.409340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319645, 34.229877, 34.421658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922170, -0.327095, 0.206424,
		0.204971, -0.039315, -0.977978,
		0.328007, 0.944173, 0.030790,
		45.418049, 34.513130, 34.430893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824944, 33.959026, 34.054379>,  <45.188442, 33.852207, 34.409340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824944, 33.959026, 34.054379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843800, 34.272377, 34.302280>,  <45.855114, 34.460388, 34.451023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843800, 34.272377, 34.302280>,  <45.824944, 33.959026, 34.054379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843800, 34.272377, 34.302280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961242, -0.204308, 0.185125,
		0.271644, 0.587011, -0.762645,
		0.047145, 0.783375, 0.619759,
		45.857944, 34.507389, 34.488209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259544, 34.549675, 33.809734>,  <45.824944, 33.959026, 34.054379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259544, 34.549675, 33.809734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258984, 34.471523, 34.202026>,  <46.258648, 34.424633, 34.437401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258984, 34.471523, 34.202026>,  <46.259544, 34.549675, 33.809734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258984, 34.471523, 34.202026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998708, 0.049546, 0.011294,
		-0.050798, 0.979475, 0.195059,
		-0.001398, -0.195381, 0.980727,
		46.258564, 34.412910, 34.496243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.485252, 35.130642, 34.176491>,  <46.259544, 34.549675, 33.809734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.485252, 35.130642, 34.176491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569386, 34.798256, 34.382504>,  <46.619865, 34.598824, 34.506111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569386, 34.798256, 34.382504>,  <46.485252, 35.130642, 34.176491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569386, 34.798256, 34.382504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961818, 0.270255, 0.043234,
		-0.175117, 0.486277, 0.856078,
		0.210336, -0.830962, 0.515036,
		46.632484, 34.548969, 34.537014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865555, 35.343895, 34.888504>,  <46.485252, 35.130642, 34.176491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865555, 35.343895, 34.888504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944065, 34.965832, 34.784081>,  <46.991169, 34.738995, 34.721428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944065, 34.965832, 34.784081>,  <46.865555, 35.343895, 34.888504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.944065, 34.965832, 34.784081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973707, 0.219266, -0.061786,
		0.115639, -0.242069, 0.963343,
		0.196272, -0.945159, -0.261060,
		47.002945, 34.682285, 34.705761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.322666, 35.053242, 35.286716>,  <46.865555, 35.343895, 34.888504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.322666, 35.053242, 35.286716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352669, 34.896282, 34.920025>,  <47.370670, 34.802109, 34.700008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352669, 34.896282, 34.920025>,  <47.322666, 35.053242, 35.286716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352669, 34.896282, 34.920025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978314, 0.206949, -0.008539,
		0.193068, -0.896213, 0.399409,
		0.075004, -0.392396, -0.916733,
		47.375172, 34.778564, 34.645004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.799622, 34.526825, 35.239235>,  <47.322666, 35.053242, 35.286716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.799622, 34.526825, 35.239235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772358, 34.726440, 34.893677>,  <47.756001, 34.846210, 34.686340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772358, 34.726440, 34.893677>,  <47.799622, 34.526825, 35.239235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.772358, 34.726440, 34.893677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995909, 0.085524, -0.029173,
		0.059325, -0.862351, -0.502823,
		-0.068161, 0.499036, -0.863897,
		47.751911, 34.876152, 34.634506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.681213, 35.702728, 23.848701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306206, 35.775452, 23.967358>,  <35.081200, 35.819084, 24.038551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306206, 35.775452, 23.967358>,  <35.681213, 35.702728, 23.848701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306206, 35.775452, 23.967358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174152, -0.492890, 0.852485,
		0.301199, 0.850885, 0.430434,
		-0.937523, 0.181806, 0.296642,
		35.024948, 35.829994, 24.056351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573647, 36.162468, 24.474899>,  <35.681213, 35.702728, 23.848701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573647, 36.162468, 24.474899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248192, 35.930370, 24.460413>,  <35.052917, 35.791111, 24.451721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248192, 35.930370, 24.460413>,  <35.573647, 36.162468, 24.474899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248192, 35.930370, 24.460413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245499, -0.399380, 0.883304,
		-0.526993, 0.709800, 0.467400,
		-0.813639, -0.580241, -0.036215,
		35.004101, 35.756298, 24.449549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372871, 36.178379, 25.202581>,  <35.573647, 36.162468, 24.474899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372871, 36.178379, 25.202581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148060, 35.891834, 25.037201>,  <35.013172, 35.719906, 24.937973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148060, 35.891834, 25.037201>,  <35.372871, 36.178379, 25.202581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148060, 35.891834, 25.037201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041781, -0.523822, 0.850802,
		-0.826061, 0.460902, 0.324334,
		-0.562030, -0.716366, -0.413452,
		34.979450, 35.676926, 24.913166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933922, 36.120571, 25.664886>,  <35.372871, 36.178379, 25.202581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933922, 36.120571, 25.664886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911686, 35.781181, 25.454361>,  <34.898346, 35.577549, 25.328047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911686, 35.781181, 25.454361>,  <34.933922, 36.120571, 25.664886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911686, 35.781181, 25.454361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004290, -0.526920, 0.849904,
		-0.998444, 0.049505, 0.025652,
		-0.055591, -0.848472, -0.526313,
		34.895008, 35.526638, 25.296467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532990, 35.770191, 26.102755>,  <34.933922, 36.120571, 25.664886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532990, 35.770191, 26.102755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.689354, 35.486042, 25.868639>,  <34.783173, 35.315552, 25.728168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.689354, 35.486042, 25.868639>,  <34.532990, 35.770191, 26.102755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689354, 35.486042, 25.868639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182103, -0.563630, 0.805704,
		-0.902235, -0.421542, -0.090969,
		0.390911, -0.710369, -0.585291,
		34.806625, 35.272930, 25.693052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212303, 35.225422, 26.225393>,  <34.532990, 35.770191, 26.102755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212303, 35.225422, 26.225393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563847, 35.097507, 26.083782>,  <34.774773, 35.020760, 25.998816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563847, 35.097507, 26.083782>,  <34.212303, 35.225422, 26.225393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563847, 35.097507, 26.083782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164843, -0.492817, 0.854376,
		-0.447688, -0.809239, -0.380405,
		0.878864, -0.319787, -0.354025,
		34.827507, 35.001572, 25.977573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209000, 34.590454, 26.396660>,  <34.212303, 35.225422, 26.225393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209000, 34.590454, 26.396660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595387, 34.650921, 26.312710>,  <34.827221, 34.687202, 26.262341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595387, 34.650921, 26.312710>,  <34.209000, 34.590454, 26.396660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595387, 34.650921, 26.312710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258503, -0.591351, 0.763859,
		-0.008640, -0.792120, -0.610305,
		0.965972, 0.151166, -0.209875,
		34.885178, 34.696270, 26.249748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585869, 33.898876, 26.630426>,  <34.209000, 34.590454, 26.396660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585869, 33.898876, 26.630426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849571, 34.197071, 26.591160>,  <35.007793, 34.375988, 26.567600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849571, 34.197071, 26.591160>,  <34.585869, 33.898876, 26.630426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849571, 34.197071, 26.591160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454325, -0.290894, 0.842003,
		0.599145, -0.599693, -0.530465,
		0.659252, 0.745486, -0.098167,
		35.047348, 34.420715, 26.561710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226555, 33.636444, 26.728249>,  <34.585869, 33.898876, 26.630426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226555, 33.636444, 26.728249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290291, 34.026997, 26.786610>,  <35.328533, 34.261330, 26.821627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.290291, 34.026997, 26.786610>,  <35.226555, 33.636444, 26.728249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290291, 34.026997, 26.786610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450311, -0.203403, 0.869395,
		0.878540, -0.072824, -0.472086,
		0.159336, 0.976383, 0.145904,
		35.338093, 34.319912, 26.830381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984524, 33.819221, 26.975540>,  <35.226555, 33.636444, 26.728249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984524, 33.819221, 26.975540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764675, 34.128181, 27.102859>,  <35.632767, 34.313557, 27.179251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764675, 34.128181, 27.102859>,  <35.984524, 33.819221, 26.975540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764675, 34.128181, 27.102859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341713, -0.139821, 0.929345,
		0.762331, 0.619555, -0.187091,
		-0.549621, 0.772400, 0.318300,
		35.599789, 34.359901, 27.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389236, 34.199230, 27.281195>,  <35.984524, 33.819221, 26.975540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389236, 34.199230, 27.281195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032848, 34.313103, 27.422689>,  <35.819016, 34.381428, 27.507587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032848, 34.313103, 27.422689>,  <36.389236, 34.199230, 27.281195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032848, 34.313103, 27.422689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345899, -0.079155, 0.934927,
		0.294161, 0.955347, -0.027948,
		-0.890968, 0.284686, 0.353738,
		35.765556, 34.398510, 27.528811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501545, 34.801430, 27.658886>,  <36.389236, 34.199230, 27.281195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501545, 34.801430, 27.658886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172642, 34.620243, 27.796703>,  <35.975300, 34.511532, 27.879393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172642, 34.620243, 27.796703>,  <36.501545, 34.801430, 27.658886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172642, 34.620243, 27.796703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432057, -0.102800, 0.895968,
		-0.370425, 0.885581, 0.280235,
		-0.822261, -0.452966, 0.344542,
		35.925964, 34.484352, 27.900066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365322, 35.024143, 28.317945>,  <36.501545, 34.801430, 27.658886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365322, 35.024143, 28.317945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152302, 34.685730, 28.308052>,  <36.024490, 34.482681, 28.302116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152302, 34.685730, 28.308052>,  <36.365322, 35.024143, 28.317945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152302, 34.685730, 28.308052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346390, -0.244517, 0.905663,
		-0.772272, 0.473744, 0.423276,
		-0.532551, -0.846037, -0.024733,
		35.992538, 34.431919, 28.300632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190109, 34.973930, 28.971926>,  <36.365322, 35.024143, 28.317945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190109, 34.973930, 28.971926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062122, 34.605358, 28.883755>,  <35.985329, 34.384216, 28.830853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062122, 34.605358, 28.883755>,  <36.190109, 34.973930, 28.971926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062122, 34.605358, 28.883755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308307, -0.321262, 0.895398,
		-0.895861, 0.218539, 0.386876,
		-0.319968, -0.921429, -0.220429,
		35.966133, 34.328930, 28.817627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627815, 34.764568, 29.494629>,  <36.190109, 34.973930, 28.971926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627815, 34.764568, 29.494629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788280, 34.436287, 29.331896>,  <35.884560, 34.239319, 29.234257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.788280, 34.436287, 29.331896>,  <35.627815, 34.764568, 29.494629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788280, 34.436287, 29.331896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371334, -0.260301, 0.891265,
		-0.837364, -0.508613, 0.200333,
		0.401163, -0.820704, -0.406832,
		35.908630, 34.190075, 29.209846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353615, 34.224339, 29.929031>,  <35.627815, 34.764568, 29.494629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353615, 34.224339, 29.929031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664650, 34.057438, 29.740881>,  <35.851273, 33.957298, 29.627991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664650, 34.057438, 29.740881>,  <35.353615, 34.224339, 29.929031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664650, 34.057438, 29.740881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390444, -0.265959, 0.881374,
		-0.492860, -0.869001, -0.043891,
		0.777587, -0.417257, -0.470377,
		35.897926, 33.932262, 29.599768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381256, 33.505104, 30.194094>,  <35.353615, 34.224339, 29.929031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381256, 33.505104, 30.194094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745949, 33.552303, 30.036703>,  <35.964764, 33.580624, 29.942268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745949, 33.552303, 30.036703>,  <35.381256, 33.505104, 30.194094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745949, 33.552303, 30.036703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408478, -0.361819, 0.837993,
		-0.043487, -0.924751, -0.378080,
		0.911731, 0.117996, -0.393475,
		36.019466, 33.587704, 29.918661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725113, 32.894413, 30.379068>,  <35.381256, 33.505104, 30.194094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725113, 32.894413, 30.379068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948807, 33.222042, 30.327877>,  <36.083023, 33.418617, 30.297163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948807, 33.222042, 30.327877>,  <35.725113, 32.894413, 30.379068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948807, 33.222042, 30.327877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342059, -0.087363, 0.935609,
		0.755148, -0.567003, -0.329027,
		0.559238, 0.819070, -0.127976,
		36.116577, 33.467762, 30.289484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397747, 32.755615, 30.742155>,  <35.725113, 32.894413, 30.379068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397747, 32.755615, 30.742155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395561, 33.153217, 30.698475>,  <36.394249, 33.391777, 30.672266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395561, 33.153217, 30.698475>,  <36.397747, 32.755615, 30.742155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395561, 33.153217, 30.698475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381398, 0.103017, 0.918653,
		0.924395, -0.036633, -0.379674,
		-0.005460, 0.994005, -0.109200,
		36.393925, 33.451420, 30.665714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099812, 33.035480, 30.744307>,  <36.397747, 32.755615, 30.742155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099812, 33.035480, 30.744307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868031, 33.352253, 30.821325>,  <36.728962, 33.542316, 30.867537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868031, 33.352253, 30.821325>,  <37.099812, 33.035480, 30.744307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868031, 33.352253, 30.821325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426905, 0.093680, 0.899431,
		0.694251, 0.603379, -0.392363,
		-0.579455, 0.791933, 0.192548,
		36.694195, 33.589832, 30.879089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540154, 33.509331, 30.979813>,  <37.099812, 33.035480, 30.744307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540154, 33.509331, 30.979813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175335, 33.619579, 31.101278>,  <36.956444, 33.685730, 31.174158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175335, 33.619579, 31.101278>,  <37.540154, 33.509331, 30.979813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175335, 33.619579, 31.101278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290519, -0.088378, 0.952779,
		0.289446, 0.957194, 0.000530,
		-0.912042, 0.275624, 0.303664,
		36.901722, 33.702267, 31.192377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739090, 33.667778, 31.625406>,  <37.540154, 33.509331, 30.979813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739090, 33.667778, 31.625406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341076, 33.643559, 31.656982>,  <37.102268, 33.629028, 31.675928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341076, 33.643559, 31.656982>,  <37.739090, 33.667778, 31.625406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341076, 33.643559, 31.656982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090372, -0.218312, 0.971685,
		-0.041597, 0.973999, 0.222701,
		-0.995039, -0.060545, 0.078941,
		37.042564, 33.625397, 31.680664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513378, 33.855259, 31.590624>,  <37.739090, 33.667778, 31.625406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513378, 33.855259, 31.590624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850124, 33.657211, 31.504719>,  <39.052170, 33.538383, 31.453175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850124, 33.657211, 31.504719>,  <38.513378, 33.855259, 31.590624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850124, 33.657211, 31.504719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193954, 0.093792, -0.976517,
		0.503634, 0.863749, -0.017070,
		0.841864, -0.495118, -0.214764,
		39.102684, 33.508675, 31.440289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951488, 34.252983, 31.112366>,  <38.513378, 33.855259, 31.590624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951488, 34.252983, 31.112366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.118114, 33.898113, 31.032976>,  <39.218090, 33.685192, 30.985342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.118114, 33.898113, 31.032976>,  <38.951488, 34.252983, 31.112366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118114, 33.898113, 31.032976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197848, 0.124613, -0.972279,
		0.887315, 0.444287, -0.123616,
		0.416567, -0.887175, -0.198473,
		39.243084, 33.631962, 30.973434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528847, 34.279247, 30.526340>,  <38.951488, 34.252983, 31.112366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528847, 34.279247, 30.526340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369202, 33.912487, 30.527149>,  <39.273415, 33.692432, 30.527636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369202, 33.912487, 30.527149>,  <39.528847, 34.279247, 30.526340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369202, 33.912487, 30.527149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092707, 0.038158, -0.994962,
		0.912205, -0.397285, -0.100232,
		-0.399108, -0.916901, 0.002023,
		39.249470, 33.637417, 30.527756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875607, 33.949425, 30.074598>,  <39.528847, 34.279247, 30.526340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875607, 33.949425, 30.074598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531445, 33.751339, 30.122715>,  <39.324947, 33.632488, 30.151585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531445, 33.751339, 30.122715>,  <39.875607, 33.949425, 30.074598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531445, 33.751339, 30.122715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168504, 0.053690, -0.984238,
		0.480946, -0.867113, -0.129640,
		-0.860405, -0.495210, 0.120290,
		39.273323, 33.602776, 30.158802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807087, 33.503231, 29.529974>,  <39.875607, 33.949425, 30.074598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807087, 33.503231, 29.529974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440784, 33.501225, 29.690655>,  <39.221004, 33.500019, 29.787064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440784, 33.501225, 29.690655>,  <39.807087, 33.503231, 29.529974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440784, 33.501225, 29.690655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401367, 0.054231, -0.914311,
		-0.017200, -0.998516, -0.051675,
		-0.915756, -0.005015, 0.401704,
		39.166058, 33.499718, 29.811165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441578, 33.083576, 29.057594>,  <39.807087, 33.503231, 29.529974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441578, 33.083576, 29.057594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146786, 33.295742, 29.225176>,  <38.969910, 33.423042, 29.325724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146786, 33.295742, 29.225176>,  <39.441578, 33.083576, 29.057594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146786, 33.295742, 29.225176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536050, -0.081106, -0.840281,
		-0.411718, -0.843850, 0.344102,
		-0.736980, 0.530415, 0.418953,
		38.925694, 33.454868, 29.350863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880527, 32.837524, 28.753180>,  <39.441578, 33.083576, 29.057594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880527, 32.837524, 28.753180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.760605, 33.194637, 28.887674>,  <38.688652, 33.408905, 28.968370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.760605, 33.194637, 28.887674>,  <38.880527, 32.837524, 28.753180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760605, 33.194637, 28.887674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442052, 0.182322, -0.878265,
		-0.845403, -0.411945, 0.339994,
		-0.299808, 0.892783, 0.336236,
		38.670662, 33.462471, 28.988544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110027, 32.969704, 28.825314>,  <38.880527, 32.837524, 28.753180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110027, 32.969704, 28.825314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304409, 33.307655, 28.735847>,  <38.421040, 33.510426, 28.682167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304409, 33.307655, 28.735847>,  <38.110027, 32.969704, 28.825314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304409, 33.307655, 28.735847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595180, 0.132510, -0.792592,
		-0.640007, 0.518285, 0.567249,
		0.485955, 0.844880, -0.223665,
		38.450195, 33.561119, 28.668747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790379, 33.173779, 28.193056>,  <38.110027, 32.969704, 28.825314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790379, 33.173779, 28.193056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.052975, 33.473324, 28.229343>,  <38.210533, 33.653049, 28.251116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.052975, 33.473324, 28.229343>,  <37.790379, 33.173779, 28.193056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052975, 33.473324, 28.229343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343065, 0.403506, -0.848227,
		-0.671808, 0.525731, 0.521805,
		0.656491, 0.748859, 0.090718,
		38.249924, 33.697983, 28.256559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468502, 33.835541, 28.100773>,  <37.790379, 33.173779, 28.193056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468502, 33.835541, 28.100773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853615, 33.898247, 28.012712>,  <38.084682, 33.935871, 27.959875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853615, 33.898247, 28.012712>,  <37.468502, 33.835541, 28.100773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853615, 33.898247, 28.012712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260813, 0.325390, -0.908899,
		-0.070852, 0.932494, 0.354168,
		0.962786, 0.156769, -0.220152,
		38.142452, 33.945278, 27.946667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495430, 34.431808, 27.800417>,  <37.468502, 33.835541, 28.100773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495430, 34.431808, 27.800417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830791, 34.245247, 27.687597>,  <38.032009, 34.133312, 27.619905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830791, 34.245247, 27.687597>,  <37.495430, 34.431808, 27.800417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830791, 34.245247, 27.687597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048886, 0.451044, -0.891162,
		0.542856, 0.760940, 0.355356,
		0.838402, -0.466400, -0.282051,
		38.082314, 34.105328, 27.602982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792881, 34.971996, 27.523710>,  <37.495430, 34.431808, 27.800417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792881, 34.971996, 27.523710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971691, 34.643246, 27.382463>,  <38.078976, 34.445995, 27.297716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971691, 34.643246, 27.382463>,  <37.792881, 34.971996, 27.523710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971691, 34.643246, 27.382463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092180, 0.434976, -0.895711,
		0.889759, 0.367855, 0.270206,
		0.447025, -0.821875, -0.353115,
		38.105797, 34.396683, 27.276529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378944, 35.173492, 27.015701>,  <37.792881, 34.971996, 27.523710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378944, 35.173492, 27.015701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.297119, 34.792995, 26.923367>,  <38.248024, 34.564697, 26.867966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.297119, 34.792995, 26.923367>,  <38.378944, 35.173492, 27.015701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297119, 34.792995, 26.923367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041182, 0.243976, -0.968907,
		0.977988, -0.188692, -0.089082,
		-0.204558, -0.951247, -0.230835,
		38.235752, 34.507622, 26.854116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850487, 35.059978, 26.391582>,  <38.378944, 35.173492, 27.015701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850487, 35.059978, 26.391582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590469, 34.756233, 26.402994>,  <38.434460, 34.573986, 26.409842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590469, 34.756233, 26.402994>,  <38.850487, 35.059978, 26.391582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590469, 34.756233, 26.402994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183075, 0.120059, -0.975740,
		0.737518, -0.639492, -0.217064,
		-0.650039, -0.759365, 0.028529,
		38.395458, 34.528423, 26.411552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009724, 34.615780, 25.825756>,  <38.850487, 35.059978, 26.391582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009724, 34.615780, 25.825756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633621, 34.539986, 25.938906>,  <38.407959, 34.494507, 26.006796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633621, 34.539986, 25.938906>,  <39.009724, 34.615780, 25.825756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633621, 34.539986, 25.938906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309939, 0.132457, -0.941484,
		0.140983, -0.972897, -0.183288,
		-0.940246, -0.189541, 0.282865,
		38.351543, 34.483139, 26.023767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709068, 34.445721, 25.215416>,  <39.009724, 34.615780, 25.825756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709068, 34.445721, 25.215416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.369724, 34.516724, 25.414925>,  <38.166119, 34.559326, 25.534630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.369724, 34.516724, 25.414925>,  <38.709068, 34.445721, 25.215416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369724, 34.516724, 25.414925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452625, 0.245496, -0.857241,
		-0.274612, -0.953007, -0.127926,
		-0.848363, 0.177506, 0.498771,
		38.115215, 34.569977, 25.564556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181984, 34.215477, 24.819113>,  <38.709068, 34.445721, 25.215416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181984, 34.215477, 24.819113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013096, 34.488029, 25.058260>,  <37.911762, 34.651562, 25.201748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013096, 34.488029, 25.058260>,  <38.181984, 34.215477, 24.819113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013096, 34.488029, 25.058260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483527, 0.388592, -0.784346,
		-0.766766, -0.620254, 0.165394,
		-0.422223, 0.681382, 0.597869,
		37.886429, 34.692444, 25.237621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531517, 34.197502, 24.635679>,  <38.181984, 34.215477, 24.819113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531517, 34.197502, 24.635679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568352, 34.561169, 24.798132>,  <37.590454, 34.779369, 24.895603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568352, 34.561169, 24.798132>,  <37.531517, 34.197502, 24.635679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568352, 34.561169, 24.798132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300102, 0.414240, -0.859270,
		-0.949452, -0.042751, 0.310988,
		0.092089, 0.909163, 0.406130,
		37.595978, 34.833920, 24.919971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.831013, 34.560089, 24.530975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107113, 34.843384, 24.590244>,  <37.272774, 35.013363, 24.625805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107113, 34.843384, 24.590244>,  <36.831013, 34.560089, 24.530975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107113, 34.843384, 24.590244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311117, 0.475381, -0.822934,
		-0.653272, 0.521929, 0.548476,
		0.690248, 0.708239, 0.148172,
		37.314186, 35.055855, 24.634695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489079, 35.185040, 24.327549>,  <36.831013, 34.560089, 24.530975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489079, 35.185040, 24.327549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864613, 35.322693, 24.332619>,  <37.089931, 35.405285, 24.335661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864613, 35.322693, 24.332619>,  <36.489079, 35.185040, 24.327549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864613, 35.322693, 24.332619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211504, 0.605274, -0.767404,
		-0.271760, 0.717786, 0.641038,
		0.938836, 0.344132, 0.012675,
		37.146263, 35.425934, 24.336422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362843, 35.866837, 24.279755>,  <36.489079, 35.185040, 24.327549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362843, 35.866837, 24.279755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742016, 35.837765, 24.155727>,  <36.969521, 35.820320, 24.081312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742016, 35.837765, 24.155727>,  <36.362843, 35.866837, 24.279755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742016, 35.837765, 24.155727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202297, 0.614538, -0.762509,
		0.245967, 0.785532, 0.567837,
		0.947933, -0.072681, -0.310067,
		37.026394, 35.815960, 24.062708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527287, 36.514256, 24.092968>,  <36.362843, 35.866837, 24.279755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527287, 36.514256, 24.092968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801880, 36.277847, 23.923529>,  <36.966637, 36.136002, 23.821865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801880, 36.277847, 23.923529>,  <36.527287, 36.514256, 24.092968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801880, 36.277847, 23.923529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012702, 0.592207, -0.805686,
		0.727036, 0.547708, 0.414046,
		0.686481, -0.591022, -0.423599,
		37.007824, 36.100540, 23.796450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080494, 36.894337, 23.903053>,  <36.527287, 36.514256, 24.092968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080494, 36.894337, 23.903053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096611, 36.585480, 23.649385>,  <37.106281, 36.400166, 23.497185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096611, 36.585480, 23.649385>,  <37.080494, 36.894337, 23.903053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096611, 36.585480, 23.649385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048057, 0.635448, -0.770647,
		0.998032, 0.000576, 0.062711,
		0.040294, -0.772143, -0.634170,
		37.108700, 36.353836, 23.459135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461372, 37.086784, 23.276031>,  <37.080494, 36.894337, 23.903053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461372, 37.086784, 23.276031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268818, 36.760082, 23.148802>,  <37.153286, 36.564060, 23.072464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268818, 36.760082, 23.148802>,  <37.461372, 37.086784, 23.276031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268818, 36.760082, 23.148802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094919, 0.409333, -0.907435,
		0.871352, -0.406638, -0.274574,
		-0.481389, -0.816757, -0.318075,
		37.124401, 36.515057, 23.053379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768986, 36.837879, 22.706842>,  <37.461372, 37.086784, 23.276031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768986, 36.837879, 22.706842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390064, 36.714363, 22.672743>,  <37.162712, 36.640251, 22.652283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390064, 36.714363, 22.672743>,  <37.768986, 36.837879, 22.706842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390064, 36.714363, 22.672743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040724, 0.380035, -0.924075,
		0.317742, -0.871907, -0.372584,
		-0.947302, -0.308791, -0.085246,
		37.105873, 36.621727, 22.647169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669067, 36.746391, 22.033560>,  <37.768986, 36.837879, 22.706842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669067, 36.746391, 22.033560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292419, 36.748131, 22.168217>,  <37.066429, 36.749172, 22.249010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292419, 36.748131, 22.168217>,  <37.669067, 36.746391, 22.033560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292419, 36.748131, 22.168217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287236, 0.511213, -0.810035,
		-0.175616, -0.859443, -0.480122,
		-0.941624, 0.004347, 0.336640,
		37.009933, 36.749435, 22.269209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204887, 36.339462, 21.639753>,  <37.669067, 36.746391, 22.033560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204887, 36.339462, 21.639753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944740, 36.590214, 21.811357>,  <36.788654, 36.740665, 21.914320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944740, 36.590214, 21.811357>,  <37.204887, 36.339462, 21.639753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944740, 36.590214, 21.811357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221802, 0.383445, -0.896535,
		-0.726518, -0.678230, -0.110337,
		-0.650365, 0.626876, 0.429012,
		36.749630, 36.778278, 21.940062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601334, 36.333405, 21.192200>,  <37.204887, 36.339462, 21.639753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601334, 36.333405, 21.192200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565327, 36.676697, 21.394323>,  <36.543724, 36.882671, 21.515598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.565327, 36.676697, 21.394323>,  <36.601334, 36.333405, 21.192200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565327, 36.676697, 21.394323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127292, 0.493295, -0.860498,
		-0.987772, -0.141781, 0.064841,
		-0.090017, 0.858230, 0.505310,
		36.538322, 36.934166, 21.545916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028969, 36.686123, 21.022175>,  <36.601334, 36.333405, 21.192200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028969, 36.686123, 21.022175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254818, 36.989662, 21.152004>,  <36.390327, 37.171787, 21.229902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254818, 36.989662, 21.152004>,  <36.028969, 36.686123, 21.022175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254818, 36.989662, 21.152004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140391, 0.475832, -0.868260,
		-0.813320, 0.444673, 0.375202,
		0.564625, 0.758848, 0.324575,
		36.424206, 37.217316, 21.249376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606052, 37.311909, 21.006498>,  <36.028969, 36.686123, 21.022175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606052, 37.311909, 21.006498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984318, 37.440685, 21.024672>,  <36.211277, 37.517952, 21.035576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984318, 37.440685, 21.024672>,  <35.606052, 37.311909, 21.006498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984318, 37.440685, 21.024672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113372, 0.457472, -0.881967,
		-0.304728, 0.828897, 0.469116,
		0.945668, 0.321945, 0.045431,
		36.268017, 37.537270, 21.038301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500374, 38.000969, 20.585394>,  <35.606052, 37.311909, 21.006498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500374, 38.000969, 20.585394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894043, 37.939602, 20.620865>,  <36.130245, 37.902782, 20.642147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894043, 37.939602, 20.620865>,  <35.500374, 38.000969, 20.585394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894043, 37.939602, 20.620865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166852, 0.633756, -0.755324,
		0.059682, 0.758166, 0.649324,
		0.984174, -0.153421, 0.088678,
		36.189297, 37.893578, 20.647469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730648, 38.629932, 20.502188>,  <35.500374, 38.000969, 20.585394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730648, 38.629932, 20.502188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.038242, 38.389294, 20.415714>,  <36.222801, 38.244911, 20.363831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.038242, 38.389294, 20.415714>,  <35.730648, 38.629932, 20.502188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038242, 38.389294, 20.415714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062480, 0.407289, -0.911160,
		0.636200, 0.687166, 0.350789,
		0.768991, -0.601597, -0.216183,
		36.268940, 38.208817, 20.350859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226528, 39.085014, 20.171448>,  <35.730648, 38.629932, 20.502188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226528, 39.085014, 20.171448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311146, 38.706932, 20.071983>,  <36.361916, 38.480083, 20.012304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311146, 38.706932, 20.071983>,  <36.226528, 39.085014, 20.171448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311146, 38.706932, 20.071983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014025, 0.257330, -0.966222,
		0.977268, 0.200909, 0.067692,
		0.211542, -0.945207, -0.248663,
		36.374607, 38.423370, 19.997385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844944, 39.029110, 19.814247>,  <36.226528, 39.085014, 20.171448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844944, 39.029110, 19.814247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615150, 38.730122, 19.680822>,  <36.477276, 38.550728, 19.600767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615150, 38.730122, 19.680822>,  <36.844944, 39.029110, 19.814247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615150, 38.730122, 19.680822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002614, 0.409195, -0.912443,
		0.818514, -0.523309, -0.237028,
		-0.574481, -0.747467, -0.333564,
		36.442806, 38.505882, 19.580753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056984, 39.022091, 19.167385>,  <36.844944, 39.029110, 19.814247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056984, 39.022091, 19.167385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731701, 38.789715, 19.153488>,  <36.536530, 38.650291, 19.145149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731701, 38.789715, 19.153488>,  <37.056984, 39.022091, 19.167385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731701, 38.789715, 19.153488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136621, 0.248592, -0.958925,
		0.565712, -0.775057, -0.281525,
		-0.813206, -0.580937, -0.034742,
		36.487740, 38.615433, 19.143066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067822, 38.617962, 18.578524>,  <37.056984, 39.022091, 19.167385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067822, 38.617962, 18.578524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678310, 38.586632, 18.663961>,  <36.444603, 38.567833, 18.715223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678310, 38.586632, 18.663961>,  <37.067822, 38.617962, 18.578524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678310, 38.586632, 18.663961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227458, 0.316800, -0.920815,
		0.004453, -0.945253, -0.326308,
		-0.973778, -0.078322, 0.213595,
		36.386177, 38.563133, 18.728041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690216, 38.414566, 18.036533>,  <37.067822, 38.617962, 18.578524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690216, 38.414566, 18.036533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.372810, 38.552223, 18.237293>,  <36.182369, 38.634819, 18.357750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.372810, 38.552223, 18.237293>,  <36.690216, 38.414566, 18.036533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372810, 38.552223, 18.237293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319791, 0.465881, -0.825039,
		-0.517759, -0.815181, -0.259627,
		-0.793511, 0.344145, 0.501901,
		36.134758, 38.655468, 18.387863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151974, 38.210110, 17.656288>,  <36.690216, 38.414566, 18.036533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151974, 38.210110, 17.656288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035564, 38.510479, 17.893414>,  <35.965721, 38.690701, 18.035688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035564, 38.510479, 17.893414>,  <36.151974, 38.210110, 17.656288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035564, 38.510479, 17.893414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411954, 0.460891, -0.786049,
		-0.863482, -0.472967, 0.175216,
		-0.291020, 0.750920, 0.592812,
		35.948257, 38.735756, 18.071257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497272, 38.417248, 17.431639>,  <36.151974, 38.210110, 17.656288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497272, 38.417248, 17.431639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646976, 38.734585, 17.623693>,  <35.736797, 38.924988, 17.738926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646976, 38.734585, 17.623693>,  <35.497272, 38.417248, 17.431639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646976, 38.734585, 17.623693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339146, 0.598999, -0.725383,
		-0.863082, 0.108644, 0.493241,
		0.374259, 0.793346, 0.480139,
		35.759254, 38.972588, 17.767735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988949, 38.956303, 17.401129>,  <35.497272, 38.417248, 17.431639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988949, 38.956303, 17.401129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337048, 39.141399, 17.468697>,  <35.545906, 39.252457, 17.509237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337048, 39.141399, 17.468697>,  <34.988949, 38.956303, 17.401129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337048, 39.141399, 17.468697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112867, 0.521083, -0.846010,
		-0.479507, 0.717175, 0.505701,
		0.870250, 0.462745, 0.168917,
		35.598122, 39.280224, 17.519371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943092, 39.668114, 17.263123>,  <34.988949, 38.956303, 17.401129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943092, 39.668114, 17.263123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326721, 39.570225, 17.206141>,  <35.556900, 39.511490, 17.171951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326721, 39.570225, 17.206141>,  <34.943092, 39.668114, 17.263123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326721, 39.570225, 17.206141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039110, 0.383780, -0.922596,
		0.280453, 0.890406, 0.358501,
		0.959071, -0.244724, -0.142456,
		35.614441, 39.496807, 17.163404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354317, 40.145565, 17.148026>,  <34.943092, 39.668114, 17.263123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354317, 40.145565, 17.148026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011436, 40.338509, 17.220175>,  <33.805710, 40.454273, 17.263464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011436, 40.338509, 17.220175>,  <34.354317, 40.145565, 17.148026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011436, 40.338509, 17.220175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007068, -0.339202, 0.940687,
		0.514932, 0.807633, 0.287355,
		-0.857202, 0.482359, 0.180374,
		33.754276, 40.483215, 17.274286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513340, 40.589451, 17.710236>,  <34.354317, 40.145565, 17.148026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513340, 40.589451, 17.710236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.120415, 40.514786, 17.704302>,  <33.884659, 40.469986, 17.700743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.120415, 40.514786, 17.704302>,  <34.513340, 40.589451, 17.710236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120415, 40.514786, 17.704302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015731, -0.161202, 0.986796,
		-0.186586, 0.969109, 0.161287,
		-0.982313, -0.186659, -0.014833,
		33.825722, 40.458790, 17.699852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143311, 40.931503, 18.276196>,  <34.513340, 40.589451, 17.710236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143311, 40.931503, 18.276196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.922527, 40.613602, 18.175236>,  <33.790058, 40.422859, 18.114660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.922527, 40.613602, 18.175236>,  <34.143311, 40.931503, 18.276196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922527, 40.613602, 18.175236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065011, -0.260751, 0.963215,
		-0.831337, 0.548059, 0.092254,
		-0.551954, -0.794758, -0.252402,
		33.756943, 40.375175, 18.099516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676701, 40.940079, 18.756685>,  <34.143311, 40.931503, 18.276196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676701, 40.940079, 18.756685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634483, 40.560734, 18.637041>,  <33.609154, 40.333126, 18.565254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634483, 40.560734, 18.637041>,  <33.676701, 40.940079, 18.756685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634483, 40.560734, 18.637041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093700, -0.289970, 0.952438,
		-0.989990, 0.128551, -0.058256,
		-0.105545, -0.948363, -0.299112,
		33.602821, 40.276226, 18.547308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235764, 40.655003, 19.185772>,  <33.676701, 40.940079, 18.756685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235764, 40.655003, 19.185772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378334, 40.323368, 19.013458>,  <33.463875, 40.124386, 18.910070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378334, 40.323368, 19.013458>,  <33.235764, 40.655003, 19.185772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378334, 40.323368, 19.013458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186584, -0.514938, 0.836675,
		-0.915504, -0.217835, -0.338232,
		0.356425, -0.829088, -0.430784,
		33.485260, 40.074642, 18.884224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786469, 40.218887, 19.407007>,  <33.235764, 40.655003, 19.185772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786469, 40.218887, 19.407007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.115311, 40.012547, 19.310642>,  <33.312614, 39.888741, 19.252823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.115311, 40.012547, 19.310642>,  <32.786469, 40.218887, 19.407007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115311, 40.012547, 19.310642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118039, -0.568388, 0.814249,
		-0.556961, -0.640963, -0.528166,
		0.822107, -0.515850, -0.240911,
		33.361942, 39.857792, 19.238369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691021, 39.402340, 19.558537>,  <32.786469, 40.218887, 19.407007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691021, 39.402340, 19.558537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071556, 39.524708, 19.573324>,  <33.299877, 39.598129, 19.582197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071556, 39.524708, 19.573324>,  <32.691021, 39.402340, 19.558537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071556, 39.524708, 19.573324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110004, -0.449233, 0.886617,
		0.287840, -0.839407, -0.461025,
		0.951340, 0.305918, 0.036969,
		33.356956, 39.616482, 19.584415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063572, 38.775536, 19.685198>,  <32.691021, 39.402340, 19.558537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063572, 38.775536, 19.685198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328690, 39.059189, 19.781393>,  <33.487762, 39.229382, 19.839111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328690, 39.059189, 19.781393>,  <33.063572, 38.775536, 19.685198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328690, 39.059189, 19.781393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286202, -0.536693, 0.793756,
		0.691945, -0.457271, -0.558673,
		0.662797, 0.709129, 0.240490,
		33.527531, 39.271927, 19.853540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781055, 38.444462, 19.612564>,  <33.063572, 38.775536, 19.685198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781055, 38.444462, 19.612564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795685, 38.762039, 19.855320>,  <33.804462, 38.952587, 20.000975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795685, 38.762039, 19.855320>,  <33.781055, 38.444462, 19.612564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795685, 38.762039, 19.855320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367859, -0.575352, 0.730513,
		0.929162, 0.196531, -0.313104,
		0.036576, 0.793943, 0.606891,
		33.806656, 39.000221, 20.037388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514488, 38.388149, 19.993021>,  <33.781055, 38.444462, 19.612564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514488, 38.388149, 19.993021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312809, 38.655460, 20.211811>,  <34.191799, 38.815849, 20.343084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312809, 38.655460, 20.211811>,  <34.514488, 38.388149, 19.993021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312809, 38.655460, 20.211811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400478, -0.380215, 0.833699,
		0.765113, 0.639404, -0.075926,
		-0.504202, 0.668281, 0.546975,
		34.161549, 38.855946, 20.375904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005260, 38.562084, 20.483984>,  <34.514488, 38.388149, 19.993021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005260, 38.562084, 20.483984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654434, 38.666862, 20.645054>,  <34.443939, 38.729729, 20.741695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654434, 38.666862, 20.645054>,  <35.005260, 38.562084, 20.483984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654434, 38.666862, 20.645054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281586, -0.398787, 0.872742,
		0.389195, 0.878835, 0.275999,
		-0.877061, 0.261949, 0.402674,
		34.391315, 38.745449, 20.765856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111221, 38.572895, 21.099871>,  <35.005260, 38.562084, 20.483984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111221, 38.572895, 21.099871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716892, 38.592979, 21.163902>,  <34.480293, 38.605030, 21.202320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716892, 38.592979, 21.163902>,  <35.111221, 38.572895, 21.099871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716892, 38.592979, 21.163902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105463, -0.556587, 0.824068,
		0.130473, 0.829271, 0.543403,
		-0.985827, 0.050210, 0.160077,
		34.421143, 38.608044, 21.211926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067753, 38.615391, 21.756651>,  <35.111221, 38.572895, 21.099871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067753, 38.615391, 21.756651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706951, 38.472191, 21.660128>,  <34.490471, 38.386269, 21.602215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706951, 38.472191, 21.660128>,  <35.067753, 38.615391, 21.756651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706951, 38.472191, 21.660128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034417, -0.616768, 0.786392,
		-0.430361, 0.701021, 0.568646,
		-0.902000, -0.358004, -0.241306,
		34.436352, 38.364788, 21.587736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754692, 38.651291, 22.366972>,  <35.067753, 38.615391, 21.756651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754692, 38.651291, 22.366972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.569599, 38.388058, 22.129383>,  <34.458542, 38.230118, 21.986830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.569599, 38.388058, 22.129383>,  <34.754692, 38.651291, 22.366972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569599, 38.388058, 22.129383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011943, -0.665330, 0.746454,
		-0.886418, 0.352501, 0.300010,
		-0.462731, -0.658087, -0.593971,
		34.430779, 38.190632, 21.951191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265915, 38.345512, 22.765036>,  <34.754692, 38.651291, 22.366972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265915, 38.345512, 22.765036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326977, 38.084881, 22.467812>,  <34.363613, 37.928501, 22.289476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326977, 38.084881, 22.467812>,  <34.265915, 38.345512, 22.765036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326977, 38.084881, 22.467812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206811, -0.714166, 0.668728,
		-0.966399, -0.255756, 0.025735,
		0.152652, -0.651580, -0.743062,
		34.372772, 37.889408, 22.244892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913055, 37.764198, 23.075748>,  <34.265915, 38.345512, 22.765036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913055, 37.764198, 23.075748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.152470, 37.642654, 22.779255>,  <34.296120, 37.569729, 22.601358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.152470, 37.642654, 22.779255>,  <33.913055, 37.764198, 23.075748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152470, 37.642654, 22.779255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301600, -0.771725, 0.559892,
		-0.742151, -0.558672, -0.370266,
		0.598540, -0.303852, -0.741232,
		34.332031, 37.551498, 22.556885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580864, 37.235035, 22.722174>,  <33.913055, 37.764198, 23.075748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580864, 37.235035, 22.722174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975380, 37.204987, 22.663403>,  <34.212090, 37.186958, 22.628139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975380, 37.204987, 22.663403>,  <33.580864, 37.235035, 22.722174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975380, 37.204987, 22.663403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038749, -0.760071, 0.648684,
		-0.160404, -0.645485, -0.746740,
		0.986291, -0.075116, -0.146930,
		34.271267, 37.182453, 22.619324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709862, 36.461510, 22.541056>,  <33.580864, 37.235035, 22.722174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709862, 36.461510, 22.541056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065105, 36.614674, 22.642752>,  <34.278252, 36.706573, 22.703770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065105, 36.614674, 22.642752>,  <33.709862, 36.461510, 22.541056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065105, 36.614674, 22.642752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098565, -0.698937, 0.708359,
		0.448934, -0.604043, -0.658476,
		0.888113, 0.382909, 0.254239,
		34.331539, 36.729546, 22.719023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279022, 36.002655, 22.483471>,  <33.709862, 36.461510, 22.541056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279022, 36.002655, 22.483471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417797, 36.251663, 22.764071>,  <34.501064, 36.401070, 22.932430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417797, 36.251663, 22.764071>,  <34.279022, 36.002655, 22.483471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417797, 36.251663, 22.764071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057823, -0.760732, 0.646485,
		0.936104, -0.183728, -0.299924,
		0.346939, 0.622520, 0.701500,
		34.521877, 36.438419, 22.974520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787239, 35.652561, 22.797026>,  <34.279022, 36.002655, 22.483471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787239, 35.652561, 22.797026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741245, 35.940678, 23.070654>,  <34.713650, 36.113548, 23.234831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741245, 35.940678, 23.070654>,  <34.787239, 35.652561, 22.797026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741245, 35.940678, 23.070654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219781, -0.653128, 0.724652,
		0.968750, 0.233666, -0.083210,
		-0.114980, 0.720294, 0.684073,
		34.706753, 36.156765, 23.275875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357910, 35.560280, 23.215014>,  <34.787239, 35.652561, 22.797026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357910, 35.560280, 23.215014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071781, 35.752781, 23.417677>,  <34.900105, 35.868282, 23.539274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071781, 35.752781, 23.417677>,  <35.357910, 35.560280, 23.215014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071781, 35.752781, 23.417677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159075, -0.593865, 0.788682,
		0.680445, 0.644760, 0.348251,
		-0.715325, 0.481257, 0.506658,
		34.857185, 35.897160, 23.569674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.782898, 33.317261, 26.850790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580929, 33.639217, 26.975500>,  <38.459747, 33.832390, 27.050325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580929, 33.639217, 26.975500>,  <38.782898, 33.317261, 26.850790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580929, 33.639217, 26.975500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380866, -0.116383, 0.917276,
		0.774595, 0.581895, -0.247792,
		-0.504920, 0.804893, 0.311774,
		38.429451, 33.880684, 27.069033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255901, 33.824760, 27.169004>,  <38.782898, 33.317261, 26.850790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255901, 33.824760, 27.169004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.886875, 33.874088, 27.315248>,  <38.665459, 33.903687, 27.402996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.886875, 33.874088, 27.315248>,  <39.255901, 33.824760, 27.169004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886875, 33.874088, 27.315248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337946, -0.199028, 0.919881,
		0.186207, 0.972204, 0.141940,
		-0.922562, 0.123320, 0.365612,
		38.610107, 33.911083, 27.424932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399448, 34.216702, 27.791752>,  <39.255901, 33.824760, 27.169004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399448, 34.216702, 27.791752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007244, 34.145027, 27.823997>,  <38.771923, 34.102024, 27.843346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007244, 34.145027, 27.823997>,  <39.399448, 34.216702, 27.791752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007244, 34.145027, 27.823997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105349, -0.133107, 0.985487,
		-0.165851, 0.974770, 0.149389,
		-0.980508, -0.179182, 0.080615,
		38.713093, 34.091274, 27.848183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118080, 34.671196, 28.250374>,  <39.399448, 34.216702, 27.791752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118080, 34.671196, 28.250374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862831, 34.363426, 28.261641>,  <38.709682, 34.178764, 28.268400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862831, 34.363426, 28.261641>,  <39.118080, 34.671196, 28.250374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862831, 34.363426, 28.261641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055843, 0.082740, 0.995005,
		-0.767909, 0.633361, -0.095764,
		-0.638121, -0.769421, 0.028168,
		38.671394, 34.132599, 28.270090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847065, 34.709835, 28.848921>,  <39.118080, 34.671196, 28.250374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847065, 34.709835, 28.848921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696449, 34.343979, 28.790060>,  <38.606079, 34.124466, 28.754744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696449, 34.343979, 28.790060>,  <38.847065, 34.709835, 28.848921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696449, 34.343979, 28.790060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126436, -0.106618, 0.986228,
		-0.917732, 0.389960, -0.075497,
		-0.376540, -0.914639, -0.147152,
		38.583488, 34.069588, 28.745914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288757, 34.610363, 29.351387>,  <38.847065, 34.709835, 28.848921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288757, 34.610363, 29.351387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405197, 34.245697, 29.235367>,  <38.475063, 34.026897, 29.165754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405197, 34.245697, 29.235367>,  <38.288757, 34.610363, 29.351387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405197, 34.245697, 29.235367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053348, -0.287241, 0.956372,
		-0.955203, -0.293875, -0.034981,
		0.291102, -0.911663, -0.290052,
		38.492527, 33.972198, 29.148352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982628, 34.157932, 29.893707>,  <38.288757, 34.610363, 29.351387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982628, 34.157932, 29.893707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275833, 33.947823, 29.720837>,  <38.451756, 33.821758, 29.617115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275833, 33.947823, 29.720837>,  <37.982628, 34.157932, 29.893707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275833, 33.947823, 29.720837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187279, -0.454954, 0.870600,
		-0.653923, -0.719101, -0.235116,
		0.733016, -0.525273, -0.432177,
		38.495739, 33.790241, 29.591185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902660, 33.545586, 30.158260>,  <37.982628, 34.157932, 29.893707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902660, 33.545586, 30.158260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.286312, 33.543587, 30.045090>,  <38.516502, 33.542389, 29.977188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.286312, 33.543587, 30.045090>,  <37.902660, 33.545586, 30.158260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286312, 33.543587, 30.045090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276220, -0.200520, 0.939944,
		-0.061429, -0.979677, -0.190944,
		0.959129, -0.004997, -0.282924,
		38.574051, 33.542088, 29.960213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216530, 32.887043, 30.417376>,  <37.902660, 33.545586, 30.158260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216530, 32.887043, 30.417376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526463, 33.124420, 30.330233>,  <38.712421, 33.266846, 30.277946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526463, 33.124420, 30.330233>,  <38.216530, 32.887043, 30.417376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526463, 33.124420, 30.330233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468706, -0.308039, 0.827905,
		0.424206, -0.743597, -0.516829,
		0.774832, 0.593443, -0.217856,
		38.758911, 33.302452, 30.264875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776798, 32.423485, 30.538073>,  <38.216530, 32.887043, 30.417376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776798, 32.423485, 30.538073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914825, 32.798832, 30.530161>,  <38.997643, 33.024040, 30.525414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914825, 32.798832, 30.530161>,  <38.776798, 32.423485, 30.538073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914825, 32.798832, 30.530161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571746, -0.193445, 0.797299,
		0.744334, -0.286432, -0.603260,
		0.345070, 0.938369, -0.019779,
		39.018345, 33.080341, 30.524227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494469, 32.370598, 30.809029>,  <38.776798, 32.423485, 30.538073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494469, 32.370598, 30.809029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.430172, 32.762142, 30.859619>,  <39.391594, 32.997070, 30.889973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.430172, 32.762142, 30.859619>,  <39.494469, 32.370598, 30.809029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430172, 32.762142, 30.859619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443388, -0.042871, 0.895304,
		0.881800, 0.199989, -0.427123,
		-0.160739, 0.978860, 0.126476,
		39.381950, 33.055801, 30.897562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116817, 32.691513, 31.130819>,  <39.494469, 32.370598, 30.809029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116817, 32.691513, 31.130819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778484, 32.881565, 31.227827>,  <39.575485, 32.995598, 31.286032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778484, 32.881565, 31.227827>,  <40.116817, 32.691513, 31.130819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778484, 32.881565, 31.227827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233520, -0.078958, 0.969141,
		0.479619, 0.876365, -0.044168,
		-0.845834, 0.475132, 0.242518,
		39.524734, 33.024105, 31.300583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257923, 33.165157, 31.689915>,  <40.116817, 32.691513, 31.130819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257923, 33.165157, 31.689915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865364, 33.089737, 31.704357>,  <39.629829, 33.044483, 31.713022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865364, 33.089737, 31.704357>,  <40.257923, 33.165157, 31.689915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865364, 33.089737, 31.704357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045593, -0.046222, 0.997890,
		-0.186485, 0.980975, 0.053959,
		-0.981399, -0.188551, 0.036106,
		39.570946, 33.033173, 31.715189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960773, 33.548943, 32.357056>,  <40.257923, 33.165157, 31.689915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960773, 33.548943, 32.357056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.731270, 33.235298, 32.262424>,  <39.593567, 33.047112, 32.205647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.731270, 33.235298, 32.262424>,  <39.960773, 33.548943, 32.357056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731270, 33.235298, 32.262424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328654, -0.044151, 0.943418,
		-0.750191, 0.619046, -0.232369,
		-0.573760, -0.784112, -0.236574,
		39.559143, 33.000065, 32.191452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056232, 34.175518, 31.995033>,  <39.960773, 33.548943, 32.357056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056232, 34.175518, 31.995033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.949894, 34.493881, 32.212601>,  <39.886089, 34.684898, 32.343143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.949894, 34.493881, 32.212601>,  <40.056232, 34.175518, 31.995033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949894, 34.493881, 32.212601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109881, 0.535529, -0.837338,
		-0.957733, -0.282370, -0.054912,
		-0.265846, 0.795912, 0.543921,
		39.870140, 34.732655, 32.375778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369331, 34.400009, 31.789661>,  <40.056232, 34.175518, 31.995033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369331, 34.400009, 31.789661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566216, 34.715282, 31.937441>,  <39.684345, 34.904446, 32.026108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566216, 34.715282, 31.937441>,  <39.369331, 34.400009, 31.789661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566216, 34.715282, 31.937441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162815, 0.500292, -0.850411,
		-0.855114, 0.358429, 0.374577,
		0.492210, 0.788185, 0.369450,
		39.713879, 34.951736, 32.048275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976654, 35.002941, 31.623020>,  <39.369331, 34.400009, 31.789661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976654, 35.002941, 31.623020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.336308, 35.160938, 31.698423>,  <39.552101, 35.255737, 31.743666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.336308, 35.160938, 31.698423>,  <38.976654, 35.002941, 31.623020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336308, 35.160938, 31.698423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112111, 0.624199, -0.773180,
		-0.423068, 0.674059, 0.605522,
		0.899135, 0.394994, 0.188509,
		39.606049, 35.279438, 31.754976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770954, 35.704086, 31.625303>,  <38.976654, 35.002941, 31.623020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770954, 35.704086, 31.625303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168598, 35.702103, 31.582008>,  <39.407185, 35.700912, 31.556032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168598, 35.702103, 31.582008>,  <38.770954, 35.704086, 31.625303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168598, 35.702103, 31.582008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073599, 0.702222, -0.708144,
		0.079519, 0.711941, 0.697723,
		0.994113, -0.004960, -0.108238,
		39.466831, 35.700615, 31.549538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066021, 36.373383, 31.768974>,  <38.770954, 35.704086, 31.625303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066021, 36.373383, 31.768974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.344681, 36.207203, 31.535025>,  <39.511875, 36.107494, 31.394655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.344681, 36.207203, 31.535025>,  <39.066021, 36.373383, 31.768974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344681, 36.207203, 31.535025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082773, 0.856360, -0.509702,
		0.712619, 0.306672, 0.630972,
		0.696651, -0.415450, -0.584875,
		39.553677, 36.082569, 31.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560009, 36.918583, 31.670385>,  <39.066021, 36.373383, 31.768974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560009, 36.918583, 31.670385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.638027, 36.652630, 31.381971>,  <39.684837, 36.493057, 31.208923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.638027, 36.652630, 31.381971>,  <39.560009, 36.918583, 31.670385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638027, 36.652630, 31.381971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117497, 0.745702, -0.655838,
		0.973731, 0.043198, 0.223567,
		0.195045, -0.664878, -0.721037,
		39.696541, 36.453167, 31.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945946, 37.288654, 31.236238>,  <39.560009, 36.918583, 31.670385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945946, 37.288654, 31.236238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857677, 36.980267, 30.997271>,  <39.804718, 36.795235, 30.853889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857677, 36.980267, 30.997271>,  <39.945946, 37.288654, 31.236238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857677, 36.980267, 30.997271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113913, 0.628697, -0.769262,
		0.968674, -0.101699, -0.226558,
		-0.220670, -0.770971, -0.597417,
		39.791477, 36.748974, 30.818045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336708, 37.419994, 30.634932>,  <39.945946, 37.288654, 31.236238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336708, 37.419994, 30.634932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.066143, 37.147087, 30.523945>,  <39.903805, 36.983345, 30.457352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.066143, 37.147087, 30.523945>,  <40.336708, 37.419994, 30.634932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066143, 37.147087, 30.523945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198535, 0.531677, -0.823349,
		0.709264, -0.501833, -0.495084,
		-0.676408, -0.682263, -0.277468,
		39.863220, 36.942410, 30.440704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452049, 37.284695, 29.966700>,  <40.336708, 37.419994, 30.634932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452049, 37.284695, 29.966700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.074024, 37.165348, 30.020123>,  <39.847210, 37.093739, 30.052176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.074024, 37.165348, 30.020123>,  <40.452049, 37.284695, 29.966700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074024, 37.165348, 30.020123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232444, 0.326082, -0.916319,
		0.229850, -0.897021, -0.377522,
		-0.945060, -0.298369, 0.133557,
		39.790504, 37.075836, 30.060190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256878, 36.920097, 29.339046>,  <40.452049, 37.284695, 29.966700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256878, 36.920097, 29.339046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922573, 37.068840, 29.500647>,  <39.721989, 37.158085, 29.597607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922573, 37.068840, 29.500647>,  <40.256878, 36.920097, 29.339046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922573, 37.068840, 29.500647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258138, 0.383298, -0.886819,
		-0.484624, -0.845461, -0.224357,
		-0.835766, 0.371858, 0.404001,
		39.671844, 37.180397, 29.621847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810436, 36.746159, 28.812077>,  <40.256878, 36.920097, 29.339046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810436, 36.746159, 28.812077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669582, 37.040665, 29.043221>,  <39.585072, 37.217369, 29.181906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669582, 37.040665, 29.043221>,  <39.810436, 36.746159, 28.812077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669582, 37.040665, 29.043221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320394, 0.485277, -0.813544,
		-0.879405, -0.471615, 0.065014,
		-0.352130, 0.736264, 0.577858,
		39.563942, 37.261543, 29.216578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204971, 37.008186, 28.434811>,  <39.810436, 36.746159, 28.812077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204971, 37.008186, 28.434811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.255325, 37.293530, 28.710573>,  <39.285538, 37.464733, 28.876030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.255325, 37.293530, 28.710573>,  <39.204971, 37.008186, 28.434811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255325, 37.293530, 28.710573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267912, 0.693557, -0.668731,
		-0.955184, -0.100519, 0.278422,
		0.125882, 0.713354, 0.689405,
		39.293091, 37.507534, 28.917395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594933, 37.315842, 28.484734>,  <39.204971, 37.008186, 28.434811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594933, 37.315842, 28.484734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.864262, 37.571175, 28.633953>,  <39.025860, 37.724373, 28.723486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.864262, 37.571175, 28.633953>,  <38.594933, 37.315842, 28.484734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864262, 37.571175, 28.633953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241999, 0.667049, -0.704615,
		-0.698622, 0.384156, 0.603616,
		0.673323, 0.638333, 0.373050,
		39.066257, 37.762676, 28.745869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269165, 37.941444, 28.502089>,  <38.594933, 37.315842, 28.484734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269165, 37.941444, 28.502089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663994, 38.005234, 28.495750>,  <38.900890, 38.043507, 28.491947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663994, 38.005234, 28.495750>,  <38.269165, 37.941444, 28.502089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663994, 38.005234, 28.495750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120816, 0.675544, -0.727354,
		-0.105286, 0.719868, 0.686079,
		0.987076, 0.159469, -0.015846,
		38.960117, 38.053074, 28.490997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813248, 38.161659, 28.988922>,  <38.269165, 37.941444, 28.502089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813248, 38.161659, 28.988922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.547440, 38.432339, 29.115726>,  <37.387955, 38.594746, 29.191809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.547440, 38.432339, 29.115726>,  <37.813248, 38.161659, 28.988922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547440, 38.432339, 29.115726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038903, -0.454979, 0.889652,
		0.746257, 0.578858, 0.328668,
		-0.664519, 0.676696, 0.317012,
		37.348083, 38.635349, 29.210831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026707, 38.329487, 29.740084>,  <37.813248, 38.161659, 28.988922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026707, 38.329487, 29.740084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640690, 38.412365, 29.675879>,  <37.409081, 38.462090, 29.637356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640690, 38.412365, 29.675879>,  <38.026707, 38.329487, 29.740084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640690, 38.412365, 29.675879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255969, -0.613453, 0.747098,
		0.056327, 0.762067, 0.645043,
		-0.965043, 0.207193, -0.160511,
		37.351177, 38.474522, 29.627726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807571, 38.488724, 30.399548>,  <38.026707, 38.329487, 29.740084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807571, 38.488724, 30.399548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.501255, 38.384430, 30.164404>,  <37.317467, 38.321854, 30.023317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.501255, 38.384430, 30.164404>,  <37.807571, 38.488724, 30.399548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501255, 38.384430, 30.164404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401332, -0.520500, 0.753666,
		-0.502489, 0.813078, 0.293953,
		-0.765792, -0.260736, -0.587860,
		37.271519, 38.306210, 29.988047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255421, 38.637409, 30.820511>,  <37.807571, 38.488724, 30.399548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255421, 38.637409, 30.820511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.159588, 38.364140, 30.544577>,  <37.102089, 38.200176, 30.379017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.159588, 38.364140, 30.544577>,  <37.255421, 38.637409, 30.820511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159588, 38.364140, 30.544577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334199, -0.609076, 0.719262,
		-0.911544, 0.402864, -0.082392,
		-0.239582, -0.683174, -0.689836,
		37.087715, 38.159187, 30.337626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649593, 38.424339, 30.997417>,  <37.255421, 38.637409, 30.820511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649593, 38.424339, 30.997417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749638, 38.102821, 30.781507>,  <36.809666, 37.909912, 30.651960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749638, 38.102821, 30.781507>,  <36.649593, 38.424339, 30.997417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749638, 38.102821, 30.781507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488002, -0.586158, 0.646739,
		-0.836240, 0.101655, -0.538859,
		0.250113, -0.803794, -0.539777,
		36.824673, 37.861683, 30.619574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191833, 37.990749, 31.098854>,  <36.649593, 38.424339, 30.997417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191833, 37.990749, 31.098854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437630, 37.739189, 30.908321>,  <36.585106, 37.588253, 30.794003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437630, 37.739189, 30.908321>,  <36.191833, 37.990749, 31.098854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437630, 37.739189, 30.908321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418285, -0.771634, 0.479185,
		-0.668913, -0.095210, -0.737218,
		0.614486, -0.628900, -0.476331,
		36.621975, 37.550518, 30.765423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762531, 37.362030, 30.998804>,  <36.191833, 37.990749, 31.098854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762531, 37.362030, 30.998804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.145134, 37.254089, 30.954485>,  <36.374695, 37.189323, 30.927893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.145134, 37.254089, 30.954485>,  <35.762531, 37.362030, 30.998804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145134, 37.254089, 30.954485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210311, -0.901126, 0.379132,
		-0.202154, -0.339339, -0.918685,
		0.956505, -0.269853, -0.110800,
		36.432087, 37.173134, 30.921246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873440, 36.704048, 30.594379>,  <35.762531, 37.362030, 30.998804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873440, 36.704048, 30.594379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207859, 36.720760, 30.813206>,  <36.408512, 36.730789, 30.944502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207859, 36.720760, 30.813206>,  <35.873440, 36.704048, 30.594379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207859, 36.720760, 30.813206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153995, -0.939147, 0.307065,
		0.526603, -0.340966, -0.778737,
		0.836047, 0.041780, 0.547064,
		36.458672, 36.733295, 30.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227257, 36.068192, 30.478643>,  <35.873440, 36.704048, 30.594379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227257, 36.068192, 30.478643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.353222, 36.212849, 30.829651>,  <36.428802, 36.299644, 31.040257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.353222, 36.212849, 30.829651>,  <36.227257, 36.068192, 30.478643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353222, 36.212849, 30.829651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135703, -0.897906, 0.418747,
		0.939369, -0.250951, -0.233686,
		0.314913, 0.361646, 0.877520,
		36.447697, 36.321342, 31.092907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444828, 35.450451, 30.813723>,  <36.227257, 36.068192, 30.478643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444828, 35.450451, 30.813723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438160, 35.702438, 31.124298>,  <36.434158, 35.853630, 31.310644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438160, 35.702438, 31.124298>,  <36.444828, 35.450451, 30.813723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438160, 35.702438, 31.124298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169461, -0.767094, 0.618748,
		0.985396, -0.121260, 0.119544,
		-0.016672, 0.629970, 0.776441,
		36.433159, 35.891430, 31.357231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776802, 35.076206, 31.311756>,  <36.444828, 35.450451, 30.813723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776802, 35.076206, 31.311756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.546635, 35.342991, 31.501093>,  <36.408535, 35.503063, 31.614695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.546635, 35.342991, 31.501093>,  <36.776802, 35.076206, 31.311756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546635, 35.342991, 31.501093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321316, -0.716582, 0.619085,
		0.752096, 0.204140, 0.626641,
		-0.575420, 0.666961, 0.473344,
		36.374008, 35.543079, 31.643097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813129, 34.925804, 32.056221>,  <36.776802, 35.076206, 31.311756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813129, 34.925804, 32.056221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.476246, 35.123653, 31.970404>,  <36.274117, 35.242363, 31.918913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.476246, 35.123653, 31.970404>,  <36.813129, 34.925804, 32.056221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476246, 35.123653, 31.970404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530004, -0.686551, 0.497738,
		0.098897, 0.532910, 0.840372,
		-0.842208, 0.494626, -0.214547,
		36.223583, 35.272041, 31.906040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.914936, 40.833881, 26.577467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516354, 40.866543, 26.569355>,  <37.277206, 40.886139, 26.564487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516354, 40.866543, 26.569355>,  <37.914936, 40.833881, 26.577467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516354, 40.866543, 26.569355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037582, -0.216335, 0.975596,
		0.075278, 0.972898, 0.218637,
		-0.996454, 0.081658, -0.020278,
		37.217419, 40.891041, 26.563271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650440, 41.366123, 27.131536>,  <37.914936, 40.833881, 26.577467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650440, 41.366123, 27.131536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343971, 41.118790, 27.061522>,  <37.160091, 40.970390, 27.019512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343971, 41.118790, 27.061522>,  <37.650440, 41.366123, 27.131536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343971, 41.118790, 27.061522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053570, -0.209974, 0.976238,
		-0.640397, 0.757345, 0.127752,
		-0.766173, -0.618337, -0.175038,
		37.114120, 40.933289, 27.009010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196308, 41.516590, 27.656715>,  <37.650440, 41.366123, 27.131536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196308, 41.516590, 27.656715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145973, 41.142368, 27.524712>,  <37.115772, 40.917835, 27.445509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145973, 41.142368, 27.524712>,  <37.196308, 41.516590, 27.656715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145973, 41.142368, 27.524712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185044, -0.304679, 0.934307,
		-0.974641, 0.178634, -0.134779,
		-0.125835, -0.935554, -0.330008,
		37.108223, 40.861702, 27.425709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632740, 41.268101, 28.149672>,  <37.196308, 41.516590, 27.656715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632740, 41.268101, 28.149672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813457, 40.956558, 27.975657>,  <36.921890, 40.769630, 27.871246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813457, 40.956558, 27.975657>,  <36.632740, 41.268101, 28.149672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813457, 40.956558, 27.975657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136730, -0.542337, 0.828961,
		-0.881581, -0.315039, -0.351519,
		0.451797, -0.778859, -0.435039,
		36.948997, 40.722900, 27.845144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343857, 40.615643, 28.431131>,  <36.632740, 41.268101, 28.149672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343857, 40.615643, 28.431131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660542, 40.483780, 28.225407>,  <36.850552, 40.404663, 28.101973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660542, 40.483780, 28.225407>,  <36.343857, 40.615643, 28.431131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660542, 40.483780, 28.225407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027888, -0.860528, 0.508639,
		-0.610256, -0.388353, -0.690485,
		0.791713, -0.329656, -0.514313,
		36.898056, 40.384884, 28.071114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153149, 39.994083, 28.366690>,  <36.343857, 40.615643, 28.431131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153149, 39.994083, 28.366690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546917, 39.996758, 28.296404>,  <36.783176, 39.998363, 28.254232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546917, 39.996758, 28.296404>,  <36.153149, 39.994083, 28.366690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546917, 39.996758, 28.296404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105255, -0.822885, 0.558375,
		-0.140858, -0.568169, -0.810767,
		0.984419, 0.006686, -0.175712,
		36.842243, 39.998764, 28.243690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291401, 39.355282, 28.269770>,  <36.153149, 39.994083, 28.366690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291401, 39.355282, 28.269770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656303, 39.486637, 28.367718>,  <36.875244, 39.565449, 28.426487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656303, 39.486637, 28.367718>,  <36.291401, 39.355282, 28.269770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656303, 39.486637, 28.367718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130931, -0.800173, 0.585304,
		0.388142, -0.501883, -0.772955,
		0.912252, 0.328385, 0.244868,
		36.929977, 39.585152, 28.441177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781097, 38.843952, 28.129791>,  <36.291401, 39.355282, 28.269770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781097, 38.843952, 28.129791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931057, 39.079159, 28.416479>,  <37.021034, 39.220284, 28.588491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931057, 39.079159, 28.416479>,  <36.781097, 38.843952, 28.129791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931057, 39.079159, 28.416479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271789, -0.808849, 0.521435,
		0.886329, -0.000691, -0.463055,
		0.374902, 0.588016, 0.716718,
		37.043530, 39.255562, 28.631495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552326, 38.559486, 28.373793>,  <36.781097, 38.843952, 28.129791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552326, 38.559486, 28.373793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368866, 38.783234, 28.649981>,  <37.258789, 38.917480, 28.815693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368866, 38.783234, 28.649981>,  <37.552326, 38.559486, 28.373793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368866, 38.783234, 28.649981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200368, -0.691906, 0.693627,
		0.865734, 0.456478, 0.205262,
		-0.458648, 0.559369, 0.690470,
		37.231270, 38.951046, 28.857122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290031, 38.699833, 28.466970>,  <37.552326, 38.559486, 28.373793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290031, 38.699833, 28.466970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647030, 38.561077, 28.351643>,  <38.861229, 38.477825, 28.282446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647030, 38.561077, 28.351643>,  <38.290031, 38.699833, 28.466970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647030, 38.561077, 28.351643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021810, 0.605262, -0.795727,
		0.450536, 0.716469, 0.532626,
		0.892492, -0.346887, -0.288319,
		38.914776, 38.457012, 28.265146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689552, 39.300617, 28.363419>,  <38.290031, 38.699833, 28.466970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689552, 39.300617, 28.363419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895039, 38.998543, 28.200548>,  <39.018330, 38.817299, 28.102827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895039, 38.998543, 28.200548>,  <38.689552, 39.300617, 28.363419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895039, 38.998543, 28.200548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319280, 0.608770, -0.726264,
		0.796340, 0.243090, 0.553850,
		0.513715, -0.755186, -0.407174,
		39.049152, 38.771988, 28.078396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404819, 39.458431, 28.213310>,  <38.689552, 39.300617, 28.363419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404819, 39.458431, 28.213310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336014, 39.160870, 27.955000>,  <39.294731, 38.982334, 27.800014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336014, 39.160870, 27.955000>,  <39.404819, 39.458431, 28.213310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336014, 39.160870, 27.955000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275170, 0.593166, -0.756594,
		0.945882, -0.307841, 0.102668,
		-0.172012, -0.743900, -0.645774,
		39.284409, 38.937698, 27.761269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074524, 39.430862, 27.757175>,  <39.404819, 39.458431, 28.213310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074524, 39.430862, 27.757175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790489, 39.253559, 27.538340>,  <39.620068, 39.147179, 27.407038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790489, 39.253559, 27.538340>,  <40.074524, 39.430862, 27.757175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790489, 39.253559, 27.538340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403244, 0.380949, -0.832029,
		0.577216, -0.811419, -0.091765,
		-0.710082, -0.443257, -0.547090,
		39.577465, 39.120583, 27.374212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448696, 39.111122, 27.216286>,  <40.074524, 39.430862, 27.757175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448696, 39.111122, 27.216286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075554, 39.123402, 27.072712>,  <39.851669, 39.130768, 26.986568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075554, 39.123402, 27.072712>,  <40.448696, 39.111122, 27.216286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075554, 39.123402, 27.072712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347944, 0.334911, -0.875654,
		0.093329, -0.941749, -0.323106,
		-0.932858, 0.030699, -0.358933,
		39.795696, 39.132610, 26.965033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370918, 38.703358, 26.587065>,  <40.448696, 39.111122, 27.216286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370918, 38.703358, 26.587065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048141, 38.939358, 26.576174>,  <39.854477, 39.080959, 26.569639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048141, 38.939358, 26.576174>,  <40.370918, 38.703358, 26.587065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048141, 38.939358, 26.576174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167058, 0.183786, -0.968666,
		-0.566513, -0.786206, -0.246869,
		-0.806942, 0.590004, -0.027225,
		39.806061, 39.116360, 26.568007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028229, 38.473671, 25.975145>,  <40.370918, 38.703358, 26.587065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028229, 38.473671, 25.975145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867451, 38.826149, 26.074694>,  <39.770985, 39.037636, 26.134422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867451, 38.826149, 26.074694>,  <40.028229, 38.473671, 25.975145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867451, 38.826149, 26.074694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112906, 0.317416, -0.941541,
		-0.908676, -0.350350, -0.227076,
		-0.401946, 0.881194, 0.248872,
		39.746868, 39.090508, 26.149355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669907, 38.685413, 25.377270>,  <40.028229, 38.473671, 25.975145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669907, 38.685413, 25.377270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667034, 39.042732, 25.557035>,  <39.665310, 39.257122, 25.664896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667034, 39.042732, 25.557035>,  <39.669907, 38.685413, 25.377270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667034, 39.042732, 25.557035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020198, 0.449466, -0.893069,
		-0.999770, 0.002668, -0.021269,
		-0.007176, 0.893294, 0.449416,
		39.664883, 39.310719, 25.691860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069839, 39.076576, 25.097647>,  <39.669907, 38.685413, 25.377270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069839, 39.076576, 25.097647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346077, 39.328205, 25.240393>,  <39.511818, 39.479183, 25.326040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346077, 39.328205, 25.240393>,  <39.069839, 39.076576, 25.097647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346077, 39.328205, 25.240393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049013, 0.451582, -0.890882,
		-0.721580, 0.632729, 0.281028,
		0.690594, 0.629069, 0.356864,
		39.553257, 39.516926, 25.347452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852200, 39.704853, 24.907610>,  <39.069839, 39.076576, 25.097647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852200, 39.704853, 24.907610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241959, 39.748653, 24.986155>,  <39.475815, 39.774933, 25.033281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241959, 39.748653, 24.986155>,  <38.852200, 39.704853, 24.907610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241959, 39.748653, 24.986155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130912, 0.433707, -0.891493,
		-0.182786, 0.894375, 0.408268,
		0.974398, 0.109505, 0.196360,
		39.534279, 39.781506, 25.045063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041348, 40.350288, 24.675484>,  <38.852200, 39.704853, 24.907610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041348, 40.350288, 24.675484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413502, 40.218540, 24.739855>,  <39.636795, 40.139492, 24.778479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413502, 40.218540, 24.739855>,  <39.041348, 40.350288, 24.675484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413502, 40.218540, 24.739855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302889, 0.443414, -0.843589,
		0.206492, 0.833608, 0.512308,
		0.930387, -0.329367, 0.160930,
		39.692619, 40.119732, 24.788134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533630, 40.930630, 24.643579>,  <39.041348, 40.350288, 24.675484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533630, 40.930630, 24.643579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730789, 40.593323, 24.557833>,  <39.849087, 40.390938, 24.506384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730789, 40.593323, 24.557833>,  <39.533630, 40.930630, 24.643579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730789, 40.593323, 24.557833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507509, 0.478761, -0.716395,
		0.706742, 0.244317, 0.663946,
		0.492899, -0.843266, -0.214368,
		39.878658, 40.340343, 24.493523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349606, 41.177685, 24.533213>,  <39.533630, 40.930630, 24.643579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349606, 41.177685, 24.533213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287506, 40.824146, 24.356705>,  <40.250248, 40.612022, 24.250799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287506, 40.824146, 24.356705>,  <40.349606, 41.177685, 24.533213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287506, 40.824146, 24.356705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477449, 0.323921, -0.816773,
		0.864836, -0.337485, 0.371702,
		-0.155247, -0.883843, -0.441271,
		40.240932, 40.558994, 24.224323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933689, 40.922173, 24.339359>,  <40.349606, 41.177685, 24.533213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933689, 40.922173, 24.339359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695942, 40.718700, 24.090210>,  <40.553295, 40.596619, 23.940720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695942, 40.718700, 24.090210>,  <40.933689, 40.922173, 24.339359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695942, 40.718700, 24.090210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587771, 0.253838, -0.768174,
		0.548865, -0.822684, 0.148115,
		-0.594367, -0.508682, -0.622873,
		40.517632, 40.566097, 23.903349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.395580, 38.640579, 24.107677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.755150, 38.797707, 24.185278>,  <31.970892, 38.891983, 24.231838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.755150, 38.797707, 24.185278>,  <31.395580, 38.640579, 24.107677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755150, 38.797707, 24.185278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235712, -0.806897, 0.541623,
		0.369295, -0.441149, -0.817929,
		0.898922, 0.392815, 0.193999,
		32.024826, 38.915550, 24.243477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937201, 38.085911, 24.039209>,  <31.395580, 38.640579, 24.107677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937201, 38.085911, 24.039209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113544, 38.360165, 24.270914>,  <32.219349, 38.524719, 24.409937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113544, 38.360165, 24.270914>,  <31.937201, 38.085911, 24.039209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113544, 38.360165, 24.270914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308543, -0.721796, 0.619526,
		0.842879, -0.094396, -0.529759,
		0.440858, 0.685639, 0.579262,
		32.245800, 38.565857, 24.444693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567268, 37.824295, 24.160482>,  <31.937201, 38.085911, 24.039209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567268, 37.824295, 24.160482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.490849, 38.091217, 24.448429>,  <32.444996, 38.251369, 24.621197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.490849, 38.091217, 24.448429>,  <32.567268, 37.824295, 24.160482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490849, 38.091217, 24.448429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446693, -0.593930, 0.669113,
		0.874052, 0.449391, -0.184612,
		-0.191047, 0.667304, 0.719865,
		32.433533, 38.291409, 24.664389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130188, 37.900307, 24.518984>,  <32.567268, 37.824295, 24.160482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130188, 37.900307, 24.518984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.869949, 38.047028, 24.784967>,  <32.713806, 38.135059, 24.944557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.869949, 38.047028, 24.784967>,  <33.130188, 37.900307, 24.518984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869949, 38.047028, 24.784967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392799, -0.586851, 0.708036,
		0.649944, 0.721845, 0.237724,
		-0.650601, 0.366806, 0.664960,
		32.674770, 38.157070, 24.984455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462460, 38.061108, 25.143822>,  <33.130188, 37.900307, 24.518984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462460, 38.061108, 25.143822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.082916, 38.028038, 25.265696>,  <32.855190, 38.008198, 25.338820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.082916, 38.028038, 25.265696>,  <33.462460, 38.061108, 25.143822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082916, 38.028038, 25.265696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291242, -0.601679, 0.743747,
		0.121836, 0.794448, 0.594986,
		-0.948859, -0.082670, 0.304683,
		32.798260, 38.003239, 25.357100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476067, 38.184540, 25.934191>,  <33.462460, 38.061108, 25.143822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476067, 38.184540, 25.934191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.153072, 37.978046, 25.820013>,  <32.959278, 37.854153, 25.751507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.153072, 37.978046, 25.820013>,  <33.476067, 38.184540, 25.934191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153072, 37.978046, 25.820013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245307, -0.733928, 0.633383,
		-0.536467, 0.441425, 0.719269,
		-0.807482, -0.516231, -0.285443,
		32.910828, 37.823177, 25.734381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155914, 38.094181, 26.552052>,  <33.476067, 38.184540, 25.934191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155914, 38.094181, 26.552052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.995518, 37.821003, 26.307825>,  <32.899281, 37.657097, 26.161289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.995518, 37.821003, 26.307825>,  <33.155914, 38.094181, 26.552052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995518, 37.821003, 26.307825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086303, -0.691695, 0.717014,
		-0.912005, 0.234826, 0.336307,
		-0.400996, -0.682945, -0.610564,
		32.875217, 37.616119, 26.124657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590534, 37.599907, 27.001570>,  <33.155914, 38.094181, 26.552052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590534, 37.599907, 27.001570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.666580, 37.399036, 26.664127>,  <32.712208, 37.278515, 26.461662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.666580, 37.399036, 26.664127>,  <32.590534, 37.599907, 27.001570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666580, 37.399036, 26.664127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090557, -0.846644, 0.524398,
		-0.977576, -0.176092, -0.115486,
		0.190118, -0.502180, -0.843605,
		32.723618, 37.248383, 26.411045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198784, 37.027763, 27.100061>,  <32.590534, 37.599907, 27.001570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198784, 37.027763, 27.100061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.441631, 36.909439, 26.805063>,  <32.587341, 36.838444, 26.628065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.441631, 36.909439, 26.805063>,  <32.198784, 37.027763, 27.100061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441631, 36.909439, 26.805063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151216, -0.868149, 0.472706,
		-0.780090, -0.398510, -0.482338,
		0.607119, -0.295815, -0.737496,
		32.623768, 36.820694, 26.583815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037090, 36.331001, 26.769291>,  <32.198784, 37.027763, 27.100061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037090, 36.331001, 26.769291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.429893, 36.390987, 26.723375>,  <32.665573, 36.426979, 26.695826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.429893, 36.390987, 26.723375>,  <32.037090, 36.331001, 26.769291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429893, 36.390987, 26.723375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187067, -0.855785, 0.482325,
		-0.025903, -0.495119, -0.868439,
		0.982005, 0.149962, -0.114788,
		32.724495, 36.435978, 26.688938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303879, 35.744278, 26.523630>,  <32.037090, 36.331001, 26.769291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303879, 35.744278, 26.523630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.605103, 35.924488, 26.715435>,  <32.785835, 36.032616, 26.830517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.605103, 35.924488, 26.715435>,  <32.303879, 35.744278, 26.523630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605103, 35.924488, 26.715435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318981, -0.887402, 0.332819,
		0.575463, -0.097677, -0.811974,
		0.753056, 0.450530, 0.479510,
		32.831020, 36.059647, 26.859287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951996, 35.343044, 26.487886>,  <32.303879, 35.744278, 26.523630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951996, 35.343044, 26.487886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071133, 35.584919, 26.783358>,  <33.142612, 35.730045, 26.960640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071133, 35.584919, 26.783358>,  <32.951996, 35.343044, 26.487886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071133, 35.584919, 26.783358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368546, -0.786639, 0.495351,
		0.880606, 0.124702, -0.457147,
		0.297839, 0.604689, 0.738677,
		33.160484, 35.766327, 27.004961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674408, 35.023674, 26.637522>,  <32.951996, 35.343044, 26.487886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674408, 35.023674, 26.637522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.533092, 35.260868, 26.926950>,  <33.448303, 35.403183, 27.100609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.533092, 35.260868, 26.926950>,  <33.674408, 35.023674, 26.637522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533092, 35.260868, 26.926950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125261, -0.736502, 0.664736,
		0.927090, 0.325480, 0.185921,
		-0.353290, 0.592982, 0.723574,
		33.427105, 35.438763, 27.144022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151100, 34.919491, 27.168175>,  <33.674408, 35.023674, 26.637522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151100, 34.919491, 27.168175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.834759, 35.082741, 27.350595>,  <33.644955, 35.180691, 27.460049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.834759, 35.082741, 27.350595>,  <34.151100, 34.919491, 27.168175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834759, 35.082741, 27.350595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082890, -0.666880, 0.740541,
		0.606369, 0.623460, 0.493573,
		-0.790851, 0.408128, 0.456054,
		33.597504, 35.205181, 27.487411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813072, 35.323757, 27.590290>,  <34.151100, 34.919491, 27.168175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813072, 35.323757, 27.590290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.091602, 35.059891, 27.477167>,  <35.258720, 34.901573, 27.409294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.091602, 35.059891, 27.477167>,  <34.813072, 35.323757, 27.590290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091602, 35.059891, 27.477167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172826, 0.228329, -0.958122,
		0.696610, 0.716038, 0.044984,
		0.696323, -0.659663, -0.282806,
		35.300499, 34.861992, 27.392324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414757, 35.600517, 27.045803>,  <34.813072, 35.323757, 27.590290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414757, 35.600517, 27.045803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391876, 35.207142, 26.977020>,  <35.378147, 34.971115, 26.935751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391876, 35.207142, 26.977020>,  <35.414757, 35.600517, 27.045803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391876, 35.207142, 26.977020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027477, 0.170621, -0.984954,
		0.997984, -0.061066, 0.017262,
		-0.057202, -0.983442, -0.171955,
		35.374714, 34.912109, 26.925434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893291, 35.433460, 26.482845>,  <35.414757, 35.600517, 27.045803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893291, 35.433460, 26.482845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.646290, 35.118999, 26.493116>,  <35.498089, 34.930325, 26.499279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.646290, 35.118999, 26.493116>,  <35.893291, 35.433460, 26.482845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646290, 35.118999, 26.493116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076291, 0.027369, -0.996710,
		0.782860, -0.617430, -0.076877,
		-0.617502, -0.786150, 0.025678,
		35.461040, 34.883156, 26.500820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112717, 34.949173, 26.009386>,  <35.893291, 35.433460, 26.482845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112717, 34.949173, 26.009386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722862, 34.899475, 26.083847>,  <35.488949, 34.869656, 26.128523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722862, 34.899475, 26.083847>,  <36.112717, 34.949173, 26.009386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722862, 34.899475, 26.083847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189696, 0.017239, -0.981691,
		0.118756, -0.992102, -0.040369,
		-0.974634, -0.124240, 0.186150,
		35.430473, 34.862202, 26.139692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916397, 34.587078, 25.387768>,  <36.112717, 34.949173, 26.009386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916397, 34.587078, 25.387768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.578030, 34.700230, 25.568613>,  <35.375008, 34.768120, 25.677120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.578030, 34.700230, 25.568613>,  <35.916397, 34.587078, 25.387768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578030, 34.700230, 25.568613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401215, 0.220959, -0.888934,
		-0.351356, -0.933359, -0.073419,
		-0.845917, 0.282875, 0.452113,
		35.324253, 34.785091, 25.704247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406872, 34.356091, 24.975004>,  <35.916397, 34.587078, 25.387768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406872, 34.356091, 24.975004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.210438, 34.630821, 25.189333>,  <35.092579, 34.795658, 25.317930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.210438, 34.630821, 25.189333>,  <35.406872, 34.356091, 24.975004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210438, 34.630821, 25.189333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353070, 0.405382, -0.843212,
		-0.796355, -0.603269, 0.043423,
		-0.491081, 0.686827, 0.535824,
		35.063114, 34.836868, 25.350080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730255, 34.346573, 24.835930>,  <35.406872, 34.356091, 24.975004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730255, 34.346573, 24.835930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795849, 34.728539, 24.934931>,  <34.835205, 34.957718, 24.994331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795849, 34.728539, 24.934931>,  <34.730255, 34.346573, 24.835930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795849, 34.728539, 24.934931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281310, 0.285748, -0.916086,
		-0.945503, 0.080594, 0.315483,
		0.163980, 0.954910, 0.247503,
		34.845043, 35.015011, 25.009182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331375, 34.681698, 24.381866>,  <34.730255, 34.346573, 24.835930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331375, 34.681698, 24.381866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.546185, 34.976490, 24.546040>,  <34.675072, 35.153366, 24.644543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.546185, 34.976490, 24.546040>,  <34.331375, 34.681698, 24.381866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546185, 34.976490, 24.546040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274366, 0.612691, -0.741171,
		-0.797699, 0.285421, 0.531236,
		0.537028, 0.736984, 0.410433,
		34.707294, 35.197586, 24.669170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867416, 35.207748, 24.188465>,  <34.331375, 34.681698, 24.381866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867416, 35.207748, 24.188465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.229469, 35.353149, 24.276646>,  <34.446701, 35.440392, 24.329554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.229469, 35.353149, 24.276646>,  <33.867416, 35.207748, 24.188465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229469, 35.353149, 24.276646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089520, 0.669894, -0.737040,
		-0.415599, 0.647384, 0.638883,
		0.905132, 0.363506, 0.220453,
		34.501007, 35.462200, 24.342781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739944, 35.973728, 24.287064>,  <33.867416, 35.207748, 24.188465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739944, 35.973728, 24.287064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.124390, 35.901402, 24.203568>,  <34.355057, 35.858006, 24.153469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.124390, 35.901402, 24.203568>,  <33.739944, 35.973728, 24.287064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124390, 35.901402, 24.203568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004797, 0.766677, -0.642015,
		0.276121, 0.616046, 0.737729,
		0.961111, -0.180813, -0.208740,
		34.412724, 35.847157, 24.140945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159008, 36.625671, 24.363403>,  <33.739944, 35.973728, 24.287064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159008, 36.625671, 24.363403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.363411, 36.401501, 24.102695>,  <34.486053, 36.266998, 23.946272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.363411, 36.401501, 24.102695>,  <34.159008, 36.625671, 24.363403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363411, 36.401501, 24.102695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010571, 0.762280, -0.647161,
		0.859514, 0.323811, 0.395451,
		0.511003, -0.560424, -0.651767,
		34.516712, 36.233372, 23.907166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501945, 37.068684, 24.142286>,  <34.159008, 36.625671, 24.363403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501945, 37.068684, 24.142286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.585358, 36.788822, 23.868938>,  <34.635403, 36.620903, 23.704929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.585358, 36.788822, 23.868938>,  <34.501945, 37.068684, 24.142286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585358, 36.788822, 23.868938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024890, 0.702302, -0.711443,
		0.977700, 0.131346, 0.163863,
		0.208527, -0.699657, -0.683372,
		34.647915, 36.578926, 23.663927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141308, 37.265953, 23.744658>,  <34.501945, 37.068684, 24.142286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141308, 37.265953, 23.744658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952324, 36.999130, 23.514244>,  <34.838932, 36.839035, 23.375996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952324, 36.999130, 23.514244>,  <35.141308, 37.265953, 23.744658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952324, 36.999130, 23.514244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237840, 0.532833, -0.812109,
		0.848655, -0.520691, -0.093087,
		-0.472458, -0.667061, -0.576032,
		34.810585, 36.799011, 23.341434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490173, 37.229752, 23.084011>,  <35.141308, 37.265953, 23.744658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490173, 37.229752, 23.084011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123188, 37.100941, 22.990572>,  <34.902996, 37.023655, 22.934509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123188, 37.100941, 22.990572>,  <35.490173, 37.229752, 23.084011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123188, 37.100941, 22.990572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028705, 0.532064, -0.846218,
		0.396790, -0.783077, -0.478904,
		-0.917460, -0.322024, -0.233596,
		34.847950, 37.004333, 22.920492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752895, 36.642384, 22.729235>,  <35.490173, 37.229752, 23.084011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752895, 36.642384, 22.729235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.120785, 36.633831, 22.572441>,  <36.341518, 36.628700, 22.478365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.120785, 36.633831, 22.572441>,  <35.752895, 36.642384, 22.729235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120785, 36.633831, 22.572441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281359, -0.660421, 0.696191,
		-0.273762, -0.750591, -0.601388,
		0.919723, -0.021385, -0.391984,
		36.396702, 36.627415, 22.454845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973637, 35.918026, 22.714970>,  <35.752895, 36.642384, 22.729235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973637, 35.918026, 22.714970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298477, 36.150730, 22.696899>,  <36.493382, 36.290352, 22.686058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298477, 36.150730, 22.696899>,  <35.973637, 35.918026, 22.714970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298477, 36.150730, 22.696899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424613, -0.536073, 0.729610,
		0.400244, -0.611699, -0.682370,
		0.812102, 0.581765, -0.045175,
		36.542107, 36.325260, 22.683346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481995, 35.452339, 22.655502>,  <35.973637, 35.918026, 22.714970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481995, 35.452339, 22.655502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667004, 35.783386, 22.782701>,  <36.778008, 35.982014, 22.859020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667004, 35.783386, 22.782701>,  <36.481995, 35.452339, 22.655502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667004, 35.783386, 22.782701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497506, -0.539147, 0.679564,
		0.733867, -0.156109, -0.661113,
		0.462523, 0.827617, 0.317997,
		36.805759, 36.031670, 22.878101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224331, 35.315861, 22.734926>,  <36.481995, 35.452339, 22.655502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224331, 35.315861, 22.734926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.191368, 35.641953, 22.964226>,  <37.171589, 35.837608, 23.101805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.191368, 35.641953, 22.964226>,  <37.224331, 35.315861, 22.734926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191368, 35.641953, 22.964226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302021, -0.527726, 0.793908,
		0.949733, 0.238557, -0.202727,
		-0.082408, 0.815228, 0.573247,
		37.166645, 35.886520, 23.136200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841888, 35.342354, 23.150496>,  <37.224331, 35.315861, 22.734926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841888, 35.342354, 23.150496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605217, 35.585644, 23.362148>,  <37.463215, 35.731617, 23.489140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605217, 35.585644, 23.362148>,  <37.841888, 35.342354, 23.150496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605217, 35.585644, 23.362148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438138, -0.308350, 0.844367,
		0.676724, 0.731424, -0.084044,
		-0.591675, 0.608226, 0.529133,
		37.427715, 35.768112, 23.520887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258137, 35.612583, 23.594700>,  <37.841888, 35.342354, 23.150496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258137, 35.612583, 23.594700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902901, 35.686062, 23.763248>,  <37.689758, 35.730148, 23.864378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902901, 35.686062, 23.763248>,  <38.258137, 35.612583, 23.594700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902901, 35.686062, 23.763248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391600, -0.177697, 0.902814,
		0.240721, 0.966788, 0.085875,
		-0.888090, 0.183698, 0.421369,
		37.636475, 35.741173, 23.889660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310558, 36.063190, 24.240377>,  <38.258137, 35.612583, 23.594700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310558, 36.063190, 24.240377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966656, 35.861294, 24.271494>,  <37.760315, 35.740154, 24.290163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966656, 35.861294, 24.271494>,  <38.310558, 36.063190, 24.240377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966656, 35.861294, 24.271494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211658, -0.213541, 0.953730,
		-0.464777, 0.836442, 0.290426,
		-0.859758, -0.504743, 0.077790,
		37.708729, 35.709869, 24.294830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207497, 36.046097, 24.983057>,  <38.310558, 36.063190, 24.240377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207497, 36.046097, 24.983057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.934059, 35.772919, 24.880081>,  <37.769997, 35.609013, 24.818295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.934059, 35.772919, 24.880081>,  <38.207497, 36.046097, 24.983057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934059, 35.772919, 24.880081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034974, -0.321670, 0.946206,
		-0.729020, 0.655828, 0.196008,
		-0.683598, -0.682948, -0.257441,
		37.728981, 35.568035, 24.802849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669613, 36.002853, 25.504229>,  <38.207497, 36.046097, 24.983057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669613, 36.002853, 25.504229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677010, 35.649498, 25.316919>,  <37.681446, 35.437485, 25.204535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677010, 35.649498, 25.316919>,  <37.669613, 36.002853, 25.504229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677010, 35.649498, 25.316919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030651, -0.468632, 0.882861,
		-0.999359, -0.001970, -0.035741,
		0.018488, -0.883391, -0.468271,
		37.682556, 35.384480, 25.176437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219776, 35.663666, 25.850027>,  <37.669613, 36.002853, 25.504229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219776, 35.663666, 25.850027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441681, 35.375710, 25.683174>,  <37.574825, 35.202938, 25.583063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441681, 35.375710, 25.683174>,  <37.219776, 35.663666, 25.850027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441681, 35.375710, 25.683174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091738, -0.551224, 0.829298,
		-0.826934, -0.421799, -0.371841,
		0.554765, -0.719887, -0.417131,
		37.608112, 35.159744, 25.558035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963711, 35.065399, 26.153187>,  <37.219776, 35.663666, 25.850027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963711, 35.065399, 26.153187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279785, 34.903065, 25.969492>,  <37.469429, 34.805664, 25.859276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279785, 34.903065, 25.969492>,  <36.963711, 35.065399, 26.153187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279785, 34.903065, 25.969492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028199, -0.724460, 0.688740,
		-0.612211, -0.557187, -0.561018,
		0.790191, -0.405835, -0.459234,
		37.516842, 34.781315, 25.831722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101582, 34.425159, 26.426022>,  <36.963711, 35.065399, 26.153187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101582, 34.425159, 26.426022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472664, 34.395103, 26.279749>,  <37.695312, 34.377068, 26.191986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472664, 34.395103, 26.279749>,  <37.101582, 34.425159, 26.426022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472664, 34.395103, 26.279749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252215, -0.596020, 0.762330,
		-0.275237, -0.799446, -0.533977,
		0.927703, -0.075144, -0.365679,
		37.750977, 34.372559, 26.170046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399155, 33.650280, 26.427687>,  <37.101582, 34.425159, 26.426022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399155, 33.650280, 26.427687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714310, 33.896603, 26.425919>,  <37.903400, 34.044395, 26.424858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714310, 33.896603, 26.425919>,  <37.399155, 33.650280, 26.427687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714310, 33.896603, 26.425919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355868, -0.449425, 0.819375,
		0.502592, -0.647144, -0.573241,
		0.787883, 0.615809, -0.004420,
		37.950676, 34.081345, 26.424593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988354, 33.248997, 26.599947>,  <37.399155, 33.650280, 26.427687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988354, 33.248997, 26.599947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.057625, 33.633766, 26.684536>,  <38.099186, 33.864628, 26.735289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.057625, 33.633766, 26.684536>,  <37.988354, 33.248997, 26.599947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057625, 33.633766, 26.684536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357060, -0.261429, 0.896751,
		0.917888, -0.079788, -0.388737,
		0.173177, 0.961919, 0.211473,
		38.109577, 33.922340, 26.747978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.718338, 39.627529, 22.166344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470333, 39.839485, 22.397791>,  <40.321529, 39.966660, 22.536659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470333, 39.839485, 22.397791>,  <40.718338, 39.627529, 22.166344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470333, 39.839485, 22.397791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778517, -0.323883, -0.537598,
		-0.097464, -0.783781, 0.613341,
		-0.620010, 0.529893, 0.578620,
		40.284328, 39.998455, 22.571377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062885, 39.341843, 22.086634>,  <40.718338, 39.627529, 22.166344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062885, 39.341843, 22.086634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.961826, 39.677189, 22.279846>,  <39.901192, 39.878395, 22.395773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.961826, 39.677189, 22.279846>,  <40.062885, 39.341843, 22.086634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961826, 39.677189, 22.279846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901020, -0.021928, -0.433223,
		-0.352606, -0.544674, 0.760920,
		-0.252651, 0.838361, 0.483030,
		39.886032, 39.928696, 22.424755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327152, 39.355633, 22.437941>,  <40.062885, 39.341843, 22.086634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327152, 39.355633, 22.437941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404587, 39.744473, 22.384953>,  <39.451046, 39.977776, 22.353161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404587, 39.744473, 22.384953>,  <39.327152, 39.355633, 22.437941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404587, 39.744473, 22.384953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908254, 0.126519, -0.398833,
		-0.370946, 0.197522, 0.907405,
		0.193582, 0.972100, -0.132468,
		39.462662, 40.036102, 22.345213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726707, 39.642189, 22.577127>,  <39.327152, 39.355633, 22.437941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726707, 39.642189, 22.577127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.907360, 39.937294, 22.376434>,  <39.015751, 40.114357, 22.256020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.907360, 39.937294, 22.376434>,  <38.726707, 39.642189, 22.577127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907360, 39.937294, 22.376434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878876, 0.271028, -0.392582,
		-0.153649, 0.618261, 0.770808,
		0.451629, 0.737765, -0.501732,
		39.042850, 40.158623, 22.225914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232418, 40.099247, 22.480631>,  <38.726707, 39.642189, 22.577127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232418, 40.099247, 22.480631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507065, 40.183167, 22.202194>,  <38.671852, 40.233517, 22.035131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507065, 40.183167, 22.202194>,  <38.232418, 40.099247, 22.480631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507065, 40.183167, 22.202194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722159, 0.086277, -0.686326,
		-0.083931, 0.973931, 0.210745,
		0.686617, 0.209795, -0.696092,
		38.713051, 40.246105, 21.993366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019756, 40.578327, 22.074944>,  <38.232418, 40.099247, 22.480631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019756, 40.578327, 22.074944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.283783, 40.421299, 21.818758>,  <38.442200, 40.327080, 21.665047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.283783, 40.421299, 21.818758>,  <38.019756, 40.578327, 22.074944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283783, 40.421299, 21.818758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534982, 0.352863, -0.767647,
		0.527353, 0.849338, 0.022895,
		0.660070, -0.392573, -0.640464,
		38.481804, 40.303528, 21.626619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187485, 41.031582, 21.584677>,  <38.019756, 40.578327, 22.074944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187485, 41.031582, 21.584677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.285336, 40.704964, 21.375526>,  <38.344048, 40.508991, 21.250036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.285336, 40.704964, 21.375526>,  <38.187485, 41.031582, 21.584677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285336, 40.704964, 21.375526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535614, 0.335717, -0.774862,
		0.808253, 0.469616, -0.355229,
		0.244631, -0.816550, -0.522878,
		38.358727, 40.459999, 21.218662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320534, 41.262028, 20.931156>,  <38.187485, 41.031582, 21.584677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320534, 41.262028, 20.931156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.244019, 40.876690, 20.855930>,  <38.198109, 40.645485, 20.810795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.244019, 40.876690, 20.855930>,  <38.320534, 41.262028, 20.931156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244019, 40.876690, 20.855930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375791, 0.248883, -0.892658,
		0.906747, -0.100082, -0.409626,
		-0.191288, -0.963348, -0.188064,
		38.186630, 40.587685, 20.799511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419228, 41.165840, 20.204205>,  <38.320534, 41.262028, 20.931156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419228, 41.165840, 20.204205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214474, 40.850201, 20.340021>,  <38.091621, 40.660816, 20.421511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214474, 40.850201, 20.340021>,  <38.419228, 41.165840, 20.204205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214474, 40.850201, 20.340021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676311, 0.126472, -0.725677,
		0.529692, -0.601100, -0.598419,
		-0.511888, -0.789103, 0.339540,
		38.060905, 40.613468, 20.441883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116779, 40.962685, 19.637394>,  <38.419228, 41.165840, 20.204205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116779, 40.962685, 19.637394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.897549, 40.791805, 19.925035>,  <37.766010, 40.689278, 20.097620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.897549, 40.791805, 19.925035>,  <38.116779, 40.962685, 19.637394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897549, 40.791805, 19.925035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820351, 0.106813, -0.561796,
		0.163190, -0.897826, -0.408996,
		-0.548081, -0.427200, 0.719102,
		37.733124, 40.663647, 20.140766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751095, 40.556847, 19.251997>,  <38.116779, 40.962685, 19.637394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751095, 40.556847, 19.251997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.542038, 40.578518, 19.592329>,  <37.416603, 40.591522, 19.796528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.542038, 40.578518, 19.592329>,  <37.751095, 40.556847, 19.251997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542038, 40.578518, 19.592329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844339, 0.105288, -0.525362,
		-0.118047, -0.992965, -0.009280,
		-0.522643, 0.054182, 0.850828,
		37.385246, 40.594772, 19.847578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177132, 40.091919, 19.143389>,  <37.751095, 40.556847, 19.251997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177132, 40.091919, 19.143389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.078972, 40.373791, 19.409685>,  <37.020077, 40.542912, 19.569464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.078972, 40.373791, 19.409685>,  <37.177132, 40.091919, 19.143389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078972, 40.373791, 19.409685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861057, 0.157067, -0.483642,
		-0.445378, -0.691925, 0.568224,
		-0.245395, 0.704677, 0.665742,
		37.005352, 40.585194, 19.609407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365166, 40.066093, 19.146175>,  <37.177132, 40.091919, 19.143389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365166, 40.066093, 19.146175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476025, 40.407692, 19.322304>,  <36.542542, 40.612652, 19.427980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476025, 40.407692, 19.322304>,  <36.365166, 40.066093, 19.146175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476025, 40.407692, 19.322304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743456, 0.480905, -0.464761,
		-0.608657, -0.198554, 0.768188,
		0.277146, 0.853994, 0.440323,
		36.559170, 40.663891, 19.454401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849716, 40.194901, 18.514647>,  <36.365166, 40.066093, 19.146175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849716, 40.194901, 18.514647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168747, 39.954338, 18.533348>,  <37.360165, 39.810001, 18.544569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168747, 39.954338, 18.533348>,  <36.849716, 40.194901, 18.514647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168747, 39.954338, 18.533348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602923, 0.797219, -0.030432,
		-0.018971, 0.052460, 0.998443,
		0.797574, -0.601407, 0.046753,
		37.408020, 39.773914, 18.547375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610973, 40.043617, 17.889219>,  <36.849716, 40.194901, 18.514647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610973, 40.043617, 17.889219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296253, 39.821758, 17.780914>,  <36.107422, 39.688644, 17.715931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296253, 39.821758, 17.780914>,  <36.610973, 40.043617, 17.889219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296253, 39.821758, 17.780914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041570, -0.485315, 0.873351,
		-0.615802, 0.675900, 0.404904,
		-0.786803, -0.554643, -0.270761,
		36.060211, 39.655365, 17.699686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148945, 40.058205, 18.416231>,  <36.610973, 40.043617, 17.889219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148945, 40.058205, 18.416231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.064346, 39.724010, 18.213360>,  <36.013588, 39.523495, 18.091637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.064346, 39.724010, 18.213360>,  <36.148945, 40.058205, 18.416231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064346, 39.724010, 18.213360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091017, -0.499825, 0.861331,
		-0.973132, 0.228327, 0.029665,
		-0.211492, -0.835489, -0.507177,
		36.000900, 39.473362, 18.061207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728188, 39.686794, 18.922647>,  <36.148945, 40.058205, 18.416231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728188, 39.686794, 18.922647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790516, 39.407860, 18.642807>,  <35.827911, 39.240498, 18.474903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790516, 39.407860, 18.642807>,  <35.728188, 39.686794, 18.922647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790516, 39.407860, 18.642807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007696, -0.709086, 0.705080,
		-0.987755, -0.104481, -0.115856,
		0.155820, -0.697338, -0.699600,
		35.837261, 39.198658, 18.432926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240414, 39.200840, 19.161470>,  <35.728188, 39.686794, 18.922647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240414, 39.200840, 19.161470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507790, 39.020153, 18.925116>,  <35.668213, 38.911743, 18.783302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507790, 39.020153, 18.925116>,  <35.240414, 39.200840, 19.161470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507790, 39.020153, 18.925116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121790, -0.717251, 0.686089,
		-0.733728, -0.530572, -0.424425,
		0.668439, -0.451712, -0.590885,
		35.708321, 38.884640, 18.747849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137394, 38.501411, 19.213140>,  <35.240414, 39.200840, 19.161470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137394, 38.501411, 19.213140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.516056, 38.519455, 19.085510>,  <35.743252, 38.530281, 19.008932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.516056, 38.519455, 19.085510>,  <35.137394, 38.501411, 19.213140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516056, 38.519455, 19.085510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270402, -0.649809, 0.710374,
		-0.175292, -0.758758, -0.627344,
		0.946655, 0.045112, -0.319076,
		35.800053, 38.532990, 18.989788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460033, 37.832237, 19.130600>,  <35.137394, 38.501411, 19.213140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460033, 37.832237, 19.130600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755692, 38.098785, 19.169821>,  <35.933086, 38.258717, 19.193354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755692, 38.098785, 19.169821>,  <35.460033, 37.832237, 19.130600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755692, 38.098785, 19.169821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357805, -0.511802, 0.781047,
		0.570652, -0.542222, -0.616727,
		0.739143, 0.666374, 0.098051,
		35.977436, 38.298698, 19.199236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005268, 37.327591, 19.159182>,  <35.460033, 37.832237, 19.130600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005268, 37.327591, 19.159182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.154869, 37.677563, 19.282227>,  <36.244629, 37.887547, 19.356054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.154869, 37.677563, 19.282227>,  <36.005268, 37.327591, 19.159182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154869, 37.677563, 19.282227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514007, -0.471628, 0.716494,
		0.771960, -0.109852, -0.626107,
		0.373998, 0.874928, 0.307614,
		36.267067, 37.940041, 19.374510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589161, 37.224388, 19.582102>,  <36.005268, 37.327591, 19.159182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589161, 37.224388, 19.582102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567013, 37.602276, 19.711374>,  <36.553726, 37.829006, 19.788939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567013, 37.602276, 19.711374>,  <36.589161, 37.224388, 19.582102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567013, 37.602276, 19.711374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045525, -0.320954, 0.946000,
		0.997428, 0.067091, -0.025238,
		-0.055368, 0.944715, 0.323183,
		36.550404, 37.885689, 19.808329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246990, 37.410328, 19.949703>,  <36.589161, 37.224388, 19.582102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246990, 37.410328, 19.949703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951630, 37.646061, 20.080826>,  <36.774414, 37.787498, 20.159500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951630, 37.646061, 20.080826>,  <37.246990, 37.410328, 19.949703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951630, 37.646061, 20.080826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178960, -0.297424, 0.937823,
		0.650185, 0.751152, 0.114151,
		-0.738399, 0.589330, 0.327806,
		36.730110, 37.822861, 20.179167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524132, 37.718472, 20.545931>,  <37.246990, 37.410328, 19.949703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524132, 37.718472, 20.545931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128963, 37.760906, 20.591120>,  <36.891865, 37.786369, 20.618233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128963, 37.760906, 20.591120>,  <37.524132, 37.718472, 20.545931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128963, 37.760906, 20.591120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076904, -0.297279, 0.951689,
		0.134549, 0.948878, 0.285528,
		-0.987918, 0.106090, 0.112971,
		36.832588, 37.792732, 20.625011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487946, 38.040718, 21.185850>,  <37.524132, 37.718472, 20.545931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487946, 38.040718, 21.185850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119728, 37.893280, 21.134108>,  <36.898796, 37.804817, 21.103062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119728, 37.893280, 21.134108>,  <37.487946, 38.040718, 21.185850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119728, 37.893280, 21.134108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070550, -0.168819, 0.983119,
		-0.384210, 0.914132, 0.129401,
		-0.920546, -0.368595, -0.129354,
		36.843563, 37.782700, 21.095301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076069, 38.140697, 21.861572>,  <37.487946, 38.040718, 21.185850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076069, 38.140697, 21.861572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.868061, 37.861599, 21.664497>,  <36.743256, 37.694141, 21.546253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.868061, 37.861599, 21.664497>,  <37.076069, 38.140697, 21.861572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868061, 37.861599, 21.664497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232358, -0.439501, 0.867668,
		-0.821945, 0.565680, 0.066421,
		-0.520015, -0.697743, -0.492686,
		36.712055, 37.652275, 21.516691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558605, 38.071247, 22.299252>,  <37.076069, 38.140697, 21.861572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558605, 38.071247, 22.299252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.551521, 37.740425, 22.074514>,  <36.547272, 37.541931, 21.939672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.551521, 37.740425, 22.074514>,  <36.558605, 38.071247, 22.299252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551521, 37.740425, 22.074514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046443, -0.560642, 0.826754,
		-0.998764, 0.040734, -0.028482,
		-0.017709, -0.827055, -0.561841,
		36.546207, 37.492310, 21.905962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080936, 37.615891, 22.610912>,  <36.558605, 38.071247, 22.299252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080936, 37.615891, 22.610912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.308392, 37.365463, 22.397490>,  <36.444866, 37.215206, 22.269436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.308392, 37.365463, 22.397490>,  <36.080936, 37.615891, 22.610912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308392, 37.365463, 22.397490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061952, -0.679384, 0.731162,
		-0.820250, -0.382713, -0.425112,
		0.568640, -0.626073, -0.533556,
		36.478985, 37.177643, 22.237423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529877, 37.112419, 22.250635>,  <36.080936, 37.615891, 22.610912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529877, 37.112419, 22.250635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.151417, 37.130135, 22.378904>,  <34.924339, 37.140762, 22.455866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.151417, 37.130135, 22.378904>,  <35.529877, 37.112419, 22.250635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151417, 37.130135, 22.378904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240795, 0.565784, -0.788610,
		-0.216360, -0.823363, -0.524654,
		-0.946153, 0.044290, 0.320674,
		34.867569, 37.143421, 22.475107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218269, 37.222572, 21.661684>,  <35.529877, 37.112419, 22.250635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218269, 37.222572, 21.661684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931942, 37.303219, 21.929104>,  <34.760147, 37.351608, 22.089556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.931942, 37.303219, 21.929104>,  <35.218269, 37.222572, 21.661684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931942, 37.303219, 21.929104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491987, 0.533804, -0.687752,
		-0.495537, -0.821221, -0.282913,
		-0.715816, 0.201617, 0.668549,
		34.717197, 37.363705, 22.129669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557804, 37.021130, 21.356310>,  <35.218269, 37.222572, 21.661684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557804, 37.021130, 21.356310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509708, 37.314007, 21.624472>,  <34.480850, 37.489731, 21.785368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509708, 37.314007, 21.624472>,  <34.557804, 37.021130, 21.356310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509708, 37.314007, 21.624472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340838, 0.603806, -0.720588,
		-0.932400, -0.315145, 0.176954,
		-0.120244, 0.732190, 0.670402,
		34.473637, 37.533665, 21.825592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855869, 37.293648, 21.268015>,  <34.557804, 37.021130, 21.356310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855869, 37.293648, 21.268015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.031361, 37.588249, 21.473959>,  <34.136654, 37.765011, 21.597527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.031361, 37.588249, 21.473959>,  <33.855869, 37.293648, 21.268015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031361, 37.588249, 21.473959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306407, 0.661220, -0.684765,
		-0.844767, 0.142669, 0.515765,
		0.438729, 0.736501, 0.514862,
		34.162979, 37.809200, 21.628418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305389, 37.796345, 21.265778>,  <33.855869, 37.293648, 21.268015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305389, 37.796345, 21.265778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646118, 37.984646, 21.357687>,  <33.850555, 38.097626, 21.412832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.646118, 37.984646, 21.357687>,  <33.305389, 37.796345, 21.265778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646118, 37.984646, 21.357687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254940, 0.755741, -0.603209,
		-0.457611, 0.455247, 0.763768,
		0.851820, 0.470750, 0.229775,
		33.901665, 38.125870, 21.426620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146278, 38.414879, 21.394039>,  <33.305389, 37.796345, 21.265778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146278, 38.414879, 21.394039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535004, 38.494732, 21.343884>,  <33.768238, 38.542645, 21.313791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535004, 38.494732, 21.343884>,  <33.146278, 38.414879, 21.394039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535004, 38.494732, 21.343884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226767, 0.646202, -0.728697,
		-0.064448, 0.736592, 0.673260,
		0.971815, 0.199636, -0.125388,
		33.826550, 38.554623, 21.306267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331612, 39.082760, 21.434484>,  <33.146278, 38.414879, 21.394039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331612, 39.082760, 21.434484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643902, 38.959396, 21.217098>,  <33.831276, 38.885380, 21.086666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643902, 38.959396, 21.217098>,  <33.331612, 39.082760, 21.434484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643902, 38.959396, 21.217098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226997, 0.670328, -0.706493,
		0.582190, 0.674941, 0.453332,
		0.780722, -0.308408, -0.543468,
		33.878117, 38.866875, 21.054058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068218, 39.830235, 21.631258>,  <33.331612, 39.082760, 21.434484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068218, 39.830235, 21.631258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886444, 40.162952, 21.758760>,  <32.777382, 40.362583, 21.835262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886444, 40.162952, 21.758760>,  <33.068218, 39.830235, 21.631258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886444, 40.162952, 21.758760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243451, -0.460186, 0.853792,
		0.856869, 0.310388, 0.411625,
		-0.454431, 0.831798, 0.318755,
		32.750114, 40.412491, 21.854387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373386, 40.057072, 22.245909>,  <33.068218, 39.830235, 21.631258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373386, 40.057072, 22.245909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980900, 40.134022, 22.240175>,  <32.745407, 40.180191, 22.236736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980900, 40.134022, 22.240175>,  <33.373386, 40.057072, 22.245909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980900, 40.134022, 22.240175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111450, -0.504685, 0.856079,
		0.157452, 0.841597, 0.516646,
		-0.981218, 0.192371, -0.014332,
		32.686535, 40.191734, 22.235876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217468, 40.277477, 22.857347>,  <33.373386, 40.057072, 22.245909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217468, 40.277477, 22.857347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.864235, 40.143864, 22.725534>,  <32.652294, 40.063698, 22.646446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.864235, 40.143864, 22.725534>,  <33.217468, 40.277477, 22.857347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864235, 40.143864, 22.725534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087623, -0.572547, 0.815176,
		-0.460967, 0.748741, 0.476337,
		-0.883081, -0.334031, -0.329532,
		32.599312, 40.043655, 22.626675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902626, 40.468613, 23.431505>,  <33.217468, 40.277477, 22.857347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902626, 40.468613, 23.431505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674667, 40.229828, 23.205639>,  <32.537891, 40.086555, 23.070118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674667, 40.229828, 23.205639>,  <32.902626, 40.468613, 23.431505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674667, 40.229828, 23.205639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333008, -0.460435, 0.822864,
		-0.751215, 0.656986, 0.063606,
		-0.569897, -0.596966, -0.564667,
		32.503696, 40.050739, 23.036240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079441, 40.610081, 23.446127>,  <32.902626, 40.468613, 23.431505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079441, 40.610081, 23.446127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177101, 40.229797, 23.369654>,  <32.235695, 40.001629, 23.323771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177101, 40.229797, 23.369654>,  <32.079441, 40.610081, 23.446127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177101, 40.229797, 23.369654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529940, -0.295907, 0.794734,
		-0.812131, -0.092717, -0.576061,
		0.244146, -0.950706, -0.191181,
		32.250343, 39.944584, 23.312300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682325, 40.204105, 23.882093>,  <32.079441, 40.610081, 23.446127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682325, 40.204105, 23.882093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926628, 39.903553, 23.782171>,  <32.073208, 39.723221, 23.722218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926628, 39.903553, 23.782171>,  <31.682325, 40.204105, 23.882093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926628, 39.903553, 23.782171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323886, -0.524950, 0.787099,
		-0.722547, -0.399817, -0.563978,
		0.610756, -0.751382, -0.249806,
		32.109856, 39.678139, 23.707230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321423, 39.616901, 24.035992>,  <31.682325, 40.204105, 23.882093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321423, 39.616901, 24.035992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706083, 39.507385, 24.042500>,  <31.936880, 39.441677, 24.046404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706083, 39.507385, 24.042500>,  <31.321423, 39.616901, 24.035992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706083, 39.507385, 24.042500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154492, -0.491718, 0.856940,
		-0.226619, -0.826592, -0.515160,
		0.961653, -0.273787, 0.016269,
		31.994579, 39.425247, 24.047380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.719421, 43.651672, 20.782236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.721664, 43.320564, 20.557821>,  <35.723011, 43.121899, 20.423172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.721664, 43.320564, 20.557821>,  <35.719421, 43.651672, 20.782236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721664, 43.320564, 20.557821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440122, -0.501737, 0.744683,
		-0.897921, -0.251100, 0.361507,
		0.005609, -0.827773, -0.561035,
		35.723347, 43.072231, 20.389511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313229, 43.098511, 21.013775>,  <35.719421, 43.651672, 20.782236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313229, 43.098511, 21.013775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.643387, 42.953663, 20.840527>,  <35.841480, 42.866753, 20.736578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.643387, 42.953663, 20.840527>,  <35.313229, 43.098511, 21.013775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643387, 42.953663, 20.840527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341815, -0.290042, 0.893889,
		-0.449322, -0.885856, -0.115619,
		0.825392, -0.362124, -0.433122,
		35.891006, 42.845028, 20.710590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444523, 42.447720, 21.313400>,  <35.313229, 43.098511, 21.013775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444523, 42.447720, 21.313400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.798496, 42.513741, 21.139204>,  <36.010880, 42.553352, 21.034687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.798496, 42.513741, 21.139204>,  <35.444523, 42.447720, 21.313400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798496, 42.513741, 21.139204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463408, -0.219047, 0.858645,
		0.046329, -0.961653, -0.270329,
		0.884933, 0.165053, -0.435489,
		36.063976, 42.563255, 21.008558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771919, 41.835907, 21.388149>,  <35.444523, 42.447720, 21.313400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771919, 41.835907, 21.388149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.052532, 42.115513, 21.332668>,  <36.220901, 42.283276, 21.299379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.052532, 42.115513, 21.332668>,  <35.771919, 41.835907, 21.388149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052532, 42.115513, 21.332668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388708, -0.212202, 0.896591,
		0.597294, -0.682902, -0.420578,
		0.701531, 0.699010, -0.138702,
		36.262993, 42.325214, 21.291058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518150, 41.563869, 21.400103>,  <35.771919, 41.835907, 21.388149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518150, 41.563869, 21.400103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.521477, 41.950146, 21.503922>,  <36.523472, 42.181911, 21.566212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.521477, 41.950146, 21.503922>,  <36.518150, 41.563869, 21.400103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521477, 41.950146, 21.503922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276087, -0.251683, 0.927594,
		0.961096, 0.063941, -0.268710,
		0.008318, 0.965695, 0.259545,
		36.523972, 42.239853, 21.581785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194458, 41.616970, 21.862013>,  <36.518150, 41.563869, 21.400103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194458, 41.616970, 21.862013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937405, 41.913887, 21.937931>,  <36.783173, 42.092037, 21.983482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937405, 41.913887, 21.937931>,  <37.194458, 41.616970, 21.862013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937405, 41.913887, 21.937931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182377, -0.092398, 0.978878,
		0.744149, 0.663676, -0.075999,
		-0.642636, 0.742291, 0.189797,
		36.744614, 42.136574, 21.994869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583374, 42.099575, 22.256207>,  <37.194458, 41.616970, 21.862013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583374, 42.099575, 22.256207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191551, 42.160362, 22.308931>,  <36.956459, 42.196835, 22.340567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.191551, 42.160362, 22.308931>,  <37.583374, 42.099575, 22.256207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191551, 42.160362, 22.308931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112891, -0.127058, 0.985450,
		0.166506, 0.980184, 0.107305,
		-0.979557, 0.151969, 0.131810,
		36.897686, 42.205952, 22.348475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493958, 42.552860, 22.738077>,  <37.583374, 42.099575, 22.256207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493958, 42.552860, 22.738077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134525, 42.377357, 22.740705>,  <36.918865, 42.272057, 22.742283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134525, 42.377357, 22.740705>,  <37.493958, 42.552860, 22.738077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134525, 42.377357, 22.740705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005098, 0.025410, 0.999664,
		-0.438776, 0.898247, -0.025070,
		-0.898582, -0.438756, 0.006570,
		36.864952, 42.245731, 22.742676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290810, 42.654751, 23.420439>,  <37.493958, 42.552860, 22.738077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290810, 42.654751, 23.420439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.009312, 42.408691, 23.278267>,  <36.840412, 42.261055, 23.192963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.009312, 42.408691, 23.278267>,  <37.290810, 42.654751, 23.420439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009312, 42.408691, 23.278267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183106, -0.326341, 0.927348,
		-0.686450, 0.717699, 0.117023,
		-0.703746, -0.615150, -0.355431,
		36.798187, 42.224148, 23.171637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783043, 42.757256, 23.836739>,  <37.290810, 42.654751, 23.420439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783043, 42.757256, 23.836739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.714767, 42.402077, 23.665894>,  <36.673801, 42.188969, 23.563387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.714767, 42.402077, 23.665894>,  <36.783043, 42.757256, 23.836739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714767, 42.402077, 23.665894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232380, -0.384970, 0.893195,
		-0.957531, 0.251707, -0.140632,
		-0.170685, -0.887943, -0.427112,
		36.663563, 42.135693, 23.537760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120331, 42.557709, 24.008787>,  <36.783043, 42.757256, 23.836739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120331, 42.557709, 24.008787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.330879, 42.222000, 23.954306>,  <36.457207, 42.020573, 23.921618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.330879, 42.222000, 23.954306>,  <36.120331, 42.557709, 24.008787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330879, 42.222000, 23.954306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279689, -0.322188, 0.904416,
		-0.802936, -0.437965, -0.404326,
		0.526372, -0.839274, -0.136202,
		36.488792, 41.970219, 23.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791054, 42.147240, 24.480892>,  <36.120331, 42.557709, 24.008787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791054, 42.147240, 24.480892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.102493, 41.915424, 24.384628>,  <36.289356, 41.776333, 24.326870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.102493, 41.915424, 24.384628>,  <35.791054, 42.147240, 24.480892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102493, 41.915424, 24.384628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111062, -0.504716, 0.856112,
		-0.617619, -0.639837, -0.457335,
		0.778597, -0.579543, -0.240661,
		36.336071, 41.741562, 24.312431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121754, 41.828491, 24.311470>,  <35.791054, 42.147240, 24.480892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121754, 41.828491, 24.311470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.783039, 41.998669, 24.439192>,  <34.579811, 42.100777, 24.515825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.783039, 41.998669, 24.439192>,  <35.121754, 41.828491, 24.311470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783039, 41.998669, 24.439192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037909, 0.550471, -0.833993,
		-0.530585, -0.718316, -0.450002,
		-0.846784, 0.425445, 0.319302,
		34.529003, 42.126301, 24.534983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594395, 41.823910, 23.807526>,  <35.121754, 41.828491, 24.311470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594395, 41.823910, 23.807526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492775, 42.144169, 24.024567>,  <34.431805, 42.336327, 24.154791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492775, 42.144169, 24.024567>,  <34.594395, 41.823910, 23.807526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492775, 42.144169, 24.024567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032411, 0.553645, -0.832122,
		-0.966649, -0.228983, -0.114701,
		-0.254046, 0.800652, 0.542602,
		34.416561, 42.384365, 24.187347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004086, 42.094265, 23.429167>,  <34.594395, 41.823910, 23.807526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004086, 42.094265, 23.429167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.123997, 42.392982, 23.666628>,  <34.195942, 42.572212, 23.809105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.123997, 42.392982, 23.666628>,  <34.004086, 42.094265, 23.429167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123997, 42.392982, 23.666628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130319, 0.648496, -0.749980,
		-0.945066, 0.147464, 0.291727,
		0.299778, 0.746798, 0.593654,
		34.213932, 42.617023, 23.844725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543747, 42.652637, 23.311314>,  <34.004086, 42.094265, 23.429167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543747, 42.652637, 23.311314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.849140, 42.841415, 23.487663>,  <34.032375, 42.954681, 23.593473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.849140, 42.841415, 23.487663>,  <33.543747, 42.652637, 23.311314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849140, 42.841415, 23.487663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107110, 0.765720, -0.634193,
		-0.636886, 0.436972, 0.635162,
		0.763481, 0.471941, 0.440872,
		34.078186, 42.982998, 23.619925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286026, 43.333157, 23.232037>,  <33.543747, 42.652637, 23.311314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286026, 43.333157, 23.232037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676533, 43.355106, 23.315840>,  <33.910835, 43.368279, 23.366121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676533, 43.355106, 23.315840>,  <33.286026, 43.333157, 23.232037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676533, 43.355106, 23.315840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094801, 0.761488, -0.641209,
		-0.194727, 0.645851, 0.738212,
		0.976266, 0.054877, 0.209509,
		33.969414, 43.371571, 23.378693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412609, 44.042576, 23.434778>,  <33.286026, 43.333157, 23.232037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412609, 44.042576, 23.434778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.746098, 43.875359, 23.290478>,  <33.946190, 43.775028, 23.203897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.746098, 43.875359, 23.290478>,  <33.412609, 44.042576, 23.434778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746098, 43.875359, 23.290478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002931, 0.649962, -0.759961,
		0.552173, 0.634655, 0.540664,
		0.833724, -0.418045, -0.360752,
		33.996216, 43.749947, 23.182253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896130, 44.598312, 23.290264>,  <33.412609, 44.042576, 23.434778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896130, 44.598312, 23.290264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.032745, 44.300076, 23.061373>,  <34.114716, 44.121136, 22.924038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.032745, 44.300076, 23.061373>,  <33.896130, 44.598312, 23.290264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032745, 44.300076, 23.061373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041497, 0.596284, -0.801700,
		0.938950, 0.297559, 0.172716,
		0.341541, -0.745590, -0.572229,
		34.135208, 44.076397, 22.889704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425335, 44.894730, 22.886078>,  <33.896130, 44.598312, 23.290264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425335, 44.894730, 22.886078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.318550, 44.559269, 22.696178>,  <34.254478, 44.357990, 22.582239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.318550, 44.559269, 22.696178>,  <34.425335, 44.894730, 22.886078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318550, 44.559269, 22.696178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116365, 0.517077, -0.847992,
		0.956655, -0.171141, -0.235632,
		-0.266966, -0.838655, -0.474750,
		34.238461, 44.307671, 22.553753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730331, 44.958138, 22.298162>,  <34.425335, 44.894730, 22.886078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730331, 44.958138, 22.298162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.495396, 44.648705, 22.202991>,  <34.354435, 44.463047, 22.145889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.495396, 44.648705, 22.202991>,  <34.730331, 44.958138, 22.298162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495396, 44.648705, 22.202991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235735, 0.444743, -0.864079,
		0.774251, -0.451417, -0.443574,
		-0.587337, -0.773580, -0.237928,
		34.319195, 44.416630, 22.131613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814529, 44.762863, 21.575836>,  <34.730331, 44.958138, 22.298162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814529, 44.762863, 21.575836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.441147, 44.637280, 21.645229>,  <34.217117, 44.561932, 21.686865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.441147, 44.637280, 21.645229>,  <34.814529, 44.762863, 21.575836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441147, 44.637280, 21.645229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278884, 0.331061, -0.901456,
		0.225583, -0.889849, -0.396587,
		-0.933454, -0.313955, 0.173483,
		34.161110, 44.543091, 21.697273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692657, 44.277660, 21.040695>,  <34.814529, 44.762863, 21.575836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692657, 44.277660, 21.040695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.350117, 44.425743, 21.184702>,  <34.144592, 44.514591, 21.271105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.350117, 44.425743, 21.184702>,  <34.692657, 44.277660, 21.040695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350117, 44.425743, 21.184702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218358, 0.372180, -0.902110,
		-0.467954, -0.851136, -0.237881,
		-0.856352, 0.370203, 0.360015,
		34.093212, 44.536804, 21.292706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185246, 44.031521, 20.612396>,  <34.692657, 44.277660, 21.040695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185246, 44.031521, 20.612396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.028301, 44.342133, 20.809601>,  <33.934135, 44.528500, 20.927923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.028301, 44.342133, 20.809601>,  <34.185246, 44.031521, 20.612396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028301, 44.342133, 20.809601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271964, 0.414091, -0.868657,
		-0.878687, -0.474906, 0.048715,
		-0.392358, 0.776526, 0.493013,
		33.910595, 44.575089, 20.957504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519135, 44.157791, 20.369591>,  <34.185246, 44.031521, 20.612396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519135, 44.157791, 20.369591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.641727, 44.507011, 20.521297>,  <33.715282, 44.716545, 20.612322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.641727, 44.507011, 20.521297>,  <33.519135, 44.157791, 20.369591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641727, 44.507011, 20.521297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214674, 0.451575, -0.866023,
		-0.927353, 0.184002, 0.325822,
		0.306483, 0.873054, 0.379269,
		33.733673, 44.768929, 20.635078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183270, 43.579128, 20.599924>,  <33.519135, 44.157791, 20.369591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183270, 43.579128, 20.599924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.881653, 43.391781, 20.415724>,  <32.700684, 43.279373, 20.305202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.881653, 43.391781, 20.415724>,  <33.183270, 43.579128, 20.599924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881653, 43.391781, 20.415724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013111, -0.690225, 0.723476,
		-0.656701, 0.551566, 0.514314,
		-0.754037, -0.468364, -0.460502,
		32.655441, 43.251270, 20.277573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660992, 43.461105, 21.141651>,  <33.183270, 43.579128, 20.599924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660992, 43.461105, 21.141651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.611752, 43.178410, 20.862978>,  <32.582207, 43.008793, 20.695774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.611752, 43.178410, 20.862978>,  <32.660992, 43.461105, 21.141651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611752, 43.178410, 20.862978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195781, -0.670929, 0.715209,
		-0.972891, 0.224439, -0.055774,
		-0.123100, -0.706740, -0.696681,
		32.574821, 42.966389, 20.653975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062805, 42.994816, 21.331863>,  <32.660992, 43.461105, 21.141651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062805, 42.994816, 21.331863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221527, 42.776413, 21.036724>,  <32.316761, 42.645370, 20.859640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221527, 42.776413, 21.036724>,  <32.062805, 42.994816, 21.331863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221527, 42.776413, 21.036724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316331, -0.835945, 0.448476,
		-0.861673, 0.055447, -0.504426,
		0.396805, -0.546005, -0.737850,
		32.340569, 42.612610, 20.815369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531303, 42.449852, 21.118858>,  <32.062805, 42.994816, 21.331863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531303, 42.449852, 21.118858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906069, 42.353081, 21.017927>,  <32.130928, 42.295017, 20.957369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906069, 42.353081, 21.017927>,  <31.531303, 42.449852, 21.118858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906069, 42.353081, 21.017927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076027, -0.845574, 0.528417,
		-0.341198, -0.475896, -0.810621,
		0.936912, -0.241923, -0.252327,
		32.187141, 42.280502, 20.942228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588604, 41.718456, 20.874268>,  <31.531303, 42.449852, 21.118858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588604, 41.718456, 20.874268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.958879, 41.828617, 20.977997>,  <32.181046, 41.894714, 21.040234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.958879, 41.828617, 20.977997>,  <31.588604, 41.718456, 20.874268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958879, 41.828617, 20.977997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174921, -0.919474, 0.352094,
		0.335409, -0.280569, -0.899323,
		0.925691, 0.275406, 0.259322,
		32.236588, 41.911240, 21.055794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958757, 41.177422, 20.727880>,  <31.588604, 41.718456, 20.874268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958757, 41.177422, 20.727880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207634, 41.369934, 20.974861>,  <32.356960, 41.485439, 21.123051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207634, 41.369934, 20.974861>,  <31.958757, 41.177422, 20.727880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207634, 41.369934, 20.974861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197006, -0.859584, 0.471492,
		0.757672, -0.171716, -0.629640,
		0.622191, 0.481279, 0.617454,
		32.394291, 41.514317, 21.160097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623707, 40.800419, 20.667944>,  <31.958757, 41.177422, 20.727880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623707, 40.800419, 20.667944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.562813, 41.000183, 21.009098>,  <32.526276, 41.120041, 21.213791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.562813, 41.000183, 21.009098>,  <32.623707, 40.800419, 20.667944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562813, 41.000183, 21.009098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101001, -0.850566, 0.516077,
		0.983170, 0.164709, 0.079047,
		-0.152237, 0.499408, 0.852887,
		32.517143, 41.150005, 21.264963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058937, 40.356846, 21.107203>,  <32.623707, 40.800419, 20.667944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058937, 40.356846, 21.107203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.852638, 40.596191, 21.352467>,  <32.728859, 40.739799, 21.499624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.852638, 40.596191, 21.352467>,  <33.058937, 40.356846, 21.107203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852638, 40.596191, 21.352467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103785, -0.666783, 0.737990,
		0.850429, 0.444255, 0.281793,
		-0.515751, 0.598363, 0.613158,
		32.697914, 40.775700, 21.536413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560230, 39.696072, 21.111889>,  <33.058937, 40.356846, 21.107203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560230, 39.696072, 21.111889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.739609, 39.431889, 20.870991>,  <33.847237, 39.273380, 20.726452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.739609, 39.431889, 20.870991>,  <33.560230, 39.696072, 21.111889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739609, 39.431889, 20.870991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274392, 0.539531, -0.796000,
		0.850652, 0.522211, 0.060725,
		0.448443, -0.660456, -0.602243,
		33.874142, 39.233753, 20.690317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898045, 40.129578, 20.716356>,  <33.560230, 39.696072, 21.111889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898045, 40.129578, 20.716356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.898556, 39.787609, 20.508856>,  <33.898861, 39.582428, 20.384356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.898556, 39.787609, 20.508856>,  <33.898045, 40.129578, 20.716356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898556, 39.787609, 20.508856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073446, 0.517269, -0.852665,
		0.997298, 0.039186, -0.062132,
		0.001274, -0.854925, -0.518750,
		33.898937, 39.531132, 20.353231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480129, 40.151646, 20.109253>,  <33.898045, 40.129578, 20.716356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480129, 40.151646, 20.109253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.182190, 39.897270, 20.028465>,  <34.003426, 39.744644, 19.979992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.182190, 39.897270, 20.028465>,  <34.480129, 40.151646, 20.109253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182190, 39.897270, 20.028465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072892, 0.378438, -0.922752,
		0.663243, -0.672586, -0.328233,
		-0.744846, -0.635935, -0.201970,
		33.958736, 39.706490, 19.967875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664108, 39.778118, 19.501560>,  <34.480129, 40.151646, 20.109253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664108, 39.778118, 19.501560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.267639, 39.725338, 19.506672>,  <34.029758, 39.693672, 19.509739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.267639, 39.725338, 19.506672>,  <34.664108, 39.778118, 19.501560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267639, 39.725338, 19.506672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037704, 0.188176, -0.981411,
		0.127084, -0.973232, -0.191490,
		-0.991175, -0.131942, 0.012781,
		33.970287, 39.685753, 19.510506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505112, 39.385914, 18.954647>,  <34.664108, 39.778118, 19.501560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505112, 39.385914, 18.954647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.142933, 39.528908, 19.046185>,  <33.925625, 39.614704, 19.101107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.142933, 39.528908, 19.046185>,  <34.505112, 39.385914, 18.954647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142933, 39.528908, 19.046185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225799, 0.050857, -0.972845,
		-0.359415, -0.932533, 0.034671,
		-0.905448, 0.357484, 0.228844,
		33.871300, 39.636154, 19.114838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164375, 39.101524, 18.462763>,  <34.505112, 39.385914, 18.954647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164375, 39.101524, 18.462763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.931641, 39.393764, 18.605698>,  <33.792000, 39.569107, 18.691460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.931641, 39.393764, 18.605698>,  <34.164375, 39.101524, 18.462763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931641, 39.393764, 18.605698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257041, 0.251659, -0.933058,
		-0.771621, -0.634735, 0.041371,
		-0.581834, 0.730602, 0.357339,
		33.757092, 39.612946, 18.712900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572487, 39.090225, 18.079584>,  <34.164375, 39.101524, 18.462763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572487, 39.090225, 18.079584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.597988, 39.464008, 18.219717>,  <33.613289, 39.688278, 18.303797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.597988, 39.464008, 18.219717>,  <33.572487, 39.090225, 18.079584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597988, 39.464008, 18.219717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190541, 0.355985, -0.914860,
		-0.979607, -0.008425, 0.200748,
		0.063756, 0.934453, 0.350331,
		33.617115, 39.744343, 18.324816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005634, 39.374668, 17.709776>,  <33.572487, 39.090225, 18.079584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005634, 39.374668, 17.709776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.216888, 39.685993, 17.845602>,  <33.343639, 39.872787, 17.927097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.216888, 39.685993, 17.845602>,  <33.005634, 39.374668, 17.709776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216888, 39.685993, 17.845602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260430, 0.529071, -0.807626,
		-0.808240, 0.338102, 0.482116,
		0.528133, 0.778313, 0.339565,
		33.375328, 39.919487, 17.947472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597748, 39.974129, 17.610533>,  <33.005634, 39.374668, 17.709776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597748, 39.974129, 17.610533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.960480, 40.139984, 17.640825>,  <33.178120, 40.239498, 17.659000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.960480, 40.139984, 17.640825>,  <32.597748, 39.974129, 17.610533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960480, 40.139984, 17.640825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240041, 0.655719, -0.715830,
		-0.346471, 0.630957, 0.694155,
		0.906829, 0.414640, 0.075732,
		33.232529, 40.264378, 17.663546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.752346, 33.406982, 31.736073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141766, 33.497814, 31.725958>,  <36.375416, 33.552311, 31.719889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141766, 33.497814, 31.725958>,  <35.752346, 33.406982, 31.736073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141766, 33.497814, 31.725958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098490, 0.317232, -0.943220,
		-0.206162, 0.920760, 0.331206,
		0.973549, 0.227077, -0.025285,
		36.433830, 33.565937, 31.718372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837067, 34.169804, 31.740454>,  <35.752346, 33.406982, 31.736073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837067, 34.169804, 31.740454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130520, 33.968353, 31.557961>,  <36.306591, 33.847485, 31.448465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130520, 33.968353, 31.557961>,  <35.837067, 34.169804, 31.740454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130520, 33.968353, 31.557961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262245, 0.409549, -0.873783,
		0.626907, 0.760680, 0.168386,
		0.733632, -0.503622, -0.456233,
		36.350609, 33.817268, 31.421091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003750, 34.656719, 31.140188>,  <35.837067, 34.169804, 31.740454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003750, 34.656719, 31.140188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200630, 34.315960, 31.068638>,  <36.318760, 34.111504, 31.025707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200630, 34.315960, 31.068638>,  <36.003750, 34.656719, 31.140188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200630, 34.315960, 31.068638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117641, 0.138509, -0.983349,
		0.862494, 0.505052, -0.032044,
		0.492205, -0.851902, -0.178877,
		36.348293, 34.060390, 31.014975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364830, 34.755123, 30.470842>,  <36.003750, 34.656719, 31.140188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364830, 34.755123, 30.470842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360386, 34.357105, 30.510365>,  <36.357719, 34.118294, 30.534079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360386, 34.357105, 30.510365>,  <36.364830, 34.755123, 30.470842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360386, 34.357105, 30.510365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176764, -0.095300, -0.979629,
		0.984190, -0.028350, -0.174829,
		-0.011111, -0.995045, 0.098805,
		36.357052, 34.058590, 30.540007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927879, 34.420242, 30.014885>,  <36.364830, 34.755123, 30.470842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927879, 34.420242, 30.014885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690456, 34.111851, 30.107216>,  <36.548004, 33.926815, 30.162615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690456, 34.111851, 30.107216>,  <36.927879, 34.420242, 30.014885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690456, 34.111851, 30.107216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187643, -0.146333, -0.971276,
		0.782614, -0.619818, -0.057812,
		-0.593554, -0.770982, 0.230827,
		36.512390, 33.880558, 30.176464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192253, 33.853985, 29.529570>,  <36.927879, 34.420242, 30.014885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192253, 33.853985, 29.529570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817360, 33.768433, 29.639738>,  <36.592426, 33.717102, 29.705839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817360, 33.768433, 29.639738>,  <37.192253, 33.853985, 29.529570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817360, 33.768433, 29.639738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281017, -0.004404, -0.959693,
		0.206478, -0.976849, -0.055978,
		-0.937228, -0.213886, 0.275421,
		36.536190, 33.704269, 29.722364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994797, 33.388981, 29.013254>,  <37.192253, 33.853985, 29.529570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994797, 33.388981, 29.013254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.674313, 33.550827, 29.189596>,  <36.482021, 33.647934, 29.295401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.674313, 33.550827, 29.189596>,  <36.994797, 33.388981, 29.013254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674313, 33.550827, 29.189596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453278, 0.070586, -0.888570,
		-0.390651, -0.911757, 0.126851,
		-0.801205, 0.404620, 0.440854,
		36.433952, 33.672215, 29.321852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399410, 33.056149, 28.670435>,  <36.994797, 33.388981, 29.013254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399410, 33.056149, 28.670435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244911, 33.388531, 28.830601>,  <36.152214, 33.587959, 28.926701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244911, 33.388531, 28.830601>,  <36.399410, 33.056149, 28.670435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244911, 33.388531, 28.830601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512812, 0.167384, -0.842025,
		-0.766707, -0.530565, 0.361472,
		-0.386244, 0.830953, 0.400415,
		36.129036, 33.637817, 28.950726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686222, 33.088276, 28.633463>,  <36.399410, 33.056149, 28.670435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686222, 33.088276, 28.633463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803333, 33.470684, 28.640394>,  <35.873600, 33.700130, 28.644552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803333, 33.470684, 28.640394>,  <35.686222, 33.088276, 28.633463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803333, 33.470684, 28.640394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438469, 0.150341, -0.886083,
		-0.849721, 0.251828, 0.463203,
		0.292779, 0.956023, 0.017328,
		35.891167, 33.757492, 28.645594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192757, 33.420357, 28.269714>,  <35.686222, 33.088276, 28.633463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192757, 33.420357, 28.269714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459309, 33.718456, 28.278994>,  <35.619240, 33.897316, 28.284561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459309, 33.718456, 28.278994>,  <35.192757, 33.420357, 28.269714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459309, 33.718456, 28.278994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422611, 0.403150, -0.811708,
		-0.614281, 0.531101, 0.583602,
		0.666378, 0.745253, 0.023198,
		35.659222, 33.942032, 28.285954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755432, 33.976139, 28.227079>,  <35.192757, 33.420357, 28.269714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755432, 33.976139, 28.227079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119057, 34.099838, 28.115385>,  <35.337231, 34.174057, 28.048368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119057, 34.099838, 28.115385>,  <34.755432, 33.976139, 28.227079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119057, 34.099838, 28.115385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382836, 0.355440, -0.852701,
		-0.164445, 0.882059, 0.441508,
		0.909062, 0.309248, -0.279234,
		35.391777, 34.192612, 28.031614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597885, 34.685360, 27.957172>,  <34.755432, 33.976139, 28.227079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597885, 34.685360, 27.957172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970749, 34.605373, 27.836441>,  <35.194466, 34.557381, 27.764002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970749, 34.605373, 27.836441>,  <34.597885, 34.685360, 27.957172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970749, 34.605373, 27.836441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191957, 0.433880, -0.880284,
		0.306984, 0.878500, 0.366059,
		0.932155, -0.199966, -0.301828,
		35.250397, 34.545383, 27.745893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453983, 35.339825, 28.350098>,  <34.597885, 34.685360, 27.957172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453983, 35.339825, 28.350098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062675, 35.305195, 28.274734>,  <33.827892, 35.284416, 28.229517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062675, 35.305195, 28.274734>,  <34.453983, 35.339825, 28.350098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062675, 35.305195, 28.274734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103393, -0.583950, 0.805178,
		-0.179732, 0.807160, 0.562308,
		-0.978267, -0.086578, -0.188409,
		33.769196, 35.279221, 28.218212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992661, 35.499222, 28.898430>,  <34.453983, 35.339825, 28.350098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992661, 35.499222, 28.898430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784935, 35.244530, 28.670437>,  <33.660297, 35.091713, 28.533640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784935, 35.244530, 28.670437>,  <33.992661, 35.499222, 28.898430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784935, 35.244530, 28.670437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191097, -0.563562, 0.803667,
		-0.832942, 0.526280, 0.170989,
		-0.519317, -0.636732, -0.569985,
		33.629139, 35.053509, 28.499441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332996, 35.339500, 29.277311>,  <33.992661, 35.499222, 28.898430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332996, 35.339500, 29.277311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353912, 35.046585, 29.005716>,  <33.366463, 34.870834, 28.842760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353912, 35.046585, 29.005716>,  <33.332996, 35.339500, 29.277311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353912, 35.046585, 29.005716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319330, -0.656478, 0.683421,
		-0.946200, 0.181085, -0.268169,
		0.052290, -0.732287, -0.678985,
		33.369598, 34.826900, 28.802021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756027, 34.873547, 29.432970>,  <33.332996, 35.339500, 29.277311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756027, 34.873547, 29.432970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032352, 34.665035, 29.232552>,  <33.198147, 34.539928, 29.112301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032352, 34.665035, 29.232552>,  <32.756027, 34.873547, 29.432970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032352, 34.665035, 29.232552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052984, -0.727608, 0.683943,
		-0.721087, -0.445931, -0.530262,
		0.690815, -0.521279, -0.501042,
		33.239597, 34.508652, 29.082237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391132, 34.235531, 29.383196>,  <32.756027, 34.873547, 29.432970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391132, 34.235531, 29.383196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784588, 34.182484, 29.334438>,  <33.020660, 34.150654, 29.305183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784588, 34.182484, 29.334438>,  <32.391132, 34.235531, 29.383196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784588, 34.182484, 29.334438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038212, -0.814929, 0.578299,
		-0.176028, -0.564183, -0.806667,
		0.983643, -0.132621, -0.121892,
		33.079681, 34.142696, 29.297871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517097, 33.439774, 29.315596>,  <32.391132, 34.235531, 29.383196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517097, 33.439774, 29.315596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855751, 33.615818, 29.435274>,  <33.058945, 33.721443, 29.507080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855751, 33.615818, 29.435274>,  <32.517097, 33.439774, 29.315596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855751, 33.615818, 29.435274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129023, -0.715183, 0.686926,
		0.516301, -0.542971, -0.662281,
		0.846632, 0.440110, 0.299194,
		33.109741, 33.747852, 29.525032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069012, 32.834240, 29.354612>,  <32.517097, 33.439774, 29.315596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069012, 32.834240, 29.354612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224678, 33.130241, 29.574047>,  <33.318077, 33.307842, 29.705708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224678, 33.130241, 29.574047>,  <33.069012, 32.834240, 29.354612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224678, 33.130241, 29.574047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230890, -0.654883, 0.719596,
		0.891764, -0.153377, -0.425715,
		0.389162, 0.740003, 0.548588,
		33.341427, 33.352242, 29.738623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629345, 32.499321, 29.738941>,  <33.069012, 32.834240, 29.354612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629345, 32.499321, 29.738941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561745, 32.852524, 29.914097>,  <33.521187, 33.064445, 30.019190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561745, 32.852524, 29.914097>,  <33.629345, 32.499321, 29.738941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561745, 32.852524, 29.914097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197098, -0.405027, 0.892808,
		0.965708, 0.237189, -0.105589,
		-0.168997, 0.883003, 0.437887,
		33.511047, 33.117424, 30.045464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284313, 32.558659, 30.130707>,  <33.629345, 32.499321, 29.738941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284313, 32.558659, 30.130707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022686, 32.798904, 30.314646>,  <33.865711, 32.943050, 30.425009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.022686, 32.798904, 30.314646>,  <34.284313, 32.558659, 30.130707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022686, 32.798904, 30.314646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502171, -0.109860, 0.857761,
		0.565703, 0.791954, -0.229756,
		-0.654067, 0.600615, 0.459845,
		33.826466, 32.979088, 30.452599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682827, 32.950100, 30.598509>,  <34.284313, 32.558659, 30.130707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682827, 32.950100, 30.598509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311008, 32.950607, 30.745993>,  <34.087917, 32.950912, 30.834482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311008, 32.950607, 30.745993>,  <34.682827, 32.950100, 30.598509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311008, 32.950607, 30.745993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363304, -0.167489, 0.916492,
		0.062917, 0.985873, 0.155227,
		-0.929544, 0.001269, 0.368709,
		34.032146, 32.950989, 30.856606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753433, 33.333435, 31.296143>,  <34.682827, 32.950100, 30.598509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753433, 33.333435, 31.296143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.397434, 33.151558, 31.309797>,  <34.183834, 33.042431, 31.317991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.397434, 33.151558, 31.309797>,  <34.753433, 33.333435, 31.296143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397434, 33.151558, 31.309797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091582, -0.104912, 0.990256,
		-0.446679, 0.884449, 0.135013,
		-0.889995, -0.454691, 0.034138,
		34.130436, 33.015152, 31.320038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362045, 33.753250, 31.727386>,  <34.753433, 33.333435, 31.296143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362045, 33.753250, 31.727386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183876, 33.395420, 31.712757>,  <34.076973, 33.180721, 31.703979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183876, 33.395420, 31.712757>,  <34.362045, 33.753250, 31.727386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183876, 33.395420, 31.712757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074258, -0.003794, 0.997232,
		-0.892233, 0.446910, -0.064739,
		-0.445427, -0.894571, -0.036572,
		34.050247, 33.127048, 31.701786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032570, 33.737759, 32.354286>,  <34.362045, 33.753250, 31.727386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032570, 33.737759, 32.354286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.952168, 33.370918, 32.216576>,  <33.903927, 33.150814, 32.133949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.952168, 33.370918, 32.216576>,  <34.032570, 33.737759, 32.354286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952168, 33.370918, 32.216576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091909, -0.332246, 0.938704,
		-0.975269, 0.220328, -0.017506,
		-0.201007, -0.917098, -0.344279,
		33.891865, 33.095787, 32.113293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126583, 34.164326, 33.033302>,  <34.032570, 33.737759, 32.354286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126583, 34.164326, 33.033302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776394, 34.008434, 33.147610>,  <33.566280, 33.914902, 33.216194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776394, 34.008434, 33.147610>,  <34.126583, 34.164326, 33.033302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776394, 34.008434, 33.147610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097138, 0.437340, 0.894035,
		-0.473404, 0.810462, -0.345022,
		-0.875473, -0.389725, 0.285765,
		33.513752, 33.891518, 33.233337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606579, 34.668388, 33.389969>,  <34.126583, 34.164326, 33.033302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606579, 34.668388, 33.389969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831982, 34.978100, 33.505177>,  <33.967224, 35.163929, 33.574299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831982, 34.978100, 33.505177>,  <33.606579, 34.668388, 33.389969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831982, 34.978100, 33.505177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516753, 0.602378, -0.608365,
		-0.644540, 0.193982, 0.739554,
		0.563503, 0.774281, 0.288016,
		34.001034, 35.210384, 33.591579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208706, 35.403069, 33.359936>,  <33.606579, 34.668388, 33.389969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208706, 35.403069, 33.359936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587452, 35.531532, 33.366901>,  <33.814701, 35.608608, 33.371082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587452, 35.531532, 33.366901>,  <33.208706, 35.403069, 33.359936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587452, 35.531532, 33.366901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250815, 0.771207, -0.585091,
		-0.201337, 0.549634, 0.810781,
		0.946866, 0.321157, 0.017416,
		33.871513, 35.627880, 33.372128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250809, 36.065689, 33.458408>,  <33.208706, 35.403069, 33.359936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250809, 36.065689, 33.458408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591869, 36.000298, 33.259911>,  <33.796505, 35.961063, 33.140812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591869, 36.000298, 33.259911>,  <33.250809, 36.065689, 33.458408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591869, 36.000298, 33.259911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156068, 0.826735, -0.540511,
		0.498623, 0.538317, 0.679405,
		0.852654, -0.163477, -0.496243,
		33.847664, 35.951256, 33.111038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428291, 36.713020, 33.325455>,  <33.250809, 36.065689, 33.458408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428291, 36.713020, 33.325455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668018, 36.496578, 33.089481>,  <33.811855, 36.366714, 32.947899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668018, 36.496578, 33.089481>,  <33.428291, 36.713020, 33.325455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668018, 36.496578, 33.089481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031084, 0.752123, -0.658289,
		0.799904, 0.376190, 0.467584,
		0.599322, -0.541103, -0.589933,
		33.847816, 36.334248, 32.912502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046864, 37.106945, 33.236008>,  <33.428291, 36.713020, 33.325455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046864, 37.106945, 33.236008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981335, 36.872974, 32.918262>,  <33.942017, 36.732590, 32.727615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981335, 36.872974, 32.918262>,  <34.046864, 37.106945, 33.236008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981335, 36.872974, 32.918262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041934, 0.808647, -0.586798,
		0.985599, -0.062817, -0.156999,
		-0.163818, -0.584931, -0.794367,
		33.932190, 36.697495, 32.679951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316807, 37.492756, 32.754578>,  <34.046864, 37.106945, 33.236008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316807, 37.492756, 32.754578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.120285, 37.210995, 32.549660>,  <34.002373, 37.041939, 32.426708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.120285, 37.210995, 32.549660>,  <34.316807, 37.492756, 32.754578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120285, 37.210995, 32.549660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120491, 0.637481, -0.760986,
		0.862616, -0.312147, -0.398069,
		-0.491301, -0.704402, -0.512291,
		33.972897, 36.999676, 32.395973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692955, 37.488907, 32.054756>,  <34.316807, 37.492756, 32.754578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692955, 37.488907, 32.054756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310341, 37.372295, 32.052124>,  <34.080772, 37.302330, 32.050545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310341, 37.372295, 32.052124>,  <34.692955, 37.488907, 32.054756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310341, 37.372295, 32.052124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158529, 0.538833, -0.827362,
		0.244746, -0.790361, -0.561631,
		-0.956539, -0.291528, -0.006582,
		34.023380, 37.284836, 32.050148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594181, 37.202675, 31.311335>,  <34.692955, 37.488907, 32.054756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594181, 37.202675, 31.311335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245758, 37.307224, 31.477680>,  <34.036705, 37.369953, 31.577488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245758, 37.307224, 31.477680>,  <34.594181, 37.202675, 31.311335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245758, 37.307224, 31.477680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168873, 0.635682, -0.753253,
		-0.461241, -0.726354, -0.509575,
		-0.871056, 0.261378, 0.415865,
		33.984440, 37.385639, 31.602440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115524, 37.123302, 30.699980>,  <34.594181, 37.202675, 31.311335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115524, 37.123302, 30.699980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967403, 37.373791, 30.974419>,  <33.878532, 37.524082, 31.139082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967403, 37.373791, 30.974419>,  <34.115524, 37.123302, 30.699980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967403, 37.373791, 30.974419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089614, 0.711075, -0.697382,
		-0.924578, -0.319727, -0.207196,
		-0.370304, 0.626217, 0.686096,
		33.856312, 37.561657, 31.180248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453644, 37.214596, 30.497122>,  <34.115524, 37.123302, 30.699980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453644, 37.214596, 30.497122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546364, 37.533062, 30.720688>,  <33.601997, 37.724144, 30.854828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546364, 37.533062, 30.720688>,  <33.453644, 37.214596, 30.497122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546364, 37.533062, 30.720688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194657, 0.600908, -0.775254,
		-0.953088, 0.070907, 0.294270,
		0.231800, 0.796167, 0.558916,
		33.615906, 37.771912, 30.888363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053181, 37.651463, 30.158550>,  <33.453644, 37.214596, 30.497122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053181, 37.651463, 30.158550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257401, 37.902843, 30.393286>,  <33.379932, 38.053673, 30.534126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257401, 37.902843, 30.393286>,  <33.053181, 37.651463, 30.158550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257401, 37.902843, 30.393286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165844, 0.741650, -0.649962,
		-0.843702, 0.234515, 0.482876,
		0.510551, 0.628456, 0.586839,
		33.410564, 38.091381, 30.569338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687798, 38.256573, 30.231543>,  <33.053181, 37.651463, 30.158550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687798, 38.256573, 30.231543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063225, 38.355946, 30.327353>,  <33.288483, 38.415569, 30.384838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063225, 38.355946, 30.327353>,  <32.687798, 38.256573, 30.231543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063225, 38.355946, 30.327353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016419, 0.661154, -0.750070,
		-0.344701, 0.707926, 0.616460,
		0.938569, 0.248428, 0.239524,
		33.344795, 38.430473, 30.399210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761131, 39.018002, 30.099802>,  <32.687798, 38.256573, 30.231543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761131, 39.018002, 30.099802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145836, 38.912693, 30.069592>,  <33.376659, 38.849510, 30.051466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145836, 38.912693, 30.069592>,  <32.761131, 39.018002, 30.099802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145836, 38.912693, 30.069592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117976, 0.647072, -0.753246,
		0.247176, 0.715533, 0.653389,
		0.961762, -0.263268, -0.075525,
		33.434364, 38.833714, 30.046934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196369, 39.634647, 30.161564>,  <32.761131, 39.018002, 30.099802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196369, 39.634647, 30.161564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438644, 39.381432, 29.968733>,  <33.584011, 39.229500, 29.853035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438644, 39.381432, 29.968733>,  <33.196369, 39.634647, 30.161564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438644, 39.381432, 29.968733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184323, 0.700997, -0.688933,
		0.774057, 0.328422, 0.541272,
		0.605691, -0.633042, -0.482076,
		33.620350, 39.191521, 29.824110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774181, 40.052402, 29.911180>,  <33.196369, 39.634647, 30.161564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774181, 40.052402, 29.911180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837856, 39.724361, 29.691332>,  <33.876060, 39.527534, 29.559423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837856, 39.724361, 29.691332>,  <33.774181, 40.052402, 29.911180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837856, 39.724361, 29.691332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315258, 0.569800, -0.758907,
		0.935559, -0.052461, 0.349252,
		0.159191, -0.820107, -0.549621,
		33.885612, 39.478329, 29.526445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488213, 40.044266, 29.667887>,  <33.774181, 40.052402, 29.911180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488213, 40.044266, 29.667887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275837, 39.841785, 29.396042>,  <34.148411, 39.720299, 29.232935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275837, 39.841785, 29.396042>,  <34.488213, 40.044266, 29.667887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275837, 39.841785, 29.396042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414452, 0.544410, -0.729279,
		0.739147, -0.668866, -0.079251,
		-0.530935, -0.506198, -0.679612,
		34.116558, 39.689926, 29.192158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938232, 39.995205, 29.202715>,  <34.488213, 40.044266, 29.667887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938232, 39.995205, 29.202715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603298, 39.908474, 29.001972>,  <34.402336, 39.856438, 28.881527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603298, 39.908474, 29.001972>,  <34.938232, 39.995205, 29.202715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603298, 39.908474, 29.001972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407480, 0.364460, -0.837335,
		0.364460, -0.905625, -0.216824,
		0.837335, 0.216824, 0.501855,
		34.352097, 39.843426, 28.851416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103718, 39.741436, 28.526274>,  <34.938232, 39.995205, 29.202715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103718, 39.741436, 28.526274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714989, 39.814526, 28.466717>,  <34.481750, 39.858379, 28.430983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714989, 39.814526, 28.466717>,  <35.103718, 39.741436, 28.526274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714989, 39.814526, 28.466717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219987, 0.476347, -0.851293,
		-0.084628, -0.860062, -0.503122,
		-0.971825, 0.182723, -0.148890,
		34.423443, 39.869343, 28.422050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949089, 39.580078, 27.883902>,  <35.103718, 39.741436, 28.526274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949089, 39.580078, 27.883902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646744, 39.831024, 27.958834>,  <34.465336, 39.981590, 28.003794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646744, 39.831024, 27.958834>,  <34.949089, 39.580078, 27.883902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646744, 39.831024, 27.958834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083440, 0.376084, -0.922821,
		-0.649396, -0.681892, -0.336614,
		-0.755859, 0.627363, 0.187330,
		34.419987, 40.019234, 28.015034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555214, 39.620171, 27.256105>,  <34.949089, 39.580078, 27.883902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555214, 39.620171, 27.256105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413681, 39.941029, 27.448511>,  <34.328762, 40.133541, 27.563955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413681, 39.941029, 27.448511>,  <34.555214, 39.620171, 27.256105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413681, 39.941029, 27.448511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076883, 0.537486, -0.839760,
		-0.932145, -0.260150, -0.251849,
		-0.353829, 0.802141, 0.481014,
		34.307533, 40.181671, 27.592815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915257, 39.928379, 26.847914>,  <34.555214, 39.620171, 27.256105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915257, 39.928379, 26.847914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063011, 40.209057, 27.091612>,  <34.151665, 40.377464, 27.237831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063011, 40.209057, 27.091612>,  <33.915257, 39.928379, 26.847914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063011, 40.209057, 27.091612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019314, 0.661268, -0.749901,
		-0.929074, 0.265238, 0.257818,
		0.369389, 0.701694, 0.609244,
		34.173828, 40.419563, 27.274385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473953, 40.421124, 26.686632>,  <33.915257, 39.928379, 26.847914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473953, 40.421124, 26.686632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.786629, 40.591995, 26.868389>,  <33.974236, 40.694519, 26.977444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.786629, 40.591995, 26.868389>,  <33.473953, 40.421124, 26.686632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786629, 40.591995, 26.868389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108297, 0.624541, -0.773447,
		-0.614189, 0.653808, 0.441937,
		0.781693, 0.427182, 0.454391,
		34.021137, 40.720150, 27.004707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260532, 41.120625, 26.603313>,  <33.473953, 40.421124, 26.686632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260532, 41.120625, 26.603313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648445, 41.124912, 26.700804>,  <33.881195, 41.127483, 26.759298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648445, 41.124912, 26.700804>,  <33.260532, 41.120625, 26.603313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648445, 41.124912, 26.700804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150966, 0.758424, -0.634036,
		-0.191642, 0.651673, 0.733890,
		0.969785, 0.010715, 0.243727,
		33.939381, 41.128128, 26.773922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507114, 41.844616, 26.649399>,  <33.260532, 41.120625, 26.603313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507114, 41.844616, 26.649399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831806, 41.629059, 26.559341>,  <34.026623, 41.499725, 26.505308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831806, 41.629059, 26.559341>,  <33.507114, 41.844616, 26.649399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831806, 41.629059, 26.559341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089824, 0.496103, -0.863605,
		0.577083, 0.680792, 0.451107,
		0.811731, -0.538892, -0.225142,
		34.075325, 41.467392, 26.491798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026154, 42.411064, 26.442722>,  <33.507114, 41.844616, 26.649399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026154, 42.411064, 26.442722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131886, 42.049133, 26.309208>,  <34.195324, 41.831974, 26.229099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131886, 42.049133, 26.309208>,  <34.026154, 42.411064, 26.442722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131886, 42.049133, 26.309208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152355, 0.380926, -0.911967,
		0.952322, 0.190208, 0.238546,
		0.264331, -0.904830, -0.333785,
		34.211185, 41.777683, 26.209072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585205, 42.516464, 26.148178>,  <34.026154, 42.411064, 26.442722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585205, 42.516464, 26.148178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478661, 42.166489, 25.986422>,  <34.414734, 41.956505, 25.889368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478661, 42.166489, 25.986422>,  <34.585205, 42.516464, 26.148178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478661, 42.166489, 25.986422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122538, 0.385404, -0.914575,
		0.956051, -0.293163, 0.004556,
		-0.266364, -0.874939, -0.404389,
		34.398750, 41.904007, 25.865105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129280, 42.410210, 25.580313>,  <34.585205, 42.516464, 26.148178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129280, 42.410210, 25.580313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808121, 42.185516, 25.500511>,  <34.615425, 42.050701, 25.452629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808121, 42.185516, 25.500511>,  <35.129280, 42.410210, 25.580313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808121, 42.185516, 25.500511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005452, 0.341585, -0.939835,
		0.596087, -0.753507, -0.277321,
		-0.802901, -0.561735, -0.199506,
		34.567249, 42.016994, 25.440659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266476, 41.994598, 25.033493>,  <35.129280, 42.410210, 25.580313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266476, 41.994598, 25.033493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866665, 42.003201, 25.024666>,  <34.626778, 42.008362, 25.019369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866665, 42.003201, 25.024666>,  <35.266476, 41.994598, 25.033493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866665, 42.003201, 25.024666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027594, 0.306119, -0.951593,
		-0.013708, -0.951750, -0.306567,
		-0.999525, 0.021503, -0.022066,
		34.566807, 42.009651, 25.018045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676517, 41.462029, 24.743654>,  <35.266476, 41.994598, 25.033493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676517, 41.462029, 24.743654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.072918, 41.494499, 24.701067>,  <36.310757, 41.513981, 24.675514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.072918, 41.494499, 24.701067>,  <35.676517, 41.462029, 24.743654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072918, 41.494499, 24.701067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133733, -0.562335, 0.816024,
		0.006372, -0.822915, -0.568128,
		0.990997, 0.081177, -0.106467,
		36.370216, 41.518852, 24.669127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910427, 40.889961, 24.875013>,  <35.676517, 41.462029, 24.743654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910427, 40.889961, 24.875013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230881, 41.122578, 24.931572>,  <36.423153, 41.262146, 24.965508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230881, 41.122578, 24.931572>,  <35.910427, 40.889961, 24.875013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230881, 41.122578, 24.931572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327719, -0.623962, 0.709417,
		0.500780, -0.522001, -0.690459,
		0.801136, 0.581539, 0.141398,
		36.471222, 41.297039, 24.973991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436390, 40.374233, 25.032928>,  <35.910427, 40.889961, 24.875013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436390, 40.374233, 25.032928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528957, 40.732124, 25.185715>,  <36.584499, 40.946861, 25.277388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528957, 40.732124, 25.185715>,  <36.436390, 40.374233, 25.032928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528957, 40.732124, 25.185715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236198, -0.432553, 0.870120,
		0.943745, -0.111143, -0.311435,
		0.231420, 0.894732, 0.381968,
		36.598385, 41.000546, 25.300304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028637, 40.246490, 25.421696>,  <36.436390, 40.374233, 25.032928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028637, 40.246490, 25.421696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936665, 40.609791, 25.561527>,  <36.881481, 40.827770, 25.645426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936665, 40.609791, 25.561527>,  <37.028637, 40.246490, 25.421696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936665, 40.609791, 25.561527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178536, -0.313744, 0.932572,
		0.956691, 0.276836, -0.090018,
		-0.229927, 0.908255, 0.349581,
		36.867687, 40.882267, 25.666401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627819, 40.421093, 25.938124>,  <37.028637, 40.246490, 25.421696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627819, 40.421093, 25.938124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305988, 40.638535, 26.033752>,  <37.112888, 40.768997, 26.091129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305988, 40.638535, 26.033752>,  <37.627819, 40.421093, 25.938124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305988, 40.638535, 26.033752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096045, -0.278167, 0.955719,
		0.586031, 0.791911, 0.171597,
		-0.804576, 0.543600, 0.239073,
		37.064617, 40.801613, 26.105474>
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
