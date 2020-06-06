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
	<23.851042, 34.922970, 34.821854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222349, 34.865189, 34.958939>,  <24.445133, 34.830521, 35.041191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222349, 34.865189, 34.958939>,  <23.851042, 34.922970, 34.821854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222349, 34.865189, 34.958939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009728, 0.930604, 0.365898,
		-0.371789, -0.336317, 0.865254,
		0.928266, -0.144454, 0.342717,
		24.500830, 34.821854, 35.061752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.817833, 35.197334, 35.468227>,  <23.851042, 34.922970, 34.821854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.817833, 35.197334, 35.468227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198236, 35.195431, 35.344578>,  <24.426479, 35.194290, 35.270390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198236, 35.195431, 35.344578>,  <23.817833, 35.197334, 35.468227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.198236, 35.195431, 35.344578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011713, 0.999718, 0.020644,
		0.308937, -0.023254, 0.950798,
		0.951010, -0.004759, -0.309123,
		24.483540, 35.194004, 35.251842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.409834, 34.949413, 35.883709>,  <23.817833, 35.197334, 35.468227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.409834, 34.949413, 35.883709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706234, 35.096836, 36.108238>,  <24.884073, 35.185291, 36.242954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706234, 35.096836, 36.108238>,  <24.409834, 34.949413, 35.883709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706234, 35.096836, 36.108238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106604, 0.760751, -0.640229,
		-0.662990, 0.534249, 0.524426,
		0.740999, 0.368560, 0.561323,
		24.928534, 35.207405, 36.276634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616198, 35.772720, 35.807953>,  <24.409834, 34.949413, 35.883709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616198, 35.772720, 35.807953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919582, 35.555172, 35.951588>,  <25.101614, 35.424644, 36.037769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919582, 35.555172, 35.951588>,  <24.616198, 35.772720, 35.807953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919582, 35.555172, 35.951588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640915, 0.522571, -0.562270,
		0.118153, 0.656604, 0.744924,
		0.758464, -0.543867, 0.359084,
		25.147121, 35.392014, 36.059311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119846, 36.291248, 36.036835>,  <24.616198, 35.772720, 35.807953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119846, 36.291248, 36.036835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226622, 35.933292, 35.893768>,  <25.290686, 35.718521, 35.807930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226622, 35.933292, 35.893768>,  <25.119846, 36.291248, 36.036835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226622, 35.933292, 35.893768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480800, 0.445306, -0.755337,
		0.835210, 0.029663, 0.549130,
		0.266936, -0.894887, -0.357662,
		25.306702, 35.664825, 35.786469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847651, 36.031128, 35.931717>,  <25.119846, 36.291248, 36.036835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847651, 36.031128, 35.931717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585705, 35.911240, 35.654205>,  <25.428537, 35.839306, 35.487698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585705, 35.911240, 35.654205>,  <25.847651, 36.031128, 35.931717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585705, 35.911240, 35.654205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408432, 0.632034, -0.658572,
		0.635876, -0.714633, -0.291480,
		-0.654862, -0.299720, -0.693774,
		25.389246, 35.821323, 35.446072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186649, 35.940056, 35.318649>,  <25.847651, 36.031128, 35.931717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186649, 35.940056, 35.318649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809223, 36.048939, 35.243187>,  <25.582767, 36.114269, 35.197910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809223, 36.048939, 35.243187>,  <26.186649, 35.940056, 35.318649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809223, 36.048939, 35.243187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328150, 0.691407, -0.643642,
		-0.044763, -0.669225, -0.741710,
		-0.943564, 0.272204, -0.188656,
		25.526154, 36.130600, 35.186588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553234, 36.508644, 35.009010>,  <26.186649, 35.940056, 35.318649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553234, 36.508644, 35.009010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908398, 36.631077, 35.146374>,  <27.121496, 36.704536, 35.228790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908398, 36.631077, 35.146374>,  <26.553234, 36.508644, 35.009010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908398, 36.631077, 35.146374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065820, 0.654293, -0.753371,
		-0.455282, 0.691530, 0.560808,
		0.887911, 0.306084, 0.343404,
		27.174770, 36.722900, 35.249393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546263, 37.179577, 34.949123>,  <26.553234, 36.508644, 35.009010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546263, 37.179577, 34.949123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937178, 37.133518, 35.020287>,  <27.171726, 37.105885, 35.062984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937178, 37.133518, 35.020287>,  <26.546263, 37.179577, 34.949123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937178, 37.133518, 35.020287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210712, 0.617546, -0.757785,
		-0.022613, 0.778061, 0.627781,
		0.977287, -0.115145, 0.177912,
		27.230364, 37.098976, 35.073662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871620, 37.884521, 34.963619>,  <26.546263, 37.179577, 34.949123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871620, 37.884521, 34.963619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149378, 37.607738, 34.884613>,  <27.316032, 37.441669, 34.837212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149378, 37.607738, 34.884613>,  <26.871620, 37.884521, 34.963619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149378, 37.607738, 34.884613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367886, 0.577266, -0.728988,
		0.618445, 0.433544, 0.655412,
		0.694395, -0.691956, -0.197513,
		27.357697, 37.400150, 34.825359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485111, 38.198502, 35.147434>,  <26.871620, 37.884521, 34.963619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485111, 38.198502, 35.147434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537516, 37.912804, 34.872425>,  <27.568958, 37.741386, 34.707420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537516, 37.912804, 34.872425>,  <27.485111, 38.198502, 35.147434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537516, 37.912804, 34.872425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200751, 0.698249, -0.687130,
		0.970843, -0.048001, 0.234862,
		0.131009, -0.714244, -0.687526,
		27.576818, 37.698532, 34.666168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033249, 38.404564, 34.751225>,  <27.485111, 38.198502, 35.147434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033249, 38.404564, 34.751225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910835, 38.116039, 34.502693>,  <27.837387, 37.942924, 34.353573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910835, 38.116039, 34.502693>,  <28.033249, 38.404564, 34.751225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910835, 38.116039, 34.502693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154433, 0.606389, -0.780027,
		0.939412, -0.334668, -0.074181,
		-0.306033, -0.721311, -0.621333,
		27.819025, 37.899647, 34.316292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455845, 38.389923, 34.154850>,  <28.033249, 38.404564, 34.751225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455845, 38.389923, 34.154850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157927, 38.171230, 34.001820>,  <27.979176, 38.040016, 33.910000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157927, 38.171230, 34.001820>,  <28.455845, 38.389923, 34.154850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157927, 38.171230, 34.001820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055464, 0.520622, -0.851984,
		0.664984, -0.655773, -0.357433,
		-0.744795, -0.546731, -0.382577,
		27.934488, 38.007210, 33.887047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697836, 38.100208, 33.537067>,  <28.455845, 38.389923, 34.154850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697836, 38.100208, 33.537067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298008, 38.103893, 33.525963>,  <28.058111, 38.106102, 33.519302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298008, 38.103893, 33.525963>,  <28.697836, 38.100208, 33.537067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298008, 38.103893, 33.525963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028929, 0.450915, -0.892098,
		0.004300, -0.892519, -0.450989,
		-0.999572, 0.009210, -0.027759,
		27.998137, 38.106655, 33.517635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540598, 37.986359, 32.818611>,  <28.697836, 38.100208, 33.537067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540598, 37.986359, 32.818611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212646, 38.139946, 32.988491>,  <28.015877, 38.232098, 33.090420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212646, 38.139946, 32.988491>,  <28.540598, 37.986359, 32.818611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212646, 38.139946, 32.988491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247453, 0.431283, -0.867619,
		-0.516302, -0.816435, -0.258586,
		-0.819877, 0.383966, 0.424701,
		27.966682, 38.255135, 33.115902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055893, 38.083435, 32.201687>,  <28.540598, 37.986359, 32.818611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055893, 38.083435, 32.201687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912533, 38.292179, 32.511322>,  <27.826517, 38.417423, 32.697105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912533, 38.292179, 32.511322>,  <28.055893, 38.083435, 32.201687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912533, 38.292179, 32.511322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333788, 0.702733, -0.628293,
		-0.871858, -0.483562, -0.077669,
		-0.358399, 0.521857, 0.774090,
		27.805014, 38.448734, 32.743549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431597, 38.260700, 31.979351>,  <28.055893, 38.083435, 32.201687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431597, 38.260700, 31.979351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537474, 38.512653, 32.271427>,  <27.601000, 38.663826, 32.446674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537474, 38.512653, 32.271427>,  <27.431597, 38.260700, 31.979351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537474, 38.512653, 32.271427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284248, 0.774520, -0.565085,
		-0.921488, -0.057981, 0.384055,
		0.264693, 0.629886, 0.730192,
		27.616882, 38.701618, 32.490486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943830, 38.855991, 32.024555>,  <27.431597, 38.260700, 31.979351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943830, 38.855991, 32.024555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292498, 38.969028, 32.184723>,  <27.501698, 39.036850, 32.280823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292498, 38.969028, 32.184723>,  <26.943830, 38.855991, 32.024555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292498, 38.969028, 32.184723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029336, 0.785467, -0.618208,
		-0.489220, 0.550618, 0.676375,
		0.871667, 0.282597, 0.400419,
		27.553997, 39.053806, 32.304848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789398, 39.492855, 32.353809>,  <26.943830, 38.855991, 32.024555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789398, 39.492855, 32.353809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181126, 39.456280, 32.281612>,  <27.416162, 39.434334, 32.238293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181126, 39.456280, 32.281612>,  <26.789398, 39.492855, 32.353809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181126, 39.456280, 32.281612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038563, 0.960063, -0.277114,
		0.198625, 0.264422, 0.943731,
		0.979316, -0.091434, -0.180496,
		27.474920, 39.428848, 32.227463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956390, 40.159252, 32.145523>,  <26.789398, 39.492855, 32.353809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956390, 40.159252, 32.145523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308676, 39.985123, 32.070869>,  <27.520048, 39.880646, 32.026077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308676, 39.985123, 32.070869>,  <26.956390, 40.159252, 32.145523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308676, 39.985123, 32.070869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317202, 0.834720, -0.450140,
		0.351744, 0.337245, 0.873236,
		0.880715, -0.435326, -0.186632,
		27.572891, 39.854527, 32.014881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465420, 40.594227, 32.409492>,  <26.956390, 40.159252, 32.145523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465420, 40.594227, 32.409492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608437, 40.378235, 32.104710>,  <27.694246, 40.248638, 31.921839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608437, 40.378235, 32.104710>,  <27.465420, 40.594227, 32.409492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608437, 40.378235, 32.104710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287598, 0.839907, -0.460265,
		0.888510, -0.054573, 0.455601,
		0.357544, -0.539980, -0.761961,
		27.715700, 40.216240, 31.876122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923571, 41.060043, 32.196098>,  <27.465420, 40.594227, 32.409492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923571, 41.060043, 32.196098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917862, 40.789936, 31.901125>,  <27.914436, 40.627872, 31.724140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917862, 40.789936, 31.901125>,  <27.923571, 41.060043, 32.196098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917862, 40.789936, 31.901125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025102, 0.737038, -0.675386,
		0.999583, -0.028150, 0.006432,
		-0.014271, -0.675265, -0.737437,
		27.913580, 40.587357, 31.679893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460752, 41.207787, 31.750341>,  <27.923571, 41.060043, 32.196098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460752, 41.207787, 31.750341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216654, 41.006611, 31.505507>,  <28.070194, 40.885906, 31.358606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216654, 41.006611, 31.505507>,  <28.460752, 41.207787, 31.750341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216654, 41.006611, 31.505507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026469, 0.759254, -0.650256,
		0.791769, -0.413018, -0.450020,
		-0.610247, -0.502941, -0.612086,
		28.033581, 40.855728, 31.321880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738903, 41.345459, 31.098799>,  <28.460752, 41.207787, 31.750341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738903, 41.345459, 31.098799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372063, 41.198837, 31.036104>,  <28.151958, 41.110867, 30.998487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372063, 41.198837, 31.036104>,  <28.738903, 41.345459, 31.098799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372063, 41.198837, 31.036104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131580, 0.649457, -0.748928,
		0.376313, -0.666219, -0.643848,
		-0.917101, -0.366549, -0.156738,
		28.096931, 41.088871, 30.989082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555624, 41.541367, 30.297003>,  <28.738903, 41.345459, 31.098799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555624, 41.541367, 30.297003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202074, 41.477272, 30.472771>,  <27.989944, 41.438816, 30.578232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202074, 41.477272, 30.472771>,  <28.555624, 41.541367, 30.297003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202074, 41.477272, 30.472771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375982, 0.802247, -0.463721,
		-0.278216, -0.575085, -0.769333,
		-0.883874, -0.160241, 0.439420,
		27.936913, 41.429199, 30.604597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953938, 41.658684, 29.913935>,  <28.555624, 41.541367, 30.297003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953938, 41.658684, 29.913935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737249, 41.755547, 30.235905>,  <27.607237, 41.813663, 30.429087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737249, 41.755547, 30.235905>,  <27.953938, 41.658684, 29.913935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737249, 41.755547, 30.235905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545562, 0.627204, -0.555857,
		-0.639456, -0.740253, -0.207657,
		-0.541718, 0.242157, 0.804923,
		27.574734, 41.828194, 30.477381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180567, 41.516136, 29.826717>,  <27.953938, 41.658684, 29.913935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180567, 41.516136, 29.826717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217142, 41.802914, 30.103163>,  <27.239088, 41.974979, 30.269030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217142, 41.802914, 30.103163>,  <27.180567, 41.516136, 29.826717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217142, 41.802914, 30.103163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382544, 0.666056, -0.640336,
		-0.919401, -0.205830, 0.335164,
		0.091438, 0.716941, 0.691112,
		27.244574, 42.017998, 30.310495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430296, 41.825005, 29.987400>,  <27.180567, 41.516136, 29.826717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430296, 41.825005, 29.987400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744291, 42.064930, 30.049395>,  <26.932690, 42.208885, 30.086592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744291, 42.064930, 30.049395>,  <26.430296, 41.825005, 29.987400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744291, 42.064930, 30.049395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370284, 0.654842, -0.658841,
		-0.496669, 0.459796, 0.736144,
		0.784990, 0.599809, 0.154985,
		26.979788, 42.244873, 30.095890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245905, 42.465508, 30.339930>,  <26.430296, 41.825005, 29.987400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245905, 42.465508, 30.339930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557079, 42.485622, 30.089397>,  <26.743784, 42.497692, 29.939079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557079, 42.485622, 30.089397>,  <26.245905, 42.465508, 30.339930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557079, 42.485622, 30.089397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496312, 0.660482, -0.563416,
		0.385346, 0.749156, 0.538771,
		0.777935, 0.050289, -0.626329,
		26.790461, 42.500710, 29.901499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428055, 43.178600, 30.238144>,  <26.245905, 42.465508, 30.339930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428055, 43.178600, 30.238144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549322, 42.968800, 29.919903>,  <26.622082, 42.842918, 29.728958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549322, 42.968800, 29.919903>,  <26.428055, 43.178600, 30.238144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549322, 42.968800, 29.919903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497719, 0.624811, -0.601570,
		0.812628, 0.578363, -0.071633,
		0.303169, -0.524506, -0.795602,
		26.640272, 42.811447, 29.681223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675547, 43.702499, 29.863363>,  <26.428055, 43.178600, 30.238144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675547, 43.702499, 29.863363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.607550, 43.393600, 29.618498>,  <26.566751, 43.208263, 29.471579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.607550, 43.393600, 29.618498>,  <26.675547, 43.702499, 29.863363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607550, 43.393600, 29.618498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480985, 0.607204, -0.632421,
		0.860091, 0.186933, -0.474658,
		-0.169993, -0.772243, -0.612163,
		26.556551, 43.161926, 29.434849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192352, 43.884045, 29.520809>,  <26.675547, 43.702499, 29.863363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192352, 43.884045, 29.520809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549593, 43.720287, 29.446222>,  <27.763937, 43.622032, 29.401470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549593, 43.720287, 29.446222>,  <27.192352, 43.884045, 29.520809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549593, 43.720287, 29.446222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051593, -0.318549, 0.946501,
		-0.446892, -0.854940, -0.263374,
		0.893099, -0.409395, -0.186466,
		27.817522, 43.597469, 29.390282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095833, 43.124554, 29.762583>,  <27.192352, 43.884045, 29.520809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095833, 43.124554, 29.762583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472073, 43.260201, 29.756012>,  <27.697817, 43.341587, 29.752069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472073, 43.260201, 29.756012>,  <27.095833, 43.124554, 29.762583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472073, 43.260201, 29.756012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140695, -0.345299, 0.927887,
		0.308991, -0.875082, -0.372500,
		0.940601, 0.339117, -0.016426,
		27.754253, 43.361935, 29.751083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540293, 42.599506, 29.995874>,  <27.095833, 43.124554, 29.762583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540293, 42.599506, 29.995874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672256, 42.964504, 30.092627>,  <27.751434, 43.183502, 30.150677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672256, 42.964504, 30.092627>,  <27.540293, 42.599506, 29.995874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672256, 42.964504, 30.092627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046690, -0.271684, 0.961253,
		0.942857, -0.305833, -0.132236,
		0.329910, 0.912499, 0.241879,
		27.771229, 43.238255, 30.165190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184462, 42.487396, 30.448153>,  <27.540293, 42.599506, 29.995874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184462, 42.487396, 30.448153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999878, 42.829754, 30.541531>,  <27.889128, 43.035168, 30.597557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999878, 42.829754, 30.541531>,  <28.184462, 42.487396, 30.448153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999878, 42.829754, 30.541531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357661, -0.061323, 0.931836,
		0.811870, 0.513499, -0.277822,
		-0.461460, 0.855896, 0.233445,
		27.861441, 43.086521, 30.611565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674854, 42.960472, 30.727947>,  <28.184462, 42.487396, 30.448153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674854, 42.960472, 30.727947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304960, 43.045998, 30.853899>,  <28.083023, 43.097313, 30.929470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304960, 43.045998, 30.853899>,  <28.674854, 42.960472, 30.727947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304960, 43.045998, 30.853899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308977, -0.061394, 0.949086,
		0.222260, 0.974943, -0.009291,
		-0.924734, 0.213815, 0.314881,
		28.027540, 43.110142, 30.948362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665684, 43.348648, 31.327408>,  <28.674854, 42.960472, 30.727947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665684, 43.348648, 31.327408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297491, 43.194321, 31.352253>,  <28.076576, 43.101723, 31.367159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297491, 43.194321, 31.352253>,  <28.665684, 43.348648, 31.327408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297491, 43.194321, 31.352253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107962, -0.098315, 0.989282,
		-0.375576, 0.917322, 0.132151,
		-0.920482, -0.385818, 0.062111,
		28.021347, 43.078575, 31.370886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440495, 43.662567, 31.881868>,  <28.665684, 43.348648, 31.327408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440495, 43.662567, 31.881868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201830, 43.343910, 31.843168>,  <28.058632, 43.152718, 31.819948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201830, 43.343910, 31.843168>,  <28.440495, 43.662567, 31.881868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201830, 43.343910, 31.843168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027910, -0.141087, 0.989604,
		-0.802008, 0.587758, 0.106415,
		-0.596661, -0.796640, -0.096748,
		28.022831, 43.104919, 31.814144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850718, 43.769165, 32.313675>,  <28.440495, 43.662567, 31.881868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850718, 43.769165, 32.313675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839327, 43.379723, 32.223087>,  <27.832493, 43.146057, 32.168736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839327, 43.379723, 32.223087>,  <27.850718, 43.769165, 32.313675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839327, 43.379723, 32.223087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150926, -0.219773, 0.963805,
		-0.988135, 0.061627, -0.140683,
		-0.028478, -0.973602, -0.226467,
		27.830784, 43.087643, 32.155148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239637, 43.476910, 32.589844>,  <27.850718, 43.769165, 32.313675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239637, 43.476910, 32.589844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525255, 43.200287, 32.546227>,  <27.696625, 43.034313, 32.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525255, 43.200287, 32.546227>,  <27.239637, 43.476910, 32.589844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525255, 43.200287, 32.546227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108112, -0.262802, 0.958773,
		-0.691704, -0.672817, -0.262418,
		0.714043, -0.691558, -0.109042,
		27.739468, 42.992821, 32.513515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017874, 42.893681, 33.073761>,  <27.239637, 43.476910, 32.589844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017874, 42.893681, 33.073761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390810, 42.778976, 32.985661>,  <27.614571, 42.710155, 32.932800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390810, 42.778976, 32.985661>,  <27.017874, 42.893681, 33.073761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390810, 42.778976, 32.985661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051975, -0.496525, 0.866465,
		-0.357829, -0.819287, -0.448026,
		0.932340, -0.286760, -0.220254,
		27.670511, 42.692947, 32.919586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001902, 42.275547, 33.303535>,  <27.017874, 42.893681, 33.073761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001902, 42.275547, 33.303535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391939, 42.362709, 33.287003>,  <27.625961, 42.415005, 33.277084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391939, 42.362709, 33.287003>,  <27.001902, 42.275547, 33.303535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391939, 42.362709, 33.287003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110174, -0.314153, 0.942958,
		0.192490, -0.924027, -0.330336,
		0.975094, 0.217905, -0.041332,
		27.684467, 42.428082, 33.274605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394352, 41.583122, 33.573116>,  <27.001902, 42.275547, 33.303535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394352, 41.583122, 33.573116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638075, 41.899147, 33.600098>,  <27.784309, 42.088760, 33.616287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638075, 41.899147, 33.600098>,  <27.394352, 41.583122, 33.573116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638075, 41.899147, 33.600098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260145, -0.279536, 0.924221,
		0.749044, -0.545589, -0.375854,
		0.609309, 0.790059, 0.067452,
		27.820868, 42.136166, 33.620335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037811, 41.305889, 33.686497>,  <27.394352, 41.583122, 33.573116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037811, 41.305889, 33.686497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049778, 41.684052, 33.816307>,  <28.056957, 41.910950, 33.894192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049778, 41.684052, 33.816307>,  <28.037811, 41.305889, 33.686497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049778, 41.684052, 33.816307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355750, -0.313479, 0.880439,
		0.934102, 0.089111, -0.345706,
		0.029915, 0.945405, 0.324523,
		28.058752, 41.967674, 33.913666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662333, 41.330555, 33.949814>,  <28.037811, 41.305889, 33.686497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662333, 41.330555, 33.949814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453060, 41.619678, 34.130402>,  <28.327497, 41.793152, 34.238754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453060, 41.619678, 34.130402>,  <28.662333, 41.330555, 33.949814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453060, 41.619678, 34.130402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369137, -0.285280, 0.884507,
		0.768127, 0.629412, -0.117564,
		-0.523181, 0.722811, 0.451470,
		28.296106, 41.836521, 34.265842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232382, 41.650280, 34.256908>,  <28.662333, 41.330555, 33.949814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232382, 41.650280, 34.256908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900469, 41.771702, 34.444233>,  <28.701321, 41.844555, 34.556629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900469, 41.771702, 34.444233>,  <29.232382, 41.650280, 34.256908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900469, 41.771702, 34.444233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384341, -0.297606, 0.873906,
		0.404648, 0.905144, 0.130281,
		-0.829784, 0.303553, 0.468310,
		28.651533, 41.862766, 34.584724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490486, 41.926765, 34.882889>,  <29.232382, 41.650280, 34.256908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490486, 41.926765, 34.882889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103592, 41.867649, 34.965466>,  <28.871456, 41.832180, 35.015011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103592, 41.867649, 34.965466>,  <29.490486, 41.926765, 34.882889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103592, 41.867649, 34.965466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253878, -0.569088, 0.782103,
		0.001896, 0.808887, 0.587961,
		-0.967234, -0.147787, 0.206438,
		28.813421, 41.823315, 35.027397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478687, 41.937725, 35.579151>,  <29.490486, 41.926765, 34.882889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478687, 41.937725, 35.579151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131687, 41.767643, 35.475887>,  <28.923487, 41.665592, 35.413929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131687, 41.767643, 35.475887>,  <29.478687, 41.937725, 35.579151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131687, 41.767643, 35.475887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175690, -0.747429, 0.640690,
		-0.465378, 0.510443, 0.723099,
		-0.867500, -0.425204, -0.258157,
		28.871437, 41.640083, 35.398441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112686, 41.770317, 36.138657>,  <29.478687, 41.937725, 35.579151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112686, 41.770317, 36.138657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002512, 41.507809, 35.857674>,  <28.936407, 41.350304, 35.689083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002512, 41.507809, 35.857674>,  <29.112686, 41.770317, 36.138657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002512, 41.507809, 35.857674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182792, -0.753143, 0.631951,
		-0.943781, 0.045657, 0.327402,
		-0.275433, -0.656271, -0.702457,
		28.919882, 41.310928, 35.646938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737980, 41.347057, 36.472282>,  <29.112686, 41.770317, 36.138657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737980, 41.347057, 36.472282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791142, 41.111546, 36.153366>,  <28.823038, 40.970238, 35.962017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791142, 41.111546, 36.153366>,  <28.737980, 41.347057, 36.472282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791142, 41.111546, 36.153366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178269, -0.777109, 0.603591,
		-0.974965, -0.222353, 0.001679,
		0.132906, -0.588779, -0.797292,
		28.831013, 40.934914, 35.914177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419334, 40.778934, 36.624485>,  <28.737980, 41.347057, 36.472282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419334, 40.778934, 36.624485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641708, 40.635353, 36.324596>,  <28.775133, 40.549206, 36.144661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641708, 40.635353, 36.324596>,  <28.419334, 40.778934, 36.624485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641708, 40.635353, 36.324596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108064, -0.863088, 0.493357,
		-0.824171, -0.355294, -0.441032,
		0.555936, -0.358951, -0.749726,
		28.808489, 40.527668, 36.099678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246729, 40.132805, 36.602352>,  <28.419334, 40.778934, 36.624485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246729, 40.132805, 36.602352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599064, 40.129650, 36.413010>,  <28.810465, 40.127758, 36.299404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599064, 40.129650, 36.413010>,  <28.246729, 40.132805, 36.602352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599064, 40.129650, 36.413010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234398, -0.861438, 0.450536,
		-0.411318, -0.507801, -0.756938,
		0.880838, -0.007889, -0.473352,
		28.863316, 40.127285, 36.271004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248178, 39.495213, 36.222427>,  <28.246729, 40.132805, 36.602352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248178, 39.495213, 36.222427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636843, 39.587772, 36.241749>,  <28.870041, 39.643307, 36.253342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636843, 39.587772, 36.241749>,  <28.248178, 39.495213, 36.222427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636843, 39.587772, 36.241749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214769, -0.949547, 0.228550,
		0.098752, -0.211699, -0.972333,
		0.971660, 0.231396, 0.048303,
		28.928341, 39.657192, 36.256241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557453, 39.082352, 35.779819>,  <28.248178, 39.495213, 36.222427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557453, 39.082352, 35.779819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862240, 39.182899, 36.018559>,  <29.045111, 39.243229, 36.161800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862240, 39.182899, 36.018559>,  <28.557453, 39.082352, 35.779819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862240, 39.182899, 36.018559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241495, -0.965412, 0.098287,
		0.600907, 0.069244, -0.796314,
		0.761966, 0.251368, 0.596844,
		29.090830, 39.258308, 36.197613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153133, 38.787987, 35.468456>,  <28.557453, 39.082352, 35.779819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153133, 38.787987, 35.468456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241398, 38.836014, 35.855629>,  <29.294357, 38.864830, 36.087933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241398, 38.836014, 35.855629>,  <29.153133, 38.787987, 35.468456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241398, 38.836014, 35.855629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229986, -0.970816, 0.067991,
		0.947847, 0.207608, -0.241836,
		0.220663, 0.120063, 0.967932,
		29.307596, 38.872032, 36.146008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758684, 38.510952, 35.558552>,  <29.153133, 38.787987, 35.468456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758684, 38.510952, 35.558552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642466, 38.521828, 35.941143>,  <29.572735, 38.528355, 36.170696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642466, 38.521828, 35.941143>,  <29.758684, 38.510952, 35.558552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642466, 38.521828, 35.941143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438544, -0.884646, 0.158368,
		0.850448, 0.465469, 0.245107,
		-0.290549, 0.027194, 0.956474,
		29.555302, 38.529987, 36.228085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322762, 38.194096, 35.997375>,  <29.758684, 38.510952, 35.558552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322762, 38.194096, 35.997375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983660, 38.157871, 36.206413>,  <29.780199, 38.136135, 36.331837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983660, 38.157871, 36.206413>,  <30.322762, 38.194096, 35.997375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983660, 38.157871, 36.206413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298488, -0.895936, 0.328942,
		0.438424, 0.434852, 0.786567,
		-0.847755, -0.090565, 0.522599,
		29.729334, 38.130703, 36.363194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495317, 37.853886, 36.657589>,  <30.322762, 38.194096, 35.997375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495317, 37.853886, 36.657589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101992, 37.782883, 36.641693>,  <29.865995, 37.740280, 36.632156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101992, 37.782883, 36.641693>,  <30.495317, 37.853886, 36.657589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101992, 37.782883, 36.641693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152876, -0.924830, 0.348309,
		-0.098576, 0.336423, 0.936537,
		-0.983316, -0.177509, -0.039735,
		29.806997, 37.729630, 36.629772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221062, 37.738819, 37.328255>,  <30.495317, 37.853886, 36.657589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221062, 37.738819, 37.328255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995449, 37.561283, 37.049725>,  <29.860081, 37.454762, 36.882607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995449, 37.561283, 37.049725>,  <30.221062, 37.738819, 37.328255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995449, 37.561283, 37.049725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063589, -0.864106, 0.499277,
		-0.823301, 0.237330, 0.515607,
		-0.564033, -0.443842, -0.696327,
		29.826239, 37.428131, 36.840828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429659, 37.448662, 37.510525>,  <30.221062, 37.738819, 37.328255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429659, 37.448662, 37.510525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670277, 37.264790, 37.249191>,  <29.814648, 37.154469, 37.092392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670277, 37.264790, 37.249191>,  <29.429659, 37.448662, 37.510525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670277, 37.264790, 37.249191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159699, -0.732139, 0.662169,
		-0.782712, -0.502662, -0.367006,
		0.601546, -0.459677, -0.653329,
		29.850740, 37.126884, 37.053192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235661, 36.697437, 37.545357>,  <29.429659, 37.448662, 37.510525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235661, 36.697437, 37.545357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606405, 36.805099, 37.440678>,  <29.828852, 36.869698, 37.377872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606405, 36.805099, 37.440678>,  <29.235661, 36.697437, 37.545357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606405, 36.805099, 37.440678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374953, -0.629490, 0.680553,
		0.018442, -0.728901, -0.684371,
		0.926861, 0.269158, -0.261695,
		29.884464, 36.885845, 37.362167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686617, 36.285454, 37.226994>,  <29.235661, 36.697437, 37.545357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686617, 36.285454, 37.226994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892851, 36.535530, 37.461365>,  <30.016590, 36.685577, 37.601986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892851, 36.535530, 37.461365>,  <29.686617, 36.285454, 37.226994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892851, 36.535530, 37.461365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224932, -0.758594, 0.611506,
		0.826789, -0.183489, -0.531744,
		0.515583, 0.625193, 0.585925,
		30.047525, 36.723087, 37.637142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448830, 36.072639, 37.285183>,  <29.686617, 36.285454, 37.226994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448830, 36.072639, 37.285183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297499, 36.258457, 37.605450>,  <30.206699, 36.369949, 37.797611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297499, 36.258457, 37.605450>,  <30.448830, 36.072639, 37.285183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297499, 36.258457, 37.605450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474186, -0.645593, 0.598630,
		0.794994, 0.606143, 0.023966,
		-0.378328, 0.464543, 0.800667,
		30.184000, 36.397820, 37.845650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013792, 36.251949, 37.846451>,  <30.448830, 36.072639, 37.285183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013792, 36.251949, 37.846451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666241, 36.194660, 38.035992>,  <30.457710, 36.160286, 38.149715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666241, 36.194660, 38.035992>,  <31.013792, 36.251949, 37.846451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666241, 36.194660, 38.035992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441686, -0.656532, 0.611456,
		0.223521, 0.740575, 0.633709,
		-0.868879, -0.143227, 0.473851,
		30.405577, 36.151691, 38.178146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191334, 36.311035, 38.549637>,  <31.013792, 36.251949, 37.846451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191334, 36.311035, 38.549637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857212, 36.099117, 38.490879>,  <30.656738, 35.971966, 38.455624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857212, 36.099117, 38.490879>,  <31.191334, 36.311035, 38.549637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857212, 36.099117, 38.490879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432349, -0.798047, 0.419756,
		-0.339615, 0.287114, 0.895671,
		-0.835306, -0.529798, -0.146895,
		30.606621, 35.940178, 38.446812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862925, 36.603661, 38.788052>,  <31.191334, 36.311035, 38.549637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862925, 36.603661, 38.788052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255856, 36.537449, 38.823002>,  <32.491615, 36.497723, 38.843971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255856, 36.537449, 38.823002>,  <31.862925, 36.603661, 38.788052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255856, 36.537449, 38.823002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054024, 0.196190, 0.979077,
		-0.179206, -0.966494, 0.183781,
		0.982327, -0.165528, 0.087372,
		32.550552, 36.487789, 38.849213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053463, 36.131489, 39.395317>,  <31.862925, 36.603661, 38.788052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053463, 36.131489, 39.395317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391285, 36.327305, 39.308525>,  <32.593979, 36.444794, 39.256451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391285, 36.327305, 39.308525>,  <32.053463, 36.131489, 39.395317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391285, 36.327305, 39.308525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129338, 0.206712, 0.969815,
		0.519619, -0.847123, 0.111262,
		0.844552, 0.489543, -0.216976,
		32.644650, 36.474167, 39.243431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511654, 35.962406, 39.868954>,  <32.053463, 36.131489, 39.395317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511654, 35.962406, 39.868954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710995, 36.281242, 39.732548>,  <32.830597, 36.472546, 39.650703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710995, 36.281242, 39.732548>,  <32.511654, 35.962406, 39.868954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710995, 36.281242, 39.732548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362708, 0.165573, 0.917076,
		0.787459, -0.580710, -0.206600,
		0.498348, 0.797095, -0.341010,
		32.860500, 36.520370, 39.630245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088512, 35.993343, 40.211002>,  <32.511654, 35.962406, 39.868954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088512, 35.993343, 40.211002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080017, 36.370819, 40.078938>,  <33.074921, 36.597305, 39.999699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080017, 36.370819, 40.078938>,  <33.088512, 35.993343, 40.211002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080017, 36.370819, 40.078938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222988, 0.326390, 0.918556,
		0.974590, -0.054111, -0.217363,
		-0.021241, 0.943685, -0.330163,
		33.073647, 36.653923, 39.979889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673557, 36.308399, 40.514065>,  <33.088512, 35.993343, 40.211002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673557, 36.308399, 40.514065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456760, 36.629097, 40.413315>,  <33.326683, 36.821518, 40.352863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456760, 36.629097, 40.413315>,  <33.673557, 36.308399, 40.514065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456760, 36.629097, 40.413315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343525, 0.484897, 0.804280,
		0.766963, 0.349390, -0.538232,
		-0.541994, 0.801749, -0.251874,
		33.294163, 36.869621, 40.337753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064884, 36.925133, 40.693325>,  <33.673557, 36.308399, 40.514065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064884, 36.925133, 40.693325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694042, 37.071823, 40.662346>,  <33.471539, 37.159836, 40.643757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694042, 37.071823, 40.662346>,  <34.064884, 36.925133, 40.693325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694042, 37.071823, 40.662346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186720, 0.631060, 0.752927,
		0.324990, 0.683578, -0.653531,
		-0.927101, 0.366721, -0.077450,
		33.415913, 37.181839, 40.639111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124527, 37.667282, 40.475979>,  <34.064884, 36.925133, 40.693325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124527, 37.667282, 40.475979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782383, 37.597828, 40.671204>,  <33.577095, 37.556152, 40.788338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782383, 37.597828, 40.671204>,  <34.124527, 37.667282, 40.475979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782383, 37.597828, 40.671204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179253, 0.784735, 0.593346,
		-0.486026, 0.595013, -0.640108,
		-0.855363, -0.173640, 0.488060,
		33.525772, 37.545734, 40.817623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992519, 38.325024, 40.750683>,  <34.124527, 37.667282, 40.475979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992519, 38.325024, 40.750683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747555, 38.070942, 40.938923>,  <33.600574, 37.918491, 41.051868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747555, 38.070942, 40.938923>,  <33.992519, 38.325024, 40.750683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747555, 38.070942, 40.938923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080253, 0.542262, 0.836368,
		-0.786455, 0.549969, -0.281111,
		-0.612412, -0.635206, 0.470601,
		33.563831, 37.880379, 41.080105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481560, 38.686417, 41.197502>,  <33.992519, 38.325024, 40.750683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481560, 38.686417, 41.197502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481514, 38.318951, 41.355515>,  <33.481487, 38.098473, 41.450321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481514, 38.318951, 41.355515>,  <33.481560, 38.686417, 41.197502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481514, 38.318951, 41.355515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087981, 0.393512, 0.915100,
		-0.996122, -0.034651, -0.080871,
		-0.000115, -0.918666, 0.395035,
		33.481480, 38.043350, 41.474026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983223, 38.764877, 41.864235>,  <33.481560, 38.686417, 41.197502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983223, 38.764877, 41.864235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162434, 38.409710, 41.905952>,  <33.269958, 38.196609, 41.930984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162434, 38.409710, 41.905952>,  <32.983223, 38.764877, 41.864235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162434, 38.409710, 41.905952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142143, 0.185922, 0.972229,
		-0.882648, -0.420758, 0.209509,
		0.448026, -0.887916, 0.104295,
		33.296841, 38.143333, 41.937241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780735, 38.426888, 42.494389>,  <32.983223, 38.764877, 41.864235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780735, 38.426888, 42.494389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129078, 38.241173, 42.429832>,  <33.338085, 38.129745, 42.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129078, 38.241173, 42.429832>,  <32.780735, 38.426888, 42.494389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129078, 38.241173, 42.429832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312525, 0.269586, 0.910852,
		-0.379389, -0.843660, 0.379872,
		0.870858, -0.464286, -0.161387,
		33.390335, 38.101887, 42.381416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881081, 37.926319, 42.974743>,  <32.780735, 38.426888, 42.494389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881081, 37.926319, 42.974743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253563, 38.003918, 42.851315>,  <33.477055, 38.050476, 42.777260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253563, 38.003918, 42.851315>,  <32.881081, 37.926319, 42.974743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253563, 38.003918, 42.851315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301242, 0.066950, 0.951195,
		0.205187, -0.978715, 0.003904,
		0.931210, 0.193997, -0.308567,
		33.532925, 38.062115, 42.758743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300114, 37.422653, 43.296131>,  <32.881081, 37.926319, 42.974743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300114, 37.422653, 43.296131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569122, 37.704937, 43.206978>,  <33.730530, 37.874310, 43.153484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569122, 37.704937, 43.206978>,  <33.300114, 37.422653, 43.296131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569122, 37.704937, 43.206978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373218, -0.063337, 0.925579,
		0.639077, -0.705660, -0.305981,
		0.672524, 0.705714, -0.222888,
		33.770878, 37.916653, 43.140110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965244, 37.195007, 43.426815>,  <33.300114, 37.422653, 43.296131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965244, 37.195007, 43.426815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003738, 37.592434, 43.450706>,  <34.026833, 37.830891, 43.465042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003738, 37.592434, 43.450706>,  <33.965244, 37.195007, 43.426815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003738, 37.592434, 43.450706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522253, -0.101484, 0.846731,
		0.847344, -0.050291, -0.528658,
		0.096233, 0.993565, 0.059728,
		34.032608, 37.890503, 43.468624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600243, 37.269421, 43.788445>,  <33.965244, 37.195007, 43.426815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600243, 37.269421, 43.788445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417229, 37.623856, 43.818153>,  <34.307423, 37.836517, 43.835979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417229, 37.623856, 43.818153>,  <34.600243, 37.269421, 43.788445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417229, 37.623856, 43.818153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273128, 0.060561, 0.960069,
		0.846206, 0.459548, -0.269724,
		-0.457532, 0.886086, 0.074268,
		34.279968, 37.889683, 43.840435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088108, 37.723438, 44.077000>,  <34.600243, 37.269421, 43.788445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088108, 37.723438, 44.077000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723328, 37.867783, 44.155102>,  <34.504459, 37.954388, 44.201965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723328, 37.867783, 44.155102>,  <35.088108, 37.723438, 44.077000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723328, 37.867783, 44.155102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258810, 0.136653, 0.956213,
		0.318374, 0.922555, -0.218015,
		-0.911951, 0.360858, 0.195260,
		34.449741, 37.976040, 44.213680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156326, 38.352066, 44.430473>,  <35.088108, 37.723438, 44.077000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156326, 38.352066, 44.430473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793941, 38.214985, 44.529896>,  <34.576511, 38.132736, 44.589550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793941, 38.214985, 44.529896>,  <35.156326, 38.352066, 44.430473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793941, 38.214985, 44.529896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225174, 0.107112, 0.968413,
		-0.358504, 0.933317, -0.019872,
		-0.905965, -0.342705, 0.248558,
		34.522152, 38.112175, 44.604462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168098, 38.654388, 44.988934>,  <35.156326, 38.352066, 44.430473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168098, 38.654388, 44.988934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829201, 38.444160, 45.019802>,  <34.625862, 38.318024, 45.038322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829201, 38.444160, 45.019802>,  <35.168098, 38.654388, 44.988934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829201, 38.444160, 45.019802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042256, 0.211495, 0.976465,
		-0.529519, 0.824045, -0.201396,
		-0.847245, -0.525567, 0.077170,
		34.575027, 38.286491, 45.042953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738895, 39.017769, 45.504669>,  <35.168098, 38.654388, 44.988934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738895, 39.017769, 45.504669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606483, 38.640533, 45.492031>,  <34.527035, 38.414192, 45.484447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606483, 38.640533, 45.492031>,  <34.738895, 39.017769, 45.504669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606483, 38.640533, 45.492031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207646, 0.040138, 0.977380,
		-0.920489, 0.330106, -0.209115,
		-0.331032, -0.943090, -0.031599,
		34.507175, 38.357605, 45.482552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074287, 38.977283, 46.042522>,  <34.738895, 39.017769, 45.504669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074287, 38.977283, 46.042522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188118, 38.596249, 45.999466>,  <34.256416, 38.367626, 45.973633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188118, 38.596249, 45.999466>,  <34.074287, 38.977283, 46.042522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188118, 38.596249, 45.999466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168339, -0.160195, 0.972625,
		-0.943758, -0.258664, -0.205946,
		0.284575, -0.952591, -0.107642,
		34.273491, 38.310471, 45.967175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594028, 38.489208, 46.351086>,  <34.074287, 38.977283, 46.042522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594028, 38.489208, 46.351086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912846, 38.247913, 46.339657>,  <34.104137, 38.103134, 46.332798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912846, 38.247913, 46.339657>,  <33.594028, 38.489208, 46.351086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912846, 38.247913, 46.339657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195329, -0.302275, 0.932993,
		-0.571457, -0.738058, -0.358758,
		0.797047, -0.603242, -0.028573,
		34.151958, 38.066940, 46.331085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441280, 37.900131, 46.750118>,  <33.594028, 38.489208, 46.351086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441280, 37.900131, 46.750118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841190, 37.892750, 46.754383>,  <34.081135, 37.888321, 46.756943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841190, 37.892750, 46.754383>,  <33.441280, 37.900131, 46.750118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841190, 37.892750, 46.754383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015549, -0.289217, 0.957137,
		-0.014580, -0.957086, -0.289438,
		0.999773, -0.018455, 0.010665,
		34.141121, 37.887215, 46.757584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565918, 37.248100, 47.097488>,  <33.441280, 37.900131, 46.750118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565918, 37.248100, 47.097488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902424, 37.463646, 47.114902>,  <34.104328, 37.592976, 47.125351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902424, 37.463646, 47.114902>,  <33.565918, 37.248100, 47.097488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902424, 37.463646, 47.114902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100629, -0.235200, 0.966724,
		0.531175, -0.808890, -0.252091,
		0.841265, 0.538867, 0.043535,
		34.154804, 37.625305, 47.127964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144615, 36.844135, 47.220840>,  <33.565918, 37.248100, 47.097488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144615, 36.844135, 47.220840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252300, 37.210423, 47.340157>,  <34.316914, 37.430195, 47.411747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252300, 37.210423, 47.340157>,  <34.144615, 36.844135, 47.220840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252300, 37.210423, 47.340157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157312, -0.347380, 0.924435,
		0.950145, -0.201947, -0.237574,
		0.269216, 0.915721, 0.298293,
		34.333065, 37.485138, 47.429646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467922, 36.699711, 47.774296>,  <34.144615, 36.844135, 47.220840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467922, 36.699711, 47.774296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463337, 37.093884, 47.842163>,  <34.460587, 37.330387, 47.882885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463337, 37.093884, 47.842163>,  <34.467922, 36.699711, 47.774296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463337, 37.093884, 47.842163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086088, -0.168078, 0.982007,
		0.996222, 0.025865, -0.082907,
		-0.011465, 0.985434, 0.169670,
		34.459896, 37.389515, 47.893063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913982, 36.785404, 48.312874>,  <34.467922, 36.699711, 47.774296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913982, 36.785404, 48.312874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684006, 37.111626, 48.339138>,  <34.546021, 37.307358, 48.354897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684006, 37.111626, 48.339138>,  <34.913982, 36.785404, 48.312874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684006, 37.111626, 48.339138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137714, 0.017357, 0.990320,
		0.806524, 0.578415, -0.122293,
		-0.574939, 0.815558, 0.065657,
		34.511524, 37.356293, 48.358833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214378, 37.232018, 48.798759>,  <34.913982, 36.785404, 48.312874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214378, 37.232018, 48.798759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836040, 37.361385, 48.787601>,  <34.609039, 37.439007, 48.780907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836040, 37.361385, 48.787601>,  <35.214378, 37.232018, 48.798759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836040, 37.361385, 48.787601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079703, 0.314683, 0.945844,
		0.314683, 0.892398, -0.323419,
		-0.945844, 0.323419, -0.027898,
		34.552288, 37.458412, 48.779232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212868, 37.913940, 49.055302>,  <35.214378, 37.232018, 48.798759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212868, 37.913940, 49.055302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841118, 37.769451, 49.085697>,  <34.618069, 37.682758, 49.103935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841118, 37.769451, 49.085697>,  <35.212868, 37.913940, 49.055302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841118, 37.769451, 49.085697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124503, 0.500562, 0.856701,
		-0.347497, 0.786738, -0.510185,
		-0.929379, -0.361221, 0.075992,
		34.562305, 37.661083, 49.108494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801746, 38.484192, 49.371975>,  <35.212868, 37.913940, 49.055302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801746, 38.484192, 49.371975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614853, 38.140091, 49.453613>,  <34.502716, 37.933628, 49.502598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614853, 38.140091, 49.453613>,  <34.801746, 38.484192, 49.371975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614853, 38.140091, 49.453613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183705, 0.320264, 0.929346,
		-0.864838, 0.396729, -0.307672,
		-0.467234, -0.860254, 0.204095,
		34.474682, 37.882015, 49.514843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174721, 38.647373, 49.725517>,  <34.801746, 38.484192, 49.371975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174721, 38.647373, 49.725517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247513, 38.265583, 49.820061>,  <34.291187, 38.036510, 49.876789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247513, 38.265583, 49.820061>,  <34.174721, 38.647373, 49.725517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247513, 38.265583, 49.820061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005421, 0.241345, 0.970424,
		-0.983287, -0.175317, 0.049094,
		0.181981, -0.954472, 0.236361,
		34.302109, 37.979240, 49.890968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840458, 38.513474, 50.351048>,  <34.174721, 38.647373, 49.725517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840458, 38.513474, 50.351048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120022, 38.229668, 50.314999>,  <34.287758, 38.059383, 50.293369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120022, 38.229668, 50.314999>,  <33.840458, 38.513474, 50.351048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120022, 38.229668, 50.314999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131054, 0.003167, 0.991370,
		-0.703104, -0.704686, 0.095198,
		0.698906, -0.709512, -0.090125,
		34.329693, 38.016815, 50.287960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759823, 38.135559, 50.936565>,  <33.840458, 38.513474, 50.351048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759823, 38.135559, 50.936565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113823, 38.010262, 50.798782>,  <34.326225, 37.935081, 50.716114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113823, 38.010262, 50.798782>,  <33.759823, 38.135559, 50.936565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113823, 38.010262, 50.798782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318629, -0.131957, 0.938649,
		-0.339481, -0.940459, -0.016972,
		0.885002, -0.313246, -0.344455,
		34.379322, 37.916286, 50.695446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010651, 37.466621, 51.328712>,  <33.759823, 38.135559, 50.936565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010651, 37.466621, 51.328712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343285, 37.630016, 51.178188>,  <34.542866, 37.728054, 51.087875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343285, 37.630016, 51.178188>,  <34.010651, 37.466621, 51.328712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343285, 37.630016, 51.178188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444806, -0.084099, 0.891670,
		0.332586, -0.908883, -0.251632,
		0.831585, 0.408484, -0.376307,
		34.592762, 37.752560, 51.065296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600803, 37.099739, 51.289909>,  <34.010651, 37.466621, 51.328712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600803, 37.099739, 51.289909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689735, 37.478947, 51.380966>,  <34.743095, 37.706470, 51.435600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689735, 37.478947, 51.380966>,  <34.600803, 37.099739, 51.289909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689735, 37.478947, 51.380966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356863, -0.296411, 0.885884,
		0.907313, -0.115727, -0.404217,
		0.222335, 0.948023, 0.227639,
		34.756435, 37.763355, 51.449257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449318, 37.035160, 51.460842>,  <34.600803, 37.099739, 51.289909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449318, 37.035160, 51.460842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209732, 37.242405, 51.705070>,  <35.065979, 37.366753, 51.851608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209732, 37.242405, 51.705070>,  <35.449318, 37.035160, 51.460842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209732, 37.242405, 51.705070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662229, -0.108193, 0.741450,
		0.450214, 0.848442, -0.278304,
		-0.598967, 0.518112, 0.610573,
		35.030041, 37.397839, 51.888241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895458, 37.045372, 51.860096>,  <35.449318, 37.035160, 51.460842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895458, 37.045372, 51.860096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592403, 37.193279, 52.075230>,  <35.410572, 37.282024, 52.204311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592403, 37.193279, 52.075230>,  <35.895458, 37.045372, 51.860096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592403, 37.193279, 52.075230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510244, -0.178298, 0.841345,
		0.406994, 0.911858, -0.053586,
		-0.757633, 0.369764, 0.537836,
		35.365112, 37.304207, 52.236580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185078, 37.481983, 52.439041>,  <35.895458, 37.045372, 51.860096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185078, 37.481983, 52.439041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817299, 37.418076, 52.582756>,  <35.596630, 37.379730, 52.668983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817299, 37.418076, 52.582756>,  <36.185078, 37.481983, 52.439041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817299, 37.418076, 52.582756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382183, -0.148257, 0.912116,
		-0.092457, 0.975959, 0.197374,
		-0.919450, -0.159765, 0.359287,
		35.541466, 37.370148, 52.690544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287369, 37.778584, 53.060844>,  <36.185078, 37.481983, 52.439041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287369, 37.778584, 53.060844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938320, 37.590050, 53.112030>,  <35.728889, 37.476929, 53.142742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938320, 37.590050, 53.112030>,  <36.287369, 37.778584, 53.060844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938320, 37.590050, 53.112030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204982, -0.115626, 0.971912,
		-0.443295, 0.874345, 0.197512,
		-0.872624, -0.471330, 0.127968,
		35.676533, 37.448650, 53.150421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794453, 38.091259, 53.557529>,  <36.287369, 37.778584, 53.060844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794453, 38.091259, 53.557529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741928, 37.694771, 53.551228>,  <35.710415, 37.456879, 53.547447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741928, 37.694771, 53.551228>,  <35.794453, 38.091259, 53.557529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741928, 37.694771, 53.551228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140353, -0.034318, 0.989507,
		-0.981356, 0.127722, 0.143627,
		-0.131310, -0.991216, -0.015752,
		35.702534, 37.397408, 53.546501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280903, 38.053761, 53.917389>,  <35.794453, 38.091259, 53.557529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280903, 38.053761, 53.917389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462696, 37.697685, 53.930134>,  <35.571774, 37.484039, 53.937782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462696, 37.697685, 53.930134>,  <35.280903, 38.053761, 53.917389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462696, 37.697685, 53.930134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116743, -0.024062, 0.992871,
		-0.883072, -0.454963, -0.114859,
		0.454484, -0.890185, 0.031865,
		35.599041, 37.430630, 53.939693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942513, 37.623745, 54.506256>,  <35.280903, 38.053761, 53.917389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942513, 37.623745, 54.506256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317665, 37.495136, 54.454105>,  <35.542755, 37.417973, 54.422813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317665, 37.495136, 54.454105>,  <34.942513, 37.623745, 54.506256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317665, 37.495136, 54.454105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091551, -0.133124, 0.986862,
		-0.334657, -0.937497, -0.095419,
		0.937882, -0.321524, -0.130379,
		35.599030, 37.398678, 54.414993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078781, 36.928352, 54.854626>,  <34.942513, 37.623745, 54.506256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078781, 36.928352, 54.854626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399731, 37.164898, 54.822411>,  <35.592300, 37.306828, 54.803082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399731, 37.164898, 54.822411>,  <35.078781, 36.928352, 54.854626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399731, 37.164898, 54.822411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242426, -0.199621, 0.949411,
		0.545374, -0.781303, -0.303533,
		0.802369, 0.591368, -0.080540,
		35.640442, 37.342308, 54.798248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781937, 36.540188, 54.909901>,  <35.078781, 36.928352, 54.854626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781937, 36.540188, 54.909901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784336, 36.920376, 55.034203>,  <35.785778, 37.148487, 55.108784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784336, 36.920376, 55.034203>,  <35.781937, 36.540188, 54.909901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784336, 36.920376, 55.034203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273388, -0.300484, 0.913766,
		0.961885, 0.079473, -0.261651,
		0.006002, 0.950470, 0.310758,
		35.786137, 37.205517, 55.127430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747486, 36.923897, 55.688747>,  <35.781937, 36.540188, 54.909901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747486, 36.923897, 55.688747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561073, 36.697002, 55.960354>,  <35.449226, 36.560867, 56.123318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561073, 36.697002, 55.960354>,  <35.747486, 36.923897, 55.688747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561073, 36.697002, 55.960354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138203, -0.711356, -0.689110,
		0.873906, -0.414991, 0.253123,
		-0.466035, -0.567234, 0.679011,
		35.421265, 36.526833, 56.164059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966587, 36.148750, 55.756313>,  <35.747486, 36.923897, 55.688747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966587, 36.148750, 55.756313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582855, 36.169151, 55.867374>,  <35.352615, 36.181393, 55.934010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582855, 36.169151, 55.867374>,  <35.966587, 36.148750, 55.756313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582855, 36.169151, 55.867374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261217, -0.533294, -0.804589,
		0.107036, -0.844391, 0.524926,
		-0.959327, 0.051000, 0.277651,
		35.295055, 36.184452, 55.950668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192425, 35.949558, 55.091743>,  <35.966587, 36.148750, 55.756313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192425, 35.949558, 55.091743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980343, 35.871719, 54.761650>,  <35.853092, 35.825016, 54.563595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980343, 35.871719, 54.761650>,  <36.192425, 35.949558, 55.091743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980343, 35.871719, 54.761650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746979, 0.353260, -0.563231,
		0.401126, -0.915062, -0.041941,
		-0.530208, -0.194598, -0.825234,
		35.821281, 35.813339, 54.514080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621609, 35.766373, 54.683380>,  <36.192425, 35.949558, 55.091743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621609, 35.766373, 54.683380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358135, 35.901478, 54.414444>,  <36.200050, 35.982540, 54.253082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358135, 35.901478, 54.414444>,  <36.621609, 35.766373, 54.683380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358135, 35.901478, 54.414444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749130, 0.377835, -0.544100,
		0.070256, -0.862064, -0.501907,
		-0.658687, 0.337767, -0.672343,
		36.160530, 36.002808, 54.212742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872318, 35.608166, 54.066021>,  <36.621609, 35.766373, 54.683380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872318, 35.608166, 54.066021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630173, 35.921295, 54.008446>,  <36.484886, 36.109173, 53.973900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630173, 35.921295, 54.008446>,  <36.872318, 35.608166, 54.066021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630173, 35.921295, 54.008446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750203, 0.500740, -0.431804,
		-0.265951, -0.369382, -0.890408,
		-0.605364, 0.782826, -0.143939,
		36.448563, 36.156143, 53.965263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967747, 35.036976, 53.634487>,  <36.872318, 35.608166, 54.066021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967747, 35.036976, 53.634487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594994, 34.900669, 53.684227>,  <36.371342, 34.818886, 53.714069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594994, 34.900669, 53.684227>,  <36.967747, 35.036976, 53.634487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594994, 34.900669, 53.684227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185055, 0.151765, -0.970939,
		0.311996, -0.927816, -0.204489,
		-0.931887, -0.340771, 0.124347,
		36.315426, 34.798439, 53.721531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875523, 34.442253, 53.252865>,  <36.967747, 35.036976, 53.634487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875523, 34.442253, 53.252865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525143, 34.625851, 53.312248>,  <36.314915, 34.736008, 53.347878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525143, 34.625851, 53.312248>,  <36.875523, 34.442253, 53.252865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525143, 34.625851, 53.312248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102949, 0.122789, -0.987079,
		-0.471288, -0.879915, -0.060305,
		-0.875950, 0.458990, 0.148456,
		36.262356, 34.763546, 53.356785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357426, 34.089657, 52.929989>,  <36.875523, 34.442253, 53.252865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357426, 34.089657, 52.929989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234024, 34.468063, 52.969761>,  <36.159985, 34.695107, 52.993622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234024, 34.468063, 52.969761>,  <36.357426, 34.089657, 52.929989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234024, 34.468063, 52.969761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055128, 0.086570, -0.994719,
		-0.949626, -0.312352, 0.025446,
		-0.308499, 0.946014, 0.099428,
		36.141476, 34.751869, 52.999588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805202, 34.093071, 52.514706>,  <36.357426, 34.089657, 52.929989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805202, 34.093071, 52.514706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950581, 34.465614, 52.523502>,  <36.037807, 34.689140, 52.528778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950581, 34.465614, 52.523502>,  <35.805202, 34.093071, 52.514706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950581, 34.465614, 52.523502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075502, -0.005921, -0.997128,
		-0.928552, 0.364060, -0.072471,
		0.363443, 0.931357, 0.021989,
		36.059612, 34.745022, 52.530098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391865, 34.558685, 51.988621>,  <35.805202, 34.093071, 52.514706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391865, 34.558685, 51.988621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745693, 34.730335, 52.061710>,  <35.957989, 34.833324, 52.105564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745693, 34.730335, 52.061710>,  <35.391865, 34.558685, 51.988621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745693, 34.730335, 52.061710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095533, 0.216767, -0.971538,
		-0.456524, 0.876847, 0.150749,
		0.884567, 0.429129, 0.182727,
		36.011063, 34.859074, 52.116528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272125, 35.172165, 51.498627>,  <35.391865, 34.558685, 51.988621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272125, 35.172165, 51.498627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660839, 35.156925, 51.591736>,  <35.894066, 35.147781, 51.647602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660839, 35.156925, 51.591736>,  <35.272125, 35.172165, 51.498627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660839, 35.156925, 51.591736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235150, 0.233489, -0.943498,
		-0.018404, 0.971613, 0.235859,
		0.971785, -0.038098, 0.232772,
		35.952374, 35.145496, 51.661568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581371, 35.670727, 51.089359>,  <35.272125, 35.172165, 51.498627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581371, 35.670727, 51.089359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907860, 35.460419, 51.185146>,  <36.103752, 35.334232, 51.242619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907860, 35.460419, 51.185146>,  <35.581371, 35.670727, 51.089359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907860, 35.460419, 51.185146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343164, 0.107760, -0.933074,
		0.464780, 0.843772, 0.268382,
		0.816222, -0.525773, 0.239467,
		36.152725, 35.302689, 51.256985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170361, 36.050575, 50.872665>,  <35.581371, 35.670727, 51.089359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170361, 36.050575, 50.872665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257168, 35.660225, 50.882175>,  <36.309254, 35.426014, 50.887882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257168, 35.660225, 50.882175>,  <36.170361, 36.050575, 50.872665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257168, 35.660225, 50.882175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193478, 0.019128, -0.980918,
		0.956802, 0.217477, 0.192962,
		0.217018, -0.975878, 0.023775,
		36.322273, 35.367462, 50.889309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712330, 35.993080, 50.414597>,  <36.170361, 36.050575, 50.872665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712330, 35.993080, 50.414597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586079, 35.617008, 50.465881>,  <36.510326, 35.391365, 50.496651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586079, 35.617008, 50.465881>,  <36.712330, 35.993080, 50.414597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586079, 35.617008, 50.465881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300510, -0.227202, -0.926323,
		0.900041, -0.253846, 0.354245,
		-0.315629, -0.940182, 0.128208,
		36.491390, 35.334953, 50.504345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267975, 35.700226, 50.246716>,  <36.712330, 35.993080, 50.414597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267975, 35.700226, 50.246716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967472, 35.442699, 50.188602>,  <36.787170, 35.288181, 50.153732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967472, 35.442699, 50.188602>,  <37.267975, 35.700226, 50.246716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967472, 35.442699, 50.188602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280260, -0.111885, -0.953381,
		0.597550, -0.756954, 0.264490,
		-0.751258, -0.643819, -0.145287,
		36.742096, 35.249554, 50.145016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513744, 35.189281, 49.756157>,  <37.267975, 35.700226, 50.246716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513744, 35.189281, 49.756157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116188, 35.146534, 49.745167>,  <36.877655, 35.120888, 49.738571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116188, 35.146534, 49.745167>,  <37.513744, 35.189281, 49.756157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116188, 35.146534, 49.745167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030088, -0.022882, -0.999285,
		0.106161, -0.994010, 0.025957,
		-0.993894, -0.106866, -0.027479,
		36.818020, 35.114475, 49.736923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322632, 34.572037, 49.289207>,  <37.513744, 35.189281, 49.756157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322632, 34.572037, 49.289207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996628, 34.803791, 49.292454>,  <36.801025, 34.942844, 49.294403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996628, 34.803791, 49.292454>,  <37.322632, 34.572037, 49.289207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996628, 34.803791, 49.292454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084035, -0.104330, -0.990986,
		-0.573316, -0.808349, 0.133719,
		-0.815013, 0.579385, 0.008116,
		36.752125, 34.977608, 49.294888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939342, 34.416164, 48.788048>,  <37.322632, 34.572037, 49.289207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939342, 34.416164, 48.788048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745659, 34.763134, 48.833866>,  <36.629448, 34.971313, 48.861359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745659, 34.763134, 48.833866>,  <36.939342, 34.416164, 48.788048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745659, 34.763134, 48.833866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146995, 0.048411, -0.987952,
		-0.862514, -0.495217, 0.104065,
		-0.484213, 0.867420, 0.114549,
		36.600395, 35.023361, 48.868233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300560, 34.459465, 48.339722>,  <36.939342, 34.416164, 48.788048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300560, 34.459465, 48.339722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405655, 34.833759, 48.433846>,  <36.468712, 35.058334, 48.490318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405655, 34.833759, 48.433846>,  <36.300560, 34.459465, 48.339722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405655, 34.833759, 48.433846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168020, 0.284523, -0.943830,
		-0.950125, 0.208443, 0.231977,
		0.262737, 0.935734, 0.235310,
		36.484478, 35.114479, 48.504440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759850, 34.893517, 48.119801>,  <36.300560, 34.459465, 48.339722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759850, 34.893517, 48.119801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073002, 35.141556, 48.140141>,  <36.260891, 35.290379, 48.152344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073002, 35.141556, 48.140141>,  <35.759850, 34.893517, 48.119801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073002, 35.141556, 48.140141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204737, 0.333934, -0.920093,
		-0.587525, 0.709909, 0.388386,
		0.782878, 0.620094, 0.050850,
		36.307865, 35.327583, 48.155396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584072, 35.348400, 47.665092>,  <35.759850, 34.893517, 48.119801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584072, 35.348400, 47.665092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970093, 35.439419, 47.717091>,  <36.201706, 35.494030, 47.748291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970093, 35.439419, 47.717091>,  <35.584072, 35.348400, 47.665092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970093, 35.439419, 47.717091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048555, 0.332213, -0.941954,
		-0.257528, 0.915345, 0.309553,
		0.965050, 0.227549, 0.129999,
		36.259609, 35.507683, 47.756092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705933, 36.044304, 47.429447>,  <35.584072, 35.348400, 47.665092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705933, 36.044304, 47.429447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039589, 35.833466, 47.364468>,  <36.239780, 35.706963, 47.325481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039589, 35.833466, 47.364468>,  <35.705933, 36.044304, 47.429447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039589, 35.833466, 47.364468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007529, 0.283617, -0.958908,
		0.551506, 0.801084, 0.232607,
		0.834137, -0.527092, -0.162448,
		36.289829, 35.675339, 47.315735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130798, 36.424408, 47.114929>,  <35.705933, 36.044304, 47.429447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130798, 36.424408, 47.114929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315559, 36.087776, 47.002937>,  <36.426414, 35.885796, 46.935741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315559, 36.087776, 47.002937>,  <36.130798, 36.424408, 47.114929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315559, 36.087776, 47.002937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070600, 0.349562, -0.934249,
		0.884116, 0.411766, 0.220879,
		0.461903, -0.841579, -0.279982,
		36.454132, 35.835304, 46.918941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510593, 36.747921, 46.584583>,  <36.130798, 36.424408, 47.114929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510593, 36.747921, 46.584583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542328, 36.352455, 46.533581>,  <36.561367, 36.115177, 46.502979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542328, 36.352455, 46.533581>,  <36.510593, 36.747921, 46.584583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542328, 36.352455, 46.533581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150936, 0.138345, -0.978815,
		0.985355, 0.058407, 0.160200,
		0.079333, -0.988660, -0.127503,
		36.566128, 36.055859, 46.495331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107132, 36.636467, 46.088333>,  <36.510593, 36.747921, 46.584583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107132, 36.636467, 46.088333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846565, 36.335106, 46.052452>,  <36.690228, 36.154289, 46.030926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846565, 36.335106, 46.052452>,  <37.107132, 36.636467, 46.088333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846565, 36.335106, 46.052452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038271, 0.085448, -0.995607,
		0.757756, -0.651986, -0.026829,
		-0.651415, -0.753401, -0.089701,
		36.651142, 36.109085, 46.025543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222317, 36.393082, 45.394936>,  <37.107132, 36.636467, 46.088333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222317, 36.393082, 45.394936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881165, 36.206718, 45.489189>,  <36.676472, 36.094902, 45.545742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881165, 36.206718, 45.489189>,  <37.222317, 36.393082, 45.394936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881165, 36.206718, 45.489189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289642, 0.046712, -0.955995,
		0.434399, -0.883599, -0.174786,
		-0.852881, -0.465908, 0.235636,
		36.625301, 36.066948, 45.559879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274818, 35.734699, 45.033035>,  <37.222317, 36.393082, 45.394936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274818, 35.734699, 45.033035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903294, 35.869587, 45.094463>,  <36.680378, 35.950520, 45.131321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903294, 35.869587, 45.094463>,  <37.274818, 35.734699, 45.033035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903294, 35.869587, 45.094463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182389, -0.055303, -0.981670,
		-0.322546, -0.939800, 0.112872,
		-0.928816, 0.337221, 0.153572,
		36.624649, 35.970753, 45.140533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874020, 35.278774, 44.508636>,  <37.274818, 35.734699, 45.033035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874020, 35.278774, 44.508636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607002, 35.551147, 44.629112>,  <36.446793, 35.714573, 44.701397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607002, 35.551147, 44.629112>,  <36.874020, 35.278774, 44.508636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607002, 35.551147, 44.629112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483782, -0.089172, -0.870634,
		-0.565990, -0.726892, 0.388952,
		-0.667540, 0.680938, 0.301186,
		36.406738, 35.755428, 44.719467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182819, 34.993969, 44.394356>,  <36.874020, 35.278774, 44.508636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182819, 34.993969, 44.394356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136253, 35.391106, 44.405006>,  <36.108315, 35.629387, 44.411396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136253, 35.391106, 44.405006>,  <36.182819, 34.993969, 44.394356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136253, 35.391106, 44.405006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579297, -0.046100, -0.813812,
		-0.806761, -0.110167, 0.580518,
		-0.116417, 0.992844, 0.026628,
		36.101330, 35.688957, 44.412994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504398, 35.077290, 44.309006>,  <36.182819, 34.993969, 44.394356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504398, 35.077290, 44.309006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653770, 35.430424, 44.195065>,  <35.743393, 35.642303, 44.126701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653770, 35.430424, 44.195065>,  <35.504398, 35.077290, 44.309006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653770, 35.430424, 44.195065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454310, -0.093671, -0.885905,
		-0.808795, 0.460239, 0.366103,
		0.373435, 0.882840, -0.284852,
		35.765800, 35.695274, 44.109608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021622, 35.365910, 43.876537>,  <35.504398, 35.077290, 44.309006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021622, 35.365910, 43.876537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357853, 35.555313, 43.771301>,  <35.559593, 35.668957, 43.708160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357853, 35.555313, 43.771301>,  <35.021622, 35.365910, 43.876537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357853, 35.555313, 43.771301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244922, -0.100971, -0.964271,
		-0.483159, 0.874980, 0.031099,
		0.840578, 0.473513, -0.263087,
		35.610027, 35.697369, 43.692375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827461, 35.622688, 43.235851>,  <35.021622, 35.365910, 43.876537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827461, 35.622688, 43.235851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224995, 35.662537, 43.255318>,  <35.463516, 35.686443, 43.266998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224995, 35.662537, 43.255318>,  <34.827461, 35.622688, 43.235851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224995, 35.662537, 43.255318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073352, -0.261694, -0.962359,
		-0.083132, 0.959996, -0.267388,
		0.993835, 0.099617, 0.048662,
		35.523144, 35.692421, 43.269917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054874, 36.023212, 42.701534>,  <34.827461, 35.622688, 43.235851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054874, 36.023212, 42.701534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390709, 35.820797, 42.780552>,  <35.592209, 35.699348, 42.827961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390709, 35.820797, 42.780552>,  <35.054874, 36.023212, 42.701534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390709, 35.820797, 42.780552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005529, -0.355666, -0.934597,
		0.543199, 0.785767, -0.295814,
		0.839586, -0.506036, 0.197542,
		35.642586, 35.668987, 42.839813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488949, 36.262440, 42.221432>,  <35.054874, 36.023212, 42.701534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488949, 36.262440, 42.221432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629311, 35.907261, 42.340374>,  <35.713528, 35.694153, 42.411739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629311, 35.907261, 42.340374>,  <35.488949, 36.262440, 42.221432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629311, 35.907261, 42.340374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130579, -0.360840, -0.923441,
		0.927263, 0.285210, -0.242567,
		0.350902, -0.887947, 0.297351,
		35.734581, 35.640877, 42.429581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869026, 36.139561, 41.690815>,  <35.488949, 36.262440, 42.221432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869026, 36.139561, 41.690815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824139, 35.796322, 41.891243>,  <35.797207, 35.590378, 42.011501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824139, 35.796322, 41.891243>,  <35.869026, 36.139561, 41.690815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824139, 35.796322, 41.891243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012300, -0.503019, -0.864188,
		0.993608, -0.103138, 0.045892,
		-0.112216, -0.858100, 0.501072,
		35.790474, 35.538891, 42.041565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335373, 35.653469, 41.375774>,  <35.869026, 36.139561, 41.690815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335373, 35.653469, 41.375774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064976, 35.425541, 41.562683>,  <35.902737, 35.288784, 41.674828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064976, 35.425541, 41.562683>,  <36.335373, 35.653469, 41.375774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064976, 35.425541, 41.562683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090597, -0.565021, -0.820087,
		0.731320, -0.596705, 0.330325,
		-0.675991, -0.569820, 0.467271,
		35.862179, 35.254597, 41.702866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642616, 34.981346, 41.407738>,  <36.335373, 35.653469, 41.375774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642616, 34.981346, 41.407738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244392, 34.951714, 41.431000>,  <36.005459, 34.933933, 41.444958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244392, 34.951714, 41.431000>,  <36.642616, 34.981346, 41.407738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244392, 34.951714, 41.431000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006057, -0.565876, -0.824468,
		0.093985, -0.821156, 0.562912,
		-0.995555, -0.074078, 0.058158,
		35.945724, 34.929489, 41.448448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451767, 34.274586, 41.172115>,  <36.642616, 34.981346, 41.407738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451767, 34.274586, 41.172115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094025, 34.453342, 41.180267>,  <35.879379, 34.560596, 41.185158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094025, 34.453342, 41.180267>,  <36.451767, 34.274586, 41.172115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094025, 34.453342, 41.180267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303699, -0.573066, -0.761159,
		-0.328478, -0.686936, 0.648245,
		-0.894354, 0.446895, 0.020382,
		35.825718, 34.587410, 41.186382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921505, 33.718418, 41.009518>,  <36.451767, 34.274586, 41.172115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921505, 33.718418, 41.009518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743298, 34.069195, 40.937416>,  <35.636372, 34.279659, 40.894154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743298, 34.069195, 40.937416>,  <35.921505, 33.718418, 41.009518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743298, 34.069195, 40.937416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385037, -0.369454, -0.845725,
		-0.808245, -0.307382, 0.502252,
		-0.445519, 0.876938, -0.180256,
		35.609642, 34.332275, 40.883339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252846, 33.538933, 40.780781>,  <35.921505, 33.718418, 41.009518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252846, 33.538933, 40.780781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354916, 33.907784, 40.664452>,  <35.416157, 34.129093, 40.594654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354916, 33.907784, 40.664452>,  <35.252846, 33.538933, 40.780781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354916, 33.907784, 40.664452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142242, -0.261703, -0.954609,
		-0.956376, 0.284957, 0.064385,
		0.255173, 0.922123, -0.290819,
		35.431469, 34.184422, 40.577206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924068, 33.556740, 40.243126>,  <35.252846, 33.538933, 40.780781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924068, 33.556740, 40.243126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147301, 33.880619, 40.170540>,  <35.281242, 34.074947, 40.126987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147301, 33.880619, 40.170540>,  <34.924068, 33.556740, 40.243126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147301, 33.880619, 40.170540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019184, -0.231219, -0.972713,
		-0.829563, 0.539374, -0.144572,
		0.558084, 0.809699, -0.181463,
		35.314728, 34.123528, 40.116100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659737, 33.920876, 39.586857>,  <34.924068, 33.556740, 40.243126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659737, 33.920876, 39.586857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038181, 34.046059, 39.620140>,  <35.265247, 34.121170, 39.640110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038181, 34.046059, 39.620140>,  <34.659737, 33.920876, 39.586857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038181, 34.046059, 39.620140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115855, -0.087176, -0.989433,
		-0.302396, 0.945758, -0.118736,
		0.946115, 0.312957, 0.083209,
		35.322018, 34.139946, 39.645103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744850, 34.494411, 39.118031>,  <34.659737, 33.920876, 39.586857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744850, 34.494411, 39.118031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118488, 34.361347, 39.169884>,  <35.342670, 34.281509, 39.200996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118488, 34.361347, 39.169884>,  <34.744850, 34.494411, 39.118031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118488, 34.361347, 39.169884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203886, 0.198974, -0.958561,
		0.293080, 0.921818, 0.253685,
		0.934096, -0.332658, 0.129631,
		35.398716, 34.261551, 39.208775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183170, 35.008438, 38.770542>,  <34.744850, 34.494411, 39.118031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183170, 35.008438, 38.770542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392479, 34.667809, 38.783207>,  <35.518063, 34.463428, 38.790806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392479, 34.667809, 38.783207>,  <35.183170, 35.008438, 38.770542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392479, 34.667809, 38.783207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247679, 0.116428, -0.961821,
		0.815379, 0.511136, 0.271841,
		0.523271, -0.851578, 0.031665,
		35.549461, 34.412334, 38.792706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710510, 35.186741, 38.229923>,  <35.183170, 35.008438, 38.770542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710510, 35.186741, 38.229923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770657, 34.802578, 38.323742>,  <35.806744, 34.572083, 38.380032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770657, 34.802578, 38.323742>,  <35.710510, 35.186741, 38.229923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770657, 34.802578, 38.323742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402879, -0.157123, -0.901666,
		0.902817, 0.230073, 0.363302,
		0.150366, -0.960406, 0.234545,
		35.815765, 34.514458, 38.394104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355343, 34.983894, 37.975636>,  <35.710510, 35.186741, 38.229923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355343, 34.983894, 37.975636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155544, 34.637413, 37.981182>,  <36.035664, 34.429523, 37.984509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155544, 34.637413, 37.981182>,  <36.355343, 34.983894, 37.975636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155544, 34.637413, 37.981182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192679, -0.126684, -0.973050,
		0.844617, -0.483363, 0.230178,
		-0.499496, -0.866205, 0.013865,
		36.005695, 34.377552, 37.985340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780563, 34.481121, 37.586063>,  <36.355343, 34.983894, 37.975636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780563, 34.481121, 37.586063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407558, 34.336716, 37.582092>,  <36.183758, 34.250072, 37.579712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407558, 34.336716, 37.582092>,  <36.780563, 34.481121, 37.586063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407558, 34.336716, 37.582092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049493, -0.100522, -0.993703,
		0.357740, -0.927128, 0.111605,
		-0.932509, -0.361011, -0.009925,
		36.127808, 34.228413, 37.579113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880463, 33.907265, 37.944641>,  <36.780563, 34.481121, 37.586063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880463, 33.907265, 37.944641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259022, 33.993607, 37.848518>,  <37.486156, 34.045414, 37.790844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259022, 33.993607, 37.848518>,  <36.880463, 33.907265, 37.944641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259022, 33.993607, 37.848518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213499, 0.140262, 0.966822,
		0.242402, -0.966298, 0.086657,
		0.946393, 0.215858, -0.240303,
		37.542938, 34.058365, 37.776428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244255, 33.464291, 38.248062>,  <36.880463, 33.907265, 37.944641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244255, 33.464291, 38.248062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475983, 33.787319, 38.203865>,  <37.615021, 33.981136, 38.177345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475983, 33.787319, 38.203865>,  <37.244255, 33.464291, 38.248062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475983, 33.787319, 38.203865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264524, -0.058047, 0.962631,
		0.770981, -0.586903, -0.247251,
		0.579323, 0.807574, -0.110497,
		37.649780, 34.029591, 38.170715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999840, 33.393398, 38.413784>,  <37.244255, 33.464291, 38.248062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999840, 33.393398, 38.413784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955578, 33.788776, 38.455212>,  <37.929020, 34.026005, 38.480068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955578, 33.788776, 38.455212>,  <37.999840, 33.393398, 38.413784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955578, 33.788776, 38.455212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375478, -0.054907, 0.925204,
		0.920202, 0.141271, -0.365064,
		-0.110659, 0.988447, 0.103570,
		37.922379, 34.085312, 38.486282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724255, 33.738052, 38.453529>,  <37.999840, 33.393398, 38.413784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724255, 33.738052, 38.453529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481815, 34.013603, 38.612572>,  <38.336349, 34.178932, 38.707996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481815, 34.013603, 38.612572>,  <38.724255, 33.738052, 38.453529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481815, 34.013603, 38.612572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529030, -0.024139, 0.848260,
		0.593943, 0.724478, -0.349804,
		-0.606102, 0.688875, 0.397608,
		38.299984, 34.220264, 38.731853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116718, 34.174713, 38.892891>,  <38.724255, 33.738052, 38.453529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116718, 34.174713, 38.892891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747730, 34.236248, 39.034527>,  <38.526337, 34.273167, 39.119507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747730, 34.236248, 39.034527>,  <39.116718, 34.174713, 38.892891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747730, 34.236248, 39.034527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372269, 0.111496, 0.921403,
		0.102263, 0.981786, -0.160119,
		-0.922474, 0.153833, 0.354087,
		38.470989, 34.282398, 39.140755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263889, 34.543770, 39.413174>,  <39.116718, 34.174713, 38.892891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263889, 34.543770, 39.413174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877308, 34.467583, 39.482094>,  <38.645359, 34.421871, 39.523445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877308, 34.467583, 39.482094>,  <39.263889, 34.543770, 39.413174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877308, 34.467583, 39.482094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174091, 0.007423, 0.984702,
		-0.188833, 0.981665, 0.025985,
		-0.966455, -0.190468, 0.172300,
		38.587372, 34.410442, 39.533783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994095, 35.063305, 39.812046>,  <39.263889, 34.543770, 39.413174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994095, 35.063305, 39.812046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810570, 34.714935, 39.882446>,  <38.700455, 34.505913, 39.924686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810570, 34.714935, 39.882446>,  <38.994095, 35.063305, 39.812046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810570, 34.714935, 39.882446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195387, 0.094337, 0.976178,
		-0.866784, 0.482271, 0.126885,
		-0.458812, -0.870928, 0.175999,
		38.672928, 34.453655, 39.935246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594021, 35.210350, 40.339298>,  <38.994095, 35.063305, 39.812046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594021, 35.210350, 40.339298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592297, 34.810692, 40.355774>,  <38.591263, 34.570896, 40.365662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592297, 34.810692, 40.355774>,  <38.594021, 35.210350, 40.339298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592297, 34.810692, 40.355774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232233, 0.039064, 0.971875,
		-0.972651, 0.013759, 0.231865,
		-0.004314, -0.999142, 0.041191,
		38.591003, 34.510948, 40.368130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143166, 35.061417, 40.830822>,  <38.594021, 35.210350, 40.339298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143166, 35.061417, 40.830822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418770, 34.773746, 40.794926>,  <38.584133, 34.601147, 40.773388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418770, 34.773746, 40.794926>,  <38.143166, 35.061417, 40.830822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418770, 34.773746, 40.794926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173712, 0.043667, 0.983828,
		-0.703625, -0.693457, 0.155017,
		0.689011, -0.719174, -0.089736,
		38.625473, 34.557995, 40.768005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451221, 34.992535, 41.567047>,  <38.143166, 35.061417, 40.830822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451221, 34.992535, 41.567047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670708, 34.708588, 41.390411>,  <38.802399, 34.538219, 41.284431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670708, 34.708588, 41.390411>,  <38.451221, 34.992535, 41.567047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670708, 34.708588, 41.390411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385502, -0.253852, 0.887101,
		-0.741825, -0.656994, 0.134366,
		0.548711, -0.709872, -0.441586,
		38.835320, 34.495625, 41.257935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199162, 34.340168, 41.785789>,  <38.451221, 34.992535, 41.567047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199162, 34.340168, 41.785789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583527, 34.325874, 41.675980>,  <38.814148, 34.317299, 41.610092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583527, 34.325874, 41.675980>,  <38.199162, 34.340168, 41.785789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583527, 34.325874, 41.675980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255648, -0.265976, 0.929463,
		-0.106232, -0.963317, -0.246445,
		0.960915, -0.035735, -0.274525,
		38.871799, 34.315155, 41.593620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465515, 33.695194, 41.974548>,  <38.199162, 34.340168, 41.785789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465515, 33.695194, 41.974548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770866, 33.953560, 41.971584>,  <38.954075, 34.108578, 41.969807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770866, 33.953560, 41.971584>,  <38.465515, 33.695194, 41.974548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770866, 33.953560, 41.971584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228903, -0.259761, 0.938151,
		0.604038, -0.717858, -0.346147,
		0.763375, 0.645913, -0.007414,
		38.999878, 34.147335, 41.969360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083469, 33.487816, 42.339767>,  <38.465515, 33.695194, 41.974548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083469, 33.487816, 42.339767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123844, 33.885727, 42.333748>,  <39.148067, 34.124474, 42.330135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123844, 33.885727, 42.333748>,  <39.083469, 33.487816, 42.339767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123844, 33.885727, 42.333748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149073, -0.000169, 0.988826,
		0.983661, -0.102049, -0.148312,
		0.100934, 0.994779, -0.015047,
		39.154125, 34.184162, 42.329235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032440, 33.594994, 43.038109>,  <39.083469, 33.487816, 42.339767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032440, 33.594994, 43.038109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142780, 33.946095, 42.881413>,  <39.208984, 34.156754, 42.787395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142780, 33.946095, 42.881413>,  <39.032440, 33.594994, 43.038109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142780, 33.946095, 42.881413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214152, 0.341191, 0.915274,
		0.937041, -0.336371, -0.093855,
		0.275849, 0.877749, -0.391745,
		39.225536, 34.209419, 42.763889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787170, 33.678989, 43.177601>,  <39.032440, 33.594994, 43.038109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787170, 33.678989, 43.177601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568466, 34.012589, 43.147923>,  <39.437244, 34.212746, 43.130116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568466, 34.012589, 43.147923>,  <39.787170, 33.678989, 43.177601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568466, 34.012589, 43.147923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305224, 0.281049, 0.909862,
		0.779672, 0.474832, -0.408222,
		-0.546763, 0.833994, -0.074196,
		39.404438, 34.262787, 43.125664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100410, 34.241367, 43.610409>,  <39.787170, 33.678989, 43.177601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100410, 34.241367, 43.610409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746944, 34.417755, 43.547581>,  <39.534863, 34.523590, 43.509884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746944, 34.417755, 43.547581>,  <40.100410, 34.241367, 43.610409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746944, 34.417755, 43.547581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039978, 0.405409, 0.913261,
		0.466401, 0.800742, -0.375876,
		-0.883670, 0.440972, -0.157071,
		39.481842, 34.550045, 43.500458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163921, 34.878098, 43.870853>,  <40.100410, 34.241367, 43.610409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163921, 34.878098, 43.870853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767712, 34.823242, 43.868134>,  <39.529984, 34.790329, 43.866501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767712, 34.823242, 43.868134>,  <40.163921, 34.878098, 43.870853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767712, 34.823242, 43.868134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035889, 0.210809, 0.976868,
		-0.132533, 0.967860, -0.213734,
		-0.990529, -0.137137, -0.006796,
		39.470554, 34.782101, 43.866096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864960, 35.419094, 44.218632>,  <40.163921, 34.878098, 43.870853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864960, 35.419094, 44.218632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596024, 35.123596, 44.237438>,  <39.434662, 34.946297, 44.248722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596024, 35.123596, 44.237438>,  <39.864960, 35.419094, 44.218632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596024, 35.123596, 44.237438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189612, 0.233266, 0.953748,
		-0.715548, 0.632326, -0.296909,
		-0.672338, -0.738749, 0.047016,
		39.394321, 34.901970, 44.251545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356697, 35.643364, 44.748428>,  <39.864960, 35.419094, 44.218632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356697, 35.643364, 44.748428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283184, 35.250690, 44.728348>,  <39.239079, 35.015087, 44.716297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283184, 35.250690, 44.728348>,  <39.356697, 35.643364, 44.748428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283184, 35.250690, 44.728348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308303, 0.009070, 0.951245,
		-0.933367, 0.190298, -0.304323,
		-0.183780, -0.981684, -0.050204,
		39.228050, 34.956184, 44.713287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702484, 35.570793, 45.037331>,  <39.356697, 35.643364, 44.748428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702484, 35.570793, 45.037331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910084, 35.230083, 45.065945>,  <39.034645, 35.025658, 45.083111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910084, 35.230083, 45.065945>,  <38.702484, 35.570793, 45.037331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910084, 35.230083, 45.065945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170568, -0.021200, 0.985118,
		-0.837585, -0.523475, -0.156289,
		0.518998, -0.851778, 0.071531,
		39.065784, 34.974548, 45.087402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306828, 35.169540, 45.419441>,  <38.702484, 35.570793, 45.037331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306828, 35.169540, 45.419441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668037, 35.001007, 45.452969>,  <38.884766, 34.899887, 45.473083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668037, 35.001007, 45.452969>,  <38.306828, 35.169540, 45.419441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668037, 35.001007, 45.452969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144425, -0.113999, 0.982927,
		-0.404580, -0.899714, -0.163794,
		0.903026, -0.421329, 0.083820,
		38.938946, 34.874607, 45.478115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225925, 34.626091, 45.872761>,  <38.306828, 35.169540, 45.419441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225925, 34.626091, 45.872761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615726, 34.715652, 45.866936>,  <38.849606, 34.769390, 45.863441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615726, 34.715652, 45.866936>,  <38.225925, 34.626091, 45.872761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615726, 34.715652, 45.866936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036238, -0.092989, 0.995007,
		0.221436, -0.970164, -0.098732,
		0.974501, 0.223908, -0.014566,
		38.908077, 34.782825, 45.862568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415840, 34.183769, 46.272900>,  <38.225925, 34.626091, 45.872761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415840, 34.183769, 46.272900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700920, 34.464230, 46.264416>,  <38.871967, 34.632504, 46.259323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700920, 34.464230, 46.264416>,  <38.415840, 34.183769, 46.272900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700920, 34.464230, 46.264416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042740, -0.013219, 0.998999,
		0.700165, -0.712894, -0.039388,
		0.712701, 0.701147, -0.021213,
		38.914730, 34.674572, 46.258053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025414, 33.926510, 46.781677>,  <38.415840, 34.183769, 46.272900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025414, 33.926510, 46.781677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055542, 34.321743, 46.727985>,  <39.073620, 34.558884, 46.695770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055542, 34.321743, 46.727985>,  <39.025414, 33.926510, 46.781677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055542, 34.321743, 46.727985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077246, 0.128427, 0.988706,
		0.994163, -0.084841, -0.066652,
		0.075322, 0.988083, -0.134231,
		39.078140, 34.618168, 46.687717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384102, 34.034290, 47.351006>,  <39.025414, 33.926510, 46.781677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384102, 34.034290, 47.351006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311096, 34.404346, 47.217854>,  <39.267292, 34.626381, 47.137962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311096, 34.404346, 47.217854>,  <39.384102, 34.034290, 47.351006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311096, 34.404346, 47.217854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189412, 0.365312, 0.911411,
		0.964786, 0.103292, -0.241906,
		-0.182512, 0.925137, -0.332883,
		39.256344, 34.681889, 47.117989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901131, 34.567787, 47.670250>,  <39.384102, 34.034290, 47.351006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901131, 34.567787, 47.670250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579525, 34.782135, 47.567169>,  <39.386562, 34.910744, 47.505322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579525, 34.782135, 47.567169>,  <39.901131, 34.567787, 47.670250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579525, 34.782135, 47.567169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045792, 0.487905, 0.871695,
		0.592848, 0.689052, -0.416820,
		-0.804011, 0.535869, -0.257701,
		39.338322, 34.942894, 47.489861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096996, 35.302097, 47.988132>,  <39.901131, 34.567787, 47.670250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096996, 35.302097, 47.988132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703796, 35.237667, 47.952885>,  <39.467876, 35.199009, 47.931736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703796, 35.237667, 47.952885>,  <40.096996, 35.302097, 47.988132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703796, 35.237667, 47.952885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154454, 0.465997, 0.871201,
		-0.099268, 0.870001, -0.482954,
		-0.983000, -0.161077, -0.088116,
		39.408897, 35.189342, 47.926449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880825, 35.859154, 48.318073>,  <40.096996, 35.302097, 47.988132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880825, 35.859154, 48.318073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563114, 35.618847, 48.281841>,  <39.372490, 35.474663, 48.260101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563114, 35.618847, 48.281841>,  <39.880825, 35.859154, 48.318073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563114, 35.618847, 48.281841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300799, 0.259317, 0.917755,
		-0.527871, 0.756195, -0.386680,
		-0.794275, -0.600769, -0.090577,
		39.324833, 35.438618, 48.254669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277649, 36.255974, 48.442448>,  <39.880825, 35.859154, 48.318073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277649, 36.255974, 48.442448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160255, 35.882305, 48.523636>,  <39.089821, 35.658104, 48.572350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160255, 35.882305, 48.523636>,  <39.277649, 36.255974, 48.442448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160255, 35.882305, 48.523636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316245, 0.295237, 0.901567,
		-0.902140, 0.200407, -0.382073,
		-0.293483, -0.934169, 0.202968,
		39.072212, 35.602055, 48.584526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736073, 36.359871, 48.908539>,  <39.277649, 36.255974, 48.442448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736073, 36.359871, 48.908539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759598, 35.962273, 48.945450>,  <38.773712, 35.723713, 48.967598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759598, 35.962273, 48.945450>,  <38.736073, 36.359871, 48.908539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759598, 35.962273, 48.945450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186406, 0.079875, 0.979220,
		-0.980711, -0.074794, -0.180589,
		0.058815, -0.993995, 0.092276,
		38.777241, 35.664074, 48.973133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108765, 36.091866, 49.295860>,  <38.736073, 36.359871, 48.908539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108765, 36.091866, 49.295860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412933, 35.836761, 49.344902>,  <38.595432, 35.683701, 49.374329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412933, 35.836761, 49.344902>,  <38.108765, 36.091866, 49.295860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412933, 35.836761, 49.344902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049642, 0.131153, 0.990119,
		-0.647535, -0.758990, 0.068071,
		0.760417, -0.637757, 0.122604,
		38.641060, 35.645435, 49.381683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021305, 35.709606, 50.011959>,  <38.108765, 36.091866, 49.295860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021305, 35.709606, 50.011959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404243, 35.673595, 49.902134>,  <38.634007, 35.651989, 49.836239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404243, 35.673595, 49.902134>,  <38.021305, 35.709606, 50.011959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404243, 35.673595, 49.902134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287364, 0.197293, 0.937282,
		-0.030210, -0.976202, 0.214748,
		0.957345, -0.090026, -0.274565,
		38.691448, 35.646587, 49.819763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348175, 35.382744, 50.528194>,  <38.021305, 35.709606, 50.011959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348175, 35.382744, 50.528194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654732, 35.551941, 50.334816>,  <38.838665, 35.653458, 50.218788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654732, 35.551941, 50.334816>,  <38.348175, 35.382744, 50.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654732, 35.551941, 50.334816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439458, 0.203677, 0.874867,
		0.468526, -0.882947, -0.029789,
		0.766394, 0.422989, -0.483446,
		38.884651, 35.678837, 50.189781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996346, 35.027939, 50.722900>,  <38.348175, 35.382744, 50.528194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996346, 35.027939, 50.722900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127262, 35.373962, 50.570820>,  <39.205814, 35.581577, 50.479572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127262, 35.373962, 50.570820>,  <38.996346, 35.027939, 50.722900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127262, 35.373962, 50.570820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458296, 0.206547, 0.864467,
		0.826343, -0.457181, -0.328850,
		0.327295, 0.865057, -0.380203,
		39.225452, 35.633480, 50.456760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696747, 35.055996, 50.957947>,  <38.996346, 35.027939, 50.722900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696747, 35.055996, 50.957947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555340, 35.425648, 50.899971>,  <39.470497, 35.647438, 50.865185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555340, 35.425648, 50.899971>,  <39.696747, 35.055996, 50.957947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555340, 35.425648, 50.899971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359759, 0.277350, 0.890871,
		0.863480, 0.262795, -0.430512,
		-0.353519, 0.924130, -0.144944,
		39.449284, 35.702888, 50.856487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020721, 35.376427, 51.378151>,  <39.696747, 35.055996, 50.957947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020721, 35.376427, 51.378151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809669, 35.696335, 51.263626>,  <39.683037, 35.888279, 51.194912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809669, 35.696335, 51.263626>,  <40.020721, 35.376427, 51.378151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809669, 35.696335, 51.263626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224322, 0.456263, 0.861106,
		0.819319, 0.390121, -0.420145,
		-0.527632, 0.799768, -0.286313,
		39.651379, 35.936264, 51.177731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449196, 35.974247, 51.521721>,  <40.020721, 35.376427, 51.378151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449196, 35.974247, 51.521721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071903, 36.103840, 51.492474>,  <39.845528, 36.181595, 51.474926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071903, 36.103840, 51.492474>,  <40.449196, 35.974247, 51.521721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071903, 36.103840, 51.492474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154937, 0.623931, 0.765966,
		0.293780, 0.711156, -0.638710,
		-0.943233, 0.323985, -0.073114,
		39.788933, 36.201035, 51.470539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809124, 36.525871, 51.702686>,  <40.449196, 35.974247, 51.521721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809124, 36.525871, 51.702686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658707, 36.886944, 51.786354>,  <40.568455, 37.103588, 51.836555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658707, 36.886944, 51.786354>,  <40.809124, 36.525871, 51.702686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658707, 36.886944, 51.786354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146398, 0.280783, -0.948540,
		-0.914963, -0.326073, -0.237738,
		-0.376047, 0.902683, 0.209169,
		40.545891, 37.157749, 51.849106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182949, 36.708168, 51.226601>,  <40.809124, 36.525871, 51.702686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182949, 36.708168, 51.226601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351528, 37.045353, 51.360340>,  <40.452675, 37.247665, 51.440586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351528, 37.045353, 51.360340>,  <40.182949, 36.708168, 51.226601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351528, 37.045353, 51.360340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087137, 0.329346, -0.940180,
		-0.902656, 0.425373, 0.065350,
		0.421449, 0.842964, 0.334352,
		40.477962, 37.298241, 51.460648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892361, 37.248070, 50.918350>,  <40.182949, 36.708168, 51.226601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892361, 37.248070, 50.918350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214878, 37.430962, 51.068459>,  <40.408390, 37.540695, 51.158524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214878, 37.430962, 51.068459>,  <39.892361, 37.248070, 50.918350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214878, 37.430962, 51.068459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127786, 0.484803, -0.865238,
		-0.577542, 0.745594, 0.332469,
		0.806298, 0.457226, 0.375270,
		40.456768, 37.568130, 51.181038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940979, 37.965889, 50.608990>,  <39.892361, 37.248070, 50.918350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940979, 37.965889, 50.608990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310997, 37.872948, 50.729195>,  <40.533009, 37.817184, 50.801319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310997, 37.872948, 50.729195>,  <39.940979, 37.965889, 50.608990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310997, 37.872948, 50.729195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366712, 0.339902, -0.866019,
		0.099075, 0.911307, 0.399630,
		0.925044, -0.232349, 0.300511,
		40.588509, 37.803242, 50.819347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370106, 38.562912, 50.279144>,  <39.940979, 37.965889, 50.608990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370106, 38.562912, 50.279144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639786, 38.285213, 50.379917>,  <40.801594, 38.118595, 50.440380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639786, 38.285213, 50.379917>,  <40.370106, 38.562912, 50.279144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639786, 38.285213, 50.379917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553086, 0.248550, -0.795185,
		0.489436, 0.675458, 0.551551,
		0.674202, -0.694247, 0.251937,
		40.842045, 38.076939, 50.455498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033455, 38.862297, 50.305424>,  <40.370106, 38.562912, 50.279144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033455, 38.862297, 50.305424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076164, 38.472000, 50.228973>,  <41.101788, 38.237823, 50.183102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076164, 38.472000, 50.228973>,  <41.033455, 38.862297, 50.305424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076164, 38.472000, 50.228973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335931, 0.216322, -0.916709,
		0.935816, 0.033672, 0.350879,
		0.106771, -0.975741, -0.191126,
		41.108196, 38.179279, 50.171635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662628, 38.738190, 49.993053>,  <41.033455, 38.862297, 50.305424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662628, 38.738190, 49.993053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458355, 38.416115, 49.872467>,  <41.335793, 38.222870, 49.800114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458355, 38.416115, 49.872467>,  <41.662628, 38.738190, 49.993053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458355, 38.416115, 49.872467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391320, 0.094537, -0.915386,
		0.765553, -0.585442, 0.266806,
		-0.510682, -0.805183, -0.301468,
		41.305149, 38.174561, 49.782028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991699, 38.592434, 49.396748>,  <41.662628, 38.738190, 49.993053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991699, 38.592434, 49.396748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674545, 38.349003, 49.384338>,  <41.484253, 38.202946, 49.376892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674545, 38.349003, 49.384338>,  <41.991699, 38.592434, 49.396748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674545, 38.349003, 49.384338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045543, -0.008421, -0.998927,
		0.607664, -0.793449, 0.034393,
		-0.792887, -0.608578, -0.031020,
		41.436680, 38.166428, 49.375034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158489, 38.175285, 48.891129>,  <41.991699, 38.592434, 49.396748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158489, 38.175285, 48.891129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768627, 38.087292, 48.907391>,  <41.534710, 38.034496, 48.917149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768627, 38.087292, 48.907391>,  <42.158489, 38.175285, 48.891129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768627, 38.087292, 48.907391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026436, -0.067190, -0.997390,
		0.222142, -0.973187, 0.059671,
		-0.974656, -0.219985, 0.040653,
		41.476231, 38.021297, 48.919586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073811, 37.575748, 48.477093>,  <42.158489, 38.175285, 48.891129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073811, 37.575748, 48.477093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709480, 37.738941, 48.502213>,  <41.490883, 37.836857, 48.517284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709480, 37.738941, 48.502213>,  <42.073811, 37.575748, 48.477093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709480, 37.738941, 48.502213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101965, -0.074937, -0.991961,
		-0.400001, -0.909907, 0.109854,
		-0.910826, 0.407987, 0.062804,
		41.436234, 37.861336, 48.521053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722492, 37.127720, 48.033230>,  <42.073811, 37.575748, 48.477093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722492, 37.127720, 48.033230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463696, 37.431332, 48.062279>,  <41.308418, 37.613499, 48.079708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463696, 37.431332, 48.062279>,  <41.722492, 37.127720, 48.033230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463696, 37.431332, 48.062279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174828, -0.054960, -0.983064,
		-0.742181, -0.648735, 0.168259,
		-0.646995, 0.759028, 0.072627,
		41.269596, 37.659039, 48.084068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982304, 36.919586, 47.773964>,  <41.722492, 37.127720, 48.033230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982304, 36.919586, 47.773964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028790, 37.316330, 47.753120>,  <41.056679, 37.554375, 47.740612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028790, 37.316330, 47.753120>,  <40.982304, 36.919586, 47.773964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028790, 37.316330, 47.753120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155163, -0.033692, -0.987314,
		-0.981030, 0.122822, 0.149984,
		0.116210, 0.991857, -0.052111,
		41.063652, 37.613888, 47.737488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494926, 37.155056, 47.404221>,  <40.982304, 36.919586, 47.773964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494926, 37.155056, 47.404221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778824, 37.434067, 47.364777>,  <40.949162, 37.601475, 47.341110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778824, 37.434067, 47.364777>,  <40.494926, 37.155056, 47.404221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778824, 37.434067, 47.364777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137304, -0.000329, -0.990529,
		-0.690955, 0.716557, 0.095540,
		0.709739, 0.697529, -0.098613,
		40.991745, 37.643326, 47.335194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242584, 37.382324, 46.907726>,  <40.494926, 37.155056, 47.404221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242584, 37.382324, 46.907726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616531, 37.524265, 46.903839>,  <40.840900, 37.609428, 46.901508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616531, 37.524265, 46.903839>,  <40.242584, 37.382324, 46.907726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616531, 37.524265, 46.903839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000175, -0.027824, -0.999613,
		-0.354984, 0.934509, -0.026074,
		0.934873, 0.354851, -0.009713,
		40.896992, 37.630722, 46.900925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141708, 37.872494, 46.515770>,  <40.242584, 37.382324, 46.907726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141708, 37.872494, 46.515770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518185, 37.737350, 46.514847>,  <40.744072, 37.656265, 46.514294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518185, 37.737350, 46.514847>,  <40.141708, 37.872494, 46.515770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518185, 37.737350, 46.514847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013518, -0.030822, -0.999434,
		0.337598, 0.940692, -0.033576,
		0.941194, -0.337860, -0.002311,
		40.800541, 37.635994, 46.514153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308037, 38.036575, 45.926216>,  <40.141708, 37.872494, 46.515770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308037, 38.036575, 45.926216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613655, 37.787769, 45.994736>,  <40.797024, 37.638485, 46.035847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613655, 37.787769, 45.994736>,  <40.308037, 38.036575, 45.926216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613655, 37.787769, 45.994736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140847, -0.098298, -0.985139,
		0.629605, 0.776815, 0.012504,
		0.764041, -0.622010, 0.171301,
		40.842869, 37.601166, 46.046127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876656, 38.221363, 45.458797>,  <40.308037, 38.036575, 45.926216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876656, 38.221363, 45.458797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949570, 37.840549, 45.557102>,  <40.993320, 37.612061, 45.616085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949570, 37.840549, 45.557102>,  <40.876656, 38.221363, 45.458797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949570, 37.840549, 45.557102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217747, -0.204658, -0.954307,
		0.958831, 0.227474, 0.169996,
		0.182289, -0.952035, 0.245764,
		41.004257, 37.554939, 45.630833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307564, 37.958984, 44.896336>,  <40.876656, 38.221363, 45.458797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307564, 37.958984, 44.896336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195221, 37.624184, 45.084187>,  <41.127815, 37.423306, 45.196899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195221, 37.624184, 45.084187>,  <41.307564, 37.958984, 44.896336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195221, 37.624184, 45.084187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124704, -0.453353, -0.882564,
		0.951614, -0.306438, 0.022950,
		-0.280855, -0.836998, 0.469632,
		41.110966, 37.373085, 45.225075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780247, 37.467857, 44.639359>,  <41.307564, 37.958984, 44.896336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780247, 37.467857, 44.639359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459244, 37.255890, 44.749020>,  <41.266640, 37.128708, 44.814816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459244, 37.255890, 44.749020>,  <41.780247, 37.467857, 44.639359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459244, 37.255890, 44.749020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078600, -0.361599, -0.929015,
		0.591438, -0.767093, 0.248535,
		-0.802510, -0.529919, 0.274156,
		41.218491, 37.096912, 44.831268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856750, 36.805313, 44.355915>,  <41.780247, 37.467857, 44.639359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856750, 36.805313, 44.355915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465340, 36.817165, 44.437504>,  <41.230492, 36.824276, 44.486458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465340, 36.817165, 44.437504>,  <41.856750, 36.805313, 44.355915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465340, 36.817165, 44.437504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195693, -0.444157, -0.874316,
		0.064692, -0.895459, 0.440418,
		-0.978529, 0.029626, 0.203968,
		41.171780, 36.826054, 44.498695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503632, 36.080700, 44.169140>,  <41.856750, 36.805313, 44.355915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503632, 36.080700, 44.169140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214611, 36.356968, 44.157173>,  <41.041199, 36.522728, 44.149994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214611, 36.356968, 44.157173>,  <41.503632, 36.080700, 44.169140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214611, 36.356968, 44.157173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335916, -0.388585, -0.857999,
		-0.604222, -0.609895, 0.512780,
		-0.722548, 0.690673, -0.029918,
		40.997845, 36.564171, 44.148197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914768, 35.747684, 43.832100>,  <41.503632, 36.080700, 44.169140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914768, 35.747684, 43.832100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839752, 36.140461, 43.822178>,  <40.794743, 36.376129, 43.816223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839752, 36.140461, 43.822178>,  <40.914768, 35.747684, 43.832100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839752, 36.140461, 43.822178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391525, -0.097891, -0.914946,
		-0.900853, -0.161879, 0.402814,
		-0.187542, 0.981943, -0.024806,
		40.783489, 36.435043, 43.814735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204849, 35.799778, 43.561607>,  <40.914768, 35.747684, 43.832100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204849, 35.799778, 43.561607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389660, 36.150101, 43.505756>,  <40.500546, 36.360294, 43.472248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389660, 36.150101, 43.505756>,  <40.204849, 35.799778, 43.561607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389660, 36.150101, 43.505756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237735, -0.029367, -0.970886,
		-0.854411, 0.481764, 0.194642,
		0.462022, 0.875808, -0.139624,
		40.528267, 36.412842, 43.463871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748077, 36.227280, 43.199387>,  <40.204849, 35.799778, 43.561607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748077, 36.227280, 43.199387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102589, 36.406273, 43.151592>,  <40.315296, 36.513668, 43.122913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102589, 36.406273, 43.151592>,  <39.748077, 36.227280, 43.199387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102589, 36.406273, 43.151592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200252, 0.137596, -0.970034,
		-0.417630, 0.883645, 0.211557,
		0.886275, 0.447481, -0.119488,
		40.368473, 36.540516, 43.115746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626163, 36.853806, 42.837086>,  <39.748077, 36.227280, 43.199387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626163, 36.853806, 42.837086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005005, 36.745583, 42.768044>,  <40.232311, 36.680649, 42.726620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005005, 36.745583, 42.768044>,  <39.626163, 36.853806, 42.837086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005005, 36.745583, 42.768044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135659, 0.149903, -0.979350,
		0.290840, 0.950963, 0.105270,
		0.947105, -0.270554, -0.172605,
		40.289135, 36.664417, 42.716263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920868, 37.367077, 42.442169>,  <39.626163, 36.853806, 42.837086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920868, 37.367077, 42.442169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137424, 37.039745, 42.364979>,  <40.267357, 36.843346, 42.318665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137424, 37.039745, 42.364979>,  <39.920868, 37.367077, 42.442169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137424, 37.039745, 42.364979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133219, 0.143129, -0.980697,
		0.830150, 0.556648, -0.031528,
		0.541391, -0.818325, -0.192975,
		40.299843, 36.794247, 42.307087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512150, 37.580894, 41.888378>,  <39.920868, 37.367077, 42.442169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512150, 37.580894, 41.888378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480175, 37.182831, 41.865505>,  <40.460991, 36.943993, 41.851780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480175, 37.182831, 41.865505>,  <40.512150, 37.580894, 41.888378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480175, 37.182831, 41.865505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039486, 0.054164, -0.997751,
		0.996017, -0.082016, 0.034966,
		-0.079938, -0.995158, -0.057186,
		40.456192, 36.884285, 41.848351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944927, 37.460320, 41.354031>,  <40.512150, 37.580894, 41.888378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944927, 37.460320, 41.354031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758709, 37.106716, 41.371010>,  <40.646976, 36.894554, 41.381195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758709, 37.106716, 41.371010>,  <40.944927, 37.460320, 41.354031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758709, 37.106716, 41.371010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033164, -0.065352, -0.997311,
		0.884401, -0.462888, 0.059741,
		-0.465548, -0.884004, 0.042446,
		40.619045, 36.841515, 41.383743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381172, 36.882778, 41.050774>,  <40.944927, 37.460320, 41.354031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381172, 36.882778, 41.050774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000004, 36.763386, 41.029392>,  <40.771305, 36.691750, 41.016563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000004, 36.763386, 41.029392>,  <41.381172, 36.882778, 41.050774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000004, 36.763386, 41.029392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088826, -0.106211, -0.990368,
		0.289933, -0.948486, 0.127723,
		-0.952916, -0.298485, -0.053456,
		40.714130, 36.673840, 41.013355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386574, 36.352783, 40.651787>,  <41.381172, 36.882778, 41.050774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386574, 36.352783, 40.651787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994511, 36.431698, 40.644001>,  <40.759274, 36.479046, 40.639328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994511, 36.431698, 40.644001>,  <41.386574, 36.352783, 40.651787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994511, 36.431698, 40.644001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061057, -0.393835, -0.917151,
		-0.188602, -0.897761, 0.398065,
		-0.980154, 0.197281, -0.019463,
		40.700466, 36.490883, 40.638161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053692, 35.756824, 40.289902>,  <41.386574, 36.352783, 40.651787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053692, 35.756824, 40.289902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799461, 36.065445, 40.278961>,  <40.646923, 36.250618, 40.272396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799461, 36.065445, 40.278961>,  <41.053692, 35.756824, 40.289902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799461, 36.065445, 40.278961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150181, -0.158309, -0.975902,
		-0.757290, -0.616153, 0.216490,
		-0.635577, 0.771554, -0.027351,
		40.608788, 36.296909, 40.270756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661469, 35.542286, 39.714329>,  <41.053692, 35.756824, 40.289902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661469, 35.542286, 39.714329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545067, 35.922459, 39.758144>,  <40.475227, 36.150562, 39.784435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545067, 35.922459, 39.758144>,  <40.661469, 35.542286, 39.714329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545067, 35.922459, 39.758144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126860, 0.075155, -0.989069,
		-0.948275, -0.301716, 0.098701,
		-0.291000, 0.950431, 0.109543,
		40.457767, 36.207588, 39.791008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066864, 35.693020, 39.142937>,  <40.661469, 35.542286, 39.714329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066864, 35.693020, 39.142937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215321, 36.051250, 39.241077>,  <40.304394, 36.266190, 39.299961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215321, 36.051250, 39.241077>,  <40.066864, 35.693020, 39.142937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215321, 36.051250, 39.241077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011808, 0.259649, -0.965631,
		-0.928501, 0.361285, 0.085792,
		0.371143, 0.895576, 0.245351,
		40.326664, 36.319923, 39.314682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625187, 36.156513, 38.625221>,  <40.066864, 35.693020, 39.142937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625187, 36.156513, 38.625221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959694, 36.336784, 38.750153>,  <40.160397, 36.444946, 38.825111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959694, 36.336784, 38.750153>,  <39.625187, 36.156513, 38.625221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959694, 36.336784, 38.750153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027119, 0.534915, -0.844471,
		-0.547653, 0.714672, 0.435109,
		0.836266, 0.450677, 0.312329,
		40.210575, 36.471989, 38.843853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585232, 36.825634, 38.368294>,  <39.625187, 36.156513, 38.625221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585232, 36.825634, 38.368294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972256, 36.826256, 38.469349>,  <40.204472, 36.826630, 38.529984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972256, 36.826256, 38.469349>,  <39.585232, 36.825634, 38.368294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972256, 36.826256, 38.469349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197970, 0.616588, -0.761989,
		-0.156963, 0.787284, 0.596277,
		0.967559, 0.001559, 0.252641,
		40.262524, 36.826725, 38.545139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713779, 37.577419, 38.466129>,  <39.585232, 36.825634, 38.368294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713779, 37.577419, 38.466129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036488, 37.357189, 38.380348>,  <40.230110, 37.225052, 38.328880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036488, 37.357189, 38.380348>,  <39.713779, 37.577419, 38.466129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036488, 37.357189, 38.380348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137180, 0.527565, -0.838366,
		0.574724, 0.646947, 0.501150,
		0.806768, -0.550577, -0.214456,
		40.278519, 37.192017, 38.316010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205589, 38.033367, 38.524464>,  <39.713779, 37.577419, 38.466129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205589, 38.033367, 38.524464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369820, 37.755482, 38.288227>,  <40.468357, 37.588753, 38.146484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369820, 37.755482, 38.288227>,  <40.205589, 38.033367, 38.524464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369820, 37.755482, 38.288227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017248, 0.653508, -0.756723,
		0.911663, 0.300506, 0.280297,
		0.410576, -0.694711, -0.590596,
		40.492992, 37.547070, 38.111050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715137, 38.425484, 38.110703>,  <40.205589, 38.033367, 38.524464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715137, 38.425484, 38.110703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630066, 38.085327, 37.918201>,  <40.579025, 37.881233, 37.802700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630066, 38.085327, 37.918201>,  <40.715137, 38.425484, 38.110703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630066, 38.085327, 37.918201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110053, 0.510229, -0.852968,
		0.970905, -0.128443, -0.202102,
		-0.212676, -0.850393, -0.481248,
		40.566261, 37.830208, 37.773827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215015, 38.280853, 37.472889>,  <40.715137, 38.425484, 38.110703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215015, 38.280853, 37.472889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924496, 38.027775, 37.365425>,  <40.750183, 37.875927, 37.300945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924496, 38.027775, 37.365425>,  <41.215015, 38.280853, 37.472889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924496, 38.027775, 37.365425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136444, 0.250372, -0.958487,
		0.673700, -0.732806, -0.095517,
		-0.726300, -0.632700, -0.268663,
		40.706604, 37.837963, 37.284824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449585, 37.893353, 36.925198>,  <41.215015, 38.280853, 37.472889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449585, 37.893353, 36.925198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051426, 37.872986, 36.892723>,  <40.812531, 37.860767, 36.873238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051426, 37.872986, 36.892723>,  <41.449585, 37.893353, 36.925198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051426, 37.872986, 36.892723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057064, 0.365696, -0.928983,
		0.076986, -0.929341, -0.361107,
		-0.995398, -0.050913, -0.081185,
		40.752808, 37.857712, 36.868366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406006, 37.466099, 36.434345>,  <41.449585, 37.893353, 36.925198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406006, 37.466099, 36.434345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106468, 37.731018, 36.424568>,  <40.926746, 37.889969, 36.418701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106468, 37.731018, 36.424568>,  <41.406006, 37.466099, 36.434345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106468, 37.731018, 36.424568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257993, 0.257341, -0.931243,
		-0.610474, -0.703657, -0.363577,
		-0.748840, 0.662300, -0.024439,
		40.881817, 37.929707, 36.417236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910065, 37.312237, 35.787388>,  <41.406006, 37.466099, 36.434345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910065, 37.312237, 35.787388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984890, 37.687988, 35.902336>,  <41.029785, 37.913437, 35.971306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984890, 37.687988, 35.902336>,  <40.910065, 37.312237, 35.787388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984890, 37.687988, 35.902336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509299, 0.157406, -0.846072,
		-0.840013, 0.304626, -0.448978,
		0.187063, 0.939376, 0.287369,
		41.041008, 37.969803, 35.988548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853371, 37.617718, 35.217625>,  <40.910065, 37.312237, 35.787388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853371, 37.617718, 35.217625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094463, 37.804890, 35.476158>,  <41.239120, 37.917194, 35.631279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094463, 37.804890, 35.476158>,  <40.853371, 37.617718, 35.217625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094463, 37.804890, 35.476158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646095, 0.189146, -0.739449,
		-0.468264, 0.863286, -0.188324,
		0.602735, 0.467933, 0.646335,
		41.275284, 37.945271, 35.670059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098339, 38.278893, 34.927864>,  <40.853371, 37.617718, 35.217625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098339, 38.278893, 34.927864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371288, 38.199036, 35.209148>,  <41.535057, 38.151119, 35.377918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371288, 38.199036, 35.209148>,  <41.098339, 38.278893, 34.927864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371288, 38.199036, 35.209148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721237, 0.340594, -0.603170,
		-0.119090, 0.918769, 0.376405,
		0.682375, -0.199645, 0.703211,
		41.576000, 38.139141, 35.420113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434219, 38.888237, 35.203075>,  <41.098339, 38.278893, 34.927864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434219, 38.888237, 35.203075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665707, 38.563232, 35.175041>,  <41.804600, 38.368229, 35.158222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665707, 38.563232, 35.175041>,  <41.434219, 38.888237, 35.203075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665707, 38.563232, 35.175041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602432, 0.483849, -0.634796,
		0.549688, 0.325148, 0.769495,
		0.578722, -0.812508, -0.070086,
		41.839325, 38.319481, 35.154015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103363, 39.086510, 35.379284>,  <41.434219, 38.888237, 35.203075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103363, 39.086510, 35.379284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099934, 38.775715, 35.127502>,  <42.097878, 38.589237, 34.976433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099934, 38.775715, 35.127502>,  <42.103363, 39.086510, 35.379284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099934, 38.775715, 35.127502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634984, 0.482047, -0.603677,
		0.772477, -0.404870, 0.489243,
		-0.008572, -0.776989, -0.629456,
		42.097363, 38.542618, 34.938667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772644, 39.104668, 35.016998>,  <42.103363, 39.086510, 35.379284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772644, 39.104668, 35.016998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508427, 38.889442, 34.807549>,  <42.349895, 38.760307, 34.681881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508427, 38.889442, 34.807549>,  <42.772644, 39.104668, 35.016998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508427, 38.889442, 34.807549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506284, 0.195781, -0.839849,
		0.554405, -0.819854, 0.143090,
		-0.660539, -0.538061, -0.523621,
		42.310265, 38.728024, 34.650463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094215, 38.553329, 34.604774>,  <42.772644, 39.104668, 35.016998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094215, 38.553329, 34.604774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756355, 38.711128, 34.460033>,  <42.553638, 38.805809, 34.373188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756355, 38.711128, 34.460033>,  <43.094215, 38.553329, 34.604774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756355, 38.711128, 34.460033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476948, 0.247647, -0.843322,
		-0.243077, -0.884896, -0.397331,
		-0.844650, 0.394499, -0.361853,
		42.502960, 38.829479, 34.351479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930382, 38.538372, 34.371010>,  <43.094215, 38.553329, 34.604774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930382, 38.538372, 34.371010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093044, 38.185558, 34.466206>,  <44.190643, 37.973869, 34.523323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093044, 38.185558, 34.466206>,  <43.930382, 38.538372, 34.371010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093044, 38.185558, 34.466206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463928, -0.025035, -0.885519,
		0.787020, 0.470511, 0.399022,
		0.406657, -0.882039, 0.237987,
		44.215042, 37.920948, 34.537601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633091, 38.556648, 34.176262>,  <43.930382, 38.538372, 34.371010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633091, 38.556648, 34.176262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548710, 38.166027, 34.193428>,  <44.498081, 37.931656, 34.203728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548710, 38.166027, 34.193428>,  <44.633091, 38.556648, 34.176262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548710, 38.166027, 34.193428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457936, -0.137521, -0.878284,
		0.863593, -0.165626, 0.476210,
		-0.210955, -0.976553, 0.042916,
		44.485424, 37.873062, 34.206303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322350, 38.126293, 34.077343>,  <44.633091, 38.556648, 34.176262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322350, 38.126293, 34.077343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034836, 37.859783, 33.997921>,  <44.862328, 37.699875, 33.950268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034836, 37.859783, 33.997921>,  <45.322350, 38.126293, 34.077343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034836, 37.859783, 33.997921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436703, -0.210469, -0.874639,
		0.540965, -0.715384, 0.442248,
		-0.718782, -0.666280, -0.198554,
		44.819202, 37.659901, 33.938354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648869, 37.516567, 33.964046>,  <45.322350, 38.126293, 34.077343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648869, 37.516567, 33.964046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294071, 37.485107, 33.782032>,  <45.081192, 37.466232, 33.672825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294071, 37.485107, 33.782032>,  <45.648869, 37.516567, 33.964046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294071, 37.485107, 33.782032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461129, -0.098427, -0.881857,
		0.024570, -0.992031, 0.123572,
		-0.886993, -0.078650, -0.455037,
		45.027973, 37.461514, 33.645519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734203, 37.037113, 33.490589>,  <45.648869, 37.516567, 33.964046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734203, 37.037113, 33.490589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412075, 37.235855, 33.361221>,  <45.218800, 37.355099, 33.283600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412075, 37.235855, 33.361221>,  <45.734203, 37.037113, 33.490589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412075, 37.235855, 33.361221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336826, -0.065484, -0.939287,
		-0.487866, -0.865361, -0.114618,
		-0.805316, 0.496852, -0.323424,
		45.170479, 37.384911, 33.264194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585583, 36.656086, 32.940922>,  <45.734203, 37.037113, 33.490589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585583, 36.656086, 32.940922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361893, 36.982681, 32.883488>,  <45.227680, 37.178638, 32.849026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361893, 36.982681, 32.883488>,  <45.585583, 36.656086, 32.940922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361893, 36.982681, 32.883488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229407, -0.014025, -0.973230,
		-0.796645, -0.577191, -0.179465,
		-0.559223, 0.816489, -0.143585,
		45.194126, 37.227627, 32.840412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002998, 36.537766, 32.479908>,  <45.585583, 36.656086, 32.940922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002998, 36.537766, 32.479908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121231, 36.919872, 32.475830>,  <45.192169, 37.149136, 32.473381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121231, 36.919872, 32.475830>,  <45.002998, 36.537766, 32.479908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121231, 36.919872, 32.475830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093847, -0.039659, -0.994796,
		-0.950698, 0.293082, -0.101371,
		0.295577, 0.955264, -0.010198,
		45.209904, 37.206451, 32.472771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579090, 36.907833, 31.981785>,  <45.002998, 36.537766, 32.479908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579090, 36.907833, 31.981785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913849, 37.122593, 32.024376>,  <45.114704, 37.251450, 32.049931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913849, 37.122593, 32.024376>,  <44.579090, 36.907833, 31.981785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913849, 37.122593, 32.024376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059265, 0.104503, -0.992757,
		-0.544137, 0.837149, 0.055639,
		0.836900, 0.536899, 0.106478,
		45.164921, 37.283661, 32.056320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473057, 37.249729, 31.421129>,  <44.579090, 36.907833, 31.981785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473057, 37.249729, 31.421129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836338, 37.396370, 31.501890>,  <45.054306, 37.484356, 31.550346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836338, 37.396370, 31.501890>,  <44.473057, 37.249729, 31.421129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836338, 37.396370, 31.501890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144203, 0.178769, -0.973266,
		-0.392895, 0.913042, 0.109494,
		0.908207, 0.366602, 0.201900,
		45.108799, 37.506351, 31.562460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496292, 37.826752, 31.017561>,  <44.473057, 37.249729, 31.421129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496292, 37.826752, 31.017561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873871, 37.722919, 31.099131>,  <45.100418, 37.660622, 31.148073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873871, 37.722919, 31.099131>,  <44.496292, 37.826752, 31.017561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873871, 37.722919, 31.099131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216554, 0.020709, -0.976051,
		0.249142, 0.965499, 0.075762,
		0.943945, -0.259582, 0.203924,
		45.157055, 37.645046, 31.160307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972332, 38.278366, 30.679850>,  <44.496292, 37.826752, 31.017561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972332, 38.278366, 30.679850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112843, 37.906487, 30.724152>,  <45.197147, 37.683357, 30.750732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112843, 37.906487, 30.724152>,  <44.972332, 38.278366, 30.679850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112843, 37.906487, 30.724152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079414, -0.088282, -0.992925,
		0.932898, 0.357586, 0.042819,
		0.351275, -0.929698, 0.110756,
		45.218224, 37.627579, 30.757378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546494, 38.210308, 30.267860>,  <44.972332, 38.278366, 30.679850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546494, 38.210308, 30.267860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462711, 37.822857, 30.321352>,  <45.412441, 37.590385, 30.353447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462711, 37.822857, 30.321352>,  <45.546494, 38.210308, 30.267860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462711, 37.822857, 30.321352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137969, -0.164672, -0.976651,
		0.968037, -0.186110, 0.168132,
		-0.209451, -0.968631, 0.133731,
		45.399876, 37.532269, 30.361471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961349, 37.936028, 29.758369>,  <45.546494, 38.210308, 30.267860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961349, 37.936028, 29.758369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714710, 37.630703, 29.835484>,  <45.566727, 37.447510, 29.881752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714710, 37.630703, 29.835484>,  <45.961349, 37.936028, 29.758369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714710, 37.630703, 29.835484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241929, -0.416734, -0.876244,
		0.749187, -0.493647, 0.441623,
		-0.616594, -0.763312, 0.192784,
		45.529732, 37.401711, 29.893318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289375, 37.338669, 29.529381>,  <45.961349, 37.936028, 29.758369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289375, 37.338669, 29.529381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903954, 37.233265, 29.547848>,  <45.672703, 37.170025, 29.558928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903954, 37.233265, 29.547848>,  <46.289375, 37.338669, 29.529381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903954, 37.233265, 29.547848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110220, -0.548277, -0.829001,
		0.243758, -0.793698, 0.557338,
		-0.963553, -0.263505, 0.046165,
		45.614887, 37.154213, 29.561697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233017, 36.595669, 29.475313>,  <46.289375, 37.338669, 29.529381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233017, 36.595669, 29.475313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864464, 36.719528, 29.381361>,  <45.643333, 36.793846, 29.324989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864464, 36.719528, 29.381361>,  <46.233017, 36.595669, 29.475313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864464, 36.719528, 29.381361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045261, -0.514747, -0.856147,
		-0.386010, -0.799470, 0.460264,
		-0.921384, 0.309649, -0.234882,
		45.588047, 36.812424, 29.310896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820091, 35.989292, 29.302113>,  <46.233017, 36.595669, 29.475313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820091, 35.989292, 29.302113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638252, 36.304150, 29.135378>,  <45.529148, 36.493065, 29.035337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638252, 36.304150, 29.135378>,  <45.820091, 35.989292, 29.302113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638252, 36.304150, 29.135378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065947, -0.496450, -0.865556,
		-0.888253, -0.365990, 0.277594,
		-0.454597, 0.787139, -0.416837,
		45.501873, 36.540291, 29.010326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258472, 35.721424, 28.955626>,  <45.820091, 35.989292, 29.302113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258472, 35.721424, 28.955626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274509, 36.082378, 28.784000>,  <45.284130, 36.298950, 28.681025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274509, 36.082378, 28.784000>,  <45.258472, 35.721424, 28.955626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274509, 36.082378, 28.784000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172396, -0.416723, -0.892537,
		-0.984212, 0.109750, 0.138861,
		0.040089, 0.902384, -0.429064,
		45.286537, 36.353092, 28.655281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553928, 35.836773, 28.741287>,  <45.258472, 35.721424, 28.955626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553928, 35.836773, 28.741287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795891, 36.050007, 28.504675>,  <44.941067, 36.177948, 28.362707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795891, 36.050007, 28.504675>,  <44.553928, 35.836773, 28.741287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795891, 36.050007, 28.504675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391325, -0.447955, -0.803866,
		-0.693509, 0.717744, -0.062360,
		0.604905, 0.533085, -0.591532,
		44.977364, 36.209934, 28.327215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220768, 35.833794, 28.087088>,  <44.553928, 35.836773, 28.741287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220768, 35.833794, 28.087088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556435, 36.012611, 27.963182>,  <44.757835, 36.119904, 27.888840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556435, 36.012611, 27.963182>,  <44.220768, 35.833794, 28.087088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556435, 36.012611, 27.963182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190521, -0.291836, -0.937301,
		-0.509414, 0.845568, -0.159728,
		0.839166, 0.447043, -0.309763,
		44.808186, 36.146725, 27.870253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986305, 36.369015, 27.646225>,  <44.220768, 35.833794, 28.087088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986305, 36.369015, 27.646225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356266, 36.233845, 27.576519>,  <44.578243, 36.152740, 27.534697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356266, 36.233845, 27.576519>,  <43.986305, 36.369015, 27.646225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356266, 36.233845, 27.576519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251471, -0.199920, -0.946992,
		0.285178, 0.919693, -0.269886,
		0.924898, -0.337929, -0.174263,
		44.633736, 36.132465, 27.524240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203903, 36.436253, 26.955330>,  <43.986305, 36.369015, 27.646225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203903, 36.436253, 26.955330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456505, 36.149426, 27.073326>,  <44.608067, 35.977329, 27.144125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456505, 36.149426, 27.073326>,  <44.203903, 36.436253, 26.955330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456505, 36.149426, 27.073326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169124, -0.498678, -0.850128,
		0.756701, 0.486971, -0.436191,
		0.631506, -0.717063, 0.294992,
		44.645958, 35.934307, 27.161823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871086, 36.426590, 26.459078>,  <44.203903, 36.436253, 26.955330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871086, 36.426590, 26.459078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783516, 36.070515, 26.618900>,  <44.730976, 35.856869, 26.714794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783516, 36.070515, 26.618900>,  <44.871086, 36.426590, 26.459078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783516, 36.070515, 26.618900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066473, -0.394933, -0.916302,
		0.973476, -0.227158, 0.027286,
		-0.218922, -0.890183, 0.399558,
		44.717838, 35.803459, 26.738768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808044, 35.931248, 25.926718>,  <44.871086, 36.426590, 26.459078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808044, 35.931248, 25.926718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.724735, 35.686825, 26.232195>,  <44.674751, 35.540169, 26.415482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.724735, 35.686825, 26.232195>,  <44.808044, 35.931248, 25.926718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724735, 35.686825, 26.232195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014008, -0.782600, -0.622368,
		0.977970, -0.118924, 0.171554,
		-0.208273, -0.611060, 0.763693,
		44.662254, 35.503506, 26.461304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246010, 35.376007, 25.925821>,  <44.808044, 35.931248, 25.926718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246010, 35.376007, 25.925821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915157, 35.230160, 26.096893>,  <44.716648, 35.142651, 26.199535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915157, 35.230160, 26.096893>,  <45.246010, 35.376007, 25.925821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915157, 35.230160, 26.096893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034455, -0.792445, -0.608970,
		0.560955, -0.488961, 0.668017,
		-0.827129, -0.364621, 0.427679,
		44.667019, 35.120773, 26.225197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475670, 34.811096, 26.307463>,  <45.246010, 35.376007, 25.925821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475670, 34.811096, 26.307463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100342, 34.819256, 26.169392>,  <44.875145, 34.824150, 26.086550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100342, 34.819256, 26.169392>,  <45.475670, 34.811096, 26.307463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100342, 34.819256, 26.169392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139069, -0.891698, -0.430738,
		-0.316581, -0.452171, 0.833857,
		-0.938316, 0.020400, -0.345178,
		44.818848, 34.825375, 26.065838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209560, 34.241264, 26.527672>,  <45.475670, 34.811096, 26.307463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209560, 34.241264, 26.527672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046909, 34.366756, 26.184458>,  <44.949318, 34.442051, 25.978529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046909, 34.366756, 26.184458>,  <45.209560, 34.241264, 26.527672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046909, 34.366756, 26.184458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164706, -0.898624, -0.406628,
		-0.898624, -0.306670, 0.313732,
		0.406628, -0.313732, 0.858036,
		44.924923, 34.460876, 25.927048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712662, 33.595612, 26.459406>,  <45.209560, 34.241264, 26.527672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712662, 33.595612, 26.459406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356827, 33.659229, 26.288134>,  <45.143326, 33.697399, 26.185369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356827, 33.659229, 26.288134>,  <45.712662, 33.595612, 26.459406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356827, 33.659229, 26.288134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447445, -0.115009, 0.886885,
		0.091813, 0.980549, 0.173476,
		-0.889586, 0.159048, -0.428183,
		45.089951, 33.706944, 26.159679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176296, 33.102242, 26.293823>,  <45.712662, 33.595612, 26.459406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176296, 33.102242, 26.293823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256031, 32.731987, 26.422482>,  <46.303871, 32.509834, 26.499676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256031, 32.731987, 26.422482>,  <46.176296, 33.102242, 26.293823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.256031, 32.731987, 26.422482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103639, 0.346305, 0.932380,
		-0.974434, -0.152527, 0.164965,
		0.199341, -0.925640, 0.321643,
		46.315834, 32.454296, 26.518974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693417, 32.864521, 26.834608>,  <46.176296, 33.102242, 26.293823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693417, 32.864521, 26.834608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036396, 32.659718, 26.855133>,  <46.242184, 32.536835, 26.867447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036396, 32.659718, 26.855133>,  <45.693417, 32.864521, 26.834608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036396, 32.659718, 26.855133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010435, 0.116996, 0.993078,
		-0.514471, -0.850973, 0.105660,
		0.857444, -0.512013, 0.051311,
		46.293629, 32.506115, 26.870527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754387, 32.417366, 27.410744>,  <45.693417, 32.864521, 26.834608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754387, 32.417366, 27.410744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140560, 32.470978, 27.321323>,  <46.372265, 32.503143, 27.267672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140560, 32.470978, 27.321323>,  <45.754387, 32.417366, 27.410744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140560, 32.470978, 27.321323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229381, -0.029549, 0.972888,
		0.123791, -0.990536, -0.059271,
		0.965433, 0.134031, -0.223552,
		46.430191, 32.511189, 27.254257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306885, 31.964077, 27.782333>,  <45.754387, 32.417366, 27.410744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.306885, 31.964077, 27.782333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493759, 32.307213, 27.696684>,  <46.605885, 32.513096, 27.645294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493759, 32.307213, 27.696684>,  <46.306885, 31.964077, 27.782333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493759, 32.307213, 27.696684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225120, 0.118785, 0.967063,
		0.855021, -0.500000, -0.137623,
		0.467184, 0.857841, -0.214123,
		46.633915, 32.564564, 27.632446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.883751, 31.954889, 28.063440>,  <46.306885, 31.964077, 27.782333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.883751, 31.954889, 28.063440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.769333, 32.337681, 28.043959>,  <46.700684, 32.567356, 28.032269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.769333, 32.337681, 28.043959>,  <46.883751, 31.954889, 28.063440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.769333, 32.337681, 28.043959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052244, 0.035178, 0.998014,
		0.956791, 0.288022, 0.039934,
		-0.286046, 0.956977, -0.048705,
		46.683517, 32.624775, 28.029346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184456, 32.184654, 28.578526>,  <46.883751, 31.954889, 28.063440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184456, 32.184654, 28.578526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938145, 32.487732, 28.492065>,  <46.790359, 32.669579, 28.440189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938145, 32.487732, 28.492065>,  <47.184456, 32.184654, 28.578526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938145, 32.487732, 28.492065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070895, 0.219935, 0.972935,
		0.784724, 0.614436, -0.081714,
		-0.615778, 0.757692, -0.216149,
		46.753410, 32.715038, 28.427221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.361179, 32.810513, 29.000090>,  <47.184456, 32.184654, 28.578526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.361179, 32.810513, 29.000090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983677, 32.894917, 28.898266>,  <46.757175, 32.945557, 28.837172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983677, 32.894917, 28.898266>,  <47.361179, 32.810513, 29.000090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983677, 32.894917, 28.898266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152347, 0.405787, 0.901181,
		0.293452, 0.889276, -0.350818,
		-0.943756, 0.211007, -0.254558,
		46.700550, 32.958218, 28.821898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.156754, 33.472549, 29.333132>,  <47.361179, 32.810513, 29.000090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.156754, 33.472549, 29.333132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794422, 33.344467, 29.222176>,  <46.577023, 33.267620, 29.155602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794422, 33.344467, 29.222176>,  <47.156754, 33.472549, 29.333132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794422, 33.344467, 29.222176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404560, 0.459498, 0.790691,
		-0.125721, 0.828452, -0.545767,
		-0.905829, -0.320202, -0.277390,
		46.522675, 33.248405, 29.138958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713142, 34.037739, 29.462269>,  <47.156754, 33.472549, 29.333132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713142, 34.037739, 29.462269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462566, 33.727520, 29.431017>,  <46.312222, 33.541389, 29.412266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462566, 33.727520, 29.431017>,  <46.713142, 34.037739, 29.462269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462566, 33.727520, 29.431017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515706, 0.337210, 0.787614,
		-0.584482, 0.533687, -0.611194,
		-0.626441, -0.775543, -0.078132,
		46.274635, 33.494858, 29.407578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999714, 34.336590, 29.472055>,  <46.713142, 34.037739, 29.462269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999714, 34.336590, 29.472055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995522, 33.953644, 29.587534>,  <45.993004, 33.723877, 29.656820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995522, 33.953644, 29.587534>,  <45.999714, 34.336590, 29.472055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995522, 33.953644, 29.587534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324612, 0.276332, 0.904581,
		-0.945789, -0.084230, -0.313669,
		-0.010484, -0.957364, 0.288694,
		45.992378, 33.666435, 29.674143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318329, 34.283569, 29.804190>,  <45.999714, 34.336590, 29.472055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318329, 34.283569, 29.804190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526752, 33.971531, 29.942724>,  <45.651806, 33.784309, 30.025845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526752, 33.971531, 29.942724>,  <45.318329, 34.283569, 29.804190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526752, 33.971531, 29.942724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376375, 0.154186, 0.913547,
		-0.766056, -0.606362, -0.213270,
		0.521057, -0.780098, 0.346335,
		45.683071, 33.737503, 30.046625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886559, 34.002094, 30.295095>,  <45.318329, 34.283569, 29.804190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886559, 34.002094, 30.295095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240635, 33.844616, 30.394247>,  <45.453079, 33.750130, 30.453739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240635, 33.844616, 30.394247>,  <44.886559, 34.002094, 30.295095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240635, 33.844616, 30.394247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199440, 0.160248, 0.966718,
		-0.420312, -0.905167, 0.063332,
		0.885190, -0.393692, 0.247881,
		45.506191, 33.726509, 30.468611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745724, 33.596233, 30.928974>,  <44.886559, 34.002094, 30.295095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745724, 33.596233, 30.928974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136410, 33.681110, 30.941687>,  <45.370819, 33.732037, 30.949314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136410, 33.681110, 30.941687>,  <44.745724, 33.596233, 30.928974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136410, 33.681110, 30.941687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090551, 0.273384, 0.957633,
		0.194510, -0.938210, 0.286231,
		0.976712, 0.212188, 0.031780,
		45.429424, 33.744766, 30.951220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039211, 33.350128, 31.588114>,  <44.745724, 33.596233, 30.928974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039211, 33.350128, 31.588114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300453, 33.632202, 31.477715>,  <45.457199, 33.801445, 31.411474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300453, 33.632202, 31.477715>,  <45.039211, 33.350128, 31.588114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300453, 33.632202, 31.477715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021961, 0.381949, 0.923923,
		0.756952, -0.597354, 0.264938,
		0.653102, 0.705183, -0.275998,
		45.496384, 33.843758, 31.394915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549675, 33.348755, 32.109398>,  <45.039211, 33.350128, 31.588114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549675, 33.348755, 32.109398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611092, 33.693806, 31.916607>,  <45.647942, 33.900837, 31.800932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611092, 33.693806, 31.916607>,  <45.549675, 33.348755, 32.109398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611092, 33.693806, 31.916607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154312, 0.460847, 0.873961,
		0.976019, -0.208562, -0.062356,
		0.153539, 0.862625, -0.481979,
		45.657154, 33.952595, 31.772013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129166, 33.619362, 32.466557>,  <45.549675, 33.348755, 32.109398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129166, 33.619362, 32.466557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927662, 33.905052, 32.272190>,  <45.806759, 34.076466, 32.155571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927662, 33.905052, 32.272190>,  <46.129166, 33.619362, 32.466557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927662, 33.905052, 32.272190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106616, 0.506794, 0.855449,
		0.857239, 0.482747, -0.179155,
		-0.503760, 0.714224, -0.485912,
		45.776535, 34.119320, 32.126415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424351, 34.294250, 32.594257>,  <46.129166, 33.619362, 32.466557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424351, 34.294250, 32.594257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045128, 34.377182, 32.497753>,  <45.817596, 34.426941, 32.439850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045128, 34.377182, 32.497753>,  <46.424351, 34.294250, 32.594257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045128, 34.377182, 32.497753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115403, 0.482588, 0.868212,
		0.296434, 0.850955, -0.433593,
		-0.948055, 0.207329, -0.241258,
		45.760712, 34.439381, 32.425377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338272, 34.956680, 32.941952>,  <46.424351, 34.294250, 32.594257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338272, 34.956680, 32.941952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966068, 34.859314, 32.832478>,  <45.742748, 34.800892, 32.766792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966068, 34.859314, 32.832478>,  <46.338272, 34.956680, 32.941952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966068, 34.859314, 32.832478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358120, 0.447873, 0.819243,
		-0.076845, 0.860324, -0.503923,
		-0.930508, -0.243420, -0.273682,
		45.686916, 34.786289, 32.750374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827671, 35.582439, 32.975414>,  <46.338272, 34.956680, 32.941952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827671, 35.582439, 32.975414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581039, 35.267879, 32.990345>,  <45.433060, 35.079144, 32.999306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581039, 35.267879, 32.990345>,  <45.827671, 35.582439, 32.975414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581039, 35.267879, 32.990345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451881, 0.392329, 0.801175,
		-0.644693, 0.477123, -0.597265,
		-0.616583, -0.786404, 0.037329,
		45.396065, 35.031960, 33.001545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199009, 35.883293, 33.108345>,  <45.827671, 35.582439, 32.975414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199009, 35.883293, 33.108345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130733, 35.505848, 33.221806>,  <45.089767, 35.279381, 33.289883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130733, 35.505848, 33.221806>,  <45.199009, 35.883293, 33.108345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130733, 35.505848, 33.221806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412809, 0.329877, 0.848981,
		-0.894680, 0.027821, -0.445840,
		-0.170692, -0.943613, 0.283650,
		45.079525, 35.222763, 33.306900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512409, 35.757881, 33.372864>,  <45.199009, 35.883293, 33.108345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512409, 35.757881, 33.372864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744305, 35.480865, 33.544579>,  <44.883442, 35.314655, 33.647606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744305, 35.480865, 33.544579>,  <44.512409, 35.757881, 33.372864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744305, 35.480865, 33.544579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075381, 0.479015, 0.874564,
		-0.811306, -0.539381, 0.225500,
		0.579741, -0.692541, 0.429287,
		44.918228, 35.273102, 33.673363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213711, 35.663963, 33.970020>,  <44.512409, 35.757881, 33.372864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213711, 35.663963, 33.970020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568901, 35.491268, 34.033398>,  <44.782017, 35.387653, 34.071423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568901, 35.491268, 34.033398>,  <44.213711, 35.663963, 33.970020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568901, 35.491268, 34.033398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014306, 0.318428, 0.947839,
		-0.459668, -0.843925, 0.276580,
		0.887976, -0.431735, 0.158445,
		44.835293, 35.361748, 34.080933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220261, 35.181606, 34.607101>,  <44.213711, 35.663963, 33.970020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220261, 35.181606, 34.607101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602676, 35.284382, 34.550575>,  <44.832127, 35.346046, 34.516659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602676, 35.284382, 34.550575>,  <44.220261, 35.181606, 34.607101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602676, 35.284382, 34.550575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001750, 0.476897, 0.878958,
		0.293228, -0.840567, 0.455483,
		0.956041, 0.256938, -0.141310,
		44.889488, 35.361462, 34.508183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642269, 35.102135, 35.230640>,  <44.220261, 35.181606, 34.607101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642269, 35.102135, 35.230640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855114, 35.356445, 35.006981>,  <44.982819, 35.509033, 34.872784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855114, 35.356445, 35.006981>,  <44.642269, 35.102135, 35.230640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855114, 35.356445, 35.006981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166844, 0.568719, 0.805433,
		0.830075, -0.521867, 0.196544,
		0.532107, 0.635777, -0.559150,
		45.014748, 35.547180, 34.839237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224594, 35.224838, 35.555054>,  <44.642269, 35.102135, 35.230640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224594, 35.224838, 35.555054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159256, 35.545895, 35.325588>,  <45.120056, 35.738529, 35.187908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159256, 35.545895, 35.325588>,  <45.224594, 35.224838, 35.555054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159256, 35.545895, 35.325588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061959, 0.588667, 0.805998,
		0.984622, 0.096109, -0.145884,
		-0.163341, 0.802642, -0.573660,
		45.110252, 35.786686, 35.153492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876785, 35.032181, 35.503967>,  <45.224594, 35.224838, 35.555054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876785, 35.032181, 35.503967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862186, 34.641308, 35.420269>,  <45.853428, 34.406784, 35.370049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862186, 34.641308, 35.420269>,  <45.876785, 35.032181, 35.503967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862186, 34.641308, 35.420269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851941, -0.139878, 0.504609,
		-0.522363, -0.159849, 0.837607,
		-0.036501, -0.977181, -0.209249,
		45.851234, 34.348152, 35.357494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484917, 34.665859, 35.824066>,  <45.876785, 35.032181, 35.503967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484917, 34.665859, 35.824066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334343, 34.322468, 35.684750>,  <46.243999, 34.116432, 35.601158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334343, 34.322468, 35.684750>,  <46.484917, 34.665859, 35.824066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334343, 34.322468, 35.684750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836846, -0.476382, 0.269720,
		-0.397470, -0.189937, 0.897742,
		-0.376438, -0.858478, -0.348296,
		46.221413, 34.064926, 35.580261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.080650, 35.053989, 35.733570>,  <46.484917, 34.665859, 35.824066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.080650, 35.053989, 35.733570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223400, 35.352730, 35.509121>,  <47.309048, 35.531975, 35.374451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223400, 35.352730, 35.509121>,  <47.080650, 35.053989, 35.733570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223400, 35.352730, 35.509121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915497, -0.399067, 0.051097,
		-0.185762, -0.531937, -0.826157,
		0.356872, 0.746852, -0.561119,
		47.330463, 35.576786, 35.340786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447346, 34.764675, 35.029957>,  <47.080650, 35.053989, 35.733570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447346, 34.764675, 35.029957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.578121, 35.087242, 35.227055>,  <47.656586, 35.280785, 35.345314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.578121, 35.087242, 35.227055>,  <47.447346, 34.764675, 35.029957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.578121, 35.087242, 35.227055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933118, -0.358039, -0.033159,
		0.149682, 0.470631, -0.869541,
		0.326936, 0.806421, 0.492746,
		47.676201, 35.329170, 35.374878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.858994, 40.598946, 46.076607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511894, 40.400162, 46.074196>,  <36.303635, 40.280891, 46.072750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511894, 40.400162, 46.074196>,  <36.858994, 40.598946, 46.076607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511894, 40.400162, 46.074196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146003, -0.243310, -0.958897,
		0.475067, -0.832965, 0.283691,
		-0.867752, -0.496961, -0.006027,
		36.251568, 40.251072, 46.072388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993244, 40.119003, 45.665714>,  <36.858994, 40.598946, 46.076607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993244, 40.119003, 45.665714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596783, 40.066448, 45.658127>,  <36.358906, 40.034916, 45.653576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596783, 40.066448, 45.658127>,  <36.993244, 40.119003, 45.665714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596783, 40.066448, 45.658127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040652, -0.164402, -0.985555,
		0.126372, -0.977604, 0.168289,
		-0.991150, -0.131388, -0.018965,
		36.299438, 40.027031, 45.652435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943012, 39.563519, 45.286781>,  <36.993244, 40.119003, 45.665714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943012, 39.563519, 45.286781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582825, 39.736473, 45.268024>,  <36.366711, 39.840248, 45.256771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582825, 39.736473, 45.268024>,  <36.943012, 39.563519, 45.286781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582825, 39.736473, 45.268024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058794, -0.227847, -0.971920,
		-0.430933, -0.872425, 0.230591,
		-0.900467, 0.432390, -0.046893,
		36.312683, 39.866188, 45.253956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508957, 39.116325, 44.924519>,  <36.943012, 39.563519, 45.286781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508957, 39.116325, 44.924519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293781, 39.451874, 44.891273>,  <36.164677, 39.653202, 44.871326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293781, 39.451874, 44.891273>,  <36.508957, 39.116325, 44.924519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293781, 39.451874, 44.891273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043104, -0.125837, -0.991114,
		-0.841880, -0.529579, 0.103852,
		-0.537941, 0.838875, -0.083112,
		36.132401, 39.703537, 44.866341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755131, 39.027031, 44.594891>,  <36.508957, 39.116325, 44.924519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755131, 39.027031, 44.594891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854389, 39.410255, 44.537575>,  <35.913944, 39.640190, 44.503185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854389, 39.410255, 44.537575>,  <35.755131, 39.027031, 44.594891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854389, 39.410255, 44.537575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169125, -0.102802, -0.980219,
		-0.953844, 0.267476, 0.136522,
		0.248150, 0.958065, -0.143293,
		35.928833, 39.697674, 44.494587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136318, 39.274681, 44.195282>,  <35.755131, 39.027031, 44.594891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136318, 39.274681, 44.195282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428307, 39.537502, 44.119999>,  <35.603500, 39.695194, 44.074829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428307, 39.537502, 44.119999>,  <35.136318, 39.274681, 44.195282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428307, 39.537502, 44.119999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324700, 0.091071, -0.941422,
		-0.601421, 0.748326, 0.279824,
		0.729975, 0.657050, -0.188209,
		35.647301, 39.734615, 44.063538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845016, 39.670357, 43.810715>,  <35.136318, 39.274681, 44.195282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845016, 39.670357, 43.810715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229862, 39.761742, 43.751202>,  <35.460770, 39.816574, 43.715492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229862, 39.761742, 43.751202>,  <34.845016, 39.670357, 43.810715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229862, 39.761742, 43.751202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168368, 0.068641, -0.983332,
		-0.214441, 0.971130, 0.104506,
		0.962116, 0.228462, -0.148787,
		35.518497, 39.830280, 43.706566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884422, 40.315529, 43.418301>,  <34.845016, 39.670357, 43.810715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884422, 40.315529, 43.418301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228626, 40.117989, 43.368286>,  <35.435150, 39.999466, 43.338276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228626, 40.117989, 43.368286>,  <34.884422, 40.315529, 43.418301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228626, 40.117989, 43.368286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101451, 0.074406, -0.992054,
		0.499229, 0.866358, 0.013926,
		0.860510, -0.493849, -0.125039,
		35.486778, 39.969833, 43.330776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249741, 40.754707, 42.873615>,  <34.884422, 40.315529, 43.418301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249741, 40.754707, 42.873615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403366, 40.385391, 42.875950>,  <35.495541, 40.163803, 42.877350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403366, 40.385391, 42.875950>,  <35.249741, 40.754707, 42.873615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403366, 40.385391, 42.875950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073639, -0.036928, -0.996601,
		0.920365, 0.382329, -0.082173,
		0.384064, -0.923288, 0.005833,
		35.518585, 40.108406, 42.877701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722450, 40.812748, 42.442955>,  <35.249741, 40.754707, 42.873615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722450, 40.812748, 42.442955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.661953, 40.418114, 42.467548>,  <35.625652, 40.181335, 42.482304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.661953, 40.418114, 42.467548>,  <35.722450, 40.812748, 42.442955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661953, 40.418114, 42.467548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019604, -0.059192, -0.998054,
		0.988302, -0.152156, -0.010388,
		-0.151245, -0.986583, 0.061482,
		35.616581, 40.122139, 42.485992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176628, 40.485622, 42.022606>,  <35.722450, 40.812748, 42.442955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176628, 40.485622, 42.022606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893745, 40.206284, 42.066738>,  <35.724014, 40.038681, 42.093216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893745, 40.206284, 42.066738>,  <36.176628, 40.485622, 42.022606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893745, 40.206284, 42.066738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039332, -0.116952, -0.992358,
		0.705911, -0.706143, 0.055242,
		-0.707207, -0.698344, 0.110332,
		35.681583, 39.996780, 42.099838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353069, 39.866623, 41.695599>,  <36.176628, 40.485622, 42.022606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353069, 39.866623, 41.695599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953171, 39.860493, 41.702126>,  <35.713230, 39.856815, 41.706043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953171, 39.860493, 41.702126>,  <36.353069, 39.866623, 41.695599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953171, 39.860493, 41.702126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012477, -0.223705, -0.974577,
		0.018590, -0.974536, 0.223458,
		-0.999749, -0.015329, 0.016318,
		35.653248, 39.855892, 41.707020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190907, 39.259499, 41.466278>,  <36.353069, 39.866623, 41.695599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190907, 39.259499, 41.466278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863899, 39.478367, 41.394428>,  <35.667694, 39.609688, 41.351318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863899, 39.478367, 41.394428>,  <36.190907, 39.259499, 41.466278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863899, 39.478367, 41.394428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047292, -0.247063, -0.967845,
		-0.573952, -0.799729, 0.176103,
		-0.817522, 0.547168, -0.179623,
		35.618641, 39.642517, 41.340542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910442, 38.965126, 40.878387>,  <36.190907, 39.259499, 41.466278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910442, 38.965126, 40.878387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658466, 39.274738, 40.903854>,  <35.507282, 39.460506, 40.919136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658466, 39.274738, 40.903854>,  <35.910442, 38.965126, 40.878387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658466, 39.274738, 40.903854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053636, 0.038422, -0.997821,
		-0.774793, -0.631978, 0.017313,
		-0.629936, 0.774033, 0.063666,
		35.469486, 39.506947, 40.922955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372147, 38.760731, 40.379211>,  <35.910442, 38.965126, 40.878387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372147, 38.760731, 40.379211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.394527, 39.151367, 40.462288>,  <35.407955, 39.385750, 40.512135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.394527, 39.151367, 40.462288>,  <35.372147, 38.760731, 40.379211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394527, 39.151367, 40.462288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013446, 0.207264, -0.978193,
		-0.998343, 0.057527, -0.001534,
		0.055955, 0.976592, 0.207694,
		35.411312, 39.444344, 40.524597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832333, 39.088268, 39.990650>,  <35.372147, 38.760731, 40.379211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832333, 39.088268, 39.990650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114540, 39.359680, 40.072472>,  <35.283863, 39.522526, 40.121567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114540, 39.359680, 40.072472>,  <34.832333, 39.088268, 39.990650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114540, 39.359680, 40.072472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056369, 0.341453, -0.938207,
		-0.706450, 0.650388, 0.279148,
		0.705515, 0.678531, 0.204558,
		35.326195, 39.563240, 40.133839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600266, 39.701515, 39.528271>,  <34.832333, 39.088268, 39.990650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600266, 39.701515, 39.528271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972618, 39.780571, 39.651173>,  <35.196030, 39.828007, 39.724915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972618, 39.780571, 39.651173>,  <34.600266, 39.701515, 39.528271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972618, 39.780571, 39.651173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279858, 0.154829, -0.947474,
		-0.234833, 0.967970, 0.088815,
		0.930878, 0.197643, 0.307253,
		35.251881, 39.839863, 39.743347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759312, 40.323967, 39.224758>,  <34.600266, 39.701515, 39.528271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759312, 40.323967, 39.224758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129639, 40.200748, 39.312363>,  <35.351837, 40.126816, 39.364925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129639, 40.200748, 39.312363>,  <34.759312, 40.323967, 39.224758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129639, 40.200748, 39.312363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305125, 0.267169, -0.914068,
		0.223062, 0.913087, 0.341343,
		0.925820, -0.308046, 0.219010,
		35.407383, 40.108334, 39.378067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220009, 40.901474, 39.217754>,  <34.759312, 40.323967, 39.224758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220009, 40.901474, 39.217754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449314, 40.576740, 39.173405>,  <35.586899, 40.381901, 39.146797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449314, 40.576740, 39.173405>,  <35.220009, 40.901474, 39.217754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449314, 40.576740, 39.173405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450585, 0.425365, -0.784881,
		0.684354, 0.399988, 0.609647,
		0.573266, -0.811834, -0.110871,
		35.621292, 40.333191, 39.140144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810116, 41.208836, 38.935413>,  <35.220009, 40.901474, 39.217754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810116, 41.208836, 38.935413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839031, 40.818859, 38.851250>,  <35.856380, 40.584873, 38.800751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839031, 40.818859, 38.851250>,  <35.810116, 41.208836, 38.935413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839031, 40.818859, 38.851250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585406, 0.212277, -0.782457,
		0.807511, -0.066610, 0.586079,
		0.072291, -0.974937, -0.210410,
		35.860718, 40.526379, 38.788128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614925, 41.092609, 38.814541>,  <35.810116, 41.208836, 38.935413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614925, 41.092609, 38.814541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394367, 40.808292, 38.639843>,  <36.262032, 40.637703, 38.535023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394367, 40.808292, 38.639843>,  <36.614925, 41.092609, 38.814541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394367, 40.808292, 38.639843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626830, -0.007527, -0.779120,
		0.550502, -0.703366, 0.449694,
		-0.551391, -0.710788, -0.436747,
		36.228951, 40.595055, 38.508820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074375, 40.581047, 38.703251>,  <36.614925, 41.092609, 38.814541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074375, 40.581047, 38.703251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766239, 40.559864, 38.449078>,  <36.581360, 40.547153, 38.296574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766239, 40.559864, 38.449078>,  <37.074375, 40.581047, 38.703251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766239, 40.559864, 38.449078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635873, 0.010290, -0.771725,
		0.047412, -0.998544, 0.025752,
		-0.770336, -0.052964, -0.635435,
		36.535137, 40.543976, 38.258446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116009, 40.091290, 38.195438>,  <37.074375, 40.581047, 38.703251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116009, 40.091290, 38.195438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453693, 39.883213, 38.143734>,  <37.656303, 39.758366, 38.112713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453693, 39.883213, 38.143734>,  <37.116009, 40.091290, 38.195438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453693, 39.883213, 38.143734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009773, -0.226173, 0.974038,
		-0.535924, -0.823556, -0.185854,
		0.844210, -0.520193, -0.129260,
		37.706955, 39.727154, 38.104958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099049, 39.368607, 38.694443>,  <37.116009, 40.091290, 38.195438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099049, 39.368607, 38.694443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475212, 39.463081, 38.596592>,  <37.700912, 39.519768, 38.537880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475212, 39.463081, 38.596592>,  <37.099049, 39.368607, 38.694443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475212, 39.463081, 38.596592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302128, -0.250272, 0.919828,
		0.156028, -0.938925, -0.306717,
		0.940412, 0.236186, -0.244626,
		37.757336, 39.533936, 38.523205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453159, 38.735493, 38.869179>,  <37.099049, 39.368607, 38.694443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453159, 38.735493, 38.869179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706192, 39.043667, 38.900852>,  <37.858013, 39.228573, 38.919857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706192, 39.043667, 38.900852>,  <37.453159, 38.735493, 38.869179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706192, 39.043667, 38.900852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197563, -0.259374, 0.945354,
		0.748872, -0.582370, -0.316285,
		0.632582, 0.770435, 0.079183,
		37.895966, 39.274796, 38.924606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132061, 38.502197, 39.134563>,  <37.453159, 38.735493, 38.869179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132061, 38.502197, 39.134563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165928, 38.897945, 39.181850>,  <38.186249, 39.135395, 39.210224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165928, 38.897945, 39.181850>,  <38.132061, 38.502197, 39.134563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165928, 38.897945, 39.181850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316644, -0.139210, 0.938273,
		0.944758, -0.042010, -0.325065,
		0.084669, 0.989371, 0.118218,
		38.191330, 39.194756, 39.217316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750050, 38.610424, 39.358616>,  <38.132061, 38.502197, 39.134563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750050, 38.610424, 39.358616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516777, 38.909107, 39.486568>,  <38.376812, 39.088318, 39.563339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516777, 38.909107, 39.486568>,  <38.750050, 38.610424, 39.358616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516777, 38.909107, 39.486568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353153, -0.121578, 0.927632,
		0.731562, 0.653946, -0.192801,
		-0.583181, 0.746709, 0.319885,
		38.341824, 39.133121, 39.582535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200333, 39.191418, 39.626003>,  <38.750050, 38.610424, 39.358616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200333, 39.191418, 39.626003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.838833, 39.276096, 39.774830>,  <38.621933, 39.326904, 39.864124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.838833, 39.276096, 39.774830>,  <39.200333, 39.191418, 39.626003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838833, 39.276096, 39.774830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411318, 0.188667, 0.891752,
		0.118581, 0.958953, -0.257580,
		-0.903745, 0.211692, 0.372063,
		38.567711, 39.339603, 39.886448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426437, 39.682716, 40.097725>,  <39.200333, 39.191418, 39.626003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426437, 39.682716, 40.097725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053638, 39.606815, 40.221260>,  <38.829960, 39.561275, 40.295380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053638, 39.606815, 40.221260>,  <39.426437, 39.682716, 40.097725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053638, 39.606815, 40.221260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236353, 0.327839, 0.914690,
		-0.274811, 0.925481, -0.260697,
		-0.931996, -0.189751, 0.308834,
		38.774040, 39.549889, 40.313911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215267, 40.217022, 40.526737>,  <39.426437, 39.682716, 40.097725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215267, 40.217022, 40.526737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961666, 39.925190, 40.629307>,  <38.809505, 39.750092, 40.690849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961666, 39.925190, 40.629307>,  <39.215267, 40.217022, 40.526737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961666, 39.925190, 40.629307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000763, 0.330992, 0.943633,
		-0.773333, 0.598459, -0.209293,
		-0.634000, -0.729583, 0.256424,
		38.771465, 39.706314, 40.706234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624817, 40.503983, 40.887711>,  <39.215267, 40.217022, 40.526737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624817, 40.503983, 40.887711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644207, 40.130516, 41.029652>,  <38.655842, 39.906437, 41.114815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644207, 40.130516, 41.029652>,  <38.624817, 40.503983, 40.887711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644207, 40.130516, 41.029652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005821, 0.354998, 0.934849,
		-0.998807, -0.047384, 0.011775,
		0.048477, -0.933665, 0.354851,
		38.658749, 39.850418, 41.136108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118908, 40.449665, 41.480751>,  <38.624817, 40.503983, 40.887711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118908, 40.449665, 41.480751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386753, 40.160599, 41.549313>,  <38.547459, 39.987160, 41.590450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386753, 40.160599, 41.549313>,  <38.118908, 40.449665, 41.480751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386753, 40.160599, 41.549313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051289, 0.185240, 0.981354,
		-0.740941, -0.665915, 0.086973,
		0.669609, -0.722665, 0.171406,
		38.587635, 39.943798, 41.600735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916096, 40.230812, 42.149242>,  <38.118908, 40.449665, 41.480751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916096, 40.230812, 42.149242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277344, 40.069553, 42.090126>,  <38.494095, 39.972797, 42.054657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277344, 40.069553, 42.090126>,  <37.916096, 40.230812, 42.149242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277344, 40.069553, 42.090126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228464, 0.159737, 0.960358,
		-0.363558, -0.901086, 0.236367,
		0.903122, -0.403147, -0.147792,
		38.548279, 39.948608, 42.045788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030006, 39.734417, 42.763439>,  <37.916096, 40.230812, 42.149242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030006, 39.734417, 42.763439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386940, 39.836727, 42.614674>,  <38.601101, 39.898113, 42.525414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386940, 39.836727, 42.614674>,  <38.030006, 39.734417, 42.763439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386940, 39.836727, 42.614674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300211, 0.278990, 0.912161,
		0.337069, -0.925604, 0.172165,
		0.892333, 0.255776, -0.371915,
		38.654640, 39.913460, 42.503098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441006, 39.449669, 43.202042>,  <38.030006, 39.734417, 42.763439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441006, 39.449669, 43.202042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688015, 39.702240, 43.014442>,  <38.836220, 39.853783, 42.901882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688015, 39.702240, 43.014442>,  <38.441006, 39.449669, 43.202042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688015, 39.702240, 43.014442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489263, 0.158506, 0.857612,
		0.615862, -0.759059, -0.211055,
		0.617524, 0.631432, -0.468997,
		38.873272, 39.891670, 42.873745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967361, 39.107914, 43.446938>,  <38.441006, 39.449669, 43.202042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967361, 39.107914, 43.446938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.026791, 39.487698, 43.336338>,  <39.062447, 39.715569, 43.269978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.026791, 39.487698, 43.336338>,  <38.967361, 39.107914, 43.446938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026791, 39.487698, 43.336338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416082, 0.193633, 0.888472,
		0.897108, -0.247048, -0.366285,
		0.148570, 0.949459, -0.276502,
		39.071362, 39.772537, 43.253387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559822, 39.241383, 43.746243>,  <38.967361, 39.107914, 43.446938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559822, 39.241383, 43.746243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395939, 39.596935, 43.664242>,  <39.297611, 39.810268, 43.615040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395939, 39.596935, 43.664242>,  <39.559822, 39.241383, 43.746243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395939, 39.596935, 43.664242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256000, 0.327734, 0.909425,
		0.875561, 0.320115, -0.361829,
		-0.409704, 0.888885, -0.205002,
		39.273029, 39.863602, 43.602741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083858, 39.812737, 43.859669>,  <39.559822, 39.241383, 43.746243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083858, 39.812737, 43.859669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.718513, 39.975121, 43.872143>,  <39.499306, 40.072552, 43.879627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.718513, 39.975121, 43.872143>,  <40.083858, 39.812737, 43.859669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718513, 39.975121, 43.872143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196991, 0.373582, 0.906439,
		0.356330, 0.834045, -0.421185,
		-0.913358, 0.405961, 0.031181,
		39.444508, 40.096909, 43.881496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164425, 40.405251, 44.198891>,  <40.083858, 39.812737, 43.859669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164425, 40.405251, 44.198891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764545, 40.396240, 44.194962>,  <39.524616, 40.390835, 44.192604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764545, 40.396240, 44.194962>,  <40.164425, 40.405251, 44.198891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764545, 40.396240, 44.194962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016482, 0.318294, 0.947849,
		-0.018228, 0.947725, -0.318569,
		-0.999698, -0.022528, -0.009819,
		39.464638, 40.389481, 44.192017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905560, 41.124638, 44.418255>,  <40.164425, 40.405251, 44.198891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905560, 41.124638, 44.418255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634140, 40.844284, 44.506187>,  <39.471287, 40.676071, 44.558949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634140, 40.844284, 44.506187>,  <39.905560, 41.124638, 44.418255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634140, 40.844284, 44.506187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116423, 0.398110, 0.909920,
		-0.725270, 0.591831, -0.351737,
		-0.678549, -0.700888, 0.219834,
		39.430576, 40.634018, 44.572136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.346844, 41.498829, 45.170231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.290062, 41.113979, 45.077133>,  <39.255993, 40.883068, 45.021275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.290062, 41.113979, 45.077133>,  <39.346844, 41.498829, 45.170231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290062, 41.113979, 45.077133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302600, -0.181688, 0.935640,
		-0.942488, 0.203243, -0.265348,
		-0.141951, -0.962124, -0.232740,
		39.247475, 40.825344, 45.007313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626717, 41.395329, 45.173080>,  <39.346844, 41.498829, 45.170231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626717, 41.395329, 45.173080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.769855, 41.033951, 45.267506>,  <38.855740, 40.817123, 45.324162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.769855, 41.033951, 45.267506>,  <38.626717, 41.395329, 45.173080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769855, 41.033951, 45.267506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274808, 0.139719, 0.951293,
		-0.892427, -0.405290, -0.198276,
		0.357847, -0.903448, 0.236066,
		38.877209, 40.762917, 45.338326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113285, 41.070660, 45.565762>,  <38.626717, 41.395329, 45.173080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113285, 41.070660, 45.565762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454147, 40.875904, 45.642467>,  <38.658665, 40.759048, 45.688492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454147, 40.875904, 45.642467>,  <38.113285, 41.070660, 45.565762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454147, 40.875904, 45.642467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281963, -0.118499, 0.952079,
		-0.440836, -0.865387, -0.238264,
		0.852151, -0.486892, 0.191768,
		38.709793, 40.729836, 45.699997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026077, 40.272533, 45.844124>,  <38.113285, 41.070660, 45.565762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026077, 40.272533, 45.844124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378536, 40.421047, 45.961246>,  <38.590012, 40.510155, 46.031521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378536, 40.421047, 45.961246>,  <38.026077, 40.272533, 45.844124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378536, 40.421047, 45.961246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208825, -0.250017, 0.945454,
		0.424239, -0.894225, -0.142767,
		0.881143, 0.371285, 0.292803,
		38.642879, 40.532433, 46.049088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441113, 39.705811, 46.354542>,  <38.026077, 40.272533, 45.844124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441113, 39.705811, 46.354542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582787, 40.073208, 46.424892>,  <38.667789, 40.293644, 46.467102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582787, 40.073208, 46.424892>,  <38.441113, 39.705811, 46.354542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582787, 40.073208, 46.424892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055564, -0.167063, 0.984379,
		0.933523, -0.358424, -0.008136,
		0.354184, 0.918489, 0.175873,
		38.689041, 40.348755, 46.477654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915848, 39.575661, 46.910206>,  <38.441113, 39.705811, 46.354542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915848, 39.575661, 46.910206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855831, 39.971008, 46.920074>,  <38.819820, 40.208218, 46.925995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855831, 39.971008, 46.920074>,  <38.915848, 39.575661, 46.910206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855831, 39.971008, 46.920074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076906, -0.013214, 0.996951,
		0.985684, 0.151483, -0.074029,
		-0.150043, 0.988372, 0.024675,
		38.810818, 40.267521, 46.927479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494453, 39.860989, 47.298462>,  <38.915848, 39.575661, 46.910206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494453, 39.860989, 47.298462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.196522, 40.127857, 47.302898>,  <39.017765, 40.287979, 47.305561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.196522, 40.127857, 47.302898>,  <39.494453, 39.860989, 47.298462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196522, 40.127857, 47.302898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108675, 0.104895, 0.988528,
		0.658351, 0.737485, -0.150633,
		-0.744824, 0.667168, 0.011089,
		38.973076, 40.328007, 47.306225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676296, 40.443909, 47.720409>,  <39.494453, 39.860989, 47.298462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676296, 40.443909, 47.720409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276882, 40.449612, 47.699551>,  <39.037231, 40.453033, 47.687035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276882, 40.449612, 47.699551>,  <39.676296, 40.443909, 47.720409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276882, 40.449612, 47.699551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052156, -0.000424, 0.998639,
		0.014215, 0.999898, 0.001167,
		-0.998538, 0.014256, -0.052145,
		38.977322, 40.453888, 47.683907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490505, 40.908054, 48.222130>,  <39.676296, 40.443909, 47.720409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490505, 40.908054, 48.222130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145409, 40.709339, 48.184441>,  <38.938351, 40.590111, 48.161827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145409, 40.709339, 48.184441>,  <39.490505, 40.908054, 48.222130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145409, 40.709339, 48.184441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054477, -0.093934, 0.994087,
		-0.502703, 0.862772, 0.053977,
		-0.862741, -0.496790, -0.094222,
		38.886585, 40.560303, 48.156174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119419, 41.187553, 48.641560>,  <39.490505, 40.908054, 48.222130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119419, 41.187553, 48.641560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959461, 40.825535, 48.583618>,  <38.863487, 40.608326, 48.548855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959461, 40.825535, 48.583618>,  <39.119419, 41.187553, 48.641560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959461, 40.825535, 48.583618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142653, -0.094656, 0.985237,
		-0.905392, 0.414655, -0.091254,
		-0.399896, -0.905042, -0.144852,
		38.839493, 40.554024, 48.540161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525097, 41.055225, 49.145336>,  <39.119419, 41.187553, 48.641560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525097, 41.055225, 49.145336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637291, 40.693855, 49.015633>,  <38.704609, 40.477032, 48.937809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637291, 40.693855, 49.015633>,  <38.525097, 41.055225, 49.145336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637291, 40.693855, 49.015633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095935, -0.362513, 0.927028,
		-0.955052, -0.228911, -0.188351,
		0.280487, -0.903429, -0.324258,
		38.721436, 40.422825, 48.918354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009838, 40.635086, 49.551079>,  <38.525097, 41.055225, 49.145336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009838, 40.635086, 49.551079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301857, 40.393822, 49.422558>,  <38.477066, 40.249065, 49.345448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301857, 40.393822, 49.422558>,  <38.009838, 40.635086, 49.551079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301857, 40.393822, 49.422558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064023, -0.407719, 0.910860,
		-0.680394, -0.685540, -0.259037,
		0.730045, -0.603159, -0.321300,
		38.520870, 40.212875, 49.326168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844707, 40.021404, 49.872543>,  <38.009838, 40.635086, 49.551079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844707, 40.021404, 49.872543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.224365, 39.946564, 49.771255>,  <38.452160, 39.901661, 49.710484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.224365, 39.946564, 49.771255>,  <37.844707, 40.021404, 49.872543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224365, 39.946564, 49.771255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153365, -0.427636, 0.890846,
		-0.274959, -0.884376, -0.377194,
		0.949145, -0.187098, -0.253215,
		38.509109, 39.890434, 49.695290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952408, 39.256706, 49.794044>,  <37.844707, 40.021404, 49.872543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952408, 39.256706, 49.794044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294849, 39.450291, 49.866550>,  <38.500317, 39.566441, 49.910053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294849, 39.450291, 49.866550>,  <37.952408, 39.256706, 49.794044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294849, 39.450291, 49.866550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083171, -0.475197, 0.875939,
		0.510060, -0.734823, -0.447072,
		0.856108, 0.483965, 0.181263,
		38.551682, 39.595482, 49.920929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331188, 38.852997, 50.074806>,  <37.952408, 39.256706, 49.794044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331188, 38.852997, 50.074806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530163, 39.187260, 50.167969>,  <38.649548, 39.387817, 50.223866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530163, 39.187260, 50.167969>,  <38.331188, 38.852997, 50.074806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530163, 39.187260, 50.167969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215291, -0.378996, 0.900007,
		0.840364, -0.397550, -0.368433,
		0.497432, 0.835653, 0.232905,
		38.679394, 39.437954, 50.237839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924553, 38.698902, 50.447636>,  <38.331188, 38.852997, 50.074806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924553, 38.698902, 50.447636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889275, 39.087166, 50.537113>,  <38.868107, 39.320126, 50.590797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889275, 39.087166, 50.537113>,  <38.924553, 38.698902, 50.447636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889275, 39.087166, 50.537113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170620, -0.206526, 0.963450,
		0.981382, 0.123142, -0.147399,
		-0.088199, 0.970661, 0.223692,
		38.862816, 39.378365, 50.604221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429611, 38.788609, 50.942295>,  <38.924553, 38.698902, 50.447636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429611, 38.788609, 50.942295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215477, 39.119740, 51.009369>,  <39.086998, 39.318417, 51.049614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215477, 39.119740, 51.009369>,  <39.429611, 38.788609, 50.942295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215477, 39.119740, 51.009369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084389, -0.145113, 0.985810,
		0.840414, 0.541889, 0.007824,
		-0.535335, 0.827828, 0.167684,
		39.054878, 39.368088, 51.059673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813389, 39.197109, 51.400997>,  <39.429611, 38.788609, 50.942295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813389, 39.197109, 51.400997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431171, 39.311478, 51.429783>,  <39.201839, 39.380100, 51.447056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431171, 39.311478, 51.429783>,  <39.813389, 39.197109, 51.400997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431171, 39.311478, 51.429783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048811, -0.087306, 0.994985,
		0.290771, 0.954268, 0.069469,
		-0.955547, 0.285922, 0.071964,
		39.144508, 39.397255, 51.451374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811901, 39.552967, 52.010498>,  <39.813389, 39.197109, 51.400997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811901, 39.552967, 52.010498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425045, 39.464550, 51.960247>,  <39.192932, 39.411499, 51.930096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425045, 39.464550, 51.960247>,  <39.811901, 39.552967, 52.010498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425045, 39.464550, 51.960247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067437, -0.253396, 0.965009,
		-0.245139, 0.941771, 0.230163,
		-0.967140, -0.221040, -0.125627,
		39.134903, 39.398239, 51.922558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397392, 40.063198, 52.403397>,  <39.811901, 39.552967, 52.010498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397392, 40.063198, 52.403397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192047, 39.722454, 52.361820>,  <39.068840, 39.518009, 52.336872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192047, 39.722454, 52.361820>,  <39.397392, 40.063198, 52.403397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192047, 39.722454, 52.361820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207042, -0.240485, 0.948315,
		-0.832825, 0.465305, 0.299825,
		-0.513358, -0.851856, -0.103945,
		39.038040, 39.466896, 52.330635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106209, 40.109066, 52.962254>,  <39.397392, 40.063198, 52.403397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106209, 40.109066, 52.962254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037178, 39.729671, 52.855976>,  <38.995758, 39.502033, 52.792210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037178, 39.729671, 52.855976>,  <39.106209, 40.109066, 52.962254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037178, 39.729671, 52.855976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027939, -0.274345, 0.961226,
		-0.984600, 0.158462, 0.073845,
		-0.172577, -0.948485, -0.265693,
		38.985405, 39.445126, 52.776268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390179, 39.891140, 53.182129>,  <39.106209, 40.109066, 52.962254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390179, 39.891140, 53.182129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.602859, 39.555580, 53.135586>,  <38.730469, 39.354244, 53.107658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.602859, 39.555580, 53.135586>,  <38.390179, 39.891140, 53.182129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602859, 39.555580, 53.135586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007349, -0.132816, 0.991113,
		-0.846899, -0.527834, -0.064453,
		0.531703, -0.838899, -0.116361,
		38.762371, 39.303909, 53.100677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398647, 39.685730, 53.914326>,  <38.390179, 39.891140, 53.182129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398647, 39.685730, 53.914326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.449669, 39.541229, 54.283806>,  <38.480282, 39.454529, 54.505493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.449669, 39.541229, 54.283806>,  <38.398647, 39.685730, 53.914326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449669, 39.541229, 54.283806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979619, -0.191583, 0.060347,
		0.155166, -0.912576, -0.378323,
		0.127552, -0.361248, 0.923704,
		38.487934, 39.432854, 54.560917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874664, 39.964787, 53.752819>,  <38.398647, 39.685730, 53.914326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874664, 39.964787, 53.752819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718788, 39.846565, 53.403927>,  <37.625263, 39.775635, 53.194592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718788, 39.846565, 53.403927>,  <37.874664, 39.964787, 53.752819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718788, 39.846565, 53.403927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156060, -0.912217, 0.378822,
		-0.907626, 0.283745, 0.309361,
		-0.389693, -0.295550, -0.872233,
		37.601879, 39.757900, 53.142258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277180, 39.968166, 54.094059>,  <37.874664, 39.964787, 53.752819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277180, 39.968166, 54.094059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878319, 39.998009, 54.098564>,  <36.639004, 40.015915, 54.101265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878319, 39.998009, 54.098564>,  <37.277180, 39.968166, 54.094059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878319, 39.998009, 54.098564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044425, -0.459901, -0.886858,
		-0.060990, -0.884830, 0.461905,
		-0.997149, 0.074610, 0.011259,
		36.579174, 40.020393, 54.101940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106544, 39.417908, 53.776299>,  <37.277180, 39.968166, 54.094059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106544, 39.417908, 53.776299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750072, 39.599270, 53.770409>,  <36.536190, 39.708088, 53.766876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750072, 39.599270, 53.770409>,  <37.106544, 39.417908, 53.776299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750072, 39.599270, 53.770409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139689, -0.305150, -0.942004,
		-0.431604, -0.837440, 0.335280,
		-0.891182, 0.453408, -0.014723,
		36.482719, 39.735291, 53.765991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586521, 38.909622, 53.504539>,  <37.106544, 39.417908, 53.776299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586521, 38.909622, 53.504539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424240, 39.272652, 53.461258>,  <36.326870, 39.490471, 53.435291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424240, 39.272652, 53.461258>,  <36.586521, 38.909622, 53.504539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424240, 39.272652, 53.461258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235019, -0.217986, -0.947232,
		-0.883272, -0.358867, 0.301736,
		-0.405705, 0.907577, -0.108201,
		36.302528, 39.544926, 53.428799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089546, 38.798225, 53.076965>,  <36.586521, 38.909622, 53.504539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089546, 38.798225, 53.076965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135124, 39.192600, 53.028065>,  <36.162472, 39.429226, 52.998722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135124, 39.192600, 53.028065>,  <36.089546, 38.798225, 53.076965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135124, 39.192600, 53.028065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462525, -0.056260, -0.884820,
		-0.879253, 0.157369, 0.449609,
		0.113949, 0.985936, -0.122254,
		36.169308, 39.488380, 52.991390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438515, 39.010628, 52.784016>,  <36.089546, 38.798225, 53.076965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438515, 39.010628, 52.784016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.701687, 39.306553, 52.727726>,  <35.859589, 39.484108, 52.693951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.701687, 39.306553, 52.727726>,  <35.438515, 39.010628, 52.784016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701687, 39.306553, 52.727726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239931, 0.028793, -0.970363,
		-0.713835, 0.672196, 0.196447,
		0.657931, 0.739813, -0.140727,
		35.899067, 39.528496, 52.685509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100521, 39.497910, 52.353397>,  <35.438515, 39.010628, 52.784016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100521, 39.497910, 52.353397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493549, 39.551201, 52.301533>,  <35.729366, 39.583176, 52.270412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493549, 39.551201, 52.301533>,  <35.100521, 39.497910, 52.353397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493549, 39.551201, 52.301533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128737, -0.015589, -0.991556,
		-0.134122, 0.990963, 0.001833,
		0.982567, 0.133225, -0.129665,
		35.788319, 39.591167, 52.262634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140450, 39.986805, 51.817211>,  <35.100521, 39.497910, 52.353397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140450, 39.986805, 51.817211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511967, 39.841618, 51.787300>,  <35.734879, 39.754505, 51.769356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511967, 39.841618, 51.787300>,  <35.140450, 39.986805, 51.817211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511967, 39.841618, 51.787300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046800, 0.085276, -0.995258,
		0.367628, 0.927889, 0.062216,
		0.928795, -0.362972, -0.074775,
		35.790604, 39.732727, 51.764866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459049, 40.437126, 51.340916>,  <35.140450, 39.986805, 51.817211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459049, 40.437126, 51.340916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.643639, 40.083096, 51.365200>,  <35.754391, 39.870678, 51.379772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.643639, 40.083096, 51.365200>,  <35.459049, 40.437126, 51.340916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643639, 40.083096, 51.365200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000006, -0.068429, -0.997656,
		0.887156, 0.460389, -0.031573,
		0.461470, -0.885076, 0.060710,
		35.782082, 39.817574, 51.383411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035282, 40.546570, 50.916916>,  <35.459049, 40.437126, 51.340916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035282, 40.546570, 50.916916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995106, 40.149479, 50.943459>,  <35.971001, 39.911224, 50.959385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995106, 40.149479, 50.943459>,  <36.035282, 40.546570, 50.916916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995106, 40.149479, 50.943459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064233, -0.073023, -0.995260,
		0.992868, -0.095699, 0.071100,
		-0.100437, -0.992728, 0.066355,
		35.964973, 39.851662, 50.963364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634617, 40.288074, 50.600262>,  <36.035282, 40.546570, 50.916916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634617, 40.288074, 50.600262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378426, 39.981491, 50.619595>,  <36.224712, 39.797543, 50.631195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378426, 39.981491, 50.619595>,  <36.634617, 40.288074, 50.600262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378426, 39.981491, 50.619595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057721, -0.110795, -0.992166,
		0.765806, -0.632668, 0.115201,
		-0.640475, -0.766456, 0.048329,
		36.186283, 39.751553, 50.634094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000683, 39.727211, 50.160500>,  <36.634617, 40.288074, 50.600262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000683, 39.727211, 50.160500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608688, 39.648327, 50.171356>,  <36.373493, 39.600998, 50.177868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.608688, 39.648327, 50.171356>,  <37.000683, 39.727211, 50.160500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608688, 39.648327, 50.171356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005617, -0.108871, -0.994040,
		0.198989, -0.974297, 0.105584,
		-0.979986, -0.197210, 0.027137,
		36.314693, 39.589165, 50.179497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835148, 39.125267, 49.715126>,  <37.000683, 39.727211, 50.160500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835148, 39.125267, 49.715126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.461399, 39.267239, 49.727589>,  <36.237148, 39.352421, 49.735065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.461399, 39.267239, 49.727589>,  <36.835148, 39.125267, 49.715126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461399, 39.267239, 49.727589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048073, -0.038929, -0.998085,
		-0.353040, -0.934081, 0.053437,
		-0.934372, 0.354933, 0.031161,
		36.181087, 39.373718, 49.736938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406494, 38.704891, 49.173550>,  <36.835148, 39.125267, 49.715126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406494, 38.704891, 49.173550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251160, 39.067684, 49.238758>,  <36.157959, 39.285358, 49.277882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251160, 39.067684, 49.238758>,  <36.406494, 38.704891, 49.173550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251160, 39.067684, 49.238758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125922, 0.123015, -0.984383,
		-0.912872, -0.402804, 0.066437,
		-0.388340, 0.906982, 0.163019,
		36.134659, 39.339779, 49.287663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950073, 38.702507, 48.681023>,  <36.406494, 38.704891, 49.173550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950073, 38.702507, 48.681023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924561, 39.088409, 48.783142>,  <35.909252, 39.319950, 48.844414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924561, 39.088409, 48.783142>,  <35.950073, 38.702507, 48.681023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924561, 39.088409, 48.783142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134944, 0.245134, -0.960052,
		-0.988798, -0.095686, 0.114552,
		-0.063783, 0.964756, 0.255300,
		35.905426, 39.377834, 48.859734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331196, 38.904797, 48.380547>,  <35.950073, 38.702507, 48.681023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331196, 38.904797, 48.380547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.586990, 39.210346, 48.415295>,  <35.740467, 39.393677, 48.436142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.586990, 39.210346, 48.415295>,  <35.331196, 38.904797, 48.380547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586990, 39.210346, 48.415295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150877, 0.235488, -0.960095,
		-0.753852, 0.600862, 0.265843,
		0.639487, 0.763879, 0.086867,
		35.778835, 39.439510, 48.441353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290848, 39.299885, 47.809963>,  <35.331196, 38.904797, 48.380547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290848, 39.299885, 47.809963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572727, 39.554485, 47.935356>,  <35.741856, 39.707245, 48.010593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572727, 39.554485, 47.935356>,  <35.290848, 39.299885, 47.809963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572727, 39.554485, 47.935356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087641, 0.516533, -0.851770,
		-0.704076, 0.572765, 0.419783,
		0.704696, 0.636501, 0.313481,
		35.784138, 39.745434, 48.029400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051945, 39.916977, 47.597771>,  <35.290848, 39.299885, 47.809963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051945, 39.916977, 47.597771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450783, 39.926983, 47.626526>,  <35.690086, 39.932987, 47.643780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450783, 39.926983, 47.626526>,  <35.051945, 39.916977, 47.597771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450783, 39.926983, 47.626526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052118, 0.463912, -0.884347,
		-0.055474, 0.885528, 0.461262,
		0.997099, 0.025018, 0.071887,
		35.749912, 39.934490, 47.648090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279152, 40.567699, 47.485310>,  <35.051945, 39.916977, 47.597771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279152, 40.567699, 47.485310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.607327, 40.353146, 47.406139>,  <35.804230, 40.224415, 47.358635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.607327, 40.353146, 47.406139>,  <35.279152, 40.567699, 47.485310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607327, 40.353146, 47.406139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036758, 0.295988, -0.954484,
		0.570554, 0.790369, 0.223123,
		0.820437, -0.536383, -0.197929,
		35.853458, 40.192230, 47.346760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718456, 41.014225, 47.017277>,  <35.279152, 40.567699, 47.485310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718456, 41.014225, 47.017277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858093, 40.641640, 46.976265>,  <35.941875, 40.418091, 46.951656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858093, 40.641640, 46.976265>,  <35.718456, 41.014225, 47.017277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858093, 40.641640, 46.976265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137683, 0.159211, -0.977597,
		0.926917, 0.327159, 0.183827,
		0.349097, -0.931461, -0.102531,
		35.962822, 40.362202, 46.945507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295193, 41.081722, 46.504017>,  <35.718456, 41.014225, 47.017277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295193, 41.081722, 46.504017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173157, 40.700809, 46.507404>,  <36.099934, 40.472260, 46.509438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173157, 40.700809, 46.507404>,  <36.295193, 41.081722, 46.504017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173157, 40.700809, 46.507404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041312, -0.022122, -0.998901,
		0.951427, -0.304404, 0.046090,
		-0.305089, -0.952286, 0.008472,
		36.081631, 40.415123, 46.509945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.564899, 35.225903, 27.466225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.316193, 35.499470, 27.313559>,  <45.166969, 35.663609, 27.221960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.316193, 35.499470, 27.313559>,  <45.564899, 35.225903, 27.466225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316193, 35.499470, 27.313559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273793, 0.646367, 0.712212,
		0.733788, 0.338332, -0.589140,
		-0.621765, 0.683916, -0.381664,
		45.129662, 35.704643, 27.199059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933140, 35.898933, 27.338381>,  <45.564899, 35.225903, 27.466225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933140, 35.898933, 27.338381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542397, 35.963566, 27.394440>,  <45.307949, 36.002346, 27.428074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542397, 35.963566, 27.394440>,  <45.933140, 35.898933, 27.338381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542397, 35.963566, 27.394440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210481, 0.609668, 0.764200,
		0.038037, 0.776013, -0.629569,
		-0.976858, 0.161580, 0.140146,
		45.249340, 36.012039, 27.436483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984264, 36.574455, 27.482265>,  <45.933140, 35.898933, 27.338381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984264, 36.574455, 27.482265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623898, 36.447826, 27.601015>,  <45.407677, 36.371849, 27.672266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623898, 36.447826, 27.601015>,  <45.984264, 36.574455, 27.482265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623898, 36.447826, 27.601015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074254, 0.561531, 0.824117,
		-0.427595, 0.764504, -0.482385,
		-0.900916, -0.316569, 0.296875,
		45.353622, 36.352856, 27.690077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560696, 37.137657, 27.607363>,  <45.984264, 36.574455, 27.482265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560696, 37.137657, 27.607363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.377338, 36.855042, 27.823021>,  <45.267326, 36.685471, 27.952415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.377338, 36.855042, 27.823021>,  <45.560696, 37.137657, 27.607363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377338, 36.855042, 27.823021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052491, 0.584053, 0.810017,
		-0.887200, 0.399604, -0.230637,
		-0.458390, -0.706540, 0.539147,
		45.239822, 36.643078, 27.984764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272121, 37.555050, 28.156239>,  <45.560696, 37.137657, 27.607363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272121, 37.555050, 28.156239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245571, 37.190475, 28.318661>,  <45.229641, 36.971729, 28.416113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245571, 37.190475, 28.318661>,  <45.272121, 37.555050, 28.156239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245571, 37.190475, 28.318661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131588, 0.395400, 0.909034,
		-0.989080, 0.113771, 0.093689,
		-0.066377, -0.911436, 0.406053,
		45.225658, 36.917046, 28.440477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769047, 37.600204, 28.693760>,  <45.272121, 37.555050, 28.156239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769047, 37.600204, 28.693760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971069, 37.264904, 28.775986>,  <45.092281, 37.063725, 28.825321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971069, 37.264904, 28.775986>,  <44.769047, 37.600204, 28.693760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971069, 37.264904, 28.775986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044418, 0.212613, 0.976126,
		-0.861943, -0.502128, 0.070148,
		0.505055, -0.838250, 0.205564,
		45.122585, 37.013428, 28.837654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362122, 37.268303, 29.156473>,  <44.769047, 37.600204, 28.693760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362122, 37.268303, 29.156473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.726440, 37.110313, 29.204542>,  <44.945034, 37.015522, 29.233383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.726440, 37.110313, 29.204542>,  <44.362122, 37.268303, 29.156473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726440, 37.110313, 29.204542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018796, 0.330455, 0.943635,
		-0.412419, -0.857204, 0.308402,
		0.910800, -0.394970, 0.120174,
		44.999680, 36.991821, 29.240595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418598, 36.901154, 29.751120>,  <44.362122, 37.268303, 29.156473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418598, 36.901154, 29.751120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811378, 36.943092, 29.688148>,  <45.047047, 36.968258, 29.650366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811378, 36.943092, 29.688148>,  <44.418598, 36.901154, 29.751120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811378, 36.943092, 29.688148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152823, 0.050641, 0.986955,
		0.111455, -0.993198, 0.033703,
		0.981949, 0.104850, -0.157428,
		45.105965, 36.974548, 29.640921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782951, 36.390255, 30.231899>,  <44.418598, 36.901154, 29.751120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782951, 36.390255, 30.231899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015297, 36.699814, 30.130960>,  <45.154705, 36.885548, 30.070398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015297, 36.699814, 30.130960>,  <44.782951, 36.390255, 30.231899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015297, 36.699814, 30.130960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207705, 0.158829, 0.965211,
		0.787054, -0.613071, -0.068484,
		0.580865, 0.773898, -0.252345,
		45.189556, 36.931984, 30.055258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389065, 36.219074, 30.532745>,  <44.782951, 36.390255, 30.231899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389065, 36.219074, 30.532745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357307, 36.614906, 30.484705>,  <45.338253, 36.852406, 30.455881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357307, 36.614906, 30.484705>,  <45.389065, 36.219074, 30.532745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357307, 36.614906, 30.484705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216168, 0.134705, 0.967019,
		0.973123, 0.050814, -0.224611,
		-0.079394, 0.989582, -0.120100,
		45.333488, 36.911781, 30.448675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879482, 36.557663, 30.963459>,  <45.389065, 36.219074, 30.532745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879482, 36.557663, 30.963459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.661434, 36.888805, 30.910545>,  <45.530605, 37.087490, 30.878798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.661434, 36.888805, 30.910545>,  <45.879482, 36.557663, 30.963459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661434, 36.888805, 30.910545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157057, 0.255836, 0.953877,
		0.823517, 0.499199, -0.269481,
		-0.545117, 0.827858, -0.132282,
		45.497898, 37.137161, 30.870861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324600, 37.183220, 31.269156>,  <45.879482, 36.557663, 30.963459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324600, 37.183220, 31.269156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954159, 37.332954, 31.250397>,  <45.731892, 37.422794, 31.239141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954159, 37.332954, 31.250397>,  <46.324600, 37.183220, 31.269156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954159, 37.332954, 31.250397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043948, 0.230506, 0.972078,
		0.374690, 0.898188, -0.229925,
		-0.926108, 0.374333, -0.046895,
		45.676327, 37.445255, 31.236328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.360718, 37.680080, 31.858734>,  <46.324600, 37.183220, 31.269156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.360718, 37.680080, 31.858734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977646, 37.644146, 31.749348>,  <45.747803, 37.622585, 31.683716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977646, 37.644146, 31.749348>,  <46.360718, 37.680080, 31.858734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977646, 37.644146, 31.749348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287764, 0.276306, 0.916977,
		-0.006818, 0.956862, -0.290464,
		-0.957677, -0.089837, -0.273466,
		45.690342, 37.617195, 31.667307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.001110, 38.195503, 32.259064>,  <46.360718, 37.680080, 31.858734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.001110, 38.195503, 32.259064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.726330, 37.913830, 32.187267>,  <45.561462, 37.744823, 32.144192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.726330, 37.913830, 32.187267>,  <46.001110, 38.195503, 32.259064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726330, 37.913830, 32.187267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283082, 0.031829, 0.958568,
		-0.669297, 0.709302, -0.221207,
		-0.686955, -0.704186, -0.179488,
		45.520245, 37.702576, 32.133423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419884, 38.476017, 32.480858>,  <46.001110, 38.195503, 32.259064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419884, 38.476017, 32.480858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382736, 38.077763, 32.477226>,  <45.360447, 37.838810, 32.475048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382736, 38.077763, 32.477226>,  <45.419884, 38.476017, 32.480858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382736, 38.077763, 32.477226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303898, 0.019664, 0.952502,
		-0.948168, 0.091213, -0.304399,
		-0.092866, -0.995637, -0.009075,
		45.354877, 37.779072, 32.474503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687607, 38.385700, 32.552643>,  <45.419884, 38.476017, 32.480858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687607, 38.385700, 32.552643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.872787, 38.043518, 32.645481>,  <44.983898, 37.838207, 32.701183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.872787, 38.043518, 32.645481>,  <44.687607, 38.385700, 32.552643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872787, 38.043518, 32.645481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577788, -0.092680, 0.810908,
		-0.672186, -0.509515, -0.537179,
		0.462955, -0.855456, 0.232093,
		45.011673, 37.786880, 32.715111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119869, 37.898533, 32.718227>,  <44.687607, 38.385700, 32.552643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119869, 37.898533, 32.718227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443275, 37.754177, 32.904156>,  <44.637318, 37.667564, 33.015713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443275, 37.754177, 32.904156>,  <44.119869, 37.898533, 32.718227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443275, 37.754177, 32.904156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522104, -0.075487, 0.849535,
		-0.271503, -0.929547, -0.249456,
		0.808513, -0.360894, 0.464825,
		44.685829, 37.645908, 33.043602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837040, 37.488754, 33.124329>,  <44.119869, 37.898533, 32.718227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837040, 37.488754, 33.124329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.204510, 37.471947, 33.281441>,  <44.424992, 37.461861, 33.375706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.204510, 37.471947, 33.281441>,  <43.837040, 37.488754, 33.124329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204510, 37.471947, 33.281441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394533, -0.146971, 0.907052,
		0.019615, -0.988248, -0.151595,
		0.918673, -0.042017, 0.392779,
		44.480110, 37.459339, 33.399273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744900, 36.925217, 33.703838>,  <43.837040, 37.488754, 33.124329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744900, 36.925217, 33.703838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072365, 37.150600, 33.748211>,  <44.268845, 37.285828, 33.774834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072365, 37.150600, 33.748211>,  <43.744900, 36.925217, 33.703838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072365, 37.150600, 33.748211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158395, 0.035868, 0.986724,
		0.551996, -0.825368, 0.118613,
		0.818664, 0.563455, 0.110935,
		44.317963, 37.319637, 33.781490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175964, 36.609379, 34.261600>,  <43.744900, 36.925217, 33.703838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175964, 36.609379, 34.261600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.257858, 37.000546, 34.244789>,  <44.306995, 37.235245, 34.234703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.257858, 37.000546, 34.244789>,  <44.175964, 36.609379, 34.261600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257858, 37.000546, 34.244789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037731, 0.050795, 0.997996,
		0.978089, -0.202741, 0.047298,
		0.204737, 0.977914, -0.042032,
		44.319279, 37.293919, 34.232178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622238, 36.746658, 34.847412>,  <44.175964, 36.609379, 34.261600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622238, 36.746658, 34.847412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458923, 37.099541, 34.753597>,  <44.360935, 37.311272, 34.697308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458923, 37.099541, 34.753597>,  <44.622238, 36.746658, 34.847412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458923, 37.099541, 34.753597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173322, 0.177337, 0.968768,
		0.896247, 0.436189, 0.080501,
		-0.408290, 0.882208, -0.234539,
		44.336437, 37.364204, 34.683235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196484, 36.646572, 34.408279>,  <44.622238, 36.746658, 34.847412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196484, 36.646572, 34.408279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298843, 36.352051, 34.658836>,  <45.360260, 36.175339, 34.809170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298843, 36.352051, 34.658836>,  <45.196484, 36.646572, 34.408279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298843, 36.352051, 34.658836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126376, -0.667888, -0.733454,
		0.958406, 0.108532, -0.263966,
		0.255903, -0.736306, 0.626393,
		45.375614, 36.131161, 34.846756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819759, 36.319592, 34.253407>,  <45.196484, 36.646572, 34.408279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819759, 36.319592, 34.253407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602764, 36.047901, 34.451138>,  <45.472569, 35.884888, 34.569775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602764, 36.047901, 34.451138>,  <45.819759, 36.319592, 34.253407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602764, 36.047901, 34.451138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147214, -0.656195, -0.740092,
		0.827065, -0.328718, 0.455969,
		-0.542486, -0.679229, 0.494324,
		45.440018, 35.844131, 34.599434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068096, 35.659336, 34.053482>,  <45.819759, 36.319592, 34.253407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068096, 35.659336, 34.053482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.708237, 35.573120, 34.205364>,  <45.492321, 35.521389, 34.296494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.708237, 35.573120, 34.205364>,  <46.068096, 35.659336, 34.053482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708237, 35.573120, 34.205364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125648, -0.705062, -0.697926,
		0.418146, -0.675597, 0.607226,
		-0.899648, -0.215539, 0.379706,
		45.438343, 35.508457, 34.319275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031754, 34.855988, 34.202267>,  <46.068096, 35.659336, 34.053482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031754, 34.855988, 34.202267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.663116, 35.009079, 34.176411>,  <45.441933, 35.100933, 34.160896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.663116, 35.009079, 34.176411>,  <46.031754, 34.855988, 34.202267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663116, 35.009079, 34.176411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216978, -0.646068, -0.731790,
		-0.321841, -0.660389, 0.678457,
		-0.921596, 0.382730, -0.064641,
		45.386639, 35.123898, 34.157017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571060, 34.280640, 34.221779>,  <46.031754, 34.855988, 34.202267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571060, 34.280640, 34.221779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.383694, 34.586044, 34.043953>,  <45.271275, 34.769287, 33.937260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.383694, 34.586044, 34.043953>,  <45.571060, 34.280640, 34.221779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383694, 34.586044, 34.043953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120688, -0.553754, -0.823888,
		-0.875229, -0.332266, 0.351531,
		-0.468411, 0.763516, -0.444561,
		45.243172, 34.815098, 33.910583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042412, 34.019966, 33.754883>,  <45.571060, 34.280640, 34.221779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042412, 34.019966, 33.754883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074356, 34.391834, 33.611031>,  <45.093521, 34.614956, 33.524719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074356, 34.391834, 33.611031>,  <45.042412, 34.019966, 33.754883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074356, 34.391834, 33.611031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079338, -0.353709, -0.931985,
		-0.993644, 0.102961, 0.045511,
		0.079861, 0.929671, -0.359629,
		45.098312, 34.670734, 33.503143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579063, 34.087933, 33.206848>,  <45.042412, 34.019966, 33.754883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579063, 34.087933, 33.206848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838303, 34.383900, 33.134750>,  <44.993847, 34.561481, 33.091492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838303, 34.383900, 33.134750>,  <44.579063, 34.087933, 33.206848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838303, 34.383900, 33.134750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054133, -0.280844, -0.958225,
		-0.759629, 0.611268, -0.222069,
		0.648099, 0.739918, -0.180248,
		45.032734, 34.605873, 33.080677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415543, 34.382442, 32.592838>,  <44.579063, 34.087933, 33.206848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415543, 34.382442, 32.592838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800968, 34.480400, 32.635876>,  <45.032223, 34.539173, 32.661697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800968, 34.480400, 32.635876>,  <44.415543, 34.382442, 32.592838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800968, 34.480400, 32.635876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187112, -0.329647, -0.925376,
		-0.191152, 0.911789, -0.363458,
		0.963561, 0.244895, 0.107594,
		45.090038, 34.553867, 32.668156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623638, 34.811947, 32.059814>,  <44.415543, 34.382442, 32.592838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623638, 34.811947, 32.059814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.997143, 34.710297, 32.160610>,  <45.221245, 34.649307, 32.221088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.997143, 34.710297, 32.160610>,  <44.623638, 34.811947, 32.059814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997143, 34.710297, 32.160610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155802, -0.345240, -0.925492,
		0.322193, 0.903453, -0.282779,
		0.933765, -0.254129, 0.251993,
		45.277271, 34.634056, 32.236210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080471, 35.109650, 31.602303>,  <44.623638, 34.811947, 32.059814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080471, 35.109650, 31.602303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291126, 34.811520, 31.765835>,  <45.417519, 34.632641, 31.863955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291126, 34.811520, 31.765835>,  <45.080471, 35.109650, 31.602303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291126, 34.811520, 31.765835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218901, -0.345807, -0.912414,
		0.821421, 0.570007, -0.018963,
		0.526640, -0.745325, 0.408828,
		45.449120, 34.587921, 31.888483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708508, 35.086315, 31.250542>,  <45.080471, 35.109650, 31.602303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708508, 35.086315, 31.250542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.656883, 34.724224, 31.412481>,  <45.625908, 34.506969, 31.509645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.656883, 34.724224, 31.412481>,  <45.708508, 35.086315, 31.250542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.656883, 34.724224, 31.412481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107554, -0.418634, -0.901764,
		0.985787, -0.072838, 0.151390,
		-0.129060, -0.905230, 0.404849,
		45.618164, 34.452656, 31.533936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189159, 34.782406, 30.912195>,  <45.708508, 35.086315, 31.250542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189159, 34.782406, 30.912195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.000317, 34.475761, 31.086288>,  <45.887012, 34.291775, 31.190744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.000317, 34.475761, 31.086288>,  <46.189159, 34.782406, 30.912195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000317, 34.475761, 31.086288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338218, -0.613450, -0.713644,
		0.814078, -0.189714, 0.548895,
		-0.472108, -0.766608, 0.435231,
		45.858685, 34.245781, 31.216858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636425, 34.160656, 31.084349>,  <46.189159, 34.782406, 30.912195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636425, 34.160656, 31.084349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.259212, 34.045540, 31.017565>,  <46.032887, 33.976471, 30.977495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.259212, 34.045540, 31.017565>,  <46.636425, 34.160656, 31.084349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.259212, 34.045540, 31.017565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301573, -0.527396, -0.794296,
		0.140537, -0.799394, 0.584139,
		-0.943029, -0.287789, -0.166957,
		45.976303, 33.959202, 30.967478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.608784, 33.389061, 30.989210>,  <46.636425, 34.160656, 31.084349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.608784, 33.389061, 30.989210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.277966, 33.526100, 30.810940>,  <46.079475, 33.608322, 30.703978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.277966, 33.526100, 30.810940>,  <46.608784, 33.389061, 30.989210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277966, 33.526100, 30.810940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238417, -0.504209, -0.830019,
		-0.509140, -0.792691, 0.335287,
		-0.827003, 0.342658, -0.445704,
		46.029854, 33.628880, 30.677237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353462, 32.783794, 30.579742>,  <46.608784, 33.389061, 30.989210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353462, 32.783794, 30.579742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.159737, 33.085430, 30.402300>,  <46.043499, 33.266411, 30.295835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.159737, 33.085430, 30.402300>,  <46.353462, 32.783794, 30.579742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159737, 33.085430, 30.402300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002270, -0.508120, -0.861283,
		-0.874890, -0.416127, 0.247803,
		-0.484317, 0.754090, -0.443605,
		46.014442, 33.311657, 30.269218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942200, 32.433117, 30.117790>,  <46.353462, 32.783794, 30.579742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942200, 32.433117, 30.117790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964775, 32.806541, 29.976208>,  <45.978321, 33.030594, 29.891258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964775, 32.806541, 29.976208>,  <45.942200, 32.433117, 30.117790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964775, 32.806541, 29.976208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178850, -0.358240, -0.916339,
		-0.982256, -0.011585, -0.187187,
		0.056442, 0.933558, -0.353955,
		45.981709, 33.086609, 29.870022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658516, 32.347900, 29.452778>,  <45.942200, 32.433117, 30.117790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658516, 32.347900, 29.452778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826729, 32.710316, 29.433838>,  <45.927658, 32.927765, 29.422474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826729, 32.710316, 29.433838>,  <45.658516, 32.347900, 29.452778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826729, 32.710316, 29.433838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112388, -0.103807, -0.988227,
		-0.900289, 0.410261, -0.145482,
		0.420533, 0.906041, -0.047348,
		45.952888, 32.982128, 29.419634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343426, 32.779686, 28.954943>,  <45.658516, 32.347900, 29.452778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343426, 32.779686, 28.954943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.714863, 32.917313, 29.010557>,  <45.937725, 32.999889, 29.043926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.714863, 32.917313, 29.010557>,  <45.343426, 32.779686, 28.954943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714863, 32.917313, 29.010557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177252, -0.082069, -0.980738,
		-0.326033, 0.935350, -0.137195,
		0.928593, 0.344071, 0.139035,
		45.993439, 33.020535, 29.052267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541428, 33.235764, 28.347225>,  <45.343426, 32.779686, 28.954943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541428, 33.235764, 28.347225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.892754, 33.171021, 28.527168>,  <46.103550, 33.132175, 28.635134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.892754, 33.171021, 28.527168>,  <45.541428, 33.235764, 28.347225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892754, 33.171021, 28.527168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452652, -0.021311, -0.891432,
		0.153874, 0.986584, 0.054548,
		0.878310, -0.161859, 0.449859,
		46.156246, 33.122463, 28.662127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034729, 33.740570, 28.151514>,  <45.541428, 33.235764, 28.347225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034729, 33.740570, 28.151514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244953, 33.412678, 28.242580>,  <46.371090, 33.215942, 28.297220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244953, 33.412678, 28.242580>,  <46.034729, 33.740570, 28.151514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244953, 33.412678, 28.242580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251838, -0.105709, -0.961979,
		0.812625, 0.562916, 0.150881,
		0.525564, -0.819726, 0.227666,
		46.402622, 33.166759, 28.310881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629711, 33.882401, 27.926765>,  <46.034729, 33.740570, 28.151514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629711, 33.882401, 27.926765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.599983, 33.484581, 27.956001>,  <46.582146, 33.245888, 27.973543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.599983, 33.484581, 27.956001>,  <46.629711, 33.882401, 27.926765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.599983, 33.484581, 27.956001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226460, -0.088209, -0.970018,
		0.971181, -0.055537, 0.231782,
		-0.074317, -0.994552, 0.073090,
		46.577686, 33.186214, 27.977928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.803223, 40.273487, 42.052807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444065, 40.168110, 42.193882>,  <39.228573, 40.104885, 42.278526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444065, 40.168110, 42.193882>,  <39.803223, 40.273487, 42.052807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444065, 40.168110, 42.193882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203264, -0.462541, -0.862983,
		0.390479, -0.846554, 0.361764,
		-0.897892, -0.263443, 0.352686,
		39.174698, 40.089077, 42.299686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759544, 39.547298, 41.907001>,  <39.803223, 40.273487, 42.052807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759544, 39.547298, 41.907001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379124, 39.664963, 41.944893>,  <39.150871, 39.735561, 41.967628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379124, 39.664963, 41.944893>,  <39.759544, 39.547298, 41.907001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379124, 39.664963, 41.944893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244191, -0.527441, -0.813743,
		-0.189408, -0.797042, 0.573454,
		-0.951050, 0.294161, 0.094729,
		39.093807, 39.753212, 41.973312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353764, 38.949505, 41.800449>,  <39.759544, 39.547298, 41.907001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353764, 38.949505, 41.800449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109402, 39.257130, 41.725258>,  <38.962784, 39.441704, 41.680141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109402, 39.257130, 41.725258>,  <39.353764, 38.949505, 41.800449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109402, 39.257130, 41.725258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295871, -0.442005, -0.846813,
		-0.734343, -0.461701, 0.497566,
		-0.610901, 0.769067, -0.187980,
		38.926132, 39.487850, 41.668865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684727, 38.651150, 41.587379>,  <39.353764, 38.949505, 41.800449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684727, 38.651150, 41.587379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697475, 39.022831, 41.440105>,  <38.705124, 39.245842, 41.351742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697475, 39.022831, 41.440105>,  <38.684727, 38.651150, 41.587379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697475, 39.022831, 41.440105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396054, -0.326475, -0.858228,
		-0.917674, 0.173170, 0.357613,
		0.031868, 0.929207, -0.368182,
		38.707035, 39.301594, 41.329651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037601, 38.727898, 41.134495>,  <38.684727, 38.651150, 41.587379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037601, 38.727898, 41.134495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272438, 39.024639, 41.004898>,  <38.413342, 39.202686, 40.927139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272438, 39.024639, 41.004898>,  <38.037601, 38.727898, 41.134495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272438, 39.024639, 41.004898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480447, -0.002811, -0.877019,
		-0.651533, 0.670553, 0.354773,
		0.587090, 0.741857, -0.323996,
		38.448566, 39.247196, 40.907700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616600, 39.140755, 40.794151>,  <38.037601, 38.727898, 41.134495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616600, 39.140755, 40.794151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971878, 39.244701, 40.642586>,  <38.185047, 39.307068, 40.551647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971878, 39.244701, 40.642586>,  <37.616600, 39.140755, 40.794151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971878, 39.244701, 40.642586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412374, 0.087184, -0.906833,
		-0.202617, 0.961702, 0.184597,
		0.888197, 0.259863, -0.378916,
		38.238338, 39.322659, 40.528912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452225, 39.709854, 40.399910>,  <37.616600, 39.140755, 40.794151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452225, 39.709854, 40.399910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792175, 39.570976, 40.241337>,  <37.996147, 39.487648, 40.146191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792175, 39.570976, 40.241337>,  <37.452225, 39.709854, 40.399910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792175, 39.570976, 40.241337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375469, 0.128904, -0.917827,
		0.369767, 0.928891, -0.020808,
		0.849880, -0.347195, -0.396435,
		38.047138, 39.466820, 40.122406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652145, 40.143780, 39.936916>,  <37.452225, 39.709854, 40.399910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652145, 40.143780, 39.936916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894394, 39.844990, 39.827190>,  <38.039742, 39.665714, 39.761353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894394, 39.844990, 39.827190>,  <37.652145, 40.143780, 39.936916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894394, 39.844990, 39.827190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014131, 0.334579, -0.942262,
		0.795627, 0.574530, 0.192073,
		0.605621, -0.746975, -0.274319,
		38.076080, 39.620895, 39.744896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228981, 40.456196, 39.434868>,  <37.652145, 40.143780, 39.936916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228981, 40.456196, 39.434868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226879, 40.058807, 39.389267>,  <38.225616, 39.820374, 39.361908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226879, 40.058807, 39.389267>,  <38.228981, 40.456196, 39.434868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226879, 40.058807, 39.389267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001776, 0.114009, -0.993478,
		0.999985, -0.005019, -0.002364,
		-0.005256, -0.993467, -0.113998,
		38.225304, 39.760769, 39.355068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802856, 40.209934, 38.991486>,  <38.228981, 40.456196, 39.434868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802856, 40.209934, 38.991486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502068, 39.946556, 38.978905>,  <38.321594, 39.788528, 38.971355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502068, 39.946556, 38.978905>,  <38.802856, 40.209934, 38.991486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502068, 39.946556, 38.978905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026467, 0.017523, -0.999496,
		0.658667, -0.752423, 0.004251,
		-0.751969, -0.658448, -0.031457,
		38.276478, 39.749023, 38.969467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954254, 39.881557, 38.389698>,  <38.802856, 40.209934, 38.991486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954254, 39.881557, 38.389698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586445, 39.733120, 38.441483>,  <38.365757, 39.644058, 38.472553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586445, 39.733120, 38.441483>,  <38.954254, 39.881557, 38.389698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586445, 39.733120, 38.441483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160044, 0.052686, -0.985703,
		0.358970, -0.927098, -0.107837,
		-0.919525, -0.371097, 0.129464,
		38.310589, 39.621792, 38.480320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918739, 39.298920, 37.836121>,  <38.954254, 39.881557, 38.389698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918739, 39.298920, 37.836121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546795, 39.414883, 37.926731>,  <38.323627, 39.484459, 37.981098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546795, 39.414883, 37.926731>,  <38.918739, 39.298920, 37.836121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546795, 39.414883, 37.926731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219113, 0.058220, -0.973961,
		-0.295546, -0.955282, 0.009385,
		-0.929862, 0.289906, 0.226522,
		38.267838, 39.501854, 37.994686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419983, 38.906822, 37.397957>,  <38.918739, 39.298920, 37.836121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419983, 38.906822, 37.397957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276241, 39.257359, 37.526268>,  <38.189999, 39.467678, 37.603256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276241, 39.257359, 37.526268>,  <38.419983, 38.906822, 37.397957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276241, 39.257359, 37.526268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290758, 0.221488, -0.930808,
		-0.886750, -0.427756, 0.175210,
		-0.359352, 0.876338, 0.320778,
		38.168434, 39.520260, 37.622501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847073, 38.631351, 36.920120>,  <38.419983, 38.906822, 37.397957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847073, 38.631351, 36.920120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839066, 38.966980, 36.702660>,  <38.834259, 39.168358, 36.572182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839066, 38.966980, 36.702660>,  <38.847073, 38.631351, 36.920120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839066, 38.966980, 36.702660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360967, 0.501021, 0.786563,
		0.932364, 0.211990, 0.292846,
		-0.020021, 0.839070, -0.543655,
		38.833057, 39.218700, 36.539562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672832, 37.859005, 36.850689>,  <38.847073, 38.631351, 36.920120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672832, 37.859005, 36.850689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285748, 37.829224, 36.754368>,  <38.053497, 37.811356, 36.696575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285748, 37.829224, 36.754368>,  <38.672832, 37.859005, 36.850689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285748, 37.829224, 36.754368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228432, -0.662873, -0.713035,
		-0.106535, -0.745021, 0.658478,
		-0.967713, -0.074454, -0.240806,
		37.995434, 37.806889, 36.682125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466286, 37.809422, 36.751881>,  <38.672832, 37.859005, 36.850689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466286, 37.809422, 36.751881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865707, 37.813404, 36.772995>,  <40.105362, 37.815792, 36.785664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865707, 37.813404, 36.772995>,  <39.466286, 37.809422, 36.751881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865707, 37.813404, 36.772995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037664, -0.570872, 0.820175,
		0.038299, -0.820979, -0.569673,
		0.998556, 0.009956, 0.052785,
		40.165276, 37.816391, 36.788830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719097, 37.169712, 37.002098>,  <39.466286, 37.809422, 36.751881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719097, 37.169712, 37.002098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023590, 37.409554, 37.100899>,  <40.206284, 37.553459, 37.160179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023590, 37.409554, 37.100899>,  <39.719097, 37.169712, 37.002098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023590, 37.409554, 37.100899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212198, -0.590235, 0.778842,
		0.612784, -0.540463, -0.576538,
		0.761228, 0.599602, 0.247001,
		40.251957, 37.589436, 37.174999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331005, 36.743397, 37.058048>,  <39.719097, 37.169712, 37.002098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331005, 36.743397, 37.058048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375786, 37.071995, 37.281696>,  <40.402653, 37.269154, 37.415886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375786, 37.071995, 37.281696>,  <40.331005, 36.743397, 37.058048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375786, 37.071995, 37.281696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224218, -0.569031, 0.791157,
		0.968087, 0.036795, -0.247897,
		0.111950, 0.821493, 0.559122,
		40.409370, 37.318443, 37.449432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964684, 36.532726, 37.365696>,  <40.331005, 36.743397, 37.058048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964684, 36.532726, 37.365696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802036, 36.834549, 37.571728>,  <40.704449, 37.015644, 37.695347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802036, 36.834549, 37.571728>,  <40.964684, 36.532726, 37.365696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802036, 36.834549, 37.571728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150385, -0.500819, 0.852388,
		0.901137, 0.424053, 0.090166,
		-0.406615, 0.754559, 0.515078,
		40.680054, 37.060917, 37.726250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341736, 36.442898, 38.003849>,  <40.964684, 36.532726, 37.365696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341736, 36.442898, 38.003849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022987, 36.669048, 38.089027>,  <40.831738, 36.804737, 38.140133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022987, 36.669048, 38.089027>,  <41.341736, 36.442898, 38.003849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022987, 36.669048, 38.089027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097121, -0.228009, 0.968803,
		0.596291, 0.792694, 0.126784,
		-0.796872, 0.565375, 0.212947,
		40.783924, 36.838661, 38.152912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543556, 36.741020, 38.667847>,  <41.341736, 36.442898, 38.003849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543556, 36.741020, 38.667847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145222, 36.762165, 38.638119>,  <40.906223, 36.774853, 38.620281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145222, 36.762165, 38.638119>,  <41.543556, 36.741020, 38.667847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145222, 36.762165, 38.638119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086527, -0.290039, 0.953095,
		0.028827, 0.955554, 0.293404,
		-0.995832, 0.052862, -0.074321,
		40.846474, 36.778023, 38.615822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219868, 37.186440, 39.099491>,  <41.543556, 36.741020, 38.667847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219868, 37.186440, 39.099491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927982, 36.919514, 39.039883>,  <40.752850, 36.759357, 39.004116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927982, 36.919514, 39.039883>,  <41.219868, 37.186440, 39.099491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927982, 36.919514, 39.039883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126737, -0.082168, 0.988527,
		-0.671906, 0.740227, -0.024615,
		-0.729712, -0.667317, -0.149023,
		40.709068, 36.719318, 38.995174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925175, 37.383129, 39.624519>,  <41.219868, 37.186440, 39.099491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925175, 37.383129, 39.624519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736298, 37.042572, 39.533169>,  <40.622971, 36.838238, 39.478359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736298, 37.042572, 39.533169>,  <40.925175, 37.383129, 39.624519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736298, 37.042572, 39.533169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266005, -0.109378, 0.957746,
		-0.840401, 0.512992, -0.174828,
		-0.472194, -0.851396, -0.228380,
		40.594639, 36.787151, 39.464653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238541, 37.484280, 39.846073>,  <40.925175, 37.383129, 39.624519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238541, 37.484280, 39.846073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315968, 37.091846, 39.846489>,  <40.362423, 36.856384, 39.846737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315968, 37.091846, 39.846489>,  <40.238541, 37.484280, 39.846073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315968, 37.091846, 39.846489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302280, -0.058634, 0.951414,
		-0.933358, -0.184477, -0.307913,
		0.193568, -0.981086, 0.001037,
		40.374039, 36.797520, 39.846802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688721, 37.175488, 40.073856>,  <40.238541, 37.484280, 39.846073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688721, 37.175488, 40.073856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978699, 36.908558, 40.142124>,  <40.152687, 36.748402, 40.183086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978699, 36.908558, 40.142124>,  <39.688721, 37.175488, 40.073856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978699, 36.908558, 40.142124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273064, -0.050950, 0.960646,
		-0.632367, -0.743022, -0.219158,
		0.724947, -0.667325, 0.170673,
		40.196182, 36.708359, 40.193325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442558, 36.753952, 40.603561>,  <39.688721, 37.175488, 40.073856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442558, 36.753952, 40.603561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827122, 36.644325, 40.613171>,  <40.057861, 36.578548, 40.618938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827122, 36.644325, 40.613171>,  <39.442558, 36.753952, 40.603561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827122, 36.644325, 40.613171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031771, -0.023854, 0.999211,
		-0.273279, -0.961414, -0.031641,
		0.961410, -0.274069, 0.024026,
		40.115543, 36.562103, 40.620377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490181, 36.266960, 41.074039>,  <39.442558, 36.753952, 40.603561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490181, 36.266960, 41.074039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878902, 36.356930, 41.045746>,  <40.112137, 36.410912, 41.028770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878902, 36.356930, 41.045746>,  <39.490181, 36.266960, 41.074039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878902, 36.356930, 41.045746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066526, 0.026229, 0.997440,
		0.226204, -0.974023, 0.010526,
		0.971805, 0.224925, -0.070731,
		40.170444, 36.424408, 41.024525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779392, 35.807041, 41.429417>,  <39.490181, 36.266960, 41.074039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779392, 35.807041, 41.429417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060440, 36.091652, 41.426533>,  <40.229069, 36.262417, 41.424801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060440, 36.091652, 41.426533>,  <39.779392, 35.807041, 41.429417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060440, 36.091652, 41.426533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090405, -0.079212, 0.992750,
		0.705799, -0.698178, -0.119981,
		0.702621, 0.711529, -0.007211,
		40.271225, 36.305111, 41.424370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970116, 35.090050, 41.529613>,  <39.779392, 35.807041, 41.429417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970116, 35.090050, 41.529613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720852, 34.810982, 41.670994>,  <39.571293, 34.643539, 41.755821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720852, 34.810982, 41.670994>,  <39.970116, 35.090050, 41.529613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720852, 34.810982, 41.670994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128939, -0.354096, -0.926278,
		0.771394, -0.622791, 0.130701,
		-0.623158, -0.697673, 0.353450,
		39.533905, 34.601681, 41.777027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125275, 34.395790, 41.141838>,  <39.970116, 35.090050, 41.529613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125275, 34.395790, 41.141838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759781, 34.377552, 41.303341>,  <39.540485, 34.366608, 41.400242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759781, 34.377552, 41.303341>,  <40.125275, 34.395790, 41.141838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759781, 34.377552, 41.303341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387790, -0.198808, -0.900052,
		0.121309, -0.978977, 0.163975,
		-0.913730, -0.045597, 0.403755,
		39.485661, 34.363873, 41.424469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846500, 33.990929, 40.778564>,  <40.125275, 34.395790, 41.141838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846500, 33.990929, 40.778564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507675, 34.134094, 40.935734>,  <39.304382, 34.219994, 41.030033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507675, 34.134094, 40.935734>,  <39.846500, 33.990929, 40.778564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507675, 34.134094, 40.935734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468194, -0.152578, -0.870353,
		-0.251566, -0.921203, 0.296818,
		-0.847059, 0.357919, 0.392918,
		39.253559, 34.241470, 41.053608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302517, 33.502472, 40.594067>,  <39.846500, 33.990929, 40.778564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302517, 33.502472, 40.594067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122845, 33.853065, 40.663357>,  <39.015041, 34.063423, 40.704929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122845, 33.853065, 40.663357>,  <39.302517, 33.502472, 40.594067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122845, 33.853065, 40.663357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532951, -0.107249, -0.839321,
		-0.717076, -0.469327, 0.515299,
		-0.449181, 0.876487, 0.173223,
		38.988091, 34.116013, 40.715324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636890, 33.215469, 40.372314>,  <39.302517, 33.502472, 40.594067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636890, 33.215469, 40.372314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628002, 33.615162, 40.385193>,  <38.622669, 33.854977, 40.392921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628002, 33.615162, 40.385193>,  <38.636890, 33.215469, 40.372314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628002, 33.615162, 40.385193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623860, 0.011308, -0.781454,
		-0.781220, -0.037453, 0.623131,
		-0.022222, 0.999234, 0.032199,
		38.621334, 33.914932, 40.394852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908066, 33.411114, 40.164387>,  <38.636890, 33.215469, 40.372314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908066, 33.411114, 40.164387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142437, 33.726913, 40.091305>,  <38.283058, 33.916393, 40.047455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142437, 33.726913, 40.091305>,  <37.908066, 33.411114, 40.164387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142437, 33.726913, 40.091305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473639, 0.150704, -0.867730,
		-0.657538, 0.594961, 0.462240,
		0.585927, 0.789500, -0.182703,
		38.318214, 33.963764, 40.036495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442986, 33.985729, 39.903088>,  <37.908066, 33.411114, 40.164387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442986, 33.985729, 39.903088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793213, 34.123295, 39.767380>,  <38.003349, 34.205833, 39.685955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793213, 34.123295, 39.767380>,  <37.442986, 33.985729, 39.903088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793213, 34.123295, 39.767380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454918, 0.350608, -0.818611,
		-0.162582, 0.871089, 0.463434,
		0.875567, 0.343916, -0.339271,
		38.055882, 34.226471, 39.665600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264141, 34.567528, 39.530144>,  <37.442986, 33.985729, 39.903088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264141, 34.567528, 39.530144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644745, 34.515003, 39.418873>,  <37.873108, 34.483486, 39.352108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644745, 34.515003, 39.418873>,  <37.264141, 34.567528, 39.530144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644745, 34.515003, 39.418873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246614, 0.214915, -0.944983,
		0.183875, 0.967764, 0.172110,
		0.951510, -0.131314, -0.278182,
		37.930199, 34.475609, 39.335419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427948, 35.088795, 39.025906>,  <37.264141, 34.567528, 39.530144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427948, 35.088795, 39.025906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715714, 34.822884, 38.945393>,  <37.888374, 34.663338, 38.897087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715714, 34.822884, 38.945393>,  <37.427948, 35.088795, 39.025906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715714, 34.822884, 38.945393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360842, -0.110095, -0.926106,
		0.593495, 0.738884, -0.319084,
		0.719415, -0.664778, -0.201279,
		37.931538, 34.623451, 38.885010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857224, 35.371983, 38.508228>,  <37.427948, 35.088795, 39.025906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857224, 35.371983, 38.508228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895313, 34.973801, 38.507790>,  <37.918167, 34.734890, 38.507526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895313, 34.973801, 38.507790>,  <37.857224, 35.371983, 38.508228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895313, 34.973801, 38.507790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190519, -0.017142, -0.981534,
		0.977055, 0.093671, -0.191285,
		0.095220, -0.995456, -0.001098,
		37.923878, 34.675163, 38.507462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299362, 35.084446, 37.924191>,  <37.857224, 35.371983, 38.508228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299362, 35.084446, 37.924191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092022, 34.755020, 38.016327>,  <37.967617, 34.557365, 38.071609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092022, 34.755020, 38.016327>,  <38.299362, 35.084446, 37.924191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092022, 34.755020, 38.016327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201007, -0.144475, -0.968877,
		0.831208, -0.548521, -0.090652,
		-0.518353, -0.823560, 0.230345,
		37.936516, 34.507954, 38.085430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471989, 34.525654, 37.437267>,  <38.299362, 35.084446, 37.924191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471989, 34.525654, 37.437267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100807, 34.476463, 37.577999>,  <37.878098, 34.446949, 37.662437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100807, 34.476463, 37.577999>,  <38.471989, 34.525654, 37.437267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100807, 34.476463, 37.577999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345779, -0.068192, -0.935835,
		0.139080, -0.990064, 0.020755,
		-0.927951, -0.122980, 0.351827,
		37.822422, 34.439571, 37.683548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.017307, 34.202278, 45.483158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.672150, 34.403896, 45.468487>,  <39.465054, 34.524868, 45.459682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.672150, 34.403896, 45.468487>,  <40.017307, 34.202278, 45.483158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672150, 34.403896, 45.468487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068354, -0.188319, -0.979726,
		-0.500734, -0.842897, 0.196953,
		-0.862898, 0.504045, -0.036683,
		39.413280, 34.555111, 45.457481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425663, 33.743237, 45.275150>,  <40.017307, 34.202278, 45.483158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425663, 33.743237, 45.275150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352577, 34.123768, 45.175880>,  <39.308723, 34.352085, 45.116318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352577, 34.123768, 45.175880>,  <39.425663, 33.743237, 45.275150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352577, 34.123768, 45.175880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052688, -0.242591, -0.968697,
		-0.981753, -0.190072, -0.005798,
		-0.182716, 0.951326, -0.248179,
		39.297764, 34.409164, 45.101425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985531, 33.699982, 44.650349>,  <39.425663, 33.743237, 45.275150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985531, 33.699982, 44.650349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.058018, 34.091869, 44.684555>,  <39.101509, 34.327003, 44.705078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.058018, 34.091869, 44.684555>,  <38.985531, 33.699982, 44.650349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058018, 34.091869, 44.684555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169742, 0.116812, -0.978541,
		-0.968683, 0.162814, 0.187468,
		0.181219, 0.979718, 0.085517,
		39.112385, 34.385784, 44.710209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468567, 34.016293, 44.192303>,  <38.985531, 33.699982, 44.650349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468567, 34.016293, 44.192303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757923, 34.291592, 44.214287>,  <38.931538, 34.456772, 44.227478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757923, 34.291592, 44.214287>,  <38.468567, 34.016293, 44.192303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757923, 34.291592, 44.214287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099875, 0.183072, -0.978013,
		-0.683177, 0.701997, 0.201171,
		0.723391, 0.688248, 0.054958,
		38.974941, 34.498066, 44.230774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204777, 34.591984, 43.878639>,  <38.468567, 34.016293, 44.192303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204777, 34.591984, 43.878639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.602669, 34.631371, 43.867210>,  <38.841404, 34.655003, 43.860355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.602669, 34.631371, 43.867210>,  <38.204777, 34.591984, 43.878639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602669, 34.631371, 43.867210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049865, 0.221177, -0.973958,
		-0.089583, 0.970250, 0.224922,
		0.994730, 0.098466, -0.028568,
		38.901089, 34.660912, 43.858639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337254, 34.977966, 43.318069>,  <38.204777, 34.591984, 43.878639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337254, 34.977966, 43.318069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707939, 34.850109, 43.397095>,  <38.930351, 34.773396, 43.444508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707939, 34.850109, 43.397095>,  <38.337254, 34.977966, 43.318069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707939, 34.850109, 43.397095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221887, 0.041177, -0.974203,
		0.303258, 0.946644, 0.109083,
		0.926715, -0.319639, 0.197560,
		38.985954, 34.754219, 43.456364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693565, 35.302326, 42.896042>,  <38.337254, 34.977966, 43.318069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693565, 35.302326, 42.896042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.950466, 35.005962, 42.974586>,  <39.104607, 34.828144, 43.021713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.950466, 35.005962, 42.974586>,  <38.693565, 35.302326, 42.896042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950466, 35.005962, 42.974586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293331, 0.000906, -0.956010,
		0.708141, 0.671602, 0.217915,
		0.642256, -0.740912, 0.196360,
		39.143143, 34.783688, 43.033493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281734, 35.511826, 42.533264>,  <38.693565, 35.302326, 42.896042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281734, 35.511826, 42.533264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271049, 35.115421, 42.585686>,  <39.264637, 34.877579, 42.617138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271049, 35.115421, 42.585686>,  <39.281734, 35.511826, 42.533264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271049, 35.115421, 42.585686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313198, -0.132802, -0.940357,
		0.949312, 0.015924, 0.313931,
		-0.026716, -0.991015, 0.131058,
		39.263035, 34.818115, 42.625004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846466, 35.412769, 42.156841>,  <39.281734, 35.511826, 42.533264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846466, 35.412769, 42.156841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668350, 35.056068, 42.189056>,  <39.561481, 34.842049, 42.208385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668350, 35.056068, 42.189056>,  <39.846466, 35.412769, 42.156841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668350, 35.056068, 42.189056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301150, -0.233865, -0.924454,
		0.843221, -0.387401, 0.372690,
		-0.445294, -0.891755, 0.080534,
		39.534763, 34.788544, 42.213215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504044, 35.535995, 41.850094>,  <39.846466, 35.412769, 42.156841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504044, 35.535995, 41.850094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.486126, 35.935520, 41.842503>,  <40.475376, 36.175236, 41.837948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.486126, 35.935520, 41.842503>,  <40.504044, 35.535995, 41.850094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486126, 35.935520, 41.842503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238785, 0.029153, 0.970635,
		0.970039, 0.038948, -0.239808,
		-0.044796, 0.998816, -0.018980,
		40.472687, 36.235165, 41.836807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185684, 35.844429, 42.111874>,  <40.504044, 35.535995, 41.850094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185684, 35.844429, 42.111874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.909557, 36.127422, 42.172451>,  <40.743881, 36.297218, 42.208797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.909557, 36.127422, 42.172451>,  <41.185684, 35.844429, 42.111874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909557, 36.127422, 42.172451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400693, 0.199552, 0.894217,
		0.602421, 0.677974, -0.421237,
		-0.690314, 0.707482, 0.151445,
		40.702461, 36.339668, 42.217884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496532, 36.258335, 42.547646>,  <41.185684, 35.844429, 42.111874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496532, 36.258335, 42.547646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.134747, 36.423027, 42.592232>,  <40.917675, 36.521843, 42.618984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.134747, 36.423027, 42.592232>,  <41.496532, 36.258335, 42.547646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134747, 36.423027, 42.592232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263990, 0.335050, 0.904462,
		0.335050, 0.847477, -0.411734,
		-0.904462, 0.411734, 0.111466,
		40.863407, 36.546547, 42.625671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580479, 36.977699, 42.906372>,  <41.496532, 36.258335, 42.547646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580479, 36.977699, 42.906372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.208599, 36.844875, 42.970112>,  <40.985470, 36.765182, 43.008354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.208599, 36.844875, 42.970112>,  <41.580479, 36.977699, 42.906372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208599, 36.844875, 42.970112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070663, 0.263801, 0.961985,
		-0.361470, 0.905620, -0.221793,
		-0.929702, -0.332056, 0.159350,
		40.929688, 36.745258, 43.017918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324165, 37.418636, 43.467297>,  <41.580479, 36.977699, 42.906372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324165, 37.418636, 43.467297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.054363, 37.123936, 43.448368>,  <40.892483, 36.947117, 43.437012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.054363, 37.123936, 43.448368>,  <41.324165, 37.418636, 43.467297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054363, 37.123936, 43.448368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257467, 0.174669, 0.950369,
		-0.691919, 0.653214, -0.307504,
		-0.674506, -0.736751, -0.047324,
		40.852013, 36.902912, 43.434170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571770, 37.740929, 43.626186>,  <41.324165, 37.418636, 43.467297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571770, 37.740929, 43.626186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.627274, 37.351227, 43.697269>,  <40.660576, 37.117405, 43.739918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.627274, 37.351227, 43.697269>,  <40.571770, 37.740929, 43.626186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627274, 37.351227, 43.697269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143337, 0.157792, 0.977014,
		-0.979898, -0.161043, -0.117751,
		0.138761, -0.974252, 0.177704,
		40.668903, 37.058952, 43.750580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119003, 37.477013, 44.101185>,  <40.571770, 37.740929, 43.626186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119003, 37.477013, 44.101185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.383644, 37.178398, 44.129395>,  <40.542427, 36.999229, 44.146320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.383644, 37.178398, 44.129395>,  <40.119003, 37.477013, 44.101185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383644, 37.178398, 44.129395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043230, 0.131872, 0.990324,
		-0.748611, -0.652148, 0.119519,
		0.661599, -0.746534, 0.070528,
		40.582123, 36.954437, 44.150555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910198, 37.006882, 44.687031>,  <40.119003, 37.477013, 44.101185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910198, 37.006882, 44.687031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302151, 36.950874, 44.630138>,  <40.537323, 36.917271, 44.596004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302151, 36.950874, 44.630138>,  <39.910198, 37.006882, 44.687031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302151, 36.950874, 44.630138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148995, 0.039045, 0.988067,
		-0.132798, -0.989378, 0.059122,
		0.979880, -0.140022, -0.142227,
		40.596115, 36.908867, 44.587471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121971, 36.501072, 45.167656>,  <39.910198, 37.006882, 44.687031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121971, 36.501072, 45.167656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467602, 36.678188, 45.071899>,  <40.674980, 36.784458, 45.014446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467602, 36.678188, 45.071899>,  <40.121971, 36.501072, 45.167656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467602, 36.678188, 45.071899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227419, 0.080870, 0.970433,
		0.449061, -0.892969, -0.030821,
		0.864075, 0.442793, -0.239394,
		40.726826, 36.811028, 45.000080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505085, 36.336311, 45.736397>,  <40.121971, 36.501072, 45.167656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505085, 36.336311, 45.736397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687935, 36.652428, 45.573193>,  <40.797646, 36.842098, 45.475269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687935, 36.652428, 45.573193>,  <40.505085, 36.336311, 45.736397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687935, 36.652428, 45.573193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277486, 0.309125, 0.909639,
		0.845009, -0.529035, -0.077987,
		0.457123, 0.790294, -0.408013,
		40.825073, 36.889515, 45.450790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116512, 36.283562, 46.006950>,  <40.505085, 36.336311, 45.736397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116512, 36.283562, 46.006950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097389, 36.662144, 45.879238>,  <41.085915, 36.889294, 45.802612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097389, 36.662144, 45.879238>,  <41.116512, 36.283562, 46.006950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097389, 36.662144, 45.879238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405396, 0.310518, 0.859787,
		0.912890, -0.088333, -0.398533,
		-0.047804, 0.946455, -0.319278,
		41.083050, 36.946079, 45.783455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765549, 36.714111, 46.200752>,  <41.116512, 36.283562, 46.006950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765549, 36.714111, 46.200752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479229, 36.992981, 46.184895>,  <41.307438, 37.160305, 46.175381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479229, 36.992981, 46.184895>,  <41.765549, 36.714111, 46.200752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479229, 36.992981, 46.184895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255564, 0.314385, 0.914248,
		0.649857, 0.644288, -0.403211,
		-0.715803, 0.697176, -0.039648,
		41.264488, 37.202133, 46.173000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141506, 37.391636, 46.381943>,  <41.765549, 36.714111, 46.200752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141506, 37.391636, 46.381943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.748665, 37.441978, 46.437977>,  <41.512959, 37.472183, 46.471600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.748665, 37.441978, 46.437977>,  <42.141506, 37.391636, 46.381943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748665, 37.441978, 46.437977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181414, 0.432694, 0.883099,
		0.050526, 0.892713, -0.447784,
		-0.982108, 0.125854, 0.140088,
		41.454033, 37.479736, 46.480003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149643, 37.926235, 46.866817>,  <42.141506, 37.391636, 46.381943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149643, 37.926235, 46.866817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.763630, 37.822765, 46.883789>,  <41.532021, 37.760681, 46.893970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.763630, 37.822765, 46.883789>,  <42.149643, 37.926235, 46.866817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763630, 37.822765, 46.883789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019346, 0.231687, 0.972598,
		-0.261419, 0.937767, -0.228589,
		-0.965032, -0.258678, 0.042425,
		41.474121, 37.745163, 46.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.592083, 38.281654, 48.459641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873505, 38.000191, 48.419891>,  <34.042358, 37.831314, 48.396042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873505, 38.000191, 48.419891>,  <33.592083, 38.281654, 48.459641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873505, 38.000191, 48.419891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242979, 0.369599, -0.896860,
		0.667812, 0.606844, 0.431007,
		0.703554, -0.703660, -0.099373,
		34.084572, 37.789093, 48.390079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216568, 38.664352, 48.149456>,  <33.592083, 38.281654, 48.459641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216568, 38.664352, 48.149456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294353, 38.278431, 48.078655>,  <34.341026, 38.046879, 48.036175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294353, 38.278431, 48.078655>,  <34.216568, 38.664352, 48.149456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294353, 38.278431, 48.078655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216798, 0.218257, -0.951506,
		0.956651, 0.146663, 0.251612,
		0.194467, -0.964808, -0.176999,
		34.352692, 37.988987, 48.025555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663319, 38.715904, 47.605213>,  <34.216568, 38.664352, 48.149456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663319, 38.715904, 47.605213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567162, 38.329060, 47.571976>,  <34.509468, 38.096954, 47.552032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567162, 38.329060, 47.571976>,  <34.663319, 38.715904, 47.605213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567162, 38.329060, 47.571976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401914, -0.021253, -0.915431,
		0.883559, -0.253460, 0.393805,
		-0.240395, -0.967112, -0.083091,
		34.495045, 38.038925, 47.547047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258797, 38.297886, 47.266857>,  <34.663319, 38.715904, 47.605213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258797, 38.297886, 47.266857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916996, 38.096878, 47.214249>,  <34.711914, 37.976273, 47.182682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.916996, 38.096878, 47.214249>,  <35.258797, 38.297886, 47.266857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916996, 38.096878, 47.214249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197038, -0.079293, -0.977184,
		0.480624, -0.860923, 0.166771,
		-0.854504, -0.502518, -0.131524,
		34.660645, 37.946121, 47.174789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435623, 37.843689, 46.692280>,  <35.258797, 38.297886, 47.266857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435623, 37.843689, 46.692280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.035931, 37.854244, 46.703911>,  <34.796116, 37.860577, 46.710888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.035931, 37.854244, 46.703911>,  <35.435623, 37.843689, 46.692280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035931, 37.854244, 46.703911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031955, -0.116170, -0.992715,
		-0.022815, -0.992879, 0.116924,
		-0.999229, 0.026386, 0.029077,
		34.736160, 37.862160, 46.712635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211620, 37.359783, 46.173859>,  <35.435623, 37.843689, 46.692280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211620, 37.359783, 46.173859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883694, 37.579384, 46.238968>,  <34.686935, 37.711143, 46.278034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883694, 37.579384, 46.238968>,  <35.211620, 37.359783, 46.173859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883694, 37.579384, 46.238968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255523, -0.096355, -0.961990,
		-0.512450, -0.830249, 0.219276,
		-0.819819, 0.549001, 0.162770,
		34.637749, 37.744083, 46.287800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688526, 37.122498, 45.858196>,  <35.211620, 37.359783, 46.173859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688526, 37.122498, 45.858196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602005, 37.512508, 45.878353>,  <34.550095, 37.746513, 45.890446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602005, 37.512508, 45.878353>,  <34.688526, 37.122498, 45.858196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602005, 37.512508, 45.878353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164135, 0.014566, -0.986330,
		-0.962432, -0.221614, 0.156886,
		-0.216299, 0.975026, 0.050393,
		34.537117, 37.805016, 45.893471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023930, 37.192070, 45.508728>,  <34.688526, 37.122498, 45.858196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023930, 37.192070, 45.508728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174320, 37.562660, 45.501999>,  <34.264553, 37.785015, 45.497959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174320, 37.562660, 45.501999>,  <34.023930, 37.192070, 45.508728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174320, 37.562660, 45.501999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227279, 0.074598, -0.970968,
		-0.898325, 0.368883, 0.238616,
		0.375974, 0.926477, -0.016826,
		34.287113, 37.840603, 45.496952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472614, 37.505962, 45.160725>,  <34.023930, 37.192070, 45.508728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472614, 37.505962, 45.160725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793530, 37.744595, 45.152405>,  <33.986076, 37.887772, 45.147415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793530, 37.744595, 45.152405>,  <33.472614, 37.505962, 45.160725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793530, 37.744595, 45.152405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216041, 0.257703, -0.941762,
		-0.556475, 0.760055, 0.335636,
		0.802285, 0.596578, -0.020797,
		34.034214, 37.923569, 45.146164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249519, 38.033909, 44.747787>,  <33.472614, 37.505962, 45.160725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249519, 38.033909, 44.747787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648842, 38.052284, 44.733467>,  <33.888435, 38.063309, 44.724873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648842, 38.052284, 44.733467>,  <33.249519, 38.033909, 44.747787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648842, 38.052284, 44.733467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049615, 0.348756, -0.935899,
		-0.030508, 0.936087, 0.350444,
		0.998302, 0.045940, -0.035804,
		33.948334, 38.066067, 44.722725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389740, 38.625401, 44.392719>,  <33.249519, 38.033909, 44.747787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389740, 38.625401, 44.392719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724072, 38.408115, 44.360954>,  <33.924671, 38.277744, 44.341896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724072, 38.408115, 44.360954>,  <33.389740, 38.625401, 44.392719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724072, 38.408115, 44.360954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042453, 0.208166, -0.977172,
		0.547344, 0.813378, 0.197053,
		0.835830, -0.543214, -0.079408,
		33.974819, 38.245152, 44.337132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788208, 39.067314, 43.966156>,  <33.389740, 38.625401, 44.392719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788208, 39.067314, 43.966156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944935, 38.699932, 43.944557>,  <34.038971, 38.479504, 43.931599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944935, 38.699932, 43.944557>,  <33.788208, 39.067314, 43.966156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944935, 38.699932, 43.944557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114195, 0.106780, -0.987703,
		0.912927, 0.380837, 0.146721,
		0.391821, -0.918456, -0.053993,
		34.062481, 38.424397, 43.928360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188137, 39.120087, 43.323448>,  <33.788208, 39.067314, 43.966156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188137, 39.120087, 43.323448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168503, 38.723297, 43.370052>,  <34.156723, 38.485222, 43.398014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168503, 38.723297, 43.370052>,  <34.188137, 39.120087, 43.323448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168503, 38.723297, 43.370052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168072, -0.106784, -0.979974,
		0.984552, -0.067686, -0.161482,
		-0.049087, -0.991976, 0.116511,
		34.153778, 38.425705, 43.405006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642899, 38.811157, 42.867050>,  <34.188137, 39.120087, 43.323448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642899, 38.811157, 42.867050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356136, 38.542362, 42.941330>,  <34.184078, 38.381084, 42.985897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356136, 38.542362, 42.941330>,  <34.642899, 38.811157, 42.867050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356136, 38.542362, 42.941330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133627, -0.128980, -0.982603,
		0.684249, -0.729243, 0.002670,
		-0.716901, -0.671988, 0.185701,
		34.141068, 38.340767, 42.997040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390461, 38.788132, 42.653076>,  <34.642899, 38.811157, 42.867050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390461, 38.788132, 42.653076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469967, 39.176716, 42.601303>,  <35.517670, 39.409866, 42.570240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469967, 39.176716, 42.601303>,  <35.390461, 38.788132, 42.653076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469967, 39.176716, 42.601303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366412, 0.048828, 0.929171,
		0.908976, -0.232107, -0.346251,
		0.198760, 0.971464, -0.129430,
		35.529594, 39.468155, 42.562473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003593, 38.923706, 43.032116>,  <35.390461, 38.788132, 42.653076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003593, 38.923706, 43.032116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876240, 39.299000, 42.977928>,  <35.799828, 39.524174, 42.945415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876240, 39.299000, 42.977928>,  <36.003593, 38.923706, 43.032116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876240, 39.299000, 42.977928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321929, 0.241427, 0.915464,
		0.891624, 0.247856, -0.378911,
		-0.318383, 0.938232, -0.135470,
		35.780724, 39.580471, 42.937286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600582, 39.421463, 43.139294>,  <36.003593, 38.923706, 43.032116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600582, 39.421463, 43.139294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258598, 39.621880, 43.192947>,  <36.053406, 39.742130, 43.225140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258598, 39.621880, 43.192947>,  <36.600582, 39.421463, 43.139294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258598, 39.621880, 43.192947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274416, 0.217495, 0.936692,
		0.440151, 0.837645, -0.323445,
		-0.854963, 0.501045, 0.134133,
		36.002110, 39.772194, 43.233189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815151, 40.050884, 43.500111>,  <36.600582, 39.421463, 43.139294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815151, 40.050884, 43.500111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.417870, 40.021538, 43.536228>,  <36.179501, 40.003929, 43.557899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.417870, 40.021538, 43.536228>,  <36.815151, 40.050884, 43.500111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417870, 40.021538, 43.536228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074326, 0.196993, 0.977584,
		-0.089514, 0.977656, -0.190201,
		-0.993208, -0.073371, 0.090298,
		36.119907, 39.999527, 43.563316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566036, 40.635174, 43.895279>,  <36.815151, 40.050884, 43.500111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566036, 40.635174, 43.895279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287403, 40.353146, 43.948406>,  <36.120224, 40.183929, 43.980282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287403, 40.353146, 43.948406>,  <36.566036, 40.635174, 43.895279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287403, 40.353146, 43.948406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016635, 0.169202, 0.985441,
		-0.717283, 0.688651, -0.106135,
		-0.696583, -0.705075, 0.132822,
		36.078426, 40.141624, 43.988255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130669, 40.936893, 44.368038>,  <36.566036, 40.635174, 43.895279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130669, 40.936893, 44.368038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078712, 40.542439, 44.409336>,  <36.047539, 40.305767, 44.434116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078712, 40.542439, 44.409336>,  <36.130669, 40.936893, 44.368038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078712, 40.542439, 44.409336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118544, 0.118827, 0.985813,
		-0.984416, 0.115810, -0.132335,
		-0.129892, -0.986138, 0.103247,
		36.039745, 40.246597, 44.440311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531971, 40.818893, 44.729565>,  <36.130669, 40.936893, 44.368038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531971, 40.818893, 44.729565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.740612, 40.484150, 44.796009>,  <35.865795, 40.283302, 44.835876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.740612, 40.484150, 44.796009>,  <35.531971, 40.818893, 44.729565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740612, 40.484150, 44.796009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195406, 0.072345, 0.978050,
		-0.830512, -0.542610, -0.125793,
		0.521600, -0.836863, 0.166113,
		35.897091, 40.233089, 44.845844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182606, 40.505260, 45.191196>,  <35.531971, 40.818893, 44.729565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182606, 40.505260, 45.191196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528496, 40.306259, 45.218754>,  <35.736031, 40.186859, 45.235291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528496, 40.306259, 45.218754>,  <35.182606, 40.505260, 45.191196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528496, 40.306259, 45.218754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147548, -0.120511, 0.981686,
		-0.480090, -0.859050, -0.177614,
		0.864722, -0.497504, 0.068895,
		35.787910, 40.157009, 45.239422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055294, 40.005375, 45.678017>,  <35.182606, 40.505260, 45.191196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055294, 40.005375, 45.678017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454227, 39.998611, 45.649612>,  <35.693588, 39.994553, 45.632568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454227, 39.998611, 45.649612>,  <35.055294, 40.005375, 45.678017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454227, 39.998611, 45.649612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064854, -0.241223, 0.968300,
		-0.033505, -0.970322, -0.239483,
		0.997332, -0.016911, -0.071012,
		35.753426, 39.993538, 45.628307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201656, 39.505127, 46.154560>,  <35.055294, 40.005375, 45.678017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201656, 39.505127, 46.154560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520283, 39.744953, 46.123592>,  <35.711460, 39.888851, 46.105011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520283, 39.744953, 46.123592>,  <35.201656, 39.505127, 46.154560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520283, 39.744953, 46.123592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208205, -0.151859, 0.966224,
		0.567563, -0.785783, -0.245800,
		0.796569, 0.599570, -0.077415,
		35.759254, 39.924824, 46.100368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805141, 39.160748, 46.424709>,  <35.201656, 39.505127, 46.154560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805141, 39.160748, 46.424709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866344, 39.553944, 46.465336>,  <35.903069, 39.789860, 46.489712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866344, 39.553944, 46.465336>,  <35.805141, 39.160748, 46.424709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866344, 39.553944, 46.465336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401145, -0.155714, 0.902683,
		0.903145, -0.097376, -0.418148,
		0.153011, 0.982991, 0.101570,
		35.912247, 39.848843, 46.495808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393291, 39.155300, 46.772835>,  <35.805141, 39.160748, 46.424709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393291, 39.155300, 46.772835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264740, 39.529301, 46.832809>,  <36.187607, 39.753700, 46.868793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264740, 39.529301, 46.832809>,  <36.393291, 39.155300, 46.772835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264740, 39.529301, 46.832809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405543, -0.007186, 0.914048,
		0.855716, 0.354565, -0.376875,
		-0.321381, 0.935004, 0.149940,
		36.168327, 39.809803, 46.877792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919689, 39.517960, 47.080009>,  <36.393291, 39.155300, 46.772835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919689, 39.517960, 47.080009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.587437, 39.724312, 47.163830>,  <36.388084, 39.848125, 47.214123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.587437, 39.724312, 47.163830>,  <36.919689, 39.517960, 47.080009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587437, 39.724312, 47.163830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223634, -0.035566, 0.974024,
		0.509936, 0.855920, -0.085827,
		-0.830634, 0.515883, 0.209550,
		36.338245, 39.879078, 47.226696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095558, 40.037071, 47.656433>,  <36.919689, 39.517960, 47.080009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095558, 40.037071, 47.656433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699116, 39.984131, 47.661957>,  <36.461250, 39.952366, 47.665272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699116, 39.984131, 47.661957>,  <37.095558, 40.037071, 47.656433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699116, 39.984131, 47.661957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038494, -0.185832, 0.981827,
		-0.127380, 0.973627, 0.189274,
		-0.991107, -0.132351, 0.013808,
		36.401783, 39.944424, 47.666100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719883, 40.519485, 47.563053>,  <37.095558, 40.037071, 47.656433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719883, 40.519485, 47.563053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116039, 40.497292, 47.613728>,  <38.353733, 40.483974, 47.644131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.116039, 40.497292, 47.613728>,  <37.719883, 40.519485, 47.563053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116039, 40.497292, 47.613728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138158, 0.355229, -0.924513,
		0.006293, 0.933131, 0.359481,
		0.990390, -0.055483, 0.126684,
		38.413155, 40.480648, 47.651733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029629, 41.176105, 47.224537>,  <37.719883, 40.519485, 47.563053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029629, 41.176105, 47.224537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.356461, 40.950142, 47.270607>,  <38.552559, 40.814564, 47.298248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.356461, 40.950142, 47.270607>,  <38.029629, 41.176105, 47.224537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356461, 40.950142, 47.270607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268486, 0.196047, -0.943123,
		0.510197, 0.801527, 0.311854,
		0.817077, -0.564907, 0.115176,
		38.601585, 40.780670, 47.305161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659008, 41.535297, 46.955082>,  <38.029629, 41.176105, 47.224537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659008, 41.535297, 46.955082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.737885, 41.143154, 46.953510>,  <38.785210, 40.907867, 46.952568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.737885, 41.143154, 46.953510>,  <38.659008, 41.535297, 46.955082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737885, 41.143154, 46.953510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251836, 0.054524, -0.966233,
		0.947468, 0.189539, 0.257641,
		0.197187, -0.980358, -0.003927,
		38.797039, 40.849045, 46.952332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291672, 41.466717, 46.624714>,  <38.659008, 41.535297, 46.955082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291672, 41.466717, 46.624714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.143276, 41.096897, 46.589882>,  <39.054237, 40.875008, 46.568985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.143276, 41.096897, 46.589882>,  <39.291672, 41.466717, 46.624714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143276, 41.096897, 46.589882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287818, -0.025323, -0.957350,
		0.882909, -0.380227, 0.275496,
		-0.370987, -0.924546, -0.087078,
		39.031979, 40.819534, 46.563759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808498, 41.046570, 46.355675>,  <39.291672, 41.466717, 46.624714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808498, 41.046570, 46.355675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.451977, 40.896458, 46.253895>,  <39.238064, 40.806393, 46.192829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.451977, 40.896458, 46.253895>,  <39.808498, 41.046570, 46.355675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451977, 40.896458, 46.253895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269336, 0.013216, -0.962956,
		0.364738, -0.926819, 0.089296,
		-0.891305, -0.375277, -0.254446,
		39.184586, 40.783875, 46.177563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919685, 40.380138, 45.990681>,  <39.808498, 41.046570, 46.355675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919685, 40.380138, 45.990681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542717, 40.482346, 45.904366>,  <39.316536, 40.543671, 45.852577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.542717, 40.482346, 45.904366>,  <39.919685, 40.380138, 45.990681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542717, 40.482346, 45.904366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148223, -0.259273, -0.954362,
		-0.299804, -0.931390, 0.206469,
		-0.942416, 0.255518, -0.215784,
		39.259991, 40.558998, 45.839630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695393, 39.862698, 45.630505>,  <39.919685, 40.380138, 45.990681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695393, 39.862698, 45.630505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447426, 40.156956, 45.521309>,  <39.298645, 40.333511, 45.455791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447426, 40.156956, 45.521309>,  <39.695393, 39.862698, 45.630505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447426, 40.156956, 45.521309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042392, -0.378793, -0.924510,
		-0.783521, -0.561548, 0.266006,
		-0.619917, 0.735650, -0.272987,
		39.261452, 40.377651, 45.439411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067543, 39.566093, 45.217587>,  <39.695393, 39.862698, 45.630505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067543, 39.566093, 45.217587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.106308, 39.950832, 45.115253>,  <39.129566, 40.181675, 45.053852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.106308, 39.950832, 45.115253>,  <39.067543, 39.566093, 45.217587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106308, 39.950832, 45.115253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256978, -0.224149, -0.940063,
		-0.961546, 0.156847, 0.225452,
		0.096911, 0.961850, -0.255836,
		39.135380, 40.239388, 45.038502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464100, 39.725246, 44.890167>,  <39.067543, 39.566093, 45.217587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464100, 39.725246, 44.890167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.747929, 39.988728, 44.790077>,  <38.918224, 40.146816, 44.730022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.747929, 39.988728, 44.790077>,  <38.464100, 39.725246, 44.890167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747929, 39.988728, 44.790077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344981, 0.015110, -0.938488,
		-0.614406, 0.752249, 0.237962,
		0.709573, 0.658705, -0.250228,
		38.960800, 40.186340, 44.715008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167149, 40.179943, 44.438602>,  <38.464100, 39.725246, 44.890167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167149, 40.179943, 44.438602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.551617, 40.254440, 44.357151>,  <38.782299, 40.299137, 44.308281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.551617, 40.254440, 44.357151>,  <38.167149, 40.179943, 44.438602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551617, 40.254440, 44.357151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215207, 0.044027, -0.975576,
		-0.172729, 0.981517, 0.082398,
		0.961172, 0.186242, -0.203624,
		38.839970, 40.310314, 44.296062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252575, 40.771294, 43.938061>,  <38.167149, 40.179943, 44.438602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252575, 40.771294, 43.938061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.598576, 40.571552, 43.918404>,  <38.806175, 40.451706, 43.906609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.598576, 40.571552, 43.918404>,  <38.252575, 40.771294, 43.938061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598576, 40.571552, 43.918404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017385, 0.127715, -0.991658,
		0.501468, 0.856932, 0.119155,
		0.865002, -0.499356, -0.049147,
		38.858078, 40.421745, 43.903660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728580, 41.058693, 43.448395>,  <38.252575, 40.771294, 43.938061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728580, 41.058693, 43.448395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886749, 40.693356, 43.487274>,  <38.981651, 40.474155, 43.510601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886749, 40.693356, 43.487274>,  <38.728580, 41.058693, 43.448395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886749, 40.693356, 43.487274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100879, -0.148369, -0.983773,
		0.912942, 0.379202, -0.150806,
		0.395424, -0.913341, 0.097199,
		39.005375, 40.419353, 43.516434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118938, 41.031357, 42.868641>,  <38.728580, 41.058693, 43.448395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118938, 41.031357, 42.868641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114849, 40.648033, 42.982864>,  <39.112396, 40.418041, 43.051399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114849, 40.648033, 42.982864>,  <39.118938, 41.031357, 42.868641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114849, 40.648033, 42.982864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067889, -0.284248, -0.956344,
		0.997640, -0.029161, -0.062154,
		-0.010221, -0.958307, 0.285558,
		39.111782, 40.360542, 43.068531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487923, 40.857185, 42.390301>,  <39.118938, 41.031357, 42.868641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487923, 40.857185, 42.390301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.312756, 40.533993, 42.547981>,  <39.207657, 40.340076, 42.642590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.312756, 40.533993, 42.547981>,  <39.487923, 40.857185, 42.390301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312756, 40.533993, 42.547981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178362, -0.351685, -0.918970,
		0.881146, -0.472741, 0.009895,
		-0.437914, -0.807981, 0.394204,
		39.181381, 40.291599, 42.666241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.892347, 41.288445, 31.323936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182539, 41.292110, 31.048664>,  <27.356653, 41.294312, 30.883501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182539, 41.292110, 31.048664>,  <26.892347, 41.288445, 31.323936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182539, 41.292110, 31.048664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448765, -0.764415, 0.462903,
		-0.521813, -0.644659, -0.558682,
		0.725479, 0.009168, -0.688182,
		27.400183, 41.294861, 30.842209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880245, 40.689281, 30.907656>,  <26.892347, 41.288445, 31.323936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880245, 40.689281, 30.907656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.256027, 40.826221, 30.913593>,  <27.481497, 40.908386, 30.917156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.256027, 40.826221, 30.913593>,  <26.880245, 40.689281, 30.907656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256027, 40.826221, 30.913593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316448, -0.883368, 0.345720,
		0.131468, -0.320092, -0.938220,
		0.939456, 0.342349, 0.014842,
		27.537865, 40.928925, 30.918045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222376, 40.198658, 30.584431>,  <26.880245, 40.689281, 30.907656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222376, 40.198658, 30.584431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489515, 40.390949, 30.811720>,  <27.649799, 40.506325, 30.948093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489515, 40.390949, 30.811720>,  <27.222376, 40.198658, 30.584431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489515, 40.390949, 30.811720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296834, -0.872123, 0.388962,
		0.682546, -0.091099, -0.725142,
		0.667847, 0.480732, 0.568223,
		27.689869, 40.535168, 30.982187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812418, 39.778336, 30.655888>,  <27.222376, 40.198658, 30.584431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812418, 39.778336, 30.655888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861502, 40.008884, 30.979055>,  <27.890951, 40.147213, 31.172956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861502, 40.008884, 30.979055>,  <27.812418, 39.778336, 30.655888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861502, 40.008884, 30.979055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393336, -0.775650, 0.493614,
		0.911169, 0.257213, -0.321888,
		0.122709, 0.576376, 0.807919,
		27.898314, 40.181797, 31.221432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337914, 39.481297, 31.000591>,  <27.812418, 39.778336, 30.655888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337914, 39.481297, 31.000591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165369, 39.716728, 31.274088>,  <28.061842, 39.857986, 31.438187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165369, 39.716728, 31.274088>,  <28.337914, 39.481297, 31.000591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165369, 39.716728, 31.274088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053292, -0.739931, 0.670569,
		0.900604, 0.325696, 0.287811,
		-0.431362, 0.588579, 0.683741,
		28.035961, 39.893303, 31.479210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627285, 39.275734, 31.582901>,  <28.337914, 39.481297, 31.000591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627285, 39.275734, 31.582901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321861, 39.487301, 31.731073>,  <28.138607, 39.614243, 31.819977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321861, 39.487301, 31.731073>,  <28.627285, 39.275734, 31.582901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321861, 39.487301, 31.731073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028980, -0.545011, 0.837928,
		0.645088, 0.650542, 0.400820,
		-0.763559, 0.528921, 0.370433,
		28.092794, 39.645977, 31.842203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788448, 39.367371, 32.349812>,  <28.627285, 39.275734, 31.582901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788448, 39.367371, 32.349812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392859, 39.409283, 32.307957>,  <28.155504, 39.434429, 32.282845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392859, 39.409283, 32.307957>,  <28.788448, 39.367371, 32.349812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392859, 39.409283, 32.307957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139084, -0.414676, 0.899277,
		0.050839, 0.903916, 0.424678,
		-0.988975, 0.104784, -0.104639,
		28.096167, 39.440720, 32.276566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624029, 39.459148, 32.971203>,  <28.788448, 39.367371, 32.349812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624029, 39.459148, 32.971203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293364, 39.352978, 32.772739>,  <28.094965, 39.289276, 32.653660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293364, 39.352978, 32.772739>,  <28.624029, 39.459148, 32.971203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293364, 39.352978, 32.772739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229629, -0.645866, 0.728098,
		-0.513711, 0.715825, 0.472964,
		-0.826663, -0.265426, -0.496163,
		28.045364, 39.273350, 32.623890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055210, 39.506641, 33.449951>,  <28.624029, 39.459148, 32.971203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055210, 39.506641, 33.449951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943293, 39.258171, 33.157143>,  <27.876143, 39.109089, 32.981457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943293, 39.258171, 33.157143>,  <28.055210, 39.506641, 33.449951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943293, 39.258171, 33.157143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218424, -0.701293, 0.678586,
		-0.934884, 0.349754, 0.060536,
		-0.279792, -0.621176, -0.732022,
		27.859356, 39.071819, 32.937534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376928, 39.309219, 33.618572>,  <28.055210, 39.506641, 33.449951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376928, 39.309219, 33.618572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541178, 39.047539, 33.364513>,  <27.639729, 38.890530, 33.212078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541178, 39.047539, 33.364513>,  <27.376928, 39.309219, 33.618572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541178, 39.047539, 33.364513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180031, -0.741040, 0.646876,
		-0.893854, -0.151278, -0.422066,
		0.410626, -0.654198, -0.635147,
		27.664366, 38.851280, 33.173969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807266, 38.830490, 33.520054>,  <27.376928, 39.309219, 33.618572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807266, 38.830490, 33.520054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153397, 38.657566, 33.418606>,  <27.361074, 38.553810, 33.357738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153397, 38.657566, 33.418606>,  <26.807266, 38.830490, 33.520054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153397, 38.657566, 33.418606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169229, -0.728298, 0.664037,
		-0.471779, -0.531687, -0.703373,
		0.865324, -0.432310, -0.253619,
		27.412994, 38.527874, 33.342522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645964, 38.101475, 33.364193>,  <26.807266, 38.830490, 33.520054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645964, 38.101475, 33.364193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035923, 38.109924, 33.452850>,  <27.269899, 38.114994, 33.506042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035923, 38.109924, 33.452850>,  <26.645964, 38.101475, 33.364193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035923, 38.109924, 33.452850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109318, -0.821806, 0.559182,
		0.193961, -0.569375, -0.798869,
		0.974899, 0.021129, 0.221642,
		27.328392, 38.116264, 33.519344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837612, 37.417439, 33.529396>,  <26.645964, 38.101475, 33.364193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837612, 37.417439, 33.529396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.189215, 37.577919, 33.632454>,  <27.400177, 37.674210, 33.694290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.189215, 37.577919, 33.632454>,  <26.837612, 37.417439, 33.529396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189215, 37.577919, 33.632454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134717, -0.727317, 0.672949,
		0.457382, -0.556817, -0.693366,
		0.879007, 0.401203, 0.257649,
		27.452917, 37.698280, 33.709747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462412, 36.957554, 33.437138>,  <26.837612, 37.417439, 33.529396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462412, 36.957554, 33.437138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564583, 37.236828, 33.704659>,  <27.625885, 37.404392, 33.865170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564583, 37.236828, 33.704659>,  <27.462412, 36.957554, 33.437138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564583, 37.236828, 33.704659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273846, -0.715663, 0.642522,
		0.927236, 0.019031, -0.373994,
		0.255426, 0.698186, 0.668800,
		27.641211, 37.446285, 33.905300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973103, 36.704502, 33.979828>,  <27.462412, 36.957554, 33.437138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973103, 36.704502, 33.979828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.866377, 37.030346, 34.185825>,  <27.802341, 37.225853, 34.309425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.866377, 37.030346, 34.185825>,  <27.973103, 36.704502, 33.979828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866377, 37.030346, 34.185825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239028, -0.461735, 0.854205,
		0.933635, 0.351013, -0.071517,
		-0.266815, 0.814611, 0.514994,
		27.786333, 37.274731, 34.340324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333317, 36.577435, 34.588440>,  <27.973103, 36.704502, 33.979828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333317, 36.577435, 34.588440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066427, 36.852394, 34.703186>,  <27.906294, 37.017368, 34.772034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066427, 36.852394, 34.703186>,  <28.333317, 36.577435, 34.588440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066427, 36.852394, 34.703186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156761, -0.506099, 0.848110,
		0.728174, 0.520910, 0.445439,
		-0.667225, 0.687399, 0.286869,
		27.866261, 37.058613, 34.789246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534977, 36.828888, 35.288574>,  <28.333317, 36.577435, 34.588440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534977, 36.828888, 35.288574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147060, 36.892284, 35.214405>,  <27.914310, 36.930325, 35.169903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147060, 36.892284, 35.214405>,  <28.534977, 36.828888, 35.288574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147060, 36.892284, 35.214405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242043, -0.530922, 0.812119,
		0.030272, 0.832467, 0.553247,
		-0.969793, 0.158494, -0.185421,
		27.856123, 36.939831, 35.158779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225838, 37.086288, 35.890812>,  <28.534977, 36.828888, 35.288574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225838, 37.086288, 35.890812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.916988, 36.953892, 35.673824>,  <27.731678, 36.874454, 35.543633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.916988, 36.953892, 35.673824>,  <28.225838, 37.086288, 35.890812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916988, 36.953892, 35.673824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279981, -0.589138, 0.757976,
		-0.570469, 0.737132, 0.362217,
		-0.772124, -0.330988, -0.542468,
		27.685350, 36.854595, 35.511086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966179, 37.364899, 35.959969>,  <28.225838, 37.086288, 35.890812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966179, 37.364899, 35.959969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150213, 37.342079, 36.314384>,  <29.260633, 37.328388, 36.527035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150213, 37.342079, 36.314384>,  <28.966179, 37.364899, 35.959969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150213, 37.342079, 36.314384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319283, 0.941807, -0.105154,
		-0.828482, 0.331277, 0.451524,
		0.460083, -0.057045, 0.886041,
		29.288239, 37.324966, 36.580196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544743, 37.708618, 36.589558>,  <28.966179, 37.364899, 35.959969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544743, 37.708618, 36.589558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944386, 37.699066, 36.603512>,  <29.184172, 37.693336, 36.611885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944386, 37.699066, 36.603512>,  <28.544743, 37.708618, 36.589558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944386, 37.699066, 36.603512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024593, 0.999492, -0.020272,
		-0.034381, 0.021112, 0.999186,
		0.999106, -0.023876, 0.034883,
		29.244118, 37.691902, 36.613976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779278, 38.070877, 37.260395>,  <28.544743, 37.708618, 36.589558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779278, 38.070877, 37.260395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069681, 38.082161, 36.985554>,  <29.243923, 38.088932, 36.820648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069681, 38.082161, 36.985554>,  <28.779278, 38.070877, 37.260395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069681, 38.082161, 36.985554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052442, 0.993978, 0.096214,
		0.685682, -0.105885, 0.720158,
		0.726009, 0.028205, -0.687106,
		29.287483, 38.090622, 36.779423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233139, 38.511276, 37.453846>,  <28.779278, 38.070877, 37.260395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233139, 38.511276, 37.453846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343611, 38.534367, 37.070099>,  <29.409893, 38.548222, 36.839851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343611, 38.534367, 37.070099>,  <29.233139, 38.511276, 37.453846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343611, 38.534367, 37.070099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101787, 0.994338, 0.030525,
		0.955701, 0.089221, 0.280492,
		0.276180, 0.057723, -0.959371,
		29.426464, 38.551685, 36.782288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626425, 39.127171, 37.391716>,  <29.233139, 38.511276, 37.453846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626425, 39.127171, 37.391716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530863, 39.049995, 37.011044>,  <29.473526, 39.003689, 36.782639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530863, 39.049995, 37.011044>,  <29.626425, 39.127171, 37.391716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530863, 39.049995, 37.011044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050503, 0.981205, -0.186244,
		0.969729, 0.003568, -0.244158,
		-0.238904, -0.192936, -0.951683,
		29.459192, 38.992115, 36.725540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060125, 39.574909, 37.037895>,  <29.626425, 39.127171, 37.391716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060125, 39.574909, 37.037895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763130, 39.492447, 36.782955>,  <29.584934, 39.442970, 36.629993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.763130, 39.492447, 36.782955>,  <30.060125, 39.574909, 37.037895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763130, 39.492447, 36.782955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067776, 0.969700, -0.234708,
		0.666423, -0.131071, -0.733962,
		-0.742487, -0.206160, -0.637348,
		29.540384, 39.430599, 36.591751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097452, 40.163906, 36.442043>,  <30.060125, 39.574909, 37.037895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097452, 40.163906, 36.442043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738897, 39.996395, 36.383926>,  <29.523764, 39.895889, 36.349056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738897, 39.996395, 36.383926>,  <30.097452, 40.163906, 36.442043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738897, 39.996395, 36.383926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296220, 0.809772, -0.506481,
		0.329758, -0.410966, -0.849922,
		-0.896389, -0.418780, -0.145292,
		29.469980, 39.870762, 36.340340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022917, 40.208992, 35.705864>,  <30.097452, 40.163906, 36.442043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022917, 40.208992, 35.705864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659229, 40.165520, 35.866615>,  <29.441017, 40.139435, 35.963066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659229, 40.165520, 35.866615>,  <30.022917, 40.208992, 35.705864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659229, 40.165520, 35.866615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367427, 0.663367, -0.651875,
		-0.195745, -0.740359, -0.643080,
		-0.909220, -0.108684, 0.401879,
		29.386463, 40.132915, 35.987179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630814, 40.205807, 35.176250>,  <30.022917, 40.208992, 35.705864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630814, 40.205807, 35.176250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366289, 40.291458, 35.463810>,  <29.207575, 40.342850, 35.636345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366289, 40.291458, 35.463810>,  <29.630814, 40.205807, 35.176250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366289, 40.291458, 35.463810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413931, 0.695083, -0.587810,
		-0.625565, -0.686299, -0.371029,
		-0.661309, 0.214133, 0.718901,
		29.167896, 40.355698, 35.679482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002621, 40.292675, 34.799812>,  <29.630814, 40.205807, 35.176250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002621, 40.292675, 34.799812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923628, 40.472191, 35.148430>,  <28.876232, 40.579903, 35.357601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923628, 40.472191, 35.148430>,  <29.002621, 40.292675, 34.799812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923628, 40.472191, 35.148430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405027, 0.772266, -0.489448,
		-0.892723, -0.449655, 0.029265,
		-0.197482, 0.448794, 0.871542,
		28.864384, 40.606831, 35.409893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255270, 40.509434, 34.891087>,  <29.002621, 40.292675, 34.799812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255270, 40.509434, 34.891087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477264, 40.762798, 35.106781>,  <28.610462, 40.914818, 35.236198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477264, 40.762798, 35.106781>,  <28.255270, 40.509434, 34.891087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477264, 40.762798, 35.106781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478597, 0.773333, -0.415813,
		-0.680393, -0.027308, 0.732339,
		0.554987, 0.633411, 0.539240,
		28.643761, 40.952820, 35.268555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727446, 41.000793, 35.197723>,  <28.255270, 40.509434, 34.891087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727446, 41.000793, 35.197723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.075195, 41.193882, 35.240005>,  <28.283844, 41.309734, 35.265373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.075195, 41.193882, 35.240005>,  <27.727446, 41.000793, 35.197723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075195, 41.193882, 35.240005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385742, 0.796628, -0.465390,
		-0.308862, 0.363822, 0.878771,
		0.869372, 0.482720, 0.105707,
		28.336006, 41.338699, 35.271717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612661, 41.623302, 35.413391>,  <27.727446, 41.000793, 35.197723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612661, 41.623302, 35.413391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983431, 41.682705, 35.275547>,  <28.205893, 41.718346, 35.192841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983431, 41.682705, 35.275547>,  <27.612661, 41.623302, 35.413391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983431, 41.682705, 35.275547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333099, 0.748494, -0.573412,
		0.172781, 0.646299, 0.743266,
		0.926926, 0.148506, -0.344607,
		28.261509, 41.727257, 35.172165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576422, 42.305447, 35.220943>,  <27.612661, 41.623302, 35.413391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576422, 42.305447, 35.220943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.904669, 42.176884, 35.031933>,  <28.101618, 42.099747, 34.918526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.904669, 42.176884, 35.031933>,  <27.576422, 42.305447, 35.220943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904669, 42.176884, 35.031933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308573, 0.446740, -0.839765,
		0.481005, 0.834936, 0.267425,
		0.820619, -0.321411, -0.472524,
		28.150854, 42.080460, 34.890175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836365, 42.878941, 34.828312>,  <27.576422, 42.305447, 35.220943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836365, 42.878941, 34.828312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982172, 42.549034, 34.655388>,  <28.069656, 42.351089, 34.551636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982172, 42.549034, 34.655388>,  <27.836365, 42.878941, 34.828312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982172, 42.549034, 34.655388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146168, 0.407814, -0.901289,
		0.919653, 0.391725, 0.028101,
		0.364517, -0.824766, -0.432305,
		28.091528, 42.301605, 34.525696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273876, 43.155949, 34.339848>,  <27.836365, 42.878941, 34.828312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273876, 43.155949, 34.339848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179636, 42.788311, 34.213512>,  <28.123091, 42.567726, 34.137711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179636, 42.788311, 34.213512>,  <28.273876, 43.155949, 34.339848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179636, 42.788311, 34.213512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110455, 0.348206, -0.930888,
		0.965553, -0.184433, -0.183556,
		-0.235602, -0.919096, -0.315839,
		28.108955, 42.512581, 34.118759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613922, 43.192337, 33.698204>,  <28.273876, 43.155949, 34.339848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613922, 43.192337, 33.698204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368902, 42.876209, 33.692879>,  <28.221889, 42.686531, 33.689686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368902, 42.876209, 33.692879>,  <28.613922, 43.192337, 33.698204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368902, 42.876209, 33.692879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099947, 0.094148, -0.990528,
		0.784086, -0.605420, -0.136661,
		-0.612552, -0.790318, -0.013310,
		28.185137, 42.639114, 33.688885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964418, 42.713394, 33.252102>,  <28.613922, 43.192337, 33.698204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964418, 42.713394, 33.252102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574039, 42.627060, 33.264389>,  <28.339813, 42.575260, 33.271763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574039, 42.627060, 33.264389>,  <28.964418, 42.713394, 33.252102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574039, 42.627060, 33.264389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048834, 0.079105, -0.995669,
		0.212474, -0.973219, -0.087743,
		-0.975946, -0.215839, 0.030719,
		28.281256, 42.562309, 33.273605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897680, 42.390591, 32.654282>,  <28.964418, 42.713394, 33.252102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897680, 42.390591, 32.654282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523365, 42.476074, 32.766441>,  <28.298775, 42.527367, 32.833736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523365, 42.476074, 32.766441>,  <28.897680, 42.390591, 32.654282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523365, 42.476074, 32.766441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264815, 0.098969, -0.959207,
		-0.232747, -0.971870, -0.036020,
		-0.935789, 0.213714, 0.280400,
		28.242628, 42.540188, 32.850563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413637, 41.845028, 32.379387>,  <28.897680, 42.390591, 32.654282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413637, 41.845028, 32.379387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236959, 42.199982, 32.432240>,  <28.130953, 42.412952, 32.463951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.236959, 42.199982, 32.432240>,  <28.413637, 41.845028, 32.379387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236959, 42.199982, 32.432240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191925, 0.050404, -0.980114,
		-0.876396, -0.458270, 0.148048,
		-0.441694, 0.887383, 0.132127,
		28.104450, 42.466198, 32.471878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766914, 41.795143, 31.981569>,  <28.413637, 41.845028, 32.379387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766914, 41.795143, 31.981569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.790321, 42.190151, 32.040051>,  <27.804365, 42.427158, 32.075138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.790321, 42.190151, 32.040051>,  <27.766914, 41.795143, 31.981569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790321, 42.190151, 32.040051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305690, 0.157144, -0.939074,
		-0.950331, 0.010260, 0.311071,
		0.058518, 0.987523, 0.146202,
		27.807877, 42.486408, 32.083912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425224, 42.070442, 31.441683>,  <27.766914, 41.795143, 31.981569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425224, 42.070442, 31.441683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589457, 42.401802, 31.594093>,  <27.687996, 42.600616, 31.685539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589457, 42.401802, 31.594093>,  <27.425224, 42.070442, 31.441683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589457, 42.401802, 31.594093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365478, 0.532348, -0.763565,
		-0.835373, 0.174251, 0.521334,
		0.410583, 0.828397, 0.381024,
		27.712631, 42.650322, 31.708401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840261, 42.617424, 31.474718>,  <27.425224, 42.070442, 31.441683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840261, 42.617424, 31.474718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208458, 42.772533, 31.455427>,  <27.429377, 42.865601, 31.443853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208458, 42.772533, 31.455427>,  <26.840261, 42.617424, 31.474718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208458, 42.772533, 31.455427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326240, 0.694688, -0.641074,
		-0.215093, 0.605836, 0.765962,
		0.920490, 0.387778, -0.048225,
		27.484606, 42.888866, 31.440960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880690, 43.326588, 31.515085>,  <26.840261, 42.617424, 31.474718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880690, 43.326588, 31.515085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224230, 43.236519, 31.331055>,  <27.430355, 43.182480, 31.220636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224230, 43.236519, 31.331055>,  <26.880690, 43.326588, 31.515085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224230, 43.236519, 31.331055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250989, 0.597983, -0.761197,
		0.446518, 0.769230, 0.457063,
		0.858852, -0.225170, -0.460078,
		27.481886, 43.168968, 31.193031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.903362, 38.588131, 47.316509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.602005, 38.325142, 47.311985>,  <41.421192, 38.167347, 47.309273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.602005, 38.325142, 47.311985>,  <41.903362, 38.588131, 47.316509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602005, 38.325142, 47.311985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270679, 0.294406, 0.916547,
		-0.599275, 0.693581, -0.399768,
		-0.753394, -0.657473, -0.011307,
		41.375988, 38.127899, 47.308594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315765, 38.925575, 47.679195>,  <41.903362, 38.588131, 47.316509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315765, 38.925575, 47.679195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.214764, 38.539246, 47.702621>,  <41.154163, 38.307449, 47.716679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.214764, 38.539246, 47.702621>,  <41.315765, 38.925575, 47.679195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214764, 38.539246, 47.702621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291739, 0.133704, 0.947107,
		-0.922567, 0.222061, -0.315529,
		-0.252503, -0.965822, 0.058567,
		41.139011, 38.249500, 47.720192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757633, 38.819950, 48.201569>,  <41.315765, 38.925575, 47.679195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757633, 38.819950, 48.201569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.904980, 38.453590, 48.137775>,  <40.993389, 38.233776, 48.099499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.904980, 38.453590, 48.137775>,  <40.757633, 38.819950, 48.201569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904980, 38.453590, 48.137775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090977, -0.206239, 0.974263,
		-0.925219, -0.344375, -0.159297,
		0.368365, -0.915899, -0.159486,
		41.015488, 38.178822, 48.089931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257076, 38.331249, 48.462982>,  <40.757633, 38.819950, 48.201569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257076, 38.331249, 48.462982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.638931, 38.214203, 48.485046>,  <40.868046, 38.143974, 48.498283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.638931, 38.214203, 48.485046>,  <40.257076, 38.331249, 48.462982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638931, 38.214203, 48.485046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118167, -0.202251, 0.972178,
		-0.273326, -0.934594, -0.227655,
		0.954636, -0.292623, 0.055158,
		40.925323, 38.126415, 48.501595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167198, 37.977898, 49.028915>,  <40.257076, 38.331249, 48.462982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167198, 37.977898, 49.028915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.566006, 37.992558, 49.001740>,  <40.805290, 38.001354, 48.985432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.566006, 37.992558, 49.001740>,  <40.167198, 37.977898, 49.028915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566006, 37.992558, 49.001740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073397, -0.177186, 0.981437,
		0.023935, -0.983495, -0.179347,
		0.997015, 0.036654, -0.067944,
		40.865112, 38.003555, 48.981358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410812, 37.435459, 49.381756>,  <40.167198, 37.977898, 49.028915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410812, 37.435459, 49.381756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.764168, 37.622498, 49.369225>,  <40.976181, 37.734722, 49.361706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.764168, 37.622498, 49.369225>,  <40.410812, 37.435459, 49.381756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764168, 37.622498, 49.369225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185645, -0.287770, 0.939534,
		0.430309, -0.835787, -0.341019,
		0.883386, 0.467598, -0.031329,
		41.029182, 37.762775, 49.359825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967243, 36.975060, 49.541759>,  <40.410812, 37.435459, 49.381756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967243, 36.975060, 49.541759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.066986, 37.352200, 49.630177>,  <41.126831, 37.578484, 49.683228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.066986, 37.352200, 49.630177>,  <40.967243, 36.975060, 49.541759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066986, 37.352200, 49.630177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275445, -0.287877, 0.917201,
		0.928414, -0.167823, -0.331486,
		0.249355, 0.942848, 0.221042,
		41.141792, 37.635056, 49.696487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472023, 36.933807, 49.997612>,  <40.967243, 36.975060, 49.541759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472023, 36.933807, 49.997612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.358261, 37.310341, 50.070286>,  <41.290005, 37.536263, 50.113892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.358261, 37.310341, 50.070286>,  <41.472023, 36.933807, 49.997612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358261, 37.310341, 50.070286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031048, -0.198454, 0.979618,
		0.958202, 0.272964, 0.085667,
		-0.284401, 0.941333, 0.181684,
		41.272942, 37.592739, 50.124790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458595, 36.907333, 50.662548>,  <41.472023, 36.933807, 49.997612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458595, 36.907333, 50.662548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.301582, 37.268421, 50.592106>,  <41.207375, 37.485073, 50.549839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.301582, 37.268421, 50.592106>,  <41.458595, 36.907333, 50.662548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301582, 37.268421, 50.592106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281171, 0.064526, 0.957486,
		0.875705, 0.425363, 0.228490,
		-0.392536, 0.902719, -0.176106,
		41.183823, 37.539238, 50.539272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762383, 37.408554, 51.187454>,  <41.458595, 36.907333, 50.662548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762383, 37.408554, 51.187454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.403927, 37.535591, 51.063473>,  <41.188854, 37.611813, 50.989082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.403927, 37.535591, 51.063473>,  <41.762383, 37.408554, 51.187454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403927, 37.535591, 51.063473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318034, 0.027506, 0.947680,
		0.309501, 0.947829, 0.076355,
		-0.896138, 0.317591, -0.309955,
		41.135086, 37.630867, 50.970486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605194, 38.008129, 51.666687>,  <41.762383, 37.408554, 51.187454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605194, 38.008129, 51.666687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.254616, 37.885113, 51.518490>,  <41.044270, 37.811302, 51.429573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.254616, 37.885113, 51.518490>,  <41.605194, 38.008129, 51.666687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254616, 37.885113, 51.518490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332577, -0.169761, 0.927671,
		-0.348187, 0.936271, 0.046507,
		-0.876446, -0.307536, -0.370491,
		40.991680, 37.792850, 51.407341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012585, 38.387421, 51.980740>,  <41.605194, 38.008129, 51.666687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012585, 38.387421, 51.980740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.844944, 38.057629, 51.828640>,  <40.744358, 37.859753, 51.737381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.844944, 38.057629, 51.828640>,  <41.012585, 38.387421, 51.980740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844944, 38.057629, 51.828640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316033, -0.260142, 0.912387,
		-0.851161, 0.502556, -0.151536,
		-0.419104, -0.824478, -0.380247,
		40.719212, 37.810284, 51.714565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514179, 38.241043, 52.410976>,  <41.012585, 38.387421, 51.980740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514179, 38.241043, 52.410976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.608276, 37.888134, 52.247875>,  <40.664734, 37.676388, 52.150017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.608276, 37.888134, 52.247875>,  <40.514179, 38.241043, 52.410976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608276, 37.888134, 52.247875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138938, -0.445741, 0.884314,
		-0.961956, -0.151373, -0.227437,
		0.235239, -0.882271, -0.407751,
		40.678848, 37.623451, 52.125549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049129, 37.803349, 52.652508>,  <40.514179, 38.241043, 52.410976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049129, 37.803349, 52.652508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345848, 37.558693, 52.542496>,  <40.523880, 37.411900, 52.476490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345848, 37.558693, 52.542496>,  <40.049129, 37.803349, 52.652508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345848, 37.558693, 52.542496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165633, -0.564496, 0.808647,
		-0.649850, -0.554297, -0.520048,
		0.741796, -0.611637, -0.275028,
		40.568386, 37.375202, 52.459988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485424, 38.234196, 52.922211>,  <40.049129, 37.803349, 52.652508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485424, 38.234196, 52.922211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275578, 38.569256, 52.983021>,  <39.149670, 38.770294, 53.019508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275578, 38.569256, 52.983021>,  <39.485424, 38.234196, 52.922211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275578, 38.569256, 52.983021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144981, 0.088060, -0.985508,
		-0.838903, -0.539055, 0.075247,
		-0.524617, 0.837655, 0.152027,
		39.118191, 38.820553, 53.028629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977089, 38.197517, 52.363579>,  <39.485424, 38.234196, 52.922211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977089, 38.197517, 52.363579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949760, 38.572308, 52.500637>,  <38.933365, 38.797184, 52.582870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949760, 38.572308, 52.500637>,  <38.977089, 38.197517, 52.363579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949760, 38.572308, 52.500637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251194, 0.316229, -0.914823,
		-0.965523, -0.148571, 0.213758,
		-0.068320, 0.936977, 0.342646,
		38.929264, 38.853401, 52.603432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316212, 38.422104, 52.098160>,  <38.977089, 38.197517, 52.363579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316212, 38.422104, 52.098160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.535019, 38.748226, 52.174107>,  <38.666302, 38.943901, 52.219677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.535019, 38.748226, 52.174107>,  <38.316212, 38.422104, 52.098160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535019, 38.748226, 52.174107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275749, 0.389646, -0.878714,
		-0.790401, 0.428316, 0.437963,
		0.547018, 0.815304, 0.189869,
		38.699123, 38.992817, 52.231068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878620, 39.049206, 51.825001>,  <38.316212, 38.422104, 52.098160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878620, 39.049206, 51.825001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.255119, 39.180691, 51.856007>,  <38.481018, 39.259583, 51.874611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.255119, 39.180691, 51.856007>,  <37.878620, 39.049206, 51.825001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255119, 39.180691, 51.856007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076887, 0.432041, -0.898571,
		-0.328860, 0.839814, 0.431930,
		0.941244, 0.328714, 0.077510,
		38.537491, 39.279305, 51.879261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880207, 39.662865, 51.435276>,  <37.878620, 39.049206, 51.825001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880207, 39.662865, 51.435276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272923, 39.590706, 51.459099>,  <38.508553, 39.547409, 51.473392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272923, 39.590706, 51.459099>,  <37.880207, 39.662865, 51.435276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272923, 39.590706, 51.459099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149776, 0.542157, -0.826821,
		0.116867, 0.820684, 0.559303,
		0.981789, -0.180398, 0.059559,
		38.567459, 39.536587, 51.476967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189270, 40.265888, 51.346077>,  <37.880207, 39.662865, 51.435276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189270, 40.265888, 51.346077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451752, 39.980217, 51.248638>,  <38.609241, 39.808815, 51.190174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451752, 39.980217, 51.248638>,  <38.189270, 40.265888, 51.346077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451752, 39.980217, 51.248638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190434, 0.469110, -0.862363,
		0.730157, 0.519499, 0.443837,
		0.656205, -0.714182, -0.243594,
		38.648613, 39.765961, 51.175560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623184, 40.635349, 50.946644>,  <38.189270, 40.265888, 51.346077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623184, 40.635349, 50.946644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.714035, 40.256313, 50.856762>,  <38.768543, 40.028893, 50.802834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.714035, 40.256313, 50.856762>,  <38.623184, 40.635349, 50.946644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714035, 40.256313, 50.856762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216876, 0.274151, -0.936913,
		0.949410, 0.164062, 0.267775,
		0.227123, -0.947589, -0.224701,
		38.782173, 39.972038, 50.789352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179836, 40.667316, 50.470932>,  <38.623184, 40.635349, 50.946644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179836, 40.667316, 50.470932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.034946, 40.298878, 50.413841>,  <38.948013, 40.077812, 50.379589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.034946, 40.298878, 50.413841>,  <39.179836, 40.667316, 50.470932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034946, 40.298878, 50.413841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210707, 0.068241, -0.975164,
		0.907964, -0.383297, 0.169364,
		-0.362220, -0.921101, -0.142724,
		38.926281, 40.022549, 50.371025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721481, 40.223816, 50.071384>,  <39.179836, 40.667316, 50.470932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721481, 40.223816, 50.071384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.362453, 40.055393, 50.019100>,  <39.147038, 39.954338, 49.987728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.362453, 40.055393, 50.019100>,  <39.721481, 40.223816, 50.071384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362453, 40.055393, 50.019100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064696, 0.167477, -0.983751,
		0.436110, -0.891437, -0.123080,
		-0.897565, -0.421061, -0.130710,
		39.093185, 39.929073, 49.979889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762203, 39.746666, 49.422546>,  <39.721481, 40.223816, 50.071384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762203, 39.746666, 49.422546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.372997, 39.793804, 49.501904>,  <39.139473, 39.822086, 49.549519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.372997, 39.793804, 49.501904>,  <39.762203, 39.746666, 49.422546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372997, 39.793804, 49.501904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185348, 0.112959, -0.976159,
		-0.137452, -0.986586, -0.088067,
		-0.973012, 0.117852, 0.198388,
		39.081093, 39.829159, 49.561420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496346, 39.316360, 49.042202>,  <39.762203, 39.746666, 49.422546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496346, 39.316360, 49.042202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207726, 39.582142, 49.120045>,  <39.034554, 39.741611, 49.166752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207726, 39.582142, 49.120045>,  <39.496346, 39.316360, 49.042202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207726, 39.582142, 49.120045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210403, 0.057356, -0.975931,
		-0.659621, -0.745127, 0.098417,
		-0.721547, 0.664452, 0.194610,
		38.991261, 39.781479, 49.178429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081173, 39.239220, 48.447239>,  <39.496346, 39.316360, 49.042202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081173, 39.239220, 48.447239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955734, 39.576923, 48.621086>,  <38.880470, 39.779545, 48.725395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955734, 39.576923, 48.621086>,  <39.081173, 39.239220, 48.447239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955734, 39.576923, 48.621086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473938, 0.257452, -0.842082,
		-0.822825, -0.470053, 0.319389,
		-0.313596, 0.844256, 0.434614,
		38.861656, 39.830200, 48.751469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383400, 39.336254, 48.321045>,  <39.081173, 39.239220, 48.447239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383400, 39.336254, 48.321045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.527187, 39.706177, 48.370857>,  <38.613461, 39.928131, 48.400745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.527187, 39.706177, 48.370857>,  <38.383400, 39.336254, 48.321045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527187, 39.706177, 48.370857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344681, 0.255608, -0.903249,
		-0.867165, 0.281767, 0.410648,
		0.359471, 0.924809, 0.124535,
		38.635029, 39.983620, 48.408218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794521, 39.874523, 48.116425>,  <38.383400, 39.336254, 48.321045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794521, 39.874523, 48.116425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140999, 40.072628, 48.089809>,  <38.348885, 40.191490, 48.073841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140999, 40.072628, 48.089809>,  <37.794521, 39.874523, 48.116425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140999, 40.072628, 48.089809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222217, 0.262506, -0.938994,
		-0.447580, 0.828136, 0.337436,
		0.866194, 0.495259, -0.066534,
		38.400856, 40.221207, 48.069851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129444, 39.883270, 48.358204>,  <37.794521, 39.874523, 48.116425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129444, 39.883270, 48.358204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741676, 39.849205, 48.266144>,  <36.509014, 39.828766, 48.210907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741676, 39.849205, 48.266144>,  <37.129444, 39.883270, 48.358204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741676, 39.849205, 48.266144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210163, -0.196126, 0.957792,
		-0.126708, 0.976874, 0.172230,
		-0.969421, -0.085164, -0.230153,
		36.450851, 39.823654, 48.197098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615520, 40.435429, 48.708908>,  <37.129444, 39.883270, 48.358204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615520, 40.435429, 48.708908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.369526, 40.129566, 48.631866>,  <36.221928, 39.946049, 48.585640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.369526, 40.129566, 48.631866>,  <36.615520, 40.435429, 48.708908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369526, 40.129566, 48.631866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299359, 0.000431, 0.954140,
		-0.729502, 0.644443, -0.229171,
		-0.614988, -0.764652, -0.192606,
		36.185028, 39.900169, 48.574085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038658, 40.676777, 49.152409>,  <36.615520, 40.435429, 48.708908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038658, 40.676777, 49.152409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009743, 40.288708, 49.059853>,  <35.992393, 40.055866, 49.004318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009743, 40.288708, 49.059853>,  <36.038658, 40.676777, 49.152409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009743, 40.288708, 49.059853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270355, -0.204248, 0.940846,
		-0.960043, 0.130569, -0.247526,
		-0.072289, -0.970172, -0.231387,
		35.988056, 39.997658, 48.990437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482491, 40.408363, 49.508717>,  <36.038658, 40.676777, 49.152409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482491, 40.408363, 49.508717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680889, 40.068905, 49.435192>,  <35.799927, 39.865231, 49.391079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680889, 40.068905, 49.435192>,  <35.482491, 40.408363, 49.508717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680889, 40.068905, 49.435192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177096, -0.306099, 0.935382,
		-0.850074, -0.431393, -0.302116,
		0.495995, -0.848648, -0.183810,
		35.829689, 39.814312, 49.380051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035976, 39.921700, 49.773861>,  <35.482491, 40.408363, 49.508717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035976, 39.921700, 49.773861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414574, 39.792652, 49.777298>,  <35.641731, 39.715221, 49.779362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414574, 39.792652, 49.777298>,  <35.035976, 39.921700, 49.773861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414574, 39.792652, 49.777298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116281, -0.316053, 0.941589,
		-0.301056, -0.892204, -0.336655,
		0.946491, -0.322618, 0.008597,
		35.698521, 39.695866, 49.779877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057148, 39.171280, 50.149097>,  <35.035976, 39.921700, 49.773861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057148, 39.171280, 50.149097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431427, 39.311405, 50.165836>,  <35.655994, 39.395481, 50.175880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431427, 39.311405, 50.165836>,  <35.057148, 39.171280, 50.149097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431427, 39.311405, 50.165836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058615, -0.271320, 0.960703,
		0.347897, -0.896475, -0.274407,
		0.935698, 0.350311, 0.041844,
		35.712135, 39.416500, 50.178391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430069, 38.690666, 50.567917>,  <35.057148, 39.171280, 50.149097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430069, 38.690666, 50.567917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653965, 39.021420, 50.589687>,  <35.788303, 39.219872, 50.602749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653965, 39.021420, 50.589687>,  <35.430069, 38.690666, 50.567917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653965, 39.021420, 50.589687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094963, -0.129250, 0.987054,
		0.823210, -0.547324, -0.150870,
		0.559738, 0.826880, 0.054425,
		35.821888, 39.269485, 50.606014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684452, 37.970146, 50.687149>,  <35.430069, 38.690666, 50.567917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684452, 37.970146, 50.687149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333832, 37.800354, 50.777905>,  <35.123459, 37.698479, 50.832359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333832, 37.800354, 50.777905>,  <35.684452, 37.970146, 50.687149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333832, 37.800354, 50.777905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265832, 0.033976, -0.963421,
		0.401248, -0.904798, -0.142623,
		-0.876546, -0.424485, 0.226891,
		35.070869, 37.673008, 50.845970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460728, 37.498318, 50.191521>,  <35.684452, 37.970146, 50.687149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460728, 37.498318, 50.191521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119137, 37.633804, 50.349506>,  <34.914181, 37.715096, 50.444298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119137, 37.633804, 50.349506>,  <35.460728, 37.498318, 50.191521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119137, 37.633804, 50.349506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444122, -0.079064, -0.892471,
		-0.271068, -0.937561, 0.217950,
		-0.853978, 0.338717, 0.394960,
		34.862942, 37.735420, 50.467995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054398, 37.006905, 50.257698>,  <35.460728, 37.498318, 50.191521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054398, 37.006905, 50.257698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.785175, 37.301773, 50.281601>,  <34.623642, 37.478695, 50.295944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.785175, 37.301773, 50.281601>,  <35.054398, 37.006905, 50.257698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785175, 37.301773, 50.281601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379919, -0.275282, -0.883109,
		-0.634555, -0.617084, 0.465346,
		-0.673054, 0.737175, 0.059760,
		34.583260, 37.522926, 50.299530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488350, 36.714874, 49.974224>,  <35.054398, 37.006905, 50.257698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488350, 36.714874, 49.974224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406689, 37.106403, 49.968300>,  <34.357693, 37.341320, 49.964745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406689, 37.106403, 49.968300>,  <34.488350, 36.714874, 49.974224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406689, 37.106403, 49.968300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493233, -0.115915, -0.862139,
		-0.845602, -0.168705, 0.506455,
		-0.204153, 0.978827, -0.014807,
		34.345444, 37.400051, 49.963860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665054, 36.847160, 49.783638>,  <34.488350, 36.714874, 49.974224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665054, 36.847160, 49.783638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910877, 37.143700, 49.675770>,  <34.058369, 37.321625, 49.611050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910877, 37.143700, 49.675770>,  <33.665054, 36.847160, 49.783638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910877, 37.143700, 49.675770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328996, -0.069844, -0.941745,
		-0.716998, 0.667475, 0.200978,
		0.614554, 0.741350, -0.269675,
		34.095242, 37.366104, 49.594868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321342, 37.253574, 49.318230>,  <33.665054, 36.847160, 49.783638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321342, 37.253574, 49.318230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.703041, 37.355721, 49.255997>,  <33.932060, 37.417007, 49.218655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.703041, 37.355721, 49.255997>,  <33.321342, 37.253574, 49.318230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703041, 37.355721, 49.255997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166881, 0.023041, -0.985708,
		-0.248135, 0.966569, 0.064603,
		0.954243, 0.255369, -0.155585,
		33.989315, 37.432331, 49.209320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256580, 37.755722, 48.828613>,  <33.321342, 37.253574, 49.318230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256580, 37.755722, 48.828613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642323, 37.650669, 48.815720>,  <33.873768, 37.587639, 48.807983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642323, 37.650669, 48.815720>,  <33.256580, 37.755722, 48.828613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642323, 37.650669, 48.815720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034015, 0.243873, -0.969210,
		0.262404, 0.933569, 0.244115,
		0.964358, -0.262628, -0.032238,
		33.931629, 37.571880, 48.806049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.072708, 36.623829, 52.194710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.338230, 36.715511, 51.909943>,  <39.497543, 36.770519, 51.739082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.338230, 36.715511, 51.909943>,  <39.072708, 36.623829, 52.194710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338230, 36.715511, 51.909943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436897, -0.653745, -0.617850,
		-0.607027, 0.721167, -0.333821,
		0.663807, 0.229207, -0.711916,
		39.537373, 36.784275, 51.696369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642128, 36.726547, 51.637691>,  <39.072708, 36.623829, 52.194710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642128, 36.726547, 51.637691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.013039, 36.613243, 51.539776>,  <39.235584, 36.545261, 51.481026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.013039, 36.613243, 51.539776>,  <38.642128, 36.726547, 51.637691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013039, 36.613243, 51.539776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361490, -0.507380, -0.782234,
		0.097380, 0.813835, -0.572879,
		0.927277, -0.283264, -0.244785,
		39.291222, 36.528263, 51.466339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652233, 36.693027, 50.904308>,  <38.642128, 36.726547, 51.637691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652233, 36.693027, 50.904308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.987904, 36.497803, 51.000301>,  <39.189304, 36.380669, 51.057896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.987904, 36.497803, 51.000301>,  <38.652233, 36.693027, 50.904308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987904, 36.497803, 51.000301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053737, -0.513495, -0.856408,
		0.541205, 0.705778, -0.457138,
		0.839172, -0.488058, 0.239980,
		39.239655, 36.351387, 51.072296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131001, 36.931423, 50.472759>,  <38.652233, 36.693027, 50.904308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131001, 36.931423, 50.472759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.231609, 36.561249, 50.586121>,  <39.291973, 36.339146, 50.654137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.231609, 36.561249, 50.586121>,  <39.131001, 36.931423, 50.472759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231609, 36.561249, 50.586121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096964, -0.315434, -0.943981,
		0.962983, 0.209948, -0.169071,
		0.251518, -0.925431, 0.283400,
		39.307064, 36.283619, 50.671139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674084, 36.764633, 50.057579>,  <39.131001, 36.931423, 50.472759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674084, 36.764633, 50.057579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.491909, 36.425701, 50.166836>,  <39.382603, 36.222343, 50.232388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.491909, 36.425701, 50.166836>,  <39.674084, 36.764633, 50.057579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491909, 36.425701, 50.166836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088360, -0.348313, -0.933204,
		0.885871, -0.400883, 0.233506,
		-0.455439, -0.847332, 0.273138,
		39.355278, 36.171501, 50.248775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834808, 36.303963, 49.569202>,  <39.674084, 36.764633, 50.057579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834808, 36.303963, 49.569202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.545959, 36.096443, 49.752239>,  <39.372650, 35.971931, 49.862061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.545959, 36.096443, 49.752239>,  <39.834808, 36.303963, 49.569202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545959, 36.096443, 49.752239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374510, -0.262963, -0.889153,
		0.581618, -0.813451, -0.004402,
		-0.722124, -0.518795, 0.457589,
		39.329323, 35.940804, 49.889515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967239, 35.583225, 49.446953>,  <39.834808, 36.303963, 49.569202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967239, 35.583225, 49.446953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.583168, 35.604389, 49.556683>,  <39.352726, 35.617088, 49.622520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.583168, 35.604389, 49.556683>,  <39.967239, 35.583225, 49.446953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583168, 35.604389, 49.556683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261372, -0.516927, -0.815151,
		0.098675, -0.854393, 0.510173,
		-0.960181, 0.052910, 0.274322,
		39.295113, 35.620262, 49.638981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711281, 34.983330, 49.412663>,  <39.967239, 35.583225, 49.446953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711281, 34.983330, 49.412663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.360298, 35.174679, 49.398674>,  <39.149708, 35.289490, 49.390282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.360298, 35.174679, 49.398674>,  <39.711281, 34.983330, 49.412663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360298, 35.174679, 49.398674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240975, -0.502702, -0.830194,
		-0.414722, -0.720035, 0.556377,
		-0.877460, 0.478373, -0.034971,
		39.097061, 35.318192, 49.388184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206829, 34.468975, 49.148968>,  <39.711281, 34.983330, 49.412663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206829, 34.468975, 49.148968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.070755, 34.840034, 49.087334>,  <38.989109, 35.062672, 49.050354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.070755, 34.840034, 49.087334>,  <39.206829, 34.468975, 49.148968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070755, 34.840034, 49.087334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229423, -0.240780, -0.943075,
		-0.911941, -0.285473, 0.294734,
		-0.340189, 0.927648, -0.154083,
		38.968697, 35.118328, 49.041107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554474, 34.406071, 48.740623>,  <39.206829, 34.468975, 49.148968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554474, 34.406071, 48.740623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.716652, 34.768147, 48.689636>,  <38.813957, 34.985394, 48.659042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.716652, 34.768147, 48.689636>,  <38.554474, 34.406071, 48.740623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716652, 34.768147, 48.689636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022619, -0.129465, -0.991326,
		-0.913841, 0.404809, -0.032016,
		0.405443, 0.905190, -0.127467,
		38.838284, 35.039703, 48.651398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201271, 34.736221, 48.204056>,  <38.554474, 34.406071, 48.740623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201271, 34.736221, 48.204056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.558517, 34.915321, 48.221340>,  <38.772865, 35.022781, 48.231709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.558517, 34.915321, 48.221340>,  <38.201271, 34.736221, 48.204056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558517, 34.915321, 48.221340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085475, -0.074618, -0.993542,
		-0.441631, 0.891042, -0.104914,
		0.893116, 0.447746, 0.043208,
		38.826454, 35.049644, 48.234303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036732, 35.171097, 47.779716>,  <38.201271, 34.736221, 48.204056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036732, 35.171097, 47.779716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435917, 35.153683, 47.798370>,  <38.675426, 35.143234, 47.809563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435917, 35.153683, 47.798370>,  <38.036732, 35.171097, 47.779716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435917, 35.153683, 47.798370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056363, 0.259146, -0.964192,
		0.029890, 0.964856, 0.261072,
		0.997963, -0.043534, 0.046636,
		38.735306, 35.140621, 47.812363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542404, 35.709660, 47.697998>,  <38.036732, 35.171097, 47.779716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542404, 35.709660, 47.697998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.146221, 35.668713, 47.734894>,  <36.908512, 35.644146, 47.757030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.146221, 35.668713, 47.734894>,  <37.542404, 35.709660, 47.697998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146221, 35.668713, 47.734894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107478, -0.155068, 0.982040,
		-0.086224, 0.982586, 0.164591,
		-0.990461, -0.102366, 0.092236,
		36.849083, 35.638004, 47.762566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343578, 36.092037, 48.298710>,  <37.542404, 35.709660, 47.697998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343578, 36.092037, 48.298710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.016323, 35.866135, 48.255451>,  <36.819969, 35.730591, 48.229496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.016323, 35.866135, 48.255451>,  <37.343578, 36.092037, 48.298710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016323, 35.866135, 48.255451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084314, -0.068229, 0.994101,
		-0.568808, 0.822429, 0.008204,
		-0.818137, -0.564761, -0.108151,
		36.770882, 35.696705, 48.223007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833454, 36.363323, 48.714714>,  <37.343578, 36.092037, 48.298710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833454, 36.363323, 48.714714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.725708, 35.983025, 48.653370>,  <36.661060, 35.754845, 48.616562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.725708, 35.983025, 48.653370>,  <36.833454, 36.363323, 48.714714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725708, 35.983025, 48.653370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292102, -0.071087, 0.953742,
		-0.917670, 0.301704, -0.258567,
		-0.269367, -0.950748, -0.153362,
		36.644897, 35.697800, 48.607361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161072, 36.272961, 49.074398>,  <36.833454, 36.363323, 48.714714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161072, 36.272961, 49.074398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.308880, 35.906116, 49.014576>,  <36.397564, 35.686012, 48.978683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.308880, 35.906116, 49.014576>,  <36.161072, 36.272961, 49.074398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308880, 35.906116, 49.014576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223925, -0.244093, 0.943545,
		-0.901839, -0.315167, -0.295560,
		0.369518, -0.917109, -0.149559,
		36.419735, 35.630985, 48.969707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744133, 35.795341, 49.308781>,  <36.161072, 36.272961, 49.074398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744133, 35.795341, 49.308781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.066513, 35.559013, 49.323654>,  <36.259941, 35.417217, 49.332581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.066513, 35.559013, 49.323654>,  <35.744133, 35.795341, 49.308781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066513, 35.559013, 49.323654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316250, -0.376599, 0.870723,
		-0.500434, -0.713518, -0.490365,
		0.805948, -0.590817, 0.037187,
		36.308296, 35.381767, 49.334808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522263, 35.106709, 49.523540>,  <35.744133, 35.795341, 49.308781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522263, 35.106709, 49.523540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.913795, 35.116829, 49.604774>,  <36.148716, 35.122902, 49.653515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.913795, 35.116829, 49.604774>,  <35.522263, 35.106709, 49.523540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913795, 35.116829, 49.604774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171375, -0.441077, 0.880955,
		0.111867, -0.897113, -0.427405,
		0.978834, 0.025303, 0.203085,
		36.207447, 35.124420, 49.665699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665920, 34.502476, 49.915451>,  <35.522263, 35.106709, 49.523540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665920, 34.502476, 49.915451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.989212, 34.725815, 49.990303>,  <36.183186, 34.859818, 50.035213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.989212, 34.725815, 49.990303>,  <35.665920, 34.502476, 49.915451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989212, 34.725815, 49.990303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134386, -0.134500, 0.981759,
		0.573329, -0.818633, -0.033672,
		0.808229, 0.558346, 0.187126,
		36.231682, 34.893318, 50.046440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077854, 34.105225, 50.364494>,  <35.665920, 34.502476, 49.915451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077854, 34.105225, 50.364494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198242, 34.481731, 50.425739>,  <36.270473, 34.707634, 50.462486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198242, 34.481731, 50.425739>,  <36.077854, 34.105225, 50.364494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198242, 34.481731, 50.425739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046563, -0.145859, 0.988209,
		0.952497, -0.304549, -0.000071,
		0.300968, 0.941262, 0.153111,
		36.288532, 34.764111, 50.471672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592976, 34.094570, 50.868179>,  <36.077854, 34.105225, 50.364494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592976, 34.094570, 50.868179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.477734, 34.477173, 50.886482>,  <36.408588, 34.706734, 50.897465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.477734, 34.477173, 50.886482>,  <36.592976, 34.094570, 50.868179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477734, 34.477173, 50.886482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017144, -0.042623, 0.998944,
		0.957446, 0.288583, -0.004118,
		-0.288103, 0.956506, 0.045757,
		36.391304, 34.764126, 50.900208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031017, 34.343388, 51.476833>,  <36.592976, 34.094570, 50.868179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031017, 34.343388, 51.476833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.761906, 34.636269, 51.434418>,  <36.600437, 34.811996, 51.408966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.761906, 34.636269, 51.434418>,  <37.031017, 34.343388, 51.476833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761906, 34.636269, 51.434418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008495, 0.135676, 0.990717,
		0.739791, 0.667438, -0.085061,
		-0.672783, 0.732201, -0.106042,
		36.560070, 34.855930, 51.402607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270088, 34.948040, 51.789330>,  <37.031017, 34.343388, 51.476833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270088, 34.948040, 51.789330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.870602, 34.967525, 51.783657>,  <36.630909, 34.979218, 51.780254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.870602, 34.967525, 51.783657>,  <37.270088, 34.948040, 51.789330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870602, 34.967525, 51.783657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000460, 0.270900, 0.962607,
		0.050731, 0.961374, -0.270528,
		-0.998712, 0.048710, -0.014185,
		36.570988, 34.982140, 51.779400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143978, 35.481426, 52.260368>,  <37.270088, 34.948040, 51.789330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143978, 35.481426, 52.260368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.784199, 35.309177, 52.230564>,  <36.568329, 35.205826, 52.212681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.784199, 35.309177, 52.230564>,  <37.143978, 35.481426, 52.260368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784199, 35.309177, 52.230564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132167, 0.105533, 0.985593,
		-0.416558, 0.896340, -0.151836,
		-0.899450, -0.430625, -0.074506,
		36.514362, 35.179989, 52.208214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704716, 35.873238, 52.777550>,  <37.143978, 35.481426, 52.260368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704716, 35.873238, 52.777550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.522305, 35.528397, 52.689175>,  <36.412857, 35.321491, 52.636150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.522305, 35.528397, 52.689175>,  <36.704716, 35.873238, 52.777550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522305, 35.528397, 52.689175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333816, -0.064429, 0.940434,
		-0.824988, 0.502616, -0.258403,
		-0.456028, -0.862105, -0.220935,
		36.385494, 35.269764, 52.622894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040813, 35.985882, 52.813469>,  <36.704716, 35.873238, 52.777550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040813, 35.985882, 52.813469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.103180, 35.601315, 52.904121>,  <36.140602, 35.370575, 52.958515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.103180, 35.601315, 52.904121>,  <36.040813, 35.985882, 52.813469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103180, 35.601315, 52.904121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376799, 0.154199, 0.913370,
		-0.913078, -0.227808, -0.338219,
		0.155920, -0.961419, 0.226634,
		36.149956, 35.312889, 52.972111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442265, 36.146801, 53.295300>,  <36.040813, 35.985882, 52.813469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442265, 36.146801, 53.295300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.472839, 36.533531, 53.392788>,  <35.491184, 36.765572, 53.451279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.472839, 36.533531, 53.392788>,  <35.442265, 36.146801, 53.295300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472839, 36.533531, 53.392788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555953, 0.244237, -0.794521,
		-0.827691, -0.074762, 0.556181,
		0.076440, 0.966829, 0.243718,
		35.495770, 36.823582, 53.465904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759529, 36.433365, 53.272915>,  <35.442265, 36.146801, 53.295300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759529, 36.433365, 53.272915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032543, 36.723152, 53.234356>,  <35.196354, 36.897022, 53.211220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032543, 36.723152, 53.234356>,  <34.759529, 36.433365, 53.272915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032543, 36.723152, 53.234356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377411, 0.236436, -0.895354,
		-0.625861, 0.647495, 0.434797,
		0.682539, 0.724465, -0.096396,
		35.237305, 36.940491, 53.205437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442028, 37.079113, 53.217537>,  <34.759529, 36.433365, 53.272915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442028, 37.079113, 53.217537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780720, 37.205292, 53.046173>,  <34.983936, 37.280998, 52.943356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780720, 37.205292, 53.046173>,  <34.442028, 37.079113, 53.217537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780720, 37.205292, 53.046173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520354, 0.323343, -0.790367,
		-0.110797, 0.892155, 0.437931,
		0.846732, 0.315450, -0.428411,
		35.034740, 37.299927, 52.917648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497478, 37.803902, 53.057583>,  <34.442028, 37.079113, 53.217537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497478, 37.803902, 53.057583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724339, 37.611427, 52.790211>,  <34.860455, 37.495941, 52.629787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724339, 37.611427, 52.790211>,  <34.497478, 37.803902, 53.057583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724339, 37.611427, 52.790211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673507, 0.196162, -0.712677,
		0.474052, 0.854388, -0.212830,
		0.567153, -0.481188, -0.668427,
		34.894485, 37.467072, 52.589684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398357, 38.264759, 52.576126>,  <34.497478, 37.803902, 53.057583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398357, 38.264759, 52.576126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589993, 37.976017, 52.376366>,  <34.704971, 37.802773, 52.256512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.589993, 37.976017, 52.376366>,  <34.398357, 38.264759, 52.576126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589993, 37.976017, 52.376366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463549, 0.275070, -0.842294,
		0.745386, 0.635026, -0.202834,
		0.479085, -0.721858, -0.499399,
		34.733719, 37.759460, 52.226547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764328, 38.748280, 52.030819>,  <34.398357, 38.264759, 52.576126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764328, 38.748280, 52.030819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.675076, 38.359779, 51.997627>,  <34.621525, 38.126678, 51.977711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.675076, 38.359779, 51.997627>,  <34.764328, 38.748280, 52.030819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675076, 38.359779, 51.997627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664171, 0.213787, -0.716360,
		0.713505, -0.104728, -0.692779,
		-0.223130, -0.971251, -0.082980,
		34.608135, 38.068405, 51.972733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380867, 38.498001, 51.577534>,  <34.764328, 38.748280, 52.030819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380867, 38.498001, 51.577534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.299030, 38.123711, 51.692471>,  <35.249928, 37.899136, 51.761433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.299030, 38.123711, 51.692471>,  <35.380867, 38.498001, 51.577534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299030, 38.123711, 51.692471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671194, 0.079568, 0.736999,
		-0.712490, 0.343648, 0.611772,
		-0.204590, -0.935722, 0.287346,
		35.237652, 37.842995, 51.778675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958324, 38.573074, 51.026669>,  <35.380867, 38.498001, 51.577534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958324, 38.573074, 51.026669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.953861, 38.973049, 51.025982>,  <35.951183, 39.213036, 51.025570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.953861, 38.973049, 51.025982>,  <35.958324, 38.573074, 51.026669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953861, 38.973049, 51.025982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245117, 0.004404, 0.969484,
		0.969429, 0.010400, -0.245151,
		-0.011162, 0.999936, -0.001720,
		35.950512, 39.273029, 51.025467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494438, 38.710831, 51.465210>,  <35.958324, 38.573074, 51.026669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494438, 38.710831, 51.465210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300732, 39.058506, 51.425205>,  <36.184509, 39.267113, 51.401203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300732, 39.058506, 51.425205>,  <36.494438, 38.710831, 51.465210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300732, 39.058506, 51.425205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213956, 0.228485, 0.949746,
		0.848357, 0.438531, -0.296614,
		-0.484265, 0.869187, -0.100010,
		36.155453, 39.319263, 51.395203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915062, 39.214783, 51.689919>,  <36.494438, 38.710831, 51.465210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915062, 39.214783, 51.689919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.547611, 39.364117, 51.741692>,  <36.327141, 39.453716, 51.772755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.547611, 39.364117, 51.741692>,  <36.915062, 39.214783, 51.689919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547611, 39.364117, 51.741692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277607, 0.376683, 0.883767,
		0.281183, 0.847782, -0.449669,
		-0.918624, 0.373332, 0.129433,
		36.272022, 39.476116, 51.780521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926418, 39.960838, 51.901520>,  <36.915062, 39.214783, 51.689919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926418, 39.960838, 51.901520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.559658, 39.849762, 52.016186>,  <36.339600, 39.783115, 52.084988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.559658, 39.849762, 52.016186>,  <36.926418, 39.960838, 51.901520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559658, 39.849762, 52.016186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168176, 0.382565, 0.908494,
		-0.361946, 0.881212, -0.304074,
		-0.916903, -0.277688, 0.286667,
		36.284588, 39.766457, 52.102184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735554, 40.485592, 52.300549>,  <36.926418, 39.960838, 51.901520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735554, 40.485592, 52.300549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.492168, 40.191067, 52.418945>,  <36.346138, 40.014351, 52.489983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.492168, 40.191067, 52.418945>,  <36.735554, 40.485592, 52.300549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492168, 40.191067, 52.418945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201047, 0.217783, 0.955066,
		-0.767689, 0.640634, 0.015520,
		-0.608468, -0.736314, 0.295987,
		36.309628, 39.970173, 52.507740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279320, 40.761543, 52.806133>,  <36.735554, 40.485592, 52.300549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279320, 40.761543, 52.806133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259792, 40.366367, 52.864895>,  <36.248074, 40.129261, 52.900154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259792, 40.366367, 52.864895>,  <36.279320, 40.761543, 52.806133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259792, 40.366367, 52.864895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048397, 0.149251, 0.987614,
		-0.997634, 0.041109, -0.055100,
		-0.048823, -0.987945, 0.146909,
		36.245144, 40.069984, 52.908966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695694, 40.682133, 53.242741>,  <36.279320, 40.761543, 52.806133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695694, 40.682133, 53.242741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916016, 40.351444, 53.288609>,  <36.048210, 40.153030, 53.316128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916016, 40.351444, 53.288609>,  <35.695694, 40.682133, 53.242741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916016, 40.351444, 53.288609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048434, 0.105493, 0.993240,
		-0.833225, -0.552639, 0.018065,
		0.550809, -0.826717, 0.114666,
		36.081257, 40.103428, 53.323009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371555, 40.310722, 53.683712>,  <35.695694, 40.682133, 53.242741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371555, 40.310722, 53.683712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.732006, 40.140884, 53.718781>,  <35.948277, 40.038982, 53.739822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.732006, 40.140884, 53.718781>,  <35.371555, 40.310722, 53.683712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732006, 40.140884, 53.718781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049455, 0.100220, 0.993735,
		-0.430723, -0.899818, 0.069313,
		0.901128, -0.424597, 0.087668,
		36.002346, 40.013504, 53.745079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270794, 39.769749, 54.193203>,  <35.371555, 40.310722, 53.683712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270794, 39.769749, 54.193203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.656620, 39.875141, 54.187820>,  <35.888115, 39.938377, 54.184589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.656620, 39.875141, 54.187820>,  <35.270794, 39.769749, 54.193203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656620, 39.875141, 54.187820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021498, 0.129327, 0.991369,
		0.262952, -0.955955, 0.130409,
		0.964570, 0.263486, -0.013456,
		35.945992, 39.954185, 54.183784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.323822, 40.441936, 37.867966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696102, 40.295914, 37.877201>,  <35.919472, 40.208302, 37.882744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696102, 40.295914, 37.877201>,  <35.323822, 40.441936, 37.867966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696102, 40.295914, 37.877201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159454, -0.348103, 0.923796,
		-0.329192, -0.863461, -0.382189,
		0.930703, -0.365048, 0.023090,
		35.975311, 40.186398, 37.884129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439037, 39.716061, 37.968021>,  <35.323822, 40.441936, 37.867966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439037, 39.716061, 37.968021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702625, 39.971149, 38.127552>,  <35.860779, 40.124203, 38.223270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702625, 39.971149, 38.127552>,  <35.439037, 39.716061, 37.968021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702625, 39.971149, 38.127552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295237, -0.268386, 0.916954,
		0.691806, -0.721993, 0.011423,
		0.658968, 0.637727, 0.398830,
		35.900314, 40.162468, 38.247200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874546, 39.304256, 38.417645>,  <35.439037, 39.716061, 37.968021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874546, 39.304256, 38.417645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882027, 39.685806, 38.537498>,  <35.886517, 39.914734, 38.609409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882027, 39.685806, 38.537498>,  <35.874546, 39.304256, 38.417645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882027, 39.685806, 38.537498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278496, -0.282855, 0.917841,
		0.960255, -0.100613, 0.260359,
		0.018703, 0.953871, 0.299633,
		35.887638, 39.971966, 38.627388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249516, 39.214115, 38.966679>,  <35.874546, 39.304256, 38.417645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249516, 39.214115, 38.966679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067043, 39.565910, 39.020943>,  <35.957561, 39.776989, 39.053501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067043, 39.565910, 39.020943>,  <36.249516, 39.214115, 38.966679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067043, 39.565910, 39.020943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234617, -0.265918, 0.935009,
		0.858405, 0.394700, 0.327649,
		-0.456176, 0.879488, 0.135662,
		35.930191, 39.829758, 39.061642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529839, 39.563896, 39.554699>,  <36.249516, 39.214115, 38.966679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529839, 39.563896, 39.554699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171906, 39.735977, 39.507023>,  <35.957146, 39.839226, 39.478416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171906, 39.735977, 39.507023>,  <36.529839, 39.563896, 39.554699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171906, 39.735977, 39.507023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215210, -0.181812, 0.959494,
		0.391109, 0.884233, 0.255274,
		-0.894829, 0.430205, -0.119188,
		35.903458, 39.865040, 39.471268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489868, 40.130135, 39.920547>,  <36.529839, 39.563896, 39.554699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489868, 40.130135, 39.920547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102245, 40.040695, 39.878731>,  <35.869671, 39.987030, 39.853642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102245, 40.040695, 39.878731>,  <36.489868, 40.130135, 39.920547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102245, 40.040695, 39.878731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103482, -0.016504, 0.994494,
		-0.224096, 0.974541, -0.007146,
		-0.969057, -0.223602, -0.104546,
		35.811527, 39.973614, 39.847366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055550, 40.635143, 40.367706>,  <36.489868, 40.130135, 39.920547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055550, 40.635143, 40.367706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824326, 40.317356, 40.293217>,  <35.685593, 40.126686, 40.248524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824326, 40.317356, 40.293217>,  <36.055550, 40.635143, 40.367706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824326, 40.317356, 40.293217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327531, 0.016877, 0.944690,
		-0.747379, 0.607078, -0.269967,
		-0.578056, -0.794463, -0.186223,
		35.650909, 40.079018, 40.237350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466167, 40.785896, 40.611370>,  <36.055550, 40.635143, 40.367706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466167, 40.785896, 40.611370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452377, 40.386250, 40.601772>,  <35.444103, 40.146461, 40.596016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452377, 40.386250, 40.601772>,  <35.466167, 40.785896, 40.611370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452377, 40.386250, 40.601772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269350, -0.013829, 0.962943,
		-0.962425, 0.039660, -0.268636,
		-0.034476, -0.999117, -0.023992,
		35.442036, 40.086514, 40.594574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913307, 40.652290, 41.028938>,  <35.466167, 40.785896, 40.611370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913307, 40.652290, 41.028938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079933, 40.290245, 40.994904>,  <35.179909, 40.073017, 40.974483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079933, 40.290245, 40.994904>,  <34.913307, 40.652290, 41.028938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079933, 40.290245, 40.994904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177288, -0.172678, 0.968892,
		-0.891653, -0.388517, -0.232397,
		0.416561, -0.905117, -0.085090,
		35.204903, 40.018711, 40.969376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468784, 40.303768, 41.303032>,  <34.913307, 40.652290, 41.028938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468784, 40.303768, 41.303032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802715, 40.084511, 41.323418>,  <35.003075, 39.952957, 41.335648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802715, 40.084511, 41.323418>,  <34.468784, 40.303768, 41.303032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802715, 40.084511, 41.323418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144673, -0.129134, 0.981017,
		-0.531162, -0.826352, -0.187107,
		0.834828, -0.548148, 0.050960,
		35.053165, 39.920067, 41.338707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376831, 39.707195, 41.919163>,  <34.468784, 40.303768, 41.303032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376831, 39.707195, 41.919163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766827, 39.745338, 41.838863>,  <35.000824, 39.768227, 41.790684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766827, 39.745338, 41.838863>,  <34.376831, 39.707195, 41.919163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766827, 39.745338, 41.838863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218836, -0.254371, 0.942023,
		0.038768, -0.962394, -0.268878,
		0.974991, 0.095360, -0.200745,
		35.059322, 39.773945, 41.778641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761215, 39.051792, 42.202118>,  <34.376831, 39.707195, 41.919163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761215, 39.051792, 42.202118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012924, 39.361431, 42.174450>,  <35.163952, 39.547215, 42.157848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012924, 39.361431, 42.174450>,  <34.761215, 39.051792, 42.202118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012924, 39.361431, 42.174450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251046, -0.118235, 0.960727,
		0.735520, -0.621925, -0.268736,
		0.629274, 0.774099, -0.069168,
		35.201706, 39.593662, 42.153698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712883, 38.246857, 42.299225>,  <34.761215, 39.051792, 42.202118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712883, 38.246857, 42.299225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347469, 38.225487, 42.460522>,  <34.128220, 38.212666, 42.557301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347469, 38.225487, 42.460522>,  <34.712883, 38.246857, 42.299225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347469, 38.225487, 42.460522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360727, -0.351696, -0.863820,
		0.187971, -0.934588, 0.302012,
		-0.913533, -0.053429, 0.403240,
		34.073410, 38.209457, 42.581493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590492, 37.643723, 42.012814>,  <34.712883, 38.246857, 42.299225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590492, 37.643723, 42.012814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228683, 37.761124, 42.136555>,  <34.011597, 37.831566, 42.210800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228683, 37.761124, 42.136555>,  <34.590492, 37.643723, 42.012814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228683, 37.761124, 42.136555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399495, -0.329497, -0.855474,
		-0.149153, -0.897379, 0.415289,
		-0.904520, 0.293502, 0.309352,
		33.957329, 37.849174, 42.229359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982666, 37.081467, 42.087620>,  <34.590492, 37.643723, 42.012814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982666, 37.081467, 42.087620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770683, 37.414505, 42.023197>,  <33.643494, 37.614326, 41.984543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770683, 37.414505, 42.023197>,  <33.982666, 37.081467, 42.087620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770683, 37.414505, 42.023197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432972, -0.428948, -0.792805,
		-0.729167, -0.350419, 0.587812,
		-0.529955, 0.832593, -0.161053,
		33.611698, 37.664284, 41.974880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311089, 36.815174, 41.973194>,  <33.982666, 37.081467, 42.087620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311089, 36.815174, 41.973194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377045, 37.186176, 41.839008>,  <33.416618, 37.408779, 41.758495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377045, 37.186176, 41.839008>,  <33.311089, 36.815174, 41.973194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377045, 37.186176, 41.839008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380598, -0.253945, -0.889189,
		-0.909921, 0.274296, 0.311135,
		0.164890, 0.927509, -0.335467,
		33.426510, 37.464428, 41.738369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642502, 37.194260, 41.677677>,  <33.311089, 36.815174, 41.973194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642502, 37.194260, 41.677677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906719, 37.433231, 41.495792>,  <33.065250, 37.576614, 41.386662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906719, 37.433231, 41.495792>,  <32.642502, 37.194260, 41.677677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906719, 37.433231, 41.495792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298494, -0.346757, -0.889191,
		-0.688902, 0.723078, -0.050719,
		0.660542, 0.597426, -0.454716,
		33.104881, 37.612461, 41.359379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319042, 37.236362, 41.167049>,  <32.642502, 37.194260, 41.677677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319042, 37.236362, 41.167049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687737, 37.362732, 41.077084>,  <32.908955, 37.438553, 41.023102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687737, 37.362732, 41.077084>,  <32.319042, 37.236362, 41.167049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687737, 37.362732, 41.077084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138585, -0.273339, -0.951882,
		-0.362205, 0.908557, -0.208164,
		0.921738, 0.315928, -0.224917,
		32.964256, 37.457512, 41.009609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165665, 37.575115, 40.593998>,  <32.319042, 37.236362, 41.167049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165665, 37.575115, 40.593998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549522, 37.462780, 40.588192>,  <32.779839, 37.395378, 40.584709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549522, 37.462780, 40.588192>,  <32.165665, 37.575115, 40.593998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549522, 37.462780, 40.588192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118564, -0.357260, -0.926449,
		0.255002, 0.890782, -0.376140,
		0.959644, -0.280843, -0.014513,
		32.837414, 37.378529, 40.583839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361279, 37.815357, 39.923061>,  <32.165665, 37.575115, 40.593998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361279, 37.815357, 39.923061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638199, 37.561581, 40.060585>,  <32.804352, 37.409313, 40.143097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638199, 37.561581, 40.060585>,  <32.361279, 37.815357, 39.923061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638199, 37.561581, 40.060585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253480, -0.232270, -0.939041,
		0.675625, 0.737245, 0.000019,
		0.692299, -0.634445, 0.343805,
		32.845890, 37.371246, 40.163727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993042, 37.837891, 39.452450>,  <32.361279, 37.815357, 39.923061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993042, 37.837891, 39.452450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019169, 37.479485, 39.628124>,  <33.034847, 37.264442, 39.733528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019169, 37.479485, 39.628124>,  <32.993042, 37.837891, 39.452450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019169, 37.479485, 39.628124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080599, -0.433955, -0.897322,
		0.994604, 0.094012, 0.043871,
		0.065321, -0.896016, 0.439191,
		33.038765, 37.210678, 39.759880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572338, 37.493587, 39.194492>,  <32.993042, 37.837891, 39.452450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572338, 37.493587, 39.194492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352043, 37.189602, 39.332565>,  <33.219868, 37.007210, 39.415409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352043, 37.189602, 39.332565>,  <33.572338, 37.493587, 39.194492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352043, 37.189602, 39.332565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126862, -0.484955, -0.865289,
		0.824984, -0.432753, 0.363491,
		-0.550733, -0.759963, 0.345180,
		33.186825, 36.961613, 39.436119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875023, 36.831753, 39.008278>,  <33.572338, 37.493587, 39.194492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875023, 36.831753, 39.008278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494804, 36.730888, 39.080811>,  <33.266674, 36.670368, 39.124332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494804, 36.730888, 39.080811>,  <33.875023, 36.831753, 39.008278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494804, 36.730888, 39.080811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005493, -0.597394, -0.801929,
		0.310545, -0.761272, 0.569233,
		-0.950543, -0.252162, 0.181336,
		33.209641, 36.655239, 39.135212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823837, 36.305588, 38.644989>,  <33.875023, 36.831753, 39.008278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823837, 36.305588, 38.644989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434811, 36.355061, 38.723804>,  <33.201397, 36.384743, 38.771095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434811, 36.355061, 38.723804>,  <33.823837, 36.305588, 38.644989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434811, 36.355061, 38.723804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229714, -0.376651, -0.897421,
		-0.036778, -0.918061, 0.394728,
		-0.972563, 0.123680, 0.197040,
		33.143044, 36.392166, 38.782917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329948, 36.069603, 38.203659>,  <33.823837, 36.305588, 38.644989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329948, 36.069603, 38.203659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607727, 35.792290, 38.280708>,  <34.774395, 35.625900, 38.326939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607727, 35.792290, 38.280708>,  <34.329948, 36.069603, 38.203659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607727, 35.792290, 38.280708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671744, -0.720594, -0.171770,
		0.257885, -0.010105, -0.966123,
		0.694446, -0.693284, 0.192619,
		34.816059, 35.584305, 38.338493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383331, 35.671600, 37.573460>,  <34.329948, 36.069603, 38.203659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383331, 35.671600, 37.573460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462631, 35.503033, 37.927433>,  <34.510212, 35.401890, 38.139816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462631, 35.503033, 37.927433>,  <34.383331, 35.671600, 37.573460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462631, 35.503033, 37.927433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794800, -0.597460, -0.106467,
		0.573577, -0.682235, -0.453392,
		0.198249, -0.421423, 0.884929,
		34.522106, 35.376606, 38.192913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600384, 34.968338, 37.489250>,  <34.383331, 35.671600, 37.573460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600384, 34.968338, 37.489250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381790, 35.052471, 37.813503>,  <34.250633, 35.102951, 38.008053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381790, 35.052471, 37.813503>,  <34.600384, 34.968338, 37.489250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381790, 35.052471, 37.813503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729167, -0.595593, -0.337022,
		0.411916, -0.775259, 0.478850,
		-0.546480, 0.210337, 0.810628,
		34.217846, 35.115574, 38.056690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867058, 34.262367, 37.175030>,  <34.600384, 34.968338, 37.489250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867058, 34.262367, 37.175030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234650, 34.107483, 37.204823>,  <35.455204, 34.014553, 37.222698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234650, 34.107483, 37.204823>,  <34.867058, 34.262367, 37.175030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234650, 34.107483, 37.204823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002156, 0.183948, 0.982934,
		-0.394302, -0.903455, 0.168209,
		0.918979, -0.387210, 0.074479,
		35.510342, 33.991322, 37.227165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940971, 33.607037, 37.630791>,  <34.867058, 34.262367, 37.175030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940971, 33.607037, 37.630791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292259, 33.798031, 37.619911>,  <35.503033, 33.912628, 37.613384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292259, 33.798031, 37.619911>,  <34.940971, 33.607037, 37.630791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292259, 33.798031, 37.619911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035775, -0.008875, 0.999320,
		0.476921, -0.878594, -0.024876,
		0.878218, 0.477487, -0.027199,
		35.555725, 33.941277, 37.611752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362309, 33.265770, 38.050461>,  <34.940971, 33.607037, 37.630791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362309, 33.265770, 38.050461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533203, 33.627155, 38.036488>,  <35.635742, 33.843987, 38.028103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533203, 33.627155, 38.036488>,  <35.362309, 33.265770, 38.050461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533203, 33.627155, 38.036488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071569, 0.004720, 0.997425,
		0.901301, -0.428641, -0.062644,
		0.427241, 0.903463, -0.034931,
		35.661377, 33.898193, 38.026009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807564, 33.249657, 38.615673>,  <35.362309, 33.265770, 38.050461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807564, 33.249657, 38.615673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836029, 33.636097, 38.516399>,  <35.853107, 33.867962, 38.456837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836029, 33.636097, 38.516399>,  <35.807564, 33.249657, 38.615673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836029, 33.636097, 38.516399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113985, 0.239306, 0.964230,
		0.990931, -0.096903, -0.093091,
		0.071159, 0.966096, -0.248181,
		35.857376, 33.925926, 38.441944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438263, 33.490623, 38.811646>,  <35.807564, 33.249657, 38.615673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438263, 33.490623, 38.811646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157764, 33.775681, 38.819572>,  <35.989468, 33.946716, 38.824329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157764, 33.775681, 38.819572>,  <36.438263, 33.490623, 38.811646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157764, 33.775681, 38.819572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267162, 0.236908, 0.934077,
		0.660972, 0.660309, -0.356522,
		-0.701243, 0.712647, 0.019820,
		35.947392, 33.989475, 38.825520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626144, 33.866280, 39.344692>,  <36.438263, 33.490623, 38.811646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626144, 33.866280, 39.344692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253834, 34.008385, 39.310181>,  <36.030449, 34.093647, 39.289474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253834, 34.008385, 39.310181>,  <36.626144, 33.866280, 39.344692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253834, 34.008385, 39.310181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010858, 0.209033, 0.977848,
		0.365427, 0.911095, -0.190705,
		-0.930777, 0.355261, -0.086279,
		35.974602, 34.114964, 39.284298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607433, 34.410572, 39.801605>,  <36.626144, 33.866280, 39.344692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607433, 34.410572, 39.801605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214706, 34.361206, 39.743916>,  <35.979069, 34.331585, 39.709301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214706, 34.361206, 39.743916>,  <36.607433, 34.410572, 39.801605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214706, 34.361206, 39.743916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180363, 0.369735, 0.911463,
		-0.059168, 0.920904, -0.385273,
		-0.981819, -0.123419, -0.144220,
		35.920162, 34.324181, 39.700649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245659, 35.069576, 39.987095>,  <36.607433, 34.410572, 39.801605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245659, 35.069576, 39.987095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970333, 34.780972, 40.017147>,  <35.805138, 34.607807, 40.035179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970333, 34.780972, 40.017147>,  <36.245659, 35.069576, 39.987095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970333, 34.780972, 40.017147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341142, 0.413357, 0.844250,
		-0.640192, 0.555479, -0.530658,
		-0.688314, -0.721512, 0.075130,
		35.763840, 34.564518, 40.039688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591652, 35.398972, 40.137947>,  <36.245659, 35.069576, 39.987095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591652, 35.398972, 40.137947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578876, 35.024437, 40.277813>,  <35.571213, 34.799717, 40.361732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578876, 35.024437, 40.277813>,  <35.591652, 35.398972, 40.137947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578876, 35.024437, 40.277813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192009, 0.349070, 0.917215,
		-0.980873, -0.037847, -0.190932,
		-0.031934, -0.936332, 0.349660,
		35.569298, 34.743538, 40.382710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124897, 35.528973, 40.670135>,  <35.591652, 35.398972, 40.137947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124897, 35.528973, 40.670135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272991, 35.162479, 40.731373>,  <35.361847, 34.942581, 40.768116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272991, 35.162479, 40.731373>,  <35.124897, 35.528973, 40.670135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272991, 35.162479, 40.731373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161209, 0.225680, 0.960771,
		-0.914844, -0.331029, 0.231260,
		0.370234, -0.916236, 0.153097,
		35.384060, 34.887608, 40.777302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687687, 35.307281, 41.151211>,  <35.124897, 35.528973, 40.670135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687687, 35.307281, 41.151211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020275, 35.085827, 41.169708>,  <35.219830, 34.952953, 41.180809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020275, 35.085827, 41.169708>,  <34.687687, 35.307281, 41.151211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020275, 35.085827, 41.169708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178344, 0.344821, 0.921570,
		-0.526164, -0.758012, 0.385447,
		0.831471, -0.553640, 0.046246,
		35.269718, 34.919735, 41.183582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692337, 35.010216, 41.720215>,  <34.687687, 35.307281, 41.151211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692337, 35.010216, 41.720215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076878, 35.011913, 41.610104>,  <35.307602, 35.012932, 41.544037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076878, 35.011913, 41.610104>,  <34.692337, 35.010216, 41.720215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076878, 35.011913, 41.610104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265433, 0.251139, 0.930846,
		0.073078, -0.967942, 0.240309,
		0.961356, 0.004238, -0.275276,
		35.365284, 35.013184, 41.527519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935833, 34.534321, 42.264694>,  <34.692337, 35.010216, 41.720215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935833, 34.534321, 42.264694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227222, 34.751041, 42.096989>,  <35.402054, 34.881073, 41.996365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227222, 34.751041, 42.096989>,  <34.935833, 34.534321, 42.264694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227222, 34.751041, 42.096989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395662, 0.166880, 0.903107,
		0.559269, -0.823775, -0.092802,
		0.728471, 0.541798, -0.419267,
		35.445763, 34.913582, 41.971207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607521, 34.373924, 42.603806>,  <34.935833, 34.534321, 42.264694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607521, 34.373924, 42.603806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671505, 34.727665, 42.428383>,  <35.709896, 34.939911, 42.323128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671505, 34.727665, 42.428383>,  <35.607521, 34.373924, 42.603806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671505, 34.727665, 42.428383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389975, 0.351527, 0.851087,
		0.906826, -0.307164, -0.288646,
		0.159957, 0.884352, -0.438560,
		35.719494, 34.992970, 42.296814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252033, 34.555550, 42.863552>,  <35.607521, 34.373924, 42.603806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252033, 34.555550, 42.863552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107208, 34.897148, 42.714096>,  <36.020313, 35.102108, 42.624424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107208, 34.897148, 42.714096>,  <36.252033, 34.555550, 42.863552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107208, 34.897148, 42.714096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309149, 0.488155, 0.816169,
		0.879398, 0.179991, -0.440752,
		-0.362058, 0.853995, -0.373638,
		35.998592, 35.153347, 42.602005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737633, 35.072639, 43.116726>,  <36.252033, 34.555550, 42.863552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737633, 35.072639, 43.116726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388351, 35.248547, 43.032711>,  <36.178783, 35.354092, 42.982304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388351, 35.248547, 43.032711>,  <36.737633, 35.072639, 43.116726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388351, 35.248547, 43.032711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034778, 0.486109, 0.873206,
		0.486109, 0.755184, -0.439767,
		-0.873206, 0.439767, -0.210038,
		36.126389, 35.380478, 42.969700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844784, 35.720741, 43.277142>,  <36.737633, 35.072639, 43.116726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844784, 35.720741, 43.277142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445072, 35.706478, 43.282364>,  <36.205246, 35.697918, 43.285496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445072, 35.706478, 43.282364>,  <36.844784, 35.720741, 43.277142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445072, 35.706478, 43.282364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007148, 0.514263, 0.857603,
		-0.037298, 0.856891, -0.514147,
		-0.999279, -0.035662, 0.013056,
		36.145290, 35.695778, 43.286282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640564, 36.386948, 43.295345>,  <36.844784, 35.720741, 43.277142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640564, 36.386948, 43.295345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327118, 36.181877, 43.435696>,  <36.139050, 36.058834, 43.519905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327118, 36.181877, 43.435696>,  <36.640564, 36.386948, 43.295345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327118, 36.181877, 43.435696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055951, 0.504256, 0.861740,
		-0.618725, 0.694902, -0.366457,
		-0.783612, -0.512677, 0.350876,
		36.092033, 36.028072, 43.540958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249657, 36.886547, 43.704411>,  <36.640564, 36.386948, 43.295345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249657, 36.886547, 43.704411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131092, 36.525181, 43.828331>,  <36.059956, 36.308361, 43.902683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131092, 36.525181, 43.828331>,  <36.249657, 36.886547, 43.704411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131092, 36.525181, 43.828331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081485, 0.299272, 0.950682,
		-0.951579, 0.307034, -0.015091,
		-0.296408, -0.903419, 0.309800,
		36.042171, 36.254154, 43.921272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841595, 36.973576, 44.299763>,  <36.249657, 36.886547, 43.704411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841595, 36.973576, 44.299763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935661, 36.586704, 44.338249>,  <35.992100, 36.354580, 44.361340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935661, 36.586704, 44.338249>,  <35.841595, 36.973576, 44.299763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935661, 36.586704, 44.338249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010164, 0.101433, 0.994790,
		-0.971902, -0.232962, 0.033684,
		0.235165, -0.967182, 0.096215,
		36.006210, 36.296551, 44.367115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536079, 36.715813, 45.004482>,  <35.841595, 36.973576, 44.299763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536079, 36.715813, 45.004482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814354, 36.438614, 44.928822>,  <35.981319, 36.272293, 44.883427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814354, 36.438614, 44.928822>,  <35.536079, 36.715813, 45.004482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814354, 36.438614, 44.928822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165669, -0.101436, 0.980951,
		-0.698982, -0.713770, 0.044241,
		0.695685, -0.692996, -0.189151,
		36.023060, 36.230717, 44.872078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362267, 36.049347, 45.336834>,  <35.536079, 36.715813, 45.004482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362267, 36.049347, 45.336834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758129, 36.028881, 45.283215>,  <35.995647, 36.016602, 45.251041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758129, 36.028881, 45.283215>,  <35.362267, 36.049347, 45.336834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758129, 36.028881, 45.283215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097982, -0.441526, 0.891882,
		-0.104817, -0.895789, -0.431945,
		0.989653, -0.051161, -0.134051,
		36.055023, 36.013531, 45.243000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517353, 35.528801, 45.765129>,  <35.362267, 36.049347, 45.336834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517353, 35.528801, 45.765129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882515, 35.665798, 45.676308>,  <36.101612, 35.747997, 45.623016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882515, 35.665798, 45.676308>,  <35.517353, 35.528801, 45.765129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882515, 35.665798, 45.676308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358780, -0.413896, 0.836640,
		0.194637, -0.843439, -0.500727,
		0.912904, 0.342492, -0.222050,
		36.156387, 35.768547, 45.609692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054699, 34.995216, 45.762226>,  <35.517353, 35.528801, 45.765129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054699, 34.995216, 45.762226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215515, 35.348206, 45.859882>,  <36.312004, 35.559998, 45.918476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215515, 35.348206, 45.859882>,  <36.054699, 34.995216, 45.762226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215515, 35.348206, 45.859882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171706, -0.334570, 0.926596,
		0.899376, -0.330613, -0.286038,
		0.402045, 0.882473, 0.244136,
		36.336128, 35.612946, 45.933125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584198, 34.794407, 46.142479>,  <36.054699, 34.995216, 45.762226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584198, 34.794407, 46.142479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593758, 35.181210, 46.243935>,  <36.599495, 35.413292, 46.304806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593758, 35.181210, 46.243935>,  <36.584198, 34.794407, 46.142479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593758, 35.181210, 46.243935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383600, -0.243161, 0.890912,
		0.923190, 0.075999, -0.376755,
		0.023904, 0.967004, 0.253637,
		36.600929, 35.471310, 46.320026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166489, 34.811409, 46.482735>,  <36.584198, 34.794407, 46.142479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166489, 34.811409, 46.482735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922340, 35.106647, 46.597744>,  <36.775852, 35.283791, 46.666752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922340, 35.106647, 46.597744>,  <37.166489, 34.811409, 46.482735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922340, 35.106647, 46.597744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183092, -0.221695, 0.957773,
		0.770668, 0.637236, 0.000177,
		-0.610367, 0.738093, 0.287526,
		36.739231, 35.328075, 46.684002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546688, 35.248802, 46.982071>,  <37.166489, 34.811409, 46.482735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546688, 35.248802, 46.982071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157753, 35.279335, 47.070377>,  <36.924393, 35.297653, 47.123363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157753, 35.279335, 47.070377>,  <37.546688, 35.248802, 46.982071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157753, 35.279335, 47.070377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219139, -0.029211, 0.975256,
		0.080889, 0.996655, 0.011677,
		-0.972335, 0.076328, 0.220769,
		36.866051, 35.302235, 47.136608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201279, 35.436882, 47.119102>,  <37.546688, 35.248802, 46.982071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201279, 35.436882, 47.119102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553318, 35.295227, 47.245605>,  <38.764542, 35.210232, 47.321507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553318, 35.295227, 47.245605>,  <38.201279, 35.436882, 47.119102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553318, 35.295227, 47.245605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302536, -0.095085, -0.948383,
		0.365933, 0.930346, 0.023456,
		0.880094, -0.354141, 0.316258,
		38.817345, 35.188984, 47.340485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642059, 35.767048, 46.697575>,  <38.201279, 35.436882, 47.119102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642059, 35.767048, 46.697575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839951, 35.456829, 46.854431>,  <38.958687, 35.270699, 46.948544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839951, 35.456829, 46.854431>,  <38.642059, 35.767048, 46.697575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839951, 35.456829, 46.854431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473820, -0.137548, -0.869813,
		0.728519, 0.616123, 0.299420,
		0.494727, -0.775547, 0.392138,
		38.988369, 35.224167, 46.972073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317871, 35.879265, 46.471458>,  <38.642059, 35.767048, 46.697575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317871, 35.879265, 46.471458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221649, 35.496750, 46.537975>,  <39.163918, 35.267242, 46.577885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221649, 35.496750, 46.537975>,  <39.317871, 35.879265, 46.471458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221649, 35.496750, 46.537975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272492, -0.230965, -0.934025,
		0.931602, -0.179371, 0.316139,
		-0.240554, -0.956285, 0.166290,
		39.149483, 35.209866, 46.587864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869595, 35.552628, 46.180969>,  <39.317871, 35.879265, 46.471458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869595, 35.552628, 46.180969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591255, 35.270325, 46.234180>,  <39.424252, 35.100945, 46.266106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591255, 35.270325, 46.234180>,  <39.869595, 35.552628, 46.180969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591255, 35.270325, 46.234180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308166, -0.460723, -0.832327,
		0.648709, -0.538183, 0.538086,
		-0.695852, -0.705757, 0.133026,
		39.382500, 35.058598, 46.274090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175430, 34.983173, 45.955227>,  <39.869595, 35.552628, 46.180969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175430, 34.983173, 45.955227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780880, 34.922993, 45.928589>,  <39.544151, 34.886883, 45.912605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780880, 34.922993, 45.928589>,  <40.175430, 34.983173, 45.955227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780880, 34.922993, 45.928589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120068, -0.381470, -0.916550,
		0.112497, -0.912055, 0.394336,
		-0.986371, -0.150456, -0.066594,
		39.484970, 34.877857, 45.908611>
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
