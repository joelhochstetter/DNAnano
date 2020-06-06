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
	<24.509634, 34.983578, 34.470043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357994, 35.026638, 34.837673>,  <24.267010, 35.052475, 35.058250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357994, 35.026638, 34.837673>,  <24.509634, 34.983578, 34.470043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357994, 35.026638, 34.837673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434319, 0.897715, 0.074000,
		-0.817100, 0.427224, -0.387076,
		-0.379098, 0.107649, 0.919074,
		24.244265, 35.058933, 35.113396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172007, 35.602810, 34.337662>,  <24.509634, 34.983578, 34.470043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172007, 35.602810, 34.337662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266191, 35.497841, 34.711975>,  <24.322702, 35.434860, 34.936562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266191, 35.497841, 34.711975>,  <24.172007, 35.602810, 34.337662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.266191, 35.497841, 34.711975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360088, 0.917886, 0.166799,
		-0.902715, 0.297691, 0.310621,
		0.235460, -0.262423, 0.935785,
		24.336830, 35.419113, 34.992710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.047327, 36.221962, 34.765797>,  <24.172007, 35.602810, 34.337662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.047327, 36.221962, 34.765797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.281696, 35.976486, 34.977486>,  <24.422318, 35.829201, 35.104500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.281696, 35.976486, 34.977486>,  <24.047327, 36.221962, 34.765797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.281696, 35.976486, 34.977486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638618, 0.751704, 0.164647,
		-0.498859, 0.241497, 0.832357,
		0.585925, -0.613694, 0.529219,
		24.457474, 35.792377, 35.136250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.299562, 36.507595, 35.499992>,  <24.047327, 36.221962, 34.765797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.299562, 36.507595, 35.499992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585333, 36.253880, 35.381821>,  <24.756796, 36.101650, 35.310917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585333, 36.253880, 35.381821>,  <24.299562, 36.507595, 35.499992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.585333, 36.253880, 35.381821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671793, 0.739859, 0.036104,
		0.195672, -0.224258, 0.954684,
		0.714428, -0.634285, -0.295425,
		24.799662, 36.063595, 35.293194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899342, 36.409992, 35.952496>,  <24.299562, 36.507595, 35.499992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899342, 36.409992, 35.952496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995781, 36.357601, 35.567848>,  <25.053644, 36.326168, 35.337059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995781, 36.357601, 35.567848>,  <24.899342, 36.409992, 35.952496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995781, 36.357601, 35.567848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682746, 0.727085, 0.072149,
		0.689732, -0.673938, 0.264722,
		0.241099, -0.130975, -0.961622,
		25.068111, 36.318310, 35.279362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583628, 36.386353, 36.021194>,  <24.899342, 36.409992, 35.952496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583628, 36.386353, 36.021194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464045, 36.502678, 35.657646>,  <25.392294, 36.572472, 35.439518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464045, 36.502678, 35.657646>,  <25.583628, 36.386353, 36.021194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464045, 36.502678, 35.657646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568784, 0.819062, 0.074982,
		0.766231, -0.494537, -0.410273,
		-0.298957, 0.290810, -0.908875,
		25.374357, 36.589920, 35.384983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706900, 36.942001, 36.525608>,  <25.583628, 36.386353, 36.021194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706900, 36.942001, 36.525608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982014, 36.657234, 36.582352>,  <26.147081, 36.486374, 36.616398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982014, 36.657234, 36.582352>,  <25.706900, 36.942001, 36.525608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982014, 36.657234, 36.582352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681211, 0.700504, 0.212713,
		-0.250805, -0.049667, 0.966763,
		0.687786, -0.711918, 0.141856,
		26.188349, 36.443657, 36.624908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238600, 36.793697, 37.203743>,  <25.706900, 36.942001, 36.525608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238600, 36.793697, 37.203743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369537, 36.750469, 36.828262>,  <26.448099, 36.724533, 36.602974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369537, 36.750469, 36.828262>,  <26.238600, 36.793697, 37.203743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369537, 36.750469, 36.828262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570220, 0.814748, 0.105050,
		0.753456, -0.569656, 0.328324,
		0.327344, -0.108067, -0.938705,
		26.467741, 36.718048, 36.546650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960186, 37.026211, 37.087982>,  <26.238600, 36.793697, 37.203743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960186, 37.026211, 37.087982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868690, 36.991734, 36.700115>,  <26.813793, 36.971046, 36.467396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868690, 36.991734, 36.700115>,  <26.960186, 37.026211, 37.087982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868690, 36.991734, 36.700115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864461, 0.440043, -0.243041,
		0.447643, -0.893830, -0.026142,
		-0.228741, -0.086197, -0.969664,
		26.800068, 36.965874, 36.409218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556362, 36.795918, 36.713680>,  <26.960186, 37.026211, 37.087982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556362, 36.795918, 36.713680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318584, 36.999641, 36.464767>,  <27.175917, 37.121876, 36.315418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318584, 36.999641, 36.464767>,  <27.556362, 36.795918, 36.713680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318584, 36.999641, 36.464767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797482, 0.472726, -0.374904,
		0.103228, -0.719121, -0.687175,
		-0.594446, 0.509309, -0.622284,
		27.140251, 37.152435, 36.278084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060715, 37.057186, 36.327274>,  <27.556362, 36.795918, 36.713680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060715, 37.057186, 36.327274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768293, 37.237797, 36.122654>,  <27.592840, 37.346165, 35.999882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768293, 37.237797, 36.122654>,  <28.060715, 37.057186, 36.327274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768293, 37.237797, 36.122654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662739, 0.648214, -0.374961,
		0.162288, -0.613140, -0.773125,
		-0.731054, 0.451528, -0.511549,
		27.548977, 37.373257, 35.969189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285961, 37.252270, 35.694130>,  <28.060715, 37.057186, 36.327274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285961, 37.252270, 35.694130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990711, 37.487343, 35.826675>,  <27.813562, 37.628387, 35.906200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990711, 37.487343, 35.826675>,  <28.285961, 37.252270, 35.694130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990711, 37.487343, 35.826675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589361, 0.800715, -0.107278,
		-0.328372, 0.116107, -0.937385,
		-0.738123, 0.587685, 0.331361,
		27.769274, 37.663647, 35.926083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865898, 37.769802, 35.536575>,  <28.285961, 37.252270, 35.694130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865898, 37.769802, 35.536575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671232, 38.106697, 35.443806>,  <28.554432, 38.308834, 35.388142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671232, 38.106697, 35.443806>,  <28.865898, 37.769802, 35.536575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671232, 38.106697, 35.443806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858010, -0.410918, 0.308165,
		0.164245, 0.348970, 0.922629,
		-0.486665, 0.842239, -0.231928,
		28.525232, 38.359367, 35.374226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440075, 38.096249, 36.073200>,  <28.865898, 37.769802, 35.536575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440075, 38.096249, 36.073200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291758, 38.203598, 35.717564>,  <28.202766, 38.268005, 35.504181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291758, 38.203598, 35.717564>,  <28.440075, 38.096249, 36.073200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291758, 38.203598, 35.717564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854396, -0.473824, 0.213301,
		-0.364030, 0.838730, 0.404987,
		-0.370795, 0.268372, -0.889094,
		28.180519, 38.284111, 35.450836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886259, 38.582020, 36.118095>,  <28.440075, 38.096249, 36.073200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886259, 38.582020, 36.118095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873970, 38.323784, 35.812866>,  <27.866596, 38.168842, 35.629730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873970, 38.323784, 35.812866>,  <27.886259, 38.582020, 36.118095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873970, 38.323784, 35.812866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818842, -0.421545, 0.389613,
		-0.573197, 0.636802, -0.515682,
		-0.030723, -0.645587, -0.763069,
		27.864754, 38.130108, 35.583946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215874, 38.582367, 35.778564>,  <27.886259, 38.582020, 36.118095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215874, 38.582367, 35.778564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381187, 38.234432, 35.670803>,  <27.480375, 38.025673, 35.606144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381187, 38.234432, 35.670803>,  <27.215874, 38.582367, 35.778564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381187, 38.234432, 35.670803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828159, -0.482053, 0.285968,
		-0.378613, 0.104923, -0.919589,
		0.413286, -0.869837, -0.269405,
		27.505173, 37.973480, 35.589981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728718, 38.198685, 35.463482>,  <27.215874, 38.582367, 35.778564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728718, 38.198685, 35.463482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973888, 37.908577, 35.588898>,  <27.120991, 37.734512, 35.664146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973888, 37.908577, 35.588898>,  <26.728718, 38.198685, 35.463482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973888, 37.908577, 35.588898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789251, -0.580780, 0.199445,
		0.037449, -0.369710, -0.928392,
		0.612928, -0.725265, 0.313544,
		27.157766, 37.690998, 35.682961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454254, 37.481884, 35.135277>,  <26.728718, 38.198685, 35.463482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454254, 37.481884, 35.135277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686642, 37.382488, 35.445301>,  <26.826075, 37.322849, 35.631317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686642, 37.382488, 35.445301>,  <26.454254, 37.481884, 35.135277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686642, 37.382488, 35.445301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674081, -0.680592, 0.287072,
		0.456168, -0.689237, -0.562906,
		0.580970, -0.248491, 0.775065,
		26.860933, 37.307941, 35.677822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529327, 36.788300, 35.132641>,  <26.454254, 37.481884, 35.135277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529327, 36.788300, 35.132641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590733, 36.900108, 35.511757>,  <26.627577, 36.967194, 35.739227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590733, 36.900108, 35.511757>,  <26.529327, 36.788300, 35.132641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590733, 36.900108, 35.511757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803707, -0.522696, 0.284332,
		0.574882, -0.805392, 0.144412,
		0.153515, 0.279522, 0.947787,
		26.636787, 36.983967, 35.796093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286236, 36.979065, 34.446156>,  <26.529327, 36.788300, 35.132641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286236, 36.979065, 34.446156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231199, 37.039425, 34.054585>,  <26.198177, 37.075642, 33.819641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231199, 37.039425, 34.054585>,  <26.286236, 36.979065, 34.446156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231199, 37.039425, 34.054585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959875, 0.264136, -0.094197,
		0.244355, -0.952608, -0.181185,
		-0.137590, 0.150898, -0.978927,
		26.189922, 37.084694, 33.760906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807787, 36.468407, 34.003017>,  <26.286236, 36.979065, 34.446156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807787, 36.468407, 34.003017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686768, 36.819889, 33.855320>,  <26.614157, 37.030777, 33.766701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686768, 36.819889, 33.855320>,  <26.807787, 36.468407, 34.003017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686768, 36.819889, 33.855320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945235, 0.326385, 0.002215,
		0.122462, -0.348350, -0.929331,
		-0.302547, 0.878707, -0.369242,
		26.596003, 37.083500, 33.744549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248440, 36.773792, 33.435017>,  <26.807787, 36.468407, 34.003017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248440, 36.773792, 33.435017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088617, 37.086586, 33.626369>,  <26.992723, 37.274261, 33.741180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088617, 37.086586, 33.626369>,  <27.248440, 36.773792, 33.435017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088617, 37.086586, 33.626369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880678, 0.472309, -0.036492,
		-0.254482, 0.406722, -0.877392,
		-0.399557, 0.781986, 0.478385,
		26.968750, 37.321182, 33.769886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399994, 37.348034, 33.057789>,  <27.248440, 36.773792, 33.435017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399994, 37.348034, 33.057789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342751, 37.417217, 33.447578>,  <27.308405, 37.458729, 33.681454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342751, 37.417217, 33.447578>,  <27.399994, 37.348034, 33.057789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342751, 37.417217, 33.447578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832039, 0.554206, 0.023824,
		-0.535940, 0.814212, -0.223218,
		-0.143107, 0.172958, 0.974477,
		27.299818, 37.469105, 33.739922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382130, 38.038204, 33.236378>,  <27.399994, 37.348034, 33.057789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382130, 38.038204, 33.236378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523975, 37.842567, 33.555134>,  <27.609083, 37.725185, 33.746387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523975, 37.842567, 33.555134>,  <27.382130, 38.038204, 33.236378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523975, 37.842567, 33.555134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777476, 0.627685, 0.039269,
		-0.519402, 0.605638, 0.602846,
		0.354615, -0.489095, 0.796890,
		27.630360, 37.695839, 33.794201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630497, 38.641705, 33.656826>,  <27.382130, 38.038204, 33.236378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630497, 38.641705, 33.656826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799540, 38.298061, 33.772297>,  <27.900965, 38.091873, 33.841579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799540, 38.298061, 33.772297>,  <27.630497, 38.641705, 33.656826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799540, 38.298061, 33.772297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902204, 0.429075, -0.043844,
		-0.086196, 0.278972, 0.956423,
		0.422608, -0.859110, 0.288675,
		27.926323, 38.040329, 33.858898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178289, 38.635490, 34.228058>,  <27.630497, 38.641705, 33.656826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178289, 38.635490, 34.228058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238840, 38.321651, 33.987560>,  <28.275169, 38.133347, 33.843262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238840, 38.321651, 33.987560>,  <28.178289, 38.635490, 34.228058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238840, 38.321651, 33.987560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957858, 0.266647, -0.106804,
		0.244118, -0.559738, 0.791897,
		0.151374, -0.784598, -0.601242,
		28.284252, 38.086273, 33.807186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007174, 38.512794, 34.214603>,  <28.178289, 38.635490, 34.228058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007174, 38.512794, 34.214603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921082, 38.293476, 33.891357>,  <28.869427, 38.161884, 33.697411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921082, 38.293476, 33.891357>,  <29.007174, 38.512794, 34.214603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921082, 38.293476, 33.891357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885218, 0.239905, -0.398542,
		0.412390, -0.801133, 0.433729,
		-0.215231, -0.548299, -0.808111,
		28.856512, 38.128986, 33.648926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513235, 37.924393, 34.093914>,  <29.007174, 38.512794, 34.214603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513235, 37.924393, 34.093914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365009, 38.033741, 33.738846>,  <29.276073, 38.099350, 33.525806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365009, 38.033741, 33.738846>,  <29.513235, 37.924393, 34.093914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365009, 38.033741, 33.738846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904322, 0.324185, -0.277680,
		0.211858, -0.905634, -0.367347,
		-0.370564, 0.273371, -0.887666,
		29.253839, 38.115753, 33.472546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842867, 37.958351, 33.412724>,  <29.513235, 37.924393, 34.093914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842867, 37.958351, 33.412724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131193, 37.797657, 33.186794>,  <30.304190, 37.701241, 33.051235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131193, 37.797657, 33.186794>,  <29.842867, 37.958351, 33.412724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131193, 37.797657, 33.186794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535003, 0.195620, -0.821891,
		0.440678, 0.894616, -0.073927,
		0.720815, -0.401740, -0.564828,
		30.347437, 37.677135, 33.017345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062788, 38.419128, 32.827572>,  <29.842867, 37.958351, 33.412724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062788, 38.419128, 32.827572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185574, 38.060223, 32.700645>,  <30.259245, 37.844879, 32.624489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185574, 38.060223, 32.700645>,  <30.062788, 38.419128, 32.827572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185574, 38.060223, 32.700645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500419, 0.131433, -0.855749,
		0.809540, 0.421473, -0.408663,
		0.306963, -0.897265, -0.317314,
		30.277662, 37.791042, 32.605450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034901, 38.471588, 32.160404>,  <30.062788, 38.419128, 32.827572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034901, 38.471588, 32.160404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113716, 38.079662, 32.173885>,  <30.161005, 37.844505, 32.181973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113716, 38.079662, 32.173885>,  <30.034901, 38.471588, 32.160404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113716, 38.079662, 32.173885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304012, -0.093747, -0.948045,
		0.932069, 0.176557, -0.316347,
		0.197041, -0.979816, 0.033703,
		30.172829, 37.785717, 32.183998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365818, 38.223110, 31.474237>,  <30.034901, 38.471588, 32.160404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365818, 38.223110, 31.474237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159908, 37.925838, 31.645206>,  <30.036364, 37.747475, 31.747787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159908, 37.925838, 31.645206>,  <30.365818, 38.223110, 31.474237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159908, 37.925838, 31.645206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386507, -0.243839, -0.889468,
		0.765259, -0.623077, -0.161723,
		-0.514773, -0.743181, 0.427424,
		30.005476, 37.702885, 31.773434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561359, 37.510941, 31.108406>,  <30.365818, 38.223110, 31.474237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561359, 37.510941, 31.108406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206388, 37.463654, 31.286619>,  <29.993406, 37.435280, 31.393547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206388, 37.463654, 31.286619>,  <30.561359, 37.510941, 31.108406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206388, 37.463654, 31.286619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394014, -0.307076, -0.866290,
		0.239227, -0.944314, 0.225926,
		-0.887426, -0.118222, 0.445533,
		29.940161, 37.428188, 31.420279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247517, 36.786057, 30.882278>,  <30.561359, 37.510941, 31.108406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247517, 36.786057, 30.882278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939587, 37.013020, 30.999187>,  <29.754829, 37.149197, 31.069332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939587, 37.013020, 30.999187>,  <30.247517, 36.786057, 30.882278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939587, 37.013020, 30.999187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563883, -0.390089, -0.727919,
		-0.299013, -0.725177, 0.620250,
		-0.769823, 0.567405, 0.292273,
		29.708639, 37.183243, 31.086868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692690, 36.371902, 30.910103>,  <30.247517, 36.786057, 30.882278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692690, 36.371902, 30.910103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547058, 36.739243, 30.848030>,  <29.459679, 36.959648, 30.810785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547058, 36.739243, 30.848030>,  <29.692690, 36.371902, 30.910103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547058, 36.739243, 30.848030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702797, -0.380225, -0.601254,
		-0.611165, -0.109840, 0.783844,
		-0.364079, 0.918349, -0.155185,
		29.437834, 37.014748, 30.801476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969732, 36.349590, 30.997070>,  <29.692690, 36.371902, 30.910103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969732, 36.349590, 30.997070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032497, 36.677227, 30.776354>,  <29.070156, 36.873810, 30.643925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032497, 36.677227, 30.776354>,  <28.969732, 36.349590, 30.997070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032497, 36.677227, 30.776354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667693, -0.323699, -0.670377,
		-0.727712, 0.473615, 0.496108,
		0.156911, 0.819089, -0.551790,
		29.079571, 36.922955, 30.610817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434444, 36.401539, 30.553070>,  <28.969732, 36.349590, 30.997070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434444, 36.401539, 30.553070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643139, 36.695007, 30.378933>,  <28.768354, 36.871086, 30.274450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643139, 36.695007, 30.378933>,  <28.434444, 36.401539, 30.553070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643139, 36.695007, 30.378933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531700, -0.119425, -0.838471,
		-0.667150, 0.668932, 0.327783,
		0.521734, 0.733667, -0.435345,
		28.799660, 36.915108, 30.248329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901026, 36.774582, 30.108723>,  <28.434444, 36.401539, 30.553070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901026, 36.774582, 30.108723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274183, 36.854485, 29.988850>,  <28.498077, 36.902424, 29.916925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274183, 36.854485, 29.988850>,  <27.901026, 36.774582, 30.108723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274183, 36.854485, 29.988850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278809, -0.126177, -0.952021,
		-0.227984, 0.971688, -0.062016,
		0.932893, 0.199755, -0.299682,
		28.554050, 36.914410, 29.898945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991158, 37.285061, 29.585958>,  <27.901026, 36.774582, 30.108723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991158, 37.285061, 29.585958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285139, 37.020351, 29.526770>,  <28.461527, 36.861526, 29.491257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285139, 37.020351, 29.526770>,  <27.991158, 37.285061, 29.585958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285139, 37.020351, 29.526770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388007, -0.231432, -0.892127,
		0.556144, 0.713084, -0.426866,
		0.734952, -0.661778, -0.147972,
		28.505625, 36.821819, 29.482378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783134, 37.739677, 28.942604>,  <27.991158, 37.285061, 29.585958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783134, 37.739677, 28.942604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081339, 37.989635, 28.849890>,  <28.260262, 38.139610, 28.794262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081339, 37.989635, 28.849890>,  <27.783134, 37.739677, 28.942604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081339, 37.989635, 28.849890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655253, -0.623583, 0.426366,
		0.121897, -0.469737, -0.874350,
		0.745509, 0.624894, -0.231783,
		28.304991, 38.177105, 28.780355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292255, 37.301529, 28.689070>,  <27.783134, 37.739677, 28.942604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292255, 37.301529, 28.689070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445841, 37.629318, 28.859261>,  <28.537992, 37.825993, 28.961374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445841, 37.629318, 28.859261>,  <28.292255, 37.301529, 28.689070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445841, 37.629318, 28.859261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579236, -0.572623, 0.580162,
		0.719067, 0.023691, -0.694537,
		0.383964, 0.819476, 0.425477,
		28.561029, 37.875160, 28.986904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990210, 37.118378, 28.720192>,  <28.292255, 37.301529, 28.689070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990210, 37.118378, 28.720192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859331, 37.378761, 28.994184>,  <28.780804, 37.534992, 29.158579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859331, 37.378761, 28.994184>,  <28.990210, 37.118378, 28.720192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859331, 37.378761, 28.994184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494403, -0.499820, 0.711158,
		0.805300, 0.571344, -0.158296,
		-0.327196, 0.650958, 0.684979,
		28.761171, 37.574047, 29.199678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529791, 37.278503, 29.265171>,  <28.990210, 37.118378, 28.720192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529791, 37.278503, 29.265171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186340, 37.370392, 29.448469>,  <28.980270, 37.425526, 29.558447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186340, 37.370392, 29.448469>,  <29.529791, 37.278503, 29.265171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186340, 37.370392, 29.448469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427241, -0.173244, 0.887385,
		0.283242, 0.957712, 0.050604,
		-0.858626, 0.229725, 0.458244,
		28.928753, 37.439308, 29.585943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466782, 37.904453, 29.694632>,  <29.529791, 37.278503, 29.265171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466782, 37.904453, 29.694632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249798, 37.612938, 29.861774>,  <29.119608, 37.438030, 29.962061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249798, 37.612938, 29.861774>,  <29.466782, 37.904453, 29.694632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249798, 37.612938, 29.861774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508535, 0.111046, 0.853851,
		-0.668676, 0.675677, 0.310375,
		-0.542462, -0.728786, 0.417859,
		29.087059, 37.394302, 29.987133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233858, 38.185963, 30.347450>,  <29.466782, 37.904453, 29.694632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233858, 38.185963, 30.347450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220098, 37.789341, 30.397474>,  <29.211843, 37.551369, 30.427488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220098, 37.789341, 30.397474>,  <29.233858, 38.185963, 30.347450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220098, 37.789341, 30.397474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454281, 0.095946, 0.885677,
		-0.890194, 0.087279, 0.447143,
		-0.034399, -0.991553, 0.125060,
		29.209778, 37.491875, 30.434992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765570, 38.134888, 30.954132>,  <29.233858, 38.185963, 30.347450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765570, 38.134888, 30.954132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954426, 37.782478, 30.942240>,  <29.067739, 37.571033, 30.935104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954426, 37.782478, 30.942240>,  <28.765570, 38.134888, 30.954132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954426, 37.782478, 30.942240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292923, 0.124987, 0.947932,
		-0.831433, -0.456265, 0.317083,
		0.472139, -0.881023, -0.029732,
		29.096067, 37.518173, 30.933321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698702, 37.858433, 31.558208>,  <28.765570, 38.134888, 30.954132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698702, 37.858433, 31.558208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012545, 37.659431, 31.410217>,  <29.200851, 37.540031, 31.321423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012545, 37.659431, 31.410217>,  <28.698702, 37.858433, 31.558208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012545, 37.659431, 31.410217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437107, 0.020670, 0.899172,
		-0.439691, -0.867218, 0.233678,
		0.784608, -0.497500, -0.369978,
		29.247927, 37.510181, 31.299223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777842, 37.262875, 31.974714>,  <28.698702, 37.858433, 31.558208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777842, 37.262875, 31.974714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138277, 37.308620, 31.807404>,  <29.354538, 37.336067, 31.707016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138277, 37.308620, 31.807404>,  <28.777842, 37.262875, 31.974714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138277, 37.308620, 31.807404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427817, -0.077039, 0.900576,
		0.070767, -0.990448, -0.118345,
		0.901091, 0.114361, -0.418279,
		29.408604, 37.342930, 31.681919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172167, 36.634590, 32.225456>,  <28.777842, 37.262875, 31.974714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172167, 36.634590, 32.225456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396357, 36.953533, 32.135937>,  <29.530870, 37.144901, 32.082226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396357, 36.953533, 32.135937>,  <29.172167, 36.634590, 32.225456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396357, 36.953533, 32.135937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429769, -0.049033, 0.901607,
		0.707932, -0.601508, -0.370163,
		0.560474, 0.797361, -0.223797,
		29.564499, 37.192741, 32.068798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956099, 36.664787, 32.334076>,  <29.172167, 36.634590, 32.225456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956099, 36.664787, 32.334076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912310, 37.061962, 32.352348>,  <29.886036, 37.300266, 32.363312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912310, 37.061962, 32.352348>,  <29.956099, 36.664787, 32.334076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912310, 37.061962, 32.352348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746939, 0.051858, 0.662867,
		0.655818, 0.106686, -0.747343,
		-0.109474, 0.992939, 0.045678,
		29.879467, 37.359844, 32.366051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572771, 36.780376, 31.950476>,  <29.956099, 36.664787, 32.334076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572771, 36.780376, 31.950476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875500, 36.753326, 32.210522>,  <31.057137, 36.737095, 32.366550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875500, 36.753326, 32.210522>,  <30.572771, 36.780376, 31.950476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875500, 36.753326, 32.210522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499902, 0.700678, -0.509066,
		-0.421094, 0.710266, 0.564094,
		0.756820, -0.067627, 0.650115,
		31.102547, 36.733040, 32.405556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682869, 37.450344, 32.147495>,  <30.572771, 36.780376, 31.950476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682869, 37.450344, 32.147495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003309, 37.221279, 32.217110>,  <31.195574, 37.083839, 32.258881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003309, 37.221279, 32.217110>,  <30.682869, 37.450344, 32.147495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003309, 37.221279, 32.217110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588471, 0.806688, -0.054368,
		-0.109262, 0.145972, 0.983236,
		0.801102, -0.572666, 0.174041,
		31.243639, 37.049480, 32.269321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615301, 36.991196, 32.739792>,  <30.682869, 37.450344, 32.147495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615301, 36.991196, 32.739792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440334, 36.634899, 32.789173>,  <30.335354, 36.421120, 32.818802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440334, 36.634899, 32.789173>,  <30.615301, 36.991196, 32.739792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440334, 36.634899, 32.789173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677332, 0.416648, 0.606321,
		-0.591512, 0.181600, -0.785579,
		-0.437418, -0.890745, 0.123449,
		30.309109, 36.367676, 32.826206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972134, 37.671131, 32.879837>,  <30.615301, 36.991196, 32.739792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972134, 37.671131, 32.879837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769039, 38.002758, 32.973522>,  <30.647182, 38.201733, 33.029732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769039, 38.002758, 32.973522>,  <30.972134, 37.671131, 32.879837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769039, 38.002758, 32.973522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860189, 0.472805, 0.191128,
		0.047723, 0.298507, -0.953214,
		-0.507737, 0.829065, 0.234209,
		30.616718, 38.251476, 33.043785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059179, 38.262741, 32.344753>,  <30.972134, 37.671131, 32.879837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059179, 38.262741, 32.344753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014874, 38.364830, 32.728958>,  <30.988291, 38.426083, 32.959480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014874, 38.364830, 32.728958>,  <31.059179, 38.262741, 32.344753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014874, 38.364830, 32.728958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970366, 0.236614, 0.049027,
		-0.214759, 0.937483, -0.273870,
		-0.110763, 0.255225, 0.960516,
		30.981644, 38.441399, 33.017113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527905, 38.826775, 32.414516>,  <31.059179, 38.262741, 32.344753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527905, 38.826775, 32.414516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453033, 38.700134, 32.786480>,  <31.408112, 38.624149, 33.009659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453033, 38.700134, 32.786480>,  <31.527905, 38.826775, 32.414516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453033, 38.700134, 32.786480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974164, 0.061958, 0.217178,
		-0.126374, 0.946533, 0.296826,
		-0.187176, -0.316602, 0.929908,
		31.396881, 38.605152, 33.065453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062347, 38.870277, 32.969788>,  <31.527905, 38.826775, 32.414516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062347, 38.870277, 32.969788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268005, 38.657104, 32.700974>,  <32.391399, 38.529202, 32.539684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268005, 38.657104, 32.700974>,  <32.062347, 38.870277, 32.969788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268005, 38.657104, 32.700974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103370, 0.816321, -0.568273,
		0.851452, 0.222705, 0.474797,
		0.514144, -0.532937, -0.672038,
		32.422249, 38.497223, 32.499363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693096, 39.217407, 32.970734>,  <32.062347, 38.870277, 32.969788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693096, 39.217407, 32.970734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683189, 38.998440, 32.636135>,  <32.677246, 38.867058, 32.435375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683189, 38.998440, 32.636135>,  <32.693096, 39.217407, 32.970734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683189, 38.998440, 32.636135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100943, 0.833842, -0.542696,
		0.994584, 0.070999, -0.075907,
		-0.024764, -0.547419, -0.836492,
		32.675758, 38.834213, 32.385189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081451, 39.507854, 32.642101>,  <32.693096, 39.217407, 32.970734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081451, 39.507854, 32.642101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832348, 39.355743, 32.368587>,  <32.682888, 39.264477, 32.204479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832348, 39.355743, 32.368587>,  <33.081451, 39.507854, 32.642101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832348, 39.355743, 32.368587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043998, 0.855541, -0.515862,
		0.781176, -0.351342, -0.516064,
		-0.622758, -0.380273, -0.683787,
		32.645519, 39.241661, 32.163452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367901, 39.668945, 32.058731>,  <33.081451, 39.507854, 32.642101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367901, 39.668945, 32.058731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992500, 39.599293, 31.939470>,  <32.767262, 39.557499, 31.867914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992500, 39.599293, 31.939470>,  <33.367901, 39.668945, 32.058731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992500, 39.599293, 31.939470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094239, 0.701538, -0.706373,
		0.332167, -0.691029, -0.641984,
		-0.938501, -0.174134, -0.298150,
		32.710949, 39.547050, 31.850025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439762, 39.491444, 31.296438>,  <33.367901, 39.668945, 32.058731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439762, 39.491444, 31.296438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057426, 39.593258, 31.355204>,  <32.828026, 39.654346, 31.390463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057426, 39.593258, 31.355204>,  <33.439762, 39.491444, 31.296438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057426, 39.593258, 31.355204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019090, 0.552607, -0.833224,
		-0.293273, -0.793622, -0.533062,
		-0.955838, 0.254538, 0.146914,
		32.770676, 39.669621, 31.399279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226566, 39.439655, 30.656029>,  <33.439762, 39.491444, 31.296438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226566, 39.439655, 30.656029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955574, 39.660801, 30.850084>,  <32.792980, 39.793488, 30.966516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955574, 39.660801, 30.850084>,  <33.226566, 39.439655, 30.656029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955574, 39.660801, 30.850084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028609, 0.639260, -0.768459,
		-0.734986, -0.534494, -0.417268,
		-0.677479, 0.552868, 0.485138,
		32.752331, 39.826660, 30.995626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626793, 39.571255, 30.215723>,  <33.226566, 39.439655, 30.656029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626793, 39.571255, 30.215723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712261, 39.853416, 30.486055>,  <32.763542, 40.022713, 30.648254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712261, 39.853416, 30.486055>,  <32.626793, 39.571255, 30.215723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712261, 39.853416, 30.486055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161537, 0.656773, -0.736583,
		-0.963457, 0.266559, 0.026385,
		0.213672, 0.705404, 0.675832,
		32.776363, 40.065037, 30.688805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078114, 39.327187, 29.632641>,  <32.626793, 39.571255, 30.215723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078114, 39.327187, 29.632641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029747, 39.044434, 29.353872>,  <33.000725, 38.874783, 29.186611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029747, 39.044434, 29.353872>,  <33.078114, 39.327187, 29.632641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029747, 39.044434, 29.353872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766937, 0.379207, -0.517696,
		0.630226, -0.597095, 0.496279,
		-0.120921, -0.706880, -0.696921,
		32.993469, 38.832371, 29.144796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558945, 39.479279, 29.164503>,  <33.078114, 39.327187, 29.632641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558945, 39.479279, 29.164503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478012, 39.102051, 29.058914>,  <33.429451, 38.875713, 28.995562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478012, 39.102051, 29.058914>,  <33.558945, 39.479279, 29.164503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478012, 39.102051, 29.058914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712865, 0.042987, -0.699983,
		0.671480, -0.329807, 0.663583,
		-0.202334, -0.943069, -0.263972,
		33.417313, 38.819130, 28.979723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167877, 39.352028, 28.762400>,  <33.558945, 39.479279, 29.164503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167877, 39.352028, 28.762400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955990, 39.021114, 28.687559>,  <33.828857, 38.822567, 28.642654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955990, 39.021114, 28.687559>,  <34.167877, 39.352028, 28.762400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955990, 39.021114, 28.687559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613718, -0.221583, -0.757793,
		0.585449, -0.516243, 0.625094,
		-0.529716, -0.827281, -0.187102,
		33.797073, 38.772930, 28.631428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640312, 38.804333, 28.571487>,  <34.167877, 39.352028, 28.762400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640312, 38.804333, 28.571487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285534, 38.693127, 28.423958>,  <34.072666, 38.626404, 28.335440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285534, 38.693127, 28.423958>,  <34.640312, 38.804333, 28.571487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285534, 38.693127, 28.423958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455303, -0.392127, -0.799334,
		0.077604, -0.876894, 0.474379,
		-0.886948, -0.278018, -0.368822,
		34.019451, 38.609722, 28.313311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638355, 38.111019, 28.385036>,  <34.640312, 38.804333, 28.571487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638355, 38.111019, 28.385036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331799, 38.243393, 28.164806>,  <34.147865, 38.322815, 28.032667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331799, 38.243393, 28.164806>,  <34.638355, 38.111019, 28.385036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331799, 38.243393, 28.164806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463513, -0.308529, -0.830642,
		-0.444755, -0.891792, 0.083061,
		-0.766387, 0.330933, -0.550577,
		34.101883, 38.342674, 27.999634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297054, 37.539616, 28.053537>,  <34.638355, 38.111019, 28.385036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297054, 37.539616, 28.053537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271713, 37.886543, 27.856058>,  <34.256508, 38.094700, 27.737572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271713, 37.886543, 27.856058>,  <34.297054, 37.539616, 28.053537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271713, 37.886543, 27.856058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383941, -0.435435, -0.814239,
		-0.921181, -0.241137, -0.305414,
		-0.063355, 0.867323, -0.493697,
		34.252708, 38.146740, 27.707949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977478, 37.374989, 27.445734>,  <34.297054, 37.539616, 28.053537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977478, 37.374989, 27.445734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199406, 37.704491, 27.399099>,  <34.332561, 37.902191, 27.371119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199406, 37.704491, 27.399099>,  <33.977478, 37.374989, 27.445734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199406, 37.704491, 27.399099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419711, -0.398128, -0.815682,
		-0.718341, 0.403627, -0.566631,
		0.554823, 0.823759, -0.116585,
		34.365852, 37.951618, 27.364124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911217, 37.497448, 26.708742>,  <33.977478, 37.374989, 27.445734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911217, 37.497448, 26.708742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217274, 37.716980, 26.843410>,  <34.400909, 37.848698, 26.924212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217274, 37.716980, 26.843410>,  <33.911217, 37.497448, 26.708742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217274, 37.716980, 26.843410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442857, -0.069031, -0.893931,
		-0.467372, 0.833081, -0.295870,
		0.765141, 0.548826, 0.336672,
		34.446815, 37.881626, 26.944412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043560, 37.973297, 26.245506>,  <33.911217, 37.497448, 26.708742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043560, 37.973297, 26.245506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390324, 37.963379, 26.444647>,  <34.598381, 37.957428, 26.564131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390324, 37.963379, 26.444647>,  <34.043560, 37.973297, 26.245506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390324, 37.963379, 26.444647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498263, 0.014353, -0.866907,
		0.014353, 0.999589, 0.024799,
		0.866907, -0.024799, 0.497852,
		34.650394, 37.955940, 26.594002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426605, 38.539513, 26.137403>,  <34.043560, 37.973297, 26.245506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426605, 38.539513, 26.137403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698307, 38.255608, 26.212076>,  <34.861328, 38.085266, 26.256880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698307, 38.255608, 26.212076>,  <34.426605, 38.539513, 26.137403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698307, 38.255608, 26.212076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281091, 0.016630, -0.959537,
		0.677936, 0.704248, 0.210803,
		0.679258, -0.709759, 0.186684,
		34.902084, 38.042679, 26.268082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086353, 38.816826, 25.875650>,  <34.426605, 38.539513, 26.137403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086353, 38.816826, 25.875650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172596, 38.430275, 25.931692>,  <35.224342, 38.198345, 25.965317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172596, 38.430275, 25.931692>,  <35.086353, 38.816826, 25.875650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172596, 38.430275, 25.931692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449501, -0.029148, -0.892804,
		0.866869, 0.255475, 0.428103,
		0.215610, -0.966376, 0.140104,
		35.237278, 38.140362, 25.973722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734047, 38.790607, 25.564041>,  <35.086353, 38.816826, 25.875650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734047, 38.790607, 25.564041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595318, 38.415813, 25.580885>,  <35.512081, 38.190937, 25.590990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595318, 38.415813, 25.580885>,  <35.734047, 38.790607, 25.564041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595318, 38.415813, 25.580885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452045, -0.206325, -0.867805,
		0.821807, -0.281944, 0.495118,
		-0.346827, -0.936983, 0.042108,
		35.491268, 38.134720, 25.593517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242374, 38.325237, 25.435213>,  <35.734047, 38.790607, 25.564041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242374, 38.325237, 25.435213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906437, 38.131294, 25.337582>,  <35.704876, 38.014927, 25.279003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906437, 38.131294, 25.337582>,  <36.242374, 38.325237, 25.435213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906437, 38.131294, 25.337582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340846, -0.121077, -0.932290,
		0.422479, -0.866170, 0.266949,
		-0.839843, -0.484861, -0.244078,
		35.654484, 37.985836, 25.264359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403824, 37.765079, 24.988665>,  <36.242374, 38.325237, 25.435213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403824, 37.765079, 24.988665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012028, 37.774921, 24.908670>,  <35.776951, 37.780827, 24.860674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012028, 37.774921, 24.908670>,  <36.403824, 37.765079, 24.988665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012028, 37.774921, 24.908670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193712, -0.158143, -0.968229,
		-0.055450, -0.987110, 0.150133,
		-0.979490, 0.024606, -0.199984,
		35.718182, 37.782303, 24.848675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378601, 37.340565, 24.423098>,  <36.403824, 37.765079, 24.988665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378601, 37.340565, 24.423098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011326, 37.494141, 24.384069>,  <35.790958, 37.586285, 24.360653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011326, 37.494141, 24.384069>,  <36.378601, 37.340565, 24.423098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011326, 37.494141, 24.384069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021101, -0.198547, -0.979864,
		-0.395579, -0.901760, 0.174202,
		-0.918190, 0.383938, -0.097569,
		35.735870, 37.609322, 24.354799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914688, 36.815228, 24.045675>,  <36.378601, 37.340565, 24.423098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914688, 36.815228, 24.045675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708172, 37.153553, 23.991928>,  <35.584263, 37.356548, 23.959681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708172, 37.153553, 23.991928>,  <35.914688, 36.815228, 24.045675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708172, 37.153553, 23.991928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049374, -0.186028, -0.981303,
		-0.854992, -0.499999, 0.137805,
		-0.516286, 0.845810, -0.134366,
		35.553288, 37.407295, 23.951618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305954, 36.624657, 23.705925>,  <35.914688, 36.815228, 24.045675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305954, 36.624657, 23.705925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364258, 37.015541, 23.644197>,  <35.399242, 37.250072, 23.607161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364258, 37.015541, 23.644197>,  <35.305954, 36.624657, 23.705925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364258, 37.015541, 23.644197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304269, -0.104144, -0.946876,
		-0.941368, 0.184974, 0.282155,
		0.145763, 0.977210, -0.154319,
		35.407986, 37.308704, 23.597902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713272, 36.838688, 23.425026>,  <35.305954, 36.624657, 23.705925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713272, 36.838688, 23.425026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972694, 37.112755, 23.292402>,  <35.128345, 37.277195, 23.212828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972694, 37.112755, 23.292402>,  <34.713272, 36.838688, 23.425026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972694, 37.112755, 23.292402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210992, -0.256696, -0.943181,
		-0.731343, 0.681657, -0.021916,
		0.648552, 0.685165, -0.331557,
		35.167259, 37.318306, 23.192936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296005, 37.404213, 22.944021>,  <34.713272, 36.838688, 23.425026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296005, 37.404213, 22.944021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686394, 37.426197, 22.859676>,  <34.920628, 37.439388, 22.809071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686394, 37.426197, 22.859676>,  <34.296005, 37.404213, 22.944021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686394, 37.426197, 22.859676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211618, 0.008277, -0.977317,
		-0.051968, 0.998454, 0.019708,
		0.975970, 0.054960, -0.210861,
		34.979183, 37.442684, 22.796417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390083, 37.895050, 22.465500>,  <34.296005, 37.404213, 22.944021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390083, 37.895050, 22.465500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747993, 37.720100, 22.429533>,  <34.962738, 37.615131, 22.407953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747993, 37.720100, 22.429533>,  <34.390083, 37.895050, 22.465500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747993, 37.720100, 22.429533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151309, -0.107530, -0.982620,
		0.420107, 0.892826, -0.162394,
		0.894771, -0.437377, -0.089918,
		35.016426, 37.588886, 22.402557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506687, 38.034595, 21.766121>,  <34.390083, 37.895050, 22.465500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506687, 38.034595, 21.766121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786987, 37.767281, 21.865990>,  <34.955170, 37.606892, 21.925911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786987, 37.767281, 21.865990>,  <34.506687, 38.034595, 21.766121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786987, 37.767281, 21.865990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045120, -0.307755, -0.950395,
		0.711974, 0.677259, -0.185508,
		0.700755, -0.668287, 0.249671,
		34.997215, 37.566795, 21.940891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021538, 38.103657, 21.188757>,  <34.506687, 38.034595, 21.766121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021538, 38.103657, 21.188757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046394, 37.749409, 21.372854>,  <35.061310, 37.536861, 21.483313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046394, 37.749409, 21.372854>,  <35.021538, 38.103657, 21.188757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046394, 37.749409, 21.372854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180143, -0.443608, -0.877930,
		0.981676, 0.137464, 0.131971,
		0.062140, -0.885616, 0.460242,
		35.065037, 37.483723, 21.510927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613712, 37.788258, 20.929499>,  <35.021538, 38.103657, 21.188757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613712, 37.788258, 20.929499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411263, 37.480755, 21.085884>,  <35.289795, 37.296253, 21.179716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411263, 37.480755, 21.085884>,  <35.613712, 37.788258, 20.929499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411263, 37.480755, 21.085884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143236, -0.521939, -0.840870,
		0.850485, -0.369582, 0.374279,
		-0.506121, -0.768758, 0.390964,
		35.259426, 37.250126, 21.203173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953705, 37.187183, 20.704208>,  <35.613712, 37.788258, 20.929499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953705, 37.187183, 20.704208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581841, 37.078739, 20.803991>,  <35.358723, 37.013672, 20.863861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581841, 37.078739, 20.803991>,  <35.953705, 37.187183, 20.704208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581841, 37.078739, 20.803991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031402, -0.616327, -0.786864,
		0.367077, -0.739349, 0.564462,
		-0.929660, -0.271115, 0.249456,
		35.302944, 36.997406, 20.878828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978046, 36.518612, 20.585979>,  <35.953705, 37.187183, 20.704208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978046, 36.518612, 20.585979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586205, 36.597984, 20.573322>,  <35.351101, 36.645607, 20.565729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586205, 36.597984, 20.573322>,  <35.978046, 36.518612, 20.585979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586205, 36.597984, 20.573322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075554, -0.509652, -0.857057,
		-0.186194, -0.837185, 0.514250,
		-0.979604, 0.198432, -0.031642,
		35.292324, 36.657513, 20.563829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698994, 35.898418, 20.390032>,  <35.978046, 36.518612, 20.585979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698994, 35.898418, 20.390032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439869, 36.193142, 20.312622>,  <35.284393, 36.369976, 20.266176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439869, 36.193142, 20.312622>,  <35.698994, 35.898418, 20.390032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439869, 36.193142, 20.312622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116951, -0.347212, -0.930466,
		-0.752771, -0.580132, 0.311098,
		-0.647810, 0.736811, -0.193524,
		35.245525, 36.414185, 20.254564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152763, 35.514725, 19.996958>,  <35.698994, 35.898418, 20.390032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152763, 35.514725, 19.996958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054817, 35.898697, 19.942459>,  <34.996048, 36.129082, 19.909760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054817, 35.898697, 19.942459>,  <35.152763, 35.514725, 19.996958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054817, 35.898697, 19.942459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030897, -0.148180, -0.988477,
		-0.969064, -0.237838, 0.065944,
		-0.244869, 0.959935, -0.136248,
		34.981358, 36.186676, 19.901585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604927, 35.519077, 19.551600>,  <35.152763, 35.514725, 19.996958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604927, 35.519077, 19.551600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766884, 35.883606, 19.521767>,  <34.864056, 36.102322, 19.503866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766884, 35.883606, 19.521767>,  <34.604927, 35.519077, 19.551600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766884, 35.883606, 19.521767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077433, -0.115447, -0.990291,
		-0.911081, 0.395182, -0.117310,
		0.404889, 0.911319, -0.074582,
		34.888351, 36.157001, 19.499392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145718, 35.825005, 19.036274>,  <34.604927, 35.519077, 19.551600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145718, 35.825005, 19.036274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492039, 36.025085, 19.041538>,  <34.699833, 36.145134, 19.044697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492039, 36.025085, 19.041538>,  <34.145718, 35.825005, 19.036274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492039, 36.025085, 19.041538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131829, -0.202657, -0.970336,
		-0.482702, 0.841857, -0.241403,
		0.865806, 0.500207, 0.013158,
		34.751781, 36.175148, 19.045486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033333, 36.494751, 18.601984>,  <34.145718, 35.825005, 19.036274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033333, 36.494751, 18.601984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424751, 36.412544, 18.607826>,  <34.659603, 36.363220, 18.611332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424751, 36.412544, 18.607826>,  <34.033333, 36.494751, 18.601984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424751, 36.412544, 18.607826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035667, 0.099142, -0.994434,
		0.202927, 0.973619, 0.104345,
		0.978544, -0.205519, 0.014608,
		34.718315, 36.350887, 18.612209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268864, 36.628799, 17.960756>,  <34.033333, 36.494751, 18.601984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268864, 36.628799, 17.960756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605892, 36.448711, 18.078993>,  <34.808109, 36.340656, 18.149935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605892, 36.448711, 18.078993>,  <34.268864, 36.628799, 17.960756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605892, 36.448711, 18.078993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388427, 0.127774, -0.912578,
		0.373096, 0.883726, 0.282537,
		0.842570, -0.450224, 0.295591,
		34.858662, 36.313644, 18.167669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891556, 37.051567, 17.839136>,  <34.268864, 36.628799, 17.960756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891556, 37.051567, 17.839136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983017, 36.662979, 17.813955>,  <35.037895, 36.429825, 17.798847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983017, 36.662979, 17.813955>,  <34.891556, 37.051567, 17.839136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983017, 36.662979, 17.813955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337246, 0.139707, -0.930993,
		0.913227, 0.191644, 0.359569,
		0.228653, -0.971470, -0.062953,
		35.051613, 36.371536, 17.795069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584480, 36.991314, 17.579590>,  <34.891556, 37.051567, 17.839136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584480, 36.991314, 17.579590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444885, 36.625874, 17.496122>,  <35.361130, 36.406609, 17.446043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444885, 36.625874, 17.496122>,  <35.584480, 36.991314, 17.579590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444885, 36.625874, 17.496122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372987, 0.068856, -0.925278,
		0.859702, -0.400741, 0.316731,
		-0.348988, -0.913600, -0.208667,
		35.340187, 36.351795, 17.433523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139194, 36.703243, 17.120152>,  <35.584480, 36.991314, 17.579590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139194, 36.703243, 17.120152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814953, 36.472298, 17.081038>,  <35.620407, 36.333729, 17.057570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814953, 36.472298, 17.081038>,  <36.139194, 36.703243, 17.120152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814953, 36.472298, 17.081038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222537, -0.149267, -0.963430,
		0.541657, -0.802724, 0.249482,
		-0.810608, -0.577367, -0.097785,
		35.571770, 36.299088, 17.051702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368038, 36.078846, 16.929577>,  <36.139194, 36.703243, 17.120152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368038, 36.078846, 16.929577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979012, 36.059635, 16.838533>,  <35.745594, 36.048107, 16.783907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979012, 36.059635, 16.838533>,  <36.368038, 36.078846, 16.929577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979012, 36.059635, 16.838533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231852, -0.279592, -0.931704,
		-0.018887, -0.958917, 0.283059,
		-0.972568, -0.048031, -0.227608,
		35.687241, 36.045227, 16.770250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213367, 35.440407, 16.593283>,  <36.368038, 36.078846, 16.929577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213367, 35.440407, 16.593283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941269, 35.711559, 16.481750>,  <35.778011, 35.874249, 16.414831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941269, 35.711559, 16.481750>,  <36.213367, 35.440407, 16.593283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941269, 35.711559, 16.481750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138918, -0.254282, -0.957101,
		-0.719699, -0.689799, 0.078805,
		-0.680247, 0.677877, -0.278832,
		35.737194, 35.914921, 16.398100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936069, 35.221230, 15.954232>,  <36.213367, 35.440407, 16.593283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936069, 35.221230, 15.954232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808640, 35.600254, 15.964329>,  <35.732182, 35.827667, 15.970387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808640, 35.600254, 15.964329>,  <35.936069, 35.221230, 15.954232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808640, 35.600254, 15.964329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093538, 0.057925, -0.993929,
		-0.943270, -0.314282, -0.107086,
		-0.318578, 0.947561, 0.025242,
		35.713066, 35.884521, 15.971901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531807, 35.201893, 15.346741>,  <35.936069, 35.221230, 15.954232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531807, 35.201893, 15.346741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589291, 35.593014, 15.407725>,  <35.623783, 35.827686, 15.444316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589291, 35.593014, 15.407725>,  <35.531807, 35.201893, 15.346741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589291, 35.593014, 15.407725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016102, 0.151729, -0.988291,
		-0.989488, 0.144486, 0.006061,
		0.143714, 0.977805, 0.152461,
		35.632404, 35.886356, 15.453464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952808, 35.639309, 15.041655>,  <35.531807, 35.201893, 15.346741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952808, 35.639309, 15.041655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258690, 35.893795, 15.082566>,  <35.442219, 36.046486, 15.107113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258690, 35.893795, 15.082566>,  <34.952808, 35.639309, 15.041655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258690, 35.893795, 15.082566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132616, 0.310710, -0.941208,
		-0.630587, 0.706182, 0.321973,
		0.764705, 0.636212, 0.102279,
		35.488102, 36.084660, 15.113250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717274, 36.426723, 14.838794>,  <34.952808, 35.639309, 15.041655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717274, 36.426723, 14.838794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107658, 36.349186, 14.798954>,  <35.341888, 36.302662, 14.775050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107658, 36.349186, 14.798954>,  <34.717274, 36.426723, 14.838794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107658, 36.349186, 14.798954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045217, 0.266954, -0.962648,
		0.213196, 0.944012, 0.251772,
		0.975962, -0.193849, -0.099599,
		35.400448, 36.291031, 14.769074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970119, 36.983669, 14.461441>,  <34.717274, 36.426723, 14.838794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970119, 36.983669, 14.461441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211071, 36.666225, 14.427196>,  <35.355640, 36.475758, 14.406648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211071, 36.666225, 14.427196>,  <34.970119, 36.983669, 14.461441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211071, 36.666225, 14.427196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000717, 0.107795, -0.994173,
		0.798213, 0.598804, 0.065502,
		0.602376, -0.793608, -0.085615,
		35.391785, 36.428143, 14.401511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454826, 37.133377, 13.917843>,  <34.970119, 36.983669, 14.461441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454826, 37.133377, 13.917843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457138, 36.734711, 13.950394>,  <35.458523, 36.495510, 13.969924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457138, 36.734711, 13.950394>,  <35.454826, 37.133377, 13.917843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457138, 36.734711, 13.950394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008665, -0.081426, -0.996642,
		0.999946, 0.005052, -0.009106,
		0.005776, -0.996667, 0.081378,
		35.458870, 36.435711, 13.974807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549339, 37.043854, 13.225602>,  <35.454826, 37.133377, 13.917843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549339, 37.043854, 13.225602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473537, 36.670410, 13.347228>,  <35.428055, 36.446342, 13.420203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473537, 36.670410, 13.347228>,  <35.549339, 37.043854, 13.225602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473537, 36.670410, 13.347228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140124, -0.280791, -0.949485,
		0.971830, -0.222537, -0.077611,
		-0.189503, -0.933613, 0.304064,
		35.416687, 36.390327, 13.438447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726963, 36.651234, 12.697252>,  <35.549339, 37.043854, 13.225602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726963, 36.651234, 12.697252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507343, 36.377552, 12.889257>,  <35.375572, 36.213345, 13.004460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507343, 36.377552, 12.889257>,  <35.726963, 36.651234, 12.697252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507343, 36.377552, 12.889257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430999, -0.260288, -0.863997,
		0.716092, -0.681259, -0.151982,
		-0.549046, -0.684205, 0.480012,
		35.342628, 36.172291, 13.033261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801331, 36.075581, 12.251663>,  <35.726963, 36.651234, 12.697252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801331, 36.075581, 12.251663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484810, 36.012634, 12.487995>,  <35.294899, 35.974869, 12.629794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484810, 36.012634, 12.487995>,  <35.801331, 36.075581, 12.251663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484810, 36.012634, 12.487995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470361, -0.460716, -0.752663,
		0.390645, -0.873486, 0.290549,
		-0.791301, -0.157361, 0.590830,
		35.247421, 35.965427, 12.665244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624310, 35.457710, 12.118202>,  <35.801331, 36.075581, 12.251663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624310, 35.457710, 12.118202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292126, 35.610863, 12.280056>,  <35.092815, 35.702755, 12.377169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292126, 35.610863, 12.280056>,  <35.624310, 35.457710, 12.118202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292126, 35.610863, 12.280056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520993, -0.276668, -0.807479,
		-0.197220, -0.881394, 0.429242,
		-0.830464, 0.382883, 0.404635,
		35.042988, 35.725727, 12.401446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981846, 34.954437, 12.179476>,  <35.624310, 35.457710, 12.118202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981846, 34.954437, 12.179476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878010, 35.337448, 12.129270>,  <34.815708, 35.567253, 12.099146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878010, 35.337448, 12.129270>,  <34.981846, 34.954437, 12.179476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878010, 35.337448, 12.129270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563413, -0.255724, -0.785602,
		-0.784333, -0.133216, 0.605867,
		-0.259589, 0.957528, -0.125517,
		34.800133, 35.624706, 12.091615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236736, 34.993206, 12.163254>,  <34.981846, 34.954437, 12.179476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236736, 34.993206, 12.163254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402920, 35.252003, 11.907505>,  <34.502632, 35.407280, 11.754056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402920, 35.252003, 11.907505>,  <34.236736, 34.993206, 12.163254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402920, 35.252003, 11.907505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624456, -0.308229, -0.717670,
		-0.661397, 0.697424, 0.275959,
		0.415462, 0.646989, -0.639372,
		34.527557, 35.446098, 11.715693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772865, 35.514606, 11.941874>,  <34.236736, 34.993206, 12.163254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772865, 35.514606, 11.941874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034500, 35.414680, 11.656281>,  <34.191479, 35.354725, 11.484926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034500, 35.414680, 11.656281>,  <33.772865, 35.514606, 11.941874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034500, 35.414680, 11.656281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737636, -0.419710, -0.528902,
		-0.167537, 0.872603, -0.458797,
		0.654083, -0.249814, -0.713981,
		34.230724, 35.339737, 11.442087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538097, 35.482918, 11.229580>,  <33.772865, 35.514606, 11.941874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538097, 35.482918, 11.229580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821274, 35.216957, 11.134313>,  <33.991180, 35.057381, 11.077152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821274, 35.216957, 11.134313>,  <33.538097, 35.482918, 11.229580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821274, 35.216957, 11.134313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701578, -0.623226, -0.345511,
		0.081298, 0.411695, -0.907688,
		0.707940, -0.664903, -0.238169,
		34.033657, 35.017487, 11.062862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824375, 35.360691, 10.537417>,  <33.538097, 35.482918, 11.229580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824375, 35.360691, 10.537417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198547, 35.371803, 10.678387>,  <34.423050, 35.378471, 10.762968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198547, 35.371803, 10.678387>,  <33.824375, 35.360691, 10.537417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198547, 35.371803, 10.678387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295583, 0.608318, 0.736601,
		-0.193920, -0.793207, 0.577250,
		0.935429, 0.027784, 0.352423,
		34.479176, 35.380138, 10.784114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483391, 35.626934, 10.212222>,  <33.824375, 35.360691, 10.537417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483391, 35.626934, 10.212222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124374, 35.573761, 10.044052>,  <33.908966, 35.541855, 9.943151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124374, 35.573761, 10.044052>,  <34.483391, 35.626934, 10.212222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124374, 35.573761, 10.044052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430598, -0.058957, -0.900616,
		0.094938, -0.989369, 0.110159,
		-0.897536, -0.132937, -0.420424,
		33.855114, 35.533878, 9.917925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524879, 36.077511, 10.774948>,  <34.483391, 35.626934, 10.212222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524879, 36.077511, 10.774948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369080, 36.307388, 10.487053>,  <34.275600, 36.445312, 10.314316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369080, 36.307388, 10.487053>,  <34.524879, 36.077511, 10.774948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369080, 36.307388, 10.487053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262212, 0.679922, 0.684799,
		0.882914, 0.455451, -0.114137,
		-0.389497, 0.574691, -0.719738,
		34.252232, 36.479797, 10.271132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826141, 36.758579, 10.895111>,  <34.524879, 36.077511, 10.774948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826141, 36.758579, 10.895111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480465, 36.772205, 10.694308>,  <34.273060, 36.780380, 10.573827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480465, 36.772205, 10.694308>,  <34.826141, 36.758579, 10.895111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480465, 36.772205, 10.694308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342799, 0.690478, 0.636969,
		0.368320, 0.722551, -0.585030,
		-0.864193, 0.034061, -0.502006,
		34.221207, 36.782425, 10.543706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555752, 37.517799, 10.821684>,  <34.826141, 36.758579, 10.895111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555752, 37.517799, 10.821684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217625, 37.309742, 10.772878>,  <34.014748, 37.184906, 10.743594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217625, 37.309742, 10.772878>,  <34.555752, 37.517799, 10.821684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217625, 37.309742, 10.772878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506835, 0.708491, 0.491079,
		-0.168986, 0.476959, -0.862528,
		-0.845318, -0.520145, -0.122015,
		33.964031, 37.153698, 10.736273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898945, 37.956001, 10.685163>,  <34.555752, 37.517799, 10.821684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898945, 37.956001, 10.685163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788597, 37.626793, 10.883767>,  <33.722389, 37.429268, 11.002930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788597, 37.626793, 10.883767>,  <33.898945, 37.956001, 10.685163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788597, 37.626793, 10.883767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481082, 0.565429, 0.669963,
		-0.832139, -0.054038, -0.551929,
		-0.275873, -0.823025, 0.496512,
		33.705833, 37.379887, 11.032721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220745, 38.124802, 10.978737>,  <33.898945, 37.956001, 10.685163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220745, 38.124802, 10.978737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397659, 37.823627, 11.173662>,  <33.503807, 37.642925, 11.290617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397659, 37.823627, 11.173662>,  <33.220745, 38.124802, 10.978737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397659, 37.823627, 11.173662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442946, 0.289077, 0.848666,
		-0.779858, -0.591209, -0.205653,
		0.442290, -0.752932, 0.487312,
		33.530346, 37.597748, 11.319856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695972, 37.755520, 11.350386>,  <33.220745, 38.124802, 10.978737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695972, 37.755520, 11.350386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037766, 37.687435, 11.546704>,  <33.242844, 37.646584, 11.664495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037766, 37.687435, 11.546704>,  <32.695972, 37.755520, 11.350386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037766, 37.687435, 11.546704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464335, 0.173342, 0.868531,
		-0.232907, -0.970042, 0.069084,
		0.854486, -0.170209, 0.490797,
		33.294113, 37.636372, 11.693943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439102, 37.418697, 11.861926>,  <32.695972, 37.755520, 11.350386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439102, 37.418697, 11.861926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807907, 37.518082, 11.980695>,  <33.029190, 37.577713, 12.051956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807907, 37.518082, 11.980695>,  <32.439102, 37.418697, 11.861926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807907, 37.518082, 11.980695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332121, 0.113437, 0.936391,
		0.198976, -0.961976, 0.187110,
		0.922011, 0.248462, 0.296921,
		33.084511, 37.592621, 12.069772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529041, 37.074108, 12.513775>,  <32.439102, 37.418697, 11.861926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529041, 37.074108, 12.513775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806316, 37.361927, 12.497122>,  <32.972683, 37.534618, 12.487130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806316, 37.361927, 12.497122>,  <32.529041, 37.074108, 12.513775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806316, 37.361927, 12.497122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171589, 0.220852, 0.960095,
		0.700031, -0.658386, 0.276560,
		0.693192, 0.719550, -0.041632,
		33.014275, 37.577793, 12.484632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836823, 36.970699, 13.175673>,  <32.529041, 37.074108, 12.513775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836823, 36.970699, 13.175673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931568, 37.345741, 13.073855>,  <32.988415, 37.570766, 13.012765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931568, 37.345741, 13.073855>,  <32.836823, 36.970699, 13.175673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931568, 37.345741, 13.073855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248219, 0.311709, 0.917183,
		0.939298, -0.154068, 0.306565,
		0.236868, 0.937603, -0.254545,
		33.002628, 37.627022, 12.997492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310333, 37.207584, 13.663480>,  <32.836823, 36.970699, 13.175673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310333, 37.207584, 13.663480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155457, 37.540947, 13.505741>,  <33.062531, 37.740967, 13.411098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155457, 37.540947, 13.505741>,  <33.310333, 37.207584, 13.663480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155457, 37.540947, 13.505741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121880, 0.377690, 0.917876,
		0.913908, 0.403458, -0.044663,
		-0.387193, 0.833410, -0.394347,
		33.039299, 37.790970, 13.387437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576691, 37.678207, 14.033435>,  <33.310333, 37.207584, 13.663480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576691, 37.678207, 14.033435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289986, 37.907368, 13.874418>,  <33.117962, 38.044865, 13.779008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289986, 37.907368, 13.874418>,  <33.576691, 37.678207, 14.033435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289986, 37.907368, 13.874418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105498, 0.474448, 0.873939,
		0.689292, 0.668345, -0.279626,
		-0.716761, 0.572899, -0.397542,
		33.074959, 38.079239, 13.755156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725834, 38.290504, 14.168433>,  <33.576691, 37.678207, 14.033435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725834, 38.290504, 14.168433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335152, 38.340321, 14.098535>,  <33.100742, 38.370209, 14.056596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335152, 38.340321, 14.098535>,  <33.725834, 38.290504, 14.168433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335152, 38.340321, 14.098535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109941, 0.408916, 0.905925,
		0.184282, 0.904034, -0.385698,
		-0.976705, 0.124542, -0.174746,
		33.042141, 38.377682, 14.046111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606289, 39.064331, 14.293899>,  <33.725834, 38.290504, 14.168433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606289, 39.064331, 14.293899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295517, 38.819191, 14.351592>,  <33.109055, 38.672108, 14.386209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295517, 38.819191, 14.351592>,  <33.606289, 39.064331, 14.293899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295517, 38.819191, 14.351592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148976, 0.401537, 0.903645,
		-0.611711, 0.680579, -0.403264,
		-0.776927, -0.612847, 0.144235,
		33.062439, 38.635338, 14.394862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979504, 39.472847, 14.493587>,  <33.606289, 39.064331, 14.293899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979504, 39.472847, 14.493587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856785, 39.110439, 14.610206>,  <32.783154, 38.892994, 14.680177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856785, 39.110439, 14.610206>,  <32.979504, 39.472847, 14.493587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856785, 39.110439, 14.610206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318636, 0.386417, 0.865536,
		-0.896854, 0.172647, -0.407243,
		-0.306798, -0.906022, 0.291548,
		32.764744, 38.838634, 14.697670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331165, 39.581669, 14.873786>,  <32.979504, 39.472847, 14.493587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331165, 39.581669, 14.873786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497631, 39.232906, 14.977000>,  <32.597511, 39.023647, 15.038929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497631, 39.232906, 14.977000>,  <32.331165, 39.581669, 14.873786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497631, 39.232906, 14.977000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030330, 0.270308, 0.962296,
		-0.908783, -0.408301, 0.086048,
		0.416166, -0.871908, 0.258035,
		32.622482, 38.971333, 15.054411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073639, 39.619797, 15.537479>,  <32.331165, 39.581669, 14.873786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073639, 39.619797, 15.537479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342506, 39.324509, 15.560177>,  <32.503826, 39.147335, 15.573795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342506, 39.324509, 15.560177>,  <32.073639, 39.619797, 15.537479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342506, 39.324509, 15.560177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099632, -0.014244, 0.994922,
		-0.733663, -0.674410, -0.083125,
		0.672170, -0.738219, 0.056743,
		32.544159, 39.103043, 15.577200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796072, 39.218506, 16.038902>,  <32.073639, 39.619797, 15.537479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796072, 39.218506, 16.038902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182888, 39.120438, 16.011404>,  <32.414978, 39.061596, 15.994905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182888, 39.120438, 16.011404>,  <31.796072, 39.218506, 16.038902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182888, 39.120438, 16.011404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082082, 0.044594, 0.995627,
		-0.241034, -0.968454, 0.063249,
		0.967039, -0.245172, -0.068744,
		32.473000, 39.046886, 15.990781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886444, 38.710041, 16.561977>,  <31.796072, 39.218506, 16.038902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886444, 38.710041, 16.561977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247776, 38.870193, 16.500410>,  <32.464577, 38.966286, 16.463470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247776, 38.870193, 16.500410>,  <31.886444, 38.710041, 16.561977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247776, 38.870193, 16.500410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104463, 0.142681, 0.984241,
		0.416031, -0.905173, 0.087063,
		0.903330, 0.400380, -0.153917,
		32.518776, 38.990307, 16.454235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336143, 38.376240, 17.036032>,  <31.886444, 38.710041, 16.561977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336143, 38.376240, 17.036032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508076, 38.723938, 16.938337>,  <32.611237, 38.932556, 16.879721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508076, 38.723938, 16.938337>,  <32.336143, 38.376240, 17.036032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508076, 38.723938, 16.938337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322839, 0.104658, 0.940650,
		0.843218, -0.483173, -0.235641,
		0.429835, 0.869247, -0.244236,
		32.637028, 38.984711, 16.865067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959827, 38.363731, 17.381660>,  <32.336143, 38.376240, 17.036032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959827, 38.363731, 17.381660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864754, 38.745220, 17.307991>,  <32.807709, 38.974113, 17.263790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864754, 38.745220, 17.307991>,  <32.959827, 38.363731, 17.381660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864754, 38.745220, 17.307991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170256, 0.227579, 0.958760,
		0.956304, 0.196530, -0.216469,
		-0.237688, 0.953721, -0.184174,
		32.793446, 39.031338, 17.252739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498093, 38.750584, 17.770550>,  <32.959827, 38.363731, 17.381660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498093, 38.750584, 17.770550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158943, 38.949039, 17.695761>,  <32.955452, 39.068111, 17.650887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158943, 38.949039, 17.695761>,  <33.498093, 38.750584, 17.770550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158943, 38.949039, 17.695761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130055, 0.147254, 0.980511,
		0.514003, 0.855665, -0.060327,
		-0.847872, 0.496139, -0.186972,
		32.904583, 39.097881, 17.639669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631805, 39.462444, 18.023558>,  <33.498093, 38.750584, 17.770550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631805, 39.462444, 18.023558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239376, 39.385014, 18.025080>,  <33.003918, 39.338554, 18.025993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239376, 39.385014, 18.025080>,  <33.631805, 39.462444, 18.023558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239376, 39.385014, 18.025080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082163, 0.434059, 0.897130,
		-0.175316, 0.879842, -0.441751,
		-0.981078, -0.193576, 0.003807,
		32.945053, 39.326942, 18.026222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303936, 40.051136, 18.210556>,  <33.631805, 39.462444, 18.023558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303936, 40.051136, 18.210556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042385, 39.758595, 18.288076>,  <32.885456, 39.583069, 18.334589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042385, 39.758595, 18.288076>,  <33.303936, 40.051136, 18.210556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042385, 39.758595, 18.288076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043316, 0.291916, 0.955462,
		-0.755359, 0.616361, -0.222558,
		-0.653878, -0.731357, 0.193803,
		32.846222, 39.539188, 18.346218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811783, 40.302574, 18.582321>,  <33.303936, 40.051136, 18.210556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811783, 40.302574, 18.582321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726357, 39.918339, 18.653492>,  <32.675098, 39.687798, 18.696194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726357, 39.918339, 18.653492>,  <32.811783, 40.302574, 18.582321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726357, 39.918339, 18.653492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353072, 0.245715, 0.902754,
		-0.910894, 0.129980, -0.391634,
		-0.213571, -0.960588, 0.177928,
		32.662285, 39.630161, 18.706871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023823, 40.217922, 18.903790>,  <32.811783, 40.302574, 18.582321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023823, 40.217922, 18.903790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227009, 39.891968, 19.015461>,  <32.348919, 39.696396, 19.082464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227009, 39.891968, 19.015461>,  <32.023823, 40.217922, 18.903790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227009, 39.891968, 19.015461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252069, 0.169293, 0.952786,
		-0.823670, -0.554354, -0.119412,
		0.507965, -0.814882, 0.279177,
		32.379398, 39.647503, 19.099215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637182, 39.800873, 19.355984>,  <32.023823, 40.217922, 18.903790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637182, 39.800873, 19.355984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009285, 39.682587, 19.442865>,  <32.232548, 39.611614, 19.494993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009285, 39.682587, 19.442865>,  <31.637182, 39.800873, 19.355984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009285, 39.682587, 19.442865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233552, -0.020683, 0.972124,
		-0.282981, -0.955052, -0.088306,
		0.930255, -0.295716, 0.217202,
		32.288361, 39.593872, 19.508026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548803, 39.291840, 19.881746>,  <31.637182, 39.800873, 19.355984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548803, 39.291840, 19.881746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946878, 39.330090, 19.890272>,  <32.185722, 39.353039, 19.895388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946878, 39.330090, 19.890272>,  <31.548803, 39.291840, 19.881746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946878, 39.330090, 19.890272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024111, 0.028187, 0.999312,
		0.094962, -0.995018, 0.030357,
		0.995189, 0.095628, 0.021314,
		32.245434, 39.358776, 19.896666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728649, 38.812569, 20.305836>,  <31.548803, 39.291840, 19.881746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728649, 38.812569, 20.305836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037243, 39.065327, 20.335531>,  <32.222401, 39.216984, 20.353348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037243, 39.065327, 20.335531>,  <31.728649, 38.812569, 20.305836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037243, 39.065327, 20.335531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002124, -0.114125, 0.993464,
		0.636242, -0.766602, -0.086704,
		0.771486, 0.631900, 0.074239,
		32.268688, 39.254898, 20.357803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218498, 38.562439, 20.815376>,  <31.728649, 38.812569, 20.305836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218498, 38.562439, 20.815376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290627, 38.955078, 20.790257>,  <32.333904, 39.190662, 20.775185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290627, 38.955078, 20.790257>,  <32.218498, 38.562439, 20.815376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290627, 38.955078, 20.790257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018966, 0.067305, 0.997552,
		0.983425, -0.178689, 0.030753,
		0.180321, 0.981601, -0.062800,
		32.344723, 39.249557, 20.771416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725269, 38.597786, 21.235901>,  <32.218498, 38.562439, 20.815376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725269, 38.597786, 21.235901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596672, 38.975338, 21.205626>,  <32.519516, 39.201870, 21.187460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596672, 38.975338, 21.205626>,  <32.725269, 38.597786, 21.235901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596672, 38.975338, 21.205626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021738, 0.087269, 0.995948,
		0.946663, 0.318542, -0.048575,
		-0.321490, 0.943883, -0.075690,
		32.500225, 39.258503, 21.182919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185532, 38.903488, 21.658785>,  <32.725269, 38.597786, 21.235901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185532, 38.903488, 21.658785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882488, 39.162479, 21.625801>,  <32.700661, 39.317875, 21.606010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882488, 39.162479, 21.625801>,  <33.185532, 38.903488, 21.658785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882488, 39.162479, 21.625801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018581, 0.147677, 0.988861,
		0.652445, 0.747637, -0.123912,
		-0.757608, 0.647480, -0.082459,
		32.655205, 39.356724, 21.601063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389824, 39.525955, 22.044464>,  <33.185532, 38.903488, 21.658785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389824, 39.525955, 22.044464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993893, 39.568142, 22.006264>,  <32.756332, 39.593452, 21.983343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993893, 39.568142, 22.006264>,  <33.389824, 39.525955, 22.044464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993893, 39.568142, 22.006264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055399, 0.332557, 0.941455,
		0.131049, 0.937168, -0.323332,
		-0.989827, 0.105464, -0.095500,
		32.696945, 39.599781, 21.977613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216339, 40.192188, 22.304777>,  <33.389824, 39.525955, 22.044464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216339, 40.192188, 22.304777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874111, 39.986233, 22.326267>,  <32.668774, 39.862659, 22.339161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874111, 39.986233, 22.326267>,  <33.216339, 40.192188, 22.304777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874111, 39.986233, 22.326267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060256, 0.202120, 0.977505,
		-0.514162, 0.833091, -0.203953,
		-0.855574, -0.514886, 0.053724,
		32.617439, 39.831768, 22.342384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776283, 40.607548, 22.716236>,  <33.216339, 40.192188, 22.304777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776283, 40.607548, 22.716236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634449, 40.233551, 22.719429>,  <32.549351, 40.009151, 22.721346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634449, 40.233551, 22.719429>,  <32.776283, 40.607548, 22.716236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634449, 40.233551, 22.719429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013007, 0.013470, 0.999825,
		-0.934934, 0.354417, -0.016938,
		-0.354582, -0.934991, 0.007984,
		32.528076, 39.953053, 22.721825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270615, 40.613129, 23.265326>,  <32.776283, 40.607548, 22.716236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270615, 40.613129, 23.265326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342182, 40.223099, 23.212833>,  <32.385124, 39.989082, 23.181339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342182, 40.223099, 23.212833>,  <32.270615, 40.613129, 23.265326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342182, 40.223099, 23.212833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056871, -0.122909, 0.990787,
		-0.982218, -0.184738, 0.033462,
		0.178923, -0.975072, -0.131229,
		32.395859, 39.930576, 23.173464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820429, 40.156216, 23.683168>,  <32.270615, 40.613129, 23.265326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820429, 40.156216, 23.683168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145306, 39.932888, 23.615484>,  <32.340233, 39.798893, 23.574873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145306, 39.932888, 23.615484>,  <31.820429, 40.156216, 23.683168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145306, 39.932888, 23.615484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032428, -0.246395, 0.968627,
		-0.582492, -0.792195, -0.182014,
		0.812189, -0.558315, -0.169213,
		32.388962, 39.765392, 23.564720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808037, 39.768314, 24.256176>,  <31.820429, 40.156216, 23.683168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808037, 39.768314, 24.256176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163177, 39.669006, 24.101213>,  <32.376263, 39.609421, 24.008236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163177, 39.669006, 24.101213>,  <31.808037, 39.768314, 24.256176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163177, 39.669006, 24.101213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324912, -0.257894, 0.909903,
		-0.325810, -0.933731, -0.148306,
		0.887851, -0.248269, -0.387405,
		32.429535, 39.594528, 23.984993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835365, 39.191643, 24.485035>,  <31.808037, 39.768314, 24.256176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835365, 39.191643, 24.485035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211765, 39.299290, 24.402966>,  <32.437607, 39.363880, 24.353724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211765, 39.299290, 24.402966>,  <31.835365, 39.191643, 24.485035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211765, 39.299290, 24.402966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270801, -0.235226, 0.933453,
		0.202950, -0.933939, -0.294225,
		0.940998, 0.269121, -0.205173,
		32.494064, 39.380028, 24.341413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243443, 38.654808, 24.792963>,  <31.835365, 39.191643, 24.485035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243443, 38.654808, 24.792963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472012, 38.979935, 24.747709>,  <32.609154, 39.175011, 24.720558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472012, 38.979935, 24.747709>,  <32.243443, 38.654808, 24.792963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472012, 38.979935, 24.747709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306732, -0.083674, 0.948111,
		0.761176, -0.576475, -0.297132,
		0.571424, 0.812819, -0.113132,
		32.643440, 39.223782, 24.713770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868126, 38.466282, 25.282724>,  <32.243443, 38.654808, 24.792963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868126, 38.466282, 25.282724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847343, 38.858395, 25.206461>,  <32.834873, 39.093662, 25.160702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847343, 38.858395, 25.206461>,  <32.868126, 38.466282, 25.282724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847343, 38.858395, 25.206461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308683, 0.197333, 0.930470,
		0.949745, -0.010510, -0.312848,
		-0.051956, 0.980280, -0.190660,
		32.831757, 39.152477, 25.149263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471378, 38.785446, 25.474264>,  <32.868126, 38.466282, 25.282724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471378, 38.785446, 25.474264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211277, 39.089115, 25.462833>,  <33.055214, 39.271317, 25.455975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211277, 39.089115, 25.462833>,  <33.471378, 38.785446, 25.474264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211277, 39.089115, 25.462833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304428, 0.294845, 0.905754,
		0.696052, 0.580274, -0.422840,
		-0.650257, 0.759176, -0.028576,
		33.016201, 39.316868, 25.454260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886677, 39.249660, 25.711403>,  <33.471378, 38.785446, 25.474264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886677, 39.249660, 25.711403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520184, 39.400146, 25.766514>,  <33.300289, 39.490440, 25.799580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520184, 39.400146, 25.766514>,  <33.886677, 39.249660, 25.711403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520184, 39.400146, 25.766514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224914, 0.198394, 0.953967,
		0.331565, 0.905042, -0.266391,
		-0.916230, 0.376217, 0.137776,
		33.245316, 39.513012, 25.807846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973839, 39.812771, 26.128178>,  <33.886677, 39.249660, 25.711403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973839, 39.812771, 26.128178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575603, 39.779045, 26.144606>,  <33.336662, 39.758808, 26.154463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575603, 39.779045, 26.144606>,  <33.973839, 39.812771, 26.128178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575603, 39.779045, 26.144606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004975, 0.389833, 0.920872,
		-0.093656, 0.917017, -0.387695,
		-0.995592, -0.084316, 0.041072,
		33.276924, 39.753750, 26.156927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779034, 40.527771, 26.301838>,  <33.973839, 39.812771, 26.128178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779034, 40.527771, 26.301838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518578, 40.244461, 26.410915>,  <33.362305, 40.074474, 26.476362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518578, 40.244461, 26.410915>,  <33.779034, 40.527771, 26.301838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518578, 40.244461, 26.410915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180482, 0.493495, 0.850816,
		-0.737188, 0.504782, -0.449165,
		-0.651138, -0.708277, 0.272694,
		33.323235, 40.031979, 26.492723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315987, 41.010712, 26.259817>,  <33.779034, 40.527771, 26.301838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315987, 41.010712, 26.259817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515491, 41.354118, 26.307468>,  <34.635193, 41.560162, 26.336060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515491, 41.354118, 26.307468>,  <34.315987, 41.010712, 26.259817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515491, 41.354118, 26.307468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192191, 0.243568, -0.950651,
		-0.845163, 0.451252, 0.286481,
		0.498761, 0.858514, 0.119128,
		34.665119, 41.611671, 26.343206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885921, 41.559563, 26.068581>,  <34.315987, 41.010712, 26.259817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885921, 41.559563, 26.068581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236191, 41.737209, 25.992729>,  <34.446354, 41.843796, 25.947218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236191, 41.737209, 25.992729>,  <33.885921, 41.559563, 26.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236191, 41.737209, 25.992729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428536, 0.533644, -0.729096,
		-0.222609, 0.719712, 0.657617,
		0.875672, 0.444116, -0.189629,
		34.498894, 41.870445, 25.935841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688168, 42.252171, 25.822723>,  <33.885921, 41.559563, 26.068581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688168, 42.252171, 25.822723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070782, 42.198555, 25.719124>,  <34.300350, 42.166386, 25.656963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070782, 42.198555, 25.719124>,  <33.688168, 42.252171, 25.822723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070782, 42.198555, 25.719124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152535, 0.527002, -0.836063,
		0.248555, 0.839227, 0.483650,
		0.956532, -0.134035, -0.259001,
		34.357742, 42.158344, 25.641424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791439, 42.751766, 25.464382>,  <33.688168, 42.252171, 25.822723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791439, 42.751766, 25.464382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109451, 42.538513, 25.348663>,  <34.300259, 42.410561, 25.279232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109451, 42.538513, 25.348663>,  <33.791439, 42.751766, 25.464382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109451, 42.538513, 25.348663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063299, 0.401417, -0.913706,
		0.603260, 0.744735, 0.285391,
		0.795029, -0.533137, -0.289299,
		34.347961, 42.378571, 25.261873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293091, 43.206326, 25.152506>,  <33.791439, 42.751766, 25.464382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293091, 43.206326, 25.152506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349560, 42.836391, 25.011225>,  <34.383442, 42.614429, 24.926456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349560, 42.836391, 25.011225>,  <34.293091, 43.206326, 25.152506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349560, 42.836391, 25.011225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023735, 0.353513, -0.935129,
		0.989701, 0.140395, 0.027954,
		0.141170, -0.924834, -0.353204,
		34.391911, 42.558941, 24.905264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877266, 43.285332, 24.642851>,  <34.293091, 43.206326, 25.152506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877266, 43.285332, 24.642851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677555, 42.947071, 24.567377>,  <34.557728, 42.744114, 24.522093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677555, 42.947071, 24.567377>,  <34.877266, 43.285332, 24.642851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677555, 42.947071, 24.567377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052053, 0.188103, -0.980769,
		0.864878, -0.499496, -0.049897,
		-0.499276, -0.845649, -0.188686,
		34.527771, 42.693378, 24.510771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160851, 42.992912, 24.106192>,  <34.877266, 43.285332, 24.642851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160851, 42.992912, 24.106192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807510, 42.806499, 24.086153>,  <34.595505, 42.694653, 24.074131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807510, 42.806499, 24.086153>,  <35.160851, 42.992912, 24.106192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807510, 42.806499, 24.086153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041987, 0.185125, -0.981818,
		0.466829, -0.865186, -0.183098,
		-0.883351, -0.466029, -0.050095,
		34.542503, 42.666691, 24.071125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167587, 42.626835, 23.481344>,  <35.160851, 42.992912, 24.106192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167587, 42.626835, 23.481344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775932, 42.637478, 23.561930>,  <34.540939, 42.643864, 23.610281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775932, 42.637478, 23.561930>,  <35.167587, 42.626835, 23.481344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775932, 42.637478, 23.561930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199184, 0.070813, -0.977400,
		-0.040269, -0.997135, -0.064036,
		-0.979135, 0.026604, 0.201465,
		34.482193, 42.645458, 23.622370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966675, 42.117203, 23.102448>,  <35.167587, 42.626835, 23.481344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966675, 42.117203, 23.102448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632553, 42.326073, 23.171274>,  <34.432079, 42.451393, 23.212570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632553, 42.326073, 23.171274>,  <34.966675, 42.117203, 23.102448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632553, 42.326073, 23.171274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302639, -0.175422, -0.936823,
		-0.458999, -0.834603, 0.304560,
		-0.835302, 0.522173, 0.172065,
		34.381962, 42.482723, 23.222895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477913, 41.777115, 22.764523>,  <34.966675, 42.117203, 23.102448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477913, 41.777115, 22.764523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339115, 42.150146, 22.804314>,  <34.255836, 42.373966, 22.828188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339115, 42.150146, 22.804314>,  <34.477913, 41.777115, 22.764523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339115, 42.150146, 22.804314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401799, -0.051977, -0.914251,
		-0.847439, -0.357209, 0.392744,
		-0.346993, 0.932577, 0.099479,
		34.235016, 42.429920, 22.834158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919418, 41.725365, 22.394171>,  <34.477913, 41.777115, 22.764523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919418, 41.725365, 22.394171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992729, 42.117447, 22.424135>,  <34.036716, 42.352695, 22.442114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992729, 42.117447, 22.424135>,  <33.919418, 41.725365, 22.394171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992729, 42.117447, 22.424135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328091, 0.132822, -0.935262,
		-0.926697, 0.146831, 0.345938,
		0.183273, 0.980204, 0.074912,
		34.047710, 42.411507, 22.446609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365429, 41.953545, 21.941442>,  <33.919418, 41.725365, 22.394171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365429, 41.953545, 21.941442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632961, 42.246719, 21.991203>,  <33.793480, 42.422623, 22.021061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632961, 42.246719, 21.991203>,  <33.365429, 41.953545, 21.941442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632961, 42.246719, 21.991203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134941, 0.284252, -0.949206,
		-0.731067, 0.618069, 0.289019,
		0.668829, 0.732933, 0.124404,
		33.833611, 42.466599, 22.028524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024292, 42.544846, 21.607754>,  <33.365429, 41.953545, 21.941442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024292, 42.544846, 21.607754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422829, 42.578995, 21.606842>,  <33.661953, 42.599483, 21.606295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422829, 42.578995, 21.606842>,  <33.024292, 42.544846, 21.607754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422829, 42.578995, 21.606842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007526, 0.061170, -0.998099,
		-0.085075, 0.994469, 0.061589,
		0.996346, 0.085377, -0.002280,
		33.721733, 42.604607, 21.606157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125233, 43.120914, 21.034407>,  <33.024292, 42.544846, 21.607754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125233, 43.120914, 21.034407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478790, 42.946617, 21.102367>,  <33.690926, 42.842037, 21.143145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478790, 42.946617, 21.102367>,  <33.125233, 43.120914, 21.034407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478790, 42.946617, 21.102367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159186, -0.061299, -0.985344,
		0.439772, 0.897981, 0.015183,
		0.883889, -0.435744, 0.169904,
		33.743958, 42.815895, 21.153339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625145, 43.493690, 20.558069>,  <33.125233, 43.120914, 21.034407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625145, 43.493690, 20.558069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791710, 43.149830, 20.676456>,  <33.891647, 42.943512, 20.747488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791710, 43.149830, 20.676456>,  <33.625145, 43.493690, 20.558069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791710, 43.149830, 20.676456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022220, -0.315813, -0.948561,
		0.908906, 0.401565, -0.112406,
		0.416408, -0.859656, 0.295967,
		33.916634, 42.891933, 20.765247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084465, 43.434929, 20.033848>,  <33.625145, 43.493690, 20.558069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084465, 43.434929, 20.033848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076702, 43.074429, 20.206993>,  <34.072044, 42.858128, 20.310881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076702, 43.074429, 20.206993>,  <34.084465, 43.434929, 20.033848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076702, 43.074429, 20.206993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094942, -0.432649, -0.896550,
		0.995294, 0.023699, 0.093962,
		-0.019406, -0.901251, 0.432863,
		34.070881, 42.804054, 20.336851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720612, 43.076931, 19.879745>,  <34.084465, 43.434929, 20.033848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720612, 43.076931, 19.879745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445328, 42.790745, 19.927868>,  <34.280159, 42.619034, 19.956741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445328, 42.790745, 19.927868>,  <34.720612, 43.076931, 19.879745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445328, 42.790745, 19.927868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156644, -0.308443, -0.938257,
		0.708400, -0.626872, 0.324347,
		-0.688210, -0.715468, 0.120306,
		34.238865, 42.576103, 19.963959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009590, 42.414776, 19.627804>,  <34.720612, 43.076931, 19.879745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009590, 42.414776, 19.627804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612003, 42.373901, 19.643761>,  <34.373451, 42.349377, 19.653336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612003, 42.373901, 19.643761>,  <35.009590, 42.414776, 19.627804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612003, 42.373901, 19.643761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012206, -0.464430, -0.885526,
		0.109016, -0.879695, 0.462874,
		-0.993965, -0.102186, 0.039893,
		34.313812, 42.343246, 19.655729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925472, 41.740021, 19.349609>,  <35.009590, 42.414776, 19.627804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925472, 41.740021, 19.349609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565727, 41.913300, 19.325981>,  <34.349880, 42.017269, 19.311804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565727, 41.913300, 19.325981>,  <34.925472, 41.740021, 19.349609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565727, 41.913300, 19.325981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102603, -0.340460, -0.934644,
		-0.425000, -0.834520, 0.350644,
		-0.899359, 0.433201, -0.059071,
		34.295918, 42.043259, 19.308260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514320, 41.217110, 19.076761>,  <34.925472, 41.740021, 19.349609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514320, 41.217110, 19.076761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330788, 41.564186, 19.000246>,  <34.220669, 41.772430, 18.954338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330788, 41.564186, 19.000246>,  <34.514320, 41.217110, 19.076761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330788, 41.564186, 19.000246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179033, -0.301154, -0.936618,
		-0.870299, -0.395503, 0.293524,
		-0.458832, 0.867689, -0.191286,
		34.193138, 41.824493, 18.942860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895649, 41.018593, 18.833206>,  <34.514320, 41.217110, 19.076761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895649, 41.018593, 18.833206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956444, 41.395611, 18.714197>,  <33.992920, 41.621822, 18.642792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956444, 41.395611, 18.714197>,  <33.895649, 41.018593, 18.833206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956444, 41.395611, 18.714197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232910, -0.258387, -0.937544,
		-0.960549, 0.211787, 0.180256,
		0.151984, 0.942540, -0.297521,
		34.002037, 41.678371, 18.624941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428619, 41.069935, 18.304827>,  <33.895649, 41.018593, 18.833206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428619, 41.069935, 18.304827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691254, 41.364120, 18.237906>,  <33.848835, 41.540630, 18.197752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691254, 41.364120, 18.237906>,  <33.428619, 41.069935, 18.304827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691254, 41.364120, 18.237906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111697, -0.124558, -0.985905,
		-0.745934, 0.666020, 0.000366,
		0.656587, 0.735461, -0.167304,
		33.888229, 41.584759, 18.187714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094589, 41.596172, 17.733067>,  <33.428619, 41.069935, 18.304827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094589, 41.596172, 17.733067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488605, 41.657402, 17.764709>,  <33.725018, 41.694141, 17.783695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488605, 41.657402, 17.764709>,  <33.094589, 41.596172, 17.733067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488605, 41.657402, 17.764709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087926, -0.051709, -0.994784,
		-0.148185, 0.986861, -0.064395,
		0.985043, 0.153074, 0.079108,
		33.784119, 41.703323, 17.788443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198021, 42.038967, 17.216352>,  <33.094589, 41.596172, 17.733067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198021, 42.038967, 17.216352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554428, 41.876835, 17.298124>,  <33.768272, 41.779556, 17.347187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554428, 41.876835, 17.298124>,  <33.198021, 42.038967, 17.216352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554428, 41.876835, 17.298124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136731, -0.189787, -0.972258,
		0.432883, 0.894253, -0.113683,
		0.891020, -0.405330, 0.204428,
		33.821735, 41.755238, 17.359453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612209, 42.254807, 16.671103>,  <33.198021, 42.038967, 17.216352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612209, 42.254807, 16.671103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782665, 41.935066, 16.840549>,  <33.884937, 41.743221, 16.942217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782665, 41.935066, 16.840549>,  <33.612209, 42.254807, 16.671103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782665, 41.935066, 16.840549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246344, -0.348034, -0.904537,
		0.870472, 0.489812, 0.048605,
		0.426137, -0.799348, 0.423616,
		33.910507, 41.695263, 16.967634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333893, 42.232674, 16.566000>,  <33.612209, 42.254807, 16.671103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333893, 42.232674, 16.566000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243042, 41.847897, 16.626760>,  <34.188534, 41.617031, 16.663218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243042, 41.847897, 16.626760>,  <34.333893, 42.232674, 16.566000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243042, 41.847897, 16.626760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370664, -0.229626, -0.899933,
		0.900568, -0.148092, 0.408713,
		-0.227124, -0.961946, 0.151902,
		34.174904, 41.559311, 16.672331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015537, 41.811001, 16.526310>,  <34.333893, 42.232674, 16.566000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015537, 41.811001, 16.526310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725266, 41.539215, 16.483011>,  <34.551102, 41.376144, 16.457033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725266, 41.539215, 16.483011>,  <35.015537, 41.811001, 16.526310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725266, 41.539215, 16.483011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417331, -0.309603, -0.854389,
		0.547016, -0.665185, 0.508235,
		-0.725678, -0.679467, -0.108245,
		34.507561, 41.335377, 16.450539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294209, 41.191414, 16.278240>,  <35.015537, 41.811001, 16.526310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294209, 41.191414, 16.278240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920399, 41.130783, 16.149443>,  <34.696114, 41.094402, 16.072165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920399, 41.130783, 16.149443>,  <35.294209, 41.191414, 16.278240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920399, 41.130783, 16.149443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354957, -0.462362, -0.812543,
		-0.025711, -0.873639, 0.485896,
		-0.934529, -0.151581, -0.321992,
		34.640041, 41.085308, 16.052845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255939, 40.505074, 16.121511>,  <35.294209, 41.191414, 16.278240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255939, 40.505074, 16.121511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963753, 40.688000, 15.918618>,  <34.788441, 40.797756, 15.796883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963753, 40.688000, 15.918618>,  <35.255939, 40.505074, 16.121511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963753, 40.688000, 15.918618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328198, -0.416268, -0.847943,
		-0.598922, -0.785864, 0.153979,
		-0.730464, 0.457317, -0.507231,
		34.744614, 40.825195, 15.766449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028610, 39.967224, 15.546349>,  <35.255939, 40.505074, 16.121511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028610, 39.967224, 15.546349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857426, 40.306145, 15.420534>,  <34.754715, 40.509495, 15.345046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857426, 40.306145, 15.420534>,  <35.028610, 39.967224, 15.546349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857426, 40.306145, 15.420534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219474, -0.240171, -0.945595,
		-0.876744, -0.473711, -0.083176,
		-0.427963, 0.847299, -0.314535,
		34.729038, 40.560333, 15.326174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570709, 39.828976, 14.890669>,  <35.028610, 39.967224, 15.546349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570709, 39.828976, 14.890669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663326, 40.217690, 14.908629>,  <34.718895, 40.450920, 14.919406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663326, 40.217690, 14.908629>,  <34.570709, 39.828976, 14.890669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663326, 40.217690, 14.908629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161071, 0.007222, -0.986917,
		-0.959398, 0.235746, -0.154854,
		0.231544, 0.971788, 0.044901,
		34.732788, 40.509228, 14.922100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261547, 40.086876, 14.300997>,  <34.570709, 39.828976, 14.890669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261547, 40.086876, 14.300997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542080, 40.354366, 14.399738>,  <34.710400, 40.514862, 14.458983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542080, 40.354366, 14.399738>,  <34.261547, 40.086876, 14.300997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542080, 40.354366, 14.399738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148987, 0.201139, -0.968166,
		-0.697093, 0.715782, 0.041433,
		0.701330, 0.668729, 0.246855,
		34.752480, 40.554985, 14.473795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149052, 40.687778, 13.961970>,  <34.261547, 40.086876, 14.300997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149052, 40.687778, 13.961970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539761, 40.722980, 14.040115>,  <34.774185, 40.744102, 14.087002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539761, 40.722980, 14.040115>,  <34.149052, 40.687778, 13.961970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539761, 40.722980, 14.040115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174759, 0.200345, -0.964013,
		-0.123976, 0.975765, 0.180313,
		0.976775, 0.088003, 0.195362,
		34.832794, 40.749382, 14.098723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394367, 41.351700, 13.642440>,  <34.149052, 40.687778, 13.961970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394367, 41.351700, 13.642440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720703, 41.131069, 13.711914>,  <34.916504, 40.998692, 13.753599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720703, 41.131069, 13.711914>,  <34.394367, 41.351700, 13.642440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720703, 41.131069, 13.711914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317157, 0.175639, -0.931967,
		0.483548, 0.815420, 0.318231,
		0.815838, -0.551580, 0.173686,
		34.965454, 40.965595, 13.764020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139400, 41.696495, 13.418633>,  <34.394367, 41.351700, 13.642440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139400, 41.696495, 13.418633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220966, 41.305073, 13.430234>,  <35.269905, 41.070217, 13.437194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220966, 41.305073, 13.430234>,  <35.139400, 41.696495, 13.418633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220966, 41.305073, 13.430234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614438, 0.104863, -0.781965,
		0.762158, 0.177274, 0.622647,
		0.203915, -0.978559, 0.029001,
		35.282139, 41.011505, 13.438934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666374, 41.710110, 12.956383>,  <35.139400, 41.696495, 13.418633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666374, 41.710110, 12.956383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618774, 41.316166, 13.006798>,  <35.590214, 41.079800, 13.037046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618774, 41.316166, 13.006798>,  <35.666374, 41.710110, 12.956383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618774, 41.316166, 13.006798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402153, -0.163870, -0.900788,
		0.907806, -0.056509, 0.415566,
		-0.119002, -0.984862, 0.126037,
		35.583073, 41.020706, 13.044609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336796, 41.461720, 12.741020>,  <35.666374, 41.710110, 12.956383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336796, 41.461720, 12.741020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060062, 41.175373, 12.703266>,  <35.894024, 41.003567, 12.680614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060062, 41.175373, 12.703266>,  <36.336796, 41.461720, 12.741020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060062, 41.175373, 12.703266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334913, -0.202333, -0.920269,
		0.639691, -0.668281, 0.379733,
		-0.691830, -0.715865, -0.094386,
		35.852512, 40.960613, 12.674951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655735, 40.953339, 12.399500>,  <36.336796, 41.461720, 12.741020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655735, 40.953339, 12.399500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270649, 40.871052, 12.329223>,  <36.039597, 40.821682, 12.287056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270649, 40.871052, 12.329223>,  <36.655735, 40.953339, 12.399500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270649, 40.871052, 12.329223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251924, -0.445024, -0.859353,
		0.098595, -0.871570, 0.480254,
		-0.962711, -0.205715, -0.175693,
		35.981834, 40.809338, 12.276515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375469, 40.899376, 12.503582>,  <36.655735, 40.953339, 12.399500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375469, 40.899376, 12.503582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739765, 40.735344, 12.523114>,  <37.958344, 40.636925, 12.534834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739765, 40.735344, 12.523114>,  <37.375469, 40.899376, 12.503582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739765, 40.735344, 12.523114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008573, 0.136989, 0.990536,
		-0.412888, -0.901703, 0.128277,
		0.910741, -0.410080, 0.048831,
		38.012989, 40.612320, 12.537764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462955, 40.270283, 12.957212>,  <37.375469, 40.899376, 12.503582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462955, 40.270283, 12.957212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810703, 40.467854, 12.951010>,  <38.019352, 40.586395, 12.947289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810703, 40.467854, 12.951010>,  <37.462955, 40.270283, 12.957212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810703, 40.467854, 12.951010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142918, 0.281342, 0.948905,
		0.473051, -0.822730, 0.315180,
		0.869366, 0.493926, -0.015506,
		38.071514, 40.616032, 12.946358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792313, 40.173897, 13.707720>,  <37.462955, 40.270283, 12.957212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792313, 40.173897, 13.707720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956505, 40.498592, 13.541545>,  <38.055019, 40.693409, 13.441840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956505, 40.498592, 13.541545>,  <37.792313, 40.173897, 13.707720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956505, 40.498592, 13.541545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056917, 0.477509, 0.876782,
		0.910090, -0.336259, 0.242211,
		0.410483, 0.811736, -0.415438,
		38.079651, 40.742115, 13.416914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293777, 40.404530, 14.160734>,  <37.792313, 40.173897, 13.707720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293777, 40.404530, 14.160734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218372, 40.727257, 13.936767>,  <38.173130, 40.920895, 13.802386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218372, 40.727257, 13.936767>,  <38.293777, 40.404530, 14.160734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218372, 40.727257, 13.936767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055306, 0.560514, 0.826296,
		0.980511, 0.186738, -0.061044,
		-0.188517, 0.806817, -0.559918,
		38.161816, 40.969303, 13.768791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720001, 40.862923, 14.410521>,  <38.293777, 40.404530, 14.160734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720001, 40.862923, 14.410521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458328, 41.096172, 14.217850>,  <38.301327, 41.236122, 14.102247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458328, 41.096172, 14.217850>,  <38.720001, 40.862923, 14.410521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458328, 41.096172, 14.217850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114225, 0.705719, 0.699224,
		0.747665, 0.402397, -0.528274,
		-0.654178, 0.583128, -0.481677,
		38.262074, 41.271111, 14.073346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989693, 41.534382, 14.449213>,  <38.720001, 40.862923, 14.410521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989693, 41.534382, 14.449213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600925, 41.576233, 14.364900>,  <38.367664, 41.601341, 14.314312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600925, 41.576233, 14.364900>,  <38.989693, 41.534382, 14.449213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600925, 41.576233, 14.364900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072259, 0.719762, 0.690451,
		0.223951, 0.686292, -0.691989,
		-0.971918, 0.104625, -0.210783,
		38.309349, 41.607620, 14.301665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869656, 42.323578, 14.332068>,  <38.989693, 41.534382, 14.449213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869656, 42.323578, 14.332068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519943, 42.146465, 14.411636>,  <38.310116, 42.040195, 14.459377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519943, 42.146465, 14.411636>,  <38.869656, 42.323578, 14.332068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519943, 42.146465, 14.411636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151136, 0.637730, 0.755287,
		-0.461287, 0.630271, -0.624478,
		-0.874284, -0.442784, 0.198920,
		38.257660, 42.013630, 14.471313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514511, 42.876827, 14.466192>,  <38.869656, 42.323578, 14.332068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514511, 42.876827, 14.466192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292408, 42.589001, 14.633002>,  <38.159145, 42.416306, 14.733088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292408, 42.589001, 14.633002>,  <38.514511, 42.876827, 14.466192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292408, 42.589001, 14.633002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196103, 0.600566, 0.775154,
		-0.808226, 0.348632, -0.474580,
		-0.555260, -0.719566, 0.417026,
		38.125832, 42.373131, 14.758110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956543, 43.210392, 14.689159>,  <38.514511, 42.876827, 14.466192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956543, 43.210392, 14.689159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003643, 42.881481, 14.911867>,  <38.031902, 42.684135, 15.045491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003643, 42.881481, 14.911867>,  <37.956543, 43.210392, 14.689159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003643, 42.881481, 14.911867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090325, 0.549476, 0.830613,
		-0.988927, -0.148091, -0.009574,
		0.117746, -0.822280, 0.556768,
		38.038967, 42.634796, 15.078897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452759, 43.294762, 15.124810>,  <37.956543, 43.210392, 14.689159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452759, 43.294762, 15.124810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694309, 43.030613, 15.303356>,  <37.839241, 42.872124, 15.410483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694309, 43.030613, 15.303356>,  <37.452759, 43.294762, 15.124810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694309, 43.030613, 15.303356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119004, 0.479029, 0.869695,
		-0.788145, -0.578307, 0.210687,
		0.603876, -0.660373, 0.446365,
		37.875473, 42.832500, 15.437265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009190, 43.049500, 15.777384>,  <37.452759, 43.294762, 15.124810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009190, 43.049500, 15.777384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396702, 42.965504, 15.830107>,  <37.629208, 42.915108, 15.861740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396702, 42.965504, 15.830107>,  <37.009190, 43.049500, 15.777384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396702, 42.965504, 15.830107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059799, 0.318028, 0.946193,
		-0.240610, -0.924533, 0.295542,
		0.968778, -0.209991, 0.131807,
		37.687336, 42.902508, 15.869649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882690, 42.537617, 16.327122>,  <37.009190, 43.049500, 15.777384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882690, 42.537617, 16.327122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245949, 42.704941, 16.333839>,  <37.463905, 42.805336, 16.337870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245949, 42.704941, 16.333839>,  <36.882690, 42.537617, 16.327122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245949, 42.704941, 16.333839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104741, 0.188187, 0.976532,
		0.405337, -0.888594, 0.214716,
		0.908147, 0.418314, 0.016793,
		37.518394, 42.830433, 16.338877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311901, 42.130543, 16.846817>,  <36.882690, 42.537617, 16.327122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311901, 42.130543, 16.846817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411915, 42.514694, 16.797579>,  <37.471924, 42.745186, 16.768036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411915, 42.514694, 16.797579>,  <37.311901, 42.130543, 16.846817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411915, 42.514694, 16.797579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029176, 0.134548, 0.990478,
		0.967798, -0.244061, 0.061661,
		0.250034, 0.960381, -0.123094,
		37.486923, 42.802807, 16.760651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674965, 42.297443, 17.393181>,  <37.311901, 42.130543, 16.846817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674965, 42.297443, 17.393181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559101, 42.663437, 17.280819>,  <37.489582, 42.883034, 17.213402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559101, 42.663437, 17.280819>,  <37.674965, 42.297443, 17.393181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559101, 42.663437, 17.280819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115289, 0.324703, 0.938763,
		0.950160, 0.239541, -0.199542,
		-0.289664, 0.914980, -0.280903,
		37.472202, 42.937931, 17.196548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120155, 42.754124, 17.766249>,  <37.674965, 42.297443, 17.393181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120155, 42.754124, 17.766249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785309, 42.952778, 17.674511>,  <37.584400, 43.071968, 17.619469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785309, 42.952778, 17.674511>,  <38.120155, 42.754124, 17.766249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785309, 42.952778, 17.674511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029553, 0.459696, 0.887584,
		0.546232, 0.736230, -0.399495,
		-0.837112, 0.496633, -0.229343,
		37.534176, 43.101768, 17.605707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281952, 43.310692, 18.111113>,  <38.120155, 42.754124, 17.766249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281952, 43.310692, 18.111113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893475, 43.359516, 18.029249>,  <37.660389, 43.388809, 17.980131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893475, 43.359516, 18.029249>,  <38.281952, 43.310692, 18.111113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893475, 43.359516, 18.029249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145125, 0.378231, 0.914265,
		0.189003, 0.917628, -0.349622,
		-0.971193, 0.122061, -0.204657,
		37.602116, 43.396133, 17.967852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143768, 44.032494, 18.401268>,  <38.281952, 43.310692, 18.111113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143768, 44.032494, 18.401268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826675, 43.789986, 18.375923>,  <37.636421, 43.644482, 18.360716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826675, 43.789986, 18.375923>,  <38.143768, 44.032494, 18.401268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826675, 43.789986, 18.375923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212459, 0.177369, 0.960938,
		-0.571352, 0.775225, -0.269413,
		-0.792728, -0.606273, -0.063364,
		37.588856, 43.608105, 18.356915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640827, 44.428650, 18.765190>,  <38.143768, 44.032494, 18.401268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640827, 44.428650, 18.765190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484196, 44.061005, 18.747786>,  <37.390217, 43.840416, 18.737343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484196, 44.061005, 18.747786>,  <37.640827, 44.428650, 18.765190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484196, 44.061005, 18.747786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385281, 0.120836, 0.914854,
		-0.835597, 0.375004, -0.401434,
		-0.391582, -0.919114, -0.043512,
		37.366722, 43.785271, 18.734732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002213, 44.522697, 18.947992>,  <37.640827, 44.428650, 18.765190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002213, 44.522697, 18.947992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062210, 44.130318, 18.997368>,  <37.098209, 43.894890, 19.026993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062210, 44.130318, 18.997368>,  <37.002213, 44.522697, 18.947992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062210, 44.130318, 18.997368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407108, 0.052498, 0.911870,
		-0.900981, -0.187023, -0.391479,
		0.149989, -0.980952, 0.123438,
		37.107208, 43.836033, 19.034399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374195, 44.203876, 19.199541>,  <37.002213, 44.522697, 18.947992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374195, 44.203876, 19.199541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665573, 43.949234, 19.300812>,  <36.840401, 43.796448, 19.361574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665573, 43.949234, 19.300812>,  <36.374195, 44.203876, 19.199541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665573, 43.949234, 19.300812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394464, -0.087586, 0.914728,
		-0.560147, -0.766199, -0.314920,
		0.728446, -0.636607, 0.253177,
		36.884106, 43.758251, 19.376764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034809, 43.466301, 19.422457>,  <36.374195, 44.203876, 19.199541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034809, 43.466301, 19.422457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387081, 43.542572, 19.595911>,  <36.598446, 43.588337, 19.699984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387081, 43.542572, 19.595911>,  <36.034809, 43.466301, 19.422457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387081, 43.542572, 19.595911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396515, -0.204120, 0.895048,
		0.259182, -0.960196, -0.104156,
		0.880681, 0.190681, 0.433637,
		36.651287, 43.599777, 19.726002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002987, 42.971348, 19.952576>,  <36.034809, 43.466301, 19.422457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002987, 42.971348, 19.952576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283276, 43.234287, 20.063488>,  <36.451450, 43.392052, 20.130035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283276, 43.234287, 20.063488>,  <36.002987, 42.971348, 19.952576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283276, 43.234287, 20.063488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374171, 0.007698, 0.927328,
		0.607440, -0.753550, 0.251353,
		0.700723, 0.657345, 0.277281,
		36.493492, 43.431492, 20.146671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361595, 42.619537, 20.560637>,  <36.002987, 42.971348, 19.952576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361595, 42.619537, 20.560637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412514, 43.016258, 20.565067>,  <36.443066, 43.254292, 20.567726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412514, 43.016258, 20.565067>,  <36.361595, 42.619537, 20.560637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412514, 43.016258, 20.565067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120919, 0.004432, 0.992652,
		0.984466, -0.127703, 0.120492,
		0.127299, 0.991802, 0.011078,
		36.450703, 43.313801, 20.568390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674744, 42.653183, 21.260540>,  <36.361595, 42.619537, 20.560637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674744, 42.653183, 21.260540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584614, 43.014233, 21.113848>,  <36.530537, 43.230862, 21.025833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584614, 43.014233, 21.113848>,  <36.674744, 42.653183, 21.260540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584614, 43.014233, 21.113848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265549, 0.305263, 0.914494,
		0.937396, 0.303444, 0.170908,
		-0.225326, 0.902627, -0.366731,
		36.517017, 43.285023, 21.003828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105053, 43.068317, 21.588026>,  <36.674744, 42.653183, 21.260540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105053, 43.068317, 21.588026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795959, 43.288872, 21.462265>,  <36.610504, 43.421204, 21.386808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795959, 43.288872, 21.462265>,  <37.105053, 43.068317, 21.588026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795959, 43.288872, 21.462265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051971, 0.438714, 0.897123,
		0.632594, 0.709581, -0.310355,
		-0.772738, 0.551385, -0.314405,
		36.564137, 43.454288, 21.367943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293205, 43.737625, 21.584332>,  <37.105053, 43.068317, 21.588026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293205, 43.737625, 21.584332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894119, 43.761261, 21.597427>,  <36.654667, 43.775440, 21.605286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894119, 43.761261, 21.597427>,  <37.293205, 43.737625, 21.584332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894119, 43.761261, 21.597427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060587, 0.568332, 0.820566,
		0.029877, 0.820675, -0.570613,
		-0.997716, 0.059088, 0.032742,
		36.594803, 43.778988, 21.607250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128822, 44.417782, 21.744406>,  <37.293205, 43.737625, 21.584332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128822, 44.417782, 21.744406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788597, 44.231377, 21.841881>,  <36.584461, 44.119534, 21.900366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788597, 44.231377, 21.841881>,  <37.128822, 44.417782, 21.744406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788597, 44.231377, 21.841881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117066, 0.619549, 0.776179,
		-0.512684, 0.631659, -0.581517,
		-0.850559, -0.466011, 0.243687,
		36.533428, 44.091572, 21.914988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607452, 44.947670, 21.734253>,  <37.128822, 44.417782, 21.744406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607452, 44.947670, 21.734253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506828, 44.643070, 21.973196>,  <36.446453, 44.460312, 22.116562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506828, 44.643070, 21.973196>,  <36.607452, 44.947670, 21.734253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506828, 44.643070, 21.973196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049368, 0.626499, 0.777857,
		-0.966581, 0.166188, -0.195197,
		-0.251562, -0.761499, 0.597358,
		36.431358, 44.414619, 22.152403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257854, 45.287590, 22.235481>,  <36.607452, 44.947670, 21.734253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257854, 45.287590, 22.235481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323254, 44.943470, 22.428623>,  <36.362495, 44.736996, 22.544508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323254, 44.943470, 22.428623>,  <36.257854, 45.287590, 22.235481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323254, 44.943470, 22.428623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142478, 0.463718, 0.874452,
		-0.976201, -0.211770, -0.046756,
		0.163500, -0.860302, 0.482855,
		36.372303, 44.685379, 22.573479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763657, 45.150639, 22.935806>,  <36.257854, 45.287590, 22.235481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763657, 45.150639, 22.935806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088058, 44.918171, 22.962690>,  <36.282700, 44.778690, 22.978821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088058, 44.918171, 22.962690>,  <35.763657, 45.150639, 22.935806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088058, 44.918171, 22.962690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140425, 0.304897, 0.941976,
		-0.567940, -0.754507, 0.328883,
		0.811003, -0.581169, 0.067212,
		36.331360, 44.743820, 22.982855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659733, 44.734718, 23.491720>,  <35.763657, 45.150639, 22.935806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659733, 44.734718, 23.491720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054119, 44.677670, 23.456997>,  <36.290749, 44.643440, 23.436163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054119, 44.677670, 23.456997>,  <35.659733, 44.734718, 23.491720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054119, 44.677670, 23.456997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103994, 0.117834, 0.987573,
		-0.130625, -0.982738, 0.131012,
		0.985963, -0.142626, -0.086807,
		36.349907, 44.634884, 23.430954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802250, 44.225178, 24.046009>,  <35.659733, 44.734718, 23.491720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802250, 44.225178, 24.046009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160187, 44.375217, 23.949217>,  <36.374950, 44.465240, 23.891142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160187, 44.375217, 23.949217>,  <35.802250, 44.225178, 24.046009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160187, 44.375217, 23.949217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207026, 0.131515, 0.969456,
		0.395464, -0.917609, 0.040031,
		0.894846, 0.375098, -0.241978,
		36.428642, 44.487747, 23.876623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337265, 43.841000, 24.445312>,  <35.802250, 44.225178, 24.046009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337265, 43.841000, 24.445312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521664, 44.174255, 24.323097>,  <36.632301, 44.374210, 24.249767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521664, 44.174255, 24.323097>,  <36.337265, 43.841000, 24.445312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521664, 44.174255, 24.323097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328507, 0.159625, 0.930915,
		0.824357, -0.529521, -0.200107,
		0.460997, 0.833143, -0.305540,
		36.659962, 44.424198, 24.231436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063999, 43.807453, 24.643188>,  <36.337265, 43.841000, 24.445312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063999, 43.807453, 24.643188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939102, 44.186451, 24.615564>,  <36.864166, 44.413849, 24.598989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939102, 44.186451, 24.615564>,  <37.063999, 43.807453, 24.643188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939102, 44.186451, 24.615564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284706, 0.162678, 0.944711,
		0.906338, 0.275315, -0.320550,
		-0.312239, 0.947490, -0.069058,
		36.845432, 44.470699, 24.594847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617451, 44.141846, 24.980232>,  <37.063999, 43.807453, 24.643188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617451, 44.141846, 24.980232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335598, 44.424786, 24.957794>,  <37.166485, 44.594551, 24.944330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335598, 44.424786, 24.957794>,  <37.617451, 44.141846, 24.980232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335598, 44.424786, 24.957794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256927, 0.328034, 0.909056,
		0.661422, 0.626139, -0.412881,
		-0.704634, 0.707350, -0.056096,
		37.124207, 44.636990, 24.940966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009106, 44.831497, 25.026888>,  <37.617451, 44.141846, 24.980232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009106, 44.831497, 25.026888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626209, 44.852428, 25.140692>,  <37.396469, 44.864986, 25.208975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626209, 44.852428, 25.140692>,  <38.009106, 44.831497, 25.026888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626209, 44.852428, 25.140692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287487, 0.281563, 0.915464,
		-0.032199, 0.958115, -0.284570,
		-0.957243, 0.052333, 0.284512,
		37.339035, 44.868130, 25.226046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898586, 45.494526, 25.357458>,  <38.009106, 44.831497, 25.026888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898586, 45.494526, 25.357458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571014, 45.302040, 25.482542>,  <37.374470, 45.186550, 25.557592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571014, 45.302040, 25.482542>,  <37.898586, 45.494526, 25.357458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571014, 45.302040, 25.482542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080069, 0.443758, 0.892563,
		-0.568278, 0.755986, -0.324877,
		-0.818931, -0.481212, 0.312709,
		37.325336, 45.157677, 25.576355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577419, 45.966732, 25.755558>,  <37.898586, 45.494526, 25.357458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577419, 45.966732, 25.755558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427551, 45.615280, 25.873974>,  <37.337631, 45.404411, 25.945024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427551, 45.615280, 25.873974>,  <37.577419, 45.966732, 25.755558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427551, 45.615280, 25.873974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014819, 0.313583, 0.949445,
		-0.927040, 0.360115, -0.104469,
		-0.374670, -0.878625, 0.296041,
		37.315151, 45.351692, 25.962786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989773, 46.148926, 26.278885>,  <37.577419, 45.966732, 25.755558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989773, 46.148926, 26.278885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103336, 45.769012, 26.331516>,  <37.171474, 45.541065, 26.363094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103336, 45.769012, 26.331516>,  <36.989773, 46.148926, 26.278885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103336, 45.769012, 26.331516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142130, 0.094021, 0.985373,
		-0.948258, -0.298460, -0.108299,
		0.283912, -0.949780, 0.131576,
		37.188511, 45.484077, 26.370989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427849, 45.924625, 26.802044>,  <36.989773, 46.148926, 26.278885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427849, 45.924625, 26.802044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751560, 45.689659, 26.803192>,  <36.945786, 45.548679, 26.803881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751560, 45.689659, 26.803192>,  <36.427849, 45.924625, 26.802044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751560, 45.689659, 26.803192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143819, 0.202872, 0.968586,
		-0.569546, -0.783444, 0.248662,
		0.809280, -0.587417, 0.002871,
		36.994343, 45.513435, 26.804054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490479, 45.485447, 27.398724>,  <36.427849, 45.924625, 26.802044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490479, 45.485447, 27.398724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865013, 45.487518, 27.258301>,  <37.089733, 45.488762, 27.174047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865013, 45.487518, 27.258301>,  <36.490479, 45.485447, 27.398724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865013, 45.487518, 27.258301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351076, -0.024318, 0.936031,
		-0.003684, -0.999691, -0.024591,
		0.936340, 0.005185, -0.351057,
		37.145916, 45.489071, 27.152985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928608, 45.071682, 27.347059>,  <36.490479, 45.485447, 27.398724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928608, 45.071682, 27.347059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548077, 45.001984, 27.245380>,  <35.319759, 44.960163, 27.184374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548077, 45.001984, 27.245380>,  <35.928608, 45.071682, 27.347059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548077, 45.001984, 27.245380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037652, -0.752926, 0.657027,
		-0.305877, 0.634618, 0.709717,
		-0.951326, -0.174248, -0.254197,
		35.262680, 44.949711, 27.169121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525463, 44.901875, 27.985041>,  <35.928608, 45.071682, 27.347059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525463, 44.901875, 27.985041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357128, 44.754627, 27.653408>,  <35.256126, 44.666279, 27.454428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357128, 44.754627, 27.653408>,  <35.525463, 44.901875, 27.985041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357128, 44.754627, 27.653408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083764, -0.894284, 0.439591,
		-0.903259, 0.254445, 0.345516,
		-0.420841, -0.368122, -0.829083,
		35.230877, 44.644192, 27.404682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768673, 44.608990, 28.074694>,  <35.525463, 44.901875, 27.985041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768673, 44.608990, 28.074694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999596, 44.432804, 27.799681>,  <35.138149, 44.327091, 27.634672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999596, 44.432804, 27.799681>,  <34.768673, 44.608990, 28.074694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999596, 44.432804, 27.799681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140906, -0.883133, 0.447461,
		-0.804276, -0.161446, -0.571905,
		0.577309, -0.440467, -0.687534,
		35.172787, 44.300663, 27.593420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323589, 44.016579, 27.876209>,  <34.768673, 44.608990, 28.074694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323589, 44.016579, 27.876209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712074, 43.953522, 27.804773>,  <34.945164, 43.915688, 27.761911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712074, 43.953522, 27.804773>,  <34.323589, 44.016579, 27.876209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712074, 43.953522, 27.804773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084040, -0.928248, 0.362344,
		-0.222894, -0.336904, -0.914775,
		0.971213, -0.157642, -0.178588,
		35.003437, 43.906227, 27.751198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333282, 43.505852, 27.319630>,  <34.323589, 44.016579, 27.876209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333282, 43.505852, 27.319630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623085, 43.500519, 27.595285>,  <34.796967, 43.497318, 27.760679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623085, 43.500519, 27.595285>,  <34.333282, 43.505852, 27.319630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623085, 43.500519, 27.595285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310409, -0.898998, 0.308947,
		0.615413, -0.437749, -0.655471,
		0.724508, -0.013334, 0.689137,
		34.840439, 43.496517, 27.802027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560131, 42.743526, 27.519321>,  <34.333282, 43.505852, 27.319630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560131, 42.743526, 27.519321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687237, 42.991470, 27.806318>,  <34.763500, 43.140236, 27.978516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687237, 42.991470, 27.806318>,  <34.560131, 42.743526, 27.519321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687237, 42.991470, 27.806318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032698, -0.749098, 0.661652,
		0.947604, -0.233712, -0.217771,
		0.317768, 0.619863, 0.717491,
		34.782566, 43.177429, 28.021566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378983, 41.957829, 27.783453>,  <34.560131, 42.743526, 27.519321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378983, 41.957829, 27.783453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984818, 41.919163, 27.839466>,  <33.748318, 41.895966, 27.873074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984818, 41.919163, 27.839466>,  <34.378983, 41.957829, 27.783453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984818, 41.919163, 27.839466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167077, -0.393825, 0.903873,
		-0.032220, 0.914089, 0.404232,
		-0.985417, -0.096660, 0.140034,
		33.689194, 41.890163, 27.881475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997314, 42.367043, 28.281555>,  <34.378983, 41.957829, 27.783453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997314, 42.367043, 28.281555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825565, 42.005905, 28.272518>,  <33.722515, 41.789223, 28.267096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825565, 42.005905, 28.272518>,  <33.997314, 42.367043, 28.281555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825565, 42.005905, 28.272518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306081, -0.169009, 0.936883,
		-0.849680, 0.395353, 0.348911,
		-0.429369, -0.902846, -0.022594,
		33.696754, 41.735050, 28.265739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454224, 42.210667, 28.859138>,  <33.997314, 42.367043, 28.281555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454224, 42.210667, 28.859138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640194, 41.883789, 28.722876>,  <33.751774, 41.687664, 28.641119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640194, 41.883789, 28.722876>,  <33.454224, 42.210667, 28.859138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640194, 41.883789, 28.722876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442493, -0.118790, 0.888869,
		-0.766843, -0.563992, 0.306373,
		0.464921, -0.817191, -0.340656,
		33.779671, 41.638630, 28.620678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307251, 42.181194, 29.489048>,  <33.454224, 42.210667, 28.859138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307251, 42.181194, 29.489048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651840, 41.991863, 29.562611>,  <33.858593, 41.878265, 29.606749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651840, 41.991863, 29.562611>,  <33.307251, 42.181194, 29.489048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651840, 41.991863, 29.562611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495999, -0.706727, 0.504501,
		-0.108819, -0.525835, -0.843597,
		0.861477, -0.473323, 0.183908,
		33.910282, 41.849865, 29.617783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188789, 41.618607, 29.295893>,  <33.307251, 42.181194, 29.489048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188789, 41.618607, 29.295893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475357, 41.594410, 29.573910>,  <33.647297, 41.579891, 29.740721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475357, 41.594410, 29.573910>,  <33.188789, 41.618607, 29.295893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475357, 41.594410, 29.573910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524661, -0.703373, 0.479580,
		0.459863, -0.708242, -0.535648,
		0.716419, -0.060492, 0.695042,
		33.690285, 41.576263, 29.782423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414143, 40.987473, 29.443346>,  <33.188789, 41.618607, 29.295893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414143, 40.987473, 29.443346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459614, 41.210018, 29.772596>,  <33.486897, 41.343548, 29.970146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459614, 41.210018, 29.772596>,  <33.414143, 40.987473, 29.443346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459614, 41.210018, 29.772596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660835, -0.576305, 0.480801,
		0.741872, -0.598606, 0.302154,
		0.113677, 0.556367, 0.823124,
		33.493717, 41.376926, 30.019533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573658, 40.561234, 29.991760>,  <33.414143, 40.987473, 29.443346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573658, 40.561234, 29.991760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413467, 40.894989, 30.143238>,  <33.317352, 41.095242, 30.234125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413467, 40.894989, 30.143238>,  <33.573658, 40.561234, 29.991760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413467, 40.894989, 30.143238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638690, -0.550534, 0.537575,
		0.657032, -0.026582, 0.753394,
		-0.400479, 0.834389, 0.378697,
		33.293324, 41.145306, 30.256847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532825, 40.496281, 30.722248>,  <33.573658, 40.561234, 29.991760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532825, 40.496281, 30.722248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244747, 40.726158, 30.566788>,  <33.071899, 40.864082, 30.473511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244747, 40.726158, 30.566788>,  <33.532825, 40.496281, 30.722248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244747, 40.726158, 30.566788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669090, -0.427257, 0.608088,
		0.183408, 0.697985, 0.692228,
		-0.720195, 0.574690, -0.388652,
		33.028690, 40.898563, 30.450191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267727, 40.895596, 31.283499>,  <33.532825, 40.496281, 30.722248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267727, 40.895596, 31.283499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003269, 40.827869, 30.991137>,  <32.844593, 40.787235, 30.815720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003269, 40.827869, 30.991137>,  <33.267727, 40.895596, 31.283499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003269, 40.827869, 30.991137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577765, -0.506581, 0.639971,
		-0.478616, 0.845405, 0.237102,
		-0.661146, -0.169311, -0.730904,
		32.804924, 40.777077, 30.771866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638161, 41.069561, 31.544249>,  <33.267727, 40.895596, 31.283499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638161, 41.069561, 31.544249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627831, 40.777016, 31.271646>,  <32.621632, 40.601490, 31.108086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627831, 40.777016, 31.271646>,  <32.638161, 41.069561, 31.544249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627831, 40.777016, 31.271646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481172, -0.588471, 0.649751,
		-0.876246, 0.344698, -0.336714,
		-0.025821, -0.731359, -0.681504,
		32.620083, 40.557610, 31.067196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937790, 40.742702, 31.446138>,  <32.638161, 41.069561, 31.544249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937790, 40.742702, 31.446138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205914, 40.463142, 31.346363>,  <32.366787, 40.295406, 31.286497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205914, 40.463142, 31.346363>,  <31.937790, 40.742702, 31.446138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205914, 40.463142, 31.346363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333009, -0.583686, 0.740551,
		-0.663168, -0.413332, -0.623991,
		0.670308, -0.698904, -0.249439,
		32.407005, 40.253471, 31.271530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180544, 40.812359, 31.597790>,  <31.937790, 40.742702, 31.446138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180544, 40.812359, 31.597790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816891, 40.832729, 31.763144>,  <30.598700, 40.844952, 31.862356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816891, 40.832729, 31.763144>,  <31.180544, 40.812359, 31.597790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816891, 40.832729, 31.763144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339155, -0.666625, -0.663766,
		0.241770, -0.743652, 0.623321,
		-0.909132, 0.050924, 0.413383,
		30.544151, 40.848007, 31.887159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868855, 40.135193, 31.830650>,  <31.180544, 40.812359, 31.597790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868855, 40.135193, 31.830650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569622, 40.373169, 31.713062>,  <30.390081, 40.515953, 31.642509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569622, 40.373169, 31.713062>,  <30.868855, 40.135193, 31.830650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569622, 40.373169, 31.713062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194965, -0.620482, -0.759599,
		-0.634324, -0.510925, 0.580163,
		-0.748078, 0.594943, -0.293974,
		30.345198, 40.551651, 31.624870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540821, 40.040230, 31.499969>,  <30.868855, 40.135193, 31.830650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540821, 40.040230, 31.499969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923244, 39.923954, 31.484749>,  <32.152699, 39.854187, 31.475616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923244, 39.923954, 31.484749>,  <31.540821, 40.040230, 31.499969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923244, 39.923954, 31.484749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176313, -0.673807, 0.717564,
		-0.234228, -0.679325, -0.695452,
		0.956060, -0.290691, -0.038050,
		32.210064, 39.836746, 31.473333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490765, 39.305462, 31.470177>,  <31.540821, 40.040230, 31.499969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490765, 39.305462, 31.470177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876438, 39.364201, 31.558525>,  <32.107841, 39.399445, 31.611534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876438, 39.364201, 31.558525>,  <31.490765, 39.305462, 31.470177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876438, 39.364201, 31.558525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002308, -0.837365, 0.546640,
		0.265222, -0.526552, -0.807713,
		0.964184, 0.146845, 0.220873,
		32.165695, 39.408253, 31.624786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877157, 38.711452, 31.281881>,  <31.490765, 39.305462, 31.470177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877157, 38.711452, 31.281881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091805, 38.888882, 31.569016>,  <32.220592, 38.995338, 31.741297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091805, 38.888882, 31.569016>,  <31.877157, 38.711452, 31.281881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091805, 38.888882, 31.569016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020584, -0.843557, 0.536646,
		0.843574, -0.302749, -0.443537,
		0.536618, 0.443571, 0.717835,
		32.252789, 39.021954, 31.784367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346397, 38.211365, 31.450516>,  <31.877157, 38.711452, 31.281881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346397, 38.211365, 31.450516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296188, 38.455078, 31.763699>,  <32.266064, 38.601307, 31.951609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296188, 38.455078, 31.763699>,  <32.346397, 38.211365, 31.450516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296188, 38.455078, 31.763699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224282, -0.786194, 0.575844,
		0.966407, -0.103324, 0.235333,
		-0.125519, 0.609281, 0.782957,
		32.258533, 38.637863, 31.998587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748066, 38.004032, 32.067802>,  <32.346397, 38.211365, 31.450516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748066, 38.004032, 32.067802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401962, 38.179951, 32.164055>,  <32.194298, 38.285500, 32.221806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401962, 38.179951, 32.164055>,  <32.748066, 38.004032, 32.067802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401962, 38.179951, 32.164055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304717, -0.842533, 0.444168,
		0.398083, 0.310997, 0.863024,
		-0.865262, 0.439794, 0.240632,
		32.142384, 38.311890, 32.236244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258801, 37.474960, 31.959221>,  <32.748066, 38.004032, 32.067802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258801, 37.474960, 31.959221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630096, 37.388760, 31.837942>,  <33.852875, 37.337040, 31.765175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630096, 37.388760, 31.837942>,  <33.258801, 37.474960, 31.959221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630096, 37.388760, 31.837942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030639, -0.856619, 0.515040,
		-0.370714, -0.468791, -0.801752,
		0.928241, -0.215498, -0.303197,
		33.908569, 37.324112, 31.746983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224781, 36.723610, 31.662960>,  <33.258801, 37.474960, 31.959221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224781, 36.723610, 31.662960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587551, 36.835258, 31.789185>,  <33.805214, 36.902248, 31.864920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587551, 36.835258, 31.789185>,  <33.224781, 36.723610, 31.662960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587551, 36.835258, 31.789185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074800, -0.843815, 0.531396,
		0.414601, -0.458331, -0.786154,
		0.906924, 0.279122, 0.315563,
		33.859627, 36.918995, 31.883854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741859, 36.229912, 31.590406>,  <33.224781, 36.723610, 31.662960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741859, 36.229912, 31.590406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857014, 36.456108, 31.899557>,  <33.926105, 36.591827, 32.085049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857014, 36.456108, 31.899557>,  <33.741859, 36.229912, 31.590406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857014, 36.456108, 31.899557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364978, -0.810921, 0.457382,
		0.885389, 0.150410, -0.439845,
		0.287884, 0.565495, 0.772877,
		33.943378, 36.625755, 32.131420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468712, 35.974720, 31.836823>,  <33.741859, 36.229912, 31.590406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468712, 35.974720, 31.836823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262093, 36.151947, 32.129910>,  <34.138123, 36.258282, 32.305763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262093, 36.151947, 32.129910>,  <34.468712, 35.974720, 31.836823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262093, 36.151947, 32.129910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356092, -0.667059, 0.654394,
		0.778705, 0.598938, 0.186794,
		-0.516544, 0.443064, 0.732719,
		34.107128, 36.284866, 32.349724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054974, 35.580353, 31.664869>,  <34.468712, 35.974720, 31.836823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054974, 35.580353, 31.664869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226917, 35.941021, 31.683702>,  <35.330086, 36.157421, 31.695002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226917, 35.941021, 31.683702>,  <35.054974, 35.580353, 31.664869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226917, 35.941021, 31.683702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617512, -0.255549, -0.743890,
		-0.658709, 0.348844, -0.666641,
		0.429861, 0.901666, 0.047083,
		35.355877, 36.211521, 31.697828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249058, 35.986965, 30.993111>,  <35.054974, 35.580353, 31.664869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249058, 35.986965, 30.993111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491089, 35.984764, 31.311569>,  <35.636307, 35.983444, 31.502645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491089, 35.984764, 31.311569>,  <35.249058, 35.986965, 30.993111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491089, 35.984764, 31.311569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677009, -0.522670, -0.518145,
		0.418975, 0.852517, -0.312528,
		0.605077, -0.005505, 0.796148,
		35.672611, 35.983112, 31.550413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973999, 36.186420, 30.878275>,  <35.249058, 35.986965, 30.993111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973999, 36.186420, 30.878275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996872, 35.936356, 31.189634>,  <36.010593, 35.786316, 31.376450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996872, 35.936356, 31.189634>,  <35.973999, 36.186420, 30.878275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996872, 35.936356, 31.189634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773971, -0.464739, -0.430102,
		0.630635, 0.627052, 0.457281,
		0.057180, -0.625159, 0.778400,
		36.014027, 35.748806, 31.423155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655296, 36.185585, 31.270105>,  <35.973999, 36.186420, 30.878275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655296, 36.185585, 31.270105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504616, 35.815456, 31.287477>,  <36.414207, 35.593380, 31.297901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504616, 35.815456, 31.287477>,  <36.655296, 36.185585, 31.270105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504616, 35.815456, 31.287477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853337, -0.364876, -0.372400,
		0.360435, -0.103220, 0.927055,
		-0.376699, -0.925317, 0.043433,
		36.391605, 35.537861, 31.300507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061905, 35.816189, 31.749165>,  <36.655296, 36.185585, 31.270105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061905, 35.816189, 31.749165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892368, 35.533703, 31.522318>,  <36.790646, 35.364212, 31.386209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892368, 35.533703, 31.522318>,  <37.061905, 35.816189, 31.749165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892368, 35.533703, 31.522318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905338, -0.311752, -0.288398,
		0.026871, -0.635667, 0.771496,
		-0.423841, -0.706214, -0.567116,
		36.765217, 35.321838, 31.352182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344444, 35.007881, 31.879681>,  <37.061905, 35.816189, 31.749165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344444, 35.007881, 31.879681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211304, 35.086544, 31.510782>,  <37.131420, 35.133743, 31.289444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211304, 35.086544, 31.510782>,  <37.344444, 35.007881, 31.879681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211304, 35.086544, 31.510782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843235, -0.375702, -0.384451,
		-0.422095, -0.905634, -0.040776,
		-0.332853, 0.196659, -0.922244,
		37.111446, 35.145542, 31.234110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387634, 34.469501, 31.420698>,  <37.344444, 35.007881, 31.879681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387634, 34.469501, 31.420698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435032, 34.828468, 31.250706>,  <37.463470, 35.043846, 31.148710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435032, 34.828468, 31.250706>,  <37.387634, 34.469501, 31.420698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435032, 34.828468, 31.250706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884833, -0.289647, -0.364932,
		-0.450589, -0.332795, -0.828382,
		0.118491, 0.897414, -0.424980,
		37.470577, 35.097694, 31.123211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455654, 33.866955, 31.695633>,  <37.387634, 34.469501, 31.420698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455654, 33.866955, 31.695633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593700, 33.818878, 32.067966>,  <37.676529, 33.790031, 32.291367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593700, 33.818878, 32.067966>,  <37.455654, 33.866955, 31.695633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593700, 33.818878, 32.067966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709029, -0.616431, -0.342477,
		0.614957, 0.778181, -0.127518,
		0.345116, -0.120195, 0.930832,
		37.697235, 33.782822, 32.347218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296581, 33.845261, 31.707047>,  <37.455654, 33.866955, 31.695633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296581, 33.845261, 31.707047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093937, 33.654720, 31.994499>,  <37.972351, 33.540394, 32.166973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093937, 33.654720, 31.994499>,  <38.296581, 33.845261, 31.707047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093937, 33.654720, 31.994499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570076, -0.810378, -0.135285,
		0.646808, 0.341139, 0.682102,
		-0.506610, -0.476353, 0.718634,
		37.941956, 33.511814, 32.210091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787170, 33.395741, 31.957336>,  <38.296581, 33.845261, 31.707047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787170, 33.395741, 31.957336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440845, 33.229305, 32.068501>,  <38.233051, 33.129444, 32.135201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440845, 33.229305, 32.068501>,  <38.787170, 33.395741, 31.957336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440845, 33.229305, 32.068501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463433, -0.876269, 0.131844,
		0.188666, 0.242946, 0.951516,
		-0.865815, -0.416090, 0.277911,
		38.181103, 33.104477, 32.151875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582520, 33.583519, 31.934557>,  <38.787170, 33.395741, 31.957336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582520, 33.583519, 31.934557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588276, 33.983475, 31.935486>,  <39.591732, 34.223450, 31.936043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588276, 33.983475, 31.935486>,  <39.582520, 33.583519, 31.934557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588276, 33.983475, 31.935486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017406, -0.002573, 0.999845,
		0.999745, -0.014351, -0.017442,
		0.014393, 0.999894, 0.002323,
		39.592594, 34.283443, 31.936182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748623, 32.889862, 31.700163>,  <39.582520, 33.583519, 31.934557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748623, 32.889862, 31.700163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626167, 32.509754, 31.677292>,  <39.552692, 32.281689, 31.663570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626167, 32.509754, 31.677292>,  <39.748623, 32.889862, 31.700163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626167, 32.509754, 31.677292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428636, -0.191221, 0.883010,
		-0.850028, 0.245819, 0.465859,
		-0.306142, -0.950267, -0.057177,
		39.534325, 32.224674, 31.660139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181007, 32.588139, 32.216579>,  <39.748623, 32.889862, 31.700163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181007, 32.588139, 32.216579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430149, 32.294468, 32.108479>,  <39.579636, 32.118263, 32.043617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430149, 32.294468, 32.108479>,  <39.181007, 32.588139, 32.216579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430149, 32.294468, 32.108479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128207, -0.244979, 0.961014,
		-0.771763, -0.633218, -0.058459,
		0.622852, -0.734180, -0.270249,
		39.617004, 32.074215, 32.027405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987186, 31.862062, 32.473114>,  <39.181007, 32.588139, 32.216579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987186, 31.862062, 32.473114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380119, 31.928633, 32.438885>,  <39.615879, 31.968575, 32.418346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380119, 31.928633, 32.438885>,  <38.987186, 31.862062, 32.473114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380119, 31.928633, 32.438885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084752, 0.012057, 0.996329,
		0.166849, -0.985980, -0.002261,
		0.982333, 0.166428, -0.085575,
		39.674820, 31.978561, 32.413212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372303, 31.220650, 32.757820>,  <38.987186, 31.862062, 32.473114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372303, 31.220650, 32.757820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552387, 31.575216, 32.800846>,  <39.660439, 31.787956, 32.826660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552387, 31.575216, 32.800846>,  <39.372303, 31.220650, 32.757820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552387, 31.575216, 32.800846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187197, -0.211485, 0.959287,
		0.873078, -0.411748, -0.261148,
		0.450213, 0.886419, 0.107565,
		39.687450, 31.841143, 32.833115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640400, 31.081675, 33.509129>,  <39.372303, 31.220650, 32.757820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640400, 31.081675, 33.509129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406277, 30.846170, 33.732121>,  <39.265804, 30.704868, 33.865913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406277, 30.846170, 33.732121>,  <39.640400, 31.081675, 33.509129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406277, 30.846170, 33.732121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323731, 0.800065, 0.505069,
		-0.743382, 0.115146, -0.658881,
		-0.585305, -0.588759, 0.557477,
		39.230686, 30.669542, 33.899364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391666, 31.353737, 33.510727>,  <39.640400, 31.081675, 33.509129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391666, 31.353737, 33.510727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717251, 31.184605, 33.351387>,  <40.912601, 31.083124, 33.255783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717251, 31.184605, 33.351387>,  <40.391666, 31.353737, 33.510727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717251, 31.184605, 33.351387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371307, -0.148681, 0.916529,
		-0.446765, -0.893927, 0.035981,
		0.813960, -0.422833, -0.398347,
		40.961437, 31.057755, 33.231884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629314, 30.599342, 33.691311>,  <40.391666, 31.353737, 33.510727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629314, 30.599342, 33.691311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938194, 30.846979, 33.634136>,  <41.123524, 30.995562, 33.599831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938194, 30.846979, 33.634136>,  <40.629314, 30.599342, 33.691311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938194, 30.846979, 33.634136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283171, -0.133938, 0.949671,
		0.568788, -0.773813, -0.278736,
		0.772201, 0.619091, -0.142939,
		41.169853, 31.032707, 33.591255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247238, 30.219181, 33.960461>,  <40.629314, 30.599342, 33.691311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247238, 30.219181, 33.960461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298397, 30.615580, 33.944607>,  <41.329094, 30.853418, 33.935093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298397, 30.615580, 33.944607>,  <41.247238, 30.219181, 33.960461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298397, 30.615580, 33.944607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186947, 0.015159, 0.982253,
		0.974009, -0.133038, -0.183324,
		0.127898, 0.990995, -0.039636,
		41.336765, 30.912878, 33.932716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912899, 30.467421, 34.244137>,  <41.247238, 30.219181, 33.960461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912899, 30.467421, 34.244137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628258, 30.746658, 34.275860>,  <41.457474, 30.914202, 34.294895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628258, 30.746658, 34.275860>,  <41.912899, 30.467421, 34.244137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628258, 30.746658, 34.275860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322030, 0.223750, 0.919909,
		0.624437, 0.680148, -0.384028,
		-0.711600, 0.698094, 0.079310,
		41.414776, 30.956087, 34.299652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205193, 31.141432, 34.439163>,  <41.912899, 30.467421, 34.244137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205193, 31.141432, 34.439163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823311, 31.118502, 34.555954>,  <41.594181, 31.104744, 34.626030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823311, 31.118502, 34.555954>,  <42.205193, 31.141432, 34.439163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823311, 31.118502, 34.555954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269790, 0.247119, 0.930669,
		-0.125506, 0.967288, -0.220460,
		-0.954705, -0.057327, 0.291979,
		41.536900, 31.101303, 34.643547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547546, 31.685226, 34.875702>,  <42.205193, 31.141432, 34.439163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547546, 31.685226, 34.875702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580753, 32.079643, 34.817978>,  <42.600677, 32.316296, 34.783344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580753, 32.079643, 34.817978>,  <42.547546, 31.685226, 34.875702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580753, 32.079643, 34.817978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486983, 0.086207, 0.869147,
		0.869458, -0.142429, -0.473030,
		0.083013, 0.986044, -0.144314,
		42.605656, 32.375458, 34.774685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291504, 31.910522, 34.703369>,  <42.547546, 31.685226, 34.875702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291504, 31.910522, 34.703369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057095, 32.136593, 34.935627>,  <42.916451, 32.272236, 35.074982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057095, 32.136593, 34.935627>,  <43.291504, 31.910522, 34.703369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057095, 32.136593, 34.935627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642183, -0.113053, 0.758169,
		0.494144, 0.817186, -0.296696,
		-0.586024, 0.565177, 0.580647,
		42.881287, 32.306145, 35.109821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651997, 32.454910, 34.953213>,  <43.291504, 31.910522, 34.703369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651997, 32.454910, 34.953213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357231, 32.416168, 35.220818>,  <43.180370, 32.392925, 35.381382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357231, 32.416168, 35.220818>,  <43.651997, 32.454910, 34.953213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357231, 32.416168, 35.220818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675361, -0.148080, 0.722468,
		0.029096, 0.984222, 0.174531,
		-0.736913, -0.096851, 0.669014,
		43.136158, 32.387112, 35.421520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250782, 31.947918, 34.894135>,  <43.651997, 32.454910, 34.953213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250782, 31.947918, 34.894135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423710, 31.674006, 35.128799>,  <44.527466, 31.509659, 35.269600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423710, 31.674006, 35.128799>,  <44.250782, 31.947918, 34.894135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423710, 31.674006, 35.128799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717120, 0.655524, 0.236699,
		-0.546660, 0.318379, 0.774466,
		0.432321, -0.684779, 0.586665,
		44.553406, 31.468573, 35.304798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258804, 32.104172, 35.514809>,  <44.250782, 31.947918, 34.894135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258804, 32.104172, 35.514809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291298, 32.498692, 35.572239>,  <44.310795, 32.735405, 35.606697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291298, 32.498692, 35.572239>,  <44.258804, 32.104172, 35.514809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291298, 32.498692, 35.572239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861940, 0.141851, -0.486763,
		-0.500461, -0.084217, 0.861653,
		0.081233, 0.986299, 0.143580,
		44.315666, 32.794582, 35.615314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872978, 32.304642, 35.174870>,  <44.258804, 32.104172, 35.514809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872978, 32.304642, 35.174870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252655, 32.335209, 35.052757>,  <45.480461, 32.353550, 34.979488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252655, 32.335209, 35.052757>,  <44.872978, 32.304642, 35.174870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252655, 32.335209, 35.052757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177604, 0.930906, -0.319171,
		0.259799, 0.357174, 0.897179,
		0.949190, 0.076422, -0.305284,
		45.537411, 32.358135, 34.961170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977715, 32.961567, 35.304138>,  <44.872978, 32.304642, 35.174870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977715, 32.961567, 35.304138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271267, 32.882771, 35.044106>,  <45.447399, 32.835491, 34.888084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271267, 32.882771, 35.044106>,  <44.977715, 32.961567, 35.304138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271267, 32.882771, 35.044106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043915, 0.941263, -0.334806,
		0.677852, 0.274257, 0.682129,
		0.733886, -0.196993, -0.650081,
		45.491432, 32.823673, 34.849083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512791, 33.483952, 35.420250>,  <44.977715, 32.961567, 35.304138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512791, 33.483952, 35.420250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545826, 33.336803, 35.049770>,  <45.565647, 33.248512, 34.827480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545826, 33.336803, 35.049770>,  <45.512791, 33.483952, 35.420250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545826, 33.336803, 35.049770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130481, 0.925368, -0.355906,
		0.988005, -0.091457, 0.124428,
		0.082592, -0.367873, -0.926201,
		45.570602, 33.226440, 34.771912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254539, 33.723824, 35.132118>,  <45.512791, 33.483952, 35.420250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254539, 33.723824, 35.132118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983627, 33.680565, 34.841026>,  <45.821079, 33.654610, 34.666370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983627, 33.680565, 34.841026>,  <46.254539, 33.723824, 35.132118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983627, 33.680565, 34.841026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041038, 0.993151, -0.109393,
		0.734576, -0.044225, -0.677084,
		-0.677284, -0.108144, -0.727730,
		45.780441, 33.648121, 34.622707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509251, 34.096951, 34.496433>,  <46.254539, 33.723824, 35.132118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509251, 34.096951, 34.496433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112190, 34.078960, 34.541374>,  <45.873955, 34.068169, 34.568340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112190, 34.078960, 34.541374>,  <46.509251, 34.096951, 34.496433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112190, 34.078960, 34.541374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076453, 0.952703, -0.294129,
		-0.093813, -0.300557, -0.949139,
		-0.992650, -0.044971, 0.112354,
		45.814396, 34.065468, 34.575081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044407, 34.190502, 33.872402>,  <46.509251, 34.096951, 34.496433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044407, 34.190502, 33.872402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871075, 34.344540, 34.198330>,  <45.767075, 34.436962, 34.393887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871075, 34.344540, 34.198330>,  <46.044407, 34.190502, 33.872402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871075, 34.344540, 34.198330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105305, 0.919553, -0.378593,
		-0.895064, -0.078250, -0.439018,
		-0.433325, 0.385096, 0.814819,
		45.741077, 34.460068, 34.442776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083897, 34.758930, 33.269608>,  <46.044407, 34.190502, 33.872402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083897, 34.758930, 33.269608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140869, 35.036125, 33.552303>,  <46.175053, 35.202442, 33.721920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140869, 35.036125, 33.552303>,  <46.083897, 34.758930, 33.269608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140869, 35.036125, 33.552303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553330, -0.647771, 0.523659,
		0.820694, 0.316474, -0.475715,
		0.142430, 0.692991, 0.706737,
		46.183598, 35.244022, 33.764324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742481, 34.585003, 33.503517>,  <46.083897, 34.758930, 33.269608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742481, 34.585003, 33.503517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630772, 34.881592, 33.747559>,  <46.563747, 35.059544, 33.893986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630772, 34.881592, 33.747559>,  <46.742481, 34.585003, 33.503517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630772, 34.881592, 33.747559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617776, -0.347675, 0.705319,
		0.735091, 0.573886, -0.360966,
		-0.279274, 0.741470, 0.610106,
		46.546989, 35.104034, 33.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.226379, 35.060581, 33.566341>,  <46.742481, 34.585003, 33.503517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.226379, 35.060581, 33.566341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.015835, 35.021248, 33.904163>,  <46.889507, 34.997646, 34.106857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.015835, 35.021248, 33.904163>,  <47.226379, 35.060581, 33.566341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.015835, 35.021248, 33.904163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837186, -0.233479, 0.494578,
		0.148553, 0.967377, 0.205216,
		-0.526357, -0.098333, 0.844558,
		46.857929, 34.991749, 34.157532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.377792, 35.575108, 34.143997>,  <47.226379, 35.060581, 33.566341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.377792, 35.575108, 34.143997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266293, 35.213120, 34.272575>,  <47.199394, 34.995926, 34.349720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266293, 35.213120, 34.272575>,  <47.377792, 35.575108, 34.143997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.266293, 35.213120, 34.272575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903929, -0.134185, 0.406087,
		-0.324365, 0.403757, 0.855434,
		-0.278748, -0.904972, 0.321443,
		47.182667, 34.941628, 34.369007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142063, 35.345028, 34.842220>,  <47.377792, 35.575108, 34.143997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142063, 35.345028, 34.842220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365314, 35.136223, 34.584229>,  <47.499264, 35.010941, 34.429432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365314, 35.136223, 34.584229>,  <47.142063, 35.345028, 34.842220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365314, 35.136223, 34.584229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787987, 0.089939, 0.609087,
		-0.259940, -0.848185, 0.461534,
		0.558128, -0.522009, -0.644980,
		47.532753, 34.979622, 34.390736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.526279, 34.818340, 35.109768>,  <47.142063, 35.345028, 34.842220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.526279, 34.818340, 35.109768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726639, 34.976624, 34.801868>,  <47.846855, 35.071594, 34.617126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726639, 34.976624, 34.801868>,  <47.526279, 34.818340, 35.109768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726639, 34.976624, 34.801868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755607, 0.233798, 0.611880,
		0.422092, -0.888119, -0.181890,
		0.500897, 0.395707, -0.769753,
		47.876907, 35.095337, 34.570942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.138588, 38.268379, 19.099796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947697, 37.919529, 19.142982>,  <38.833164, 37.710220, 19.168894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947697, 37.919529, 19.142982>,  <39.138588, 38.268379, 19.099796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947697, 37.919529, 19.142982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161446, 0.207774, 0.964762,
		-0.863824, 0.442977, -0.239956,
		-0.477224, -0.872124, 0.107964,
		38.804531, 37.657890, 19.175371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491802, 38.454063, 19.353020>,  <39.138588, 38.268379, 19.099796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491802, 38.454063, 19.353020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517197, 38.063580, 19.435946>,  <38.532433, 37.829288, 19.485701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517197, 38.063580, 19.435946>,  <38.491802, 38.454063, 19.353020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517197, 38.063580, 19.435946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313459, 0.177713, 0.932824,
		-0.947477, -0.124208, -0.294720,
		0.063488, -0.976212, 0.207313,
		38.536243, 37.770718, 19.498140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806328, 38.221626, 19.600462>,  <38.491802, 38.454063, 19.353020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806328, 38.221626, 19.600462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102325, 37.982254, 19.723286>,  <38.279922, 37.838631, 19.796980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102325, 37.982254, 19.723286>,  <37.806328, 38.221626, 19.600462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102325, 37.982254, 19.723286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266802, 0.157911, 0.950727,
		-0.617437, -0.785455, -0.042811,
		0.739992, -0.598436, 0.307061,
		38.324322, 37.802723, 19.815405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480331, 37.819744, 20.165758>,  <37.806328, 38.221626, 19.600462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480331, 37.819744, 20.165758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869358, 37.779072, 20.249456>,  <38.102772, 37.754669, 20.299675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869358, 37.779072, 20.249456>,  <37.480331, 37.819744, 20.165758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869358, 37.779072, 20.249456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209849, 0.004867, 0.977722,
		-0.100434, -0.994805, -0.016604,
		0.972562, -0.101681, 0.209248,
		38.161125, 37.748569, 20.312231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536491, 37.234119, 20.579674>,  <37.480331, 37.819744, 20.165758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536491, 37.234119, 20.579674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.857811, 37.463940, 20.642410>,  <38.050606, 37.601830, 20.680052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.857811, 37.463940, 20.642410>,  <37.536491, 37.234119, 20.579674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857811, 37.463940, 20.642410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140893, -0.072546, 0.987363,
		0.578665, -0.815250, 0.022673,
		0.803303, 0.574546, 0.156843,
		38.098801, 37.636303, 20.689463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718430, 37.088291, 21.255333>,  <37.536491, 37.234119, 20.579674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718430, 37.088291, 21.255333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.943794, 37.414265, 21.200989>,  <38.079014, 37.609848, 21.168383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.943794, 37.414265, 21.200989>,  <37.718430, 37.088291, 21.255333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943794, 37.414265, 21.200989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178106, 0.280381, 0.943221,
		0.806753, -0.507220, 0.303113,
		0.563407, 0.814932, -0.135859,
		38.112816, 37.658745, 21.160231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246460, 37.096958, 21.815369>,  <37.718430, 37.088291, 21.255333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246460, 37.096958, 21.815369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211250, 37.467770, 21.669559>,  <38.190125, 37.690254, 21.582075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211250, 37.467770, 21.669559>,  <38.246460, 37.096958, 21.815369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211250, 37.467770, 21.669559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198402, 0.342294, 0.918407,
		0.976160, 0.153160, 0.153795,
		-0.088020, 0.927026, -0.364521,
		38.184845, 37.745876, 21.560204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679882, 37.494846, 22.130604>,  <38.246460, 37.096958, 21.815369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679882, 37.494846, 22.130604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419750, 37.759819, 21.981873>,  <38.263672, 37.918804, 21.892633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419750, 37.759819, 21.981873>,  <38.679882, 37.494846, 22.130604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419750, 37.759819, 21.981873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250196, 0.275381, 0.928206,
		0.717269, 0.696668, -0.013350,
		-0.650328, 0.662434, -0.371826,
		38.224651, 37.958549, 21.870325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818947, 38.035942, 22.547041>,  <38.679882, 37.494846, 22.130604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818947, 38.035942, 22.547041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444572, 38.114761, 22.430285>,  <38.219948, 38.162052, 22.360231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444572, 38.114761, 22.430285>,  <38.818947, 38.035942, 22.547041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444572, 38.114761, 22.430285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153539, 0.517601, 0.841734,
		0.316942, 0.832624, -0.454186,
		-0.935935, 0.197045, -0.291889,
		38.163792, 38.173874, 22.342718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718349, 38.731503, 22.554098>,  <38.818947, 38.035942, 22.547041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718349, 38.731503, 22.554098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346413, 38.586483, 22.579271>,  <38.123253, 38.499470, 22.594376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346413, 38.586483, 22.579271>,  <38.718349, 38.731503, 22.554098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346413, 38.586483, 22.579271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162898, 0.558926, 0.813060,
		-0.329950, 0.745762, -0.578768,
		-0.929837, -0.362549, 0.062934,
		38.067463, 38.477718, 22.598152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305515, 39.268845, 22.457203>,  <38.718349, 38.731503, 22.554098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305515, 39.268845, 22.457203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980366, 39.075245, 22.586802>,  <37.785275, 38.959084, 22.664560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980366, 39.075245, 22.586802>,  <38.305515, 39.268845, 22.457203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980366, 39.075245, 22.586802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071758, 0.635264, 0.768955,
		-0.577997, 0.601816, -0.551122,
		-0.812878, -0.484001, 0.323995,
		37.736504, 38.930046, 22.684000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721085, 39.811703, 22.596758>,  <38.305515, 39.268845, 22.457203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721085, 39.811703, 22.596758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684364, 39.476551, 22.811993>,  <37.662331, 39.275459, 22.941133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684364, 39.476551, 22.811993>,  <37.721085, 39.811703, 22.596758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684364, 39.476551, 22.811993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058991, 0.543997, 0.837011,
		-0.994028, 0.045097, -0.099367,
		-0.091802, -0.837874, 0.538088,
		37.656822, 39.225189, 22.973419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462479, 40.134998, 23.099379>,  <37.721085, 39.811703, 22.596758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462479, 40.134998, 23.099379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509735, 39.764095, 23.241495>,  <37.538090, 39.541553, 23.326765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509735, 39.764095, 23.241495>,  <37.462479, 40.134998, 23.099379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509735, 39.764095, 23.241495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009451, 0.358831, 0.933355,
		-0.992951, -0.106914, 0.051157,
		0.118145, -0.927260, 0.355291,
		37.545177, 39.485916, 23.348082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914799, 40.008553, 23.641777>,  <37.462479, 40.134998, 23.099379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914799, 40.008553, 23.641777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211948, 39.748135, 23.704107>,  <37.390236, 39.591885, 23.741505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211948, 39.748135, 23.704107>,  <36.914799, 40.008553, 23.641777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211948, 39.748135, 23.704107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131280, 0.369931, 0.919737,
		-0.656437, -0.662789, 0.360281,
		0.742871, -0.651047, 0.155826,
		37.434811, 39.552822, 23.750854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707920, 39.525177, 24.131786>,  <36.914799, 40.008553, 23.641777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707920, 39.525177, 24.131786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107059, 39.549927, 24.123131>,  <37.346542, 39.564777, 24.117937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107059, 39.549927, 24.123131>,  <36.707920, 39.525177, 24.131786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107059, 39.549927, 24.123131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004059, 0.387829, 0.921722,
		0.065420, -0.919652, 0.387246,
		0.997849, 0.061871, -0.021639,
		37.406414, 39.568489, 24.116640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985210, 39.430126, 24.779667>,  <36.707920, 39.525177, 24.131786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985210, 39.430126, 24.779667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282215, 39.626564, 24.597456>,  <37.460419, 39.744427, 24.488129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282215, 39.626564, 24.597456>,  <36.985210, 39.430126, 24.779667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282215, 39.626564, 24.597456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269044, 0.404138, 0.874236,
		0.613430, -0.771685, 0.167949,
		0.742509, 0.491096, -0.455527,
		37.504967, 39.773891, 24.460798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540138, 39.347462, 25.299658>,  <36.985210, 39.430126, 24.779667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540138, 39.347462, 25.299658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638691, 39.641472, 25.046980>,  <37.697823, 39.817879, 24.895372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638691, 39.641472, 25.046980>,  <37.540138, 39.347462, 25.299658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638691, 39.641472, 25.046980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418200, 0.507358, 0.753457,
		0.874303, -0.449812, -0.182384,
		0.246380, 0.735022, -0.631696,
		37.712605, 39.861977, 24.857471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207310, 39.583160, 25.557152>,  <37.540138, 39.347462, 25.299658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207310, 39.583160, 25.557152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078079, 39.870647, 25.310877>,  <38.000542, 40.043140, 25.163113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078079, 39.870647, 25.310877>,  <38.207310, 39.583160, 25.557152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078079, 39.870647, 25.310877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460689, 0.687728, 0.561066,
		0.826671, -0.102370, -0.553296,
		-0.323081, 0.718714, -0.615685,
		37.981155, 40.086262, 25.126171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833641, 39.993813, 25.410406>,  <38.207310, 39.583160, 25.557152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833641, 39.993813, 25.410406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506878, 40.217815, 25.355198>,  <38.310818, 40.352219, 25.322073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506878, 40.217815, 25.355198>,  <38.833641, 39.993813, 25.410406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506878, 40.217815, 25.355198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418972, 0.740639, 0.525277,
		0.396382, 0.371277, -0.839663,
		-0.816911, 0.560006, -0.138021,
		38.261806, 40.385818, 25.313791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103745, 40.641819, 25.538013>,  <38.833641, 39.993813, 25.410406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103745, 40.641819, 25.538013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722160, 40.757439, 25.505997>,  <38.493210, 40.826809, 25.486786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722160, 40.757439, 25.505997>,  <39.103745, 40.641819, 25.538013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722160, 40.757439, 25.505997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170678, 0.742632, 0.647585,
		0.246624, 0.604111, -0.757778,
		-0.953963, 0.289046, -0.080042,
		38.435970, 40.844151, 25.481983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054886, 41.369591, 25.475073>,  <39.103745, 40.641819, 25.538013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054886, 41.369591, 25.475073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708584, 41.236881, 25.624947>,  <38.500801, 41.157257, 25.714870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708584, 41.236881, 25.624947>,  <39.054886, 41.369591, 25.475073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708584, 41.236881, 25.624947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102927, 0.614630, 0.782071,
		-0.489764, 0.715650, -0.497973,
		-0.865758, -0.331775, 0.374683,
		38.448856, 41.137348, 25.737352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751087, 42.007599, 25.697275>,  <39.054886, 41.369591, 25.475073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751087, 42.007599, 25.697275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594330, 41.691555, 25.885807>,  <38.500275, 41.501930, 25.998926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594330, 41.691555, 25.885807>,  <38.751087, 42.007599, 25.697275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594330, 41.691555, 25.885807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285967, 0.382320, 0.878666,
		-0.874439, 0.479128, 0.076115,
		-0.391893, -0.790106, 0.471330,
		38.476761, 41.454525, 26.027206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490665, 42.776760, 25.892338>,  <38.751087, 42.007599, 25.697275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490665, 42.776760, 25.892338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736877, 43.075306, 25.993586>,  <38.884605, 43.254433, 26.054335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736877, 43.075306, 25.993586>,  <38.490665, 42.776760, 25.892338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736877, 43.075306, 25.993586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043918, 0.288188, -0.956566,
		-0.786889, 0.599912, 0.144610,
		0.615530, 0.746360, 0.253119,
		38.921535, 43.299213, 26.069521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218861, 43.390934, 25.610638>,  <38.490665, 42.776760, 25.892338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218861, 43.390934, 25.610638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615726, 43.430149, 25.641600>,  <38.853848, 43.453678, 25.660177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615726, 43.430149, 25.641600>,  <38.218861, 43.390934, 25.610638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615726, 43.430149, 25.641600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076464, 0.013313, -0.996983,
		-0.098775, 0.995093, 0.005712,
		0.992168, 0.098040, 0.077404,
		38.913376, 43.459560, 25.664822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377487, 43.938324, 25.161444>,  <38.218861, 43.390934, 25.610638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377487, 43.938324, 25.161444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738186, 43.784317, 25.240042>,  <38.954605, 43.691914, 25.287201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738186, 43.784317, 25.240042>,  <38.377487, 43.938324, 25.161444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738186, 43.784317, 25.240042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191962, -0.050605, -0.980097,
		0.387297, 0.921521, 0.028276,
		0.901749, -0.385017, 0.196496,
		39.008709, 43.668812, 25.298990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875538, 44.349266, 24.747732>,  <38.377487, 43.938324, 25.161444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875538, 44.349266, 24.747732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023479, 43.987770, 24.833958>,  <39.112244, 43.770874, 24.885693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023479, 43.987770, 24.833958>,  <38.875538, 44.349266, 24.747732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023479, 43.987770, 24.833958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064816, -0.256551, -0.964355,
		0.926826, 0.342700, -0.153463,
		0.369855, -0.903736, 0.215566,
		39.134438, 43.716648, 24.898628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358299, 44.260227, 24.215466>,  <38.875538, 44.349266, 24.747732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358299, 44.260227, 24.215466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355408, 43.889645, 24.365995>,  <39.353672, 43.667294, 24.456314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355408, 43.889645, 24.365995>,  <39.358299, 44.260227, 24.215466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355408, 43.889645, 24.365995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318148, -0.358912, -0.877476,
		0.948014, 0.113380, 0.297347,
		-0.007233, -0.926460, 0.376325,
		39.353237, 43.611706, 24.478893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992802, 43.836433, 24.051342>,  <39.358299, 44.260227, 24.215466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992802, 43.836433, 24.051342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.720150, 43.552715, 24.123217>,  <39.556561, 43.382484, 24.166342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.720150, 43.552715, 24.123217>,  <39.992802, 43.836433, 24.051342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720150, 43.552715, 24.123217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290045, -0.487378, -0.823612,
		0.671760, -0.509276, 0.537937,
		-0.681625, -0.709295, 0.179688,
		39.515663, 43.339928, 24.177124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264385, 43.257797, 23.800156>,  <39.992802, 43.836433, 24.051342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264385, 43.257797, 23.800156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.879005, 43.151440, 23.813246>,  <39.647778, 43.087624, 23.821100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.879005, 43.151440, 23.813246>,  <40.264385, 43.257797, 23.800156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879005, 43.151440, 23.813246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111702, -0.509737, -0.853048,
		0.243504, -0.818210, 0.520805,
		-0.963446, -0.265895, 0.032727,
		39.589973, 43.071671, 23.823063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264076, 42.646187, 23.583546>,  <40.264385, 43.257797, 23.800156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264076, 42.646187, 23.583546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874477, 42.724350, 23.537672>,  <39.640720, 42.771248, 23.510147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874477, 42.724350, 23.537672>,  <40.264076, 42.646187, 23.583546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874477, 42.724350, 23.537672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000270, -0.505173, -0.863018,
		-0.226573, -0.840606, 0.491983,
		-0.973994, 0.195403, -0.114686,
		39.582279, 42.782970, 23.503265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926365, 41.945442, 23.487324>,  <40.264076, 42.646187, 23.583546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926365, 41.945442, 23.487324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.690296, 42.241863, 23.359240>,  <39.548653, 42.419716, 23.282389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.690296, 42.241863, 23.359240>,  <39.926365, 41.945442, 23.487324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690296, 42.241863, 23.359240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280214, -0.560045, -0.779635,
		-0.757082, -0.370394, 0.538178,
		-0.590176, 0.741052, -0.320210,
		39.513245, 42.464180, 23.263176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322582, 41.589073, 23.266476>,  <39.926365, 41.945442, 23.487324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322582, 41.589073, 23.266476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333229, 41.955902, 23.107342>,  <39.339619, 42.175999, 23.011862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333229, 41.955902, 23.107342>,  <39.322582, 41.589073, 23.266476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333229, 41.955902, 23.107342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335481, -0.366702, -0.867745,
		-0.941671, 0.156565, 0.297899,
		0.026618, 0.917070, -0.397837,
		39.341213, 42.231022, 22.987991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736725, 41.595051, 22.906315>,  <39.322582, 41.589073, 23.266476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736725, 41.595051, 22.906315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978096, 41.873817, 22.751303>,  <39.122921, 42.041077, 22.658295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978096, 41.873817, 22.751303>,  <38.736725, 41.595051, 22.906315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978096, 41.873817, 22.751303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162147, -0.368593, -0.915340,
		-0.780756, 0.615181, -0.109417,
		0.603431, 0.696916, -0.387531,
		39.159126, 42.082893, 22.635044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318844, 41.918339, 22.338415>,  <38.736725, 41.595051, 22.906315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318844, 41.918339, 22.338415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709255, 41.974483, 22.271883>,  <38.943501, 42.008171, 22.231964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709255, 41.974483, 22.271883>,  <38.318844, 41.918339, 22.338415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709255, 41.974483, 22.271883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086326, -0.451876, -0.887894,
		-0.199789, 0.880969, -0.428927,
		0.976029, 0.140364, -0.166330,
		39.002064, 42.016594, 22.221985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408733, 42.264385, 21.658777>,  <38.318844, 41.918339, 22.338415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408733, 42.264385, 21.658777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756989, 42.085529, 21.740803>,  <38.965942, 41.978214, 21.790018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756989, 42.085529, 21.740803>,  <38.408733, 42.264385, 21.658777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756989, 42.085529, 21.740803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030729, -0.465487, -0.884521,
		0.490962, 0.763797, -0.419012,
		0.870639, -0.447142, 0.205066,
		39.018181, 41.951385, 21.802322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697346, 42.368370, 20.990376>,  <38.408733, 42.264385, 21.658777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697346, 42.368370, 20.990376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913807, 42.100231, 21.193466>,  <39.043686, 41.939350, 21.315321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913807, 42.100231, 21.193466>,  <38.697346, 42.368370, 20.990376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913807, 42.100231, 21.193466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038934, -0.583156, -0.811426,
		0.840019, 0.458877, -0.289481,
		0.541158, -0.670343, 0.507729,
		39.076153, 41.899128, 21.345785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155357, 42.052464, 20.460373>,  <38.697346, 42.368370, 20.990376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155357, 42.052464, 20.460373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202431, 41.813271, 20.777502>,  <39.230675, 41.669754, 20.967779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202431, 41.813271, 20.777502>,  <39.155357, 42.052464, 20.460373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202431, 41.813271, 20.777502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148270, -0.778842, -0.609444,
		0.981919, 0.189276, -0.002998,
		0.117688, -0.597980, 0.792824,
		39.237736, 41.633877, 21.015348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817120, 41.731251, 20.457460>,  <39.155357, 42.052464, 20.460373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817120, 41.731251, 20.457460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.543076, 41.510368, 20.647491>,  <39.378651, 41.377838, 20.761509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.543076, 41.510368, 20.647491>,  <39.817120, 41.731251, 20.457460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543076, 41.510368, 20.647491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090684, -0.711763, -0.696541,
		0.722775, -0.434124, 0.537710,
		-0.685108, -0.552204, 0.475077,
		39.337543, 41.344707, 20.790014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141888, 41.132332, 20.649403>,  <39.817120, 41.731251, 20.457460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141888, 41.132332, 20.649403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752232, 41.044704, 20.627302>,  <39.518436, 40.992130, 20.614042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752232, 41.044704, 20.627302>,  <40.141888, 41.132332, 20.649403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752232, 41.044704, 20.627302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203902, -0.747179, -0.632572,
		0.097295, -0.627482, 0.772528,
		-0.974144, -0.219066, -0.055249,
		39.459988, 40.978985, 20.610727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180183, 40.393227, 20.706587>,  <40.141888, 41.132332, 20.649403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180183, 40.393227, 20.706587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835182, 40.510597, 20.541664>,  <39.628181, 40.581020, 20.442711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835182, 40.510597, 20.541664>,  <40.180183, 40.393227, 20.706587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835182, 40.510597, 20.541664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113391, -0.681970, -0.722537,
		-0.493192, -0.669939, 0.554927,
		-0.862499, 0.293426, -0.412307,
		39.576431, 40.598625, 20.417973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.910397, 39.747684, 20.437567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660839, 40.007385, 20.263569>,  <39.511105, 40.163208, 20.159170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660839, 40.007385, 20.263569>,  <39.910397, 39.747684, 20.437567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660839, 40.007385, 20.263569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102397, -0.619723, -0.778112,
		-0.774769, -0.440919, 0.453125,
		-0.623897, 0.649256, -0.434994,
		39.473671, 40.202164, 20.133070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216930, 39.394901, 20.151760>,  <39.910397, 39.747684, 20.437567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216930, 39.394901, 20.151760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.297806, 39.724049, 19.939346>,  <39.346333, 39.921539, 19.811897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.297806, 39.724049, 19.939346>,  <39.216930, 39.394901, 20.151760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297806, 39.724049, 19.939346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014125, -0.539729, -0.841720,
		-0.979244, 0.177689, -0.097506,
		0.202191, 0.822872, -0.531037,
		39.358463, 39.970909, 19.780035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738697, 39.349125, 19.571491>,  <39.216930, 39.394901, 20.151760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738697, 39.349125, 19.571491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984844, 39.641106, 19.452496>,  <39.132530, 39.816292, 19.381098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984844, 39.641106, 19.452496>,  <38.738697, 39.349125, 19.571491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984844, 39.641106, 19.452496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023055, -0.393917, -0.918857,
		-0.787905, 0.558574, -0.259232,
		0.615365, 0.729948, -0.297491,
		39.169453, 39.860088, 19.363249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503807, 39.570061, 18.913561>,  <38.738697, 39.349125, 19.571491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503807, 39.570061, 18.913561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881153, 39.702579, 18.920574>,  <39.107559, 39.782093, 18.924782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881153, 39.702579, 18.920574>,  <38.503807, 39.570061, 18.913561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881153, 39.702579, 18.920574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131279, -0.324227, -0.936826,
		-0.304686, 0.886068, -0.349356,
		0.943362, 0.331301, 0.017534,
		39.164162, 39.801971, 18.925835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552311, 39.797596, 18.244379>,  <38.503807, 39.570061, 18.913561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552311, 39.797596, 18.244379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924164, 39.736485, 18.378513>,  <39.147274, 39.699818, 18.458994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924164, 39.736485, 18.378513>,  <38.552311, 39.797596, 18.244379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924164, 39.736485, 18.378513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308720, -0.173981, -0.935106,
		0.201206, 0.972826, -0.114572,
		0.929628, -0.152778, 0.335337,
		39.203053, 39.690651, 18.479115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998497, 40.133007, 17.654799>,  <38.552311, 39.797596, 18.244379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998497, 40.133007, 17.654799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242950, 39.902592, 17.871939>,  <39.389622, 39.764343, 18.002222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242950, 39.902592, 17.871939>,  <38.998497, 40.133007, 17.654799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242950, 39.902592, 17.871939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530420, -0.211007, -0.821055,
		0.587507, 0.789716, 0.176590,
		0.611138, -0.576042, 0.542849,
		39.426292, 39.729778, 18.034794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645870, 40.261181, 17.480835>,  <38.998497, 40.133007, 17.654799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645870, 40.261181, 17.480835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671967, 39.896477, 17.643036>,  <39.687626, 39.677654, 17.740356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671967, 39.896477, 17.643036>,  <39.645870, 40.261181, 17.480835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671967, 39.896477, 17.643036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484852, -0.326208, -0.811484,
		0.872159, 0.249553, 0.420787,
		0.065244, -0.911763, 0.405502,
		39.691540, 39.622948, 17.764687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272156, 39.983047, 17.352842>,  <39.645870, 40.261181, 17.480835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272156, 39.983047, 17.352842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059135, 39.655895, 17.439987>,  <39.931324, 39.459606, 17.492273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059135, 39.655895, 17.439987>,  <40.272156, 39.983047, 17.352842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059135, 39.655895, 17.439987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240155, -0.392833, -0.887698,
		0.811612, -0.420424, 0.405621,
		-0.532551, -0.817879, 0.217862,
		39.899368, 39.410530, 17.505346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765633, 39.370407, 17.200590>,  <40.272156, 39.983047, 17.352842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765633, 39.370407, 17.200590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374733, 39.285900, 17.193071>,  <40.140194, 39.235195, 17.188560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374733, 39.285900, 17.193071>,  <40.765633, 39.370407, 17.200590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374733, 39.285900, 17.193071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072838, -0.251047, -0.965230,
		0.199206, -0.944638, 0.260724,
		-0.977247, -0.211270, -0.018796,
		40.081558, 39.222519, 17.187433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723721, 38.654232, 16.901470>,  <40.765633, 39.370407, 17.200590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723721, 38.654232, 16.901470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.382206, 38.856426, 16.851624>,  <40.177296, 38.977741, 16.821716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.382206, 38.856426, 16.851624>,  <40.723721, 38.654232, 16.901470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382206, 38.856426, 16.851624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065094, -0.133837, -0.988863,
		-0.516533, -0.852393, 0.081365,
		-0.853789, 0.505485, -0.124617,
		40.126068, 39.008072, 16.814238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269653, 38.208038, 16.481667>,  <40.723721, 38.654232, 16.901470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269653, 38.208038, 16.481667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045227, 38.536747, 16.441870>,  <39.910572, 38.733971, 16.417992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045227, 38.536747, 16.441870>,  <40.269653, 38.208038, 16.481667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045227, 38.536747, 16.441870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003181, -0.122331, -0.992484,
		-0.827764, -0.556534, 0.071249,
		-0.561067, 0.821769, -0.099491,
		39.876907, 38.783279, 16.412022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630131, 38.091003, 16.148811>,  <40.269653, 38.208038, 16.481667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630131, 38.091003, 16.148811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669922, 38.478439, 16.057657>,  <39.693798, 38.710903, 16.002966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669922, 38.478439, 16.057657>,  <39.630131, 38.091003, 16.148811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669922, 38.478439, 16.057657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146120, -0.212317, -0.966215,
		-0.984252, 0.129417, 0.120409,
		0.099480, 0.968593, -0.227884,
		39.699764, 38.769016, 15.989292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063148, 38.262711, 15.755550>,  <39.630131, 38.091003, 16.148811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063148, 38.262711, 15.755550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317493, 38.557045, 15.662405>,  <39.470100, 38.733646, 15.606518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317493, 38.557045, 15.662405>,  <39.063148, 38.262711, 15.755550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317493, 38.557045, 15.662405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195495, -0.138318, -0.970901,
		-0.746631, 0.662886, 0.055900,
		0.635865, 0.735833, -0.232863,
		39.508251, 38.777794, 15.592546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696232, 38.708748, 15.352602>,  <39.063148, 38.262711, 15.755550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696232, 38.708748, 15.352602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083702, 38.773613, 15.277369>,  <39.316185, 38.812531, 15.232228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083702, 38.773613, 15.277369>,  <38.696232, 38.708748, 15.352602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083702, 38.773613, 15.277369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202336, 0.076243, -0.976344,
		-0.143983, 0.983815, 0.106665,
		0.968674, 0.162159, -0.188083,
		39.374306, 38.822262, 15.220943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656136, 39.185074, 14.786682>,  <38.696232, 38.708748, 15.352602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656136, 39.185074, 14.786682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029758, 39.042416, 14.779192>,  <39.253933, 38.956821, 14.774697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029758, 39.042416, 14.779192>,  <38.656136, 39.185074, 14.786682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029758, 39.042416, 14.779192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044384, 0.167951, -0.984796,
		0.354365, 0.919021, 0.172704,
		0.934053, -0.356642, -0.018726,
		39.309975, 38.935425, 14.773574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895847, 39.508862, 14.232085>,  <38.656136, 39.185074, 14.786682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895847, 39.508862, 14.232085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169682, 39.227955, 14.310229>,  <39.333981, 39.059410, 14.357116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169682, 39.227955, 14.310229>,  <38.895847, 39.508862, 14.232085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169682, 39.227955, 14.310229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152634, -0.123965, -0.980477,
		0.712776, 0.701036, 0.022326,
		0.684582, -0.702269, 0.195361,
		39.375057, 39.017273, 14.368837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399071, 39.669891, 13.780062>,  <38.895847, 39.508862, 14.232085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399071, 39.669891, 13.780062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479229, 39.286777, 13.862514>,  <39.527325, 39.056908, 13.911986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479229, 39.286777, 13.862514>,  <39.399071, 39.669891, 13.780062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479229, 39.286777, 13.862514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037967, -0.202650, -0.978515,
		0.978979, 0.203917, -0.004246,
		0.200396, -0.957784, 0.206133,
		39.539349, 38.999443, 13.924355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042774, 39.348145, 13.476491>,  <39.399071, 39.669891, 13.780062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042774, 39.348145, 13.476491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779045, 39.053532, 13.536898>,  <39.620808, 38.876762, 13.573141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779045, 39.053532, 13.536898>,  <40.042774, 39.348145, 13.476491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779045, 39.053532, 13.536898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042489, -0.164035, -0.985539,
		0.750656, -0.656208, 0.076858,
		-0.659325, -0.736535, 0.151016,
		39.581249, 38.832573, 13.582203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249859, 38.860924, 12.921066>,  <40.042774, 39.348145, 13.476491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249859, 38.860924, 12.921066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888569, 38.737221, 13.040092>,  <39.671795, 38.662998, 13.111506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888569, 38.737221, 13.040092>,  <40.249859, 38.860924, 12.921066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888569, 38.737221, 13.040092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177370, -0.362373, -0.915001,
		0.390796, -0.879232, 0.272453,
		-0.903227, -0.309254, 0.297563,
		39.617599, 38.644444, 13.129360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168652, 38.226025, 12.546330>,  <40.249859, 38.860924, 12.921066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168652, 38.226025, 12.546330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800743, 38.365955, 12.617476>,  <39.579998, 38.449913, 12.660164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800743, 38.365955, 12.617476>,  <40.168652, 38.226025, 12.546330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800743, 38.365955, 12.617476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246266, -0.161616, -0.955632,
		-0.305558, -0.922769, 0.234801,
		-0.919776, 0.349825, 0.177864,
		39.524811, 38.470901, 12.670835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829239, 37.823166, 12.079403>,  <40.168652, 38.226025, 12.546330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829239, 37.823166, 12.079403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529469, 38.065777, 12.185602>,  <39.349606, 38.211342, 12.249322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529469, 38.065777, 12.185602>,  <39.829239, 37.823166, 12.079403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529469, 38.065777, 12.185602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474541, -0.212420, -0.854218,
		-0.461711, -0.766159, 0.447015,
		-0.749422, 0.606529, 0.265497,
		39.304642, 38.247734, 12.265251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159248, 37.403294, 11.843745>,  <39.829239, 37.823166, 12.079403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159248, 37.403294, 11.843745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095558, 37.797688, 11.863660>,  <39.057343, 38.034325, 11.875608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095558, 37.797688, 11.863660>,  <39.159248, 37.403294, 11.843745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095558, 37.797688, 11.863660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441110, -0.025938, -0.897078,
		-0.883214, -0.164803, 0.439058,
		-0.159230, 0.985985, 0.049787,
		39.047791, 38.093483, 11.878596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426678, 37.471546, 11.643954>,  <39.159248, 37.403294, 11.843745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426678, 37.471546, 11.643954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.558674, 37.847698, 11.611000>,  <38.637871, 38.073391, 11.591228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.558674, 37.847698, 11.611000>,  <38.426678, 37.471546, 11.643954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558674, 37.847698, 11.611000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534691, 0.114272, -0.837286,
		-0.777955, 0.320345, 0.540523,
		0.329987, 0.940383, -0.082387,
		38.657669, 38.129814, 11.586284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803509, 37.391026, 12.017907>,  <38.426678, 37.471546, 11.643954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803509, 37.391026, 12.017907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.053936, 37.688148, 12.112796>,  <38.204193, 37.866421, 12.169729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.053936, 37.688148, 12.112796>,  <37.803509, 37.391026, 12.017907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053936, 37.688148, 12.112796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391814, 0.036647, 0.919314,
		0.674181, -0.668500, 0.313987,
		0.626068, 0.742809, 0.237221,
		38.241756, 37.910992, 12.183962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429295, 36.872883, 11.488311>,  <37.803509, 37.391026, 12.017907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429295, 36.872883, 11.488311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261806, 36.512249, 11.444831>,  <37.161312, 36.295868, 11.418743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261806, 36.512249, 11.444831>,  <37.429295, 36.872883, 11.488311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261806, 36.512249, 11.444831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083884, -0.080787, 0.993195,
		-0.904233, 0.424988, -0.041801,
		-0.418720, -0.901586, -0.108700,
		37.136192, 36.241772, 11.412221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753521, 36.936920, 11.704568>,  <37.429295, 36.872883, 11.488311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753521, 36.936920, 11.704568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898983, 36.565830, 11.738217>,  <36.986259, 36.343174, 11.758408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898983, 36.565830, 11.738217>,  <36.753521, 36.936920, 11.704568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898983, 36.565830, 11.738217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203658, 0.167302, 0.964642,
		-0.909000, -0.333662, 0.249779,
		0.363652, -0.927728, 0.084125,
		37.008080, 36.287510, 11.763454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409260, 36.634918, 12.314634>,  <36.753521, 36.936920, 11.704568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409260, 36.634918, 12.314634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757896, 36.442215, 12.278312>,  <36.967079, 36.326595, 12.256518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757896, 36.442215, 12.278312>,  <36.409260, 36.634918, 12.314634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757896, 36.442215, 12.278312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240595, 0.258963, 0.935442,
		-0.427138, -0.837169, 0.341617,
		0.871589, -0.481754, -0.090806,
		37.019375, 36.297688, 12.251070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425766, 36.208645, 12.883222>,  <36.409260, 36.634918, 12.314634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425766, 36.208645, 12.883222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810471, 36.224762, 12.774858>,  <37.041294, 36.234432, 12.709839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810471, 36.224762, 12.774858>,  <36.425766, 36.208645, 12.883222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810471, 36.224762, 12.774858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252292, 0.254667, 0.933538,
		0.106603, -0.966189, 0.234764,
		0.961761, 0.040289, -0.270910,
		37.098999, 36.236851, 12.693584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805969, 35.845409, 13.361011>,  <36.425766, 36.208645, 12.883222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805969, 35.845409, 13.361011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088356, 36.078690, 13.200267>,  <37.257790, 36.218658, 13.103821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088356, 36.078690, 13.200267>,  <36.805969, 35.845409, 13.361011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088356, 36.078690, 13.200267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400096, 0.139798, 0.905748,
		0.584411, -0.800209, -0.134643,
		0.705965, 0.583199, -0.401860,
		37.300144, 36.253651, 13.079709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442177, 35.604187, 13.686525>,  <36.805969, 35.845409, 13.361011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442177, 35.604187, 13.686525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514492, 35.965492, 13.530868>,  <37.557880, 36.182274, 13.437472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514492, 35.965492, 13.530868>,  <37.442177, 35.604187, 13.686525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514492, 35.965492, 13.530868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373156, 0.303087, 0.876866,
		0.909984, -0.303738, -0.282264,
		0.180787, 0.903262, -0.389145,
		37.568729, 36.236469, 13.414124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130505, 35.773750, 13.828772>,  <37.442177, 35.604187, 13.686525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130505, 35.773750, 13.828772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.966457, 36.136459, 13.789642>,  <37.868031, 36.354084, 13.766165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.966457, 36.136459, 13.789642>,  <38.130505, 35.773750, 13.828772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966457, 36.136459, 13.789642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456095, 0.296793, 0.838983,
		0.789799, 0.299464, -0.535293,
		-0.410116, 0.906772, -0.097823,
		37.843422, 36.408489, 13.760296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665073, 36.148842, 13.885361>,  <38.130505, 35.773750, 13.828772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665073, 36.148842, 13.885361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346119, 36.368885, 13.984601>,  <38.154747, 36.500912, 14.044146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346119, 36.368885, 13.984601>,  <38.665073, 36.148842, 13.885361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346119, 36.368885, 13.984601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493368, 0.357524, 0.792947,
		0.347501, 0.754694, -0.556490,
		-0.797390, 0.550104, 0.248102,
		38.106903, 36.533916, 14.059031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957207, 36.681316, 14.292504>,  <38.665073, 36.148842, 13.885361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957207, 36.681316, 14.292504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566578, 36.746120, 14.349156>,  <38.332199, 36.785004, 14.383147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566578, 36.746120, 14.349156>,  <38.957207, 36.681316, 14.292504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566578, 36.746120, 14.349156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202923, 0.474295, 0.856660,
		0.071614, 0.865331, -0.496059,
		-0.976572, 0.162010, 0.141629,
		38.273605, 36.794724, 14.391645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849960, 37.438293, 14.447568>,  <38.957207, 36.681316, 14.292504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849960, 37.438293, 14.447568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549305, 37.224674, 14.602402>,  <38.368912, 37.096504, 14.695302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549305, 37.224674, 14.602402>,  <38.849960, 37.438293, 14.447568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549305, 37.224674, 14.602402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076507, 0.512315, 0.855383,
		-0.655124, 0.672552, -0.344217,
		-0.751637, -0.534047, 0.387085,
		38.323814, 37.064461, 14.718528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393566, 37.931648, 14.855687>,  <38.849960, 37.438293, 14.447568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393566, 37.931648, 14.855687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297829, 37.574150, 15.007443>,  <38.240387, 37.359650, 15.098497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297829, 37.574150, 15.007443>,  <38.393566, 37.931648, 14.855687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297829, 37.574150, 15.007443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033962, 0.398215, 0.916663,
		-0.970341, 0.206511, -0.125663,
		-0.239342, -0.893744, 0.379391,
		38.226025, 37.306026, 15.121261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990681, 38.063663, 15.379628>,  <38.393566, 37.931648, 14.855687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990681, 38.063663, 15.379628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124908, 37.692417, 15.444119>,  <38.205444, 37.469669, 15.482814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124908, 37.692417, 15.444119>,  <37.990681, 38.063663, 15.379628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124908, 37.692417, 15.444119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134417, 0.216577, 0.966968,
		-0.932375, -0.302816, 0.197431,
		0.335572, -0.928115, 0.161227,
		38.225578, 37.413982, 15.492488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673267, 37.852573, 16.008932>,  <37.990681, 38.063663, 15.379628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673267, 37.852573, 16.008932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953339, 37.566990, 16.007273>,  <38.121380, 37.395641, 16.006277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953339, 37.566990, 16.007273>,  <37.673267, 37.852573, 16.008932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953339, 37.566990, 16.007273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001805, -0.004039, 0.999990,
		-0.713967, -0.700178, -0.001539,
		0.700177, -0.713957, -0.004148,
		38.163391, 37.352802, 16.006029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482025, 37.158386, 16.305252>,  <37.673267, 37.852573, 16.008932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482025, 37.158386, 16.305252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880535, 37.178585, 16.333195>,  <38.119640, 37.190704, 16.349960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880535, 37.178585, 16.333195>,  <37.482025, 37.158386, 16.305252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880535, 37.178585, 16.333195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061991, -0.143396, 0.987722,
		0.059897, -0.988376, -0.139732,
		0.996278, 0.050499, 0.069859,
		38.179417, 37.193733, 16.354153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617924, 36.702320, 16.723003>,  <37.482025, 37.158386, 16.305252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617924, 36.702320, 16.723003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945110, 36.932049, 16.736111>,  <38.141422, 37.069885, 16.743975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945110, 36.932049, 16.736111>,  <37.617924, 36.702320, 16.723003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945110, 36.932049, 16.736111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048831, 0.012564, 0.998728,
		0.573184, -0.818530, 0.038322,
		0.817970, 0.574327, 0.032768,
		38.190502, 37.104347, 16.745941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129013, 36.327850, 17.210712>,  <37.617924, 36.702320, 16.723003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129013, 36.327850, 17.210712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255657, 36.706902, 17.193956>,  <38.331642, 36.934334, 17.183903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255657, 36.706902, 17.193956>,  <38.129013, 36.327850, 17.210712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255657, 36.706902, 17.193956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133505, -0.000797, 0.991048,
		0.939114, -0.319366, -0.126766,
		0.316608, 0.947631, -0.041888,
		38.350639, 36.991192, 17.181391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702473, 36.342587, 17.522745>,  <38.129013, 36.327850, 17.210712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702473, 36.342587, 17.522745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593262, 36.726627, 17.546940>,  <38.527737, 36.957054, 17.561457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593262, 36.726627, 17.546940>,  <38.702473, 36.342587, 17.522745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593262, 36.726627, 17.546940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275399, 0.017761, 0.961166,
		0.921745, 0.279080, -0.269261,
		-0.273024, 0.960104, 0.060487,
		38.511353, 37.014660, 17.565086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328453, 36.575687, 17.857912>,  <38.702473, 36.342587, 17.522745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328453, 36.575687, 17.857912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.062454, 36.871796, 17.897444>,  <38.902855, 37.049461, 17.921162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.062454, 36.871796, 17.897444>,  <39.328453, 36.575687, 17.857912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062454, 36.871796, 17.897444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324655, 0.167366, 0.930907,
		0.672587, 0.651139, -0.351633,
		-0.665001, 0.740275, 0.098827,
		38.862953, 37.093880, 17.927092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692432, 37.039360, 18.317987>,  <39.328453, 36.575687, 17.857912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692432, 37.039360, 18.317987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302601, 37.122128, 18.352339>,  <39.068703, 37.171787, 18.372950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302601, 37.122128, 18.352339>,  <39.692432, 37.039360, 18.317987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302601, 37.122128, 18.352339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121626, 0.166763, 0.978467,
		0.188145, 0.964040, -0.187691,
		-0.974581, 0.206922, 0.085877,
		39.010227, 37.184204, 18.378101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597500, 37.707897, 18.676859>,  <39.692432, 37.039360, 18.317987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597500, 37.707897, 18.676859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242931, 37.527790, 18.719801>,  <39.030190, 37.419727, 18.745565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242931, 37.527790, 18.719801>,  <39.597500, 37.707897, 18.676859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242931, 37.527790, 18.719801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023283, 0.275004, 0.961161,
		-0.462299, 0.849491, -0.254252,
		-0.886418, -0.450264, 0.107356,
		38.977005, 37.392712, 18.752008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.279186, 42.154732, 22.046192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885368, 42.115784, 22.104425>,  <39.649078, 42.092415, 22.139366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885368, 42.115784, 22.104425>,  <40.279186, 42.154732, 22.046192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885368, 42.115784, 22.104425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023642, 0.749715, 0.661338,
		-0.173542, 0.654557, -0.735825,
		-0.984543, -0.097374, 0.145583,
		39.590004, 42.086571, 22.148100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037601, 42.887634, 22.105286>,  <40.279186, 42.154732, 22.046192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037601, 42.887634, 22.105286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.758099, 42.654675, 22.271442>,  <39.590397, 42.514900, 22.371138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.758099, 42.654675, 22.271442>,  <40.037601, 42.887634, 22.105286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758099, 42.654675, 22.271442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108545, 0.660273, 0.743141,
		-0.707078, 0.474184, -0.524585,
		-0.698755, -0.582400, 0.415394,
		39.548473, 42.479954, 22.396061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413635, 43.335960, 22.338381>,  <40.037601, 42.887634, 22.105286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413635, 43.335960, 22.338381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.388409, 42.989956, 22.537491>,  <39.373272, 42.782352, 22.656958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.388409, 42.989956, 22.537491>,  <39.413635, 43.335960, 22.338381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388409, 42.989956, 22.537491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078131, 0.501516, 0.861613,
		-0.994946, 0.015447, -0.099214,
		-0.063067, -0.865010, 0.497775,
		39.369488, 42.730453, 22.686823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813164, 43.404354, 22.772406>,  <39.413635, 43.335960, 22.338381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813164, 43.404354, 22.772406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035404, 43.109703, 22.926643>,  <39.168747, 42.932911, 23.019186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035404, 43.109703, 22.926643>,  <38.813164, 43.404354, 22.772406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035404, 43.109703, 22.926643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155883, 0.363250, 0.918558,
		-0.816705, -0.570460, 0.086994,
		0.555601, -0.736631, 0.385594,
		39.202084, 42.888714, 23.042322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344738, 42.914833, 23.198158>,  <38.813164, 43.404354, 22.772406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344738, 42.914833, 23.198158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724300, 42.885517, 23.320936>,  <38.952038, 42.867928, 23.394602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724300, 42.885517, 23.320936>,  <38.344738, 42.914833, 23.198158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724300, 42.885517, 23.320936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279677, 0.255214, 0.925552,
		-0.146173, -0.964103, 0.221674,
		0.948902, -0.073293, 0.306943,
		39.008972, 42.863529, 23.413019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292797, 42.715012, 23.869682>,  <38.344738, 42.914833, 23.198158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292797, 42.715012, 23.869682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670319, 42.845505, 23.848515>,  <38.896832, 42.923801, 23.835814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670319, 42.845505, 23.848515>,  <38.292797, 42.715012, 23.869682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670319, 42.845505, 23.848515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063298, 0.335585, 0.939881,
		0.324360, -0.883723, 0.337379,
		0.943814, 0.326215, -0.052912,
		38.953461, 42.943375, 23.832640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508671, 42.521854, 24.503330>,  <38.292797, 42.715012, 23.869682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508671, 42.521854, 24.503330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.807335, 42.760284, 24.385210>,  <38.986534, 42.903343, 24.314337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.807335, 42.760284, 24.385210>,  <38.508671, 42.521854, 24.503330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807335, 42.760284, 24.385210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061063, 0.380633, 0.922708,
		0.662402, -0.706977, 0.247804,
		0.746656, 0.596072, -0.295302,
		39.031330, 42.939106, 24.296619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098019, 42.407616, 24.813402>,  <38.508671, 42.521854, 24.503330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098019, 42.407616, 24.813402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163025, 42.789585, 24.714031>,  <39.202030, 43.018764, 24.654408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163025, 42.789585, 24.714031>,  <39.098019, 42.407616, 24.813402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163025, 42.789585, 24.714031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075430, 0.239016, 0.968082,
		0.983818, -0.176071, -0.033185,
		0.162519, 0.954919, -0.248429,
		39.211781, 43.076061, 24.639503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712849, 42.526085, 25.094765>,  <39.098019, 42.407616, 24.813402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712849, 42.526085, 25.094765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537270, 42.881927, 25.044306>,  <39.431923, 43.095432, 25.014030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537270, 42.881927, 25.044306>,  <39.712849, 42.526085, 25.094765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537270, 42.881927, 25.044306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114795, 0.194772, 0.974108,
		0.891147, 0.413105, -0.187619,
		-0.438952, 0.889611, -0.126148,
		39.405582, 43.148811, 25.006462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124504, 42.995670, 25.476332>,  <39.712849, 42.526085, 25.094765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124504, 42.995670, 25.476332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778107, 43.187443, 25.419485>,  <39.570267, 43.302505, 25.385378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778107, 43.187443, 25.419485>,  <40.124504, 42.995670, 25.476332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778107, 43.187443, 25.419485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006863, 0.295573, 0.955296,
		0.500001, 0.826309, -0.259256,
		-0.865998, 0.479428, -0.142115,
		39.518307, 43.331272, 25.376850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168652, 43.605515, 25.841978>,  <40.124504, 42.995670, 25.476332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168652, 43.605515, 25.841978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.780514, 43.523075, 25.791447>,  <39.547630, 43.473610, 25.761127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.780514, 43.523075, 25.791447>,  <40.168652, 43.605515, 25.841978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780514, 43.523075, 25.791447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167568, 0.196816, 0.966014,
		-0.174234, 0.958533, -0.225515,
		-0.970342, -0.206102, -0.126328,
		39.489410, 43.461243, 25.753548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744476, 44.254223, 26.044025>,  <40.168652, 43.605515, 25.841978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744476, 44.254223, 26.044025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499481, 43.941261, 26.089106>,  <39.352486, 43.753483, 26.116154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499481, 43.941261, 26.089106>,  <39.744476, 44.254223, 26.044025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499481, 43.941261, 26.089106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225851, 0.309835, 0.923577,
		-0.757531, 0.540224, -0.366477,
		-0.612486, -0.782407, 0.112700,
		39.315735, 43.706539, 26.122915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112171, 44.531487, 26.267815>,  <39.744476, 44.254223, 26.044025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112171, 44.531487, 26.267815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.169300, 44.159878, 26.404354>,  <39.203579, 43.936913, 26.486279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.169300, 44.159878, 26.404354>,  <39.112171, 44.531487, 26.267815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169300, 44.159878, 26.404354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323050, 0.282240, 0.903316,
		-0.935542, -0.239290, -0.259809,
		0.142826, -0.929021, 0.341351,
		39.212147, 43.881172, 26.506760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536392, 44.244740, 26.462620>,  <39.112171, 44.531487, 26.267815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536392, 44.244740, 26.462620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.828548, 44.058094, 26.662142>,  <39.003841, 43.946106, 26.781855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.828548, 44.058094, 26.662142>,  <38.536392, 44.244740, 26.462620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828548, 44.058094, 26.662142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449305, 0.221812, 0.865404,
		-0.514453, -0.856194, -0.047645,
		0.730386, -0.466617, 0.498804,
		39.047665, 43.918110, 26.811783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013840, 44.610462, 26.804916>,  <38.536392, 44.244740, 26.462620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013840, 44.610462, 26.804916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.707466, 44.867081, 26.788149>,  <37.523640, 45.021053, 26.778090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.707466, 44.867081, 26.788149>,  <38.013840, 44.610462, 26.804916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707466, 44.867081, 26.788149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069962, -0.147984, -0.986512,
		-0.639096, -0.752675, 0.158230,
		-0.765938, 0.641547, -0.041917,
		37.477684, 45.059544, 26.775574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491425, 44.257668, 26.443552>,  <38.013840, 44.610462, 26.804916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491425, 44.257668, 26.443552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.374001, 44.639999, 26.437702>,  <37.303547, 44.869400, 26.434193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.374001, 44.639999, 26.437702>,  <37.491425, 44.257668, 26.443552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374001, 44.639999, 26.437702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390696, -0.133928, -0.910725,
		-0.872457, -0.261635, 0.412754,
		-0.293557, 0.955830, -0.014626,
		37.285934, 44.926750, 26.433315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755424, 44.271549, 26.367910>,  <37.491425, 44.257668, 26.443552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755424, 44.271549, 26.367910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904781, 44.619377, 26.238646>,  <36.994396, 44.828072, 26.161087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904781, 44.619377, 26.238646>,  <36.755424, 44.271549, 26.367910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904781, 44.619377, 26.238646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323024, -0.204684, -0.923991,
		-0.869617, 0.449400, 0.204463,
		0.373392, 0.869565, -0.323164,
		37.016800, 44.880245, 26.141697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281467, 44.518711, 25.948526>,  <36.755424, 44.271549, 26.367910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281467, 44.518711, 25.948526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609028, 44.718975, 25.836279>,  <36.805565, 44.839134, 25.768930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609028, 44.718975, 25.836279>,  <36.281467, 44.518711, 25.948526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609028, 44.718975, 25.836279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270970, -0.093754, -0.958011,
		-0.505944, 0.860554, 0.058888,
		0.818899, 0.500657, -0.280619,
		36.854698, 44.869171, 25.752092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025337, 44.924938, 25.481457>,  <36.281467, 44.518711, 25.948526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025337, 44.924938, 25.481457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.421200, 44.895092, 25.432440>,  <36.658718, 44.877182, 25.403030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.421200, 44.895092, 25.432440>,  <36.025337, 44.924938, 25.481457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421200, 44.895092, 25.432440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135503, -0.205441, -0.969244,
		0.047148, 0.975821, -0.213426,
		0.989654, -0.074618, -0.122541,
		36.718098, 44.872707, 25.395678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107471, 45.400421, 24.958170>,  <36.025337, 44.924938, 25.481457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107471, 45.400421, 24.958170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445148, 45.186501, 24.943613>,  <36.647755, 45.058147, 24.934879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445148, 45.186501, 24.943613>,  <36.107471, 45.400421, 24.958170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445148, 45.186501, 24.943613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185858, -0.228350, -0.955674,
		0.502784, 0.813539, -0.292169,
		0.844195, -0.534800, -0.036391,
		36.698406, 45.026062, 24.932695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521622, 45.718632, 24.446138>,  <36.107471, 45.400421, 24.958170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521622, 45.718632, 24.446138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.633194, 45.340752, 24.515108>,  <36.700138, 45.114021, 24.556490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.633194, 45.340752, 24.515108>,  <36.521622, 45.718632, 24.446138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633194, 45.340752, 24.515108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098626, -0.206782, -0.973403,
		0.955233, 0.254509, -0.150851,
		0.278933, -0.944704, 0.172424,
		36.716873, 45.057339, 24.566835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042839, 45.659546, 23.924395>,  <36.521622, 45.718632, 24.446138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042839, 45.659546, 23.924395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.954227, 45.280487, 24.016386>,  <36.901062, 45.053051, 24.071581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.954227, 45.280487, 24.016386>,  <37.042839, 45.659546, 23.924395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954227, 45.280487, 24.016386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036696, -0.243773, -0.969138,
		0.974464, -0.206251, 0.088777,
		-0.221527, -0.947648, 0.229979,
		36.887768, 44.996193, 24.085381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534050, 45.181141, 23.594454>,  <37.042839, 45.659546, 23.924395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534050, 45.181141, 23.594454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.202759, 44.965092, 23.654203>,  <37.003986, 44.835464, 23.690054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.202759, 44.965092, 23.654203>,  <37.534050, 45.181141, 23.594454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202759, 44.965092, 23.654203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029932, -0.308806, -0.950654,
		0.559596, -0.782884, 0.271928,
		-0.828225, -0.540121, 0.149373,
		36.954292, 44.803055, 23.699015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644360, 44.470226, 23.296209>,  <37.534050, 45.181141, 23.594454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644360, 44.470226, 23.296209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248466, 44.511143, 23.336136>,  <37.010929, 44.535694, 23.360092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248466, 44.511143, 23.336136>,  <37.644360, 44.470226, 23.296209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248466, 44.511143, 23.336136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135491, -0.449240, -0.883077,
		-0.045490, -0.887536, 0.458488,
		-0.989734, 0.102292, 0.099817,
		36.951546, 44.541832, 23.366081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238205, 43.820053, 23.263102>,  <37.644360, 44.470226, 23.296209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238205, 43.820053, 23.263102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.947395, 44.076668, 23.165234>,  <36.772911, 44.230637, 23.106512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.947395, 44.076668, 23.165234>,  <37.238205, 43.820053, 23.263102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947395, 44.076668, 23.165234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232120, -0.565011, -0.791759,
		-0.646188, -0.518833, 0.559690,
		-0.727022, 0.641540, -0.244672,
		36.729290, 44.269131, 23.091833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585155, 43.490803, 23.089287>,  <37.238205, 43.820053, 23.263102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585155, 43.490803, 23.089287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528816, 43.846676, 22.915562>,  <36.495014, 44.060200, 22.811327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528816, 43.846676, 22.915562>,  <36.585155, 43.490803, 23.089287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528816, 43.846676, 22.915562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324550, -0.455940, -0.828726,
		-0.935323, 0.024232, 0.352965,
		-0.140849, 0.889681, -0.434315,
		36.486561, 44.113579, 22.785267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114895, 43.265499, 22.727686>,  <36.585155, 43.490803, 23.089287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114895, 43.265499, 22.727686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180538, 43.636105, 22.592247>,  <36.219925, 43.858467, 22.510984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180538, 43.636105, 22.592247>,  <36.114895, 43.265499, 22.727686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180538, 43.636105, 22.592247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263193, -0.289679, -0.920226,
		-0.950682, 0.240137, 0.196311,
		0.164113, 0.926510, -0.338595,
		36.229771, 43.914059, 22.490669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446911, 43.607811, 22.391685>,  <36.114895, 43.265499, 22.727686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446911, 43.607811, 22.391685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808651, 43.704475, 22.250967>,  <36.025696, 43.762474, 22.166536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808651, 43.704475, 22.250967>,  <35.446911, 43.607811, 22.391685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808651, 43.704475, 22.250967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249828, -0.368565, -0.895402,
		-0.346042, 0.897641, -0.272937,
		0.904346, 0.241660, -0.351795,
		36.079956, 43.776974, 22.145428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896191, 43.199875, 22.262770>,  <35.446911, 43.607811, 22.391685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896191, 43.199875, 22.262770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554771, 43.014244, 22.168037>,  <34.349922, 42.902866, 22.111198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554771, 43.014244, 22.168037>,  <34.896191, 43.199875, 22.262770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554771, 43.014244, 22.168037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256914, -0.020559, 0.966215,
		-0.453270, 0.885555, -0.101681,
		-0.853546, -0.464080, -0.236830,
		34.298706, 42.875019, 22.096989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252506, 43.720024, 22.383507>,  <34.896191, 43.199875, 22.262770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252506, 43.720024, 22.383507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205109, 43.323734, 22.410141>,  <34.176670, 43.085960, 22.426123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205109, 43.323734, 22.410141>,  <34.252506, 43.720024, 22.383507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205109, 43.323734, 22.410141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031374, 0.063291, 0.997502,
		-0.992459, 0.120285, 0.023583,
		-0.118492, -0.990720, 0.066587,
		34.169559, 43.026520, 22.430117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819054, 43.635910, 23.002895>,  <34.252506, 43.720024, 22.383507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819054, 43.635910, 23.002895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.958935, 43.265495, 22.946106>,  <34.042866, 43.043247, 22.912033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.958935, 43.265495, 22.946106>,  <33.819054, 43.635910, 23.002895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958935, 43.265495, 22.946106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020368, -0.159019, 0.987065,
		-0.936638, -0.342291, -0.074471,
		0.349705, -0.926040, -0.141971,
		34.063847, 42.987682, 22.903515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365555, 43.269741, 23.516842>,  <33.819054, 43.635910, 23.002895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365555, 43.269741, 23.516842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.668484, 43.026432, 23.421793>,  <33.850243, 42.880447, 23.364763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.668484, 43.026432, 23.421793>,  <33.365555, 43.269741, 23.516842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668484, 43.026432, 23.421793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009290, -0.353799, 0.935275,
		-0.652976, -0.710511, -0.262289,
		0.757321, -0.608276, -0.237623,
		33.895679, 42.843948, 23.350506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213425, 42.676517, 23.820824>,  <33.365555, 43.269741, 23.516842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213425, 42.676517, 23.820824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.610073, 42.668381, 23.769808>,  <33.848064, 42.663498, 23.739199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.610073, 42.668381, 23.769808>,  <33.213425, 42.676517, 23.820824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610073, 42.668381, 23.769808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106276, -0.432593, 0.895304,
		-0.073388, -0.901360, -0.426807,
		0.991625, -0.020345, -0.127540,
		33.907562, 42.662277, 23.731546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383892, 42.037167, 23.970510>,  <33.213425, 42.676517, 23.820824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383892, 42.037167, 23.970510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.709496, 42.262413, 24.027483>,  <33.904858, 42.397560, 24.061666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.709496, 42.262413, 24.027483>,  <33.383892, 42.037167, 23.970510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709496, 42.262413, 24.027483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242510, -0.552303, 0.797590,
		0.527798, -0.614708, -0.586143,
		0.814013, 0.563112, 0.142432,
		33.953701, 42.431347, 24.070213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854156, 41.596859, 24.252895>,  <33.383892, 42.037167, 23.970510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854156, 41.596859, 24.252895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.043377, 41.940269, 24.332056>,  <34.156910, 42.146317, 24.379553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.043377, 41.940269, 24.332056>,  <33.854156, 41.596859, 24.252895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043377, 41.940269, 24.332056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513231, -0.451099, 0.730140,
		0.716113, -0.243824, -0.654012,
		0.473050, 0.858522, 0.197900,
		34.185291, 42.197826, 24.391426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608356, 41.434090, 24.420086>,  <33.854156, 41.596859, 24.252895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608356, 41.434090, 24.420086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.548557, 41.797607, 24.575901>,  <34.512680, 42.015720, 24.669390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.548557, 41.797607, 24.575901>,  <34.608356, 41.434090, 24.420086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548557, 41.797607, 24.575901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573088, -0.241401, 0.783132,
		0.805743, 0.340313, -0.484732,
		-0.149496, 0.908797, 0.389536,
		34.503708, 42.070248, 24.692762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277641, 41.571049, 24.772463>,  <34.608356, 41.434090, 24.420086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277641, 41.571049, 24.772463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.994553, 41.810226, 24.922979>,  <34.824699, 41.953732, 25.013290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.994553, 41.810226, 24.922979>,  <35.277641, 41.571049, 24.772463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994553, 41.810226, 24.922979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419663, -0.072671, 0.904766,
		0.568343, 0.798239, -0.199504,
		-0.707721, 0.597942, 0.376293,
		34.782238, 41.989609, 25.035868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580803, 42.001823, 25.278713>,  <35.277641, 41.571049, 24.772463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580803, 42.001823, 25.278713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.200733, 42.057331, 25.390358>,  <34.972691, 42.090633, 25.457344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.200733, 42.057331, 25.390358>,  <35.580803, 42.001823, 25.278713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200733, 42.057331, 25.390358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286395, 0.035213, 0.957464,
		0.123036, 0.989699, -0.073201,
		-0.950179, 0.138767, 0.279112,
		34.915680, 42.098961, 25.474092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574085, 42.542004, 25.736971>,  <35.580803, 42.001823, 25.278713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574085, 42.542004, 25.736971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.253010, 42.313797, 25.806490>,  <35.060364, 42.176872, 25.848202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.253010, 42.313797, 25.806490>,  <35.574085, 42.542004, 25.736971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253010, 42.313797, 25.806490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240046, -0.042286, 0.969840,
		-0.545963, 0.820195, 0.170893,
		-0.802684, -0.570519, 0.173798,
		35.012203, 42.142643, 25.858629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613602, 42.514294, 26.393114>,  <35.574085, 42.542004, 25.736971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613602, 42.514294, 26.393114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.305367, 42.259800, 26.378168>,  <35.120426, 42.107101, 26.369200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.305367, 42.259800, 26.378168>,  <35.613602, 42.514294, 26.393114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305367, 42.259800, 26.378168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003193, -0.054773, 0.998494,
		-0.637324, 0.769548, 0.040176,
		-0.770589, -0.636236, -0.037365,
		35.074188, 42.068928, 26.366959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.163944, 42.866165, 18.181475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100777, 42.498600, 18.326067>,  <34.062878, 42.278061, 18.412823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100777, 42.498600, 18.326067>,  <34.163944, 42.866165, 18.181475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100777, 42.498600, 18.326067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139039, 0.383117, 0.913176,
		-0.977615, 0.093945, -0.188265,
		-0.157916, -0.918910, 0.361479,
		34.053402, 42.222927, 18.434511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502743, 42.882320, 18.647572>,  <34.163944, 42.866165, 18.181475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502743, 42.882320, 18.647572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703178, 42.548046, 18.737503>,  <33.823441, 42.347481, 18.791462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703178, 42.548046, 18.737503>,  <33.502743, 42.882320, 18.647572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703178, 42.548046, 18.737503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202345, 0.139458, 0.969334,
		-0.841409, -0.531213, -0.099216,
		0.501086, -0.835682, 0.224830,
		33.853504, 42.297340, 18.804953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095280, 42.559769, 19.116062>,  <33.502743, 42.882320, 18.647572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095280, 42.559769, 19.116062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455112, 42.396049, 19.177032>,  <33.671013, 42.297817, 19.213615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455112, 42.396049, 19.177032>,  <33.095280, 42.559769, 19.116062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455112, 42.396049, 19.177032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115355, 0.113946, 0.986767,
		-0.421251, -0.905257, 0.055289,
		0.899578, -0.409299, 0.152426,
		33.724987, 42.273258, 19.222761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026466, 42.067310, 19.692879>,  <33.095280, 42.559769, 19.116062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026466, 42.067310, 19.692879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420071, 42.137657, 19.681576>,  <33.656231, 42.179867, 19.674793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420071, 42.137657, 19.681576>,  <33.026466, 42.067310, 19.692879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420071, 42.137657, 19.681576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025511, 0.017859, 0.999515,
		0.176288, -0.984252, 0.013087,
		0.984008, 0.175868, -0.028258,
		33.715275, 42.190418, 19.673098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352665, 41.660278, 20.240505>,  <33.026466, 42.067310, 19.692879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352665, 41.660278, 20.240505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623779, 41.938519, 20.145224>,  <33.786449, 42.105461, 20.088055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623779, 41.938519, 20.145224>,  <33.352665, 41.660278, 20.240505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623779, 41.938519, 20.145224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052779, 0.277107, 0.959388,
		0.733358, -0.662836, 0.151108,
		0.677790, 0.695600, -0.238203,
		33.827118, 42.147198, 20.073763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870651, 41.603558, 20.741869>,  <33.352665, 41.660278, 20.240505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870651, 41.603558, 20.741869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919754, 41.979874, 20.615477>,  <33.949215, 42.205662, 20.539640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919754, 41.979874, 20.615477>,  <33.870651, 41.603558, 20.741869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919754, 41.979874, 20.615477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230145, 0.282723, 0.931183,
		0.965382, -0.187035, -0.181811,
		0.122761, 0.940790, -0.315980,
		33.956581, 42.262112, 20.520683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455730, 41.739616, 21.084690>,  <33.870651, 41.603558, 20.741869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455730, 41.739616, 21.084690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280220, 42.089470, 21.002232>,  <34.174915, 42.299381, 20.952757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280220, 42.089470, 21.002232>,  <34.455730, 41.739616, 21.084690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280220, 42.089470, 21.002232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138419, 0.292456, 0.946208,
		0.887874, 0.386635, -0.249387,
		-0.438772, 0.874633, -0.206146,
		34.148590, 42.351860, 20.940388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876255, 42.298626, 21.379963>,  <34.455730, 41.739616, 21.084690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876255, 42.298626, 21.379963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503040, 42.436180, 21.337673>,  <34.279110, 42.518715, 21.312300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503040, 42.436180, 21.337673>,  <34.876255, 42.298626, 21.379963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503040, 42.436180, 21.337673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001357, 0.297225, 0.954806,
		0.359770, 0.890729, -0.277790,
		-0.933040, 0.343888, -0.105724,
		34.223129, 42.539345, 21.305956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935303, 42.937099, 21.566591>,  <34.876255, 42.298626, 21.379963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935303, 42.937099, 21.566591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544182, 42.856834, 21.590694>,  <34.309509, 42.808678, 21.605156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544182, 42.856834, 21.590694>,  <34.935303, 42.937099, 21.566591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544182, 42.856834, 21.590694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010222, 0.241573, 0.970329,
		-0.209262, 0.949409, -0.234160,
		-0.977806, -0.200660, 0.060257,
		34.250839, 42.796635, 21.608772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270081, 43.682201, 21.630943>,  <34.935303, 42.937099, 21.566591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270081, 43.682201, 21.630943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666313, 43.736607, 21.624640>,  <35.904053, 43.769249, 21.620857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666313, 43.736607, 21.624640>,  <35.270081, 43.682201, 21.630943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666313, 43.736607, 21.624640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025646, -0.297374, -0.954416,
		-0.134499, 0.945023, -0.298062,
		0.990582, 0.136012, -0.015761,
		35.963490, 43.777409, 21.619911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440453, 44.038925, 20.974979>,  <35.270081, 43.682201, 21.630943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440453, 44.038925, 20.974979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780365, 43.881130, 21.114840>,  <35.984314, 43.786453, 21.198755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780365, 43.881130, 21.114840>,  <35.440453, 44.038925, 20.974979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780365, 43.881130, 21.114840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311204, -0.159936, -0.936788,
		0.425472, 0.904876, -0.013145,
		0.849780, -0.394486, 0.349649,
		36.035297, 43.762783, 21.219734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023693, 44.452290, 20.694061>,  <35.440453, 44.038925, 20.974979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023693, 44.452290, 20.694061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173344, 44.092308, 20.783604>,  <36.263134, 43.876320, 20.837328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173344, 44.092308, 20.783604>,  <36.023693, 44.452290, 20.694061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173344, 44.092308, 20.783604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540895, 0.015684, -0.840944,
		0.753300, 0.435701, 0.492649,
		0.374126, -0.899955, 0.223854,
		36.285580, 43.822323, 20.850760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804382, 44.591824, 20.599838>,  <36.023693, 44.452290, 20.694061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804382, 44.591824, 20.599838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722809, 44.200245, 20.596558>,  <36.673866, 43.965298, 20.594589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722809, 44.200245, 20.596558>,  <36.804382, 44.591824, 20.599838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722809, 44.200245, 20.596558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534515, -0.104325, -0.838696,
		0.820185, -0.175423, 0.544539,
		-0.203935, -0.978950, -0.008201,
		36.661629, 43.906559, 20.594097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388123, 44.330280, 20.400242>,  <36.804382, 44.591824, 20.599838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388123, 44.330280, 20.400242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116611, 44.047123, 20.322121>,  <36.953705, 43.877228, 20.275248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116611, 44.047123, 20.322121>,  <37.388123, 44.330280, 20.400242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116611, 44.047123, 20.322121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436416, -0.174975, -0.882567,
		0.590593, -0.684301, 0.427706,
		-0.678779, -0.707896, -0.195301,
		36.912979, 43.834755, 20.263531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819496, 43.583973, 20.310650>,  <37.388123, 44.330280, 20.400242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819496, 43.583973, 20.310650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468388, 43.606770, 20.120382>,  <37.257721, 43.620449, 20.006222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468388, 43.606770, 20.120382>,  <37.819496, 43.583973, 20.310650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468388, 43.606770, 20.120382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460558, -0.172976, -0.870612,
		-0.131894, -0.983276, 0.125588,
		-0.877776, 0.056988, -0.475670,
		37.205055, 43.623867, 19.977680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841690, 42.978142, 19.782434>,  <37.819496, 43.583973, 20.310650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841690, 42.978142, 19.782434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536682, 43.204220, 19.656500>,  <37.353680, 43.339867, 19.580938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536682, 43.204220, 19.656500>,  <37.841690, 42.978142, 19.782434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536682, 43.204220, 19.656500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306361, -0.113179, -0.945163,
		-0.569833, -0.817158, -0.086853,
		-0.762518, 0.565194, -0.314838,
		37.307926, 43.373779, 19.562048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507488, 42.630226, 19.151585>,  <37.841690, 42.978142, 19.782434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507488, 42.630226, 19.151585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358788, 43.000908, 19.129616>,  <37.269566, 43.223316, 19.116434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358788, 43.000908, 19.129616>,  <37.507488, 42.630226, 19.151585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358788, 43.000908, 19.129616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123200, -0.009392, -0.992337,
		-0.920121, -0.375669, -0.110679,
		-0.371750, 0.926706, -0.054924,
		37.247261, 43.278919, 19.113138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927895, 42.531021, 18.694767>,  <37.507488, 42.630226, 19.151585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927895, 42.531021, 18.694767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079079, 42.901127, 18.707592>,  <37.169788, 43.123192, 18.715286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079079, 42.901127, 18.707592>,  <36.927895, 42.531021, 18.694767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079079, 42.901127, 18.707592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144061, -0.024569, -0.989264,
		-0.914545, 0.378522, -0.142581,
		0.377961, 0.925266, 0.032061,
		37.192467, 43.178707, 18.717211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500565, 42.907307, 18.141466>,  <36.927895, 42.531021, 18.694767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500565, 42.907307, 18.141466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826767, 43.125118, 18.219883>,  <37.022488, 43.255806, 18.266933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826767, 43.125118, 18.219883>,  <36.500565, 42.907307, 18.141466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826767, 43.125118, 18.219883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153878, 0.122532, -0.980463,
		-0.557913, 0.829742, 0.016135,
		0.815509, 0.544531, 0.196041,
		37.071419, 43.288479, 18.278696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347095, 43.501457, 17.680851>,  <36.500565, 42.907307, 18.141466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347095, 43.501457, 17.680851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738380, 43.470600, 17.757942>,  <36.973152, 43.452084, 17.804197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738380, 43.470600, 17.757942>,  <36.347095, 43.501457, 17.680851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738380, 43.470600, 17.757942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198106, 0.069414, -0.977720,
		0.062047, 0.994601, 0.083185,
		0.978215, -0.077144, 0.192729,
		37.031845, 43.447456, 17.815762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696892, 44.020237, 17.237114>,  <36.347095, 43.501457, 17.680851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696892, 44.020237, 17.237114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964043, 43.753338, 17.369003>,  <37.124332, 43.593197, 17.448137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964043, 43.753338, 17.369003>,  <36.696892, 44.020237, 17.237114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964043, 43.753338, 17.369003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220219, -0.246014, -0.943918,
		0.710946, 0.703032, -0.017367,
		0.667877, -0.667250, 0.329724,
		37.164406, 43.553162, 17.467920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246483, 44.146233, 16.823202>,  <36.696892, 44.020237, 17.237114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246483, 44.146233, 16.823202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296783, 43.771034, 16.952414>,  <37.326965, 43.545914, 17.029940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296783, 43.771034, 16.952414>,  <37.246483, 44.146233, 16.823202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296783, 43.771034, 16.952414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326635, -0.268311, -0.906266,
		0.936747, 0.219479, 0.272641,
		0.125753, -0.937997, 0.323029,
		37.334511, 43.489635, 17.049322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986401, 44.023071, 16.807585>,  <37.246483, 44.146233, 16.823202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986401, 44.023071, 16.807585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834232, 43.653446, 16.792677>,  <37.742931, 43.431671, 16.783733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834232, 43.653446, 16.792677>,  <37.986401, 44.023071, 16.807585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834232, 43.653446, 16.792677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316005, -0.092011, -0.944286,
		0.869148, -0.371006, 0.327011,
		-0.380424, -0.924061, -0.037268,
		37.720104, 43.376228, 16.781496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.460716, 35.154934, 17.974279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369991, 35.541382, 17.925011>,  <35.315556, 35.773251, 17.895449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369991, 35.541382, 17.925011>,  <35.460716, 35.154934, 17.974279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369991, 35.541382, 17.925011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021122, 0.121559, 0.992359,
		0.973710, 0.227678, -0.007164,
		-0.226810, 0.966119, -0.123172,
		35.301949, 35.831219, 17.888060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762463, 35.472885, 18.534754>,  <35.460716, 35.154934, 17.974279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762463, 35.472885, 18.534754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513073, 35.758919, 18.408304>,  <35.363438, 35.930538, 18.332434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513073, 35.758919, 18.408304>,  <35.762463, 35.472885, 18.534754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513073, 35.758919, 18.408304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083848, 0.340845, 0.936373,
		0.777331, 0.610314, -0.152552,
		-0.623478, 0.715081, -0.316123,
		35.326031, 35.973442, 18.313467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003853, 36.105709, 18.822264>,  <35.762463, 35.472885, 18.534754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003853, 36.105709, 18.822264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620548, 36.189709, 18.744669>,  <35.390564, 36.240108, 18.698112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620548, 36.189709, 18.744669>,  <36.003853, 36.105709, 18.822264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620548, 36.189709, 18.744669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110297, 0.354448, 0.928548,
		0.263754, 0.911190, -0.316492,
		-0.958263, 0.210000, -0.193989,
		35.333069, 36.252708, 18.686472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879494, 36.832386, 19.082281>,  <36.003853, 36.105709, 18.822264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879494, 36.832386, 19.082281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.536026, 36.629108, 19.055689>,  <35.329945, 36.507141, 19.039734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.536026, 36.629108, 19.055689>,  <35.879494, 36.832386, 19.082281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536026, 36.629108, 19.055689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275631, 0.348529, 0.895855,
		-0.432099, 0.787569, -0.439346,
		-0.858672, -0.508195, -0.066479,
		35.278423, 36.476650, 19.035746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379139, 37.350914, 19.342598>,  <35.879494, 36.832386, 19.082281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379139, 37.350914, 19.342598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201817, 36.994884, 19.385019>,  <35.095421, 36.781265, 19.410473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201817, 36.994884, 19.385019>,  <35.379139, 37.350914, 19.342598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201817, 36.994884, 19.385019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189345, 0.208632, 0.959490,
		-0.876143, 0.405269, -0.261019,
		-0.443308, -0.890073, 0.106056,
		35.068825, 36.727863, 19.416836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777706, 37.447807, 19.623779>,  <35.379139, 37.350914, 19.342598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777706, 37.447807, 19.623779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.864704, 37.069458, 19.720123>,  <34.916904, 36.842449, 19.777929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.864704, 37.069458, 19.720123>,  <34.777706, 37.447807, 19.623779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864704, 37.069458, 19.720123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188527, 0.201410, 0.961193,
		-0.957681, -0.254464, -0.134517,
		0.217496, -0.945876, 0.240859,
		34.929955, 36.785694, 19.792381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174667, 37.209595, 20.087631>,  <34.777706, 37.447807, 19.623779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174667, 37.209595, 20.087631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.502647, 36.988415, 20.146856>,  <34.699436, 36.855705, 20.182390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.502647, 36.988415, 20.146856>,  <34.174667, 37.209595, 20.087631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502647, 36.988415, 20.146856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166670, 0.016833, 0.985869,
		-0.547628, -0.833045, -0.078358,
		0.819954, -0.552949, 0.148062,
		34.748634, 36.822529, 20.191275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010063, 36.787205, 20.590668>,  <34.174667, 37.209595, 20.087631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010063, 36.787205, 20.590668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.410011, 36.791176, 20.595860>,  <34.649979, 36.793556, 20.598974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.410011, 36.791176, 20.595860>,  <34.010063, 36.787205, 20.590668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410011, 36.791176, 20.595860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014999, 0.242458, 0.970046,
		0.006479, -0.970111, 0.242575,
		0.999867, 0.009924, 0.012980,
		34.709972, 36.794151, 20.599752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090813, 36.625641, 21.198586>,  <34.010063, 36.787205, 20.590668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090813, 36.625641, 21.198586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.465199, 36.731106, 21.105247>,  <34.689831, 36.794384, 21.049244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.465199, 36.731106, 21.105247>,  <34.090813, 36.625641, 21.198586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465199, 36.731106, 21.105247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177570, 0.218799, 0.959477,
		0.304038, -0.939472, 0.157969,
		0.935965, 0.263667, -0.233345,
		34.745987, 36.810204, 21.035244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460297, 36.351940, 21.712805>,  <34.090813, 36.625641, 21.198586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460297, 36.351940, 21.712805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698204, 36.632294, 21.555317>,  <34.840950, 36.800507, 21.460823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698204, 36.632294, 21.555317>,  <34.460297, 36.351940, 21.712805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698204, 36.632294, 21.555317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312654, 0.249530, 0.916505,
		0.740607, -0.668207, -0.070721,
		0.594768, 0.700881, -0.393721,
		34.876633, 36.842560, 21.437201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024933, 36.345001, 22.105637>,  <34.460297, 36.351940, 21.712805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024933, 36.345001, 22.105637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035915, 36.696579, 21.915186>,  <35.042503, 36.907528, 21.800917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035915, 36.696579, 21.915186>,  <35.024933, 36.345001, 22.105637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035915, 36.696579, 21.915186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245031, 0.455856, 0.855661,
		0.969127, -0.140159, -0.202853,
		0.027457, 0.878949, -0.476125,
		35.044151, 36.960262, 21.772348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829967, 36.544792, 22.009302>,  <35.024933, 36.345001, 22.105637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829967, 36.544792, 22.009302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584816, 36.860847, 22.012363>,  <35.437725, 37.050480, 22.014200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584816, 36.860847, 22.012363>,  <35.829967, 36.544792, 22.009302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584816, 36.860847, 22.012363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423364, 0.320176, 0.847496,
		0.667192, 0.522650, -0.530746,
		-0.612876, 0.790142, 0.007652,
		35.400951, 37.097889, 22.014660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195499, 37.026707, 22.239744>,  <35.829967, 36.544792, 22.009302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195499, 37.026707, 22.239744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840172, 37.195858, 22.311357>,  <35.626976, 37.297348, 22.354326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840172, 37.195858, 22.311357>,  <36.195499, 37.026707, 22.239744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840172, 37.195858, 22.311357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354689, 0.384191, 0.852404,
		0.291683, 0.820712, -0.491277,
		-0.888322, 0.422883, 0.179036,
		35.573677, 37.322723, 22.365068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286728, 37.684372, 22.488625>,  <36.195499, 37.026707, 22.239744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286728, 37.684372, 22.488625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908607, 37.607025, 22.593700>,  <35.681736, 37.560616, 22.656746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908607, 37.607025, 22.593700>,  <36.286728, 37.684372, 22.488625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908607, 37.607025, 22.593700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207906, 0.263363, 0.942027,
		-0.251344, 0.945117, -0.208756,
		-0.945305, -0.193372, 0.262690,
		35.625015, 37.549015, 22.672508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776249, 38.198071, 22.355574>,  <36.286728, 37.684372, 22.488625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776249, 38.198071, 22.355574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158516, 38.284389, 22.435699>,  <37.387878, 38.336182, 22.483774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.158516, 38.284389, 22.435699>,  <36.776249, 38.198071, 22.355574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158516, 38.284389, 22.435699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278985, -0.446156, -0.850360,
		-0.094135, 0.868549, -0.486582,
		0.955670, 0.215798, 0.200314,
		37.445217, 38.349129, 22.495794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049210, 38.501698, 21.752230>,  <36.776249, 38.198071, 22.355574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049210, 38.501698, 21.752230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392879, 38.418354, 21.939165>,  <37.599083, 38.368347, 22.051327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392879, 38.418354, 21.939165>,  <37.049210, 38.501698, 21.752230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392879, 38.418354, 21.939165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433018, -0.190529, -0.881019,
		0.272607, 0.959316, -0.073476,
		0.859175, -0.208355, 0.467340,
		37.650631, 38.355846, 22.079367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474003, 38.921383, 21.457691>,  <37.049210, 38.501698, 21.752230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474003, 38.921383, 21.457691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700603, 38.616184, 21.582214>,  <37.836563, 38.433064, 21.656929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.700603, 38.616184, 21.582214>,  <37.474003, 38.921383, 21.457691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700603, 38.616184, 21.582214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317744, -0.146315, -0.936819,
		0.760341, 0.629623, 0.159551,
		0.566498, -0.762999, 0.311308,
		37.870552, 38.387283, 21.675608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076591, 39.000576, 21.063459>,  <37.474003, 38.921383, 21.457691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076591, 39.000576, 21.063459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116089, 38.633022, 21.216251>,  <38.139790, 38.412491, 21.307926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116089, 38.633022, 21.216251>,  <38.076591, 39.000576, 21.063459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116089, 38.633022, 21.216251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412952, -0.311405, -0.855861,
		0.905384, 0.242253, 0.348703,
		0.098746, -0.918880, 0.381980,
		38.145714, 38.357357, 21.330845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694378, 38.757843, 20.845070>,  <38.076591, 39.000576, 21.063459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694378, 38.757843, 20.845070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509945, 38.415722, 20.939615>,  <38.399284, 38.210449, 20.996342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509945, 38.415722, 20.939615>,  <38.694378, 38.757843, 20.845070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509945, 38.415722, 20.939615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419223, -0.444727, -0.791499,
		0.782086, -0.265854, 0.563615,
		-0.461078, -0.855301, 0.236363,
		38.371620, 38.159130, 21.010525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240513, 38.280373, 20.922176>,  <38.694378, 38.757843, 20.845070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240513, 38.280373, 20.922176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889557, 38.107651, 20.838533>,  <38.678982, 38.004017, 20.788347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889557, 38.107651, 20.838533>,  <39.240513, 38.280373, 20.922176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889557, 38.107651, 20.838533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379844, -0.358940, -0.852573,
		0.293089, -0.827469, 0.478950,
		-0.877392, -0.431806, -0.209107,
		38.626339, 37.978107, 20.775801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418137, 37.614513, 20.545765>,  <39.240513, 38.280373, 20.922176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418137, 37.614513, 20.545765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024063, 37.645416, 20.484514>,  <38.787621, 37.663960, 20.447763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024063, 37.645416, 20.484514>,  <39.418137, 37.614513, 20.545765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024063, 37.645416, 20.484514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124735, -0.290047, -0.948849,
		-0.117719, -0.953889, 0.276112,
		-0.985182, 0.077256, -0.153127,
		38.728508, 37.668594, 20.438576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132114, 36.896927, 20.265469>,  <39.418137, 37.614513, 20.545765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132114, 36.896927, 20.265469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.855461, 37.164715, 20.157057>,  <38.689468, 37.325390, 20.092010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.855461, 37.164715, 20.157057>,  <39.132114, 36.896927, 20.265469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855461, 37.164715, 20.157057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067643, -0.313564, -0.947155,
		-0.719078, -0.673413, 0.171585,
		-0.691629, 0.669472, -0.271028,
		38.647972, 37.365555, 20.075748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765495, 36.530838, 19.772476>,  <39.132114, 36.896927, 20.265469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765495, 36.530838, 19.772476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.685513, 36.913326, 19.687008>,  <38.637524, 37.142818, 19.635727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.685513, 36.913326, 19.687008>,  <38.765495, 36.530838, 19.772476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685513, 36.913326, 19.687008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060704, -0.229746, -0.971356,
		-0.977923, -0.181257, 0.103985,
		-0.199956, 0.956223, -0.213671,
		38.625526, 37.200191, 19.622906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133274, 36.570469, 19.339741>,  <38.765495, 36.530838, 19.772476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133274, 36.570469, 19.339741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354382, 36.895988, 19.267979>,  <38.487045, 37.091301, 19.224920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354382, 36.895988, 19.267979>,  <38.133274, 36.570469, 19.339741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354382, 36.895988, 19.267979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207763, -0.073908, -0.975383,
		-0.807023, 0.576431, 0.128223,
		0.552764, 0.813797, -0.179406,
		38.520210, 37.140129, 19.214157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815941, 36.886215, 18.836294>,  <38.133274, 36.570469, 19.339741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815941, 36.886215, 18.836294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171371, 37.068386, 18.814354>,  <38.384632, 37.177689, 18.801189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171371, 37.068386, 18.814354>,  <37.815941, 36.886215, 18.836294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171371, 37.068386, 18.814354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057849, -0.007367, -0.998298,
		-0.455059, 0.890241, 0.019800,
		0.888580, 0.455430, -0.054852,
		38.437946, 37.205013, 18.797899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672447, 37.476395, 18.410767>,  <37.815941, 36.886215, 18.836294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672447, 37.476395, 18.410767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.065384, 37.401714, 18.405796>,  <38.301144, 37.356907, 18.402815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.065384, 37.401714, 18.405796>,  <37.672447, 37.476395, 18.410767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065384, 37.401714, 18.405796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037196, -0.129764, -0.990847,
		0.183384, 0.973808, -0.134417,
		0.982337, -0.186705, -0.012425,
		38.360085, 37.345703, 18.402069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940472, 38.010433, 18.022343>,  <37.672447, 37.476395, 18.410767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940472, 38.010433, 18.022343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221428, 37.726166, 18.006361>,  <38.390003, 37.555607, 17.996771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221428, 37.726166, 18.006361>,  <37.940472, 38.010433, 18.022343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221428, 37.726166, 18.006361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077569, -0.020625, -0.996774,
		0.707553, 0.703224, -0.069613,
		0.702391, -0.710669, -0.039956,
		38.432144, 37.512966, 17.994375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406895, 38.268013, 17.683584>,  <37.940472, 38.010433, 18.022343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406895, 38.268013, 17.683584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.436867, 37.872604, 17.631113>,  <38.454849, 37.635361, 17.599630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.436867, 37.872604, 17.631113>,  <38.406895, 38.268013, 17.683584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436867, 37.872604, 17.631113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010403, 0.132317, -0.991153,
		0.997134, 0.072904, 0.020198,
		0.074932, -0.988523, -0.131179,
		38.459347, 37.576046, 17.591759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151150, 38.419064, 17.696087>,  <38.406895, 38.268013, 17.683584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151150, 38.419064, 17.696087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365086, 38.749176, 17.623577>,  <39.493446, 38.947243, 17.580070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365086, 38.749176, 17.623577>,  <39.151150, 38.419064, 17.696087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365086, 38.749176, 17.623577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073491, 0.168290, 0.982994,
		0.841749, -0.539070, 0.029358,
		0.534843, 0.825277, -0.181275,
		39.525539, 38.996758, 17.569195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490685, 38.426834, 18.268803>,  <39.151150, 38.419064, 17.696087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490685, 38.426834, 18.268803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.556072, 38.784344, 18.101736>,  <39.595306, 38.998848, 18.001495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.556072, 38.784344, 18.101736>,  <39.490685, 38.426834, 18.268803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556072, 38.784344, 18.101736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125075, 0.401168, 0.907425,
		0.978587, -0.200579, -0.046209,
		0.163473, 0.893774, -0.417666,
		39.605114, 39.052475, 17.976437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073105, 38.851585, 18.705778>,  <39.490685, 38.426834, 18.268803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073105, 38.851585, 18.705778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.884136, 39.137630, 18.499695>,  <39.770756, 39.309258, 18.376045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.884136, 39.137630, 18.499695>,  <40.073105, 38.851585, 18.705778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884136, 39.137630, 18.499695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040398, 0.566368, 0.823162,
		0.880449, 0.409689, -0.238673,
		-0.472417, 0.715110, -0.515209,
		39.742413, 39.352165, 18.345133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336544, 39.400944, 19.042406>,  <40.073105, 38.851585, 18.705778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336544, 39.400944, 19.042406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992954, 39.476273, 18.851955>,  <39.786800, 39.521469, 18.737684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992954, 39.476273, 18.851955>,  <40.336544, 39.400944, 19.042406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992954, 39.476273, 18.851955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215338, 0.710795, 0.669627,
		0.464535, 0.677721, -0.570002,
		-0.858974, 0.188322, -0.476129,
		39.735264, 39.532768, 18.709116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399433, 40.095245, 18.895693>,  <40.336544, 39.400944, 19.042406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399433, 40.095245, 18.895693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010517, 40.004162, 18.916828>,  <39.777168, 39.949512, 18.929510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010517, 40.004162, 18.916828>,  <40.399433, 40.095245, 18.895693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010517, 40.004162, 18.916828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140482, 0.749852, 0.646519,
		-0.186841, 0.621183, -0.761066,
		-0.972294, -0.227712, 0.052838,
		39.718830, 39.935848, 18.932680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051193, 40.752472, 18.945824>,  <40.399433, 40.095245, 18.895693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051193, 40.752472, 18.945824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.787979, 40.484749, 19.083818>,  <39.630051, 40.324116, 19.166616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.787979, 40.484749, 19.083818>,  <40.051193, 40.752472, 18.945824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787979, 40.484749, 19.083818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220629, 0.609429, 0.761524,
		-0.719943, 0.424992, -0.548693,
		-0.658031, -0.669312, 0.344988,
		39.590569, 40.283955, 19.187315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501877, 41.092548, 19.148333>,  <40.051193, 40.752472, 18.945824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501877, 41.092548, 19.148333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466248, 40.742794, 19.339127>,  <39.444870, 40.532940, 19.453602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466248, 40.742794, 19.339127>,  <39.501877, 41.092548, 19.148333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466248, 40.742794, 19.339127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441335, 0.463957, 0.768093,
		-0.892910, -0.142093, -0.427224,
		-0.089072, -0.874387, 0.476983,
		39.439526, 40.480476, 19.482222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908810, 41.121994, 19.450851>,  <39.501877, 41.092548, 19.148333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908810, 41.121994, 19.450851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081352, 40.841984, 19.678497>,  <39.184879, 40.673977, 19.815084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081352, 40.841984, 19.678497>,  <38.908810, 41.121994, 19.450851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081352, 40.841984, 19.678497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242041, 0.517897, 0.820487,
		-0.869106, -0.491674, 0.053965,
		0.431360, -0.700028, 0.569113,
		39.210762, 40.631977, 19.849232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430855, 40.941933, 19.959637>,  <38.908810, 41.121994, 19.450851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430855, 40.941933, 19.959637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789715, 40.833992, 20.099527>,  <39.005032, 40.769226, 20.183462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789715, 40.833992, 20.099527>,  <38.430855, 40.941933, 19.959637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789715, 40.833992, 20.099527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242304, 0.361347, 0.900398,
		-0.369347, -0.892529, 0.258794,
		0.897146, -0.269853, 0.349726,
		39.058857, 40.753036, 20.204445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293404, 40.593822, 20.555902>,  <38.430855, 40.941933, 19.959637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293404, 40.593822, 20.555902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654945, 40.762856, 20.582663>,  <38.871868, 40.864277, 20.598719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654945, 40.762856, 20.582663>,  <38.293404, 40.593822, 20.555902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654945, 40.762856, 20.582663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226398, 0.339717, 0.912873,
		0.363045, -0.840244, 0.402726,
		0.903849, 0.422591, 0.066898,
		38.926102, 40.889629, 20.602734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609180, 40.455765, 21.322641>,  <38.293404, 40.593822, 20.555902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609180, 40.455765, 21.322641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828327, 40.748562, 21.160635>,  <38.959816, 40.924240, 21.063431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828327, 40.748562, 21.160635>,  <38.609180, 40.455765, 21.322641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828327, 40.748562, 21.160635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137094, 0.556153, 0.819695,
		0.825259, -0.393554, 0.405046,
		0.547862, 0.731990, -0.405016,
		38.992687, 40.968159, 21.039131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990952, 40.716385, 21.863441>,  <38.609180, 40.455765, 21.322641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990952, 40.716385, 21.863441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091629, 40.997459, 21.597242>,  <39.152035, 41.166103, 21.437523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091629, 40.997459, 21.597242>,  <38.990952, 40.716385, 21.863441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091629, 40.997459, 21.597242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115079, 0.661026, 0.741486,
		0.960941, -0.263211, 0.085511,
		0.251692, 0.702684, -0.665497,
		39.167137, 41.208263, 21.397593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666222, 40.886616, 21.954170>,  <38.990952, 40.716385, 21.863441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666222, 40.886616, 21.954170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487385, 41.207016, 21.794920>,  <39.380081, 41.399258, 21.699369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487385, 41.207016, 21.794920>,  <39.666222, 40.886616, 21.954170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487385, 41.207016, 21.794920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338040, 0.563386, 0.753873,
		0.828151, 0.202471, -0.522658,
		-0.447096, 0.801000, -0.398126,
		39.353256, 41.447315, 21.675482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200817, 41.420544, 21.947903>,  <39.666222, 40.886616, 21.954170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200817, 41.420544, 21.947903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.840977, 41.591885, 21.913876>,  <39.625072, 41.694691, 21.893459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.840977, 41.591885, 21.913876>,  <40.200817, 41.420544, 21.947903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840977, 41.591885, 21.913876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254376, 0.672290, 0.695212,
		0.354986, 0.603772, -0.713753,
		-0.899599, 0.428352, -0.085069,
		39.571098, 41.720390, 21.888355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.785042, 43.168270, 16.384169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.401127, 43.056522, 16.373085>,  <38.170780, 42.989471, 16.366434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.401127, 43.056522, 16.373085>,  <38.785042, 43.168270, 16.384169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401127, 43.056522, 16.373085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164976, -0.481385, -0.860843,
		0.227156, -0.830794, 0.508115,
		-0.959783, -0.279373, -0.027711,
		38.113194, 42.972710, 16.364771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831791, 42.470459, 16.315294>,  <38.785042, 43.168270, 16.384169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831791, 42.470459, 16.315294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.477196, 42.584259, 16.169306>,  <38.264439, 42.652538, 16.081713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.477196, 42.584259, 16.169306>,  <38.831791, 42.470459, 16.315294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477196, 42.584259, 16.169306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159447, -0.552612, -0.818044,
		-0.434418, -0.783379, 0.444521,
		-0.886486, 0.284496, -0.364972,
		38.211250, 42.669609, 16.059814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677662, 41.918400, 15.959609>,  <38.831791, 42.470459, 16.315294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677662, 41.918400, 15.959609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.411156, 42.180817, 15.817795>,  <38.251251, 42.338268, 15.732706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.411156, 42.180817, 15.817795>,  <38.677662, 41.918400, 15.959609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411156, 42.180817, 15.817795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108849, -0.555896, -0.824094,
		-0.737730, -0.510473, 0.441783,
		-0.666263, 0.656046, -0.354537,
		38.211277, 42.377632, 15.711433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961849, 41.631149, 15.905499>,  <38.677662, 41.918400, 15.959609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961849, 41.631149, 15.905499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019695, 41.911198, 15.625811>,  <38.054401, 42.079227, 15.457997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019695, 41.911198, 15.625811>,  <37.961849, 41.631149, 15.905499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019695, 41.911198, 15.625811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320136, -0.635538, -0.702571,
		-0.936269, 0.325449, 0.132226,
		0.144616, 0.700125, -0.699222,
		38.063080, 42.121235, 15.416044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400085, 41.514114, 15.427953>,  <37.961849, 41.631149, 15.905499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400085, 41.514114, 15.427953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.637039, 41.763359, 15.223676>,  <37.779213, 41.912907, 15.101110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.637039, 41.763359, 15.223676>,  <37.400085, 41.514114, 15.427953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637039, 41.763359, 15.223676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154298, -0.534403, -0.831027,
		-0.790740, 0.571088, -0.220428,
		0.592387, 0.623115, -0.510692,
		37.814754, 41.950294, 15.070468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092072, 41.592136, 14.711442>,  <37.400085, 41.514114, 15.427953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092072, 41.592136, 14.711442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.459702, 41.720177, 14.619498>,  <37.680279, 41.797001, 14.564332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.459702, 41.720177, 14.619498>,  <37.092072, 41.592136, 14.711442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459702, 41.720177, 14.619498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016243, -0.552012, -0.833678,
		-0.393748, 0.769946, -0.502141,
		0.919075, 0.320103, -0.229860,
		37.735424, 41.816208, 14.550540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047886, 41.773151, 13.988564>,  <37.092072, 41.592136, 14.711442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047886, 41.773151, 13.988564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.436802, 41.737621, 14.075057>,  <37.670151, 41.716305, 14.126953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.436802, 41.737621, 14.075057>,  <37.047886, 41.773151, 13.988564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436802, 41.737621, 14.075057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146820, -0.487775, -0.860534,
		0.181907, 0.868439, -0.461220,
		0.972293, -0.088821, 0.216234,
		37.728489, 41.710976, 14.139927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379929, 41.883186, 13.365880>,  <37.047886, 41.773151, 13.988564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379929, 41.883186, 13.365880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.668503, 41.710537, 13.582484>,  <37.841648, 41.606945, 13.712446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.668503, 41.710537, 13.582484>,  <37.379929, 41.883186, 13.365880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668503, 41.710537, 13.582484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321926, -0.483298, -0.814117,
		0.613105, 0.761657, -0.209715,
		0.721433, -0.431627, 0.541510,
		37.884933, 41.581047, 13.744937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102947, 42.060345, 13.039706>,  <37.379929, 41.883186, 13.365880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102947, 42.060345, 13.039706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.087872, 41.715961, 13.242615>,  <38.078827, 41.509331, 13.364360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.087872, 41.715961, 13.242615>,  <38.102947, 42.060345, 13.039706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087872, 41.715961, 13.242615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454226, -0.466918, -0.758727,
		0.890089, 0.201824, 0.408667,
		-0.037685, -0.860961, 0.507272,
		38.076565, 41.457672, 13.394796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679070, 41.806915, 12.857262>,  <38.102947, 42.060345, 13.039706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679070, 41.806915, 12.857262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518364, 41.491501, 13.043504>,  <38.421940, 41.302250, 13.155250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518364, 41.491501, 13.043504>,  <38.679070, 41.806915, 12.857262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518364, 41.491501, 13.043504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449592, -0.612802, -0.649877,
		0.797778, -0.051767, 0.600725,
		-0.401767, -0.788539, 0.465606,
		38.397835, 41.254940, 13.183186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172718, 41.292366, 12.932784>,  <38.679070, 41.806915, 12.857262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172718, 41.292366, 12.932784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820469, 41.103508, 12.916901>,  <38.609119, 40.990192, 12.907371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820469, 41.103508, 12.916901>,  <39.172718, 41.292366, 12.932784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820469, 41.103508, 12.916901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254210, -0.400083, -0.880517,
		0.399849, -0.785498, 0.472348,
		-0.880623, -0.472150, -0.039709,
		38.556282, 40.961864, 12.904988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233288, 40.757011, 12.449640>,  <39.172718, 41.292366, 12.932784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233288, 40.757011, 12.449640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833775, 40.771881, 12.462569>,  <38.594067, 40.780804, 12.470326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833775, 40.771881, 12.462569>,  <39.233288, 40.757011, 12.449640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833775, 40.771881, 12.462569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042975, -0.336879, -0.940567,
		-0.024071, -0.940814, 0.338067,
		-0.998786, 0.037169, 0.032323,
		38.534138, 40.783031, 12.472266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913506, 40.119534, 12.230194>,  <39.233288, 40.757011, 12.449640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913506, 40.119534, 12.230194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.698387, 40.450100, 12.163480>,  <38.569317, 40.648441, 12.123451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.698387, 40.450100, 12.163480>,  <38.913506, 40.119534, 12.230194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698387, 40.450100, 12.163480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122365, -0.272247, -0.954415,
		-0.834151, -0.492867, 0.247536,
		-0.537791, 0.826416, -0.166786,
		38.537048, 40.698025, 12.113444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288601, 40.008072, 11.849144>,  <38.913506, 40.119534, 12.230194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288601, 40.008072, 11.849144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350037, 40.389740, 11.746407>,  <38.386898, 40.618740, 11.684764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350037, 40.389740, 11.746407>,  <38.288601, 40.008072, 11.849144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350037, 40.389740, 11.746407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582918, -0.122394, -0.803260,
		-0.797884, 0.273089, 0.537405,
		0.153586, 0.954171, -0.256845,
		38.396114, 40.675991, 11.669353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717690, 39.356014, 11.786250>,  <38.288601, 40.008072, 11.849144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717690, 39.356014, 11.786250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822796, 38.973606, 11.838368>,  <38.885860, 38.744160, 11.869639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822796, 38.973606, 11.838368>,  <38.717690, 39.356014, 11.786250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822796, 38.973606, 11.838368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185185, 0.182499, 0.965609,
		-0.946923, -0.229596, 0.224995,
		0.262761, -0.956023, 0.130295,
		38.901623, 38.686798, 11.877457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592869, 39.237492, 12.514117>,  <38.717690, 39.356014, 11.786250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592869, 39.237492, 12.514117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788528, 38.896500, 12.440360>,  <38.905926, 38.691902, 12.396106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788528, 38.896500, 12.440360>,  <38.592869, 39.237492, 12.514117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788528, 38.896500, 12.440360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271871, -0.051851, 0.960935,
		-0.828744, -0.520174, 0.206403,
		0.489152, -0.852484, -0.184392,
		38.935272, 38.640755, 12.385042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290768, 38.752213, 12.975761>,  <38.592869, 39.237492, 12.514117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290768, 38.752213, 12.975761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673153, 38.673500, 12.888664>,  <38.902584, 38.626274, 12.836406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673153, 38.673500, 12.888664>,  <38.290768, 38.752213, 12.975761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673153, 38.673500, 12.888664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218793, -0.016661, 0.975629,
		-0.195610, -0.980306, 0.027126,
		0.955964, -0.196778, -0.217743,
		38.959942, 38.614468, 12.823341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476082, 38.106476, 13.368265>,  <38.290768, 38.752213, 12.975761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476082, 38.106476, 13.368265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834450, 38.269421, 13.297397>,  <39.049469, 38.367188, 13.254875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834450, 38.269421, 13.297397>,  <38.476082, 38.106476, 13.368265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834450, 38.269421, 13.297397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238021, -0.103465, 0.965733,
		0.375068, -0.907389, -0.189656,
		0.895918, 0.407358, -0.177172,
		39.103226, 38.391628, 13.244246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889889, 37.784172, 13.781819>,  <38.476082, 38.106476, 13.368265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889889, 37.784172, 13.781819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105434, 38.116383, 13.725447>,  <39.234760, 38.315708, 13.691623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105434, 38.116383, 13.725447>,  <38.889889, 37.784172, 13.781819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105434, 38.116383, 13.725447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156836, 0.065464, 0.985453,
		0.827667, -0.553124, -0.094980,
		0.538860, 0.830523, -0.140932,
		39.267094, 38.365540, 13.683167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456650, 37.778263, 14.292222>,  <38.889889, 37.784172, 13.781819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456650, 37.778263, 14.292222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.490784, 38.151508, 14.152493>,  <39.511265, 38.375454, 14.068656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.490784, 38.151508, 14.152493>,  <39.456650, 37.778263, 14.292222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490784, 38.151508, 14.152493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145598, 0.335159, 0.930844,
		0.985657, -0.130293, -0.107258,
		0.085334, 0.933109, -0.349322,
		39.516384, 38.431442, 14.047697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130798, 38.023800, 14.524346>,  <39.456650, 37.778263, 14.292222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130798, 38.023800, 14.524346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.888176, 38.340397, 14.494348>,  <39.742603, 38.530354, 14.476349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.888176, 38.340397, 14.494348>,  <40.130798, 38.023800, 14.524346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888176, 38.340397, 14.494348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248069, 0.278037, 0.927986,
		0.755346, 0.544274, -0.364991,
		-0.606559, 0.791493, -0.074996,
		39.706207, 38.577847, 14.471848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561104, 38.567413, 14.701455>,  <40.130798, 38.023800, 14.524346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561104, 38.567413, 14.701455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175335, 38.659260, 14.753867>,  <39.943874, 38.714367, 14.785315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175335, 38.659260, 14.753867>,  <40.561104, 38.567413, 14.701455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175335, 38.659260, 14.753867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215282, 0.394429, 0.893353,
		0.153447, 0.889776, -0.429828,
		-0.964421, 0.229617, 0.131029,
		39.886009, 38.728146, 14.793176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617954, 39.050468, 15.146296>,  <40.561104, 38.567413, 14.701455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617954, 39.050468, 15.146296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.225674, 38.974419, 15.164481>,  <39.990303, 38.928787, 15.175392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.225674, 38.974419, 15.164481>,  <40.617954, 39.050468, 15.146296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225674, 38.974419, 15.164481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012590, 0.293513, 0.955872,
		-0.195082, 0.936857, -0.290243,
		-0.980706, -0.190128, 0.045464,
		39.931461, 38.917381, 15.178121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313503, 39.750019, 15.369941>,  <40.617954, 39.050468, 15.146296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313503, 39.750019, 15.369941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.081955, 39.431084, 15.438246>,  <39.943024, 39.239723, 15.479229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.081955, 39.431084, 15.438246>,  <40.313503, 39.750019, 15.369941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081955, 39.431084, 15.438246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175236, 0.326166, 0.928928,
		-0.796366, 0.507807, -0.328531,
		-0.578872, -0.797338, 0.170762,
		39.908295, 39.191883, 15.489474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819710, 40.032196, 15.713270>,  <40.313503, 39.750019, 15.369941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819710, 40.032196, 15.713270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783844, 39.644436, 15.804682>,  <39.762325, 39.411781, 15.859529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783844, 39.644436, 15.804682>,  <39.819710, 40.032196, 15.713270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783844, 39.644436, 15.804682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125120, 0.238598, 0.963024,
		-0.988081, 0.057756, -0.142685,
		-0.089665, -0.969399, 0.228528,
		39.756943, 39.353615, 15.873240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286858, 39.951496, 16.213585>,  <39.819710, 40.032196, 15.713270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286858, 39.951496, 16.213585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465828, 39.599304, 16.276289>,  <39.573208, 39.387989, 16.313911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465828, 39.599304, 16.276289>,  <39.286858, 39.951496, 16.213585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465828, 39.599304, 16.276289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162652, 0.092247, 0.982362,
		-0.879407, -0.465029, -0.101938,
		0.447424, -0.880476, 0.156761,
		39.600056, 39.335163, 16.323317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901630, 39.595718, 16.739027>,  <39.286858, 39.951496, 16.213585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901630, 39.595718, 16.739027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.247883, 39.396774, 16.762072>,  <39.455635, 39.277409, 16.775898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.247883, 39.396774, 16.762072>,  <38.901630, 39.595718, 16.739027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247883, 39.396774, 16.762072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051180, 0.026568, 0.998336,
		-0.498064, -0.867137, -0.002457,
		0.865628, -0.497360, 0.057612,
		39.507572, 39.247566, 16.779356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816978, 38.850723, 17.132959>,  <38.901630, 39.595718, 16.739027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816978, 38.850723, 17.132959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.192429, 38.985676, 17.161671>,  <39.417698, 39.066647, 17.178898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.192429, 38.985676, 17.161671>,  <38.816978, 38.850723, 17.132959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192429, 38.985676, 17.161671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123199, 0.133544, 0.983356,
		0.322176, -0.931849, 0.166913,
		0.938629, 0.337377, 0.071778,
		39.474018, 39.086887, 17.183205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920788, 38.187187, 17.065779>,  <38.816978, 38.850723, 17.132959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920788, 38.187187, 17.065779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.748665, 37.829227, 17.113085>,  <38.645390, 37.614452, 17.141468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.748665, 37.829227, 17.113085>,  <38.920788, 38.187187, 17.065779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748665, 37.829227, 17.113085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040195, -0.149883, -0.987886,
		0.901785, -0.420344, 0.100467,
		-0.430311, -0.894900, 0.118266,
		38.619572, 37.560757, 17.148565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346867, 37.663792, 16.841234>,  <38.920788, 38.187187, 17.065779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346867, 37.663792, 16.841234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994125, 37.479965, 16.799026>,  <38.782482, 37.369667, 16.773703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994125, 37.479965, 16.799026>,  <39.346867, 37.663792, 16.841234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994125, 37.479965, 16.799026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171419, -0.103992, -0.979694,
		0.439265, -0.882033, 0.170484,
		-0.881851, -0.459570, -0.105517,
		38.729568, 37.342094, 16.767372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485638, 37.035759, 16.381294>,  <39.346867, 37.663792, 16.841234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485638, 37.035759, 16.381294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.094120, 37.116329, 16.366356>,  <38.859211, 37.164673, 16.357393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.094120, 37.116329, 16.366356>,  <39.485638, 37.035759, 16.381294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094120, 37.116329, 16.366356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058765, -0.450698, -0.890740,
		-0.196252, -0.869654, 0.452977,
		-0.978791, 0.201429, -0.037345,
		38.800484, 37.176758, 16.355152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148811, 36.541645, 16.056217>,  <39.485638, 37.035759, 16.381294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148811, 36.541645, 16.056217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.830730, 36.784130, 16.051243>,  <38.639881, 36.929623, 16.048258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.830730, 36.784130, 16.051243>,  <39.148811, 36.541645, 16.056217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830730, 36.784130, 16.051243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225228, -0.314365, -0.922197,
		-0.562957, -0.730535, 0.386521,
		-0.795206, 0.606212, -0.012437,
		38.592167, 36.965992, 16.047512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511448, 36.221622, 15.890571>,  <39.148811, 36.541645, 16.056217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511448, 36.221622, 15.890571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.425613, 36.590790, 15.762716>,  <38.374115, 36.812290, 15.686004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.425613, 36.590790, 15.762716>,  <38.511448, 36.221622, 15.890571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425613, 36.590790, 15.762716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355007, -0.378577, -0.854781,
		-0.909904, -0.069948, 0.408880,
		-0.214583, 0.922923, -0.319636,
		38.361237, 36.867668, 15.666825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854755, 36.153709, 15.590976>,  <38.511448, 36.221622, 15.890571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854755, 36.153709, 15.590976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.995506, 36.497898, 15.443593>,  <38.079956, 36.704411, 15.355164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.995506, 36.497898, 15.443593>,  <37.854755, 36.153709, 15.590976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995506, 36.497898, 15.443593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261328, -0.287673, -0.921386,
		-0.898826, 0.420506, 0.123640,
		0.351880, 0.860476, -0.368457,
		38.101070, 36.756042, 15.333055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285248, 36.354721, 15.203190>,  <37.854755, 36.153709, 15.590976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285248, 36.354721, 15.203190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.608028, 36.544548, 15.062549>,  <37.801697, 36.658443, 14.978164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.608028, 36.544548, 15.062549>,  <37.285248, 36.354721, 15.203190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608028, 36.544548, 15.062549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319993, -0.149082, -0.935617,
		-0.496427, 0.867505, 0.031555,
		0.806948, 0.474563, -0.351604,
		37.850113, 36.686916, 14.957067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588688, 36.702194, 15.293829>,  <37.285248, 36.354721, 15.203190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588688, 36.702194, 15.293829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226753, 36.544624, 15.229222>,  <36.009590, 36.450081, 15.190458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226753, 36.544624, 15.229222>,  <36.588688, 36.702194, 15.293829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226753, 36.544624, 15.229222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179863, 0.009831, 0.983643,
		-0.385892, 0.919091, -0.079747,
		-0.904841, -0.393923, -0.161517,
		35.955299, 36.426449, 15.180767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058098, 37.039490, 15.823012>,  <36.588688, 36.702194, 15.293829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058098, 37.039490, 15.823012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899254, 36.691372, 15.706464>,  <35.803947, 36.482502, 15.636535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899254, 36.691372, 15.706464>,  <36.058098, 37.039490, 15.823012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899254, 36.691372, 15.706464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423281, -0.108023, 0.899536,
		-0.814334, 0.480545, -0.325481,
		-0.397108, -0.870292, -0.291372,
		35.780121, 36.430283, 15.619052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302841, 37.096317, 15.879004>,  <36.058098, 37.039490, 15.823012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302841, 37.096317, 15.879004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.420746, 36.715302, 15.909445>,  <35.491489, 36.486694, 15.927709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.420746, 36.715302, 15.909445>,  <35.302841, 37.096317, 15.879004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420746, 36.715302, 15.909445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682015, -0.153931, 0.714955,
		-0.669306, -0.262644, -0.695017,
		0.294763, -0.952535, 0.076101,
		35.509174, 36.429543, 15.932275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768887, 36.729107, 16.161198>,  <35.302841, 37.096317, 15.879004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768887, 36.729107, 16.161198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075100, 36.474838, 16.200947>,  <35.258827, 36.322277, 16.224796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075100, 36.474838, 16.200947>,  <34.768887, 36.729107, 16.161198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075100, 36.474838, 16.200947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246220, -0.146754, 0.958039,
		-0.594418, -0.757880, -0.268861,
		0.765534, -0.635674, 0.099372,
		35.304760, 36.284138, 16.230759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406925, 36.148571, 16.466616>,  <34.768887, 36.729107, 16.161198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406925, 36.148571, 16.466616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797016, 36.117779, 16.549568>,  <35.031071, 36.099304, 16.599340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797016, 36.117779, 16.549568>,  <34.406925, 36.148571, 16.466616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797016, 36.117779, 16.549568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217089, -0.152940, 0.964096,
		-0.042502, -0.985232, -0.165864,
		0.975226, -0.076983, 0.207383,
		35.089584, 36.094685, 16.611782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476311, 35.520504, 16.833891>,  <34.406925, 36.148571, 16.466616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476311, 35.520504, 16.833891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785015, 35.761501, 16.915270>,  <34.970238, 35.906101, 16.964098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785015, 35.761501, 16.915270>,  <34.476311, 35.520504, 16.833891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785015, 35.761501, 16.915270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186076, -0.091968, 0.978222,
		0.608082, -0.792808, 0.041132,
		0.771759, 0.602493, 0.203447,
		35.016544, 35.942249, 16.976303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971901, 35.156979, 17.305546>,  <34.476311, 35.520504, 16.833891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971901, 35.156979, 17.305546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040359, 35.548679, 17.348951>,  <35.081432, 35.783699, 17.374994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040359, 35.548679, 17.348951>,  <34.971901, 35.156979, 17.305546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040359, 35.548679, 17.348951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065433, -0.098601, 0.992974,
		0.983071, -0.177039, 0.047201,
		0.171141, 0.979252, 0.108516,
		35.091702, 35.842457, 17.381506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.706348, 40.653809, 12.190344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104496, 40.635323, 12.224068>,  <35.343384, 40.624229, 12.244302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104496, 40.635323, 12.224068>,  <34.706348, 40.653809, 12.190344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104496, 40.635323, 12.224068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085020, -0.013597, 0.996286,
		-0.044894, -0.998839, -0.017463,
		0.995367, -0.046212, 0.084311,
		35.403107, 40.621460, 12.249361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952385, 40.004009, 12.496593>,  <34.706348, 40.653809, 12.190344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952385, 40.004009, 12.496593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.231808, 40.284817, 12.552017>,  <35.399460, 40.453300, 12.585272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.231808, 40.284817, 12.552017>,  <34.952385, 40.004009, 12.496593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231808, 40.284817, 12.552017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128611, -0.067308, 0.989409,
		0.703906, -0.708975, 0.043269,
		0.698553, 0.702015, 0.138560,
		35.441372, 40.495422, 12.593585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149944, 39.800583, 13.107826>,  <34.952385, 40.004009, 12.496593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149944, 39.800583, 13.107826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.319561, 40.161957, 13.082530>,  <35.421333, 40.378780, 13.067352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.319561, 40.161957, 13.082530>,  <35.149944, 39.800583, 13.107826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319561, 40.161957, 13.082530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019439, 0.078894, 0.996693,
		0.905432, -0.421414, 0.051017,
		0.424046, 0.903430, -0.063241,
		35.446774, 40.432987, 13.063558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661308, 39.822048, 13.591186>,  <35.149944, 39.800583, 13.107826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661308, 39.822048, 13.591186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.524025, 40.190716, 13.518807>,  <35.441654, 40.411915, 13.475381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.524025, 40.190716, 13.518807>,  <35.661308, 39.822048, 13.591186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524025, 40.190716, 13.518807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222122, 0.107538, 0.969070,
		0.912618, 0.372783, 0.167814,
		-0.343206, 0.921666, -0.180945,
		35.421062, 40.467216, 13.464524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071213, 40.366802, 13.942520>,  <35.661308, 39.822048, 13.591186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071213, 40.366802, 13.942520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.711617, 40.537689, 13.903966>,  <35.495857, 40.640221, 13.880834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.711617, 40.537689, 13.903966>,  <36.071213, 40.366802, 13.942520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711617, 40.537689, 13.903966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038372, 0.142399, 0.989065,
		0.436274, 0.892864, -0.111623,
		-0.898995, 0.427220, -0.096386,
		35.441917, 40.665855, 13.875051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026569, 40.974056, 14.430227>,  <36.071213, 40.366802, 13.942520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026569, 40.974056, 14.430227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.645634, 40.911270, 14.325608>,  <35.417072, 40.873600, 14.262836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.645634, 40.911270, 14.325608>,  <36.026569, 40.974056, 14.430227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645634, 40.911270, 14.325608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282232, 0.128147, 0.950749,
		-0.115717, 0.979255, -0.166340,
		-0.952342, -0.156964, -0.261548,
		35.359932, 40.864182, 14.247144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735992, 41.360718, 14.887259>,  <36.026569, 40.974056, 14.430227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735992, 41.360718, 14.887259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.447666, 41.117657, 14.753878>,  <35.274670, 40.971821, 14.673848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.447666, 41.117657, 14.753878>,  <35.735992, 41.360718, 14.887259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447666, 41.117657, 14.753878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498019, 0.119432, 0.858902,
		-0.482086, 0.785174, -0.388709,
		-0.720813, -0.607649, -0.333455,
		35.231422, 40.935364, 14.653841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181400, 41.729946, 15.032281>,  <35.735992, 41.360718, 14.887259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181400, 41.729946, 15.032281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.021381, 41.365089, 14.996571>,  <34.925369, 41.146175, 14.975144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.021381, 41.365089, 14.996571>,  <35.181400, 41.729946, 15.032281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021381, 41.365089, 14.996571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631636, 0.203812, 0.747995,
		-0.664079, 0.355620, -0.657673,
		-0.400044, -0.912138, -0.089276,
		34.901367, 41.091450, 14.969788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439701, 41.763870, 15.077928>,  <35.181400, 41.729946, 15.032281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439701, 41.763870, 15.077928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519478, 41.381180, 15.162681>,  <34.567345, 41.151566, 15.213532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519478, 41.381180, 15.162681>,  <34.439701, 41.763870, 15.077928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519478, 41.381180, 15.162681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640484, 0.036373, 0.767109,
		-0.741622, -0.288700, -0.605515,
		0.199440, -0.956729, 0.211883,
		34.579311, 41.094162, 15.226246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722618, 41.401627, 15.253470>,  <34.439701, 41.763870, 15.077928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722618, 41.401627, 15.253470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.048801, 41.221607, 15.399065>,  <34.244511, 41.113598, 15.486422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.048801, 41.221607, 15.399065>,  <33.722618, 41.401627, 15.253470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048801, 41.221607, 15.399065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427179, -0.043608, 0.903115,
		-0.390571, -0.891940, -0.227811,
		0.815459, -0.450047, 0.363986,
		34.293438, 41.086594, 15.508261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443283, 40.785217, 15.651532>,  <33.722618, 41.401627, 15.253470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443283, 40.785217, 15.651532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.807087, 40.893105, 15.778049>,  <34.025372, 40.957836, 15.853960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.807087, 40.893105, 15.778049>,  <33.443283, 40.785217, 15.651532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807087, 40.893105, 15.778049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343019, 0.057201, 0.937585,
		0.234791, -0.961239, 0.144543,
		0.909512, 0.269718, 0.316293,
		34.079941, 40.974018, 15.872937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551552, 40.394005, 16.221514>,  <33.443283, 40.785217, 15.651532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551552, 40.394005, 16.221514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812130, 40.694881, 16.261168>,  <33.968479, 40.875408, 16.284960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812130, 40.694881, 16.261168>,  <33.551552, 40.394005, 16.221514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812130, 40.694881, 16.261168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267961, 0.105867, 0.957595,
		0.709797, -0.650388, 0.270524,
		0.651448, 0.752189, 0.099134,
		34.007565, 40.920540, 16.290909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675011, 39.570034, 16.205013>,  <33.551552, 40.394005, 16.221514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675011, 39.570034, 16.205013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.345551, 39.356823, 16.282452>,  <33.147873, 39.228897, 16.328915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.345551, 39.356823, 16.282452>,  <33.675011, 39.570034, 16.205013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345551, 39.356823, 16.282452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104041, -0.477622, -0.872383,
		0.557467, -0.698400, 0.448852,
		-0.823654, -0.533024, 0.193596,
		33.098454, 39.196915, 16.340530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757843, 38.886738, 16.019600>,  <33.675011, 39.570034, 16.205013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757843, 38.886738, 16.019600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.360439, 38.931026, 16.009113>,  <33.121998, 38.957600, 16.002821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.360439, 38.931026, 16.009113>,  <33.757843, 38.886738, 16.019600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360439, 38.931026, 16.009113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030475, -0.480959, -0.876213,
		-0.109622, -0.869724, 0.481210,
		-0.993506, 0.110717, -0.026218,
		33.062389, 38.964241, 16.001247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509159, 38.262356, 15.669126>,  <33.757843, 38.886738, 16.019600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509159, 38.262356, 15.669126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.183582, 38.492561, 15.637397>,  <32.988235, 38.630684, 15.618360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.183582, 38.492561, 15.637397>,  <33.509159, 38.262356, 15.669126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183582, 38.492561, 15.637397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213692, -0.423555, -0.880305,
		-0.540221, -0.699564, 0.467730,
		-0.813939, 0.575510, -0.079323,
		32.939400, 38.665215, 15.613600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908390, 37.813416, 15.480929>,  <33.509159, 38.262356, 15.669126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908390, 37.813416, 15.480929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.838184, 38.184731, 15.349791>,  <32.796059, 38.407520, 15.271108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.838184, 38.184731, 15.349791>,  <32.908390, 37.813416, 15.480929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838184, 38.184731, 15.349791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293816, -0.367232, -0.882504,
		-0.939610, -0.058567, 0.337200,
		-0.175516, 0.928284, -0.327847,
		32.785530, 38.463215, 15.251436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368057, 37.710876, 14.987443>,  <32.908390, 37.813416, 15.480929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368057, 37.710876, 14.987443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515015, 38.072254, 14.899073>,  <32.603191, 38.289082, 14.846050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515015, 38.072254, 14.899073>,  <32.368057, 37.710876, 14.987443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515015, 38.072254, 14.899073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304427, -0.107640, -0.946434,
		-0.878831, 0.414971, 0.235487,
		0.367395, 0.903445, -0.220926,
		32.625233, 38.343288, 14.832795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909512, 37.964024, 14.452114>,  <32.368057, 37.710876, 14.987443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909512, 37.964024, 14.452114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.228195, 38.205284, 14.436812>,  <32.419407, 38.350040, 14.427631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.228195, 38.205284, 14.436812>,  <31.909512, 37.964024, 14.452114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228195, 38.205284, 14.436812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065033, -0.148488, -0.986773,
		-0.600855, 0.783682, -0.157527,
		0.796708, 0.603153, -0.038255,
		32.467209, 38.386230, 14.425336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793257, 38.341560, 13.876458>,  <31.909512, 37.964024, 14.452114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793257, 38.341560, 13.876458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.187420, 38.370987, 13.937850>,  <32.423920, 38.388641, 13.974685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.187420, 38.370987, 13.937850>,  <31.793257, 38.341560, 13.876458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187420, 38.370987, 13.937850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167063, -0.245809, -0.954813,
		-0.032513, 0.966523, -0.254512,
		0.985410, 0.073563, 0.153479,
		32.483044, 38.393055, 13.983893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992029, 38.776981, 13.299643>,  <31.793257, 38.341560, 13.876458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992029, 38.776981, 13.299643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309898, 38.577831, 13.438562>,  <32.500622, 38.458344, 13.521914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309898, 38.577831, 13.438562>,  <31.992029, 38.776981, 13.299643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309898, 38.577831, 13.438562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283725, -0.201153, -0.937570,
		0.536649, 0.843601, -0.018593,
		0.794675, -0.497871, 0.347299,
		32.548302, 38.428471, 13.542752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468243, 38.811619, 12.751047>,  <31.992029, 38.776981, 13.299643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468243, 38.811619, 12.751047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.679310, 38.536278, 12.950142>,  <32.805950, 38.371075, 13.069599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.679310, 38.536278, 12.950142>,  <32.468243, 38.811619, 12.751047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679310, 38.536278, 12.950142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478009, -0.243756, -0.843855,
		0.702194, 0.683196, 0.200416,
		0.527666, -0.688351, 0.497737,
		32.837608, 38.329773, 13.099463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199673, 38.826286, 12.507985>,  <32.468243, 38.811619, 12.751047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199673, 38.826286, 12.507985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.143963, 38.460152, 12.659117>,  <33.110535, 38.240471, 12.749796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.143963, 38.460152, 12.659117>,  <33.199673, 38.826286, 12.507985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143963, 38.460152, 12.659117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467058, -0.397164, -0.790011,
		0.873189, 0.066436, 0.482833,
		-0.139279, -0.915340, 0.377829,
		33.102180, 38.185551, 12.772466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859257, 38.563774, 12.475385>,  <33.199673, 38.826286, 12.507985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859257, 38.563774, 12.475385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.613590, 38.249073, 12.500130>,  <33.466190, 38.060253, 12.514977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.613590, 38.249073, 12.500130>,  <33.859257, 38.563774, 12.475385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613590, 38.249073, 12.500130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528641, -0.468344, -0.707950,
		0.585952, -0.402095, 0.703549,
		-0.614166, -0.786749, 0.061863,
		33.429340, 38.013050, 12.518689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292282, 37.944519, 12.543296>,  <33.859257, 38.563774, 12.475385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292282, 37.944519, 12.543296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.933914, 37.837025, 12.401817>,  <33.718891, 37.772530, 12.316930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.933914, 37.837025, 12.401817>,  <34.292282, 37.944519, 12.543296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933914, 37.837025, 12.401817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443893, -0.511709, -0.735604,
		0.016693, -0.816049, 0.577742,
		-0.895924, -0.268736, -0.353696,
		33.665138, 37.756405, 12.295709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188343, 37.191181, 12.503881>,  <34.292282, 37.944519, 12.543296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188343, 37.191181, 12.503881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.936359, 37.334248, 12.228133>,  <33.785172, 37.420086, 12.062684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.936359, 37.334248, 12.228133>,  <34.188343, 37.191181, 12.503881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936359, 37.334248, 12.228133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541545, -0.433948, -0.720013,
		-0.556674, -0.826901, 0.079677,
		-0.629955, 0.357664, -0.689372,
		33.747372, 37.441547, 12.021321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117466, 36.626656, 12.003593>,  <34.188343, 37.191181, 12.503881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117466, 36.626656, 12.003593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.935120, 36.920292, 11.802279>,  <33.825710, 37.096474, 11.681489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.935120, 36.920292, 11.802279>,  <34.117466, 36.626656, 12.003593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935120, 36.920292, 11.802279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420049, -0.321085, -0.848801,
		-0.784695, -0.598344, -0.161983,
		-0.455865, 0.734091, -0.503288,
		33.798359, 37.140518, 11.651292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045864, 36.469772, 12.722269>,  <34.117466, 36.626656, 12.003593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045864, 36.469772, 12.722269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.344093, 36.224297, 12.618349>,  <34.523033, 36.077011, 12.555997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.344093, 36.224297, 12.618349>,  <34.045864, 36.469772, 12.722269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344093, 36.224297, 12.618349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369968, 0.056913, 0.927300,
		-0.554292, -0.787490, 0.269480,
		0.745576, -0.613693, -0.259800,
		34.567768, 36.040188, 12.540409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203362, 36.119576, 13.423200>,  <34.045864, 36.469772, 12.722269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203362, 36.119576, 13.423200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.514999, 36.035469, 13.186960>,  <34.701981, 35.985004, 13.045217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.514999, 36.035469, 13.186960>,  <34.203362, 36.119576, 13.423200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514999, 36.035469, 13.186960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563286, -0.178745, 0.806697,
		-0.275187, -0.961165, -0.020818,
		0.779090, -0.210266, -0.590599,
		34.748726, 35.972389, 13.009781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549313, 35.370354, 13.575120>,  <34.203362, 36.119576, 13.423200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549313, 35.370354, 13.575120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.815903, 35.628960, 13.426618>,  <34.975857, 35.784122, 13.337517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.815903, 35.628960, 13.426618>,  <34.549313, 35.370354, 13.575120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815903, 35.628960, 13.426618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476846, 0.013126, 0.878889,
		0.573088, -0.762788, -0.299540,
		0.666474, 0.646515, -0.371255,
		35.015846, 35.822914, 13.315241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059032, 35.252216, 13.944626>,  <34.549313, 35.370354, 13.575120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059032, 35.252216, 13.944626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163521, 35.604294, 13.786124>,  <35.226215, 35.815540, 13.691024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163521, 35.604294, 13.786124>,  <35.059032, 35.252216, 13.944626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163521, 35.604294, 13.786124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402698, 0.273706, 0.873452,
		0.877267, -0.387734, -0.282956,
		0.261221, 0.880197, -0.396254,
		35.241886, 35.868355, 13.667248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798756, 35.207600, 14.053094>,  <35.059032, 35.252216, 13.944626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798756, 35.207600, 14.053094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.714901, 35.595535, 14.003349>,  <35.664589, 35.828297, 13.973502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.714901, 35.595535, 14.003349>,  <35.798756, 35.207600, 14.053094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714901, 35.595535, 14.003349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440140, 0.207174, 0.873702,
		0.873114, 0.128424, -0.470296,
		-0.209637, 0.969838, -0.124362,
		35.652008, 35.886486, 13.966041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368855, 35.569180, 14.174385>,  <35.798756, 35.207600, 14.053094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368855, 35.569180, 14.174385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.064304, 35.806114, 14.279802>,  <35.881577, 35.948273, 14.343053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.064304, 35.806114, 14.279802>,  <36.368855, 35.569180, 14.174385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064304, 35.806114, 14.279802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321827, -0.007570, 0.946768,
		0.562797, 0.805658, -0.184865,
		-0.761372, 0.592333, 0.263543,
		35.835892, 35.983814, 14.358865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652206, 36.179199, 14.655148>,  <36.368855, 35.569180, 14.174385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652206, 36.179199, 14.655148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.257866, 36.230621, 14.698193>,  <36.021263, 36.261475, 14.724019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.257866, 36.230621, 14.698193>,  <36.652206, 36.179199, 14.655148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257866, 36.230621, 14.698193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130190, 0.182623, 0.974525,
		0.105626, 0.974743, -0.196774,
		-0.985847, 0.128553, 0.107612,
		35.962112, 36.269188, 14.730476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978382, 36.955658, 14.565567>,  <36.652206, 36.179199, 14.655148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978382, 36.955658, 14.565567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.373386, 36.918964, 14.514334>,  <37.610390, 36.896946, 14.483594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.373386, 36.918964, 14.514334>,  <36.978382, 36.955658, 14.565567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373386, 36.918964, 14.514334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134030, -0.061873, -0.989044,
		0.082808, 0.993859, -0.073396,
		0.987511, -0.091738, -0.128083,
		37.669640, 36.891441, 14.475908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050133, 37.322681, 14.067307>,  <36.978382, 36.955658, 14.565567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050133, 37.322681, 14.067307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.387314, 37.107983, 14.081929>,  <37.589622, 36.979164, 14.090703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.387314, 37.107983, 14.081929>,  <37.050133, 37.322681, 14.067307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387314, 37.107983, 14.081929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012837, -0.087999, -0.996038,
		0.537840, 0.839140, -0.081069,
		0.842949, -0.536750, 0.036557,
		37.640198, 36.946957, 14.092896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284668, 37.518219, 13.520788>,  <37.050133, 37.322681, 14.067307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284668, 37.518219, 13.520788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.472721, 37.171352, 13.586506>,  <37.585552, 36.963234, 13.625937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.472721, 37.171352, 13.586506>,  <37.284668, 37.518219, 13.520788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472721, 37.171352, 13.586506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123882, -0.249143, -0.960511,
		0.873856, 0.431219, -0.224557,
		0.470137, -0.867167, 0.164295,
		37.613762, 36.911201, 13.635795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815830, 37.459599, 13.014869>,  <37.284668, 37.518219, 13.520788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815830, 37.459599, 13.014869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733829, 37.086029, 13.132008>,  <37.684631, 36.861889, 13.202291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733829, 37.086029, 13.132008>,  <37.815830, 37.459599, 13.014869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733829, 37.086029, 13.132008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089473, -0.280068, -0.955801,
		0.974664, -0.222139, -0.026148,
		-0.204997, -0.933925, 0.292848,
		37.672329, 36.805851, 13.219862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217499, 37.054245, 12.540990>,  <37.815830, 37.459599, 13.014869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217499, 37.054245, 12.540990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953262, 36.797195, 12.696248>,  <37.794720, 36.642967, 12.789403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953262, 36.797195, 12.696248>,  <38.217499, 37.054245, 12.540990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953262, 36.797195, 12.696248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250659, -0.298552, -0.920889,
		0.707667, -0.705621, 0.036141,
		-0.660589, -0.642624, 0.388145,
		37.755085, 36.604408, 12.812692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300083, 36.398163, 12.285679>,  <38.217499, 37.054245, 12.540990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300083, 36.398163, 12.285679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.922432, 36.355583, 12.410441>,  <37.695839, 36.330036, 12.485299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.922432, 36.355583, 12.410441>,  <38.300083, 36.398163, 12.285679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922432, 36.355583, 12.410441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269630, -0.294733, -0.916751,
		0.189517, -0.949632, 0.249564,
		-0.944131, -0.106450, 0.311906,
		37.639194, 36.323647, 12.504013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153992, 35.703819, 12.116519>,  <38.300083, 36.398163, 12.285679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153992, 35.703819, 12.116519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.793945, 35.875420, 12.146858>,  <37.577919, 35.978378, 12.165062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.793945, 35.875420, 12.146858>,  <38.153992, 35.703819, 12.116519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793945, 35.875420, 12.146858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211412, -0.277906, -0.937056,
		-0.380918, -0.859493, 0.340843,
		-0.900115, 0.429000, 0.075848,
		37.523911, 36.004120, 12.169613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714100, 35.156120, 11.895984>,  <38.153992, 35.703819, 12.116519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714100, 35.156120, 11.895984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.532757, 35.511169, 11.863505>,  <37.423950, 35.724201, 11.844018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.532757, 35.511169, 11.863505>,  <37.714100, 35.156120, 11.895984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532757, 35.511169, 11.863505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328036, -0.250857, -0.910749,
		-0.828772, -0.386256, 0.404900,
		-0.453354, 0.887625, -0.081197,
		37.396751, 35.777458, 11.839147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001625, 35.108860, 11.712534>,  <37.714100, 35.156120, 11.895984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001625, 35.108860, 11.712534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162949, 35.442310, 11.561588>,  <37.259743, 35.642380, 11.471021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162949, 35.442310, 11.561588>,  <37.001625, 35.108860, 11.712534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162949, 35.442310, 11.561588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328319, -0.253107, -0.910024,
		-0.854137, 0.490915, 0.171617,
		0.403307, 0.833630, -0.377365,
		37.283939, 35.692398, 11.448379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.961380, 40.553753, 26.805834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.115757, 40.816605, 26.546844>,  <38.208385, 40.974316, 26.391451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.115757, 40.816605, 26.546844>,  <37.961380, 40.553753, 26.805834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115757, 40.816605, 26.546844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473826, -0.460998, -0.750313,
		-0.791539, 0.596371, 0.133445,
		0.385947, 0.657132, -0.647474,
		38.231541, 41.013744, 26.352602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378250, 40.800102, 26.358177>,  <37.961380, 40.553753, 26.805834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378250, 40.800102, 26.358177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713341, 40.877636, 26.153963>,  <37.914394, 40.924156, 26.031435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713341, 40.877636, 26.153963>,  <37.378250, 40.800102, 26.358177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713341, 40.877636, 26.153963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427230, -0.349668, -0.833791,
		-0.340138, 0.916602, -0.210111,
		0.837723, 0.193838, -0.510536,
		37.964657, 40.935787, 26.000803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193127, 41.021641, 25.663345>,  <37.378250, 40.800102, 26.358177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193127, 41.021641, 25.663345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.577103, 40.939716, 25.586859>,  <37.807487, 40.890560, 25.540966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.577103, 40.939716, 25.586859>,  <37.193127, 41.021641, 25.663345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577103, 40.939716, 25.586859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255547, -0.360042, -0.897254,
		0.114923, 0.910177, -0.397958,
		0.959942, -0.204813, -0.191216,
		37.865086, 40.878273, 25.529493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279232, 41.163029, 24.991800>,  <37.193127, 41.021641, 25.663345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279232, 41.163029, 24.991800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569275, 40.909580, 25.099680>,  <37.743301, 40.757511, 25.164408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569275, 40.909580, 25.099680>,  <37.279232, 41.163029, 24.991800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569275, 40.909580, 25.099680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135343, -0.515130, -0.846359,
		0.675204, 0.577200, -0.459282,
		0.725108, -0.633625, 0.269698,
		37.786808, 40.719494, 25.180590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613083, 41.126171, 24.478352>,  <37.279232, 41.163029, 24.991800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613083, 41.126171, 24.478352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714767, 40.794292, 24.677141>,  <37.775780, 40.595165, 24.796415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714767, 40.794292, 24.677141>,  <37.613083, 41.126171, 24.478352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714767, 40.794292, 24.677141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068993, -0.528105, -0.846372,
		0.964684, 0.180872, -0.191495,
		0.254215, -0.829693, 0.496975,
		37.791031, 40.545383, 24.826233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078968, 40.796070, 24.108322>,  <37.613083, 41.126171, 24.478352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078968, 40.796070, 24.108322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953075, 40.497562, 24.342939>,  <37.877541, 40.318459, 24.483709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953075, 40.497562, 24.342939>,  <38.078968, 40.796070, 24.108322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953075, 40.497562, 24.342939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074885, -0.635542, -0.768426,
		0.946223, -0.197922, 0.255908,
		-0.314729, -0.746266, 0.586543,
		37.858658, 40.273682, 24.518902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544415, 40.289757, 24.041975>,  <38.078968, 40.796070, 24.108322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544415, 40.289757, 24.041975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197395, 40.120014, 24.145731>,  <37.989185, 40.018169, 24.207985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197395, 40.120014, 24.145731>,  <38.544415, 40.289757, 24.041975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197395, 40.120014, 24.145731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007140, -0.532115, -0.846642,
		0.497304, -0.732650, 0.464664,
		-0.867547, -0.424357, 0.259392,
		37.937130, 39.992706, 24.223549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661705, 39.573742, 23.979406>,  <38.544415, 40.289757, 24.041975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661705, 39.573742, 23.979406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267460, 39.540394, 24.038231>,  <38.030914, 39.520386, 24.073524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267460, 39.540394, 24.038231>,  <38.661705, 39.573742, 23.979406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267460, 39.540394, 24.038231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076943, -0.553369, -0.829375,
		0.150521, -0.828754, 0.538991,
		-0.985608, -0.083367, 0.147060,
		37.971779, 39.515385, 24.082350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544754, 38.950523, 23.813850>,  <38.661705, 39.573742, 23.979406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544754, 38.950523, 23.813850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172764, 39.096924, 23.827702>,  <37.949570, 39.184765, 23.836012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172764, 39.096924, 23.827702>,  <38.544754, 38.950523, 23.813850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172764, 39.096924, 23.827702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192564, -0.404705, -0.893942,
		-0.313168, -0.838008, 0.446842,
		-0.929971, 0.366000, 0.034629,
		37.893772, 39.206722, 23.838091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044914, 38.416100, 23.697018>,  <38.544754, 38.950523, 23.813850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044914, 38.416100, 23.697018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823322, 38.740952, 23.623743>,  <37.690369, 38.935863, 23.579779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.823322, 38.740952, 23.623743>,  <38.044914, 38.416100, 23.697018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823322, 38.740952, 23.623743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212071, -0.350430, -0.912263,
		-0.805069, -0.466524, 0.366359,
		-0.553977, 0.812129, -0.183185,
		37.657127, 38.984589, 23.568789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542480, 38.020473, 23.451323>,  <38.044914, 38.416100, 23.697018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542480, 38.020473, 23.451323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570942, 38.404305, 23.342403>,  <37.588020, 38.634602, 23.277052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570942, 38.404305, 23.342403>,  <37.542480, 38.020473, 23.451323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570942, 38.404305, 23.342403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292054, -0.240981, -0.925545,
		-0.953751, 0.145385, 0.263101,
		0.071158, 0.959579, -0.272296,
		37.592289, 38.692177, 23.260715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816536, 38.138023, 23.114380>,  <37.542480, 38.020473, 23.451323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816536, 38.138023, 23.114380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145683, 38.346134, 23.022993>,  <37.343170, 38.471001, 22.968161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145683, 38.346134, 23.022993>,  <36.816536, 38.138023, 23.114380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145683, 38.346134, 23.022993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052380, -0.469807, -0.881214,
		-0.565811, 0.713156, -0.413842,
		0.822869, 0.520278, -0.228467,
		37.392544, 38.502216, 22.954453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115665, 38.163696, 23.002274>,  <36.816536, 38.138023, 23.114380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115665, 38.163696, 23.002274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790039, 37.935352, 23.045017>,  <35.594662, 37.798347, 23.070663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790039, 37.935352, 23.045017>,  <36.115665, 38.163696, 23.002274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790039, 37.935352, 23.045017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090019, 0.305795, 0.947832,
		-0.573752, 0.761980, -0.300326,
		-0.814067, -0.570855, 0.106858,
		35.545818, 37.764095, 23.077074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601028, 38.565308, 23.351404>,  <36.115665, 38.163696, 23.002274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601028, 38.565308, 23.351404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544415, 38.174431, 23.414740>,  <35.510445, 37.939907, 23.452742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544415, 38.174431, 23.414740>,  <35.601028, 38.565308, 23.351404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544415, 38.174431, 23.414740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021849, 0.162993, 0.986385,
		-0.989692, 0.136147, -0.044419,
		-0.141533, -0.977188, 0.158338,
		35.501953, 37.881275, 23.462240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152168, 38.601898, 23.782829>,  <35.601028, 38.565308, 23.351404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152168, 38.601898, 23.782829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280315, 38.224846, 23.820385>,  <35.357204, 37.998615, 23.842918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280315, 38.224846, 23.820385>,  <35.152168, 38.601898, 23.782829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280315, 38.224846, 23.820385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066754, 0.076403, 0.994840,
		-0.944938, -0.324984, -0.038447,
		0.320369, -0.942628, 0.093890,
		35.376427, 37.942059, 23.848553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642200, 38.275555, 24.200386>,  <35.152168, 38.601898, 23.782829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642200, 38.275555, 24.200386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989208, 38.080696, 24.240578>,  <35.197414, 37.963779, 24.264692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989208, 38.080696, 24.240578>,  <34.642200, 38.275555, 24.200386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989208, 38.080696, 24.240578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181972, -0.122826, 0.975602,
		-0.462924, -0.864637, -0.195201,
		0.867518, -0.487151, 0.100480,
		35.249462, 37.934551, 24.270721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450569, 37.823009, 24.618559>,  <34.642200, 38.275555, 24.200386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450569, 37.823009, 24.618559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844006, 37.832455, 24.690107>,  <35.080067, 37.838123, 24.733036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844006, 37.832455, 24.690107>,  <34.450569, 37.823009, 24.618559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844006, 37.832455, 24.690107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175916, -0.094669, 0.979842,
		0.040070, -0.995229, -0.088962,
		0.983589, 0.023612, 0.178870,
		35.139084, 37.839539, 24.743769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627880, 37.235218, 24.960674>,  <34.450569, 37.823009, 24.618559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627880, 37.235218, 24.960674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932594, 37.473309, 25.062954>,  <35.115425, 37.616161, 25.124321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932594, 37.473309, 25.062954>,  <34.627880, 37.235218, 24.960674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932594, 37.473309, 25.062954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106319, -0.274481, 0.955697,
		0.639040, -0.755226, -0.145813,
		0.761790, 0.595226, 0.255700,
		35.161133, 37.651875, 25.139664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962402, 36.947174, 25.538383>,  <34.627880, 37.235218, 24.960674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962402, 36.947174, 25.538383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135410, 37.306751, 25.566172>,  <35.239216, 37.522499, 25.582844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135410, 37.306751, 25.566172>,  <34.962402, 36.947174, 25.538383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135410, 37.306751, 25.566172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032240, -0.061579, 0.997581,
		0.901046, -0.433718, 0.002347,
		0.432524, 0.898942, 0.069469,
		35.265167, 37.576435, 25.587011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469482, 36.893024, 26.094934>,  <34.962402, 36.947174, 25.538383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469482, 36.893024, 26.094934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362350, 37.275513, 26.047771>,  <35.298069, 37.505005, 26.019474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362350, 37.275513, 26.047771>,  <35.469482, 36.893024, 26.094934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362350, 37.275513, 26.047771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138425, 0.082920, 0.986895,
		0.953470, 0.280643, 0.110156,
		-0.267832, 0.956223, -0.117910,
		35.282001, 37.562378, 26.012398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818726, 37.229202, 26.601812>,  <35.469482, 36.893024, 26.094934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818726, 37.229202, 26.601812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.502907, 37.456955, 26.510225>,  <35.313416, 37.593605, 26.455273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.502907, 37.456955, 26.510225>,  <35.818726, 37.229202, 26.601812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502907, 37.456955, 26.510225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143688, 0.191210, 0.970975,
		0.596636, 0.799527, -0.069155,
		-0.789544, 0.569382, -0.228966,
		35.266045, 37.627769, 26.441536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778942, 37.800312, 27.180166>,  <35.818726, 37.229202, 26.601812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778942, 37.800312, 27.180166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424328, 37.837826, 26.998947>,  <35.211559, 37.860336, 26.890215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424328, 37.837826, 26.998947>,  <35.778942, 37.800312, 27.180166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424328, 37.837826, 26.998947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429728, 0.195893, 0.881453,
		0.171417, 0.976130, -0.133364,
		-0.886538, 0.093786, -0.453050,
		35.158367, 37.865963, 26.863031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534920, 38.519329, 27.179344>,  <35.778942, 37.800312, 27.180166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534920, 38.519329, 27.179344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204620, 38.302479, 27.117056>,  <35.006443, 38.172371, 27.079683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204620, 38.302479, 27.117056>,  <35.534920, 38.519329, 27.179344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204620, 38.302479, 27.117056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465810, 0.499745, 0.730258,
		-0.318067, 0.675543, -0.665187,
		-0.825745, -0.542122, -0.155722,
		34.956898, 38.139843, 27.070339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082878, 39.035515, 27.258692>,  <35.534920, 38.519329, 27.179344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082878, 39.035515, 27.258692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839409, 38.718151, 27.260336>,  <34.693329, 38.527733, 27.261322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839409, 38.718151, 27.260336>,  <35.082878, 39.035515, 27.258692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839409, 38.718151, 27.260336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703770, 0.542277, 0.458960,
		-0.366375, 0.276462, -0.888447,
		-0.608669, -0.793414, 0.004111,
		34.656807, 38.480125, 27.261570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365681, 39.243359, 27.026232>,  <35.082878, 39.035515, 27.258692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365681, 39.243359, 27.026232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.331413, 38.913612, 27.250046>,  <34.310852, 38.715763, 27.384335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.331413, 38.913612, 27.250046>,  <34.365681, 39.243359, 27.026232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331413, 38.913612, 27.250046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669964, 0.463338, 0.580057,
		-0.737434, -0.325175, -0.591990,
		-0.085672, -0.824366, 0.559537,
		34.305710, 38.666302, 27.417908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655769, 38.895432, 26.990526>,  <34.365681, 39.243359, 27.026232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655769, 38.895432, 26.990526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.808784, 38.812092, 27.350582>,  <33.900593, 38.762089, 27.566616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.808784, 38.812092, 27.350582>,  <33.655769, 38.895432, 26.990526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808784, 38.812092, 27.350582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815337, 0.382149, 0.434956,
		-0.434612, -0.900306, -0.023689,
		0.382541, -0.208352, 0.900140,
		33.923546, 38.749588, 27.620625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012688, 38.818951, 26.743116>,  <33.655769, 38.895432, 26.990526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012688, 38.818951, 26.743116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050114, 38.603966, 27.078348>,  <33.072571, 38.474976, 27.279488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050114, 38.603966, 27.078348>,  <33.012688, 38.818951, 26.743116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050114, 38.603966, 27.078348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902475, 0.309705, 0.299370,
		-0.420458, -0.784356, -0.456070,
		0.093565, -0.537464, 0.838080,
		33.078182, 38.442726, 27.329773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058113, 39.056278, 27.365150>,  <33.012688, 38.818951, 26.743116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058113, 39.056278, 27.365150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041172, 39.426449, 27.214529>,  <33.031010, 39.648552, 27.124157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041172, 39.426449, 27.214529>,  <33.058113, 39.056278, 27.365150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041172, 39.426449, 27.214529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382906, -0.363146, -0.849416,
		-0.922816, 0.108212, 0.369731,
		-0.042349, 0.925427, -0.376551,
		33.028469, 39.704079, 27.101564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347164, 39.316292, 27.058233>,  <33.058113, 39.056278, 27.365150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347164, 39.316292, 27.058233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632305, 39.508484, 26.853889>,  <32.803391, 39.623798, 26.731283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632305, 39.508484, 26.853889>,  <32.347164, 39.316292, 27.058233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632305, 39.508484, 26.853889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465704, -0.220333, -0.857073,
		-0.524366, 0.848877, 0.066696,
		0.712854, 0.480480, -0.510860,
		32.846161, 39.652626, 26.700632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054058, 39.540413, 26.399254>,  <32.347164, 39.316292, 27.058233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054058, 39.540413, 26.399254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443920, 39.613445, 26.347557>,  <32.677837, 39.657265, 26.316538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443920, 39.613445, 26.347557>,  <32.054058, 39.540413, 26.399254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443920, 39.613445, 26.347557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123564, -0.042194, -0.991439,
		-0.186471, 0.982285, -0.018564,
		0.974659, 0.182580, -0.129243,
		32.736317, 39.668221, 26.308784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011341, 39.967350, 25.912741>,  <32.054058, 39.540413, 26.399254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011341, 39.967350, 25.912741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398174, 39.865700, 25.907484>,  <32.630272, 39.804710, 25.904331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398174, 39.865700, 25.907484>,  <32.011341, 39.967350, 25.912741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398174, 39.865700, 25.907484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006669, 0.076932, -0.997014,
		0.254381, 0.964106, 0.076095,
		0.967081, -0.254129, -0.013140,
		32.688297, 39.789459, 25.903542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319752, 40.405186, 25.551254>,  <32.011341, 39.967350, 25.912741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319752, 40.405186, 25.551254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.552380, 40.082649, 25.508179>,  <32.691956, 39.889130, 25.482334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.552380, 40.082649, 25.508179>,  <32.319752, 40.405186, 25.551254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552380, 40.082649, 25.508179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000571, 0.132782, -0.991145,
		0.813498, 0.576356, 0.077682,
		0.581567, -0.806339, -0.107689,
		32.726849, 39.840748, 25.475872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810673, 40.465370, 24.980391>,  <32.319752, 40.405186, 25.551254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810673, 40.465370, 24.980391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803040, 40.068111, 25.026516>,  <32.798462, 39.829758, 25.054192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803040, 40.068111, 25.026516>,  <32.810673, 40.465370, 24.980391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803040, 40.068111, 25.026516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214646, -0.116713, -0.969693,
		0.976506, 0.006249, 0.215401,
		-0.019080, -0.993146, 0.115312,
		32.797314, 39.770168, 25.061110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274025, 40.295261, 24.506285>,  <32.810673, 40.465370, 24.980391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274025, 40.295261, 24.506285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080975, 39.952999, 24.581034>,  <32.965145, 39.747643, 24.625883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080975, 39.952999, 24.581034>,  <33.274025, 40.295261, 24.506285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080975, 39.952999, 24.581034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080125, -0.255608, -0.963455,
		0.872153, -0.450017, 0.191923,
		-0.482628, -0.855658, 0.186871,
		32.936188, 39.696301, 24.637094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667599, 39.870731, 24.109760>,  <33.274025, 40.295261, 24.506285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667599, 39.870731, 24.109760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310406, 39.702740, 24.174515>,  <33.096092, 39.601944, 24.213367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310406, 39.702740, 24.174515>,  <33.667599, 39.870731, 24.109760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310406, 39.702740, 24.174515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116964, -0.130792, -0.984486,
		0.434637, -0.898060, 0.067672,
		-0.892979, -0.419979, 0.161887,
		33.042511, 39.576748, 24.223082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706566, 39.280487, 23.708061>,  <33.667599, 39.870731, 24.109760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706566, 39.280487, 23.708061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.325817, 39.374725, 23.786482>,  <33.097366, 39.431267, 23.833534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.325817, 39.374725, 23.786482>,  <33.706566, 39.280487, 23.708061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325817, 39.374725, 23.786482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230426, -0.128300, -0.964595,
		-0.202100, -0.963345, 0.176413,
		-0.951872, 0.235595, 0.196050,
		33.040257, 39.445404, 23.845297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273891, 38.824768, 23.276310>,  <33.706566, 39.280487, 23.708061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273891, 38.824768, 23.276310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993576, 39.093781, 23.371475>,  <32.825386, 39.255188, 23.428574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993576, 39.093781, 23.371475>,  <33.273891, 38.824768, 23.276310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993576, 39.093781, 23.371475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376728, -0.065690, -0.923992,
		-0.605781, -0.737152, 0.299395,
		-0.700789, 0.672527, 0.237912,
		32.783340, 39.295540, 23.442848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664551, 38.680508, 22.969889>,  <33.273891, 38.824768, 23.276310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664551, 38.680508, 22.969889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596336, 39.070675, 23.025703>,  <32.555408, 39.304775, 23.059193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596336, 39.070675, 23.025703>,  <32.664551, 38.680508, 22.969889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596336, 39.070675, 23.025703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252878, 0.093542, -0.962965,
		-0.952350, -0.199503, 0.230711,
		-0.170533, 0.975422, 0.139535,
		32.545177, 39.363300, 23.067564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134453, 38.748318, 22.527657>,  <32.664551, 38.680508, 22.969889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134453, 38.748318, 22.527657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236034, 39.124897, 22.616365>,  <32.296986, 39.350845, 22.669590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236034, 39.124897, 22.616365>,  <32.134453, 38.748318, 22.527657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236034, 39.124897, 22.616365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259161, 0.287138, -0.922165,
		-0.931848, 0.176716, 0.316908,
		0.253958, 0.941447, 0.221771,
		32.312222, 39.407330, 22.682896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540356, 39.143906, 22.375069>,  <32.134453, 38.748318, 22.527657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540356, 39.143906, 22.375069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870319, 39.369205, 22.356016>,  <32.068298, 39.504387, 22.344585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870319, 39.369205, 22.356016>,  <31.540356, 39.143906, 22.375069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870319, 39.369205, 22.356016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280323, 0.334459, -0.899754,
		-0.490856, 0.755570, 0.433791,
		0.824912, 0.563251, -0.047632,
		32.117794, 39.538181, 22.341726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367493, 39.711414, 21.982750>,  <31.540356, 39.143906, 22.375069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367493, 39.711414, 21.982750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.767326, 39.704227, 21.973759>,  <32.007229, 39.699917, 21.968363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.767326, 39.704227, 21.973759>,  <31.367493, 39.711414, 21.982750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767326, 39.704227, 21.973759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021091, 0.074074, -0.997030,
		0.019576, 0.997091, 0.073664,
		0.999586, -0.017964, -0.022480,
		32.067204, 39.698837, 21.967014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602985, 40.207825, 21.580410>,  <31.367493, 39.711414, 21.982750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602985, 40.207825, 21.580410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920784, 39.964951, 21.576387>,  <32.111462, 39.819225, 21.573973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920784, 39.964951, 21.576387>,  <31.602985, 40.207825, 21.580410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920784, 39.964951, 21.576387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017673, 0.039675, -0.999056,
		0.607012, 0.793569, 0.042252,
		0.794496, -0.607186, -0.010058,
		32.159134, 39.782795, 21.573370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092392, 40.510242, 21.167639>,  <31.602985, 40.207825, 21.580410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092392, 40.510242, 21.167639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238167, 40.137867, 21.176880>,  <32.325630, 39.914440, 21.182425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238167, 40.137867, 21.176880>,  <32.092392, 40.510242, 21.167639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238167, 40.137867, 21.176880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091404, 0.011071, -0.995753,
		0.926733, 0.364998, 0.089126,
		0.364434, -0.930943, 0.023103,
		32.347496, 39.858585, 21.183811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578445, 40.498070, 20.737822>,  <32.092392, 40.510242, 21.167639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578445, 40.498070, 20.737822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.509365, 40.104176, 20.746441>,  <32.467918, 39.867840, 20.751614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.509365, 40.104176, 20.746441>,  <32.578445, 40.498070, 20.737822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509365, 40.104176, 20.746441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128505, -0.044217, -0.990723,
		0.976557, -0.168325, 0.134180,
		-0.172697, -0.984739, 0.021550,
		32.457558, 39.808754, 20.752905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140614, 40.254459, 20.377972>,  <32.578445, 40.498070, 20.737822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140614, 40.254459, 20.377972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885525, 39.946438, 20.370718>,  <32.732471, 39.761623, 20.366365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885525, 39.946438, 20.370718>,  <33.140614, 40.254459, 20.377972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885525, 39.946438, 20.370718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174881, -0.121818, -0.977025,
		0.750152, -0.626241, 0.212354,
		-0.637721, -0.770054, -0.018136,
		32.694210, 39.715424, 20.365276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502151, 39.743782, 20.073881>,  <33.140614, 40.254459, 20.377972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502151, 39.743782, 20.073881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124512, 39.623360, 20.020147>,  <32.897930, 39.551105, 19.987907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124512, 39.623360, 20.020147>,  <33.502151, 39.743782, 20.073881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124512, 39.623360, 20.020147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168716, -0.091153, -0.981441,
		0.283222, -0.949240, 0.136850,
		-0.944097, -0.301054, -0.134335,
		32.841282, 39.533043, 19.979847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502701, 39.165001, 19.593370>,  <33.502151, 39.743782, 20.073881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502701, 39.165001, 19.593370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125607, 39.296677, 19.571909>,  <32.899349, 39.375683, 19.559032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125607, 39.296677, 19.571909>,  <33.502701, 39.165001, 19.593370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125607, 39.296677, 19.571909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072921, -0.360398, -0.929944,
		-0.325460, -0.872783, 0.363766,
		-0.942740, 0.329186, -0.053651,
		32.842785, 39.395435, 19.555813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220921, 38.625435, 19.201752>,  <33.502701, 39.165001, 19.593370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220921, 38.625435, 19.201752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953506, 38.922894, 19.204321>,  <32.793056, 39.101368, 19.205862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953506, 38.922894, 19.204321>,  <33.220921, 38.625435, 19.201752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953506, 38.922894, 19.204321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362581, -0.318397, -0.875876,
		-0.649299, -0.587886, 0.482494,
		-0.668540, 0.743649, 0.006422,
		32.752945, 39.145988, 19.206247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579567, 38.382320, 18.836159>,  <33.220921, 38.625435, 19.201752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579567, 38.382320, 18.836159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547729, 38.780296, 18.811613>,  <32.528625, 39.019081, 18.796886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547729, 38.780296, 18.811613>,  <32.579567, 38.382320, 18.836159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547729, 38.780296, 18.811613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132890, -0.071599, -0.988541,
		-0.987930, -0.070526, 0.137916,
		-0.079592, 0.994937, -0.061362,
		32.523853, 39.078777, 18.793205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922987, 38.620277, 18.422647>,  <32.579567, 38.382320, 18.836159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922987, 38.620277, 18.422647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195496, 38.913078, 18.419981>,  <32.359001, 39.088760, 18.418381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195496, 38.913078, 18.419981>,  <31.922987, 38.620277, 18.422647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195496, 38.913078, 18.419981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062800, 0.049369, -0.996805,
		-0.729334, 0.679512, 0.079604,
		0.681270, 0.732002, -0.006667,
		32.399876, 39.132679, 18.417980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630775, 39.072540, 17.941141>,  <31.922987, 38.620277, 18.422647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630775, 39.072540, 17.941141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026665, 39.125881, 17.961798>,  <32.264198, 39.157887, 17.974192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026665, 39.125881, 17.961798>,  <31.630775, 39.072540, 17.941141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026665, 39.125881, 17.961798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049026, 0.022815, -0.998537,
		-0.134333, 0.990806, 0.016043,
		0.989723, 0.133350, 0.051640,
		32.323582, 39.165886, 17.977289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753012, 39.634747, 17.504196>,  <31.630775, 39.072540, 17.941141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753012, 39.634747, 17.504196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104420, 39.452133, 17.560455>,  <32.315266, 39.342564, 17.594212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104420, 39.452133, 17.560455>,  <31.753012, 39.634747, 17.504196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104420, 39.452133, 17.560455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262763, 0.215926, -0.940389,
		0.398951, 0.863106, 0.309655,
		0.878518, -0.456535, 0.140649,
		32.367973, 39.315174, 17.602650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432152, 40.201416, 17.425310>,  <31.753012, 39.634747, 17.504196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432152, 40.201416, 17.425310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538376, 39.825550, 17.339050>,  <32.602112, 39.600029, 17.287294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538376, 39.825550, 17.339050>,  <32.432152, 40.201416, 17.425310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538376, 39.825550, 17.339050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193206, 0.271013, -0.942987,
		0.944536, 0.208758, 0.253520,
		0.265564, -0.939666, -0.215649,
		32.618046, 39.543652, 17.274355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993999, 40.201363, 17.017452>,  <32.432152, 40.201416, 17.425310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993999, 40.201363, 17.017452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834679, 39.843842, 16.935020>,  <32.739086, 39.629330, 16.885561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834679, 39.843842, 16.935020>,  <32.993999, 40.201363, 17.017452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834679, 39.843842, 16.935020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057495, 0.199898, -0.978128,
		0.915450, -0.401440, -0.028231,
		-0.398303, -0.893804, -0.206078,
		32.715187, 39.575699, 16.873198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825310, 40.361984, 16.981318>,  <32.993999, 40.201363, 17.017452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825310, 40.361984, 16.981318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943146, 40.728615, 16.873167>,  <34.013847, 40.948593, 16.808277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943146, 40.728615, 16.873167>,  <33.825310, 40.361984, 16.981318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943146, 40.728615, 16.873167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191769, 0.333875, 0.922904,
		0.936185, -0.220027, 0.274126,
		0.294588, 0.916578, -0.270374,
		34.031521, 41.003590, 16.792055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476315, 40.642044, 17.396685>,  <33.825310, 40.361984, 16.981318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476315, 40.642044, 17.396685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325970, 40.991959, 17.274387>,  <34.235764, 41.201908, 17.201010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325970, 40.991959, 17.274387>,  <34.476315, 40.642044, 17.396685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325970, 40.991959, 17.274387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012578, 0.325088, 0.945600,
		0.926590, 0.359261, -0.111185,
		-0.375862, 0.874785, -0.305742,
		34.213211, 41.254395, 17.182665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019840, 41.183582, 17.618267>,  <34.476315, 40.642044, 17.396685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019840, 41.183582, 17.618267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669212, 41.364101, 17.551382>,  <34.458836, 41.472412, 17.511251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669212, 41.364101, 17.551382>,  <35.019840, 41.183582, 17.618267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669212, 41.364101, 17.551382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092751, 0.499332, 0.861432,
		0.472256, 0.739594, -0.479557,
		-0.876568, 0.451295, -0.167215,
		34.406242, 41.499489, 17.501217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067413, 41.882607, 17.775866>,  <35.019840, 41.183582, 17.618267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067413, 41.882607, 17.775866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672558, 41.819424, 17.785721>,  <34.435646, 41.781513, 17.791634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672558, 41.819424, 17.785721>,  <35.067413, 41.882607, 17.775866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672558, 41.819424, 17.785721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068379, 0.556480, 0.828043,
		-0.144504, 0.815708, -0.560124,
		-0.987139, -0.157956, 0.024636,
		34.376415, 41.772038, 17.793112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724773, 42.420696, 17.768799>,  <35.067413, 41.882607, 17.775866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724773, 42.420696, 17.768799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462543, 42.168209, 17.934587>,  <34.305206, 42.016716, 18.034060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462543, 42.168209, 17.934587>,  <34.724773, 42.420696, 17.768799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462543, 42.168209, 17.934587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008455, 0.554975, 0.831824,
		-0.755082, 0.541819, -0.369165,
		-0.655575, -0.631217, 0.414471,
		34.265869, 41.978844, 18.058929>
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
