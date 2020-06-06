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
	<24.608362, 34.909969, 34.868286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315437, 34.975323, 35.132717>,  <24.139683, 35.014534, 35.291378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315437, 34.975323, 35.132717>,  <24.608362, 34.909969, 34.868286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315437, 34.975323, 35.132717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323481, -0.770802, 0.548839,
		0.599234, 0.615767, 0.511615,
		-0.732311, 0.163385, 0.661079,
		24.095743, 35.024338, 35.331039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869108, 35.063679, 35.564091>,  <24.608362, 34.909969, 34.868286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869108, 35.063679, 35.564091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517975, 34.873672, 35.588646>,  <24.307295, 34.759670, 35.603378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517975, 34.873672, 35.588646>,  <24.869108, 35.063679, 35.564091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.517975, 34.873672, 35.588646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428950, -0.722663, 0.541996,
		-0.213091, 0.502116, 0.838136,
		-0.877835, -0.475013, 0.061389,
		24.254625, 34.731167, 35.607063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719769, 34.879635, 36.317772>,  <24.869108, 35.063679, 35.564091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719769, 34.879635, 36.317772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507843, 34.621460, 36.097694>,  <24.380688, 34.466557, 35.965649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507843, 34.621460, 36.097694>,  <24.719769, 34.879635, 36.317772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507843, 34.621460, 36.097694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163487, -0.714278, 0.680498,
		-0.832206, 0.270590, 0.483956,
		-0.529816, -0.645436, -0.550189,
		24.348898, 34.427830, 35.932636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127937, 34.521580, 36.859821>,  <24.719769, 34.879635, 36.317772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127937, 34.521580, 36.859821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481031, 34.342278, 36.916164>,  <25.692888, 34.234695, 36.949970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481031, 34.342278, 36.916164>,  <25.127937, 34.521580, 36.859821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481031, 34.342278, 36.916164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400219, 0.560239, -0.725229,
		0.246173, 0.696561, 0.673945,
		0.882736, -0.448257, 0.140862,
		25.745852, 34.207802, 36.958424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775864, 34.768188, 37.012001>,  <25.127937, 34.521580, 36.859821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775864, 34.768188, 37.012001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465397, 34.925087, 36.814533>,  <25.279118, 35.019226, 36.696053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465397, 34.925087, 36.814533>,  <25.775864, 34.768188, 37.012001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465397, 34.925087, 36.814533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041851, 0.813263, 0.580390,
		0.629138, 0.429819, -0.647643,
		-0.776167, 0.392249, -0.493666,
		25.232548, 35.042763, 36.666435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294214, 35.238678, 37.296989>,  <25.775864, 34.768188, 37.012001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294214, 35.238678, 37.296989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411068, 34.858624, 37.253357>,  <26.481180, 34.630592, 37.227177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411068, 34.858624, 37.253357>,  <26.294214, 35.238678, 37.296989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411068, 34.858624, 37.253357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914786, 0.244338, 0.321661,
		-0.278971, -0.193750, 0.940551,
		0.292134, -0.950137, -0.109077,
		26.498709, 34.573582, 37.220634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577457, 35.087830, 37.960941>,  <26.294214, 35.238678, 37.296989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577457, 35.087830, 37.960941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740013, 34.858894, 37.676048>,  <26.837545, 34.721535, 37.505112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740013, 34.858894, 37.676048>,  <26.577457, 35.087830, 37.960941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740013, 34.858894, 37.676048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831176, -0.092168, 0.548317,
		-0.379467, -0.814823, 0.438256,
		0.406388, -0.572336, -0.712236,
		26.861929, 34.687195, 37.462376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691988, 34.407917, 38.273998>,  <26.577457, 35.087830, 37.960941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691988, 34.407917, 38.273998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940245, 34.472511, 37.967087>,  <27.089199, 34.511269, 37.782940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940245, 34.472511, 37.967087>,  <26.691988, 34.407917, 38.273998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940245, 34.472511, 37.967087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752013, -0.399641, 0.524180,
		-0.221988, -0.902335, -0.369476,
		0.620643, 0.161489, -0.767283,
		27.126438, 34.520958, 37.736900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036232, 33.755318, 38.197151>,  <26.691988, 34.407917, 38.273998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036232, 33.755318, 38.197151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259329, 34.038960, 38.024593>,  <27.393187, 34.209145, 37.921059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259329, 34.038960, 38.024593>,  <27.036232, 33.755318, 38.197151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259329, 34.038960, 38.024593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778357, -0.266339, 0.568528,
		0.288248, -0.652869, -0.700483,
		0.557740, 0.709102, -0.431393,
		27.426651, 34.251690, 37.895176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700407, 33.439651, 37.856865>,  <27.036232, 33.755318, 38.197151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700407, 33.439651, 37.856865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773653, 33.826061, 37.929821>,  <27.817600, 34.057907, 37.973595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773653, 33.826061, 37.929821>,  <27.700407, 33.439651, 37.856865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773653, 33.826061, 37.929821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748324, -0.257282, 0.611406,
		0.637558, 0.024528, -0.770012,
		0.183113, 0.966025, 0.182387,
		27.828587, 34.115868, 37.984539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382202, 33.448170, 37.823250>,  <27.700407, 33.439651, 37.856865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382202, 33.448170, 37.823250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276785, 33.765690, 38.042496>,  <28.213535, 33.956203, 38.174042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276785, 33.765690, 38.042496>,  <28.382202, 33.448170, 37.823250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276785, 33.765690, 38.042496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723155, -0.213475, 0.656868,
		0.638430, 0.569483, -0.517780,
		-0.263542, 0.793800, 0.548113,
		28.197721, 34.003830, 38.206928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016697, 33.767624, 38.181923>,  <28.382202, 33.448170, 37.823250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016697, 33.767624, 38.181923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676785, 33.857677, 38.372578>,  <28.472837, 33.911709, 38.486973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676785, 33.857677, 38.372578>,  <29.016697, 33.767624, 38.181923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676785, 33.857677, 38.372578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438717, -0.199206, 0.876267,
		0.292231, 0.953745, 0.070509,
		-0.849781, 0.225138, 0.476639,
		28.421850, 33.925220, 38.515568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302986, 34.103828, 38.735222>,  <29.016697, 33.767624, 38.181923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302986, 34.103828, 38.735222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931688, 33.997723, 38.839527>,  <28.708910, 33.934059, 38.902111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931688, 33.997723, 38.839527>,  <29.302986, 34.103828, 38.735222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931688, 33.997723, 38.839527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323786, -0.231126, 0.917466,
		-0.183098, 0.936065, 0.300429,
		-0.928245, -0.265261, 0.260766,
		28.653215, 33.918144, 38.917755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117428, 34.520081, 39.245476>,  <29.302986, 34.103828, 38.735222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117428, 34.520081, 39.245476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960127, 34.152607, 39.260262>,  <28.865747, 33.932121, 39.269135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960127, 34.152607, 39.260262>,  <29.117428, 34.520081, 39.245476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960127, 34.152607, 39.260262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286969, -0.084445, 0.954211,
		-0.873501, 0.385851, 0.296843,
		-0.393250, -0.918688, 0.036964,
		28.842152, 33.876999, 39.271351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040216, 35.322239, 39.069279>,  <29.117428, 34.520081, 39.245476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040216, 35.322239, 39.069279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782068, 35.521622, 38.837749>,  <28.627180, 35.641251, 38.698833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782068, 35.521622, 38.837749>,  <29.040216, 35.322239, 39.069279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782068, 35.521622, 38.837749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239822, -0.851654, -0.466015,
		-0.725247, -0.161937, 0.669173,
		-0.645369, 0.498459, -0.578824,
		28.588457, 35.671158, 38.664101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453127, 34.930222, 39.085522>,  <29.040216, 35.322239, 39.069279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453127, 34.930222, 39.085522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489500, 35.156490, 38.757683>,  <28.511324, 35.292252, 38.560978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489500, 35.156490, 38.757683>,  <28.453127, 34.930222, 39.085522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489500, 35.156490, 38.757683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332730, -0.758457, -0.560387,
		-0.938627, 0.323665, 0.119246,
		0.090935, 0.565671, -0.819602,
		28.516781, 35.326191, 38.511803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880875, 35.132683, 38.710918>,  <28.453127, 34.930222, 39.085522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880875, 35.132683, 38.710918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999334, 34.784737, 38.553123>,  <28.070410, 34.575970, 38.458447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999334, 34.784737, 38.553123>,  <27.880875, 35.132683, 38.710918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999334, 34.784737, 38.553123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633518, 0.130199, -0.762694,
		0.714807, 0.475788, -0.512520,
		0.296152, -0.869870, -0.394488,
		28.088181, 34.523777, 38.434776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947363, 35.374416, 38.012325>,  <27.880875, 35.132683, 38.710918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947363, 35.374416, 38.012325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932554, 34.976200, 38.047043>,  <27.923668, 34.737270, 38.067871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932554, 34.976200, 38.047043>,  <27.947363, 35.374416, 38.012325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932554, 34.976200, 38.047043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679647, -0.038585, -0.732523,
		0.732604, -0.086106, -0.675187,
		-0.037023, -0.995539, 0.086790,
		27.921448, 34.677540, 38.073078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213652, 35.209248, 37.435429>,  <27.947363, 35.374416, 38.012325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213652, 35.209248, 37.435429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974781, 34.920757, 37.575836>,  <27.831459, 34.747662, 37.660080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974781, 34.920757, 37.575836>,  <28.213652, 35.209248, 37.435429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974781, 34.920757, 37.575836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636657, 0.160009, -0.754364,
		0.487902, -0.673965, -0.554728,
		-0.597176, -0.721227, 0.351015,
		27.795628, 34.704388, 37.681141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009022, 34.900242, 36.852932>,  <28.213652, 35.209248, 37.435429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009022, 34.900242, 36.852932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734316, 34.797882, 37.125069>,  <27.569492, 34.736465, 37.288353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734316, 34.797882, 37.125069>,  <28.009022, 34.900242, 36.852932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734316, 34.797882, 37.125069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723349, 0.148485, -0.674328,
		0.071535, -0.955233, -0.287075,
		-0.686767, -0.255894, 0.680345,
		27.528286, 34.721115, 37.329170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458700, 34.489979, 36.529884>,  <28.009022, 34.900242, 36.852932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458700, 34.489979, 36.529884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362453, 34.712467, 36.848061>,  <27.304707, 34.845959, 37.038967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362453, 34.712467, 36.848061>,  <27.458700, 34.489979, 36.529884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362453, 34.712467, 36.848061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765811, 0.394724, -0.507668,
		-0.596354, -0.731309, 0.330982,
		-0.240616, 0.556219, 0.795439,
		27.290268, 34.879333, 37.086693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136410, 34.659428, 36.038097>,  <27.458700, 34.489979, 36.529884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136410, 34.659428, 36.038097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403322, 34.662251, 36.336006>,  <28.563469, 34.663944, 36.514751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403322, 34.662251, 36.336006>,  <28.136410, 34.659428, 36.038097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403322, 34.662251, 36.336006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409399, 0.831869, -0.374681,
		-0.622198, 0.554927, 0.552201,
		0.667279, 0.007055, 0.744774,
		28.603506, 34.664368, 36.559437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860052, 35.337078, 35.610168>,  <28.136410, 34.659428, 36.038097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860052, 35.337078, 35.610168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044285, 35.646736, 35.783859>,  <28.154825, 35.832531, 35.888073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044285, 35.646736, 35.783859>,  <27.860052, 35.337078, 35.610168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044285, 35.646736, 35.783859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670542, -0.624002, 0.401242,
		0.581582, 0.106365, -0.806504,
		0.460583, 0.774150, 0.434230,
		28.182459, 35.878983, 35.914127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583019, 35.402245, 35.328190>,  <27.860052, 35.337078, 35.610168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583019, 35.402245, 35.328190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520439, 35.495071, 35.712204>,  <28.482891, 35.550770, 35.942612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520439, 35.495071, 35.712204>,  <28.583019, 35.402245, 35.328190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520439, 35.495071, 35.712204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640303, -0.716250, 0.277484,
		0.752021, 0.658126, -0.036537,
		-0.156450, 0.232069, 0.960035,
		28.473505, 35.564693, 36.000214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222376, 35.396263, 35.571575>,  <28.583019, 35.402245, 35.328190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222376, 35.396263, 35.571575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945297, 35.340549, 35.854637>,  <28.779049, 35.307121, 36.024475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945297, 35.340549, 35.854637>,  <29.222376, 35.396263, 35.571575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945297, 35.340549, 35.854637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535988, -0.755934, 0.375873,
		0.482584, 0.639659, 0.598289,
		-0.692697, -0.139285, 0.707651,
		28.737488, 35.298763, 36.066933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484365, 35.783131, 34.956028>,  <29.222376, 35.396263, 35.571575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484365, 35.783131, 34.956028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640991, 35.583420, 34.646858>,  <29.734966, 35.463593, 34.461357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640991, 35.583420, 34.646858>,  <29.484365, 35.783131, 34.956028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640991, 35.583420, 34.646858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078250, -0.818881, 0.568604,
		-0.916818, -0.283125, -0.281575,
		0.391562, -0.499273, -0.772920,
		29.758459, 35.433640, 34.414982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074478, 35.134254, 34.675785>,  <29.484365, 35.783131, 34.956028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074478, 35.134254, 34.675785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473579, 35.107449, 34.675823>,  <29.713039, 35.091366, 34.675846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473579, 35.107449, 34.675823>,  <29.074478, 35.134254, 34.675785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473579, 35.107449, 34.675823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036593, -0.543557, 0.838575,
		-0.056143, -0.836693, -0.544787,
		0.997752, -0.067016, 0.000100,
		29.772905, 35.087345, 34.675854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529211, 35.062035, 34.224709>,  <29.074478, 35.134254, 34.675785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529211, 35.062035, 34.224709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661991, 35.228851, 33.886269>,  <28.741659, 35.328941, 33.683205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661991, 35.228851, 33.886269>,  <28.529211, 35.062035, 34.224709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661991, 35.228851, 33.886269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855671, -0.244406, -0.456172,
		-0.397034, 0.875411, 0.275717,
		0.331951, 0.417039, -0.846101,
		28.761576, 35.353962, 33.632439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034580, 35.532417, 33.919456>,  <28.529211, 35.062035, 34.224709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034580, 35.532417, 33.919456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266466, 35.372906, 33.635227>,  <28.405598, 35.277199, 33.464691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266466, 35.372906, 33.635227>,  <28.034580, 35.532417, 33.919456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266466, 35.372906, 33.635227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814011, -0.322285, -0.483237,
		-0.036303, 0.858551, -0.511442,
		0.579713, -0.398777, -0.710570,
		28.440380, 35.253273, 33.422058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841545, 35.821041, 33.246124>,  <28.034580, 35.532417, 33.919456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841545, 35.821041, 33.246124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033194, 35.477970, 33.171478>,  <28.148182, 35.272125, 33.126690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033194, 35.477970, 33.171478>,  <27.841545, 35.821041, 33.246124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033194, 35.477970, 33.171478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664126, -0.215209, -0.715976,
		0.573918, 0.466976, -0.672719,
		0.479119, -0.857682, -0.186619,
		28.176929, 35.220665, 33.115494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045134, 35.755508, 32.472931>,  <27.841545, 35.821041, 33.246124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045134, 35.755508, 32.472931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050528, 35.386662, 32.627598>,  <28.053764, 35.165352, 32.720398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050528, 35.386662, 32.627598>,  <28.045134, 35.755508, 32.472931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050528, 35.386662, 32.627598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691519, -0.287917, -0.662500,
		0.722233, -0.258458, -0.641545,
		0.013483, -0.922119, 0.386671,
		28.054573, 35.110027, 32.743599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122641, 35.330795, 31.891275>,  <28.045134, 35.755508, 32.472931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122641, 35.330795, 31.891275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016634, 35.072662, 32.177860>,  <27.953030, 34.917782, 32.349812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016634, 35.072662, 32.177860>,  <28.122641, 35.330795, 31.891275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016634, 35.072662, 32.177860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605102, -0.467206, -0.644647,
		0.750745, -0.604374, -0.266673,
		-0.265017, -0.645330, 0.716460,
		27.937128, 34.879063, 32.392799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185162, 34.688976, 31.594969>,  <28.122641, 35.330795, 31.891275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185162, 34.688976, 31.594969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936935, 34.629482, 31.902937>,  <27.788000, 34.593784, 32.087719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936935, 34.629482, 31.902937>,  <28.185162, 34.688976, 31.594969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936935, 34.629482, 31.902937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652825, -0.445940, -0.612337,
		0.434415, -0.882618, 0.179636,
		-0.620566, -0.148737, 0.769919,
		27.750765, 34.584862, 32.133911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878197, 34.002327, 31.563076>,  <28.185162, 34.688976, 31.594969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878197, 34.002327, 31.563076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604406, 34.210701, 31.767080>,  <27.440132, 34.335728, 31.889482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604406, 34.210701, 31.767080>,  <27.878197, 34.002327, 31.563076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604406, 34.210701, 31.767080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705156, -0.295506, -0.644540,
		-0.185052, -0.800813, 0.569609,
		-0.684479, 0.520936, 0.510014,
		27.399063, 34.366982, 31.920084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309042, 33.584347, 31.635937>,  <27.878197, 34.002327, 31.563076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309042, 33.584347, 31.635937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190449, 33.963108, 31.685684>,  <27.119293, 34.190365, 31.715532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190449, 33.963108, 31.685684>,  <27.309042, 33.584347, 31.635937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190449, 33.963108, 31.685684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902474, -0.235173, -0.360879,
		-0.312471, -0.219232, 0.924283,
		-0.296483, 0.946906, 0.124366,
		27.101503, 34.247181, 31.722994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548948, 33.536446, 31.934662>,  <27.309042, 33.584347, 31.635937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548948, 33.536446, 31.934662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640326, 33.848194, 31.701290>,  <26.695152, 34.035244, 31.561266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640326, 33.848194, 31.701290>,  <26.548948, 33.536446, 31.934662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640326, 33.848194, 31.701290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807308, -0.183287, -0.560944,
		-0.544121, 0.599152, 0.587324,
		0.228442, 0.779373, -0.583431,
		26.708858, 34.082005, 31.526260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072035, 34.024456, 31.955402>,  <26.548948, 33.536446, 31.934662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072035, 34.024456, 31.955402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251038, 33.987419, 31.599613>,  <26.358440, 33.965195, 31.386139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251038, 33.987419, 31.599613>,  <26.072035, 34.024456, 31.955402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251038, 33.987419, 31.599613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815940, -0.449378, -0.363731,
		-0.366030, 0.888530, -0.276654,
		0.447508, -0.092597, -0.889473,
		26.385290, 33.959641, 31.332771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410757, 34.319061, 31.836683>,  <26.072035, 34.024456, 31.955402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410757, 34.319061, 31.836683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341909, 34.710121, 31.788383>,  <25.300602, 34.944756, 31.759403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341909, 34.710121, 31.788383>,  <25.410757, 34.319061, 31.836683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341909, 34.710121, 31.788383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533278, -0.195539, -0.823030,
		-0.828245, -0.077265, 0.555014,
		-0.172118, 0.977647, -0.120750,
		25.290274, 35.003414, 31.752159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760790, 34.185162, 31.405771>,  <25.410757, 34.319061, 31.836683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760790, 34.185162, 31.405771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594622, 34.464752, 31.638617>,  <24.494921, 34.632507, 31.778324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594622, 34.464752, 31.638617>,  <24.760790, 34.185162, 31.405771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594622, 34.464752, 31.638617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907014, 0.366794, 0.206852,
		-0.068932, 0.613917, -0.786355,
		-0.415421, 0.698976, 0.582115,
		24.469995, 34.674446, 31.813251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784565, 33.599072, 31.006496>,  <24.760790, 34.185162, 31.405771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784565, 33.599072, 31.006496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979990, 33.682632, 30.667635>,  <25.097244, 33.732769, 30.464319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979990, 33.682632, 30.667635>,  <24.784565, 33.599072, 31.006496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979990, 33.682632, 30.667635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824267, 0.207929, 0.526639,
		0.286164, -0.955576, -0.070607,
		0.488562, 0.208905, -0.847152,
		25.126558, 33.745304, 30.413490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459127, 33.217899, 30.757483>,  <24.784565, 33.599072, 31.006496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459127, 33.217899, 30.757483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473124, 33.606750, 30.664751>,  <25.481522, 33.840061, 30.609112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473124, 33.606750, 30.664751>,  <25.459127, 33.217899, 30.757483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473124, 33.606750, 30.664751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763761, 0.123597, 0.633556,
		0.644550, -0.199231, -0.738148,
		0.034991, 0.972127, -0.231830,
		25.483622, 33.898388, 30.595201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132936, 33.468441, 30.676357>,  <25.459127, 33.217899, 30.757483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132936, 33.468441, 30.676357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921593, 33.795959, 30.766159>,  <25.794786, 33.992470, 30.820040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921593, 33.795959, 30.766159>,  <26.132936, 33.468441, 30.676357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921593, 33.795959, 30.766159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727550, 0.300356, 0.616812,
		0.437614, 0.489237, -0.754414,
		-0.528360, 0.818800, 0.224504,
		25.763084, 34.041599, 30.833509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541826, 34.108746, 30.483524>,  <26.132936, 33.468441, 30.676357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541826, 34.108746, 30.483524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280006, 34.197880, 30.772497>,  <26.122913, 34.251362, 30.945881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280006, 34.197880, 30.772497>,  <26.541826, 34.108746, 30.483524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280006, 34.197880, 30.772497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722888, 0.464251, 0.511765,
		-0.221350, 0.857213, -0.464962,
		-0.654551, 0.222836, 0.722432,
		26.083641, 34.264732, 30.989227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466885, 34.899635, 30.686329>,  <26.541826, 34.108746, 30.483524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466885, 34.899635, 30.686329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387722, 34.664089, 30.999781>,  <26.340225, 34.522762, 31.187851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387722, 34.664089, 30.999781>,  <26.466885, 34.899635, 30.686329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387722, 34.664089, 30.999781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561175, 0.587402, 0.583131,
		-0.803689, 0.555157, 0.214205,
		-0.197905, -0.588863, 0.783629,
		26.328350, 34.487431, 31.234869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363605, 35.236233, 31.305601>,  <26.466885, 34.899635, 30.686329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363605, 35.236233, 31.305601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467531, 34.881607, 31.458700>,  <26.529886, 34.668831, 31.550560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467531, 34.881607, 31.458700>,  <26.363605, 35.236233, 31.305601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467531, 34.881607, 31.458700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584051, 0.459917, 0.668850,
		-0.769013, 0.049769, 0.637293,
		0.259813, -0.886566, 0.382750,
		26.545475, 34.615639, 31.573524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349422, 35.211861, 31.986223>,  <26.363605, 35.236233, 31.305601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349422, 35.211861, 31.986223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575039, 34.883175, 31.953634>,  <26.710409, 34.685963, 31.934082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575039, 34.883175, 31.953634>,  <26.349422, 35.211861, 31.986223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575039, 34.883175, 31.953634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593601, 0.334905, 0.731763,
		-0.574018, -0.461105, 0.676673,
		0.564041, -0.821718, -0.081471,
		26.744251, 34.636658, 31.929193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505131, 35.014786, 32.724518>,  <26.349422, 35.211861, 31.986223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505131, 35.014786, 32.724518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774776, 34.836655, 32.488808>,  <26.936563, 34.729774, 32.347382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774776, 34.836655, 32.488808>,  <26.505131, 35.014786, 32.724518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774776, 34.836655, 32.488808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735120, 0.326856, 0.593940,
		-0.071891, -0.833574, 0.547710,
		0.674115, -0.445331, -0.589278,
		26.977011, 34.703056, 32.312023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988834, 34.710106, 33.190285>,  <26.505131, 35.014786, 32.724518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988834, 34.710106, 33.190285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203646, 34.698254, 32.853065>,  <27.332533, 34.691143, 32.650734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203646, 34.698254, 32.853065>,  <26.988834, 34.710106, 33.190285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203646, 34.698254, 32.853065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828308, 0.207728, 0.520342,
		0.159708, -0.977738, 0.136096,
		0.537029, -0.029627, -0.843044,
		27.364754, 34.689365, 32.600151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539186, 34.283276, 33.469391>,  <26.988834, 34.710106, 33.190285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539186, 34.283276, 33.469391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650362, 34.411659, 33.107235>,  <27.717068, 34.488689, 32.889942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650362, 34.411659, 33.107235>,  <27.539186, 34.283276, 33.469391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650362, 34.411659, 33.107235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921179, 0.178181, 0.345949,
		0.272360, -0.930181, -0.246138,
		0.277938, 0.320959, -0.905393,
		27.733744, 34.507946, 32.835617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123829, 33.964935, 33.279175>,  <27.539186, 34.283276, 33.469391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123829, 33.964935, 33.279175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137722, 34.291229, 33.048222>,  <28.146057, 34.487007, 32.909649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137722, 34.291229, 33.048222>,  <28.123829, 33.964935, 33.279175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137722, 34.291229, 33.048222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902210, 0.222920, 0.369220,
		0.429896, -0.533740, -0.728224,
		0.034732, 0.815738, -0.577378,
		28.148142, 34.535950, 32.875008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722082, 34.062241, 32.932865>,  <28.123829, 33.964935, 33.279175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722082, 34.062241, 32.932865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587528, 34.435780, 32.981487>,  <28.506796, 34.659904, 33.010658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587528, 34.435780, 32.981487>,  <28.722082, 34.062241, 32.932865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587528, 34.435780, 32.981487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907110, 0.286639, 0.308204,
		0.252974, 0.213937, -0.943523,
		-0.336387, 0.933846, 0.121552,
		28.486612, 34.715935, 33.017952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185139, 34.512238, 32.556595>,  <28.722082, 34.062241, 32.932865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185139, 34.512238, 32.556595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012573, 34.744499, 32.832775>,  <28.909035, 34.883858, 32.998482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012573, 34.744499, 32.832775>,  <29.185139, 34.512238, 32.556595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012573, 34.744499, 32.832775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888324, 0.406912, 0.212843,
		-0.157364, 0.705167, -0.691358,
		-0.431412, 0.580656, 0.690451,
		28.883150, 34.918697, 33.039909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439800, 35.176792, 32.328079>,  <29.185139, 34.512238, 32.556595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439800, 35.176792, 32.328079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407824, 35.190571, 32.726562>,  <29.388638, 35.198837, 32.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407824, 35.190571, 32.726562>,  <29.439800, 35.176792, 32.328079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407824, 35.190571, 32.726562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958818, 0.275907, 0.067402,
		-0.272537, 0.960567, -0.055088,
		-0.079944, 0.034450, 0.996204,
		29.383841, 35.200905, 33.025425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743731, 35.806965, 32.497955>,  <29.439800, 35.176792, 32.328079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743731, 35.806965, 32.497955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760506, 35.543129, 32.798138>,  <29.770571, 35.384827, 32.978249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760506, 35.543129, 32.798138>,  <29.743731, 35.806965, 32.497955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760506, 35.543129, 32.798138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954378, 0.248705, 0.165255,
		-0.295642, 0.709287, 0.639928,
		0.041940, -0.659589, 0.750455,
		29.773088, 35.345253, 33.023273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540197, 35.822140, 32.732738>,  <29.743731, 35.806965, 32.497955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540197, 35.822140, 32.732738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347523, 35.581429, 32.987560>,  <30.231918, 35.437000, 33.140453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347523, 35.581429, 32.987560>,  <30.540197, 35.822140, 32.732738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347523, 35.581429, 32.987560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776196, 0.044490, 0.628920,
		-0.406812, 0.797424, 0.445666,
		-0.481689, -0.601776, 0.637056,
		30.203016, 35.400894, 33.178677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305899, 35.776421, 32.447647>,  <30.540197, 35.822140, 32.732738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305899, 35.776421, 32.447647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446108, 35.968849, 32.126225>,  <31.530233, 36.084309, 31.933371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446108, 35.968849, 32.126225>,  <31.305899, 35.776421, 32.447647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446108, 35.968849, 32.126225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434680, -0.676415, -0.594572,
		-0.829571, 0.557700, -0.027985,
		0.350522, 0.481076, -0.803555,
		31.551264, 36.113171, 31.885159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761820, 35.855053, 31.938631>,  <31.305899, 35.776421, 32.447647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761820, 35.855053, 31.938631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119745, 35.854599, 31.760057>,  <31.334501, 35.854328, 31.652914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119745, 35.854599, 31.760057>,  <30.761820, 35.855053, 31.938631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119745, 35.854599, 31.760057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332054, -0.670101, -0.663856,
		-0.298404, 0.742269, -0.599993,
		0.894816, -0.001133, -0.446434,
		31.388189, 35.854259, 31.626127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602283, 35.944088, 31.307396>,  <30.761820, 35.855053, 31.938631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602283, 35.944088, 31.307396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940805, 35.731457, 31.321239>,  <31.143919, 35.603878, 31.329546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940805, 35.731457, 31.321239>,  <30.602283, 35.944088, 31.307396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940805, 35.731457, 31.321239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426370, -0.714890, -0.554204,
		0.319344, 0.454268, -0.831661,
		0.846303, -0.531577, 0.034610,
		31.194696, 35.571983, 31.331623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724197, 35.685028, 30.668766>,  <30.602283, 35.944088, 31.307396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724197, 35.685028, 30.668766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972231, 35.448864, 30.875420>,  <31.121052, 35.307167, 30.999413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972231, 35.448864, 30.875420>,  <30.724197, 35.685028, 30.668766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972231, 35.448864, 30.875420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259752, -0.775887, -0.574916,
		0.740286, 0.222300, -0.634476,
		0.620086, -0.590408, 0.516635,
		31.158257, 35.271740, 31.030411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758289, 35.079311, 30.313818>,  <30.724197, 35.685028, 30.668766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758289, 35.079311, 30.313818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966236, 34.971474, 30.638054>,  <31.091003, 34.906769, 30.832596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966236, 34.971474, 30.638054>,  <30.758289, 35.079311, 30.313818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966236, 34.971474, 30.638054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048865, -0.937955, -0.343295,
		0.852850, 0.218077, -0.474436,
		0.519865, -0.269596, 0.810592,
		31.122196, 34.890594, 30.881231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259825, 35.211090, 29.860691>,  <30.758289, 35.079311, 30.313818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259825, 35.211090, 29.860691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204535, 34.860806, 29.675640>,  <30.171360, 34.650635, 29.564610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204535, 34.860806, 29.675640>,  <30.259825, 35.211090, 29.860691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204535, 34.860806, 29.675640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076955, 0.456203, -0.886542,
		0.987406, -0.158145, 0.004331,
		-0.138226, -0.875710, -0.462628,
		30.163067, 34.598091, 29.536852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847176, 35.051540, 29.532385>,  <30.259825, 35.211090, 29.860691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847176, 35.051540, 29.532385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500452, 34.933022, 29.371960>,  <30.292418, 34.861912, 29.275703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500452, 34.933022, 29.371960>,  <30.847176, 35.051540, 29.532385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500452, 34.933022, 29.371960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237923, 0.461096, -0.854859,
		0.438217, -0.836422, -0.329188,
		-0.866809, -0.296292, -0.401064,
		30.240410, 34.844131, 29.251640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824572, 34.777405, 28.950796>,  <30.847176, 35.051540, 29.532385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824572, 34.777405, 28.950796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450188, 34.906670, 28.894875>,  <30.225557, 34.984230, 28.861322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450188, 34.906670, 28.894875>,  <30.824572, 34.777405, 28.950796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450188, 34.906670, 28.894875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291508, 0.488490, -0.822436,
		-0.197488, -0.810521, -0.551412,
		-0.935960, 0.323162, -0.139803,
		30.169399, 35.003620, 28.852934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533058, 34.371677, 28.447557>,  <30.824572, 34.777405, 28.950796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533058, 34.371677, 28.447557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411291, 34.750889, 28.484604>,  <30.338232, 34.978416, 28.506832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411291, 34.750889, 28.484604>,  <30.533058, 34.371677, 28.447557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411291, 34.750889, 28.484604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489188, 0.239027, -0.838786,
		-0.817328, -0.210033, -0.536527,
		-0.304417, 0.948026, 0.092618,
		30.319965, 35.035297, 28.512388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751705, 34.498859, 27.762220>,  <30.533058, 34.371677, 28.447557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751705, 34.498859, 27.762220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375101, 34.608150, 27.841120>,  <30.149139, 34.673725, 27.888460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375101, 34.608150, 27.841120>,  <30.751705, 34.498859, 27.762220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375101, 34.608150, 27.841120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240809, -0.136035, -0.960992,
		-0.235742, -0.952281, 0.193874,
		-0.941508, 0.273233, 0.197248,
		30.092649, 34.690121, 27.900295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220951, 33.973186, 27.691601>,  <30.751705, 34.498859, 27.762220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220951, 33.973186, 27.691601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026194, 34.316639, 27.627501>,  <29.909340, 34.522713, 27.589041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026194, 34.316639, 27.627501>,  <30.220951, 33.973186, 27.691601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026194, 34.316639, 27.627501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281774, -0.328060, -0.901654,
		-0.826765, -0.393854, 0.401671,
		-0.486892, 0.858636, -0.160251,
		29.880125, 34.574230, 27.579426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694384, 33.725224, 27.236837>,  <30.220951, 33.973186, 27.691601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694384, 33.725224, 27.236837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757050, 34.114861, 27.171593>,  <29.794649, 34.348640, 27.132446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757050, 34.114861, 27.171593>,  <29.694384, 33.725224, 27.236837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757050, 34.114861, 27.171593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275726, -0.115450, -0.954278,
		-0.948384, 0.194475, 0.250495,
		0.156664, 0.974090, -0.163113,
		29.804049, 34.407089, 27.122660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181177, 34.108841, 26.683788>,  <29.694384, 33.725224, 27.236837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181177, 34.108841, 26.683788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519569, 34.317627, 26.727367>,  <29.722605, 34.442898, 26.753515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519569, 34.317627, 26.727367>,  <29.181177, 34.108841, 26.683788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519569, 34.317627, 26.727367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163396, -0.059277, -0.984778,
		-0.507560, 0.850905, -0.135434,
		0.845981, 0.521964, 0.108948,
		29.773363, 34.474216, 26.760052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072252, 34.611675, 26.216520>,  <29.181177, 34.108841, 26.683788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072252, 34.611675, 26.216520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463049, 34.567142, 26.289284>,  <29.697527, 34.540421, 26.332943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463049, 34.567142, 26.289284>,  <29.072252, 34.611675, 26.216520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463049, 34.567142, 26.289284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143602, -0.287223, -0.947038,
		0.157687, 0.951371, -0.264626,
		0.976992, -0.111334, 0.181910,
		29.756147, 34.533741, 26.343857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457321, 34.987331, 25.610415>,  <29.072252, 34.611675, 26.216520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457321, 34.987331, 25.610415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750935, 34.762249, 25.762497>,  <29.927103, 34.627201, 25.853746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750935, 34.762249, 25.762497>,  <29.457321, 34.987331, 25.610415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750935, 34.762249, 25.762497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238122, -0.311051, -0.920079,
		0.635995, 0.765906, -0.094330,
		0.734035, -0.562704, 0.380206,
		29.971146, 34.593437, 25.876558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072933, 35.199764, 25.337738>,  <29.457321, 34.987331, 25.610415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072933, 35.199764, 25.337738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156418, 34.827759, 25.458744>,  <30.206509, 34.604557, 25.531347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156418, 34.827759, 25.458744>,  <30.072933, 35.199764, 25.337738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156418, 34.827759, 25.458744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578081, -0.132184, -0.805202,
		0.788836, 0.342932, 0.510035,
		0.208711, -0.930013, 0.302514,
		30.219030, 34.548756, 25.549498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783838, 35.056576, 25.105261>,  <30.072933, 35.199764, 25.337738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783838, 35.056576, 25.105261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628515, 34.693321, 25.167879>,  <30.535322, 34.475368, 25.205450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628515, 34.693321, 25.167879>,  <30.783838, 35.056576, 25.105261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628515, 34.693321, 25.167879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476686, -0.343326, -0.809258,
		0.788663, -0.239616, 0.566211,
		-0.388306, -0.908136, 0.156547,
		30.512024, 34.420879, 25.214844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290592, 34.535423, 24.979290>,  <30.783838, 35.056576, 25.105261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290592, 34.535423, 24.979290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959013, 34.312057, 24.966560>,  <30.760065, 34.178036, 24.958921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959013, 34.312057, 24.966560>,  <31.290592, 34.535423, 24.979290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959013, 34.312057, 24.966560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248218, -0.316287, -0.915615,
		0.501229, -0.766898, 0.400795,
		-0.828949, -0.558418, -0.031826,
		30.710329, 34.144531, 24.957012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543697, 34.066723, 24.590132>,  <31.290592, 34.535423, 24.979290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543697, 34.066723, 24.590132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146420, 34.023827, 24.571939>,  <30.908052, 33.998089, 24.561024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146420, 34.023827, 24.571939>,  <31.543697, 34.066723, 24.590132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146420, 34.023827, 24.571939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062035, -0.156454, -0.985735,
		0.098595, -0.981846, 0.162041,
		-0.993192, -0.107240, -0.045483,
		30.848461, 33.991653, 24.558294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409782, 33.375996, 24.322708>,  <31.543697, 34.066723, 24.590132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409782, 33.375996, 24.322708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091377, 33.608295, 24.254475>,  <30.900333, 33.747673, 24.213535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091377, 33.608295, 24.254475>,  <31.409782, 33.375996, 24.322708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091377, 33.608295, 24.254475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032806, -0.240015, -0.970215,
		-0.604390, -0.777899, 0.172003,
		-0.796013, 0.580745, -0.170583,
		30.852573, 33.782520, 24.203300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965542, 32.912659, 23.969980>,  <31.409782, 33.375996, 24.322708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965542, 32.912659, 23.969980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875767, 33.294136, 23.889877>,  <30.821901, 33.523022, 23.841816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875767, 33.294136, 23.889877>,  <30.965542, 32.912659, 23.969980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875767, 33.294136, 23.889877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035570, -0.197345, -0.979688,
		-0.973839, -0.227000, 0.010368,
		-0.224436, 0.953690, -0.200257,
		30.808435, 33.580242, 23.829800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459787, 32.822445, 23.506975>,  <30.965542, 32.912659, 23.969980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459787, 32.822445, 23.506975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578245, 33.201603, 23.460012>,  <30.649321, 33.429100, 23.431835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578245, 33.201603, 23.460012>,  <30.459787, 32.822445, 23.506975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578245, 33.201603, 23.460012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037045, -0.134228, -0.990258,
		-0.954424, 0.288911, -0.074866,
		0.296146, 0.947899, -0.117408,
		30.667089, 33.485973, 23.424789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143938, 32.953285, 22.845655>,  <30.459787, 32.822445, 23.506975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143938, 32.953285, 22.845655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435760, 33.217846, 22.915285>,  <30.610853, 33.376583, 22.957062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435760, 33.217846, 22.915285>,  <30.143938, 32.953285, 22.845655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435760, 33.217846, 22.915285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271123, -0.046020, -0.961444,
		-0.627885, 0.748623, -0.212894,
		0.729556, 0.661397, 0.174073,
		30.654627, 33.416264, 22.967506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062840, 33.359741, 22.305628>,  <30.143938, 32.953285, 22.845655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062840, 33.359741, 22.305628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434523, 33.439625, 22.430008>,  <30.657532, 33.487556, 22.504637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434523, 33.439625, 22.430008>,  <30.062840, 33.359741, 22.305628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434523, 33.439625, 22.430008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254250, 0.265173, -0.930075,
		-0.268201, 0.943292, 0.195624,
		0.929207, 0.199709, 0.310952,
		30.713285, 33.499538, 22.523293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190477, 34.026886, 22.013756>,  <30.062840, 33.359741, 22.305628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190477, 34.026886, 22.013756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540815, 33.852966, 22.097513>,  <30.751019, 33.748615, 22.147768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540815, 33.852966, 22.097513>,  <30.190477, 34.026886, 22.013756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540815, 33.852966, 22.097513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330449, 0.224113, -0.916830,
		0.351709, 0.872195, 0.339967,
		0.875845, -0.434799, 0.209394,
		30.803570, 33.722527, 22.160332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672863, 34.474987, 21.782137>,  <30.190477, 34.026886, 22.013756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672863, 34.474987, 21.782137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890432, 34.142204, 21.825953>,  <31.020973, 33.942535, 21.852242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890432, 34.142204, 21.825953>,  <30.672863, 34.474987, 21.782137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890432, 34.142204, 21.825953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559415, 0.262208, -0.786322,
		0.625462, 0.488976, 0.608029,
		0.543922, -0.831955, 0.109539,
		31.053610, 33.892616, 21.858814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229828, 34.738773, 21.682346>,  <30.672863, 34.474987, 21.782137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229828, 34.738773, 21.682346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280659, 34.348297, 21.612036>,  <31.311157, 34.114010, 21.569849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280659, 34.348297, 21.612036>,  <31.229828, 34.738773, 21.682346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280659, 34.348297, 21.612036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517894, 0.216438, -0.827611,
		0.845953, 0.014136, 0.533069,
		0.127076, -0.976194, -0.175775,
		31.318781, 34.055439, 21.559303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922224, 34.646381, 21.698027>,  <31.229828, 34.738773, 21.682346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922224, 34.646381, 21.698027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761248, 34.356014, 21.474926>,  <31.664661, 34.181793, 21.341064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761248, 34.356014, 21.474926>,  <31.922224, 34.646381, 21.698027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761248, 34.356014, 21.474926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476389, 0.354205, -0.804731,
		0.781727, -0.589562, 0.203273,
		-0.402439, -0.725917, -0.557752,
		31.640516, 34.138241, 21.307600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499386, 34.575413, 21.266710>,  <31.922224, 34.646381, 21.698027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499386, 34.575413, 21.266710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204975, 34.370190, 21.090061>,  <32.028328, 34.247055, 20.984072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204975, 34.370190, 21.090061>,  <32.499386, 34.575413, 21.266710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204975, 34.370190, 21.090061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381281, 0.224864, -0.896694,
		0.559360, -0.828378, 0.030111,
		-0.736031, -0.513056, -0.441625,
		31.984165, 34.216274, 20.957573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816010, 34.022377, 21.009726>,  <32.499386, 34.575413, 21.266710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816010, 34.022377, 21.009726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483959, 34.092499, 20.798002>,  <32.284729, 34.134571, 20.670969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483959, 34.092499, 20.798002>,  <32.816010, 34.022377, 21.009726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483959, 34.092499, 20.798002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540843, 0.022293, -0.840828,
		-0.135600, -0.984262, -0.113317,
		-0.830121, 0.175304, -0.529308,
		32.234924, 34.145088, 20.639210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831371, 33.609806, 20.446766>,  <32.816010, 34.022377, 21.009726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831371, 33.609806, 20.446766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533291, 33.842041, 20.315556>,  <32.354443, 33.981380, 20.236830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533291, 33.842041, 20.315556>,  <32.831371, 33.609806, 20.446766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533291, 33.842041, 20.315556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417330, 0.022371, -0.908480,
		-0.520112, -0.813892, -0.258967,
		-0.745197, 0.580586, -0.328026,
		32.309731, 34.016216, 20.217148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478085, 33.272255, 19.837872>,  <32.831371, 33.609806, 20.446766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478085, 33.272255, 19.837872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412670, 33.666504, 19.820887>,  <32.373421, 33.903053, 19.810696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412670, 33.666504, 19.820887>,  <32.478085, 33.272255, 19.837872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412670, 33.666504, 19.820887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365602, 0.020572, -0.930544,
		-0.916292, -0.167702, -0.363710,
		-0.163536, 0.985623, -0.042462,
		32.363609, 33.962193, 19.808147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273853, 33.346840, 19.140808>,  <32.478085, 33.272255, 19.837872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273853, 33.346840, 19.140808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344410, 33.729507, 19.233479>,  <32.386745, 33.959106, 19.289082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344410, 33.729507, 19.233479>,  <32.273853, 33.346840, 19.140808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344410, 33.729507, 19.233479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372624, 0.152954, -0.915291,
		-0.911064, 0.247777, -0.329497,
		0.176390, 0.956667, 0.231678,
		32.397327, 34.016506, 19.302982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222008, 33.746227, 18.515673>,  <32.273853, 33.346840, 19.140808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222008, 33.746227, 18.515673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431557, 33.986900, 18.756847>,  <32.557285, 34.131306, 18.901552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431557, 33.986900, 18.756847>,  <32.222008, 33.746227, 18.515673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431557, 33.986900, 18.756847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444084, 0.411105, -0.796104,
		-0.726871, 0.684815, -0.051829,
		0.523877, 0.601682, 0.602936,
		32.588718, 34.167404, 18.937729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272491, 34.307823, 18.154263>,  <32.222008, 33.746227, 18.515673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272491, 34.307823, 18.154263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574005, 34.361610, 18.411549>,  <32.754913, 34.393883, 18.565920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574005, 34.361610, 18.411549>,  <32.272491, 34.307823, 18.154263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574005, 34.361610, 18.411549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609874, 0.221298, -0.760974,
		-0.244670, 0.965891, 0.084802,
		0.753784, 0.134469, 0.643216,
		32.800140, 34.401951, 18.604513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533527, 35.021252, 18.017397>,  <32.272491, 34.307823, 18.154263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533527, 35.021252, 18.017397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823669, 34.810631, 18.194757>,  <32.997757, 34.684258, 18.301174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823669, 34.810631, 18.194757>,  <32.533527, 35.021252, 18.017397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823669, 34.810631, 18.194757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654137, 0.326637, -0.682212,
		0.214387, 0.784892, 0.581363,
		0.725357, -0.526548, 0.443400,
		33.041275, 34.652668, 18.327778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023048, 35.476013, 18.210228>,  <32.533527, 35.021252, 18.017397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023048, 35.476013, 18.210228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169342, 35.107452, 18.157677>,  <33.257118, 34.886314, 18.126146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169342, 35.107452, 18.157677>,  <33.023048, 35.476013, 18.210228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169342, 35.107452, 18.157677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588747, 0.338363, -0.734089,
		0.720845, 0.191129, 0.666222,
		0.365731, -0.921401, -0.131380,
		33.279060, 34.831032, 18.118263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690674, 35.615314, 17.991203>,  <33.023048, 35.476013, 18.210228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690674, 35.615314, 17.991203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644573, 35.226322, 17.910217>,  <33.616913, 34.992928, 17.861626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644573, 35.226322, 17.910217>,  <33.690674, 35.615314, 17.991203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644573, 35.226322, 17.910217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591910, 0.096450, -0.800212,
		0.797721, -0.212065, 0.564508,
		-0.115250, -0.972484, -0.202463,
		33.609997, 34.934578, 17.849478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435833, 35.402119, 17.866270>,  <33.690674, 35.615314, 17.991203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435833, 35.402119, 17.866270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194748, 35.133228, 17.694294>,  <34.050098, 34.971893, 17.591108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194748, 35.133228, 17.694294>,  <34.435833, 35.402119, 17.866270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194748, 35.133228, 17.694294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548078, 0.042854, -0.835329,
		0.579958, -0.739101, 0.342606,
		-0.602711, -0.672230, -0.429938,
		34.013935, 34.931561, 17.565313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809612, 34.907772, 17.484133>,  <34.435833, 35.402119, 17.866270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809612, 34.907772, 17.484133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452183, 34.867290, 17.309193>,  <34.237724, 34.843002, 17.204227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452183, 34.867290, 17.309193>,  <34.809612, 34.907772, 17.484133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452183, 34.867290, 17.309193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437857, 0.018353, -0.898857,
		0.098996, -0.994696, 0.027913,
		-0.893577, -0.101205, -0.437351,
		34.184109, 34.836929, 17.177988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848415, 34.305202, 17.171724>,  <34.809612, 34.907772, 17.484133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848415, 34.305202, 17.171724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563065, 34.528088, 17.001734>,  <34.391853, 34.661819, 16.899740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563065, 34.528088, 17.001734>,  <34.848415, 34.305202, 17.171724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563065, 34.528088, 17.001734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605519, 0.184864, -0.774062,
		-0.352754, -0.809531, -0.469280,
		-0.713380, 0.557212, -0.424975,
		34.349049, 34.695251, 16.874241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874096, 34.084412, 16.520140>,  <34.848415, 34.305202, 17.171724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874096, 34.084412, 16.520140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696270, 34.439236, 16.470358>,  <34.589573, 34.652130, 16.440489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696270, 34.439236, 16.470358>,  <34.874096, 34.084412, 16.520140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696270, 34.439236, 16.470358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558155, 0.165658, -0.813032,
		-0.700590, -0.430911, -0.568762,
		-0.444564, 0.887059, -0.124456,
		34.562901, 34.705353, 16.433022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850086, 34.247044, 15.801322>,  <34.874096, 34.084412, 16.520140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850086, 34.247044, 15.801322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806969, 34.611652, 15.960071>,  <34.781097, 34.830418, 16.055319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806969, 34.611652, 15.960071>,  <34.850086, 34.247044, 15.801322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806969, 34.611652, 15.960071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644564, 0.368005, -0.670156,
		-0.756913, 0.183571, -0.627203,
		-0.107793, 0.911523, 0.396871,
		34.774632, 34.885109, 16.079132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697090, 34.780594, 15.175986>,  <34.850086, 34.247044, 15.801322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697090, 34.780594, 15.175986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833984, 35.004662, 15.477737>,  <34.916122, 35.139103, 15.658789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833984, 35.004662, 15.477737>,  <34.697090, 34.780594, 15.175986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833984, 35.004662, 15.477737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573413, 0.511511, -0.639964,
		-0.744360, 0.651590, -0.146149,
		0.342237, 0.560167, 0.754378,
		34.936657, 35.172710, 15.704051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725796, 35.370697, 14.914348>,  <34.697090, 34.780594, 15.175986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725796, 35.370697, 14.914348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963474, 35.427498, 15.231022>,  <35.106079, 35.461578, 15.421026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963474, 35.427498, 15.231022>,  <34.725796, 35.370697, 14.914348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963474, 35.427498, 15.231022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679594, 0.437838, -0.588600,
		-0.430215, 0.887768, 0.163654,
		0.594194, 0.142006, 0.791687,
		35.141731, 35.470100, 15.468528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002281, 36.124870, 14.821521>,  <34.725796, 35.370697, 14.914348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002281, 36.124870, 14.821521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236771, 35.909409, 15.063576>,  <35.377464, 35.780132, 15.208809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236771, 35.909409, 15.063576>,  <35.002281, 36.124870, 14.821521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236771, 35.909409, 15.063576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796967, 0.249240, -0.550203,
		0.145546, 0.804817, 0.575401,
		0.586225, -0.538655, 0.605137,
		35.412640, 35.747810, 15.245117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599358, 36.506432, 14.971319>,  <35.002281, 36.124870, 14.821521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599358, 36.506432, 14.971319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720570, 36.135899, 15.060827>,  <35.793297, 35.913578, 15.114532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720570, 36.135899, 15.060827>,  <35.599358, 36.506432, 14.971319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720570, 36.135899, 15.060827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872245, 0.175020, -0.456680,
		0.383875, 0.333572, 0.861028,
		0.303033, -0.926336, 0.223771,
		35.811478, 35.857998, 15.127958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354912, 36.597496, 15.147692>,  <35.599358, 36.506432, 14.971319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354912, 36.597496, 15.147692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294308, 36.214653, 15.048910>,  <36.257946, 35.984947, 14.989641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294308, 36.214653, 15.048910>,  <36.354912, 36.597496, 15.147692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294308, 36.214653, 15.048910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920695, -0.045741, -0.387593,
		0.359673, -0.286095, 0.888135,
		-0.151513, -0.957109, -0.246955,
		36.248856, 35.927521, 14.974824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944572, 36.317509, 15.312495>,  <36.354912, 36.597496, 15.147692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944572, 36.317509, 15.312495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775883, 36.051563, 15.065885>,  <36.674671, 35.891994, 14.917918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775883, 36.051563, 15.065885>,  <36.944572, 36.317509, 15.312495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775883, 36.051563, 15.065885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798304, 0.050165, -0.600162,
		0.429955, -0.745277, 0.509609,
		-0.421722, -0.664866, -0.616526,
		36.649364, 35.852104, 14.880927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425488, 35.784317, 15.296565>,  <36.944572, 36.317509, 15.312495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425488, 35.784317, 15.296565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208210, 35.758636, 14.961704>,  <37.077843, 35.743229, 14.760788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208210, 35.758636, 14.961704>,  <37.425488, 35.784317, 15.296565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208210, 35.758636, 14.961704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835820, -0.135974, -0.531898,
		-0.079681, -0.988630, 0.127523,
		-0.543190, -0.064204, -0.837151,
		37.045254, 35.739376, 14.710559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699745, 35.133972, 14.843811>,  <37.425488, 35.784317, 15.296565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699745, 35.133972, 14.843811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507832, 35.393345, 14.607389>,  <37.392685, 35.548969, 14.465536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507832, 35.393345, 14.607389>,  <37.699745, 35.133972, 14.843811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507832, 35.393345, 14.607389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837174, 0.136725, -0.529571,
		-0.262579, -0.748895, -0.608448,
		-0.479783, 0.648431, -0.591054,
		37.363895, 35.587875, 14.430073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854015, 34.984638, 14.135729>,  <37.699745, 35.133972, 14.843811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854015, 34.984638, 14.135729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728844, 35.363476, 14.107201>,  <37.653740, 35.590778, 14.090084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728844, 35.363476, 14.107201>,  <37.854015, 34.984638, 14.135729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728844, 35.363476, 14.107201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779840, 0.213352, -0.588498,
		-0.542147, -0.239778, -0.805347,
		-0.312931, 0.947094, -0.071320,
		37.634964, 35.647606, 14.085805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685181, 35.180752, 13.385685>,  <37.854015, 34.984638, 14.135729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685181, 35.180752, 13.385685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756916, 35.529446, 13.568078>,  <37.799957, 35.738663, 13.677514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756916, 35.529446, 13.568078>,  <37.685181, 35.180752, 13.385685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756916, 35.529446, 13.568078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712150, 0.204744, -0.671508,
		-0.678735, 0.445155, -0.584086,
		0.179337, 0.871732, 0.455984,
		37.810719, 35.790966, 13.704873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973286, 35.561855, 12.880645>,  <37.685181, 35.180752, 13.385685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973286, 35.561855, 12.880645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063671, 35.783508, 13.201113>,  <38.117901, 35.916500, 13.393394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063671, 35.783508, 13.201113>,  <37.973286, 35.561855, 12.880645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063671, 35.783508, 13.201113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738053, 0.439390, -0.512068,
		-0.635782, 0.707015, -0.309695,
		0.225963, 0.554135, 0.801171,
		38.131458, 35.949749, 13.441464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879093, 36.242661, 12.770553>,  <37.973286, 35.561855, 12.880645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879093, 36.242661, 12.770553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181377, 36.213058, 13.030837>,  <38.362747, 36.195297, 13.187008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181377, 36.213058, 13.030837>,  <37.879093, 36.242661, 12.770553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181377, 36.213058, 13.030837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640650, 0.289729, -0.711073,
		-0.135905, 0.954243, 0.266365,
		0.755710, -0.074008, 0.650711,
		38.408089, 36.190857, 13.226050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296303, 36.940857, 12.896544>,  <37.879093, 36.242661, 12.770553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296303, 36.940857, 12.896544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536152, 36.630074, 12.973269>,  <38.680061, 36.443604, 13.019302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536152, 36.630074, 12.973269>,  <38.296303, 36.940857, 12.896544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536152, 36.630074, 12.973269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642122, 0.324046, -0.694747,
		0.477635, 0.539749, 0.693207,
		0.599620, -0.776959, 0.191809,
		38.716038, 36.396984, 13.030811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947227, 37.263252, 13.063598>,  <38.296303, 36.940857, 12.896544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947227, 37.263252, 13.063598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968475, 36.892090, 12.915996>,  <38.981224, 36.669392, 12.827435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968475, 36.892090, 12.915996>,  <38.947227, 37.263252, 13.063598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968475, 36.892090, 12.915996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669176, 0.307360, -0.676560,
		0.741203, -0.210990, 0.637261,
		0.053121, -0.927908, -0.369005,
		38.984413, 36.613716, 12.805294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575424, 37.279072, 13.100845>,  <38.947227, 37.263252, 13.063598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575424, 37.279072, 13.100845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423271, 37.027134, 12.829966>,  <39.331978, 36.875969, 12.667438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423271, 37.027134, 12.829966>,  <39.575424, 37.279072, 13.100845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423271, 37.027134, 12.829966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541658, 0.441787, -0.715144,
		0.749610, -0.638839, 0.173115,
		-0.380382, -0.629848, -0.677200,
		39.309155, 36.838181, 12.626805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439838, 37.313107, 13.877643>,  <39.575424, 37.279072, 13.100845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439838, 37.313107, 13.877643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799702, 37.417454, 14.017675>,  <40.015621, 37.480064, 14.101695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799702, 37.417454, 14.017675>,  <39.439838, 37.313107, 13.877643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799702, 37.417454, 14.017675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184521, 0.499519, -0.846423,
		-0.395680, 0.826091, 0.401261,
		0.899661, 0.260872, 0.350081,
		40.069599, 37.495716, 14.122700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598595, 38.043659, 13.716313>,  <39.439838, 37.313107, 13.877643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598595, 38.043659, 13.716313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942947, 37.844612, 13.758746>,  <40.149559, 37.725182, 13.784205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942947, 37.844612, 13.758746>,  <39.598595, 38.043659, 13.716313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942947, 37.844612, 13.758746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339725, 0.406966, -0.847918,
		0.378771, 0.765997, 0.519405,
		0.860883, -0.497621, 0.106081,
		40.201214, 37.695324, 13.790570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901268, 38.259926, 13.019782>,  <39.598595, 38.043659, 13.716313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901268, 38.259926, 13.019782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260902, 38.424175, 12.959067>,  <40.476681, 38.522724, 12.922639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260902, 38.424175, 12.959067>,  <39.901268, 38.259926, 13.019782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260902, 38.424175, 12.959067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285496, -0.287116, 0.914361,
		0.331879, -0.865420, -0.375372,
		0.899082, 0.410624, -0.151786,
		40.530628, 38.547363, 12.913531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434246, 37.833954, 12.981820>,  <39.901268, 38.259926, 13.019782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434246, 37.833954, 12.981820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563755, 38.182430, 13.129442>,  <40.641460, 38.391514, 13.218016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563755, 38.182430, 13.129442>,  <40.434246, 37.833954, 12.981820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563755, 38.182430, 13.129442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024759, -0.397735, 0.917166,
		0.945809, -0.287819, -0.150347,
		0.323777, 0.871187, 0.369056,
		40.660889, 38.443787, 13.240159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146690, 37.724365, 13.293335>,  <40.434246, 37.833954, 12.981820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146690, 37.724365, 13.293335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895107, 37.996140, 13.444477>,  <40.744156, 38.159206, 13.535162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895107, 37.996140, 13.444477>,  <41.146690, 37.724365, 13.293335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895107, 37.996140, 13.444477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050195, -0.449521, 0.891858,
		0.775816, 0.579909, 0.248626,
		-0.628960, 0.679438, 0.377854,
		40.706421, 38.199970, 13.557834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396622, 37.838097, 13.998479>,  <41.146690, 37.724365, 13.293335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396622, 37.838097, 13.998479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009750, 37.930088, 13.955266>,  <40.777626, 37.985283, 13.929338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009750, 37.930088, 13.955266>,  <41.396622, 37.838097, 13.998479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009750, 37.930088, 13.955266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166024, -0.250139, 0.953869,
		0.192349, 0.940499, 0.280112,
		-0.967180, 0.229981, -0.108031,
		40.719597, 37.999081, 13.922856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146893, 38.037796, 14.675919>,  <41.396622, 37.838097, 13.998479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146893, 38.037796, 14.675919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821060, 37.888760, 14.498096>,  <40.625561, 37.799339, 14.391403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821060, 37.888760, 14.498096>,  <41.146893, 38.037796, 14.675919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821060, 37.888760, 14.498096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305315, -0.376233, 0.874775,
		-0.493188, 0.848308, 0.192716,
		-0.814585, -0.372589, -0.444555,
		40.576683, 37.776981, 14.364730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544346, 38.289436, 15.095192>,  <41.146893, 38.037796, 14.675919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544346, 38.289436, 15.095192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405598, 37.987804, 14.872108>,  <40.322350, 37.806824, 14.738257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405598, 37.987804, 14.872108>,  <40.544346, 38.289436, 15.095192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405598, 37.987804, 14.872108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446400, -0.390225, 0.805265,
		-0.824869, 0.528284, -0.201265,
		-0.346870, -0.754082, -0.557710,
		40.301537, 37.761581, 14.704794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816292, 38.189869, 15.284325>,  <40.544346, 38.289436, 15.095192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816292, 38.189869, 15.284325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903194, 37.836075, 15.119165>,  <39.955338, 37.623798, 15.020070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903194, 37.836075, 15.119165>,  <39.816292, 38.189869, 15.284325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903194, 37.836075, 15.119165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403168, -0.466545, 0.787268,
		-0.888963, -0.004571, -0.457956,
		0.217256, -0.884486, -0.412898,
		39.968372, 37.570728, 14.995296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194035, 37.806511, 15.248250>,  <39.816292, 38.189869, 15.284325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194035, 37.806511, 15.248250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501060, 37.551277, 15.223955>,  <39.685276, 37.398136, 15.209378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501060, 37.551277, 15.223955>,  <39.194035, 37.806511, 15.248250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501060, 37.551277, 15.223955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444887, -0.598573, 0.666173,
		-0.461430, -0.484311, -0.743320,
		0.767566, -0.638085, -0.060736,
		39.731331, 37.359852, 15.205734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858723, 37.120861, 15.160621>,  <39.194035, 37.806511, 15.248250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858723, 37.120861, 15.160621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235542, 37.067307, 15.283659>,  <39.461636, 37.035172, 15.357482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235542, 37.067307, 15.283659>,  <38.858723, 37.120861, 15.160621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235542, 37.067307, 15.283659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323752, -0.603091, 0.729017,
		0.087900, -0.786355, -0.611490,
		0.942050, -0.133891, 0.307596,
		39.518158, 37.027138, 15.375937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068100, 36.349617, 15.059410>,  <38.858723, 37.120861, 15.160621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068100, 36.349617, 15.059410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295048, 36.514080, 15.344798>,  <39.431217, 36.612759, 15.516031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295048, 36.514080, 15.344798>,  <39.068100, 36.349617, 15.059410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295048, 36.514080, 15.344798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421959, -0.598868, 0.680667,
		0.707135, -0.687246, -0.166291,
		0.567372, 0.411156, 0.713470,
		39.465260, 36.637428, 15.558839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275726, 35.762127, 15.424447>,  <39.068100, 36.349617, 15.059410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275726, 35.762127, 15.424447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347397, 36.059376, 15.682336>,  <39.390400, 36.237724, 15.837070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347397, 36.059376, 15.682336>,  <39.275726, 35.762127, 15.424447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347397, 36.059376, 15.682336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419822, -0.534912, 0.733225,
		0.889745, -0.402044, 0.216135,
		0.179175, 0.743121, 0.644722,
		39.401150, 36.282310, 15.875752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385101, 35.368244, 15.945285>,  <39.275726, 35.762127, 15.424447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385101, 35.368244, 15.945285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312515, 35.721996, 16.117300>,  <39.268963, 35.934250, 16.220509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312515, 35.721996, 16.117300>,  <39.385101, 35.368244, 15.945285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312515, 35.721996, 16.117300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476391, -0.461620, 0.748304,
		0.860303, -0.069073, 0.505082,
		-0.181468, 0.884385, 0.430039,
		39.258076, 35.987312, 16.246311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578403, 35.296455, 16.629011>,  <39.385101, 35.368244, 15.945285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578403, 35.296455, 16.629011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336693, 35.614994, 16.618479>,  <39.191666, 35.806118, 16.612160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336693, 35.614994, 16.618479>,  <39.578403, 35.296455, 16.629011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336693, 35.614994, 16.618479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520098, -0.369188, 0.770194,
		0.603616, 0.479103, 0.637266,
		-0.604273, 0.796342, -0.026333,
		39.155411, 35.853897, 16.610579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659241, 35.569370, 17.277126>,  <39.578403, 35.296455, 16.629011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659241, 35.569370, 17.277126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321896, 35.702240, 17.108177>,  <39.119488, 35.781960, 17.006807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321896, 35.702240, 17.108177>,  <39.659241, 35.569370, 17.277126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321896, 35.702240, 17.108177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513104, -0.264407, 0.816586,
		0.159567, 0.905401, 0.393429,
		-0.843364, 0.332170, -0.422375,
		39.068886, 35.801891, 16.981464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484634, 36.003651, 17.841385>,  <39.659241, 35.569370, 17.277126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484634, 36.003651, 17.841385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164082, 35.937614, 17.611420>,  <38.971748, 35.897991, 17.473440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164082, 35.937614, 17.611420>,  <39.484634, 36.003651, 17.841385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164082, 35.937614, 17.611420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579182, -0.025943, 0.814786,
		-0.149432, 0.985937, -0.074830,
		-0.801386, -0.165095, -0.574913,
		38.923664, 35.888084, 17.438946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103188, 36.558674, 18.075167>,  <39.484634, 36.003651, 17.841385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103188, 36.558674, 18.075167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883263, 36.276730, 17.895887>,  <38.751308, 36.107563, 17.788319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883263, 36.276730, 17.895887>,  <39.103188, 36.558674, 18.075167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883263, 36.276730, 17.895887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581910, -0.061726, 0.810907,
		-0.599240, 0.706657, -0.376226,
		-0.549811, -0.704858, -0.448199,
		38.718319, 36.065273, 17.761427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358902, 36.911674, 17.918333>,  <39.103188, 36.558674, 18.075167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358902, 36.911674, 17.918333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337811, 36.512684, 17.937315>,  <38.325157, 36.273289, 17.948704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337811, 36.512684, 17.937315>,  <38.358902, 36.911674, 17.918333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337811, 36.512684, 17.937315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805708, 0.070568, 0.588095,
		-0.589962, -0.007227, -0.807399,
		-0.052726, -0.997481, 0.047455,
		38.321991, 36.213440, 17.951551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668533, 36.736160, 17.944143>,  <38.358902, 36.911674, 17.918333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668533, 36.736160, 17.944143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827469, 36.392052, 18.071930>,  <37.922829, 36.185589, 18.148602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827469, 36.392052, 18.071930>,  <37.668533, 36.736160, 17.944143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827469, 36.392052, 18.071930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775066, -0.128212, 0.618736,
		-0.491320, -0.493455, -0.717710,
		0.397337, -0.860270, 0.319467,
		37.946671, 36.133972, 18.167770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114483, 36.342278, 18.019316>,  <37.668533, 36.736160, 17.944143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114483, 36.342278, 18.019316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396709, 36.211449, 18.270777>,  <37.566044, 36.132950, 18.421654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396709, 36.211449, 18.270777>,  <37.114483, 36.342278, 18.019316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396709, 36.211449, 18.270777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685877, -0.092113, 0.721864,
		-0.178199, -0.940497, -0.289327,
		0.705562, -0.327078, 0.628651,
		37.608379, 36.113327, 18.459372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832966, 35.776093, 18.369387>,  <37.114483, 36.342278, 18.019316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832966, 35.776093, 18.369387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143082, 35.889957, 18.594915>,  <37.329151, 35.958275, 18.730232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143082, 35.889957, 18.594915>,  <36.832966, 35.776093, 18.369387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143082, 35.889957, 18.594915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568314, -0.075084, 0.819379,
		0.275577, -0.955684, 0.103563,
		0.775291, 0.284658, 0.563821,
		37.375668, 35.975353, 18.764061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768948, 35.452484, 18.958010>,  <36.832966, 35.776093, 18.369387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768948, 35.452484, 18.958010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011894, 35.744244, 19.083918>,  <37.157661, 35.919300, 19.159462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011894, 35.744244, 19.083918>,  <36.768948, 35.452484, 18.958010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011894, 35.744244, 19.083918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403588, -0.057981, 0.913102,
		0.684268, -0.681626, 0.259162,
		0.607367, 0.729400, 0.314770,
		37.194103, 35.963062, 19.178349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909668, 35.252106, 19.546036>,  <36.768948, 35.452484, 18.958010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909668, 35.252106, 19.546036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992519, 35.641380, 19.586046>,  <37.042233, 35.874947, 19.610052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992519, 35.641380, 19.586046>,  <36.909668, 35.252106, 19.546036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992519, 35.641380, 19.586046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497505, 0.016746, 0.867299,
		0.842369, -0.229407, 0.487634,
		0.207130, 0.973187, 0.100025,
		37.054657, 35.933338, 19.616055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075603, 35.428928, 20.278734>,  <36.909668, 35.252106, 19.546036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075603, 35.428928, 20.278734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020981, 35.802982, 20.147963>,  <36.988205, 36.027412, 20.069500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020981, 35.802982, 20.147963>,  <37.075603, 35.428928, 20.278734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020981, 35.802982, 20.147963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427824, 0.241984, 0.870867,
		0.893487, 0.258792, 0.367026,
		-0.136559, 0.935131, -0.326927,
		36.980015, 36.083523, 20.049885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193661, 35.864140, 20.848898>,  <37.075603, 35.428928, 20.278734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193661, 35.864140, 20.848898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966389, 36.065300, 20.588356>,  <36.830025, 36.185997, 20.432030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966389, 36.065300, 20.588356>,  <37.193661, 35.864140, 20.848898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966389, 36.065300, 20.588356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608925, 0.275478, 0.743856,
		0.553522, 0.819268, 0.149711,
		-0.568176, 0.502903, -0.651356,
		36.795937, 36.216171, 20.392950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097622, 36.505135, 21.175781>,  <37.193661, 35.864140, 20.848898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097622, 36.505135, 21.175781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789135, 36.450230, 20.927141>,  <36.604042, 36.417286, 20.777958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789135, 36.450230, 20.927141>,  <37.097622, 36.505135, 21.175781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789135, 36.450230, 20.927141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636046, 0.205903, 0.743673,
		0.025910, 0.968898, -0.246102,
		-0.771216, -0.137264, -0.621598,
		36.557770, 36.409050, 20.740662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609039, 37.053986, 21.310839>,  <37.097622, 36.505135, 21.175781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609039, 37.053986, 21.310839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412384, 36.761993, 21.120928>,  <36.294392, 36.586796, 21.006981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412384, 36.761993, 21.120928>,  <36.609039, 37.053986, 21.310839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412384, 36.761993, 21.120928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686422, -0.010620, 0.727127,
		-0.535832, 0.683383, -0.495855,
		-0.491640, -0.729983, -0.474779,
		36.264893, 36.542999, 20.978495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901894, 37.357327, 21.304255>,  <36.609039, 37.053986, 21.310839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901894, 37.357327, 21.304255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867378, 36.967590, 21.221102>,  <35.846668, 36.733749, 21.171209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867378, 36.967590, 21.221102>,  <35.901894, 37.357327, 21.304255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867378, 36.967590, 21.221102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649132, -0.103304, 0.753628,
		-0.755765, 0.199974, -0.623561,
		-0.086290, -0.974340, -0.207883,
		35.841492, 36.675289, 21.158737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161209, 37.236748, 21.353197>,  <35.901894, 37.357327, 21.304255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161209, 37.236748, 21.353197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316429, 36.869289, 21.382906>,  <35.409561, 36.648815, 21.400732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316429, 36.869289, 21.382906>,  <35.161209, 37.236748, 21.353197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316429, 36.869289, 21.382906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627168, -0.204152, 0.751653,
		-0.675337, -0.338257, -0.655364,
		0.388046, -0.918643, 0.074272,
		35.432842, 36.593697, 21.405188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656475, 36.847385, 21.380831>,  <35.161209, 37.236748, 21.353197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656475, 36.847385, 21.380831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942348, 36.612110, 21.532230>,  <35.113873, 36.470947, 21.623070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942348, 36.612110, 21.532230>,  <34.656475, 36.847385, 21.380831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942348, 36.612110, 21.532230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586724, -0.209563, 0.782201,
		-0.380759, -0.781103, -0.494875,
		0.714687, -0.588185, 0.378499,
		35.156754, 36.435654, 21.645781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270000, 36.268497, 21.612682>,  <34.656475, 36.847385, 21.380831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270000, 36.268497, 21.612682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606445, 36.307255, 21.825529>,  <34.808311, 36.330509, 21.953238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606445, 36.307255, 21.825529>,  <34.270000, 36.268497, 21.612682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606445, 36.307255, 21.825529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522969, -0.105286, 0.845824,
		0.137984, -0.989710, -0.037882,
		0.841109, 0.096899, 0.532115,
		34.858780, 36.336323, 21.985163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132095, 35.813862, 22.069868>,  <34.270000, 36.268497, 21.612682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132095, 35.813862, 22.069868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451641, 36.006763, 22.213673>,  <34.643368, 36.122505, 22.299955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451641, 36.006763, 22.213673>,  <34.132095, 35.813862, 22.069868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451641, 36.006763, 22.213673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427268, 0.034257, 0.903476,
		0.423391, -0.875360, 0.233420,
		0.798863, 0.482257, 0.359509,
		34.691299, 36.151440, 22.321526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345135, 35.409065, 22.530153>,  <34.132095, 35.813862, 22.069868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345135, 35.409065, 22.530153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470505, 35.777168, 22.623873>,  <34.545727, 35.998028, 22.680103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470505, 35.777168, 22.623873>,  <34.345135, 35.409065, 22.530153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470505, 35.777168, 22.623873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483305, -0.057795, 0.873542,
		0.817422, -0.387029, 0.426649,
		0.313428, 0.920254, 0.234296,
		34.564533, 36.053246, 22.694162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591782, 35.437027, 23.253326>,  <34.345135, 35.409065, 22.530153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591782, 35.437027, 23.253326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515671, 35.816330, 23.151651>,  <34.470005, 36.043911, 23.090647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515671, 35.816330, 23.151651>,  <34.591782, 35.437027, 23.253326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515671, 35.816330, 23.151651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433678, 0.151098, 0.888309,
		0.880749, 0.279259, 0.382487,
		-0.190275, 0.948253, -0.254188,
		34.458588, 36.100807, 23.075396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548038, 35.708435, 23.875668>,  <34.591782, 35.437027, 23.253326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548038, 35.708435, 23.875668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366360, 35.981480, 23.646671>,  <34.257351, 36.145306, 23.509274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366360, 35.981480, 23.646671>,  <34.548038, 35.708435, 23.875668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366360, 35.981480, 23.646671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569249, 0.271951, 0.775886,
		0.685318, 0.678295, 0.265056,
		-0.454197, 0.682612, -0.572492,
		34.230103, 36.186264, 23.474924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592113, 36.256855, 24.244352>,  <34.548038, 35.708435, 23.875668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592113, 36.256855, 24.244352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285023, 36.327995, 23.998114>,  <34.100769, 36.370678, 23.850370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285023, 36.327995, 23.998114>,  <34.592113, 36.256855, 24.244352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285023, 36.327995, 23.998114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561815, 0.275170, 0.780158,
		0.308144, 0.944802, -0.111338,
		-0.767731, 0.177850, -0.615596,
		34.054703, 36.381351, 23.813435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268108, 36.817204, 24.513744>,  <34.592113, 36.256855, 24.244352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268108, 36.817204, 24.513744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987736, 36.649662, 24.282833>,  <33.819511, 36.549137, 24.144287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987736, 36.649662, 24.282833>,  <34.268108, 36.817204, 24.513744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987736, 36.649662, 24.282833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614523, -0.056145, 0.786898,
		-0.362009, 0.906315, -0.218043,
		-0.700936, -0.418856, -0.577277,
		33.777454, 36.524006, 24.109650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722351, 36.865601, 24.977108>,  <34.268108, 36.817204, 24.513744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722351, 36.865601, 24.977108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571793, 36.627556, 24.693089>,  <33.481457, 36.484730, 24.522676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571793, 36.627556, 24.693089>,  <33.722351, 36.865601, 24.977108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571793, 36.627556, 24.693089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551000, -0.472341, 0.687963,
		-0.744800, 0.650181, -0.150121,
		-0.376392, -0.595112, -0.710050,
		33.458874, 36.449020, 24.480074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992336, 37.003426, 24.940920>,  <33.722351, 36.865601, 24.977108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992336, 37.003426, 24.940920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068607, 36.626865, 24.829638>,  <33.114372, 36.400928, 24.762869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068607, 36.626865, 24.829638>,  <32.992336, 37.003426, 24.940920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068607, 36.626865, 24.829638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629660, -0.334717, 0.701065,
		-0.753106, 0.041495, -0.656589,
		0.190681, -0.941404, -0.278205,
		33.125813, 36.344444, 24.746176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358479, 36.692348, 25.002308>,  <32.992336, 37.003426, 24.940920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358479, 36.692348, 25.002308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631550, 36.400124, 24.996401>,  <32.795395, 36.224789, 24.992857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631550, 36.400124, 24.996401>,  <32.358479, 36.692348, 25.002308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631550, 36.400124, 24.996401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504327, -0.485706, 0.713964,
		-0.528773, -0.479960, -0.700027,
		0.682681, -0.730567, -0.014772,
		32.836353, 36.180954, 24.991970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951529, 36.201801, 24.933121>,  <32.358479, 36.692348, 25.002308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951529, 36.201801, 24.933121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299164, 36.048843, 25.058636>,  <32.507744, 35.957069, 25.133944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299164, 36.048843, 25.058636>,  <31.951529, 36.201801, 24.933121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299164, 36.048843, 25.058636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484706, -0.531721, 0.694502,
		-0.098727, -0.755677, -0.647460,
		0.869087, -0.382394, 0.313786,
		32.559891, 35.934124, 25.152771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745754, 35.542484, 24.930916>,  <31.951529, 36.201801, 24.933121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745754, 35.542484, 24.930916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073940, 35.578022, 25.156815>,  <32.270851, 35.599346, 25.292355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073940, 35.578022, 25.156815>,  <31.745754, 35.542484, 24.930916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073940, 35.578022, 25.156815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401258, -0.614152, 0.679566,
		0.407219, -0.784170, -0.468240,
		0.820466, 0.088847, 0.564749,
		32.320080, 35.604675, 25.326239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975166, 34.853954, 25.151817>,  <31.745754, 35.542484, 24.930916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975166, 34.853954, 25.151817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108009, 35.113171, 25.425968>,  <32.187714, 35.268700, 25.590458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108009, 35.113171, 25.425968>,  <31.975166, 34.853954, 25.151817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108009, 35.113171, 25.425968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485331, -0.505651, 0.713281,
		0.808800, -0.569522, 0.146585,
		0.332109, 0.648044, 0.685378,
		32.207642, 35.307583, 25.631582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104355, 34.477364, 25.763430>,  <31.975166, 34.853954, 25.151817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104355, 34.477364, 25.763430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091400, 34.852802, 25.900827>,  <32.083630, 35.078064, 25.983267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091400, 34.852802, 25.900827>,  <32.104355, 34.477364, 25.763430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091400, 34.852802, 25.900827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545733, -0.304527, 0.780665,
		0.837333, -0.162178, 0.522084,
		-0.032382, 0.938595, 0.343496,
		32.081684, 35.134380, 26.003876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299232, 34.550667, 26.476519>,  <32.104355, 34.477364, 25.763430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299232, 34.550667, 26.476519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075851, 34.879993, 26.435961>,  <31.941824, 35.077591, 26.411627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075851, 34.879993, 26.435961>,  <32.299232, 34.550667, 26.476519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075851, 34.879993, 26.435961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497757, -0.234799, 0.834929,
		0.663606, 0.516734, 0.540936,
		-0.558448, 0.823319, -0.101394,
		31.908318, 35.126987, 26.405542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377102, 33.824821, 26.314709>,  <32.299232, 34.550667, 26.476519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377102, 33.824821, 26.314709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617702, 33.584827, 26.525696>,  <32.762062, 33.440830, 26.652288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617702, 33.584827, 26.525696>,  <32.377102, 33.824821, 26.314709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617702, 33.584827, 26.525696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731004, 0.147045, -0.666342,
		0.322232, 0.786383, 0.527037,
		0.601498, -0.599983, 0.527466,
		32.798153, 33.404831, 26.683935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002792, 34.209126, 26.378092>,  <32.377102, 33.824821, 26.314709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002792, 34.209126, 26.378092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141891, 33.849552, 26.484674>,  <33.225349, 33.633808, 26.548624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141891, 33.849552, 26.484674>,  <33.002792, 34.209126, 26.378092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141891, 33.849552, 26.484674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846479, 0.178799, -0.501503,
		0.403173, 0.399946, 0.823101,
		0.347744, -0.898930, 0.266458,
		33.246216, 33.579872, 26.564611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641918, 34.298534, 26.554235>,  <33.002792, 34.209126, 26.378092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641918, 34.298534, 26.554235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647659, 33.909210, 26.462616>,  <33.651104, 33.675617, 26.407644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647659, 33.909210, 26.462616>,  <33.641918, 34.298534, 26.554235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647659, 33.909210, 26.462616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837190, 0.136947, -0.529488,
		0.546723, -0.184161, 0.816810,
		0.014349, -0.973309, -0.229050,
		33.651962, 33.617218, 26.393902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325077, 34.112057, 26.547901>,  <33.641918, 34.298534, 26.554235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325077, 34.112057, 26.547901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153362, 33.825371, 26.328074>,  <34.050335, 33.653358, 26.196177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153362, 33.825371, 26.328074>,  <34.325077, 34.112057, 26.547901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153362, 33.825371, 26.328074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809121, -0.034824, -0.586610,
		0.401296, -0.696491, 0.594862,
		-0.429284, -0.716720, -0.549571,
		34.024578, 33.610355, 26.163202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858341, 33.570686, 26.430414>,  <34.325077, 34.112057, 26.547901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858341, 33.570686, 26.430414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590115, 33.509426, 26.140066>,  <34.429180, 33.472672, 25.965858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590115, 33.509426, 26.140066>,  <34.858341, 33.570686, 26.430414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590115, 33.509426, 26.140066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741846, -0.141397, -0.655493,
		-0.002245, -0.978034, 0.208432,
		-0.670567, -0.153153, -0.725868,
		34.388943, 33.463482, 25.922306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186523, 33.156921, 26.052895>,  <34.858341, 33.570686, 26.430414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186523, 33.156921, 26.052895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900009, 33.267784, 25.796734>,  <34.728100, 33.334301, 25.643038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900009, 33.267784, 25.796734>,  <35.186523, 33.156921, 26.052895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900009, 33.267784, 25.796734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662481, -0.018198, -0.748858,
		-0.219209, -0.960651, -0.170580,
		-0.716286, 0.277162, -0.640402,
		34.685123, 33.350933, 25.604612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277515, 32.630219, 25.405361>,  <35.186523, 33.156921, 26.052895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277515, 32.630219, 25.405361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064339, 32.955021, 25.310186>,  <34.936432, 33.149902, 25.253080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064339, 32.955021, 25.310186>,  <35.277515, 32.630219, 25.405361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064339, 32.955021, 25.310186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555486, 0.123632, -0.822283,
		-0.638284, -0.570403, -0.516948,
		-0.532944, 0.812007, -0.237939,
		34.904457, 33.198624, 25.238804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069115, 32.603840, 24.696005>,  <35.277515, 32.630219, 25.405361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069115, 32.603840, 24.696005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043919, 32.994022, 24.780397>,  <35.028801, 33.228134, 24.831034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043919, 32.994022, 24.780397>,  <35.069115, 32.603840, 24.696005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043919, 32.994022, 24.780397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681223, 0.196517, -0.705207,
		-0.729362, 0.099306, -0.676883,
		-0.062987, 0.975459, 0.210982,
		35.025021, 33.286659, 24.843693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285469, 32.834579, 24.093683>,  <35.069115, 32.603840, 24.696005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285469, 32.834579, 24.093683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341797, 33.129478, 24.357994>,  <35.375595, 33.306419, 24.516581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341797, 33.129478, 24.357994>,  <35.285469, 32.834579, 24.093683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341797, 33.129478, 24.357994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799896, 0.308561, -0.514739,
		-0.583383, 0.601041, -0.546273,
		0.140821, 0.737252, 0.660779,
		35.384045, 33.350655, 24.556229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271492, 33.522789, 23.708048>,  <35.285469, 32.834579, 24.093683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271492, 33.522789, 23.708048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476948, 33.597260, 24.043074>,  <35.600220, 33.641941, 24.244089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476948, 33.597260, 24.043074>,  <35.271492, 33.522789, 23.708048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476948, 33.597260, 24.043074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740085, 0.397756, -0.542277,
		-0.434106, 0.898403, 0.066515,
		0.513640, 0.186179, 0.837563,
		35.631039, 33.653114, 24.294342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498428, 34.245811, 23.614931>,  <35.271492, 33.522789, 23.708048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498428, 34.245811, 23.614931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717682, 34.094955, 23.913546>,  <35.849232, 34.004440, 24.092714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717682, 34.094955, 23.913546>,  <35.498428, 34.245811, 23.614931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717682, 34.094955, 23.913546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833932, 0.314862, -0.453232,
		-0.064123, 0.870991, 0.487096,
		0.548130, -0.377143, 0.746537,
		35.882122, 33.981812, 24.137506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892658, 34.714108, 23.885765>,  <35.498428, 34.245811, 23.614931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892658, 34.714108, 23.885765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086571, 34.370926, 23.953772>,  <36.202919, 34.165016, 23.994576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086571, 34.370926, 23.953772>,  <35.892658, 34.714108, 23.885765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086571, 34.370926, 23.953772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748278, 0.306189, -0.588497,
		0.452845, 0.412512, 0.790421,
		0.484780, -0.857952, 0.170017,
		36.232006, 34.113541, 24.004776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605152, 34.856903, 24.100565>,  <35.892658, 34.714108, 23.885765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605152, 34.856903, 24.100565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640656, 34.491180, 23.942495>,  <36.661957, 34.271748, 23.847654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640656, 34.491180, 23.942495>,  <36.605152, 34.856903, 24.100565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640656, 34.491180, 23.942495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877780, 0.259315, -0.402813,
		0.470769, -0.311120, 0.825579,
		0.088762, -0.914309, -0.395172,
		36.667286, 34.216888, 23.823944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328461, 34.783787, 23.992666>,  <36.605152, 34.856903, 24.100565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328461, 34.783787, 23.992666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178192, 34.461437, 23.809610>,  <37.088032, 34.268028, 23.699778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178192, 34.461437, 23.809610>,  <37.328461, 34.783787, 23.992666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178192, 34.461437, 23.809610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759961, 0.014738, -0.649802,
		0.530405, -0.591900, 0.606898,
		-0.375674, -0.805877, -0.457638,
		37.065491, 34.219673, 23.672319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922436, 34.294426, 23.923601>,  <37.328461, 34.783787, 23.992666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922436, 34.294426, 23.923601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641190, 34.243664, 23.643738>,  <37.472443, 34.213207, 23.475821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641190, 34.243664, 23.643738>,  <37.922436, 34.294426, 23.923601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641190, 34.243664, 23.643738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708795, -0.046375, -0.703888,
		0.056885, -0.990829, 0.122562,
		-0.703117, -0.126912, -0.699657,
		37.430256, 34.205589, 23.433840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138237, 33.745487, 23.581253>,  <37.922436, 34.294426, 23.923601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138237, 33.745487, 23.581253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865219, 33.905926, 23.336874>,  <37.701408, 34.002190, 23.190247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865219, 33.905926, 23.336874>,  <38.138237, 33.745487, 23.581253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865219, 33.905926, 23.336874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690523, 0.080100, -0.718862,
		-0.239393, -0.912529, -0.331635,
		-0.682546, 0.401093, -0.610946,
		37.660454, 34.026253, 23.153589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273422, 33.468239, 22.967941>,  <38.138237, 33.745487, 23.581253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273422, 33.468239, 22.967941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045273, 33.782040, 22.870594>,  <37.908382, 33.970322, 22.812185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045273, 33.782040, 22.870594>,  <38.273422, 33.468239, 22.967941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045273, 33.782040, 22.870594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625467, 0.222769, -0.747773,
		-0.532417, -0.578728, -0.617743,
		-0.570371, 0.784505, -0.243369,
		37.874161, 34.017391, 22.797583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059376, 33.443001, 22.240583>,  <38.273422, 33.468239, 22.967941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059376, 33.443001, 22.240583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038731, 33.830517, 22.337559>,  <38.026344, 34.063026, 22.395744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038731, 33.830517, 22.337559>,  <38.059376, 33.443001, 22.240583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038731, 33.830517, 22.337559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580895, 0.226592, -0.781803,
		-0.812340, 0.100478, -0.574463,
		-0.051614, 0.968793, 0.242437,
		38.023247, 34.121155, 22.410290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892906, 33.841236, 21.602577>,  <38.059376, 33.443001, 22.240583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892906, 33.841236, 21.602577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072315, 34.091084, 21.858290>,  <38.179962, 34.240990, 22.011717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072315, 34.091084, 21.858290>,  <37.892906, 33.841236, 21.602577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072315, 34.091084, 21.858290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488452, 0.427698, -0.760585,
		-0.748493, 0.653399, -0.113262,
		0.448523, 0.624616, 0.639283,
		38.206871, 34.278469, 22.050076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713272, 34.398270, 21.303314>,  <37.892906, 33.841236, 21.602577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713272, 34.398270, 21.303314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044178, 34.459759, 21.519464>,  <38.242722, 34.496651, 21.649155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044178, 34.459759, 21.519464>,  <37.713272, 34.398270, 21.303314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044178, 34.459759, 21.519464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455454, 0.379637, -0.805256,
		-0.328933, 0.912275, 0.244045,
		0.827263, 0.153724, 0.540375,
		38.292358, 34.505875, 21.681578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851742, 34.966812, 20.959011>,  <37.713272, 34.398270, 21.303314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851742, 34.966812, 20.959011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164543, 34.841450, 21.174509>,  <38.352222, 34.766232, 21.303808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164543, 34.841450, 21.174509>,  <37.851742, 34.966812, 20.959011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164543, 34.841450, 21.174509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612666, 0.227723, -0.756824,
		0.114509, 0.921910, 0.370094,
		0.782003, -0.313407, 0.538746,
		38.399143, 34.747429, 21.336132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441658, 35.394691, 20.737692>,  <37.851742, 34.966812, 20.959011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441658, 35.394691, 20.737692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618206, 35.081226, 20.912539>,  <38.724136, 34.893147, 21.017447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618206, 35.081226, 20.912539>,  <38.441658, 35.394691, 20.737692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618206, 35.081226, 20.912539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566614, -0.134333, -0.812959,
		0.695802, 0.606493, 0.384741,
		0.441371, -0.783659, 0.437117,
		38.750618, 34.846130, 21.043674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142895, 35.520111, 20.632975>,  <38.441658, 35.394691, 20.737692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142895, 35.520111, 20.632975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113377, 35.126003, 20.694689>,  <39.095665, 34.889538, 20.731718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113377, 35.126003, 20.694689>,  <39.142895, 35.520111, 20.632975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113377, 35.126003, 20.694689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523943, -0.169939, -0.834628,
		0.848551, 0.019245, 0.528764,
		-0.073795, -0.985266, 0.154286,
		39.091240, 34.830421, 20.740974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799603, 35.331009, 20.532799>,  <39.142895, 35.520111, 20.632975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799603, 35.331009, 20.532799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587856, 34.993931, 20.493530>,  <39.460808, 34.791683, 20.469969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587856, 34.993931, 20.493530>,  <39.799603, 35.331009, 20.532799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587856, 34.993931, 20.493530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585475, -0.279114, -0.761127,
		0.613998, -0.460389, 0.641130,
		-0.529363, -0.842697, -0.098171,
		39.429047, 34.741123, 20.464079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236092, 34.754753, 20.360546>,  <39.799603, 35.331009, 20.532799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236092, 34.754753, 20.360546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878056, 34.647175, 20.218290>,  <39.663235, 34.582626, 20.132936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878056, 34.647175, 20.218290>,  <40.236092, 34.754753, 20.360546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878056, 34.647175, 20.218290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428234, -0.296334, -0.853699,
		0.124213, -0.916435, 0.380419,
		-0.895090, -0.268949, -0.355640,
		39.609528, 34.566490, 20.111599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342083, 34.103989, 20.013420>,  <40.236092, 34.754753, 20.360546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342083, 34.103989, 20.013420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991062, 34.222168, 19.862360>,  <39.780449, 34.293076, 19.771725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991062, 34.222168, 19.862360>,  <40.342083, 34.103989, 20.013420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991062, 34.222168, 19.862360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240829, -0.409462, -0.879967,
		-0.414690, -0.863139, 0.288139,
		-0.877516, 0.295521, -0.377669,
		39.727798, 34.310802, 19.749065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113857, 33.600803, 19.667973>,  <40.342083, 34.103989, 20.013420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113857, 33.600803, 19.667973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880959, 33.883667, 19.507515>,  <39.741219, 34.053383, 19.411240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880959, 33.883667, 19.507515>,  <40.113857, 33.600803, 19.667973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880959, 33.883667, 19.507515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176243, -0.371891, -0.911392,
		-0.793678, -0.601355, 0.091902,
		-0.582248, 0.707155, -0.401146,
		39.706284, 34.095814, 19.387171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634861, 33.259003, 19.285084>,  <40.113857, 33.600803, 19.667973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634861, 33.259003, 19.285084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667007, 33.625351, 19.127747>,  <39.686295, 33.845161, 19.033344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667007, 33.625351, 19.127747>,  <39.634861, 33.259003, 19.285084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667007, 33.625351, 19.127747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140611, -0.380255, -0.914131,
		-0.986798, 0.128770, 0.098224,
		0.080362, 0.915874, -0.393341,
		39.691116, 33.900112, 19.009745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089424, 33.308678, 18.743120>,  <39.634861, 33.259003, 19.285084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089424, 33.308678, 18.743120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379009, 33.566216, 18.644051>,  <39.552761, 33.720737, 18.584608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379009, 33.566216, 18.644051>,  <39.089424, 33.308678, 18.743120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379009, 33.566216, 18.644051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107577, -0.460010, -0.881373,
		-0.681402, 0.611435, -0.402292,
		0.723960, 0.643846, -0.247675,
		39.596199, 33.759369, 18.569748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017124, 33.453762, 18.007999>,  <39.089424, 33.308678, 18.743120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017124, 33.453762, 18.007999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392300, 33.571278, 18.081713>,  <39.617405, 33.641788, 18.125940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392300, 33.571278, 18.081713>,  <39.017124, 33.453762, 18.007999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392300, 33.571278, 18.081713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280997, -0.332355, -0.900323,
		-0.203257, 0.896230, -0.394282,
		0.937938, 0.293789, 0.184285,
		39.673679, 33.659416, 18.136997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290211, 33.800888, 17.386736>,  <39.017124, 33.453762, 18.007999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290211, 33.800888, 17.386736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622280, 33.722786, 17.595617>,  <39.821522, 33.675926, 17.720945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622280, 33.722786, 17.595617>,  <39.290211, 33.800888, 17.386736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622280, 33.722786, 17.595617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447892, -0.324180, -0.833247,
		0.331981, 0.925626, -0.181672,
		0.830169, -0.195252, 0.522202,
		39.871330, 33.664211, 17.752277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945175, 34.145683, 17.059086>,  <39.290211, 33.800888, 17.386736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945175, 34.145683, 17.059086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093857, 33.846245, 17.278702>,  <40.183067, 33.666584, 17.410471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093857, 33.846245, 17.278702>,  <39.945175, 34.145683, 17.059086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093857, 33.846245, 17.278702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540102, -0.306642, -0.783748,
		0.755065, 0.587862, 0.290335,
		0.371707, -0.748592, 0.549040,
		40.205368, 33.621666, 17.443415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577469, 34.046074, 16.779957>,  <39.945175, 34.145683, 17.059086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577469, 34.046074, 16.779957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473309, 33.708744, 16.967995>,  <40.410812, 33.506344, 17.080816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473309, 33.708744, 16.967995>,  <40.577469, 34.046074, 16.779957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473309, 33.708744, 16.967995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235528, -0.527666, -0.816147,
		0.936332, -0.101805, 0.336032,
		-0.260401, -0.843329, 0.470093,
		40.395187, 33.455746, 17.109022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185802, 33.788731, 16.788500>,  <40.577469, 34.046074, 16.779957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185802, 33.788731, 16.788500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892864, 33.522526, 16.846136>,  <40.717102, 33.362804, 16.880718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892864, 33.522526, 16.846136>,  <41.185802, 33.788731, 16.788500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892864, 33.522526, 16.846136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251267, -0.460796, -0.851194,
		0.632876, -0.587165, 0.504684,
		-0.732348, -0.665510, 0.144092,
		40.673161, 33.322872, 16.889364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490547, 33.173737, 16.595634>,  <41.185802, 33.788731, 16.788500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490547, 33.173737, 16.595634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105907, 33.069859, 16.560114>,  <40.875122, 33.007530, 16.538801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105907, 33.069859, 16.560114>,  <41.490547, 33.173737, 16.595634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105907, 33.069859, 16.560114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225430, -0.562782, -0.795272,
		0.156554, -0.784751, 0.599714,
		-0.961599, -0.259697, -0.088801,
		40.817429, 32.991951, 16.533474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451904, 32.418922, 16.408665>,  <41.490547, 33.173737, 16.595634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451904, 32.418922, 16.408665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093636, 32.565117, 16.307314>,  <40.878674, 32.652832, 16.246504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093636, 32.565117, 16.307314>,  <41.451904, 32.418922, 16.408665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093636, 32.565117, 16.307314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030531, -0.618930, -0.784853,
		-0.443671, -0.695233, 0.565515,
		-0.895669, 0.365482, -0.253375,
		40.824936, 32.674763, 16.231300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190430, 31.871914, 16.026567>,  <41.451904, 32.418922, 16.408665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190430, 31.871914, 16.026567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945145, 32.171726, 15.926832>,  <40.797974, 32.351616, 15.866990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945145, 32.171726, 15.926832>,  <41.190430, 31.871914, 16.026567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945145, 32.171726, 15.926832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111893, -0.394893, -0.911888,
		-0.781953, -0.531282, 0.326021,
		-0.613213, 0.749533, -0.249340,
		40.761181, 32.396587, 15.852030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872864, 31.546337, 15.361485>,  <41.190430, 31.871914, 16.026567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872864, 31.546337, 15.361485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678204, 31.895378, 15.378130>,  <40.561405, 32.104805, 15.388117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678204, 31.895378, 15.378130>,  <40.872864, 31.546337, 15.361485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678204, 31.895378, 15.378130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397006, -0.178478, -0.900296,
		-0.778175, -0.454651, 0.433285,
		-0.486652, 0.872604, 0.041612,
		40.532207, 32.157158, 15.390614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338024, 31.655708, 14.745383>,  <40.872864, 31.546337, 15.361485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338024, 31.655708, 14.745383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097401, 31.357710, 14.630066>,  <39.953026, 31.178911, 14.560876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097401, 31.357710, 14.630066>,  <40.338024, 31.655708, 14.745383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097401, 31.357710, 14.630066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531824, 0.104208, 0.840419,
		-0.596066, 0.658879, -0.458894,
		-0.601555, -0.744996, -0.288293,
		39.916935, 31.134211, 14.543578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630997, 31.924410, 14.847955>,  <40.338024, 31.655708, 14.745383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630997, 31.924410, 14.847955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617699, 31.525249, 14.870175>,  <39.609718, 31.285753, 14.883508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617699, 31.525249, 14.870175>,  <39.630997, 31.924410, 14.847955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617699, 31.525249, 14.870175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457115, 0.064609, 0.887058,
		-0.888786, 0.004097, -0.458304,
		-0.033245, -0.997902, 0.055550,
		39.607727, 31.225880, 14.886841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037449, 31.810986, 15.135297>,  <39.630997, 31.924410, 14.847955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037449, 31.810986, 15.135297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216900, 31.457516, 15.188742>,  <39.324570, 31.245434, 15.220809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216900, 31.457516, 15.188742>,  <39.037449, 31.810986, 15.135297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216900, 31.457516, 15.188742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534411, -0.145421, 0.832621,
		-0.716335, -0.444943, -0.537485,
		0.448631, -0.883673, 0.133613,
		39.351490, 31.192413, 15.228826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542847, 31.448599, 15.579951>,  <39.037449, 31.810986, 15.135297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542847, 31.448599, 15.579951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855541, 31.199335, 15.589398>,  <39.043159, 31.049776, 15.595067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855541, 31.199335, 15.589398>,  <38.542847, 31.448599, 15.579951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855541, 31.199335, 15.589398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226841, -0.248881, 0.941595,
		-0.580886, -0.741438, -0.335918,
		0.781738, -0.623159, 0.023617,
		39.090061, 31.012388, 15.596483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306423, 30.726862, 15.601580>,  <38.542847, 31.448599, 15.579951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306423, 30.726862, 15.601580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665588, 30.771086, 15.772000>,  <38.881088, 30.797621, 15.874253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665588, 30.771086, 15.772000>,  <38.306423, 30.726862, 15.601580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665588, 30.771086, 15.772000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372367, -0.325330, 0.869197,
		0.234708, -0.939115, -0.250950,
		0.897917, 0.110562, 0.426053,
		38.934963, 30.804255, 15.899817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416096, 30.074501, 15.991323>,  <38.306423, 30.726862, 15.601580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416096, 30.074501, 15.991323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661388, 30.346518, 16.152067>,  <38.808563, 30.509727, 16.248514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661388, 30.346518, 16.152067>,  <38.416096, 30.074501, 15.991323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661388, 30.346518, 16.152067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338547, -0.233379, 0.911548,
		0.713677, -0.695037, 0.087111,
		0.613230, 0.680042, 0.401860,
		38.845356, 30.550529, 16.272625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797085, 29.668003, 16.502670>,  <38.416096, 30.074501, 15.991323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797085, 29.668003, 16.502670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849880, 30.046783, 16.619879>,  <38.881557, 30.274052, 16.690205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849880, 30.046783, 16.619879>,  <38.797085, 29.668003, 16.502670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849880, 30.046783, 16.619879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005359, -0.294923, 0.955506,
		0.991237, -0.127686, -0.033852,
		0.131989, 0.946951, 0.293023,
		38.889477, 30.330870, 16.707785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266533, 29.690359, 17.076372>,  <38.797085, 29.668003, 16.502670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266533, 29.690359, 17.076372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086330, 30.045731, 17.111570>,  <38.978210, 30.258953, 17.132689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086330, 30.045731, 17.111570>,  <39.266533, 29.690359, 17.076372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086330, 30.045731, 17.111570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197564, -0.195328, 0.960633,
		0.870642, 0.415382, 0.263517,
		-0.450502, 0.888428, 0.087996,
		38.951180, 30.312260, 17.137970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474548, 29.947809, 17.642139>,  <39.266533, 29.690359, 17.076372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474548, 29.947809, 17.642139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135338, 30.156263, 17.603617>,  <38.931812, 30.281336, 17.580503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135338, 30.156263, 17.603617>,  <39.474548, 29.947809, 17.642139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135338, 30.156263, 17.603617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154113, -0.068627, 0.985667,
		0.507057, 0.850710, 0.138511,
		-0.848023, 0.521135, -0.096307,
		38.880932, 30.312603, 17.574724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586815, 30.637989, 18.035711>,  <39.474548, 29.947809, 17.642139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586815, 30.637989, 18.035711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196075, 30.562954, 17.994556>,  <38.961632, 30.517933, 17.969864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196075, 30.562954, 17.994556>,  <39.586815, 30.637989, 18.035711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196075, 30.562954, 17.994556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137440, 0.181660, 0.973709,
		-0.163964, 0.965303, -0.203235,
		-0.976845, -0.187586, -0.102885,
		38.903023, 30.506678, 17.963692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188622, 31.069109, 18.585699>,  <39.586815, 30.637989, 18.035711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188622, 31.069109, 18.585699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867428, 30.853945, 18.483044>,  <38.674709, 30.724846, 18.421450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867428, 30.853945, 18.483044>,  <39.188622, 31.069109, 18.585699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867428, 30.853945, 18.483044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293836, -0.017332, 0.955698,
		-0.518528, 0.842824, -0.144141,
		-0.802987, -0.537910, -0.256639,
		38.626534, 30.692572, 18.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615017, 31.420254, 18.910379>,  <39.188622, 31.069109, 18.585699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615017, 31.420254, 18.910379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495026, 31.047300, 18.829708>,  <38.423031, 30.823528, 18.781305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495026, 31.047300, 18.829708>,  <38.615017, 31.420254, 18.910379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495026, 31.047300, 18.829708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488470, -0.031462, 0.872013,
		-0.819395, 0.360100, -0.446003,
		-0.299980, -0.932383, -0.201678,
		38.405033, 30.767586, 18.769205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831356, 31.310867, 19.001596>,  <38.615017, 31.420254, 18.910379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831356, 31.310867, 19.001596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083542, 31.018469, 19.106026>,  <38.234852, 30.843029, 19.168684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083542, 31.018469, 19.106026>,  <37.831356, 31.310867, 19.001596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083542, 31.018469, 19.106026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486225, -0.109739, 0.866915,
		-0.605064, -0.673497, -0.424616,
		0.630462, -0.730999, 0.261072,
		38.272682, 30.799170, 19.184347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422779, 30.804937, 19.273973>,  <37.831356, 31.310867, 19.001596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422779, 30.804937, 19.273973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791050, 30.757496, 19.422722>,  <38.012012, 30.729031, 19.511971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791050, 30.757496, 19.422722>,  <37.422779, 30.804937, 19.273973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791050, 30.757496, 19.422722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365800, 0.070220, 0.928041,
		-0.136182, -0.990455, 0.021265,
		0.920676, -0.118604, 0.371871,
		38.067253, 30.721914, 19.534283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528908, 30.166603, 19.693867>,  <37.422779, 30.804937, 19.273973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528908, 30.166603, 19.693867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782108, 30.444695, 19.830080>,  <37.934029, 30.611549, 19.911808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782108, 30.444695, 19.830080>,  <37.528908, 30.166603, 19.693867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782108, 30.444695, 19.830080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429307, -0.050795, 0.901729,
		0.644208, -0.716989, 0.266314,
		0.633002, 0.695231, 0.340531,
		37.972008, 30.653263, 19.932240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688515, 29.853666, 20.293552>,  <37.528908, 30.166603, 19.693867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688515, 29.853666, 20.293552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847328, 30.218609, 20.333504>,  <37.942616, 30.437574, 20.357475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847328, 30.218609, 20.333504>,  <37.688515, 29.853666, 20.293552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847328, 30.218609, 20.333504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347213, 0.048573, 0.936527,
		0.849594, -0.406508, 0.336067,
		0.397029, 0.912355, 0.099878,
		37.966438, 30.492315, 20.363466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889839, 29.891714, 20.993979>,  <37.688515, 29.853666, 20.293552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889839, 29.891714, 20.993979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872112, 30.272621, 20.873169>,  <37.861477, 30.501165, 20.800682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872112, 30.272621, 20.873169>,  <37.889839, 29.891714, 20.993979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872112, 30.272621, 20.873169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353440, 0.267825, 0.896298,
		0.934407, 0.146468, 0.324701,
		-0.044316, 0.952269, -0.302025,
		37.858818, 30.558302, 20.782562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152878, 30.269562, 21.593845>,  <37.889839, 29.891714, 20.993979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152878, 30.269562, 21.593845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944424, 30.539764, 21.385189>,  <37.819351, 30.701885, 21.259995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944424, 30.539764, 21.385189>,  <38.152878, 30.269562, 21.593845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944424, 30.539764, 21.385189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324420, 0.408535, 0.853142,
		0.789412, 0.613833, 0.006246,
		-0.521135, 0.675506, -0.521642,
		37.788082, 30.742416, 21.228697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377007, 30.980528, 21.768772>,  <38.152878, 30.269562, 21.593845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377007, 30.980528, 21.768772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000275, 30.968304, 21.634897>,  <37.774235, 30.960970, 21.554571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000275, 30.968304, 21.634897>,  <38.377007, 30.980528, 21.768772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000275, 30.968304, 21.634897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299435, 0.528501, 0.794371,
		0.152608, 0.848382, -0.506910,
		-0.941833, -0.030560, -0.334689,
		37.717724, 30.959135, 21.534491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145596, 31.638018, 21.925600>,  <38.377007, 30.980528, 21.768772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145596, 31.638018, 21.925600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810032, 31.433853, 21.850012>,  <37.608692, 31.311354, 21.804659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810032, 31.433853, 21.850012>,  <38.145596, 31.638018, 21.925600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810032, 31.433853, 21.850012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476244, 0.520312, 0.708849,
		-0.263482, 0.684656, -0.679576,
		-0.838909, -0.510413, -0.188971,
		37.558357, 31.280729, 21.793320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559185, 32.122055, 21.897837>,  <38.145596, 31.638018, 21.925600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559185, 32.122055, 21.897837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398224, 31.767467, 21.989275>,  <37.301647, 31.554716, 22.044138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398224, 31.767467, 21.989275>,  <37.559185, 32.122055, 21.897837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398224, 31.767467, 21.989275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403952, 0.396015, 0.824618,
		-0.821522, 0.239485, -0.517445,
		-0.402399, -0.886464, 0.228595,
		37.277504, 31.501528, 22.057854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814091, 32.195526, 22.062637>,  <37.559185, 32.122055, 21.897837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814091, 32.195526, 22.062637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904270, 31.841425, 22.225367>,  <36.958378, 31.628965, 22.323004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904270, 31.841425, 22.225367>,  <36.814091, 32.195526, 22.062637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904270, 31.841425, 22.225367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536422, 0.235785, 0.810343,
		-0.813278, -0.400923, -0.421709,
		0.225453, -0.885249, 0.406823,
		36.971905, 31.575850, 22.347414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181675, 31.990768, 22.505880>,  <36.814091, 32.195526, 22.062637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181675, 31.990768, 22.505880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493088, 31.764549, 22.614725>,  <36.679935, 31.628819, 22.680033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493088, 31.764549, 22.614725>,  <36.181675, 31.990768, 22.505880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493088, 31.764549, 22.614725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270693, 0.088586, 0.958581,
		-0.566228, -0.819945, -0.084122,
		0.778532, -0.565547, 0.272113,
		36.726646, 31.594885, 22.696360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923660, 31.574993, 23.063353>,  <36.181675, 31.990768, 22.505880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923660, 31.574993, 23.063353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316223, 31.542976, 23.133144>,  <36.551762, 31.523766, 23.175018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316223, 31.542976, 23.133144>,  <35.923660, 31.574993, 23.063353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316223, 31.542976, 23.133144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171877, 0.038357, 0.984371,
		-0.085485, -0.996053, 0.023886,
		0.981402, -0.080044, 0.174478,
		36.610645, 31.518965, 23.185488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035381, 31.027006, 23.451643>,  <35.923660, 31.574993, 23.063353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035381, 31.027006, 23.451643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347603, 31.268988, 23.514595>,  <36.534935, 31.414177, 23.552366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347603, 31.268988, 23.514595>,  <36.035381, 31.027006, 23.451643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347603, 31.268988, 23.514595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152428, -0.059965, 0.986494,
		0.606222, -0.793999, 0.045406,
		0.780552, 0.604955, 0.157380,
		36.581768, 31.450474, 23.561810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382263, 30.677549, 23.965712>,  <36.035381, 31.027006, 23.451643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382263, 30.677549, 23.965712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516735, 31.053343, 23.992123>,  <36.597416, 31.278818, 24.007969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516735, 31.053343, 23.992123>,  <36.382263, 30.677549, 23.965712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516735, 31.053343, 23.992123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167455, -0.009367, 0.985835,
		0.926792, -0.342471, 0.154172,
		0.336176, 0.939481, 0.066030,
		36.617588, 31.335188, 24.011932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792553, 30.552460, 24.525518>,  <36.382263, 30.677549, 23.965712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792553, 30.552460, 24.525518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694721, 30.938135, 24.484486>,  <36.636021, 31.169540, 24.459866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694721, 30.938135, 24.484486>,  <36.792553, 30.552460, 24.525518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694721, 30.938135, 24.484486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383013, 0.001122, 0.923742,
		0.890775, 0.265222, 0.369021,
		-0.244583, 0.964187, -0.102582,
		36.621346, 31.227390, 24.453711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978611, 30.767544, 25.127380>,  <36.792553, 30.552460, 24.525518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978611, 30.767544, 25.127380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740707, 31.054276, 24.981827>,  <36.597965, 31.226315, 24.894495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740707, 31.054276, 24.981827>,  <36.978611, 30.767544, 25.127380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740707, 31.054276, 24.981827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462586, 0.065030, 0.884186,
		0.657476, 0.694207, 0.292919,
		-0.594760, 0.716832, -0.363886,
		36.562279, 31.269325, 24.872662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973415, 31.269598, 25.636944>,  <36.978611, 30.767544, 25.127380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973415, 31.269598, 25.636944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646046, 31.332684, 25.415922>,  <36.449623, 31.370535, 25.283310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646046, 31.332684, 25.415922>,  <36.973415, 31.269598, 25.636944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646046, 31.332684, 25.415922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553238, 0.043602, 0.831882,
		0.155293, 0.986521, 0.051570,
		-0.818420, 0.157716, -0.552552,
		36.400520, 31.379999, 25.250156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604988, 31.785028, 25.965998>,  <36.973415, 31.269598, 25.636944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604988, 31.785028, 25.965998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342579, 31.583925, 25.740833>,  <36.185135, 31.463263, 25.605734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342579, 31.583925, 25.740833>,  <36.604988, 31.785028, 25.965998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342579, 31.583925, 25.740833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638636, -0.027698, 0.769011,
		-0.402218, 0.863983, -0.302909,
		-0.656022, -0.502759, -0.562911,
		36.145771, 31.433098, 25.571960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969532, 31.990953, 26.224211>,  <36.604988, 31.785028, 25.965998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969532, 31.990953, 26.224211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845165, 31.671394, 26.018263>,  <35.770546, 31.479658, 25.894695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845165, 31.671394, 26.018263>,  <35.969532, 31.990953, 26.224211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845165, 31.671394, 26.018263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743920, -0.132594, 0.654982,
		-0.591533, 0.586667, -0.553091,
		-0.310920, -0.798899, -0.514868,
		35.751888, 31.431725, 25.863802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288315, 32.036770, 26.252998>,  <35.969532, 31.990953, 26.224211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288315, 32.036770, 26.252998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369839, 31.651556, 26.182535>,  <35.418755, 31.420429, 26.140257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369839, 31.651556, 26.182535>,  <35.288315, 32.036770, 26.252998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369839, 31.651556, 26.182535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771543, -0.268761, 0.576618,
		-0.602645, 0.018390, -0.797797,
		0.203813, -0.963031, -0.176157,
		35.430981, 31.362646, 26.129688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670746, 31.777195, 26.083815>,  <35.288315, 32.036770, 26.252998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670746, 31.777195, 26.083815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881836, 31.454903, 26.191372>,  <35.008492, 31.261526, 26.255905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881836, 31.454903, 26.191372>,  <34.670746, 31.777195, 26.083815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881836, 31.454903, 26.191372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749587, -0.292855, 0.593595,
		-0.399533, -0.514812, -0.758513,
		0.527724, -0.805732, 0.268892,
		35.040154, 31.213182, 26.272039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225403, 31.311050, 26.139856>,  <34.670746, 31.777195, 26.083815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225403, 31.311050, 26.139856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520363, 31.158024, 26.362526>,  <34.697338, 31.066208, 26.496128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520363, 31.158024, 26.362526>,  <34.225403, 31.311050, 26.139856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520363, 31.158024, 26.362526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672853, -0.343708, 0.655083,
		-0.059279, -0.857618, -0.510860,
		0.737397, -0.382566, 0.556675,
		34.741581, 31.043253, 26.529528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917412, 30.735731, 26.354027>,  <34.225403, 31.311050, 26.139856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917412, 30.735731, 26.354027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222771, 30.796721, 26.605099>,  <34.405987, 30.833315, 26.755741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222771, 30.796721, 26.605099>,  <33.917412, 30.735731, 26.354027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222771, 30.796721, 26.605099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575795, -0.279748, 0.768245,
		0.292729, -0.947889, -0.125765,
		0.763393, 0.152473, 0.627680,
		34.451790, 30.842463, 26.793404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026180, 30.113207, 26.765068>,  <33.917412, 30.735731, 26.354027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026180, 30.113207, 26.765068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166039, 30.424215, 26.974148>,  <34.249954, 30.610821, 27.099596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166039, 30.424215, 26.974148>,  <34.026180, 30.113207, 26.765068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166039, 30.424215, 26.974148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634226, -0.214206, 0.742882,
		0.689570, -0.591252, 0.418227,
		0.349643, 0.777519, 0.522697,
		34.270931, 30.657471, 27.130957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270046, 29.881001, 27.391460>,  <34.026180, 30.113207, 26.765068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270046, 29.881001, 27.391460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175365, 30.254299, 27.499554>,  <34.118557, 30.478277, 27.564409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175365, 30.254299, 27.499554>,  <34.270046, 29.881001, 27.391460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175365, 30.254299, 27.499554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540059, -0.357590, 0.761883,
		0.807657, 0.034394, 0.588648,
		-0.236699, 0.933245, 0.270235,
		34.104355, 30.534273, 27.580624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190220, 29.895016, 28.076254>,  <34.270046, 29.881001, 27.391460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190220, 29.895016, 28.076254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994778, 30.235350, 27.998953>,  <33.877514, 30.439550, 27.952572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994778, 30.235350, 27.998953>,  <34.190220, 29.895016, 28.076254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994778, 30.235350, 27.998953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483205, -0.079451, 0.871895,
		0.726483, 0.519393, 0.449948,
		-0.488604, 0.850834, -0.193254,
		33.848198, 30.490601, 27.940977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155476, 30.275352, 28.719526>,  <34.190220, 29.895016, 28.076254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155476, 30.275352, 28.719526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857948, 30.415474, 28.491833>,  <33.679432, 30.499548, 28.355217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857948, 30.415474, 28.491833>,  <34.155476, 30.275352, 28.719526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857948, 30.415474, 28.491833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623349, -0.056239, 0.779918,
		0.241197, 0.934946, 0.260194,
		-0.743814, 0.350306, -0.569233,
		33.634804, 30.520565, 28.321062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849899, 30.712004, 29.216434>,  <34.155476, 30.275352, 28.719526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849899, 30.712004, 29.216434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602158, 30.627523, 28.913965>,  <33.453514, 30.576836, 28.732483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602158, 30.627523, 28.913965>,  <33.849899, 30.712004, 29.216434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602158, 30.627523, 28.913965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744910, -0.146184, 0.650952,
		-0.248022, 0.966449, -0.066787,
		-0.619350, -0.211200, -0.756175,
		33.416351, 30.564163, 28.687113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110916, 31.452955, 29.568253>,  <33.849899, 30.712004, 29.216434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110916, 31.452955, 29.568253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171417, 31.525391, 29.956959>,  <34.207718, 31.568851, 30.190184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171417, 31.525391, 29.956959>,  <34.110916, 31.452955, 29.568253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171417, 31.525391, 29.956959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456029, -0.884993, 0.093937,
		0.877018, 0.428946, -0.216438,
		0.151252, 0.181087, 0.971767,
		34.216793, 31.579716, 30.248489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791435, 31.350159, 29.780888>,  <34.110916, 31.452955, 29.568253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791435, 31.350159, 29.780888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629848, 31.319191, 30.145485>,  <34.532898, 31.300611, 30.364243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629848, 31.319191, 30.145485>,  <34.791435, 31.350159, 29.780888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629848, 31.319191, 30.145485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547946, -0.818358, 0.173338,
		0.732507, 0.569471, 0.373010,
		-0.403966, -0.077418, 0.911492,
		34.508659, 31.295965, 30.418932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441257, 31.770403, 29.748013>,  <34.791435, 31.350159, 29.780888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441257, 31.770403, 29.748013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151260, 31.761353, 29.472660>,  <34.977261, 31.755922, 29.307449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151260, 31.761353, 29.472660>,  <35.441257, 31.770403, 29.748013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151260, 31.761353, 29.472660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352512, 0.870824, 0.342638,
		0.591706, 0.491074, -0.639320,
		-0.724996, -0.022627, -0.688382,
		34.933762, 31.754564, 29.266146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767612, 32.286865, 30.237589>,  <35.441257, 31.770403, 29.748013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767612, 32.286865, 30.237589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161930, 32.233849, 30.278851>,  <36.398521, 32.202038, 30.303608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161930, 32.233849, 30.278851>,  <35.767612, 32.286865, 30.237589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161930, 32.233849, 30.278851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035098, 0.763191, 0.645219,
		-0.164248, -0.632433, 0.757002,
		0.985794, -0.132545, 0.103156,
		36.457668, 32.194084, 30.309797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946957, 32.145332, 31.034555>,  <35.767612, 32.286865, 30.237589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946957, 32.145332, 31.034555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209583, 32.320404, 30.788839>,  <36.367161, 32.425449, 30.641411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209583, 32.320404, 30.788839>,  <35.946957, 32.145332, 31.034555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209583, 32.320404, 30.788839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157938, 0.716588, 0.679380,
		0.737550, -0.543076, 0.401358,
		0.656563, 0.437687, -0.614293,
		36.406555, 32.451710, 30.604553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680542, 32.306084, 31.374586>,  <35.946957, 32.145332, 31.034555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680542, 32.306084, 31.374586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563354, 32.549400, 31.079519>,  <36.493042, 32.695389, 30.902479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563354, 32.549400, 31.079519>,  <36.680542, 32.306084, 31.374586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563354, 32.549400, 31.079519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161944, 0.791941, 0.588730,
		0.942307, 0.053019, -0.330523,
		-0.292969, 0.608291, -0.737666,
		36.475464, 32.731888, 30.858219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070225, 32.173534, 31.975113>,  <36.680542, 32.306084, 31.374586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070225, 32.173534, 31.975113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291599, 32.399261, 31.730082>,  <37.424423, 32.534698, 31.583063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291599, 32.399261, 31.730082>,  <37.070225, 32.173534, 31.975113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291599, 32.399261, 31.730082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427181, 0.823704, 0.372866,
		0.714997, 0.055323, 0.696935,
		0.553439, 0.564315, -0.612579,
		37.457630, 32.568558, 31.546307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279331, 32.737579, 32.387600>,  <37.070225, 32.173534, 31.975113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279331, 32.737579, 32.387600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314690, 32.858402, 32.007927>,  <37.335903, 32.930897, 31.780123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314690, 32.858402, 32.007927>,  <37.279331, 32.737579, 32.387600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314690, 32.858402, 32.007927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478433, 0.848672, 0.225519,
		0.873664, 0.434185, 0.219534,
		0.088396, 0.302060, -0.949182,
		37.341209, 32.949020, 31.723173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651711, 33.357933, 32.416302>,  <37.279331, 32.737579, 32.387600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651711, 33.357933, 32.416302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410824, 33.344082, 32.097267>,  <37.266293, 33.335770, 31.905848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410824, 33.344082, 32.097267>,  <37.651711, 33.357933, 32.416302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410824, 33.344082, 32.097267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590351, 0.691866, 0.415701,
		0.537425, 0.721195, -0.437095,
		-0.602212, -0.034632, -0.797584,
		37.230160, 33.333691, 31.857992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558880, 33.990959, 32.249573>,  <37.651711, 33.357933, 32.416302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558880, 33.990959, 32.249573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238106, 33.795818, 32.111649>,  <37.045643, 33.678734, 32.028893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238106, 33.795818, 32.111649>,  <37.558880, 33.990959, 32.249573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238106, 33.795818, 32.111649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589287, 0.740822, 0.322371,
		0.098177, 0.461716, -0.881578,
		-0.801936, -0.487853, -0.344815,
		36.997524, 33.649464, 32.008205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116901, 34.438644, 31.829515>,  <37.558880, 33.990959, 32.249573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116901, 34.438644, 31.829515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900928, 34.150528, 32.003712>,  <36.771347, 33.977657, 32.108231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900928, 34.150528, 32.003712>,  <37.116901, 34.438644, 31.829515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900928, 34.150528, 32.003712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654557, 0.684589, 0.320769,
		-0.529181, -0.111862, -0.841103,
		-0.539928, -0.720295, 0.435491,
		36.738949, 33.934441, 32.134357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372738, 34.285820, 31.607189>,  <37.116901, 34.438644, 31.829515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372738, 34.285820, 31.607189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414680, 34.177753, 31.990025>,  <36.439846, 34.112915, 32.219727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414680, 34.177753, 31.990025>,  <36.372738, 34.285820, 31.607189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414680, 34.177753, 31.990025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663572, 0.697818, 0.269672,
		-0.740728, -0.663373, -0.106105,
		0.104852, -0.270162, 0.957089,
		36.446136, 34.096706, 32.277153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700161, 33.941925, 31.904238>,  <36.372738, 34.285820, 31.607189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700161, 33.941925, 31.904238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947914, 34.136959, 32.150368>,  <36.096565, 34.253979, 32.298046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947914, 34.136959, 32.150368>,  <35.700161, 33.941925, 31.904238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947914, 34.136959, 32.150368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717498, 0.669707, 0.191546,
		-0.318692, -0.560134, 0.764647,
		0.619381, 0.487589, 0.615325,
		36.133728, 34.283237, 32.334965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236176, 34.073582, 32.420074>,  <35.700161, 33.941925, 31.904238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236176, 34.073582, 32.420074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545475, 34.326427, 32.440125>,  <35.731056, 34.478134, 32.452152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545475, 34.326427, 32.440125>,  <35.236176, 34.073582, 32.420074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545475, 34.326427, 32.440125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628842, 0.754274, 0.188754,
		0.081509, -0.177472, 0.980744,
		0.773249, 0.632119, 0.050122,
		35.777451, 34.516064, 32.455162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242256, 34.350170, 33.081173>,  <35.236176, 34.073582, 32.420074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242256, 34.350170, 33.081173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410133, 34.610703, 32.828308>,  <35.510860, 34.767021, 32.676590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410133, 34.610703, 32.828308>,  <35.242256, 34.350170, 33.081173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410133, 34.610703, 32.828308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652142, 0.700806, 0.289105,
		0.631325, 0.290923, 0.718883,
		0.419690, 0.651333, -0.632159,
		35.536041, 34.806103, 32.638660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086498, 34.952129, 33.399971>,  <35.242256, 34.350170, 33.081173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086498, 34.952129, 33.399971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232136, 35.080849, 33.050369>,  <35.319519, 35.158081, 32.840607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232136, 35.080849, 33.050369>,  <35.086498, 34.952129, 33.399971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232136, 35.080849, 33.050369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551243, 0.830851, 0.076270,
		0.750711, 0.454020, 0.479895,
		0.364093, 0.321795, -0.874004,
		35.341362, 35.177387, 32.788166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300713, 35.648899, 33.551975>,  <35.086498, 34.952129, 33.399971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300713, 35.648899, 33.551975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255035, 35.624641, 33.155334>,  <35.227627, 35.610085, 32.917351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255035, 35.624641, 33.155334>,  <35.300713, 35.648899, 33.551975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255035, 35.624641, 33.155334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497507, 0.867450, 0.004241,
		0.859910, 0.493815, -0.129233,
		-0.114198, -0.060647, -0.991605,
		35.220776, 35.606449, 32.857853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440445, 36.316624, 33.286957>,  <35.300713, 35.648899, 33.551975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440445, 36.316624, 33.286957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189743, 36.129848, 33.037430>,  <35.039322, 36.017784, 32.887714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189743, 36.129848, 33.037430>,  <35.440445, 36.316624, 33.286957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189743, 36.129848, 33.037430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553342, 0.830367, -0.065602,
		0.548630, 0.304069, -0.778812,
		-0.626752, -0.466940, -0.623818,
		35.001717, 35.989765, 32.850285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330322, 36.749878, 32.810280>,  <35.440445, 36.316624, 33.286957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330322, 36.749878, 32.810280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037167, 36.484306, 32.750854>,  <34.861275, 36.324963, 32.715199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037167, 36.484306, 32.750854>,  <35.330322, 36.749878, 32.810280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037167, 36.484306, 32.750854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625158, 0.743339, -0.237960,
		0.268423, -0.081522, -0.959846,
		-0.732889, -0.663929, -0.148565,
		34.817299, 36.285126, 32.706284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846470, 37.256271, 32.636837>,  <35.330322, 36.749878, 32.810280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846470, 37.256271, 32.636837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651482, 36.907043, 32.641426>,  <34.534489, 36.697506, 32.644180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651482, 36.907043, 32.641426>,  <34.846470, 37.256271, 32.636837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651482, 36.907043, 32.641426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866291, 0.485244, 0.118652,
		-0.109156, 0.047904, -0.992870,
		-0.487468, -0.873066, 0.011468,
		34.505241, 36.645123, 32.644867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248394, 37.344254, 32.187626>,  <34.846470, 37.256271, 32.636837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248394, 37.344254, 32.187626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212296, 37.104713, 32.505928>,  <34.190636, 36.960987, 32.696911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212296, 37.104713, 32.505928>,  <34.248394, 37.344254, 32.187626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212296, 37.104713, 32.505928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808542, 0.510569, 0.292540,
		-0.581478, -0.617005, -0.530272,
		-0.090242, -0.598853, 0.795759,
		34.185223, 36.925056, 32.744656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723389, 37.782352, 32.267029>,  <34.248394, 37.344254, 32.187626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723389, 37.782352, 32.267029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420227, 37.674389, 32.504593>,  <33.238331, 37.609612, 32.647129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420227, 37.674389, 32.504593>,  <33.723389, 37.782352, 32.267029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420227, 37.674389, 32.504593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247477, -0.961300, -0.121068,
		0.603602, 0.055221, 0.795371,
		-0.757905, -0.269913, 0.593909,
		33.192856, 37.593414, 32.682766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032051, 37.543499, 32.962395>,  <33.723389, 37.782352, 32.267029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032051, 37.543499, 32.962395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685947, 37.408058, 32.814514>,  <33.478287, 37.326794, 32.725788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685947, 37.408058, 32.814514>,  <34.032051, 37.543499, 32.962395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685947, 37.408058, 32.814514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392585, -0.916261, -0.079642,
		-0.311774, -0.214049, 0.925732,
		-0.865260, -0.338598, -0.369699,
		33.426369, 37.306480, 32.703606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713959, 36.945480, 33.352673>,  <34.032051, 37.543499, 32.962395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713959, 36.945480, 33.352673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662216, 36.920692, 32.956810>,  <33.631172, 36.905819, 32.719292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662216, 36.920692, 32.956810>,  <33.713959, 36.945480, 33.352673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662216, 36.920692, 32.956810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473270, -0.880892, -0.006702,
		-0.871369, -0.469243, 0.143276,
		-0.129356, -0.061968, -0.989660,
		33.623409, 36.902103, 32.659912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321354, 36.370193, 33.290367>,  <33.713959, 36.945480, 33.352673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321354, 36.370193, 33.290367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565762, 36.460266, 32.986801>,  <33.712406, 36.514309, 32.804661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565762, 36.460266, 32.986801>,  <33.321354, 36.370193, 33.290367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565762, 36.460266, 32.986801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409483, -0.910372, 0.059558,
		-0.677481, -0.347153, -0.648464,
		0.611018, 0.225186, -0.758912,
		33.749065, 36.527821, 32.759129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498898, 35.764954, 33.052780>,  <33.321354, 36.370193, 33.290367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498898, 35.764954, 33.052780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780327, 35.987469, 32.875908>,  <33.949184, 36.120975, 32.769783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780327, 35.987469, 32.875908>,  <33.498898, 35.764954, 33.052780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780327, 35.987469, 32.875908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629184, -0.776893, 0.023756,
		-0.330316, -0.294930, -0.896609,
		0.703576, 0.556285, -0.442185,
		33.991398, 36.154354, 32.743252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826630, 35.420990, 32.500290>,  <33.498898, 35.764954, 33.052780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826630, 35.420990, 32.500290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116894, 35.685932, 32.574799>,  <34.291054, 35.844898, 32.619503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116894, 35.685932, 32.574799>,  <33.826630, 35.420990, 32.500290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116894, 35.685932, 32.574799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683396, -0.725272, -0.083364,
		0.079884, 0.187794, -0.978954,
		0.725664, 0.662355, 0.186275,
		34.334595, 35.884640, 32.630680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364403, 35.210484, 32.062946>,  <33.826630, 35.420990, 32.500290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364403, 35.210484, 32.062946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557617, 35.457619, 32.311123>,  <34.673546, 35.605900, 32.460030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557617, 35.457619, 32.311123>,  <34.364403, 35.210484, 32.062946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557617, 35.457619, 32.311123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815080, -0.576146, -0.060832,
		0.319883, 0.535097, -0.781886,
		0.483032, 0.617840, 0.620446,
		34.702526, 35.642971, 32.497257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957470, 35.393955, 31.651587>,  <34.364403, 35.210484, 32.062946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957470, 35.393955, 31.651587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056084, 35.497383, 32.025188>,  <35.115250, 35.559441, 32.249348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056084, 35.497383, 32.025188>,  <34.957470, 35.393955, 31.651587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056084, 35.497383, 32.025188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870094, -0.483482, -0.095817,
		0.426799, 0.836294, -0.344173,
		0.246533, 0.258568, 0.934004,
		35.130043, 35.574955, 32.305389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687851, 35.335320, 31.609514>,  <34.957470, 35.393955, 31.651587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687851, 35.335320, 31.609514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603771, 35.354027, 32.000130>,  <35.553326, 35.365250, 32.234501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603771, 35.354027, 32.000130>,  <35.687851, 35.335320, 31.609514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603771, 35.354027, 32.000130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768559, -0.609460, 0.194615,
		0.604263, 0.791436, 0.092164,
		-0.210196, 0.046766, 0.976540,
		35.540714, 35.368057, 32.293091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199467, 35.739628, 32.015099>,  <35.687851, 35.335320, 31.609514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199467, 35.739628, 32.015099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006500, 35.437698, 32.192867>,  <35.890720, 35.256538, 32.299526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006500, 35.437698, 32.192867>,  <36.199467, 35.739628, 32.015099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006500, 35.437698, 32.192867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842035, -0.539418, -0.002142,
		0.241343, 0.373182, 0.895817,
		-0.482421, -0.754827, 0.444417,
		35.861774, 35.211250, 32.326191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741951, 35.434349, 32.374264>,  <36.199467, 35.739628, 32.015099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741951, 35.434349, 32.374264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458313, 35.154186, 32.406815>,  <36.288132, 34.986088, 32.426346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458313, 35.154186, 32.406815>,  <36.741951, 35.434349, 32.374264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458313, 35.154186, 32.406815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703638, -0.695408, 0.145953,
		-0.045635, 0.160755, 0.985939,
		-0.709092, -0.700404, 0.081379,
		36.245586, 34.944065, 32.431229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813866, 35.064922, 33.008865>,  <36.741951, 35.434349, 32.374264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813866, 35.064922, 33.008865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645794, 34.836815, 32.726521>,  <36.544952, 34.699951, 32.557114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645794, 34.836815, 32.726521>,  <36.813866, 35.064922, 33.008865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645794, 34.836815, 32.726521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687282, -0.707911, 0.162804,
		-0.592532, -0.416723, 0.689382,
		-0.420177, -0.570266, -0.705866,
		36.519741, 34.665733, 32.514759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151470, 35.575928, 33.305428>,  <36.813866, 35.064922, 33.008865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151470, 35.575928, 33.305428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960152, 35.775715, 33.594360>,  <36.845360, 35.895588, 33.767719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960152, 35.775715, 33.594360>,  <37.151470, 35.575928, 33.305428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960152, 35.775715, 33.594360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535075, -0.486467, 0.690684,
		0.696365, 0.716854, -0.034577,
		-0.478300, 0.499470, 0.722329,
		36.816662, 35.925556, 33.811058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602577, 35.102619, 33.615398>,  <37.151470, 35.575928, 33.305428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602577, 35.102619, 33.615398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610088, 34.714424, 33.711559>,  <37.614597, 34.481506, 33.769257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610088, 34.714424, 33.711559>,  <37.602577, 35.102619, 33.615398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610088, 34.714424, 33.711559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999216, 0.009840, -0.038337,
		0.034840, 0.240935, 0.969916,
		0.018781, -0.970491, 0.240403,
		37.615723, 34.423275, 33.783680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145123, 34.906387, 34.279560>,  <37.602577, 35.102619, 33.615398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145123, 34.906387, 34.279560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110432, 34.607479, 34.016026>,  <38.089615, 34.428135, 33.857906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110432, 34.607479, 34.016026>,  <38.145123, 34.906387, 34.279560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110432, 34.607479, 34.016026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996200, -0.059768, -0.063352,
		0.007964, -0.661828, 0.749614,
		-0.086730, -0.747270, -0.658837,
		38.084412, 34.383297, 33.818375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546715, 34.297188, 34.617840>,  <38.145123, 34.906387, 34.279560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546715, 34.297188, 34.617840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534405, 34.283360, 34.218269>,  <38.527020, 34.275063, 33.978527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534405, 34.283360, 34.218269>,  <38.546715, 34.297188, 34.617840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534405, 34.283360, 34.218269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998805, -0.039035, -0.029419,
		-0.037976, -0.998640, 0.035727,
		-0.030774, -0.034567, -0.998929,
		38.525173, 34.272991, 33.918591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926445, 33.656300, 34.270248>,  <38.546715, 34.297188, 34.617840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926445, 33.656300, 34.270248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936844, 33.981911, 34.038151>,  <38.943085, 34.177277, 33.898891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936844, 33.981911, 34.038151>,  <38.926445, 33.656300, 34.270248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936844, 33.981911, 34.038151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999276, -0.037291, -0.007542,
		-0.027777, -0.579626, -0.814409,
		0.025999, 0.814029, -0.580242,
		38.944645, 34.226120, 33.864079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289028, 33.497311, 33.615726>,  <38.926445, 33.656300, 34.270248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289028, 33.497311, 33.615726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296810, 33.879482, 33.733562>,  <39.301479, 34.108784, 33.804264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296810, 33.879482, 33.733562>,  <39.289028, 33.497311, 33.615726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296810, 33.879482, 33.733562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998281, -0.002265, -0.058570,
		-0.055292, 0.295226, -0.953826,
		0.019451, 0.955425, 0.294593,
		39.302647, 34.166111, 33.821941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969639, 33.728882, 33.272572>,  <39.289028, 33.497311, 33.615726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969639, 33.728882, 33.272572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858471, 34.048256, 33.486214>,  <39.791771, 34.239880, 33.614399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858471, 34.048256, 33.486214>,  <39.969639, 33.728882, 33.272572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858471, 34.048256, 33.486214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960580, 0.234852, 0.148763,
		-0.006658, 0.554394, -0.832228,
		-0.277924, 0.798431, 0.534104,
		39.775093, 34.287785, 33.646446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310848, 34.501762, 33.098053>,  <39.969639, 33.728882, 33.272572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310848, 34.501762, 33.098053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248169, 34.494228, 33.493038>,  <40.210564, 34.489708, 33.730030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248169, 34.494228, 33.493038>,  <40.310848, 34.501762, 33.098053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248169, 34.494228, 33.493038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929195, 0.336041, 0.153858,
		-0.334727, 0.941659, -0.035158,
		-0.156696, -0.018831, 0.987467,
		40.201160, 34.488579, 33.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461349, 35.231567, 33.451126>,  <40.310848, 34.501762, 33.098053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461349, 35.231567, 33.451126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510059, 34.900051, 33.669586>,  <40.539284, 34.701141, 33.800663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510059, 34.900051, 33.669586>,  <40.461349, 35.231567, 33.451126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510059, 34.900051, 33.669586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878556, 0.346043, 0.329232,
		-0.461855, 0.439730, 0.770277,
		0.121776, -0.828789, 0.546149,
		40.546593, 34.651413, 33.833431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513542, 35.392479, 34.096321>,  <40.461349, 35.231567, 33.451126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513542, 35.392479, 34.096321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700584, 35.039993, 34.068604>,  <40.812809, 34.828503, 34.051971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700584, 35.039993, 34.068604>,  <40.513542, 35.392479, 34.096321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700584, 35.039993, 34.068604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858380, 0.433970, 0.273595,
		-0.211026, -0.187413, 0.959346,
		0.467603, -0.881219, -0.069293,
		40.840866, 34.775627, 34.047817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967461, 35.129002, 34.721752>,  <40.513542, 35.392479, 34.096321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967461, 35.129002, 34.721752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130753, 34.990898, 34.383724>,  <41.228725, 34.908035, 34.180908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130753, 34.990898, 34.383724>,  <40.967461, 35.129002, 34.721752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130753, 34.990898, 34.383724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906970, 0.258563, 0.332490,
		0.103711, -0.902188, 0.418690,
		0.408226, -0.345256, -0.845073,
		41.253220, 34.887321, 34.130203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521633, 34.596622, 34.887608>,  <40.967461, 35.129002, 34.721752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521633, 34.596622, 34.887608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563225, 34.828335, 34.564220>,  <41.588181, 34.967361, 34.370186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563225, 34.828335, 34.564220>,  <41.521633, 34.596622, 34.887608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563225, 34.828335, 34.564220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852754, 0.366422, 0.372216,
		0.511859, -0.728129, -0.455883,
		0.103975, 0.579278, -0.808471,
		41.594418, 35.002117, 34.321678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978840, 34.456318, 34.346546>,  <41.521633, 34.596622, 34.887608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978840, 34.456318, 34.346546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972111, 34.856258, 34.345104>,  <41.968075, 35.096222, 34.344238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972111, 34.856258, 34.345104>,  <41.978840, 34.456318, 34.346546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972111, 34.856258, 34.345104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982202, 0.017200, 0.187039,
		0.187073, -0.000394, -0.982346,
		-0.016822, 0.999852, -0.003605,
		41.967064, 35.156216, 34.344021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352486, 33.826958, 34.119213>,  <41.978840, 34.456318, 34.346546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352486, 33.826958, 34.119213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363834, 33.460232, 33.959888>,  <42.370644, 33.240196, 33.864296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363834, 33.460232, 33.959888>,  <42.352486, 33.826958, 34.119213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363834, 33.460232, 33.959888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044324, 0.399231, -0.915778,
		0.998614, 0.008326, 0.051963,
		0.028370, -0.916812, -0.398309,
		42.372345, 33.185188, 33.840397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919815, 33.698177, 33.656120>,  <42.352486, 33.826958, 34.119213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919815, 33.698177, 33.656120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620537, 33.461025, 33.536991>,  <42.440971, 33.318733, 33.465511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620537, 33.461025, 33.536991>,  <42.919815, 33.698177, 33.656120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620537, 33.461025, 33.536991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127105, 0.312491, -0.941379,
		0.651190, -0.742190, -0.158446,
		-0.748195, -0.592877, -0.297827,
		42.396080, 33.283161, 33.447643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012222, 33.171307, 33.145687>,  <42.919815, 33.698177, 33.656120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012222, 33.171307, 33.145687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668617, 33.360718, 33.067844>,  <42.462456, 33.474365, 33.021137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668617, 33.360718, 33.067844>,  <43.012222, 33.171307, 33.145687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668617, 33.360718, 33.067844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349007, 0.263531, -0.899302,
		-0.374559, -0.840430, -0.391641,
		-0.859011, 0.473528, -0.194608,
		42.410915, 33.502777, 33.009460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606209, 32.976494, 32.579010>,  <43.012222, 33.171307, 33.145687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606209, 32.976494, 32.579010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557175, 33.368153, 32.643814>,  <42.527756, 33.603146, 32.682697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557175, 33.368153, 32.643814>,  <42.606209, 32.976494, 32.579010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557175, 33.368153, 32.643814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432720, 0.199640, -0.879146,
		-0.893156, -0.037660, -0.448168,
		-0.122581, 0.979145, 0.162013,
		42.520401, 33.661896, 32.692417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207249, 33.354416, 32.039997>,  <42.606209, 32.976494, 32.579010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207249, 33.354416, 32.039997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488098, 33.571915, 32.223892>,  <42.656609, 33.702412, 32.334229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488098, 33.571915, 32.223892>,  <42.207249, 33.354416, 32.039997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488098, 33.571915, 32.223892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447608, 0.165094, -0.878858,
		-0.553773, 0.822853, -0.127467,
		0.702127, 0.543743, 0.459741,
		42.698734, 33.735039, 32.361813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151245, 34.182877, 31.899704>,  <42.207249, 33.354416, 32.039997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151245, 34.182877, 31.899704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516464, 34.036396, 31.971525>,  <42.735596, 33.948505, 32.014618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516464, 34.036396, 31.971525>,  <42.151245, 34.182877, 31.899704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516464, 34.036396, 31.971525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231160, 0.101942, -0.967560,
		0.336022, 0.924933, 0.177730,
		0.913047, -0.366205, 0.179553,
		42.790379, 33.926533, 32.025391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708000, 34.689445, 31.757776>,  <42.151245, 34.182877, 31.899704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708000, 34.689445, 31.757776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808750, 34.307999, 31.691843>,  <42.869202, 34.079132, 31.652283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808750, 34.307999, 31.691843>,  <42.708000, 34.689445, 31.757776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808750, 34.307999, 31.691843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151957, 0.207183, -0.966429,
		0.955755, 0.218374, 0.197094,
		0.251878, -0.953618, -0.164832,
		42.884312, 34.021912, 31.642393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133003, 35.185535, 31.248842>,  <42.708000, 34.689445, 31.757776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133003, 35.185535, 31.248842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195847, 35.575760, 31.310282>,  <43.233551, 35.809895, 31.347145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195847, 35.575760, 31.310282>,  <43.133003, 35.185535, 31.248842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195847, 35.575760, 31.310282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815743, -0.215857, 0.536628,
		0.556670, 0.040988, -0.829722,
		0.157106, 0.975564, 0.153597,
		43.242977, 35.868431, 31.356361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912262, 35.509331, 31.055597>,  <43.133003, 35.185535, 31.248842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912262, 35.509331, 31.055597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751877, 35.661530, 31.388933>,  <43.655647, 35.752850, 31.588934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751877, 35.661530, 31.388933>,  <43.912262, 35.509331, 31.055597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751877, 35.661530, 31.388933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816736, -0.263549, 0.513308,
		0.414935, 0.886435, -0.205089,
		-0.400963, 0.380493, 0.833339,
		43.631588, 35.775677, 31.638935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534115, 35.878918, 31.385408>,  <43.912262, 35.509331, 31.055597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534115, 35.878918, 31.385408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256390, 35.714794, 31.621910>,  <44.089756, 35.616322, 31.763811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256390, 35.714794, 31.621910>,  <44.534115, 35.878918, 31.385408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256390, 35.714794, 31.621910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719654, -0.402174, 0.565998,
		0.005553, 0.818476, 0.574514,
		-0.694310, -0.410309, 0.591253,
		44.048096, 35.591702, 31.799286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725613, 36.087563, 32.198616>,  <44.534115, 35.878918, 31.385408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725613, 36.087563, 32.198616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499004, 35.760548, 32.157261>,  <44.363041, 35.564339, 32.132450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499004, 35.760548, 32.157261>,  <44.725613, 36.087563, 32.198616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499004, 35.760548, 32.157261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557435, -0.472597, 0.682583,
		-0.606896, 0.329066, 0.723459,
		-0.566519, -0.817538, -0.103384,
		44.329048, 35.515285, 32.126247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691395, 35.721478, 32.800964>,  <44.725613, 36.087563, 32.198616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691395, 35.721478, 32.800964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576542, 35.427563, 32.555153>,  <44.507629, 35.251213, 32.407665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576542, 35.427563, 32.555153>,  <44.691395, 35.721478, 32.800964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576542, 35.427563, 32.555153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399352, -0.674954, 0.620448,
		-0.870675, -0.067263, 0.487239,
		-0.287130, -0.734788, -0.614527,
		44.490402, 35.207127, 32.370796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216602, 35.226917, 33.059601>,  <44.691395, 35.721478, 32.800964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216602, 35.226917, 33.059601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119038, 35.179047, 32.674648>,  <45.060497, 35.150322, 32.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119038, 35.179047, 32.674648>,  <45.216602, 35.226917, 33.059601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119038, 35.179047, 32.674648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586452, -0.772150, 0.244659,
		-0.772385, 0.624068, 0.118153,
		-0.243916, -0.119680, -0.962383,
		45.045864, 35.143143, 32.385933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904247, 35.227581, 32.832207>,  <45.216602, 35.226917, 33.059601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904247, 35.227581, 32.832207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273094, 35.081158, 32.882309>,  <46.494404, 34.993301, 32.912373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273094, 35.081158, 32.882309>,  <45.904247, 35.227581, 32.832207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273094, 35.081158, 32.882309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127161, 0.592513, 0.795461,
		-0.365406, -0.717584, 0.592918,
		0.922122, -0.366062, 0.125259,
		46.549732, 34.971340, 32.919888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936268, 34.793415, 33.508270>,  <45.904247, 35.227581, 32.832207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936268, 34.793415, 33.508270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271568, 34.968945, 33.378803>,  <46.472748, 35.074265, 33.301121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271568, 34.968945, 33.378803>,  <45.936268, 34.793415, 33.508270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271568, 34.968945, 33.378803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164741, 0.362034, 0.917492,
		0.519801, -0.822412, 0.231183,
		0.838252, 0.438828, -0.323671,
		46.523045, 35.100594, 33.281704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377678, 34.459827, 33.077740>,  <45.936268, 34.793415, 33.508270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377678, 34.459827, 33.077740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492207, 34.562817, 32.708584>,  <46.560925, 34.624611, 32.487091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492207, 34.562817, 32.708584>,  <46.377678, 34.459827, 33.077740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.492207, 34.562817, 32.708584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651192, -0.758852, -0.009678,
		-0.702829, -0.598208, -0.384939,
		0.286322, 0.257471, -0.922891,
		46.578102, 34.640057, 32.431717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.677319, 34.788761, 33.770832>,  <46.377678, 34.459827, 33.077740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.677319, 34.788761, 33.770832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073772, 34.788048, 33.823959>,  <47.311646, 34.787621, 33.855835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073772, 34.788048, 33.823959>,  <46.677319, 34.788761, 33.770832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073772, 34.788048, 33.823959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130613, 0.195047, -0.972058,
		-0.024173, 0.980792, 0.193552,
		0.991139, -0.001782, 0.132819,
		47.371113, 34.787514, 33.863804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016090, 35.442566, 33.477226>,  <46.677319, 34.788761, 33.770832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016090, 35.442566, 33.477226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262489, 35.127468, 33.476215>,  <47.410328, 34.938412, 33.475609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262489, 35.127468, 33.476215>,  <47.016090, 35.442566, 33.477226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262489, 35.127468, 33.476215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239977, 0.190717, -0.951860,
		0.750303, 0.585738, 0.306522,
		0.616000, -0.787742, -0.002532,
		47.447289, 34.891144, 33.475456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.145824, 35.632534, 34.194656>,  <47.016090, 35.442566, 33.477226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.145824, 35.632534, 34.194656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455532, 35.379753, 34.208191>,  <47.641357, 35.228085, 34.216312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455532, 35.379753, 34.208191>,  <47.145824, 35.632534, 34.194656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.455532, 35.379753, 34.208191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183072, 0.274835, 0.943902,
		-0.605801, -0.724638, 0.328488,
		0.774267, -0.631954, 0.033834,
		47.687813, 35.190166, 34.218342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021080, 35.233379, 34.761841>,  <47.145824, 35.632534, 34.194656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021080, 35.233379, 34.761841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402058, 35.285938, 34.651875>,  <47.630646, 35.317474, 34.585896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402058, 35.285938, 34.651875>,  <47.021080, 35.233379, 34.761841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.402058, 35.285938, 34.651875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207578, 0.380690, 0.901103,
		0.223061, -0.915319, 0.335311,
		0.952447, 0.131398, -0.274917,
		47.687790, 35.325359, 34.569401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.504517, 35.038097, 35.247799>,  <47.021080, 35.233379, 34.761841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.504517, 35.038097, 35.247799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709049, 35.312588, 35.040871>,  <47.831768, 35.477283, 34.916714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709049, 35.312588, 35.040871>,  <47.504517, 35.038097, 35.247799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.709049, 35.312588, 35.040871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506587, 0.245574, 0.826476,
		0.694194, -0.684676, -0.222065,
		0.511335, 0.686230, -0.517324,
		47.862450, 35.518456, 34.885674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.955074, 30.700075, 18.423096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.796661, 31.067204, 18.412020>,  <33.701614, 31.287481, 18.405375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.796661, 31.067204, 18.412020>,  <33.955074, 30.700075, 18.423096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796661, 31.067204, 18.412020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188378, -0.051694, 0.980735,
		0.898707, 0.393615, 0.193370,
		-0.396028, 0.917821, -0.027691,
		33.677853, 31.342550, 18.403713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105030, 30.974398, 19.013254>,  <33.955074, 30.700075, 18.423096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105030, 30.974398, 19.013254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.815037, 31.220039, 18.888496>,  <33.641041, 31.367424, 18.813643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.815037, 31.220039, 18.888496>,  <34.105030, 30.974398, 19.013254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815037, 31.220039, 18.888496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461255, -0.096585, 0.881995,
		0.511513, 0.783292, 0.353281,
		-0.724981, 0.614105, -0.311893,
		33.597542, 31.404270, 18.794928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999336, 31.354727, 19.538960>,  <34.105030, 30.974398, 19.013254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999336, 31.354727, 19.538960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.665615, 31.411730, 19.325930>,  <33.465382, 31.445932, 19.198112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.665615, 31.411730, 19.325930>,  <33.999336, 31.354727, 19.538960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665615, 31.411730, 19.325930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549623, -0.139469, 0.823689,
		0.043107, 0.979918, 0.194685,
		-0.834300, 0.142510, -0.532573,
		33.415325, 31.454483, 19.166157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657238, 31.944683, 19.836966>,  <33.999336, 31.354727, 19.538960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657238, 31.944683, 19.836966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380543, 31.756357, 19.617937>,  <33.214527, 31.643362, 19.486519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380543, 31.756357, 19.617937>,  <33.657238, 31.944683, 19.836966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380543, 31.756357, 19.617937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606402, -0.033050, 0.794471,
		-0.392146, 0.881613, -0.262641,
		-0.691736, -0.470815, -0.547572,
		33.173023, 31.615112, 19.453665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898979, 32.350418, 19.718565>,  <33.657238, 31.944683, 19.836966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898979, 32.350418, 19.718565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.897907, 31.950598, 19.706656>,  <32.897263, 31.710705, 19.699511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.897907, 31.950598, 19.706656>,  <32.898979, 32.350418, 19.718565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897907, 31.950598, 19.706656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619260, -0.021718, 0.784885,
		-0.785181, 0.020540, -0.618925,
		-0.002680, -0.999553, -0.029772,
		32.897102, 31.650732, 19.697723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176079, 32.189404, 19.656897>,  <32.898979, 32.350418, 19.718565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176079, 32.189404, 19.656897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.385162, 31.874739, 19.788317>,  <32.510612, 31.685940, 19.867168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.385162, 31.874739, 19.788317>,  <32.176079, 32.189404, 19.656897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385162, 31.874739, 19.788317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615321, -0.081393, 0.784063,
		-0.590049, -0.611998, -0.526593,
		0.522706, -0.786659, 0.328550,
		32.541973, 31.638741, 19.886881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631126, 31.795090, 19.857388>,  <32.176079, 32.189404, 19.656897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631126, 31.795090, 19.857388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.935057, 31.592491, 20.020420>,  <32.117416, 31.470932, 20.118240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.935057, 31.592491, 20.020420>,  <31.631126, 31.795090, 19.857388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935057, 31.592491, 20.020420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574053, -0.228418, 0.786313,
		-0.305165, -0.831437, -0.464314,
		0.759827, -0.506496, 0.407584,
		32.163006, 31.440542, 20.142694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408453, 31.128633, 20.048960>,  <31.631126, 31.795090, 19.857388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408453, 31.128633, 20.048960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.726999, 31.174162, 20.286562>,  <31.918127, 31.201479, 20.429123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.726999, 31.174162, 20.286562>,  <31.408453, 31.128633, 20.048960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726999, 31.174162, 20.286562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541481, -0.303355, 0.784075,
		0.269440, -0.946055, -0.179950,
		0.796367, 0.113822, 0.594007,
		31.965910, 31.208309, 20.464764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299068, 30.624163, 20.565882>,  <31.408453, 31.128633, 20.048960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299068, 30.624163, 20.565882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.551075, 30.905109, 20.698402>,  <31.702280, 31.073677, 20.777914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.551075, 30.905109, 20.698402>,  <31.299068, 30.624163, 20.565882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551075, 30.905109, 20.698402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428633, -0.041240, 0.902537,
		0.647574, -0.710621, 0.275075,
		0.630017, 0.702366, 0.331302,
		31.740080, 31.115820, 20.797792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619024, 30.338545, 21.177193>,  <31.299068, 30.624163, 20.565882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619024, 30.338545, 21.177193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.682297, 30.732010, 21.211580>,  <31.720261, 30.968088, 21.232212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.682297, 30.732010, 21.211580>,  <31.619024, 30.338545, 21.177193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682297, 30.732010, 21.211580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277162, -0.039331, 0.960018,
		0.947713, -0.175684, 0.266412,
		0.158182, 0.983660, 0.085968,
		31.729752, 31.027107, 21.237371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983000, 30.361099, 21.748890>,  <31.619024, 30.338545, 21.177193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983000, 30.361099, 21.748890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.860022, 30.741451, 21.734455>,  <31.786236, 30.969664, 21.725794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.860022, 30.741451, 21.734455>,  <31.983000, 30.361099, 21.748890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860022, 30.741451, 21.734455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248421, -0.043594, 0.967671,
		0.918567, 0.306471, 0.249622,
		-0.307445, 0.950882, -0.036089,
		31.767788, 31.026716, 21.723629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280167, 30.739372, 22.318058>,  <31.983000, 30.361099, 21.748890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280167, 30.739372, 22.318058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.958632, 30.948378, 22.204346>,  <31.765709, 31.073782, 22.136118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.958632, 30.948378, 22.204346>,  <32.280167, 30.739372, 22.318058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958632, 30.948378, 22.204346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275138, 0.097116, 0.956487,
		0.527387, 0.847082, 0.065698,
		-0.803842, 0.522515, -0.284282,
		31.717480, 31.105131, 22.119061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336605, 31.434849, 22.646254>,  <32.280167, 30.739372, 22.318058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336605, 31.434849, 22.646254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.953302, 31.360159, 22.559649>,  <31.723320, 31.315346, 22.507685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.953302, 31.360159, 22.559649>,  <32.336605, 31.434849, 22.646254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953302, 31.360159, 22.559649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254853, 0.214595, 0.942867,
		-0.129592, 0.958688, -0.253224,
		-0.958257, -0.186723, -0.216515,
		31.665825, 31.304142, 22.494694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014118, 31.811512, 23.137369>,  <32.336605, 31.434849, 22.646254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014118, 31.811512, 23.137369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.700676, 31.602900, 23.002337>,  <31.512609, 31.477732, 22.921316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.700676, 31.602900, 23.002337>,  <32.014118, 31.811512, 23.137369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700676, 31.602900, 23.002337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437382, 0.077231, 0.895953,
		-0.441194, 0.849731, -0.288626,
		-0.783610, -0.521529, -0.337583,
		31.465593, 31.446442, 22.901062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346796, 32.035538, 23.503077>,  <32.014118, 31.811512, 23.137369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346796, 32.035538, 23.503077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.230885, 31.676785, 23.369432>,  <31.161339, 31.461533, 23.289246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.230885, 31.676785, 23.369432>,  <31.346796, 32.035538, 23.503077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230885, 31.676785, 23.369432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304044, -0.244743, 0.920683,
		-0.907517, 0.368377, -0.201771,
		-0.289777, -0.896883, -0.334112,
		31.143951, 31.407721, 23.269199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526772, 31.941631, 23.588408>,  <31.346796, 32.035538, 23.503077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526772, 31.941631, 23.588408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.705719, 31.583893, 23.589340>,  <30.813087, 31.369249, 23.589899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.705719, 31.583893, 23.589340>,  <30.526772, 31.941631, 23.588408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705719, 31.583893, 23.589340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387745, -0.191606, 0.901632,
		-0.805926, -0.404265, -0.432497,
		0.447368, -0.894347, 0.002331,
		30.839930, 31.315588, 23.590040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098074, 31.562489, 24.013494>,  <30.526772, 31.941631, 23.588408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098074, 31.562489, 24.013494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412392, 31.315319, 24.002907>,  <30.600983, 31.167017, 23.996553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412392, 31.315319, 24.002907>,  <30.098074, 31.562489, 24.013494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412392, 31.315319, 24.002907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279144, -0.392519, 0.876360,
		-0.551914, -0.681248, -0.480928,
		0.785792, -0.617924, -0.026470,
		30.648129, 31.129942, 23.994967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814159, 30.902876, 24.090261>,  <30.098074, 31.562489, 24.013494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814159, 30.902876, 24.090261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.199703, 30.839025, 24.175583>,  <30.431028, 30.800716, 24.226776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.199703, 30.839025, 24.175583>,  <29.814159, 30.902876, 24.090261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199703, 30.839025, 24.175583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265490, -0.508750, 0.818955,
		-0.022206, -0.845987, -0.532741,
		0.963858, -0.159624, 0.213304,
		30.488861, 30.791138, 24.239574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761961, 30.268850, 24.367640>,  <29.814159, 30.902876, 24.090261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761961, 30.268850, 24.367640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.091917, 30.456205, 24.494236>,  <30.289890, 30.568619, 24.570194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.091917, 30.456205, 24.494236>,  <29.761961, 30.268850, 24.367640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091917, 30.456205, 24.494236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237060, -0.221640, 0.945874,
		0.513185, -0.855270, -0.071792,
		0.824890, 0.468389, 0.316492,
		30.339384, 30.596722, 24.589184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113115, 29.845535, 24.809195>,  <29.761961, 30.268850, 24.367640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113115, 29.845535, 24.809195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.235115, 30.209541, 24.921516>,  <30.308315, 30.427944, 24.988909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.235115, 30.209541, 24.921516>,  <30.113115, 29.845535, 24.809195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235115, 30.209541, 24.921516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316161, -0.181378, 0.931206,
		0.898342, -0.372796, 0.232390,
		0.304999, 0.910014, 0.280803,
		30.326614, 30.482546, 25.005758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350687, 29.723419, 25.509398>,  <30.113115, 29.845535, 24.809195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350687, 29.723419, 25.509398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309601, 30.120390, 25.482443>,  <30.284948, 30.358572, 25.466270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309601, 30.120390, 25.482443>,  <30.350687, 29.723419, 25.509398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309601, 30.120390, 25.482443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300818, 0.033580, 0.953090,
		0.948134, 0.118169, 0.295090,
		-0.102717, 0.992425, -0.067386,
		30.278786, 30.418118, 25.462227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953037, 30.078215, 25.689634>,  <30.350687, 29.723419, 25.509398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953037, 30.078215, 25.689634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.159719, 30.026594, 26.028187>,  <31.283728, 29.995623, 26.231319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.159719, 30.026594, 26.028187>,  <30.953037, 30.078215, 25.689634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159719, 30.026594, 26.028187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834876, -0.143127, -0.531503,
		0.189732, 0.981254, 0.033787,
		0.516704, -0.129051, 0.846382,
		31.314732, 29.987879, 26.282101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514456, 30.544216, 25.723927>,  <30.953037, 30.078215, 25.689634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514456, 30.544216, 25.723927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.635357, 30.245398, 25.960762>,  <31.707897, 30.066107, 26.102863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.635357, 30.245398, 25.960762>,  <31.514456, 30.544216, 25.723927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635357, 30.245398, 25.960762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835269, -0.091731, -0.542135,
		0.459311, 0.658415, 0.596257,
		0.302255, -0.747044, 0.592087,
		31.726034, 30.021284, 26.138388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148106, 30.689365, 25.916889>,  <31.514456, 30.544216, 25.723927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148106, 30.689365, 25.916889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.139557, 30.292679, 25.967554>,  <32.134430, 30.054667, 25.997953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.139557, 30.292679, 25.967554>,  <32.148106, 30.689365, 25.916889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139557, 30.292679, 25.967554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779530, -0.095853, -0.618987,
		0.626000, 0.085508, 0.775121,
		-0.021370, -0.991716, 0.126660,
		32.133144, 29.995165, 26.005552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832737, 30.499975, 25.975508>,  <32.148106, 30.689365, 25.916889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832737, 30.499975, 25.975508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647064, 30.156496, 25.888630>,  <32.535660, 29.950409, 25.836504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647064, 30.156496, 25.888630>,  <32.832737, 30.499975, 25.975508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647064, 30.156496, 25.888630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737434, -0.238833, -0.631784,
		0.490639, -0.453428, 0.744095,
		-0.464182, -0.858698, -0.217192,
		32.507809, 29.898886, 25.823473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349606, 30.056786, 25.903952>,  <32.832737, 30.499975, 25.975508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349606, 30.056786, 25.903952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060055, 29.864971, 25.705540>,  <32.886322, 29.749884, 25.586493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.060055, 29.864971, 25.705540>,  <33.349606, 30.056786, 25.903952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060055, 29.864971, 25.705540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678015, -0.361429, -0.640051,
		0.127647, -0.799635, 0.586763,
		-0.723880, -0.479534, -0.496029,
		32.842892, 29.721111, 25.556730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618938, 29.332050, 25.716009>,  <33.349606, 30.056786, 25.903952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618938, 29.332050, 25.716009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.318474, 29.446131, 25.477879>,  <33.138195, 29.514578, 25.335001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.318474, 29.446131, 25.477879>,  <33.618938, 29.332050, 25.716009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318474, 29.446131, 25.477879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566259, -0.185109, -0.803172,
		-0.339264, -0.940423, -0.022450,
		-0.751166, 0.285200, -0.595324,
		33.093124, 29.531691, 25.299282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659191, 28.831341, 25.212561>,  <33.618938, 29.332050, 25.716009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659191, 28.831341, 25.212561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.435108, 29.115120, 25.041517>,  <33.300659, 29.285387, 24.938890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.435108, 29.115120, 25.041517>,  <33.659191, 28.831341, 25.212561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435108, 29.115120, 25.041517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404490, -0.216201, -0.888620,
		-0.722879, -0.670777, -0.165847,
		-0.560209, 0.709447, -0.427610,
		33.267044, 29.327953, 24.913235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253986, 28.473810, 24.688663>,  <33.659191, 28.831341, 25.212561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253986, 28.473810, 24.688663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.285229, 28.855120, 24.571926>,  <33.303974, 29.083904, 24.501884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.285229, 28.855120, 24.571926>,  <33.253986, 28.473810, 24.688663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285229, 28.855120, 24.571926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389479, -0.298652, -0.871271,
		-0.917717, -0.045613, -0.394607,
		0.078109, 0.953271, -0.291843,
		33.308662, 29.141102, 24.484373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110867, 28.565138, 24.014898>,  <33.253986, 28.473810, 24.688663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110867, 28.565138, 24.014898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.268257, 28.932577, 24.029625>,  <33.362690, 29.153040, 24.038460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.268257, 28.932577, 24.029625>,  <33.110867, 28.565138, 24.014898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268257, 28.932577, 24.029625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289692, -0.085884, -0.953259,
		-0.872499, 0.385750, -0.299904,
		0.393476, 0.918597, 0.036816,
		33.386299, 29.208157, 24.040670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814419, 28.987064, 23.494043>,  <33.110867, 28.565138, 24.014898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814419, 28.987064, 23.494043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.155075, 29.172628, 23.591606>,  <33.359470, 29.283966, 23.650145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.155075, 29.172628, 23.591606>,  <32.814419, 28.987064, 23.494043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155075, 29.172628, 23.591606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255593, 0.038682, -0.966010,
		-0.457578, 0.885037, -0.085629,
		0.851643, 0.463911, 0.243909,
		33.410568, 29.311802, 23.664780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834347, 29.489193, 23.056053>,  <32.814419, 28.987064, 23.494043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834347, 29.489193, 23.056053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.208187, 29.455286, 23.194229>,  <33.432491, 29.434942, 23.277134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.208187, 29.455286, 23.194229>,  <32.834347, 29.489193, 23.056053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208187, 29.455286, 23.194229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355631, 0.205306, -0.911798,
		0.006369, 0.975020, 0.222025,
		0.934605, -0.084766, 0.345440,
		33.488567, 29.429855, 23.297861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227074, 30.024637, 22.685219>,  <32.834347, 29.489193, 23.056053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227074, 30.024637, 22.685219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528885, 29.806376, 22.831068>,  <33.709972, 29.675419, 22.918577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528885, 29.806376, 22.831068>,  <33.227074, 30.024637, 22.685219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528885, 29.806376, 22.831068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540535, 0.201634, -0.816802,
		0.372170, 0.813392, 0.447083,
		0.754527, -0.545653, 0.364625,
		33.755241, 29.642679, 22.940456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777168, 30.371103, 22.551376>,  <33.227074, 30.024637, 22.685219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777168, 30.371103, 22.551376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918247, 29.999813, 22.598715>,  <34.002895, 29.777039, 22.627119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918247, 29.999813, 22.598715>,  <33.777168, 30.371103, 22.551376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918247, 29.999813, 22.598715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518907, 0.088766, -0.850209,
		0.778680, 0.361276, 0.512970,
		0.352694, -0.928224, 0.118348,
		34.024055, 29.721346, 22.634218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511467, 30.426609, 22.564068>,  <33.777168, 30.371103, 22.551376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511467, 30.426609, 22.564068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409248, 30.056376, 22.452364>,  <34.347916, 29.834234, 22.385342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409248, 30.056376, 22.452364>,  <34.511467, 30.426609, 22.564068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409248, 30.056376, 22.452364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638188, 0.055480, -0.767879,
		0.726232, -0.374449, 0.576520,
		-0.255546, -0.925586, -0.279261,
		34.332584, 29.778700, 22.368586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205318, 30.097668, 22.401054>,  <34.511467, 30.426609, 22.564068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205318, 30.097668, 22.401054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.934517, 29.871475, 22.212629>,  <34.772038, 29.735760, 22.099573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.934517, 29.871475, 22.212629>,  <35.205318, 30.097668, 22.401054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934517, 29.871475, 22.212629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617378, -0.087921, -0.781738,
		0.400640, -0.820063, 0.408637,
		-0.677002, -0.565479, -0.471064,
		34.731415, 29.701832, 22.071310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594139, 29.520720, 22.106325>,  <35.205318, 30.097668, 22.401054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594139, 29.520720, 22.106325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247238, 29.556185, 21.910362>,  <35.039097, 29.577465, 21.792784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.247238, 29.556185, 21.910362>,  <35.594139, 29.520720, 22.106325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247238, 29.556185, 21.910362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461469, -0.226168, -0.857843,
		-0.186859, -0.970045, 0.155230,
		-0.867254, 0.088662, -0.489907,
		34.987061, 29.582785, 21.763390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592957, 28.985466, 21.614580>,  <35.594139, 29.520720, 22.106325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592957, 28.985466, 21.614580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329918, 29.253296, 21.476458>,  <35.172096, 29.413994, 21.393583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329918, 29.253296, 21.476458>,  <35.592957, 28.985466, 21.614580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329918, 29.253296, 21.476458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417927, -0.057135, -0.906682,
		-0.626819, -0.740545, -0.242261,
		-0.657597, 0.669573, -0.345307,
		35.132637, 29.454168, 21.372866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464722, 28.791735, 20.926163>,  <35.592957, 28.985466, 21.614580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464722, 28.791735, 20.926163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335690, 29.170334, 20.922556>,  <35.258270, 29.397493, 20.920391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335690, 29.170334, 20.922556>,  <35.464722, 28.791735, 20.926163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335690, 29.170334, 20.922556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357085, 0.112868, -0.927228,
		-0.876601, -0.302329, -0.374389,
		-0.322584, 0.946498, -0.009017,
		35.238914, 29.454283, 20.919851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028816, 28.788162, 20.400177>,  <35.464722, 28.791735, 20.926163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028816, 28.788162, 20.400177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168465, 29.159477, 20.451403>,  <35.252254, 29.382265, 20.482138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168465, 29.159477, 20.451403>,  <35.028816, 28.788162, 20.400177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168465, 29.159477, 20.451403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020510, 0.144199, -0.989336,
		-0.936853, 0.342772, 0.069382,
		0.349121, 0.928286, 0.128063,
		35.273201, 29.437963, 20.489822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.535797, 29.331074, 19.958469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867058, 29.547926, 20.015392>,  <35.065815, 29.678038, 20.049545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867058, 29.547926, 20.015392>,  <34.535797, 29.331074, 19.958469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867058, 29.547926, 20.015392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017480, 0.278752, -0.960204,
		-0.560225, 0.792711, 0.240326,
		0.828156, 0.542132, 0.142307,
		35.115505, 29.710566, 20.058084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499981, 29.967163, 19.483627>,  <34.535797, 29.331074, 19.958469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499981, 29.967163, 19.483627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890251, 29.941637, 19.567518>,  <35.124413, 29.926321, 19.617853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890251, 29.941637, 19.567518>,  <34.499981, 29.967163, 19.483627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890251, 29.941637, 19.567518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218580, 0.356186, -0.908490,
		-0.016727, 0.932234, 0.361471,
		0.975676, -0.063814, 0.209725,
		35.182953, 29.922493, 19.630436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799046, 30.626141, 19.163960>,  <34.499981, 29.967163, 19.483627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799046, 30.626141, 19.163960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.085361, 30.349669, 19.203798>,  <35.257149, 30.183784, 19.227701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.085361, 30.349669, 19.203798>,  <34.799046, 30.626141, 19.163960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085361, 30.349669, 19.203798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278374, 0.151621, -0.948430,
		0.640436, 0.706597, 0.300935,
		0.715786, -0.691181, 0.099595,
		35.300098, 30.142315, 19.233677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479702, 30.937923, 18.996490>,  <34.799046, 30.626141, 19.163960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479702, 30.937923, 18.996490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531380, 30.545168, 18.941057>,  <35.562386, 30.309515, 18.907797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531380, 30.545168, 18.941057>,  <35.479702, 30.937923, 18.996490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531380, 30.545168, 18.941057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341109, 0.175235, -0.923546,
		0.931103, 0.072048, 0.357570,
		0.129199, -0.981887, -0.138585,
		35.570141, 30.250603, 18.899481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024593, 30.995127, 18.578367>,  <35.479702, 30.937923, 18.996490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024593, 30.995127, 18.578367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919319, 30.611650, 18.535212>,  <35.856155, 30.381565, 18.509319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919319, 30.611650, 18.535212>,  <36.024593, 30.995127, 18.578367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919319, 30.611650, 18.535212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217664, 0.049939, -0.974745,
		0.939869, -0.280025, 0.195529,
		-0.263188, -0.958693, -0.107887,
		35.840363, 30.324043, 18.502846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555492, 30.547251, 18.342283>,  <36.024593, 30.995127, 18.578367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555492, 30.547251, 18.342283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.225880, 30.357080, 18.219036>,  <36.028111, 30.242977, 18.145088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.225880, 30.357080, 18.219036>,  <36.555492, 30.547251, 18.342283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225880, 30.357080, 18.219036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313878, 0.069652, -0.946905,
		0.471647, -0.876993, 0.091830,
		-0.824033, -0.475428, -0.308120,
		35.978668, 30.214453, 18.126600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891293, 30.135439, 17.919899>,  <36.555492, 30.547251, 18.342283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891293, 30.135439, 17.919899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504913, 30.113237, 17.818808>,  <36.273087, 30.099916, 17.758152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504913, 30.113237, 17.818808>,  <36.891293, 30.135439, 17.919899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504913, 30.113237, 17.818808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258748, -0.212863, -0.942199,
		-0.001501, -0.975504, 0.219975,
		-0.965944, -0.055505, -0.252730,
		36.215130, 30.096586, 17.742989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900749, 29.696655, 17.411589>,  <36.891293, 30.135439, 17.919899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900749, 29.696655, 17.411589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549103, 29.880493, 17.361097>,  <36.338116, 29.990795, 17.330803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.549103, 29.880493, 17.361097>,  <36.900749, 29.696655, 17.411589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549103, 29.880493, 17.361097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086083, -0.107378, -0.990485,
		-0.468774, -0.881615, 0.054834,
		-0.879114, 0.459593, -0.126228,
		36.285370, 30.018372, 17.323229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575100, 29.310312, 16.825907>,  <36.900749, 29.696655, 17.411589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575100, 29.310312, 16.825907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371078, 29.653894, 16.844002>,  <36.248665, 29.860043, 16.854858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371078, 29.653894, 16.844002>,  <36.575100, 29.310312, 16.825907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371078, 29.653894, 16.844002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037478, 0.030350, -0.998836,
		-0.859328, -0.511152, 0.016712,
		-0.510050, 0.858954, 0.045237,
		36.218063, 29.911581, 16.857573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912281, 29.295296, 16.376486>,  <36.575100, 29.310312, 16.825907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912281, 29.295296, 16.376486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030411, 29.673628, 16.430424>,  <36.101288, 29.900627, 16.462788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030411, 29.673628, 16.430424>,  <35.912281, 29.295296, 16.376486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030411, 29.673628, 16.430424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088360, 0.113496, -0.989601,
		-0.951301, 0.304173, -0.050055,
		0.295329, 0.945832, 0.134846,
		36.119011, 29.957376, 16.470877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559910, 29.672892, 15.902346>,  <35.912281, 29.295296, 16.376486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559910, 29.672892, 15.902346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873802, 29.906151, 15.986383>,  <36.062138, 30.046106, 16.036806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873802, 29.906151, 15.986383>,  <35.559910, 29.672892, 15.902346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873802, 29.906151, 15.986383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118648, 0.191362, -0.974322,
		-0.608376, 0.789507, 0.080978,
		0.784730, 0.583147, 0.210094,
		36.109222, 30.081095, 16.049412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510727, 30.267010, 15.516146>,  <35.559910, 29.672892, 15.902346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510727, 30.267010, 15.516146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902233, 30.280468, 15.597020>,  <36.137138, 30.288544, 15.645545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902233, 30.280468, 15.597020>,  <35.510727, 30.267010, 15.516146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902233, 30.280468, 15.597020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198561, 0.089028, -0.976037,
		-0.050841, 0.995461, 0.080457,
		0.978769, 0.033647, 0.202186,
		36.195866, 30.290562, 15.657676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906746, 30.928743, 15.241551>,  <35.510727, 30.267010, 15.516146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906746, 30.928743, 15.241551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201561, 30.665012, 15.300960>,  <36.378452, 30.506773, 15.336604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201561, 30.665012, 15.300960>,  <35.906746, 30.928743, 15.241551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201561, 30.665012, 15.300960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390319, 0.235852, -0.889958,
		0.551746, 0.713904, 0.431181,
		0.737040, -0.659329, 0.148520,
		36.422672, 30.467215, 15.345515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394554, 31.221556, 14.867245>,  <35.906746, 30.928743, 15.241551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394554, 31.221556, 14.867245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.574059, 30.877048, 14.962602>,  <36.681763, 30.670345, 15.019815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.574059, 30.877048, 14.962602>,  <36.394554, 31.221556, 14.867245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574059, 30.877048, 14.962602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526814, 0.039482, -0.849063,
		0.721858, 0.506617, 0.471445,
		0.448763, -0.861267, 0.238393,
		36.708687, 30.618668, 15.034120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048412, 31.390442, 14.884251>,  <36.394554, 31.221556, 14.867245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048412, 31.390442, 14.884251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026325, 30.997456, 14.813023>,  <37.013073, 30.761663, 14.770286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026325, 30.997456, 14.813023>,  <37.048412, 31.390442, 14.884251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026325, 30.997456, 14.813023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498436, 0.127406, -0.857513,
		0.865166, -0.136109, 0.482662,
		-0.055221, -0.982467, -0.178069,
		37.009758, 30.702715, 14.759602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711338, 31.203159, 14.752017>,  <37.048412, 31.390442, 14.884251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711338, 31.203159, 14.752017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483475, 30.914152, 14.595320>,  <37.346756, 30.740747, 14.501302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483475, 30.914152, 14.595320>,  <37.711338, 31.203159, 14.752017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483475, 30.914152, 14.595320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490756, 0.083317, -0.867304,
		0.659280, -0.686315, 0.307117,
		-0.569656, -0.722516, -0.391743,
		37.312576, 30.697397, 14.477797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093910, 30.627508, 14.676256>,  <37.711338, 31.203159, 14.752017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093910, 30.627508, 14.676256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793118, 30.653831, 14.413901>,  <37.612640, 30.669626, 14.256488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793118, 30.653831, 14.413901>,  <38.093910, 30.627508, 14.676256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793118, 30.653831, 14.413901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655529, -0.029939, -0.754577,
		-0.069293, -0.997383, -0.020625,
		-0.751984, 0.065808, -0.655888,
		37.567524, 30.673574, 14.217135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416740, 30.312059, 14.027117>,  <38.093910, 30.627508, 14.676256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416740, 30.312059, 14.027117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070412, 30.473875, 13.909335>,  <37.862614, 30.570965, 13.838666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070412, 30.473875, 13.909335>,  <38.416740, 30.312059, 14.027117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070412, 30.473875, 13.909335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348702, 0.065805, -0.934921,
		-0.358835, -0.912150, -0.198039,
		-0.865820, 0.404539, -0.294455,
		37.810665, 30.595236, 13.820998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320698, 30.018475, 13.436310>,  <38.416740, 30.312059, 14.027117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320698, 30.018475, 13.436310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057095, 30.317440, 13.402650>,  <37.898933, 30.496819, 13.382454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057095, 30.317440, 13.402650>,  <38.320698, 30.018475, 13.436310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057095, 30.317440, 13.402650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349832, 0.205550, -0.913984,
		-0.665826, -0.631762, -0.396928,
		-0.659009, 0.747413, -0.084150,
		37.859390, 30.541664, 13.377405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021576, 29.929247, 12.708757>,  <38.320698, 30.018475, 13.436310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021576, 29.929247, 12.708757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.935909, 30.302670, 12.823718>,  <37.884510, 30.526724, 12.892694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.935909, 30.302670, 12.823718>,  <38.021576, 29.929247, 12.708757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935909, 30.302670, 12.823718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146022, 0.321522, -0.935575,
		-0.965821, -0.158404, -0.205180,
		-0.214168, 0.933559, 0.287402,
		37.871658, 30.582737, 12.909939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462807, 30.160698, 12.313156>,  <38.021576, 29.929247, 12.708757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462807, 30.160698, 12.313156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683735, 30.465504, 12.448377>,  <37.816292, 30.648388, 12.529510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683735, 30.465504, 12.448377>,  <37.462807, 30.160698, 12.313156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683735, 30.465504, 12.448377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311222, 0.187714, -0.931614,
		-0.773360, 0.619756, -0.133478,
		0.552318, 0.762015, 0.338052,
		37.849430, 30.694109, 12.549792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256119, 30.910660, 12.106599>,  <37.462807, 30.160698, 12.313156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256119, 30.910660, 12.106599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649826, 30.924587, 12.175883>,  <37.886051, 30.932943, 12.217454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649826, 30.924587, 12.175883>,  <37.256119, 30.910660, 12.106599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649826, 30.924587, 12.175883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144796, 0.402784, -0.903769,
		-0.101232, 0.914632, 0.391407,
		0.984269, 0.034816, 0.173210,
		37.945107, 30.935032, 12.227846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524460, 31.565990, 11.819156>,  <37.256119, 30.910660, 12.106599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524460, 31.565990, 11.819156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811989, 31.288158, 11.830876>,  <37.984505, 31.121460, 11.837909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811989, 31.288158, 11.830876>,  <37.524460, 31.565990, 11.819156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811989, 31.288158, 11.830876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247073, 0.215843, -0.944652,
		0.649812, 0.686272, 0.326764,
		0.718818, -0.694581, 0.029301,
		38.027634, 31.079784, 11.839666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946880, 32.243744, 11.794017>,  <37.524460, 31.565990, 11.819156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946880, 32.243744, 11.794017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033398, 32.626163, 11.714838>,  <38.085308, 32.855618, 11.667331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033398, 32.626163, 11.714838>,  <37.946880, 32.243744, 11.794017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033398, 32.626163, 11.714838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321375, 0.261167, 0.910225,
		0.921919, -0.133261, 0.363740,
		0.216294, 0.956051, -0.197948,
		38.098286, 32.912979, 11.655454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285793, 32.504566, 12.392270>,  <37.946880, 32.243744, 11.794017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285793, 32.504566, 12.392270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078915, 32.784615, 12.195360>,  <37.954788, 32.952644, 12.077214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078915, 32.784615, 12.195360>,  <38.285793, 32.504566, 12.392270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078915, 32.784615, 12.195360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378144, 0.329062, 0.865289,
		0.767799, 0.633674, 0.094559,
		-0.517195, 0.700125, -0.492274,
		37.923756, 32.994652, 12.047678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274872, 33.101646, 12.770129>,  <38.285793, 32.504566, 12.392270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274872, 33.101646, 12.770129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956680, 33.132156, 12.529667>,  <37.765766, 33.150463, 12.385389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956680, 33.132156, 12.529667>,  <38.274872, 33.101646, 12.770129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956680, 33.132156, 12.529667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553320, 0.313048, 0.771905,
		0.247071, 0.946669, -0.206817,
		-0.795483, 0.076279, -0.601156,
		37.718037, 33.155041, 12.349320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976505, 33.619099, 13.032367>,  <38.274872, 33.101646, 12.770129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976505, 33.619099, 13.032367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698395, 33.435898, 12.810800>,  <37.531528, 33.325977, 12.677859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698395, 33.435898, 12.810800>,  <37.976505, 33.619099, 13.032367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698395, 33.435898, 12.810800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688193, 0.201914, 0.696865,
		-0.207322, 0.865716, -0.455580,
		-0.695275, -0.458003, -0.553918,
		37.489811, 33.298496, 12.644624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480179, 34.092361, 13.022697>,  <37.976505, 33.619099, 13.032367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480179, 34.092361, 13.022697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295246, 33.752316, 12.921865>,  <37.184284, 33.548286, 12.861365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.295246, 33.752316, 12.921865>,  <37.480179, 34.092361, 13.022697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295246, 33.752316, 12.921865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654128, 0.135064, 0.744227,
		-0.598634, 0.508976, -0.618531,
		-0.462335, -0.850118, -0.252082,
		37.156544, 33.497280, 12.846240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672615, 34.227589, 12.986184>,  <37.480179, 34.092361, 13.022697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672615, 34.227589, 12.986184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719574, 33.834896, 13.046079>,  <36.747749, 33.599281, 13.082015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719574, 33.834896, 13.046079>,  <36.672615, 34.227589, 12.986184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719574, 33.834896, 13.046079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729505, 0.017056, 0.683763,
		-0.673826, -0.189501, -0.714176,
		0.117393, -0.981732, 0.149735,
		36.754791, 33.540375, 13.091000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026085, 34.058338, 13.220244>,  <36.672615, 34.227589, 12.986184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026085, 34.058338, 13.220244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263256, 33.755058, 13.328735>,  <36.405560, 33.573090, 13.393829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263256, 33.755058, 13.328735>,  <36.026085, 34.058338, 13.220244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263256, 33.755058, 13.328735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357369, 0.054072, 0.932397,
		-0.721613, -0.649771, -0.238898,
		0.592927, -0.758204, 0.271227,
		36.441135, 33.527596, 13.410104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627434, 33.640911, 13.546830>,  <36.026085, 34.058338, 13.220244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627434, 33.640911, 13.546830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983849, 33.508839, 13.671434>,  <36.197697, 33.429596, 13.746197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983849, 33.508839, 13.671434>,  <35.627434, 33.640911, 13.546830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983849, 33.508839, 13.671434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424457, -0.362766, 0.829601,
		-0.160911, -0.871426, -0.463383,
		0.891035, -0.330178, 0.311510,
		36.251160, 33.409786, 13.764887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481651, 32.939251, 13.775214>,  <35.627434, 33.640911, 13.546830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481651, 32.939251, 13.775214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821793, 33.044800, 13.957324>,  <36.025879, 33.108128, 14.066589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821793, 33.044800, 13.957324>,  <35.481651, 32.939251, 13.775214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821793, 33.044800, 13.957324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263707, -0.535013, 0.802633,
		0.455369, -0.802579, -0.385365,
		0.850351, 0.263871, 0.455274,
		36.076897, 33.123962, 14.093906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673134, 32.497723, 14.222302>,  <35.481651, 32.939251, 13.775214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673134, 32.497723, 14.222302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908237, 32.784256, 14.372714>,  <36.049301, 32.956177, 14.462961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908237, 32.784256, 14.372714>,  <35.673134, 32.497723, 14.222302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908237, 32.784256, 14.372714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077025, -0.413130, 0.907409,
		0.805358, -0.562305, -0.187647,
		0.587763, 0.716336, 0.376029,
		36.084568, 32.999157, 14.485523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203136, 32.107834, 14.749839>,  <35.673134, 32.497723, 14.222302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203136, 32.107834, 14.749839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154694, 32.486835, 14.868203>,  <36.125629, 32.714237, 14.939222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154694, 32.486835, 14.868203>,  <36.203136, 32.107834, 14.749839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154694, 32.486835, 14.868203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271016, -0.318341, 0.908410,
		0.954926, 0.029814, 0.295342,
		-0.121103, 0.947507, 0.295912,
		36.118362, 32.771088, 14.956977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371666, 32.136326, 15.427748>,  <36.203136, 32.107834, 14.749839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371666, 32.136326, 15.427748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135220, 32.457157, 15.393677>,  <35.993351, 32.649654, 15.373234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135220, 32.457157, 15.393677>,  <36.371666, 32.136326, 15.427748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135220, 32.457157, 15.393677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500376, -0.281833, 0.818654,
		0.632615, 0.526542, 0.567936,
		-0.591119, 0.802075, -0.085177,
		35.957886, 32.697781, 15.368124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232624, 32.301491, 16.100576>,  <36.371666, 32.136326, 15.427748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232624, 32.301491, 16.100576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955845, 32.497765, 15.888752>,  <35.789776, 32.615528, 15.761658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955845, 32.497765, 15.888752>,  <36.232624, 32.301491, 16.100576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955845, 32.497765, 15.888752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682730, -0.206290, 0.700946,
		0.234700, 0.846566, 0.477747,
		-0.691951, 0.490684, -0.529559,
		35.748260, 32.644970, 15.729884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811600, 32.592358, 16.625952>,  <36.232624, 32.301491, 16.100576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811600, 32.592358, 16.625952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595543, 32.599503, 16.289398>,  <35.465908, 32.603790, 16.087467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595543, 32.599503, 16.289398>,  <35.811600, 32.592358, 16.625952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595543, 32.599503, 16.289398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777734, -0.392554, 0.490950,
		-0.321516, 0.919555, 0.225932,
		-0.540146, 0.017867, -0.841382,
		35.433498, 32.604862, 16.036983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184357, 32.955593, 16.821783>,  <35.811600, 32.592358, 16.625952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184357, 32.955593, 16.821783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089939, 32.731491, 16.504194>,  <35.033287, 32.597031, 16.313641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089939, 32.731491, 16.504194>,  <35.184357, 32.955593, 16.821783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089939, 32.731491, 16.504194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822212, -0.320336, 0.470481,
		-0.517929, 0.763869, -0.385037,
		-0.236045, -0.560257, -0.793974,
		35.019127, 32.563416, 16.266003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468880, 32.969139, 16.869307>,  <35.184357, 32.955593, 16.821783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468880, 32.969139, 16.869307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557903, 32.652912, 16.641108>,  <34.611317, 32.463177, 16.504189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557903, 32.652912, 16.641108>,  <34.468880, 32.969139, 16.869307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557903, 32.652912, 16.641108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711477, -0.531778, 0.459362,
		-0.666536, 0.303664, -0.680821,
		0.222555, -0.790570, -0.570499,
		34.624668, 32.415741, 16.469957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849445, 32.814827, 16.554787>,  <34.468880, 32.969139, 16.869307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849445, 32.814827, 16.554787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089931, 32.495193, 16.553661>,  <34.234222, 32.303413, 16.552986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089931, 32.495193, 16.553661>,  <33.849445, 32.814827, 16.554787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089931, 32.495193, 16.553661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662552, -0.500454, 0.557289,
		-0.446727, -0.333187, -0.830314,
		0.601215, -0.799083, -0.002813,
		34.270294, 32.255470, 16.552816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416771, 32.125477, 16.380552>,  <33.849445, 32.814827, 16.554787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416771, 32.125477, 16.380552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749828, 32.008427, 16.568628>,  <33.949661, 31.938196, 16.681473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749828, 32.008427, 16.568628>,  <33.416771, 32.125477, 16.380552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749828, 32.008427, 16.568628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553522, -0.412280, 0.723628,
		-0.017901, -0.862783, -0.505256,
		0.832642, -0.292625, 0.470190,
		33.999622, 31.920639, 16.709684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112068, 31.622887, 16.818699>,  <33.416771, 32.125477, 16.380552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112068, 31.622887, 16.818699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481369, 31.662996, 16.967045>,  <33.702950, 31.687063, 17.056053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481369, 31.662996, 16.967045>,  <33.112068, 31.622887, 16.818699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481369, 31.662996, 16.967045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353397, -0.156974, 0.922209,
		0.150693, -0.982499, -0.109490,
		0.923256, 0.100277, 0.370867,
		33.758347, 31.693079, 17.078304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151806, 31.098940, 17.328867>,  <33.112068, 31.622887, 16.818699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151806, 31.098940, 17.328867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449619, 31.342834, 17.437599>,  <33.628307, 31.489170, 17.502838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449619, 31.342834, 17.437599>,  <33.151806, 31.098940, 17.328867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449619, 31.342834, 17.437599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207551, -0.175587, 0.962337,
		0.634500, -0.772911, -0.004179,
		0.744535, 0.609735, 0.271829,
		33.672981, 31.525755, 17.519148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541969, 30.694868, 17.802975>,  <33.151806, 31.098940, 17.328867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541969, 30.694868, 17.802975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.611256, 31.083448, 17.867821>,  <33.652828, 31.316597, 17.906729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.611256, 31.083448, 17.867821>,  <33.541969, 30.694868, 17.802975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611256, 31.083448, 17.867821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299756, -0.104794, 0.948243,
		0.938159, -0.212848, 0.273045,
		0.173218, 0.971449, 0.162116,
		33.663219, 31.374884, 17.916456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.311283, 28.463089, 22.611116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.231247, 28.854729, 22.625671>,  <34.183224, 29.089712, 22.634405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.231247, 28.854729, 22.625671>,  <34.311283, 28.463089, 22.611116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231247, 28.854729, 22.625671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358856, -0.107797, 0.927148,
		0.911693, 0.172459, 0.372925,
		-0.200095, 0.979100, 0.036390,
		34.171219, 29.148458, 22.636589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628254, 28.760960, 23.205393>,  <34.311283, 28.463089, 22.611116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628254, 28.760960, 23.205393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.359356, 29.050087, 23.141369>,  <34.198017, 29.223564, 23.102955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.359356, 29.050087, 23.141369>,  <34.628254, 28.760960, 23.205393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359356, 29.050087, 23.141369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245500, -0.013681, 0.969300,
		0.698439, 0.690902, 0.186649,
		-0.672245, 0.722819, -0.160061,
		34.157684, 29.266933, 23.093351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707645, 29.289602, 23.702747>,  <34.628254, 28.760960, 23.205393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707645, 29.289602, 23.702747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.332108, 29.351734, 23.579824>,  <34.106785, 29.389013, 23.506071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.332108, 29.351734, 23.579824>,  <34.707645, 29.289602, 23.702747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332108, 29.351734, 23.579824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298154, 0.079716, 0.951183,
		0.172245, 0.984641, -0.028529,
		-0.938848, 0.155331, -0.307305,
		34.050453, 29.398333, 23.487633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503307, 29.879873, 24.085678>,  <34.707645, 29.289602, 23.702747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503307, 29.879873, 24.085678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.177689, 29.684559, 23.959885>,  <33.982315, 29.567369, 23.884409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.177689, 29.684559, 23.959885>,  <34.503307, 29.879873, 24.085678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177689, 29.684559, 23.959885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394915, 0.068317, 0.916174,
		-0.425871, 0.870006, -0.248444,
		-0.814050, -0.488286, -0.314484,
		33.933475, 29.538073, 23.865540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910038, 30.373671, 24.265087>,  <34.503307, 29.879873, 24.085678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910038, 30.373671, 24.265087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.758961, 30.008364, 24.204042>,  <33.668312, 29.789181, 24.167416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.758961, 30.008364, 24.204042>,  <33.910038, 30.373671, 24.265087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758961, 30.008364, 24.204042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621378, 0.127807, 0.773016,
		-0.686464, 0.386795, -0.615756,
		-0.377697, -0.913266, -0.152611,
		33.645653, 29.734385, 24.158258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192028, 30.434319, 24.420782>,  <33.910038, 30.373671, 24.265087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192028, 30.434319, 24.420782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.212955, 30.035309, 24.401985>,  <33.225510, 29.795902, 24.390707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.212955, 30.035309, 24.401985>,  <33.192028, 30.434319, 24.420782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212955, 30.035309, 24.401985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790564, -0.070120, 0.608352,
		-0.610141, 0.005326, -0.792275,
		0.052315, -0.997524, -0.046993,
		33.228649, 29.736052, 24.387888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567558, 30.218159, 24.265768>,  <33.192028, 30.434319, 24.420782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567558, 30.218159, 24.265768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.760075, 29.921202, 24.452192>,  <32.875584, 29.743029, 24.564047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.760075, 29.921202, 24.452192>,  <32.567558, 30.218159, 24.265768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760075, 29.921202, 24.452192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660236, 0.042708, 0.749843,
		-0.576581, -0.668604, -0.469598,
		0.481292, -0.742391, 0.466061,
		32.904461, 29.698484, 24.592010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073555, 29.759298, 24.505472>,  <32.567558, 30.218159, 24.265768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073555, 29.759298, 24.505472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.387573, 29.665619, 24.734854>,  <32.575985, 29.609411, 24.872482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.387573, 29.665619, 24.734854>,  <32.073555, 29.759298, 24.505472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387573, 29.665619, 24.734854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591429, -0.008178, 0.806316,
		-0.184150, -0.972154, -0.144933,
		0.785048, -0.234201, 0.573454,
		32.623089, 29.595358, 24.906891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821274, 29.161076, 24.981319>,  <32.073555, 29.759298, 24.505472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821274, 29.161076, 24.981319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.125084, 29.365652, 25.142092>,  <32.307369, 29.488398, 25.238556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.125084, 29.365652, 25.142092>,  <31.821274, 29.161076, 24.981319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125084, 29.365652, 25.142092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422065, -0.082688, 0.902786,
		0.494957, -0.855331, 0.153058,
		0.759525, 0.511441, 0.401932,
		32.352943, 29.519085, 25.262672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911852, 28.784056, 25.551762>,  <31.821274, 29.161076, 24.981319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911852, 28.784056, 25.551762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082092, 29.140085, 25.617044>,  <32.184235, 29.353703, 25.656214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082092, 29.140085, 25.617044>,  <31.911852, 28.784056, 25.551762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082092, 29.140085, 25.617044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469329, 0.062914, 0.880779,
		0.773689, -0.451456, 0.444513,
		0.425599, 0.890073, 0.163206,
		32.209770, 29.407106, 25.666006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105057, 28.720392, 26.256073>,  <31.911852, 28.784056, 25.551762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105057, 28.720392, 26.256073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.105370, 29.112144, 26.175264>,  <32.105556, 29.347197, 26.126780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.105370, 29.112144, 26.175264>,  <32.105057, 28.720392, 26.256073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105370, 29.112144, 26.175264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590745, 0.163452, 0.790129,
		0.806858, 0.118727, 0.578691,
		0.000778, 0.979381, -0.202020,
		32.105602, 29.405958, 26.114658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958939, 28.989109, 26.920734>,  <32.105057, 28.720392, 26.256073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958939, 28.989109, 26.920734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.908970, 29.318134, 26.698822>,  <31.878988, 29.515551, 26.565674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.908970, 29.318134, 26.698822>,  <31.958939, 28.989109, 26.920734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908970, 29.318134, 26.698822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566121, 0.400108, 0.720708,
		0.814802, 0.404106, 0.415688,
		-0.124922, 0.822564, -0.554781,
		31.871492, 29.564903, 26.532387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076279, 29.631313, 27.272415>,  <31.958939, 28.989109, 26.920734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076279, 29.631313, 27.272415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.821743, 29.736542, 26.982347>,  <31.669022, 29.799679, 26.808308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.821743, 29.736542, 26.982347>,  <32.076279, 29.631313, 27.272415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821743, 29.736542, 26.982347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586848, 0.445054, 0.676414,
		0.500685, 0.855990, -0.128821,
		-0.636336, 0.263072, -0.725169,
		31.630842, 29.815464, 26.764797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947958, 30.349735, 27.293652>,  <32.076279, 29.631313, 27.272415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947958, 30.349735, 27.293652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.609430, 30.185970, 27.157343>,  <31.406313, 30.087711, 27.075558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.609430, 30.185970, 27.157343>,  <31.947958, 30.349735, 27.293652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609430, 30.185970, 27.157343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528686, 0.567444, 0.631267,
		-0.065078, 0.714415, -0.696689,
		-0.846319, -0.409411, -0.340774,
		31.355536, 30.063147, 27.055111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535454, 30.455734, 27.673317>,  <31.947958, 30.349735, 27.293652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535454, 30.455734, 27.673317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.782497, 30.496395, 27.985271>,  <32.930725, 30.520792, 28.172443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.782497, 30.496395, 27.985271>,  <32.535454, 30.455734, 27.673317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782497, 30.496395, 27.985271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739429, 0.262789, -0.619828,
		-0.267953, 0.959483, 0.087136,
		0.617613, 0.101654, 0.779885,
		32.967781, 30.526892, 28.219236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761093, 31.148371, 27.631548>,  <32.535454, 30.455734, 27.673317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761093, 31.148371, 27.631548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.034550, 30.960962, 27.855375>,  <33.198624, 30.848516, 27.989672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.034550, 30.960962, 27.855375>,  <32.761093, 31.148371, 27.631548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034550, 30.960962, 27.855375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729121, 0.405049, -0.551650,
		0.031808, 0.785125, 0.618520,
		0.683645, -0.468523, 0.559567,
		33.239643, 30.820406, 28.023245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307674, 31.626064, 27.640059>,  <32.761093, 31.148371, 27.631548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307674, 31.626064, 27.640059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.473789, 31.272156, 27.724642>,  <33.573460, 31.059811, 27.775393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.473789, 31.272156, 27.724642>,  <33.307674, 31.626064, 27.640059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473789, 31.272156, 27.724642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785789, 0.231782, -0.573422,
		0.458335, 0.404298, 0.791500,
		0.415288, -0.884772, 0.211459,
		33.598377, 31.006723, 27.788080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986557, 31.817457, 27.770065>,  <33.307674, 31.626064, 27.640059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986557, 31.817457, 27.770065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.002686, 31.424294, 27.698221>,  <34.012363, 31.188395, 27.655115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.002686, 31.424294, 27.698221>,  <33.986557, 31.817457, 27.770065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002686, 31.424294, 27.698221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679622, 0.158750, -0.716179,
		0.732454, -0.093188, 0.674409,
		0.040323, -0.982911, -0.179610,
		34.014782, 31.129419, 27.644339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768173, 31.653679, 27.839537>,  <33.986557, 31.817457, 27.770065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768173, 31.653679, 27.839537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.620716, 31.353933, 27.619514>,  <34.532242, 31.174086, 27.487501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.620716, 31.353933, 27.619514>,  <34.768173, 31.653679, 27.839537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620716, 31.353933, 27.619514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873393, -0.076620, -0.480952,
		0.318262, -0.657712, 0.682733,
		-0.368639, -0.749363, -0.550056,
		34.510124, 31.129124, 27.454498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302124, 31.069809, 27.748634>,  <34.768173, 31.653679, 27.839537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302124, 31.069809, 27.748634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.047417, 31.041529, 27.441509>,  <34.894592, 31.024561, 27.257235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.047417, 31.041529, 27.441509>,  <35.302124, 31.069809, 27.748634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047417, 31.041529, 27.441509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768641, -0.136990, -0.624839,
		-0.061006, -0.988046, 0.141573,
		-0.636764, -0.070700, -0.767811,
		34.856388, 31.020319, 27.211166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574123, 30.567825, 27.321886>,  <35.302124, 31.069809, 27.748634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574123, 30.567825, 27.321886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.305149, 30.732840, 27.076077>,  <35.143764, 30.831848, 26.928591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.305149, 30.732840, 27.076077>,  <35.574123, 30.567825, 27.321886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305149, 30.732840, 27.076077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642948, -0.085740, -0.761096,
		-0.366670, -0.906897, -0.207586,
		-0.672437, 0.412538, -0.614525,
		35.103416, 30.856602, 26.891720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751587, 30.191566, 26.662849>,  <35.574123, 30.567825, 27.321886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751587, 30.191566, 26.662849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.543091, 30.513840, 26.550289>,  <35.417992, 30.707203, 26.482754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.543091, 30.513840, 26.550289>,  <35.751587, 30.191566, 26.662849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543091, 30.513840, 26.550289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544564, 0.060123, -0.836562,
		-0.657084, -0.589289, -0.470084,
		-0.521239, 0.805682, -0.281400,
		35.386719, 30.755545, 26.465870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779785, 30.124979, 25.933758>,  <35.751587, 30.191566, 26.662849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779785, 30.124979, 25.933758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.674454, 30.506723, 25.990108>,  <35.611256, 30.735771, 26.023920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.674454, 30.506723, 25.990108>,  <35.779785, 30.124979, 25.933758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674454, 30.506723, 25.990108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532343, 0.265540, -0.803803,
		-0.804529, -0.136671, -0.577974,
		-0.263332, 0.954363, 0.140879,
		35.595455, 30.793032, 26.032372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360920, 30.347088, 25.344616>,  <35.779785, 30.124979, 25.933758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360920, 30.347088, 25.344616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.516407, 30.679373, 25.504025>,  <35.609699, 30.878744, 25.599670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.516407, 30.679373, 25.504025>,  <35.360920, 30.347088, 25.344616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516407, 30.679373, 25.504025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433119, 0.217012, -0.874822,
		-0.813208, 0.512665, -0.275441,
		0.388717, 0.830711, 0.398521,
		35.633022, 30.928585, 25.623581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319496, 30.848305, 24.786682>,  <35.360920, 30.347088, 25.344616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319496, 30.848305, 24.786682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.555111, 31.063324, 25.028038>,  <35.696480, 31.192335, 25.172852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.555111, 31.063324, 25.028038>,  <35.319496, 30.848305, 24.786682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555111, 31.063324, 25.028038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595468, 0.216054, -0.773782,
		-0.546309, 0.815085, -0.192829,
		0.589037, 0.537547, 0.603389,
		35.731823, 31.224588, 25.209055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356613, 31.512037, 24.453398>,  <35.319496, 30.848305, 24.786682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356613, 31.512037, 24.453398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671631, 31.486097, 24.698532>,  <35.860641, 31.470533, 24.845612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.671631, 31.486097, 24.698532>,  <35.356613, 31.512037, 24.453398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671631, 31.486097, 24.698532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600717, 0.302687, -0.739945,
		-0.137510, 0.950881, 0.277337,
		0.787546, -0.064851, 0.612834,
		35.907894, 31.466642, 24.882381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688057, 32.178104, 24.525900>,  <35.356613, 31.512037, 24.453398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688057, 32.178104, 24.525900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.950157, 31.886223, 24.604057>,  <36.107418, 31.711094, 24.650951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.950157, 31.886223, 24.604057>,  <35.688057, 32.178104, 24.525900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950157, 31.886223, 24.604057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535283, 0.265996, -0.801697,
		0.533029, 0.629902, 0.564893,
		0.655250, -0.729705, 0.195393,
		36.146732, 31.667311, 24.662676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377747, 32.525543, 24.457766>,  <35.688057, 32.178104, 24.525900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377747, 32.525543, 24.457766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.449593, 32.133408, 24.425068>,  <36.492699, 31.898127, 24.405449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.449593, 32.133408, 24.425068>,  <36.377747, 32.525543, 24.457766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449593, 32.133408, 24.425068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508909, 0.163707, -0.845111,
		0.841874, 0.110193, 0.528305,
		0.179612, -0.980336, -0.081742,
		36.503475, 31.839308, 24.400545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991768, 33.168877, 24.381691>,  <36.377747, 32.525543, 24.457766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991768, 33.168877, 24.381691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761200, 33.470245, 24.255138>,  <36.622860, 33.651066, 24.179207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761200, 33.470245, 24.255138>,  <36.991768, 33.168877, 24.381691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761200, 33.470245, 24.255138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577343, -0.101498, 0.810169,
		0.578283, 0.649662, 0.493486,
		-0.576423, 0.753417, -0.316383,
		36.588272, 33.696270, 24.160223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759666, 33.395462, 24.944965>,  <36.991768, 33.168877, 24.381691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759666, 33.395462, 24.944965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.492519, 33.584183, 24.714710>,  <36.332230, 33.697414, 24.576557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.492519, 33.584183, 24.714710>,  <36.759666, 33.395462, 24.944965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492519, 33.584183, 24.714710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717418, -0.202165, 0.666664,
		0.198157, 0.858217, 0.473495,
		-0.667866, 0.471798, -0.575640,
		36.292160, 33.725723, 24.542019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317726, 33.820992, 25.338474>,  <36.759666, 33.395462, 24.944965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317726, 33.820992, 25.338474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.103844, 33.751232, 25.007734>,  <35.975513, 33.709377, 24.809290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.103844, 33.751232, 25.007734>,  <36.317726, 33.820992, 25.338474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103844, 33.751232, 25.007734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829575, -0.078013, 0.552920,
		-0.160935, 0.981579, -0.102966,
		-0.534702, -0.174402, -0.826848,
		35.943432, 33.698910, 24.759680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606239, 34.236267, 25.459682>,  <36.317726, 33.820992, 25.338474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606239, 34.236267, 25.459682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.538895, 33.978031, 25.161724>,  <35.498486, 33.823090, 24.982950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.538895, 33.978031, 25.161724>,  <35.606239, 34.236267, 25.459682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538895, 33.978031, 25.161724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954110, -0.083116, 0.287690,
		-0.247642, 0.759148, -0.601969,
		-0.168366, -0.645589, -0.744894,
		35.488384, 33.784355, 24.938255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994987, 34.547733, 25.098568>,  <35.606239, 34.236267, 25.459682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994987, 34.547733, 25.098568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.027531, 34.153473, 25.039406>,  <35.047054, 33.916916, 25.003908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.027531, 34.153473, 25.039406>,  <34.994987, 34.547733, 25.098568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027531, 34.153473, 25.039406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921508, -0.130924, 0.365626,
		-0.379743, 0.106551, -0.918935,
		0.081353, -0.985650, -0.147905,
		35.051937, 33.857777, 24.995035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302895, 34.302044, 24.944004>,  <34.994987, 34.547733, 25.098568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302895, 34.302044, 24.944004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.496052, 33.969364, 25.053608>,  <34.611946, 33.769756, 25.119371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.496052, 33.969364, 25.053608>,  <34.302895, 34.302044, 24.944004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496052, 33.969364, 25.053608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847633, -0.365399, 0.384711,
		-0.219842, -0.418037, -0.881428,
		0.482896, -0.831703, 0.274012,
		34.640919, 33.719852, 25.135811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819378, 33.805218, 24.735186>,  <34.302895, 34.302044, 24.944004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819378, 33.805218, 24.735186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.063232, 33.674389, 25.024008>,  <34.209545, 33.595890, 25.197302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.063232, 33.674389, 25.024008>,  <33.819378, 33.805218, 24.735186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063232, 33.674389, 25.024008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783224, -0.388826, 0.485155,
		0.122074, -0.861300, -0.493214,
		0.609638, -0.327072, 0.722056,
		34.246124, 33.576267, 25.240625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484360, 33.179443, 24.986946>,  <33.819378, 33.805218, 24.735186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484360, 33.179443, 24.986946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.758801, 33.271969, 25.262848>,  <33.923466, 33.327484, 25.428389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.758801, 33.271969, 25.262848>,  <33.484360, 33.179443, 24.986946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758801, 33.271969, 25.262848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590170, -0.377427, 0.713616,
		0.425402, -0.896684, -0.122437,
		0.686099, 0.231315, 0.689754,
		33.964630, 33.341362, 25.469774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552265, 32.605663, 25.468533>,  <33.484360, 33.179443, 24.986946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552265, 32.605663, 25.468533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.688133, 32.930157, 25.658911>,  <33.769653, 33.124855, 25.773138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.688133, 32.930157, 25.658911>,  <33.552265, 32.605663, 25.468533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688133, 32.930157, 25.658911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585145, -0.213909, 0.782207,
		0.736363, -0.544187, 0.402033,
		0.339668, 0.811235, 0.475943,
		33.790035, 33.173527, 25.801693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561100, 32.341801, 26.134893>,  <33.552265, 32.605663, 25.468533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561100, 32.341801, 26.134893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.598728, 32.728863, 26.228535>,  <33.621304, 32.961098, 26.284719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.598728, 32.728863, 26.228535>,  <33.561100, 32.341801, 26.134893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598728, 32.728863, 26.228535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584225, -0.136745, 0.799989,
		0.806122, -0.212021, 0.552463,
		0.094068, 0.967651, 0.234102,
		33.626949, 33.019157, 26.298765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669609, 32.440231, 26.841566>,  <33.561100, 32.341801, 26.134893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669609, 32.440231, 26.841566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.528282, 32.803677, 26.752489>,  <33.443485, 33.021744, 26.699043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.528282, 32.803677, 26.752489>,  <33.669609, 32.440231, 26.841566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528282, 32.803677, 26.752489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579198, -0.025527, 0.814787,
		0.734639, 0.416864, 0.535285,
		-0.353320, 0.908610, -0.222694,
		33.422287, 33.076260, 26.685680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681686, 32.864140, 27.542555>,  <33.669609, 32.440231, 26.841566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681686, 32.864140, 27.542555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.418137, 32.997028, 27.272587>,  <33.260010, 33.076763, 27.110605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.418137, 32.997028, 27.272587>,  <33.681686, 32.864140, 27.542555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418137, 32.997028, 27.272587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708933, 0.025863, 0.704802,
		0.251605, 0.942847, 0.218481,
		-0.658870, 0.332220, -0.674922,
		33.220474, 33.096695, 27.070110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.406036, 34.344219, 22.062578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100601, 34.457829, 21.830626>,  <38.917339, 34.525993, 21.691454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100601, 34.457829, 21.830626>,  <39.406036, 34.344219, 22.062578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100601, 34.457829, 21.830626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577869, 0.100096, 0.809968,
		0.288092, 0.953579, 0.087695,
		-0.763590, 0.284022, -0.579880,
		38.871525, 34.543034, 21.656662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270485, 34.902287, 22.447168>,  <39.406036, 34.344219, 22.062578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270485, 34.902287, 22.447168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970524, 34.763382, 22.221937>,  <38.790546, 34.680038, 22.086800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970524, 34.763382, 22.221937>,  <39.270485, 34.902287, 22.447168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970524, 34.763382, 22.221937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625274, 0.094091, 0.774713,
		-0.216046, 0.933037, -0.287691,
		-0.749905, -0.347259, -0.563076,
		38.745552, 34.659203, 22.053015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644272, 35.245144, 22.733768>,  <39.270485, 34.902287, 22.447168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644272, 35.245144, 22.733768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516083, 34.932922, 22.519096>,  <38.439167, 34.745590, 22.390293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516083, 34.932922, 22.519096>,  <38.644272, 35.245144, 22.733768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516083, 34.932922, 22.519096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827738, -0.044727, 0.559330,
		-0.460593, 0.623482, -0.631763,
		-0.320476, -0.780558, -0.536680,
		38.419941, 34.698753, 22.358093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001324, 35.350784, 22.800209>,  <38.644272, 35.245144, 22.733768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001324, 35.350784, 22.800209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980194, 34.975304, 22.663950>,  <37.967518, 34.750015, 22.582193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980194, 34.975304, 22.663950>,  <38.001324, 35.350784, 22.800209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980194, 34.975304, 22.663950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819505, -0.154184, 0.551942,
		-0.570633, 0.308317, -0.761130,
		-0.052819, -0.938705, -0.340650,
		37.964348, 34.693691, 22.561754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287392, 35.148823, 22.558826>,  <38.001324, 35.350784, 22.800209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287392, 35.148823, 22.558826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456661, 34.791748, 22.620838>,  <37.558224, 34.577503, 22.658045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456661, 34.791748, 22.620838>,  <37.287392, 35.148823, 22.558826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456661, 34.791748, 22.620838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799172, -0.287135, 0.528089,
		-0.426904, -0.347368, -0.834918,
		0.423176, -0.892686, 0.155028,
		37.583614, 34.523941, 22.667347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725819, 34.550507, 22.480070>,  <37.287392, 35.148823, 22.558826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725819, 34.550507, 22.480070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034691, 34.397327, 22.682888>,  <37.220013, 34.305420, 22.804579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034691, 34.397327, 22.682888>,  <36.725819, 34.550507, 22.480070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034691, 34.397327, 22.682888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632979, -0.533278, 0.561207,
		0.055484, -0.754300, -0.654181,
		0.772178, -0.382945, 0.507044,
		37.266346, 34.282444, 22.835001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583973, 33.775169, 22.538809>,  <36.725819, 34.550507, 22.480070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583973, 33.775169, 22.538809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841003, 33.921547, 22.808083>,  <36.995224, 34.009373, 22.969646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841003, 33.921547, 22.808083>,  <36.583973, 33.775169, 22.538809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841003, 33.921547, 22.808083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488655, -0.480997, 0.727913,
		0.590177, -0.796696, -0.130256,
		0.642578, 0.365948, 0.673183,
		37.033775, 34.031330, 23.010038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613525, 33.276630, 23.004030>,  <36.583973, 33.775169, 22.538809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613525, 33.276630, 23.004030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768883, 33.587593, 23.201935>,  <36.862099, 33.774170, 23.320679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768883, 33.587593, 23.201935>,  <36.613525, 33.276630, 23.004030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768883, 33.587593, 23.201935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430821, -0.321431, 0.843253,
		0.814582, -0.540669, 0.210080,
		0.388394, 0.777405, 0.494763,
		36.885403, 33.820816, 23.350365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838985, 32.978035, 23.614082>,  <36.613525, 33.276630, 23.004030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838985, 32.978035, 23.614082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781799, 33.368778, 23.677708>,  <36.747486, 33.603226, 23.715883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781799, 33.368778, 23.677708>,  <36.838985, 32.978035, 23.614082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781799, 33.368778, 23.677708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392247, -0.203480, 0.897072,
		0.908682, 0.065861, 0.412262,
		-0.142969, 0.976861, 0.159065,
		36.738907, 33.661839, 23.725428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107533, 32.518204, 24.149044>,  <36.838985, 32.978035, 23.614082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107533, 32.518204, 24.149044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953297, 32.151833, 24.104496>,  <36.860756, 31.932011, 24.077768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953297, 32.151833, 24.104496>,  <37.107533, 32.518204, 24.149044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953297, 32.151833, 24.104496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338784, -0.028273, -0.940439,
		0.858224, -0.400350, 0.321203,
		-0.385586, -0.915926, -0.111368,
		36.837620, 31.877054, 24.071085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577881, 32.252449, 23.756353>,  <37.107533, 32.518204, 24.149044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577881, 32.252449, 23.756353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275501, 31.994263, 23.712681>,  <37.094074, 31.839352, 23.686478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275501, 31.994263, 23.712681>,  <37.577881, 32.252449, 23.756353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275501, 31.994263, 23.712681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264071, -0.148055, -0.953072,
		0.599008, -0.749304, 0.282370,
		-0.755947, -0.645464, -0.109183,
		37.048717, 31.800623, 23.679926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866608, 31.648237, 23.369949>,  <37.577881, 32.252449, 23.756353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866608, 31.648237, 23.369949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474777, 31.621553, 23.294083>,  <37.239677, 31.605543, 23.248562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474777, 31.621553, 23.294083>,  <37.866608, 31.648237, 23.369949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474777, 31.621553, 23.294083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200907, -0.288427, -0.936187,
		0.007749, -0.955175, 0.295940,
		-0.979580, -0.066711, -0.189666,
		37.180904, 31.601540, 23.237183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742363, 30.978928, 23.098116>,  <37.866608, 31.648237, 23.369949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742363, 30.978928, 23.098116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416233, 31.168755, 22.965435>,  <37.220554, 31.282652, 22.885826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416233, 31.168755, 22.965435>,  <37.742363, 30.978928, 23.098116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416233, 31.168755, 22.965435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183167, -0.332058, -0.925304,
		-0.549265, -0.815182, 0.183811,
		-0.815327, 0.474569, -0.331702,
		37.171635, 31.311125, 22.865925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247932, 30.421370, 22.835522>,  <37.742363, 30.978928, 23.098116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247932, 30.421370, 22.835522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159275, 30.770502, 22.661606>,  <37.106083, 30.979980, 22.557257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159275, 30.770502, 22.661606>,  <37.247932, 30.421370, 22.835522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159275, 30.770502, 22.661606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094375, -0.424587, -0.900455,
		-0.970550, -0.240612, 0.011733,
		-0.221642, 0.872830, -0.434791,
		37.092781, 31.032351, 22.531168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696983, 30.343140, 22.220999>,  <37.247932, 30.421370, 22.835522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696983, 30.343140, 22.220999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866451, 30.701479, 22.167387>,  <36.968132, 30.916483, 22.135220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866451, 30.701479, 22.167387>,  <36.696983, 30.343140, 22.220999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866451, 30.701479, 22.167387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127676, -0.205544, -0.970284,
		-0.896775, 0.393966, -0.201460,
		0.423668, 0.895847, -0.134027,
		36.993553, 30.970234, 22.127178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410091, 30.725967, 21.588421>,  <36.696983, 30.343140, 22.220999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410091, 30.725967, 21.588421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769981, 30.888613, 21.651859>,  <36.985916, 30.986200, 21.689922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769981, 30.888613, 21.651859>,  <36.410091, 30.725967, 21.588421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769981, 30.888613, 21.651859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267003, -0.225349, -0.936978,
		-0.345251, 0.885371, -0.311320,
		0.899729, 0.406616, 0.158595,
		37.039902, 31.010597, 21.699438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595089, 30.984140, 20.928959>,  <36.410091, 30.725967, 21.588421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595089, 30.984140, 20.928959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943073, 31.013508, 21.124012>,  <37.151863, 31.031128, 21.241043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943073, 31.013508, 21.124012>,  <36.595089, 30.984140, 20.928959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943073, 31.013508, 21.124012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491964, -0.197143, -0.848001,
		0.033873, 0.977622, -0.207626,
		0.869957, 0.073420, 0.487632,
		37.204060, 31.035534, 21.270302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993885, 31.607849, 20.642405>,  <36.595089, 30.984140, 20.928959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993885, 31.607849, 20.642405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234188, 31.328459, 20.797955>,  <37.378368, 31.160824, 20.891285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234188, 31.328459, 20.797955>,  <36.993885, 31.607849, 20.642405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234188, 31.328459, 20.797955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514927, -0.033999, -0.856560,
		0.611509, 0.714824, 0.339239,
		0.600756, -0.698477, 0.388873,
		37.414413, 31.118916, 20.914616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629642, 31.717188, 20.354931>,  <36.993885, 31.607849, 20.642405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629642, 31.717188, 20.354931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676884, 31.337666, 20.472111>,  <37.705227, 31.109953, 20.542418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676884, 31.337666, 20.472111>,  <37.629642, 31.717188, 20.354931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676884, 31.337666, 20.472111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651594, -0.148568, -0.743877,
		0.749318, 0.278737, 0.600690,
		0.118103, -0.948806, 0.292948,
		37.712315, 31.053024, 20.559996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366993, 31.690498, 20.369141>,  <37.629642, 31.717188, 20.354931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366993, 31.690498, 20.369141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231796, 31.314096, 20.375750>,  <38.150677, 31.088255, 20.379715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231796, 31.314096, 20.375750>,  <38.366993, 31.690498, 20.369141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231796, 31.314096, 20.375750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624634, -0.237419, -0.743952,
		0.703984, -0.241132, 0.668029,
		-0.337993, -0.941004, 0.016520,
		38.130398, 31.031796, 20.380705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951347, 31.456575, 20.166698>,  <38.366993, 31.690498, 20.369141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951347, 31.456575, 20.166698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660576, 31.186275, 20.117805>,  <38.486115, 31.024096, 20.088469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660576, 31.186275, 20.117805>,  <38.951347, 31.456575, 20.166698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660576, 31.186275, 20.117805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476742, -0.368485, -0.798082,
		0.494263, -0.638420, 0.590020,
		-0.726926, -0.675750, -0.122233,
		38.442497, 30.983551, 20.081135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230453, 30.704504, 20.087461>,  <38.951347, 31.456575, 20.166698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230453, 30.704504, 20.087461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880116, 30.725655, 19.895586>,  <38.669914, 30.738344, 19.780460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880116, 30.725655, 19.895586>,  <39.230453, 30.704504, 20.087461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880116, 30.725655, 19.895586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446902, -0.286296, -0.847534,
		-0.182145, -0.956681, 0.227121,
		-0.875844, 0.052874, -0.479690,
		38.617363, 30.741518, 19.751678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211689, 30.146753, 19.766508>,  <39.230453, 30.704504, 20.087461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211689, 30.146753, 19.766508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913734, 30.337286, 19.579636>,  <38.734962, 30.451605, 19.467512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913734, 30.337286, 19.579636>,  <39.211689, 30.146753, 19.766508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913734, 30.337286, 19.579636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362960, -0.298233, -0.882789,
		-0.559828, -0.827144, 0.049260,
		-0.744884, 0.476331, -0.467179,
		38.690269, 30.480185, 19.439482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.034321, 34.628654, 16.616304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.400082, 34.666241, 16.773802>,  <33.619537, 34.688793, 16.868299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.400082, 34.666241, 16.773802>,  <33.034321, 34.628654, 16.616304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400082, 34.666241, 16.773802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337746, -0.359077, 0.870052,
		0.223139, -0.928566, -0.296606,
		0.914405, 0.093965, 0.393744,
		33.674404, 34.694431, 16.891924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147388, 33.979893, 16.882076>,  <33.034321, 34.628654, 16.616304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147388, 33.979893, 16.882076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373745, 34.244488, 17.078930>,  <33.509560, 34.403244, 17.197042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373745, 34.244488, 17.078930>,  <33.147388, 33.979893, 16.882076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373745, 34.244488, 17.078930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261841, -0.421809, 0.868053,
		0.781795, -0.620087, -0.065495,
		0.565894, 0.661490, 0.492132,
		33.543514, 34.442936, 17.226570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390545, 33.725491, 17.471455>,  <33.147388, 33.979893, 16.882076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390545, 33.725491, 17.471455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.470200, 34.102131, 17.580063>,  <33.517994, 34.328117, 17.645227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.470200, 34.102131, 17.580063>,  <33.390545, 33.725491, 17.471455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470200, 34.102131, 17.580063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165304, -0.240823, 0.956389,
		0.965928, -0.235339, 0.107694,
		0.199141, 0.941605, 0.271520,
		33.529942, 34.384613, 17.661518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855541, 33.645771, 18.077183>,  <33.390545, 33.725491, 17.471455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855541, 33.645771, 18.077183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.662449, 33.995945, 18.086845>,  <33.546593, 34.206051, 18.092642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.662449, 33.995945, 18.086845>,  <33.855541, 33.645771, 18.077183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662449, 33.995945, 18.086845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239353, -0.158414, 0.957922,
		0.842427, 0.456634, 0.286009,
		-0.482728, 0.875437, 0.024155,
		33.517632, 34.258575, 18.094091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919449, 33.850544, 18.851900>,  <33.855541, 33.645771, 18.077183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919449, 33.850544, 18.851900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645103, 34.084583, 18.678808>,  <33.480495, 34.225006, 18.574953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645103, 34.084583, 18.678808>,  <33.919449, 33.850544, 18.851900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645103, 34.084583, 18.678808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475511, 0.089819, 0.875113,
		0.550891, 0.805976, 0.216615,
		-0.685864, 0.585094, -0.432731,
		33.439342, 34.260113, 18.548988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812706, 34.383606, 19.444195>,  <33.919449, 33.850544, 18.851900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812706, 34.383606, 19.444195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.509113, 34.384777, 19.183752>,  <33.326958, 34.385479, 19.027487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.509113, 34.384777, 19.183752>,  <33.812706, 34.383606, 19.444195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509113, 34.384777, 19.183752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649637, 0.063893, 0.757555,
		0.043817, 0.997953, -0.046593,
		-0.758981, 0.002925, -0.651106,
		33.281418, 34.385654, 18.988420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367630, 34.949638, 19.611401>,  <33.812706, 34.383606, 19.444195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367630, 34.949638, 19.611401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.136448, 34.684700, 19.420715>,  <32.997738, 34.525738, 19.306303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.136448, 34.684700, 19.420715>,  <33.367630, 34.949638, 19.611401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136448, 34.684700, 19.420715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656460, 0.030320, 0.753752,
		-0.484792, 0.748583, -0.452328,
		-0.577960, -0.662348, -0.476715,
		32.963058, 34.485996, 19.277700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781559, 35.257053, 19.708052>,  <33.367630, 34.949638, 19.611401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781559, 35.257053, 19.708052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.673130, 34.886292, 19.604225>,  <32.608074, 34.663834, 19.541929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.673130, 34.886292, 19.604225>,  <32.781559, 35.257053, 19.708052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673130, 34.886292, 19.604225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705876, 0.008087, 0.708289,
		-0.654415, 0.375220, -0.656469,
		-0.271074, -0.926901, -0.259566,
		32.591808, 34.608223, 19.526356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990919, 35.178226, 19.606358>,  <32.781559, 35.257053, 19.708052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990919, 35.178226, 19.606358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.120892, 34.810547, 19.695339>,  <32.198875, 34.589939, 19.748728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.120892, 34.810547, 19.695339>,  <31.990919, 35.178226, 19.606358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120892, 34.810547, 19.695339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718194, -0.086793, 0.690409,
		-0.615319, -0.384100, -0.688368,
		0.324932, -0.919203, 0.222452,
		32.218372, 34.534786, 19.762075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409071, 34.827194, 19.753725>,  <31.990919, 35.178226, 19.606358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409071, 34.827194, 19.753725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.701143, 34.595993, 19.899462>,  <31.876387, 34.457272, 19.986904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.701143, 34.595993, 19.899462>,  <31.409071, 34.827194, 19.753725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701143, 34.595993, 19.899462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595918, -0.277888, 0.753433,
		-0.334245, -0.767257, -0.547354,
		0.730179, -0.578009, 0.364339,
		31.920198, 34.422592, 20.008764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092407, 34.322918, 20.032322>,  <31.409071, 34.827194, 19.753725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092407, 34.322918, 20.032322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.442406, 34.251064, 20.212151>,  <31.652405, 34.207954, 20.320047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.442406, 34.251064, 20.212151>,  <31.092407, 34.322918, 20.032322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442406, 34.251064, 20.212151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474924, -0.498709, 0.725077,
		0.093960, -0.847952, -0.521679,
		0.874996, -0.179630, 0.449572,
		31.704905, 34.197174, 20.347023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980488, 33.699463, 20.264355>,  <31.092407, 34.322918, 20.032322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980488, 33.699463, 20.264355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.287239, 33.827564, 20.486828>,  <31.471291, 33.904423, 20.620312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.287239, 33.827564, 20.486828>,  <30.980488, 33.699463, 20.264355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287239, 33.827564, 20.486828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422971, -0.399581, 0.813284,
		0.482694, -0.858938, -0.170974,
		0.766878, 0.320250, 0.556181,
		31.517303, 33.923637, 20.653683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147631, 33.148918, 20.588940>,  <30.980488, 33.699463, 20.264355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147631, 33.148918, 20.588940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.290726, 33.441910, 20.820627>,  <31.376583, 33.617706, 20.959641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.290726, 33.441910, 20.820627>,  <31.147631, 33.148918, 20.588940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290726, 33.441910, 20.820627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178589, -0.555153, 0.812349,
		0.916585, -0.394052, -0.067787,
		0.357739, 0.732481, 0.579219,
		31.398048, 33.661655, 20.994392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524372, 32.825344, 21.208323>,  <31.147631, 33.148918, 20.588940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524372, 32.825344, 21.208323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.447422, 33.198181, 21.331089>,  <31.401251, 33.421883, 21.404749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.447422, 33.198181, 21.331089>,  <31.524372, 32.825344, 21.208323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447422, 33.198181, 21.331089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146771, -0.336570, 0.930150,
		0.970283, 0.133893, 0.201552,
		-0.192377, 0.932091, 0.306917,
		31.389709, 33.477810, 21.423164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958599, 32.260700, 21.234304>,  <31.524372, 32.825344, 21.208323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958599, 32.260700, 21.234304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.886477, 31.867931, 21.257378>,  <31.843203, 31.632271, 21.271221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.886477, 31.867931, 21.257378>,  <31.958599, 32.260700, 21.234304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886477, 31.867931, 21.257378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606349, -0.157133, -0.779519,
		0.774487, -0.105577, 0.623717,
		-0.180306, -0.981918, 0.057681,
		31.832384, 31.573357, 21.274681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553986, 31.937365, 21.405661>,  <31.958599, 32.260700, 21.234304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553986, 31.937365, 21.405661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.310310, 31.694881, 21.201147>,  <32.164104, 31.549393, 21.078440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.310310, 31.694881, 21.201147>,  <32.553986, 31.937365, 21.405661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310310, 31.694881, 21.201147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660227, -0.030537, -0.750445,
		0.439311, -0.794722, 0.418836,
		-0.609185, -0.606206, -0.511282,
		32.127556, 31.513020, 21.047762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960804, 31.405376, 21.263023>,  <32.553986, 31.937365, 21.405661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960804, 31.405376, 21.263023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.651073, 31.357540, 21.014469>,  <32.465237, 31.328838, 20.865337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.651073, 31.357540, 21.014469>,  <32.960804, 31.405376, 21.263023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651073, 31.357540, 21.014469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632743, -0.158118, -0.758047,
		-0.007598, -0.980152, 0.198104,
		-0.774325, -0.119589, -0.621386,
		32.418777, 31.321663, 20.828053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178627, 30.834106, 20.762785>,  <32.960804, 31.405376, 21.263023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178627, 30.834106, 20.762785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.873154, 31.014603, 20.578102>,  <32.689869, 31.122900, 20.467293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.873154, 31.014603, 20.578102>,  <33.178627, 30.834106, 20.762785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873154, 31.014603, 20.578102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409780, -0.213827, -0.886768,
		-0.498873, -0.866405, -0.021615,
		-0.763679, 0.451242, -0.461708,
		32.644051, 31.149975, 20.439590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029270, 30.455124, 20.149290>,  <33.178627, 30.834106, 20.762785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029270, 30.455124, 20.149290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.874126, 30.817677, 20.082308>,  <32.781040, 31.035208, 20.042118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.874126, 30.817677, 20.082308>,  <33.029270, 30.455124, 20.149290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874126, 30.817677, 20.082308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507047, 0.058094, -0.859959,
		-0.769722, -0.418448, -0.482109,
		-0.387856, 0.906381, -0.167456,
		32.757771, 31.089590, 20.032070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710934, 30.386513, 19.499022>,  <33.029270, 30.455124, 20.149290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710934, 30.386513, 19.499022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795284, 30.771681, 19.566338>,  <32.845894, 31.002781, 19.606728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795284, 30.771681, 19.566338>,  <32.710934, 30.386513, 19.499022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795284, 30.771681, 19.566338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347989, 0.086932, -0.933459,
		-0.913474, 0.255405, -0.316754,
		0.210875, 0.962918, 0.168288,
		32.858547, 31.060556, 19.616823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335144, 30.763466, 18.883108>,  <32.710934, 30.386513, 19.499022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335144, 30.763466, 18.883108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.586021, 31.021238, 19.058081>,  <32.736546, 31.175901, 19.163063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.586021, 31.021238, 19.058081>,  <32.335144, 30.763466, 18.883108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586021, 31.021238, 19.058081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353082, 0.265352, -0.897174,
		-0.694237, 0.717147, -0.061111,
		0.627190, 0.644429, 0.437429,
		32.774178, 31.214567, 19.189310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328522, 31.347776, 18.469034>,  <32.335144, 30.763466, 18.883108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328522, 31.347776, 18.469034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.678764, 31.362888, 18.661654>,  <32.888908, 31.371956, 18.777225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.678764, 31.362888, 18.661654>,  <32.328522, 31.347776, 18.469034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678764, 31.362888, 18.661654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452974, 0.281935, -0.845770,
		-0.167717, 0.958689, 0.229751,
		0.875606, 0.037778, 0.481547,
		32.941444, 31.374222, 18.806118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600719, 32.000076, 18.231674>,  <32.328522, 31.347776, 18.469034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600719, 32.000076, 18.231674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906227, 31.824413, 18.420900>,  <33.089531, 31.719015, 18.534437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906227, 31.824413, 18.420900>,  <32.600719, 32.000076, 18.231674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906227, 31.824413, 18.420900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624573, 0.317746, -0.713404,
		0.162984, 0.840342, 0.516974,
		0.763770, -0.439162, 0.473067,
		33.135357, 31.692665, 18.562820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171207, 32.528168, 18.277559>,  <32.600719, 32.000076, 18.231674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171207, 32.528168, 18.277559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.317886, 32.158077, 18.316515>,  <33.405895, 31.936022, 18.339888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.317886, 32.158077, 18.316515>,  <33.171207, 32.528168, 18.277559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317886, 32.158077, 18.316515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578862, 0.144961, -0.802437,
		0.728319, 0.350630, 0.588737,
		0.366702, -0.925227, 0.097389,
		33.427898, 31.880508, 18.345732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830452, 32.637329, 18.137825>,  <33.171207, 32.528168, 18.277559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830452, 32.637329, 18.137825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.778023, 32.246620, 18.070026>,  <33.746567, 32.012196, 18.029348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.778023, 32.246620, 18.070026>,  <33.830452, 32.637329, 18.137825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778023, 32.246620, 18.070026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589573, 0.060649, -0.805435,
		0.797009, -0.205500, 0.567931,
		-0.131072, -0.976776, -0.169496,
		33.738701, 31.953587, 18.019178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494553, 32.389812, 17.986727>,  <33.830452, 32.637329, 18.137825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494553, 32.389812, 17.986727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250984, 32.118893, 17.821564>,  <34.104843, 31.956341, 17.722466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250984, 32.118893, 17.821564>,  <34.494553, 32.389812, 17.986727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250984, 32.118893, 17.821564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521533, 0.050377, -0.851743,
		0.597683, -0.733984, 0.322557,
		-0.608916, -0.677296, -0.412906,
		34.068310, 31.915705, 17.697691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919746, 31.990580, 17.618589>,  <34.494553, 32.389812, 17.986727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919746, 31.990580, 17.618589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.567760, 31.876425, 17.466686>,  <34.356567, 31.807932, 17.375544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.567760, 31.876425, 17.466686>,  <34.919746, 31.990580, 17.618589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567760, 31.876425, 17.466686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426607, -0.123089, -0.896022,
		0.208968, -0.950476, 0.230062,
		-0.879965, -0.285386, -0.379758,
		34.303772, 31.790810, 17.352758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977531, 31.322189, 17.263752>,  <34.919746, 31.990580, 17.618589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977531, 31.322189, 17.263752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.681778, 31.548012, 17.117010>,  <34.504326, 31.683506, 17.028965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.681778, 31.548012, 17.117010>,  <34.977531, 31.322189, 17.263752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681778, 31.548012, 17.117010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440642, -0.006211, -0.897662,
		-0.509059, -0.825371, -0.244175,
		-0.739388, 0.564556, -0.366855,
		34.459961, 31.717379, 17.006954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136795, 30.594175, 17.107632>,  <34.977531, 31.322189, 17.263752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136795, 30.594175, 17.107632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487679, 30.421511, 17.191708>,  <35.698208, 30.317911, 17.242153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487679, 30.421511, 17.191708>,  <35.136795, 30.594175, 17.107632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487679, 30.421511, 17.191708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359976, -0.301637, 0.882855,
		-0.317691, -0.850109, -0.419985,
		0.877205, -0.431659, 0.210191,
		35.750839, 30.292011, 17.254765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898834, 30.014309, 17.472534>,  <35.136795, 30.594175, 17.107632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898834, 30.014309, 17.472534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.290333, 30.048136, 17.547262>,  <35.525230, 30.068432, 17.592098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.290333, 30.048136, 17.547262>,  <34.898834, 30.014309, 17.472534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290333, 30.048136, 17.547262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150761, -0.320811, 0.935068,
		0.139011, -0.943360, -0.301243,
		0.978748, 0.084569, 0.186818,
		35.583958, 30.073505, 17.603308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017269, 29.418922, 17.874043>,  <34.898834, 30.014309, 17.472534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017269, 29.418922, 17.874043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.308540, 29.681673, 17.952297>,  <35.483303, 29.839323, 17.999250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.308540, 29.681673, 17.952297>,  <35.017269, 29.418922, 17.874043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308540, 29.681673, 17.952297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112785, -0.166707, 0.979535,
		0.676048, -0.735338, -0.047306,
		0.728175, 0.656877, 0.195638,
		35.526993, 29.878736, 18.010988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253006, 29.129862, 18.495497>,  <35.017269, 29.418922, 17.874043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253006, 29.129862, 18.495497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424232, 29.490595, 18.471994>,  <35.526970, 29.707035, 18.457893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424232, 29.490595, 18.471994>,  <35.253006, 29.129862, 18.495497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424232, 29.490595, 18.471994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006777, 0.068214, 0.997648,
		0.903721, -0.426664, 0.035312,
		0.428069, 0.901834, -0.058755,
		35.552654, 29.761145, 18.454369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810715, 28.989500, 18.830549>,  <35.253006, 29.129862, 18.495497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810715, 28.989500, 18.830549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.743893, 29.383009, 18.856731>,  <35.703800, 29.619114, 18.872440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.743893, 29.383009, 18.856731>,  <35.810715, 28.989500, 18.830549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743893, 29.383009, 18.856731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096273, -0.082348, 0.991943,
		0.981236, 0.159410, 0.108467,
		-0.167058, 0.983772, 0.065456,
		35.693775, 29.678141, 18.876368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252846, 29.281183, 19.293489>,  <35.810715, 28.989500, 18.830549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252846, 29.281183, 19.293489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957066, 29.549902, 19.276056>,  <35.779598, 29.711132, 19.265596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957066, 29.549902, 19.276056>,  <36.252846, 29.281183, 19.293489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957066, 29.549902, 19.276056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136310, -0.086011, 0.986926,
		0.659264, 0.735726, 0.155174,
		-0.739453, 0.671796, -0.043583,
		35.735229, 29.751440, 19.262981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444530, 29.820980, 19.831984>,  <36.252846, 29.281183, 19.293489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444530, 29.820980, 19.831984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047649, 29.833241, 19.783661>,  <35.809521, 29.840597, 19.754667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047649, 29.833241, 19.783661>,  <36.444530, 29.820980, 19.831984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047649, 29.833241, 19.783661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119198, 0.049777, 0.991622,
		0.036407, 0.998290, -0.045735,
		-0.992203, 0.030650, -0.120807,
		35.749989, 29.842436, 19.747419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172165, 30.393738, 20.307478>,  <36.444530, 29.820980, 19.831984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172165, 30.393738, 20.307478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.850510, 30.174042, 20.216530>,  <35.657516, 30.042225, 20.161961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.850510, 30.174042, 20.216530>,  <36.172165, 30.393738, 20.307478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850510, 30.174042, 20.216530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279388, 0.011595, 0.960108,
		-0.524693, 0.835585, -0.162775,
		-0.804139, -0.549239, -0.227369,
		35.609268, 30.009270, 20.148319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615093, 30.638054, 20.731430>,  <36.172165, 30.393738, 20.307478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615093, 30.638054, 20.731430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505047, 30.264704, 20.639236>,  <35.439018, 30.040693, 20.583920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505047, 30.264704, 20.639236>,  <35.615093, 30.638054, 20.731430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505047, 30.264704, 20.639236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505341, -0.063559, 0.860576,
		-0.817890, 0.353230, -0.454186,
		-0.275113, -0.933375, -0.230486,
		35.422512, 29.984692, 20.570091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918541, 30.663969, 20.812922>,  <35.615093, 30.638054, 20.731430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918541, 30.663969, 20.812922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029961, 30.281822, 20.852287>,  <35.096813, 30.052534, 20.875908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029961, 30.281822, 20.852287>,  <34.918541, 30.663969, 20.812922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029961, 30.281822, 20.852287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637653, -0.107334, 0.762809,
		-0.718200, -0.275232, -0.639091,
		0.278545, -0.955367, 0.098415,
		35.113525, 29.995213, 20.881811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309357, 30.321247, 20.976274>,  <34.918541, 30.663969, 20.812922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309357, 30.321247, 20.976274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572731, 30.045763, 21.097692>,  <34.730755, 29.880472, 21.170544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.572731, 30.045763, 21.097692>,  <34.309357, 30.321247, 20.976274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572731, 30.045763, 21.097692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639994, -0.300094, 0.707355,
		-0.396074, -0.660012, -0.638364,
		0.658432, -0.688715, 0.303544,
		34.770260, 29.839149, 21.188757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951309, 29.648098, 21.019205>,  <34.309357, 30.321247, 20.976274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951309, 29.648098, 21.019205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.272285, 29.642633, 21.257835>,  <34.464870, 29.639355, 21.401012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.272285, 29.642633, 21.257835>,  <33.951309, 29.648098, 21.019205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272285, 29.642633, 21.257835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588556, -0.183031, 0.787465,
		0.098435, -0.983012, -0.154912,
		0.802441, -0.013660, 0.596574,
		34.513020, 29.638535, 21.436808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903442, 29.017803, 21.351973>,  <33.951309, 29.648098, 21.019205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903442, 29.017803, 21.351973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.155975, 29.236597, 21.571873>,  <34.307495, 29.367872, 21.703814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.155975, 29.236597, 21.571873>,  <33.903442, 29.017803, 21.351973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155975, 29.236597, 21.571873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479122, -0.282309, 0.831110,
		0.609803, -0.788106, 0.083840,
		0.631334, 0.546983, 0.549752,
		34.345375, 29.400692, 21.736797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018562, 28.607433, 21.921455>,  <33.903442, 29.017803, 21.351973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018562, 28.607433, 21.921455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145725, 28.956392, 22.069973>,  <34.222023, 29.165768, 22.159082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145725, 28.956392, 22.069973>,  <34.018562, 28.607433, 21.921455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145725, 28.956392, 22.069973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410263, -0.226473, 0.883399,
		0.854764, -0.433163, 0.285916,
		0.317904, 0.872399, 0.371292,
		34.241096, 29.218111, 22.181360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.084599, 29.500961, 18.548155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.136189, 29.890516, 18.622890>,  <38.167145, 30.124249, 18.667732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.136189, 29.890516, 18.622890>,  <38.084599, 29.500961, 18.548155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136189, 29.890516, 18.622890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232504, 0.153464, -0.960412,
		-0.964005, 0.167314, -0.206639,
		0.128979, 0.973886, 0.186841,
		38.174881, 30.182682, 18.678944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740974, 29.840651, 18.056559>,  <38.084599, 29.500961, 18.548155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740974, 29.840651, 18.056559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016026, 30.104733, 18.177425>,  <38.181057, 30.263182, 18.249945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016026, 30.104733, 18.177425>,  <37.740974, 29.840651, 18.056559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016026, 30.104733, 18.177425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295634, 0.125522, -0.947019,
		-0.663154, 0.740524, -0.108867,
		0.687625, 0.660204, 0.302165,
		38.222313, 30.302794, 18.268074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682377, 30.412516, 17.683540>,  <37.740974, 29.840651, 18.056559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682377, 30.412516, 17.683540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.065380, 30.462893, 17.787329>,  <38.295181, 30.493118, 17.849602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.065380, 30.462893, 17.787329>,  <37.682377, 30.412516, 17.683540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065380, 30.462893, 17.787329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197893, 0.367581, -0.908693,
		-0.209818, 0.921424, 0.327037,
		0.957504, 0.125942, 0.259469,
		38.352631, 30.500675, 17.865170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805046, 31.118937, 17.535345>,  <37.682377, 30.412516, 17.683540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805046, 31.118937, 17.535345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138813, 30.898489, 17.533686>,  <38.339073, 30.766220, 17.532690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138813, 30.898489, 17.533686>,  <37.805046, 31.118937, 17.535345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138813, 30.898489, 17.533686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188396, 0.292295, -0.937588,
		0.517935, 0.781557, 0.347724,
		0.834416, -0.551119, -0.004148,
		38.389137, 30.733152, 17.532442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300808, 31.483646, 17.109404>,  <37.805046, 31.118937, 17.535345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300808, 31.483646, 17.109404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.468056, 31.120483, 17.121254>,  <38.568405, 30.902584, 17.128365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.468056, 31.120483, 17.121254>,  <38.300808, 31.483646, 17.109404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468056, 31.120483, 17.121254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280289, 0.097919, -0.954908,
		0.864070, 0.407568, 0.295419,
		0.418117, -0.907910, 0.029628,
		38.593491, 30.848110, 17.130142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076492, 31.494606, 17.230967>,  <38.300808, 31.483646, 17.109404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076492, 31.494606, 17.230967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.989243, 31.144854, 17.057585>,  <38.936893, 30.935003, 16.953556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.989243, 31.144854, 17.057585>,  <39.076492, 31.494606, 17.230967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989243, 31.144854, 17.057585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469940, 0.295159, -0.831888,
		0.855323, -0.385153, 0.346524,
		-0.218124, -0.874379, -0.433455,
		38.923805, 30.882540, 16.927547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667633, 31.337011, 16.900766>,  <39.076492, 31.494606, 17.230967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667633, 31.337011, 16.900766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393623, 31.128019, 16.697691>,  <39.229218, 31.002625, 16.575846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393623, 31.128019, 16.697691>,  <39.667633, 31.337011, 16.900766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393623, 31.128019, 16.697691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506846, 0.158774, -0.847289,
		0.523301, -0.837737, 0.156053,
		-0.685028, -0.522482, -0.507690,
		39.188114, 30.971275, 16.545383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108364, 31.018494, 16.469469>,  <39.667633, 31.337011, 16.900766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108364, 31.018494, 16.469469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751076, 30.948893, 16.303640>,  <39.536701, 30.907131, 16.204144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751076, 30.948893, 16.303640>,  <40.108364, 31.018494, 16.469469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751076, 30.948893, 16.303640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444029, -0.196571, -0.874184,
		0.070618, -0.964926, 0.252845,
		-0.893225, -0.174004, -0.414573,
		39.483109, 30.896692, 16.179268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184700, 30.442757, 16.001114>,  <40.108364, 31.018494, 16.469469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184700, 30.442757, 16.001114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863846, 30.630352, 15.853260>,  <39.671333, 30.742908, 15.764547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863846, 30.630352, 15.853260>,  <40.184700, 30.442757, 16.001114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863846, 30.630352, 15.853260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375636, -0.084894, -0.922871,
		-0.464195, -0.879115, -0.108072,
		-0.802135, 0.468988, -0.369634,
		39.623207, 30.771048, 15.742370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966270, 30.023312, 15.489603>,  <40.184700, 30.442757, 16.001114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966270, 30.023312, 15.489603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.799328, 30.378960, 15.414474>,  <39.699162, 30.592348, 15.369397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.799328, 30.378960, 15.414474>,  <39.966270, 30.023312, 15.489603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799328, 30.378960, 15.414474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274649, -0.073602, -0.958723,
		-0.866244, -0.451717, -0.213478,
		-0.417360, 0.889120, -0.187821,
		39.674122, 30.645695, 15.358129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527256, 29.916565, 14.947105>,  <39.966270, 30.023312, 15.489603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527256, 29.916565, 14.947105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562798, 30.314075, 14.920223>,  <39.584122, 30.552582, 14.904094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562798, 30.314075, 14.920223>,  <39.527256, 29.916565, 14.947105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562798, 30.314075, 14.920223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178836, -0.082293, -0.980431,
		-0.979858, 0.075096, -0.185035,
		0.088853, 0.993775, -0.067205,
		39.589455, 30.612207, 14.900062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087894, 30.145899, 14.398424>,  <39.527256, 29.916565, 14.947105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087894, 30.145899, 14.398424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385983, 30.410915, 14.428599>,  <39.564835, 30.569925, 14.446704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385983, 30.410915, 14.428599>,  <39.087894, 30.145899, 14.398424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385983, 30.410915, 14.428599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228811, -0.147809, -0.962184,
		-0.626335, 0.734298, -0.261747,
		0.745218, 0.662540, 0.075437,
		39.609547, 30.609678, 14.451231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145557, 30.589300, 13.872107>,  <39.087894, 30.145899, 14.398424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145557, 30.589300, 13.872107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.520618, 30.652027, 13.996179>,  <39.745655, 30.689663, 14.070621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.520618, 30.652027, 13.996179>,  <39.145557, 30.589300, 13.872107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520618, 30.652027, 13.996179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288938, 0.144321, -0.946407,
		-0.193178, 0.977026, 0.090013,
		0.937655, 0.156817, 0.310179,
		39.801914, 30.699072, 14.089232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448326, 31.147785, 13.439912>,  <39.145557, 30.589300, 13.872107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448326, 31.147785, 13.439912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782467, 30.993670, 13.596749>,  <39.982952, 30.901199, 13.690852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782467, 30.993670, 13.596749>,  <39.448326, 31.147785, 13.439912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782467, 30.993670, 13.596749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508984, 0.272670, -0.816447,
		0.207657, 0.881591, 0.423882,
		0.835353, -0.385290, 0.392094,
		40.033073, 30.878082, 13.714377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066906, 31.346014, 12.819901>,  <39.448326, 31.147785, 13.439912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066906, 31.346014, 12.819901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734364, 31.229353, 12.630678>,  <38.534840, 31.159357, 12.517144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734364, 31.229353, 12.630678>,  <39.066906, 31.346014, 12.819901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734364, 31.229353, 12.630678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410245, -0.252149, 0.876425,
		-0.374892, 0.922692, 0.089977,
		-0.831357, -0.291652, -0.473058,
		38.484955, 31.141857, 12.488761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455189, 31.679585, 13.132334>,  <39.066906, 31.346014, 12.819901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455189, 31.679585, 13.132334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.283176, 31.379356, 12.931648>,  <38.179970, 31.199219, 12.811237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.283176, 31.379356, 12.931648>,  <38.455189, 31.679585, 13.132334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283176, 31.379356, 12.931648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575811, -0.200000, 0.792743,
		-0.695354, 0.629795, -0.346181,
		-0.430029, -0.750571, -0.501714,
		38.154167, 31.154184, 12.781134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736980, 31.791876, 13.281034>,  <38.455189, 31.679585, 13.132334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736980, 31.791876, 13.281034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768707, 31.411280, 13.162120>,  <37.787743, 31.182922, 13.090772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768707, 31.411280, 13.162120>,  <37.736980, 31.791876, 13.281034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768707, 31.411280, 13.162120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530720, -0.292752, 0.795382,
		-0.843828, 0.094685, -0.528195,
		0.079320, -0.951489, -0.297284,
		37.792503, 31.125834, 13.072935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081894, 31.576958, 13.368150>,  <37.736980, 31.791876, 13.281034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081894, 31.576958, 13.368150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311626, 31.249878, 13.352646>,  <37.449467, 31.053629, 13.343344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311626, 31.249878, 13.352646>,  <37.081894, 31.576958, 13.368150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311626, 31.249878, 13.352646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531494, -0.408484, 0.742061,
		-0.622617, -0.405592, -0.669211,
		0.574336, -0.817702, -0.038760,
		37.483929, 31.004568, 13.341018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644650, 31.059511, 13.358423>,  <37.081894, 31.576958, 13.368150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644650, 31.059511, 13.358423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985188, 30.906380, 13.501902>,  <37.189510, 30.814501, 13.587989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985188, 30.906380, 13.501902>,  <36.644650, 31.059511, 13.358423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985188, 30.906380, 13.501902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516178, -0.489146, 0.703062,
		-0.093696, -0.783696, -0.614037,
		0.851341, -0.382826, 0.358696,
		37.240589, 30.791533, 13.609510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638054, 30.279121, 13.445957>,  <36.644650, 31.059511, 13.358423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638054, 30.279121, 13.445957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.917339, 30.427826, 13.690674>,  <37.084911, 30.517048, 13.837503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.917339, 30.427826, 13.690674>,  <36.638054, 30.279121, 13.445957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917339, 30.427826, 13.690674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453719, -0.431235, 0.779856,
		0.553746, -0.822089, -0.132420,
		0.698215, 0.371761, 0.611792,
		37.126804, 30.539354, 13.874211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633953, 29.727009, 13.964937>,  <36.638054, 30.279121, 13.445957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633953, 29.727009, 13.964937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855972, 30.023851, 14.115243>,  <36.989185, 30.201958, 14.205426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855972, 30.023851, 14.115243>,  <36.633953, 29.727009, 13.964937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855972, 30.023851, 14.115243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387800, -0.168784, 0.906159,
		0.735890, -0.648683, 0.194106,
		0.555047, 0.742107, 0.375766,
		37.022488, 30.246483, 14.227973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862469, 29.424032, 14.570793>,  <36.633953, 29.727009, 13.964937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862469, 29.424032, 14.570793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.911404, 29.815046, 14.639443>,  <36.940765, 30.049656, 14.680634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.911404, 29.815046, 14.639443>,  <36.862469, 29.424032, 14.570793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911404, 29.815046, 14.639443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337673, -0.121614, 0.933374,
		0.933280, -0.172135, 0.315210,
		0.122333, 0.977537, 0.171625,
		36.948105, 30.108307, 14.690931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160915, 29.425695, 15.222750>,  <36.862469, 29.424032, 14.570793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160915, 29.425695, 15.222750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030361, 29.796530, 15.149009>,  <36.952030, 30.019030, 15.104764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030361, 29.796530, 15.149009>,  <37.160915, 29.425695, 15.222750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030361, 29.796530, 15.149009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273837, 0.093931, 0.957178,
		0.904703, 0.362889, 0.223213,
		-0.326383, 0.927086, -0.184352,
		36.932446, 30.074656, 15.093703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366711, 29.754408, 15.837269>,  <37.160915, 29.425695, 15.222750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366711, 29.754408, 15.837269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080906, 29.968197, 15.656690>,  <36.909424, 30.096470, 15.548342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080906, 29.968197, 15.656690>,  <37.366711, 29.754408, 15.837269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080906, 29.968197, 15.656690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455497, 0.134394, 0.880035,
		0.531028, 0.834431, 0.147425,
		-0.714515, 0.534474, -0.451448,
		36.866550, 30.128540, 15.521255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392250, 30.368902, 16.110783>,  <37.366711, 29.754408, 15.837269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392250, 30.368902, 16.110783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020054, 30.313652, 15.975073>,  <36.796738, 30.280502, 15.893647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020054, 30.313652, 15.975073>,  <37.392250, 30.368902, 16.110783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020054, 30.313652, 15.975073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360616, 0.182704, 0.914645,
		-0.064351, 0.973417, -0.219815,
		-0.930492, -0.138127, -0.339272,
		36.740906, 30.272215, 15.873291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055565, 30.851070, 16.487768>,  <37.392250, 30.368902, 16.110783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055565, 30.851070, 16.487768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760189, 30.624308, 16.341715>,  <36.582962, 30.488251, 16.254084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760189, 30.624308, 16.341715>,  <37.055565, 30.851070, 16.487768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760189, 30.624308, 16.341715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525836, 0.145136, 0.838112,
		-0.422136, 0.810897, -0.405274,
		-0.738442, -0.566905, -0.365132,
		36.538658, 30.454237, 16.232176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327171, 31.235317, 16.456627>,  <37.055565, 30.851070, 16.487768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327171, 31.235317, 16.456627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274250, 30.839043, 16.469513>,  <36.242496, 30.601278, 16.477243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274250, 30.839043, 16.469513>,  <36.327171, 31.235317, 16.456627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274250, 30.839043, 16.469513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531955, 0.098390, 0.841037,
		-0.836373, 0.094138, -0.540018,
		-0.132306, -0.990686, 0.032213,
		36.234558, 30.541838, 16.479177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726749, 31.145151, 16.926222>,  <36.327171, 31.235317, 16.456627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726749, 31.145151, 16.926222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865898, 30.770678, 16.906050>,  <35.949387, 30.545994, 16.893946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865898, 30.770678, 16.906050>,  <35.726749, 31.145151, 16.926222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865898, 30.770678, 16.906050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334230, -0.174091, 0.926274,
		-0.875943, -0.305368, -0.373462,
		0.347871, -0.936185, -0.050430,
		35.970261, 30.489822, 16.890921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037235, 31.185110, 16.566240>,  <35.726749, 31.145151, 16.926222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037235, 31.185110, 16.566240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786514, 31.495188, 16.534756>,  <34.636082, 31.681234, 16.515865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786514, 31.495188, 16.534756>,  <35.037235, 31.185110, 16.566240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786514, 31.495188, 16.534756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559518, 0.377487, -0.737864,
		-0.542275, -0.506534, -0.670345,
		-0.626799, 0.775195, -0.078713,
		34.598473, 31.727747, 16.511143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003830, 31.369831, 15.834511>,  <35.037235, 31.185110, 16.566240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003830, 31.369831, 15.834511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.878059, 31.707994, 16.007217>,  <34.802597, 31.910892, 16.110842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.878059, 31.707994, 16.007217>,  <35.003830, 31.369831, 15.834511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878059, 31.707994, 16.007217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601297, 0.529325, -0.598545,
		-0.734559, 0.071420, -0.674776,
		-0.314428, 0.845407, 0.431765,
		34.783730, 31.961617, 16.136747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768742, 31.778599, 15.315468>,  <35.003830, 31.369831, 15.834511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768742, 31.778599, 15.315468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851055, 32.032730, 15.613196>,  <34.900444, 32.185207, 15.791834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851055, 32.032730, 15.613196>,  <34.768742, 31.778599, 15.315468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851055, 32.032730, 15.613196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458056, 0.609601, -0.646971,
		-0.864777, 0.474074, -0.165571,
		0.205780, 0.635327, 0.744322,
		34.912788, 32.223328, 15.836493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767399, 32.468197, 14.960474>,  <34.768742, 31.778599, 15.315468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767399, 32.468197, 14.960474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.952675, 32.541828, 15.307247>,  <35.063839, 32.586006, 15.515311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.952675, 32.541828, 15.307247>,  <34.767399, 32.468197, 14.960474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952675, 32.541828, 15.307247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760260, 0.420201, -0.495416,
		-0.455481, 0.888564, 0.054684,
		0.463187, 0.184079, 0.866933,
		35.091629, 32.597054, 15.567327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844784, 33.196674, 15.034534>,  <34.767399, 32.468197, 14.960474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844784, 33.196674, 15.034534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132626, 33.025345, 15.253151>,  <35.305332, 32.922546, 15.384321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132626, 33.025345, 15.253151>,  <34.844784, 33.196674, 15.034534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132626, 33.025345, 15.253151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691082, 0.518399, -0.503654,
		-0.067602, 0.740139, 0.669048,
		0.719608, -0.428319, 0.546541,
		35.348507, 32.896851, 15.417113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248558, 33.763317, 15.235723>,  <34.844784, 33.196674, 15.034534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248558, 33.763317, 15.235723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495899, 33.450001, 15.261303>,  <35.644302, 33.262009, 15.276651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495899, 33.450001, 15.261303>,  <35.248558, 33.763317, 15.235723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495899, 33.450001, 15.261303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693192, 0.505256, -0.514005,
		0.370305, 0.362167, 0.855400,
		0.618352, -0.783295, 0.063952,
		35.681404, 33.215012, 15.280489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045021, 34.009178, 15.333555>,  <35.248558, 33.763317, 15.235723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045021, 34.009178, 15.333555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.047771, 33.633759, 15.195529>,  <36.049423, 33.408504, 15.112713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.047771, 33.633759, 15.195529>,  <36.045021, 34.009178, 15.333555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047771, 33.633759, 15.195529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479281, 0.305949, -0.822609,
		0.877635, -0.159728, 0.451934,
		0.006875, -0.938553, -0.345066,
		36.049835, 33.352192, 15.092010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329956, 34.717453, 15.456572>,  <36.045021, 34.009178, 15.333555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329956, 34.717453, 15.456572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142689, 35.052563, 15.344180>,  <36.030327, 35.253628, 15.276745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.142689, 35.052563, 15.344180>,  <36.329956, 34.717453, 15.456572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142689, 35.052563, 15.344180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662168, -0.122068, 0.739346,
		0.585108, 0.532195, 0.611897,
		-0.468170, 0.837776, -0.280980,
		36.002239, 35.303894, 15.259886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307011, 35.166069, 16.024767>,  <36.329956, 34.717453, 15.456572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307011, 35.166069, 16.024767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022392, 35.348129, 15.810651>,  <35.851620, 35.457367, 15.682180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022392, 35.348129, 15.810651>,  <36.307011, 35.166069, 16.024767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022392, 35.348129, 15.810651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626425, -0.065854, 0.776695,
		0.318261, 0.887977, 0.331975,
		-0.711549, 0.455149, -0.535292,
		35.808929, 35.484673, 15.650064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955044, 35.574718, 16.452612>,  <36.307011, 35.166069, 16.024767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955044, 35.574718, 16.452612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.692455, 35.576588, 16.150879>,  <35.534901, 35.577709, 15.969838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.692455, 35.576588, 16.150879>,  <35.955044, 35.574718, 16.452612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692455, 35.576588, 16.150879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700929, -0.373391, 0.607682,
		-0.278820, 0.927662, 0.248400,
		-0.656474, 0.004677, -0.754335,
		35.495514, 35.577991, 15.924579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336090, 35.885620, 16.676546>,  <35.955044, 35.574718, 16.452612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336090, 35.885620, 16.676546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233101, 35.653496, 16.367498>,  <35.171307, 35.514221, 16.182070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233101, 35.653496, 16.367498>,  <35.336090, 35.885620, 16.676546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233101, 35.653496, 16.367498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766371, -0.364371, 0.529065,
		-0.588545, 0.728333, -0.350922,
		-0.257470, -0.580315, -0.772622,
		35.155861, 35.479401, 16.135712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588188, 36.032471, 16.605917>,  <35.336090, 35.885620, 16.676546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588188, 36.032471, 16.605917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625832, 35.683430, 16.414202>,  <34.648418, 35.474007, 16.299173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625832, 35.683430, 16.414202>,  <34.588188, 36.032471, 16.605917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625832, 35.683430, 16.414202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749690, -0.378880, 0.542599,
		-0.655064, 0.308256, -0.689833,
		0.094104, -0.872598, -0.479288,
		34.654064, 35.421650, 16.270416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886127, 35.804890, 16.393551>,  <34.588188, 36.032471, 16.605917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886127, 35.804890, 16.393551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.120636, 35.481133, 16.407236>,  <34.261341, 35.286877, 16.415447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.120636, 35.481133, 16.407236>,  <33.886127, 35.804890, 16.393551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120636, 35.481133, 16.407236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564022, -0.377492, 0.734424,
		-0.581525, -0.449865, -0.677828,
		0.586266, -0.809396, 0.034212,
		34.296516, 35.238316, 16.417500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405045, 35.334007, 16.306786>,  <33.886127, 35.804890, 16.393551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405045, 35.334007, 16.306786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723202, 35.172737, 16.487804>,  <33.914097, 35.075974, 16.596416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723202, 35.172737, 16.487804>,  <33.405045, 35.334007, 16.306786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723202, 35.172737, 16.487804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605729, -0.502821, 0.616656,
		-0.021069, -0.764605, -0.644154,
		0.795392, -0.403175, 0.452549,
		33.961819, 35.051785, 16.623569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.355007, 33.278721, 14.906429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.430073, 32.965172, 15.143184>,  <40.475113, 32.777042, 15.285236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.430073, 32.965172, 15.143184>,  <40.355007, 33.278721, 14.906429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430073, 32.965172, 15.143184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169609, 0.567679, 0.805588,
		-0.967479, -0.251567, -0.026420,
		0.187662, -0.783871, 0.591886,
		40.486370, 32.730011, 15.320749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134628, 33.503578, 15.526125>,  <40.355007, 33.278721, 14.906429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134628, 33.503578, 15.526125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.305340, 33.155823, 15.625743>,  <40.407768, 32.947170, 15.685513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.305340, 33.155823, 15.625743>,  <40.134628, 33.503578, 15.526125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305340, 33.155823, 15.625743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134040, 0.211531, 0.968136,
		-0.894367, -0.446563, -0.026256,
		0.426780, -0.869388, 0.249044,
		40.433372, 32.895008, 15.700456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682953, 33.092560, 15.964823>,  <40.134628, 33.503578, 15.526125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682953, 33.092560, 15.964823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.060104, 32.979042, 16.034613>,  <40.286396, 32.910931, 16.076487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.060104, 32.979042, 16.034613>,  <39.682953, 33.092560, 15.964823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060104, 32.979042, 16.034613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108447, 0.233729, 0.966235,
		-0.314997, -0.929962, 0.189601,
		0.942876, -0.283799, 0.174475,
		40.342968, 32.893902, 16.086956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590202, 32.685551, 16.474606>,  <39.682953, 33.092560, 15.964823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590202, 32.685551, 16.474606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976044, 32.787350, 16.502214>,  <40.207550, 32.848431, 16.518780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976044, 32.787350, 16.502214>,  <39.590202, 32.685551, 16.474606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976044, 32.787350, 16.502214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103962, 0.126491, 0.986505,
		0.242335, -0.958765, 0.148472,
		0.964606, 0.254501, 0.069022,
		40.265427, 32.863701, 16.522921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832855, 32.319557, 17.019869>,  <39.590202, 32.685551, 16.474606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832855, 32.319557, 17.019869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.094734, 32.619923, 16.985229>,  <40.251862, 32.800144, 16.964447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.094734, 32.619923, 16.985229>,  <39.832855, 32.319557, 17.019869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094734, 32.619923, 16.985229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142857, 0.235415, 0.961338,
		0.742271, -0.617012, 0.261399,
		0.654695, 0.750916, -0.086597,
		40.291142, 32.845196, 16.959249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217384, 32.326015, 17.744637>,  <39.832855, 32.319557, 17.019869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217384, 32.326015, 17.744637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270947, 32.675278, 17.557161>,  <40.303082, 32.884834, 17.444675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270947, 32.675278, 17.557161>,  <40.217384, 32.326015, 17.744637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270947, 32.675278, 17.557161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234510, 0.487433, 0.841079,
		0.962848, -0.002710, 0.270032,
		0.133902, 0.873156, -0.468688,
		40.311119, 32.937225, 17.416555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696777, 32.757553, 18.236216>,  <40.217384, 32.326015, 17.744637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696777, 32.757553, 18.236216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.523857, 33.004894, 17.973686>,  <40.420105, 33.153297, 17.816168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.523857, 33.004894, 17.973686>,  <40.696777, 32.757553, 18.236216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523857, 33.004894, 17.973686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112446, 0.685201, 0.719622,
		0.894693, 0.384891, -0.226679,
		-0.432297, 0.618351, -0.656324,
		40.394169, 33.190399, 17.776789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913170, 33.334869, 18.489216>,  <40.696777, 32.757553, 18.236216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913170, 33.334869, 18.489216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.599953, 33.432892, 18.260553>,  <40.412022, 33.491707, 18.123356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.599953, 33.432892, 18.260553>,  <40.913170, 33.334869, 18.489216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599953, 33.432892, 18.260553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326750, 0.619978, 0.713346,
		0.529224, 0.745369, -0.405397,
		-0.783043, 0.245056, -0.571656,
		40.365040, 33.506409, 18.089056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859184, 34.070431, 18.430861>,  <40.913170, 33.334869, 18.489216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859184, 34.070431, 18.430861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.492588, 33.937176, 18.342264>,  <40.272629, 33.857224, 18.289106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.492588, 33.937176, 18.342264>,  <40.859184, 34.070431, 18.430861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492588, 33.937176, 18.342264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380389, 0.554250, 0.740345,
		-0.123877, 0.762774, -0.634689,
		-0.916492, -0.333141, -0.221492,
		40.217640, 33.837234, 18.275816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485031, 34.685181, 18.415119>,  <40.859184, 34.070431, 18.430861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485031, 34.685181, 18.415119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.222694, 34.387825, 18.467632>,  <40.065292, 34.209412, 18.499140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.222694, 34.387825, 18.467632>,  <40.485031, 34.685181, 18.415119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222694, 34.387825, 18.467632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445978, 0.521872, 0.727154,
		-0.609075, 0.418350, -0.673804,
		-0.655844, -0.743393, 0.131284,
		40.025940, 34.164806, 18.507017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839085, 35.063156, 18.494785>,  <40.485031, 34.685181, 18.415119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839085, 35.063156, 18.494785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.777683, 34.698608, 18.647537>,  <39.740841, 34.479877, 18.739189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.777683, 34.698608, 18.647537>,  <39.839085, 35.063156, 18.494785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777683, 34.698608, 18.647537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268789, 0.410401, 0.871391,
		-0.950888, 0.031116, -0.307966,
		-0.153504, -0.911374, 0.381882,
		39.731632, 34.425198, 18.762102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093586, 35.078003, 18.747768>,  <39.839085, 35.063156, 18.494785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093586, 35.078003, 18.747768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306408, 34.804714, 18.947819>,  <39.434101, 34.640743, 19.067850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306408, 34.804714, 18.947819>,  <39.093586, 35.078003, 18.747768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306408, 34.804714, 18.947819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423925, 0.296356, 0.855839,
		-0.732941, -0.667372, -0.131956,
		0.532057, -0.683219, 0.500127,
		39.466026, 34.599747, 19.097857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393242, 35.050339, 18.657595>,  <39.093586, 35.078003, 18.747768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393242, 35.050339, 18.657595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.238045, 35.383812, 18.500406>,  <38.144924, 35.583897, 18.406094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.238045, 35.383812, 18.500406>,  <38.393242, 35.050339, 18.657595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238045, 35.383812, 18.500406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526311, -0.149601, -0.837028,
		-0.756607, -0.531589, -0.380733,
		-0.387997, 0.833686, -0.392971,
		38.121647, 35.633919, 18.382515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358093, 34.884060, 17.984745>,  <38.393242, 35.050339, 18.657595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358093, 34.884060, 17.984745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.291092, 35.277630, 17.960007>,  <38.250889, 35.513771, 17.945164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.291092, 35.277630, 17.960007>,  <38.358093, 34.884060, 17.984745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291092, 35.277630, 17.960007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384463, 0.007431, -0.923110,
		-0.907816, -0.178405, -0.379529,
		-0.167508, 0.983929, -0.061844,
		38.240841, 35.572807, 17.941454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914207, 35.101398, 17.375462>,  <38.358093, 34.884060, 17.984745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914207, 35.101398, 17.375462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160072, 35.393234, 17.495388>,  <38.307590, 35.568336, 17.567345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.160072, 35.393234, 17.495388>,  <37.914207, 35.101398, 17.375462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160072, 35.393234, 17.495388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372577, 0.066483, -0.925617,
		-0.695253, 0.680646, -0.230964,
		0.614662, 0.729590, 0.299815,
		38.344471, 35.612110, 17.585333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853458, 35.533165, 16.809631>,  <37.914207, 35.101398, 17.375462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853458, 35.533165, 16.809631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.191257, 35.643375, 16.993328>,  <38.393936, 35.709503, 17.103546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.191257, 35.643375, 16.993328>,  <37.853458, 35.533165, 16.809631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191257, 35.643375, 16.993328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292461, 0.481093, -0.826448,
		-0.448649, 0.832246, 0.325702,
		0.844500, 0.275530, 0.459241,
		38.444607, 35.726036, 17.131100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910152, 36.318302, 16.733997>,  <37.853458, 35.533165, 16.809631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910152, 36.318302, 16.733997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.265308, 36.144958, 16.795780>,  <38.478401, 36.040951, 16.832850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.265308, 36.144958, 16.795780>,  <37.910152, 36.318302, 16.733997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265308, 36.144958, 16.795780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379726, 0.500759, -0.777849,
		0.259742, 0.749294, 0.609174,
		0.887887, -0.433359, 0.154458,
		38.531673, 36.014950, 16.842117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357872, 36.928322, 16.676004>,  <37.910152, 36.318302, 16.733997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357872, 36.928322, 16.676004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.599529, 36.611275, 16.643105>,  <38.744526, 36.421047, 16.623365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.599529, 36.611275, 16.643105>,  <38.357872, 36.928322, 16.676004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599529, 36.611275, 16.643105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630861, 0.538791, -0.558317,
		0.486847, 0.285418, 0.825540,
		0.604147, -0.792616, -0.082250,
		38.780773, 36.373489, 16.618429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944561, 37.186607, 16.614878>,  <38.357872, 36.928322, 16.676004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944561, 37.186607, 16.614878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.041969, 36.808285, 16.528955>,  <39.100414, 36.581291, 16.477402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.041969, 36.808285, 16.528955>,  <38.944561, 37.186607, 16.614878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041969, 36.808285, 16.528955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799526, 0.321133, -0.507576,
		0.549052, -0.048139, 0.834401,
		0.243519, -0.945810, -0.214807,
		39.115025, 36.524540, 16.464514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681332, 37.122272, 16.795761>,  <38.944561, 37.186607, 16.614878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681332, 37.122272, 16.795761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.574646, 36.878796, 16.496866>,  <39.510635, 36.732712, 16.317530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.574646, 36.878796, 16.496866>,  <39.681332, 37.122272, 16.795761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574646, 36.878796, 16.496866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710179, 0.400019, -0.579336,
		0.651544, -0.685189, 0.325587,
		-0.266714, -0.608688, -0.747237,
		39.494633, 36.696190, 16.272696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286289, 37.167816, 16.395277>,  <39.681332, 37.122272, 16.795761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286289, 37.167816, 16.395277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.031506, 36.978634, 16.151772>,  <39.878635, 36.865124, 16.005669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.031506, 36.978634, 16.151772>,  <40.286289, 37.167816, 16.395277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031506, 36.978634, 16.151772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502201, 0.344551, -0.793145,
		0.584873, -0.810924, 0.018055,
		-0.636959, -0.472956, -0.608765,
		39.840416, 36.836746, 15.969142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704292, 36.869488, 15.903786>,  <40.286289, 37.167816, 16.395277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704292, 36.869488, 15.903786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.340351, 36.902325, 15.741090>,  <40.121986, 36.922028, 15.643472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.340351, 36.902325, 15.741090>,  <40.704292, 36.869488, 15.903786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340351, 36.902325, 15.741090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399319, 0.439653, -0.804518,
		0.112783, -0.894409, -0.432797,
		-0.909848, 0.082088, -0.406740,
		40.067398, 36.926952, 15.619068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671124, 36.516632, 15.263895>,  <40.704292, 36.869488, 15.903786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671124, 36.516632, 15.263895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.376232, 36.785358, 15.235196>,  <40.199295, 36.946594, 15.217977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.376232, 36.785358, 15.235196>,  <40.671124, 36.516632, 15.263895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376232, 36.785358, 15.235196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301363, 0.231932, -0.924872,
		-0.604706, -0.703468, -0.373449,
		-0.737233, 0.671819, -0.071748,
		40.155064, 36.986904, 15.213672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475418, 36.506096, 14.457719>,  <40.671124, 36.516632, 15.263895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475418, 36.506096, 14.457719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.301720, 36.819519, 14.635466>,  <40.197502, 37.007572, 14.742114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.301720, 36.819519, 14.635466>,  <40.475418, 36.506096, 14.457719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301720, 36.819519, 14.635466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055193, 0.515523, -0.855096,
		-0.899103, -0.346794, -0.267110,
		-0.434244, 0.783562, 0.444368,
		40.171448, 37.054588, 14.768776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912708, 36.766205, 14.000362>,  <40.475418, 36.506096, 14.457719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912708, 36.766205, 14.000362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038155, 37.068108, 14.230833>,  <40.113422, 37.249249, 14.369116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038155, 37.068108, 14.230833>,  <39.912708, 36.766205, 14.000362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038155, 37.068108, 14.230833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180760, 0.548240, -0.816553,
		-0.932186, 0.360235, 0.035507,
		0.313617, 0.754761, 0.576178,
		40.132240, 37.294537, 14.403687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274105, 36.485294, 14.156105>,  <39.912708, 36.766205, 14.000362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274105, 36.485294, 14.156105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.987667, 36.408237, 13.887748>,  <38.815804, 36.362003, 13.726734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.987667, 36.408237, 13.887748>,  <39.274105, 36.485294, 14.156105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987667, 36.408237, 13.887748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681641, -0.013880, 0.731555,
		-0.150238, 0.981171, -0.121371,
		-0.716096, -0.192639, -0.670892,
		38.772839, 36.350445, 13.686481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621758, 36.757656, 14.343197>,  <39.274105, 36.485294, 14.156105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621758, 36.757656, 14.343197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.437542, 36.537300, 14.064795>,  <38.327011, 36.405087, 13.897755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.437542, 36.537300, 14.064795>,  <38.621758, 36.757656, 14.343197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437542, 36.537300, 14.064795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764355, -0.152529, 0.626496,
		-0.451292, 0.820520, -0.350831,
		-0.460540, -0.550892, -0.696003,
		38.299381, 36.372032, 13.855994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922222, 36.842686, 14.407270>,  <38.621758, 36.757656, 14.343197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922222, 36.842686, 14.407270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.913776, 36.513813, 14.179737>,  <37.908710, 36.316490, 14.043218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.913776, 36.513813, 14.179737>,  <37.922222, 36.842686, 14.407270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913776, 36.513813, 14.179737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891541, -0.242000, 0.382872,
		-0.452448, 0.515220, -0.727900,
		-0.021111, -0.822182, -0.568833,
		37.907444, 36.267159, 14.009088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212467, 36.852707, 14.050622>,  <37.922222, 36.842686, 14.407270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212467, 36.852707, 14.050622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.341694, 36.474209, 14.056783>,  <37.419231, 36.247108, 14.060479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.341694, 36.474209, 14.056783>,  <37.212467, 36.852707, 14.050622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341694, 36.474209, 14.056783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902329, -0.303085, 0.306500,
		-0.285356, -0.112922, -0.951746,
		0.323071, -0.946250, 0.015405,
		37.438614, 36.190334, 14.061403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731110, 36.414532, 13.635758>,  <37.212467, 36.852707, 14.050622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731110, 36.414532, 13.635758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906548, 36.168297, 13.897657>,  <37.011810, 36.020557, 14.054797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.906548, 36.168297, 13.897657>,  <36.731110, 36.414532, 13.635758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906548, 36.168297, 13.897657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892745, -0.382078, 0.238794,
		0.103167, -0.689256, -0.717136,
		0.438592, -0.615583, 0.654747,
		37.038124, 35.983624, 14.094082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351826, 35.666660, 13.586452>,  <36.731110, 36.414532, 13.635758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351826, 35.666660, 13.586452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.550892, 35.700523, 13.931744>,  <36.670330, 35.720840, 14.138919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.550892, 35.700523, 13.931744>,  <36.351826, 35.666660, 13.586452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550892, 35.700523, 13.931744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804783, -0.326122, 0.495952,
		0.323507, -0.941529, -0.094164,
		0.497662, 0.084662, 0.863229,
		36.700191, 35.725922, 14.190712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141289, 35.087280, 13.905304>,  <36.351826, 35.666660, 13.586452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141289, 35.087280, 13.905304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296776, 35.308666, 14.199942>,  <36.390068, 35.441498, 14.376724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.296776, 35.308666, 14.199942>,  <36.141289, 35.087280, 13.905304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296776, 35.308666, 14.199942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736896, -0.293143, 0.609140,
		0.553066, -0.779578, 0.293897,
		0.388718, 0.553466, 0.736595,
		36.413391, 35.474705, 14.420920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356434, 34.728535, 14.549787>,  <36.141289, 35.087280, 13.905304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356434, 34.728535, 14.549787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.276398, 35.097004, 14.683291>,  <36.228374, 35.318085, 14.763394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.276398, 35.097004, 14.683291>,  <36.356434, 34.728535, 14.549787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276398, 35.097004, 14.683291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649208, -0.379791, 0.659005,
		0.733820, -0.084819, 0.674028,
		-0.200094, 0.921176, 0.333763,
		36.216370, 35.373356, 14.783421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629612, 34.026978, 14.927719>,  <36.356434, 34.728535, 14.549787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629612, 34.026978, 14.927719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.473404, 33.684017, 14.793643>,  <36.379677, 33.478241, 14.713198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.473404, 33.684017, 14.793643>,  <36.629612, 34.026978, 14.927719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473404, 33.684017, 14.793643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422145, 0.156779, -0.892868,
		0.818098, -0.490185, 0.300722,
		-0.390524, -0.857402, -0.335190,
		36.356247, 33.426796, 14.693086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145271, 33.613636, 14.645448>,  <36.629612, 34.026978, 14.927719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145271, 33.613636, 14.645448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.815277, 33.458233, 14.481270>,  <36.617279, 33.364990, 14.382763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.815277, 33.458233, 14.481270>,  <37.145271, 33.613636, 14.645448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815277, 33.458233, 14.481270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481483, -0.102869, -0.870398,
		0.295931, -0.915687, 0.271923,
		-0.824984, -0.388504, -0.410446,
		36.567783, 33.341682, 14.358136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320145, 32.995853, 14.309196>,  <37.145271, 33.613636, 14.645448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320145, 32.995853, 14.309196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.987427, 33.145267, 14.144960>,  <36.787796, 33.234917, 14.046419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.987427, 33.145267, 14.144960>,  <37.320145, 32.995853, 14.309196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987427, 33.145267, 14.144960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405649, -0.095849, -0.908990,
		-0.378894, -0.922651, -0.071798,
		-0.831798, 0.373536, -0.410589,
		36.737888, 33.257328, 14.021784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314774, 32.591106, 13.727667>,  <37.320145, 32.995853, 14.309196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314774, 32.591106, 13.727667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.071995, 32.896507, 13.639411>,  <36.926327, 33.079746, 13.586457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.071995, 32.896507, 13.639411>,  <37.314774, 32.591106, 13.727667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071995, 32.896507, 13.639411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275229, -0.058515, -0.959596,
		-0.745564, -0.643149, -0.174623,
		-0.606945, 0.763502, -0.220640,
		36.889912, 33.125557, 13.573219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920490, 32.286354, 13.208710>,  <37.314774, 32.591106, 13.727667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920490, 32.286354, 13.208710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.854576, 32.678535, 13.165729>,  <36.815025, 32.913845, 13.139940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.854576, 32.678535, 13.165729>,  <36.920490, 32.286354, 13.208710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854576, 32.678535, 13.165729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271213, -0.059700, -0.960666,
		-0.948308, -0.187450, -0.256075,
		-0.164789, 0.980458, -0.107453,
		36.805138, 32.972672, 13.133492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637691, 32.306969, 12.546672>,  <36.920490, 32.286354, 13.208710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637691, 32.306969, 12.546672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771881, 32.674778, 12.628588>,  <36.852394, 32.895462, 12.677737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771881, 32.674778, 12.628588>,  <36.637691, 32.306969, 12.546672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771881, 32.674778, 12.628588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462645, 0.028553, -0.886084,
		-0.820620, 0.392003, -0.415833,
		0.335474, 0.919521, 0.204789,
		36.872524, 32.950634, 12.690024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609985, 32.665199, 11.920414>,  <36.637691, 32.306969, 12.546672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609985, 32.665199, 11.920414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.871368, 32.879356, 12.134459>,  <37.028198, 33.007851, 12.262885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.871368, 32.879356, 12.134459>,  <36.609985, 32.665199, 11.920414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871368, 32.879356, 12.134459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575392, 0.108008, -0.810715,
		-0.491846, 0.837669, -0.237481,
		0.653461, 0.535392, 0.535112,
		37.067406, 33.039974, 12.294992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729523, 33.274639, 11.533897>,  <36.609985, 32.665199, 11.920414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729523, 33.274639, 11.533897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034416, 33.222733, 11.787562>,  <37.217354, 33.191589, 11.939761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034416, 33.222733, 11.787562>,  <36.729523, 33.274639, 11.533897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034416, 33.222733, 11.787562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647303, 0.151721, -0.746980,
		0.000718, 0.979868, 0.199646,
		0.762232, -0.129767, 0.634163,
		37.263084, 33.183804, 11.977811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105766, 33.866928, 11.581769>,  <36.729523, 33.274639, 11.533897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105766, 33.866928, 11.581769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.349239, 33.559429, 11.660282>,  <37.495323, 33.374928, 11.707390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.349239, 33.559429, 11.660282>,  <37.105766, 33.866928, 11.581769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349239, 33.559429, 11.660282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581016, 0.263415, -0.770087,
		0.540301, 0.582782, 0.606992,
		0.608683, -0.768751, 0.196282,
		37.531845, 33.328804, 11.719167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.400860, 31.465229, 25.489704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.677589, 31.223267, 25.647421>,  <29.843628, 31.078089, 25.742052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.677589, 31.223267, 25.647421>,  <29.400860, 31.465229, 25.489704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677589, 31.223267, 25.647421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621932, 0.221765, -0.751013,
		0.366853, 0.764792, 0.529634,
		0.691823, -0.604907, 0.394294,
		29.885136, 31.041794, 25.765709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057575, 31.724028, 25.393333>,  <29.400860, 31.465229, 25.489704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057575, 31.724028, 25.393333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.160536, 31.339024, 25.427559>,  <30.222313, 31.108021, 25.448093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.160536, 31.339024, 25.427559>,  <30.057575, 31.724028, 25.393333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160536, 31.339024, 25.427559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602843, 0.090751, -0.792682,
		0.755199, 0.255619, 0.603601,
		0.257402, -0.962509, 0.085564,
		30.237757, 31.050270, 25.453228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822464, 31.561623, 25.487734>,  <30.057575, 31.724028, 25.393333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822464, 31.561623, 25.487734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667789, 31.233725, 25.318739>,  <30.574986, 31.036985, 25.217342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667789, 31.233725, 25.318739>,  <30.822464, 31.561623, 25.487734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667789, 31.233725, 25.318739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573713, 0.144851, -0.806146,
		0.722031, -0.554111, 0.414286,
		-0.386684, -0.819743, -0.422488,
		30.551785, 30.987803, 25.191992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328447, 31.284090, 25.110939>,  <30.822464, 31.561623, 25.487734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328447, 31.284090, 25.110939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008259, 31.114100, 24.941874>,  <30.816147, 31.012106, 24.840435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008259, 31.114100, 24.941874>,  <31.328447, 31.284090, 25.110939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008259, 31.114100, 24.941874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467640, -0.001722, -0.883917,
		0.374916, -0.905203, 0.200114,
		-0.800469, -0.424976, -0.422664,
		30.768118, 30.986607, 24.815075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695957, 30.844616, 24.596760>,  <31.328447, 31.284090, 25.110939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695957, 30.844616, 24.596760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313034, 30.821217, 24.483524>,  <31.083281, 30.807177, 24.415583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313034, 30.821217, 24.483524>,  <31.695957, 30.844616, 24.596760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313034, 30.821217, 24.483524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280971, 0.041901, -0.958801,
		0.067955, -0.997408, -0.023674,
		-0.957307, -0.058504, -0.283090,
		31.025843, 30.803667, 24.398598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676491, 30.303642, 24.043175>,  <31.695957, 30.844616, 24.596760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676491, 30.303642, 24.043175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.357639, 30.542257, 24.005800>,  <31.166328, 30.685427, 23.983376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.357639, 30.542257, 24.005800>,  <31.676491, 30.303642, 24.043175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357639, 30.542257, 24.005800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151683, 0.048049, -0.987261,
		-0.584449, -0.801145, -0.128786,
		-0.797127, 0.596538, -0.093438,
		31.118502, 30.721218, 23.977768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444239, 30.168341, 23.423128>,  <31.676491, 30.303642, 24.043175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444239, 30.168341, 23.423128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262304, 30.518593, 23.488121>,  <31.153145, 30.728745, 23.527117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262304, 30.518593, 23.488121>,  <31.444239, 30.168341, 23.423128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262304, 30.518593, 23.488121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007816, 0.186366, -0.982449,
		-0.890542, -0.445581, -0.091609,
		-0.454834, 0.875629, 0.162484,
		31.125854, 30.781281, 23.536867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013903, 30.212803, 22.880297>,  <31.444239, 30.168341, 23.423128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013903, 30.212803, 22.880297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.078840, 30.588945, 22.999878>,  <31.117804, 30.814631, 23.071627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.078840, 30.588945, 22.999878>,  <31.013903, 30.212803, 22.880297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078840, 30.588945, 22.999878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138695, 0.278218, -0.950452,
		-0.976938, 0.195764, -0.085256,
		0.162345, 0.940357, 0.298953,
		31.127544, 30.871052, 23.089563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561546, 30.652008, 22.466125>,  <31.013903, 30.212803, 22.880297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561546, 30.652008, 22.466125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.836803, 30.912281, 22.594545>,  <31.001957, 31.068445, 22.671597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.836803, 30.912281, 22.594545>,  <30.561546, 30.652008, 22.466125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836803, 30.912281, 22.594545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122966, 0.331488, -0.935412,
		-0.715080, 0.683174, 0.148099,
		0.688142, 0.650683, 0.321048,
		31.043245, 31.107487, 22.690859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414232, 31.365215, 22.209162>,  <30.561546, 30.652008, 22.466125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414232, 31.365215, 22.209162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.806675, 31.354958, 22.285866>,  <31.042141, 31.348803, 22.331888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.806675, 31.354958, 22.285866>,  <30.414232, 31.365215, 22.209162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806675, 31.354958, 22.285866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193465, 0.123477, -0.973306,
		0.001282, 0.992016, 0.126105,
		0.981106, -0.025645, 0.191762,
		31.101007, 31.347263, 22.343395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739151, 31.841829, 21.767330>,  <30.414232, 31.365215, 22.209162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739151, 31.841829, 21.767330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.031445, 31.593243, 21.880333>,  <31.206820, 31.444092, 21.948135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.031445, 31.593243, 21.880333>,  <30.739151, 31.841829, 21.767330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031445, 31.593243, 21.880333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408252, 0.066149, -0.910469,
		0.547138, 0.780644, 0.302052,
		0.730733, -0.621466, 0.282506,
		31.250664, 31.406803, 21.965084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313961, 32.255371, 21.660503>,  <30.739151, 31.841829, 21.767330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313961, 32.255371, 21.660503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442011, 31.876432, 21.663525>,  <31.518841, 31.649069, 21.665337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442011, 31.876432, 21.663525>,  <31.313961, 32.255371, 21.660503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442011, 31.876432, 21.663525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488525, 0.158242, -0.858081,
		0.811704, 0.278383, 0.513459,
		0.320126, -0.947345, 0.007551,
		31.538048, 31.592230, 21.665791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679352, 32.762703, 21.959576>,  <31.313961, 32.255371, 21.660503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679352, 32.762703, 21.959576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517080, 33.127472, 21.934862>,  <31.419718, 33.346333, 21.920034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517080, 33.127472, 21.934862>,  <31.679352, 32.762703, 21.959576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517080, 33.127472, 21.934862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318877, -0.077860, 0.944593,
		0.856587, 0.402903, 0.322378,
		-0.405680, 0.911925, -0.061782,
		31.395376, 33.401051, 21.916327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956610, 33.190632, 22.442980>,  <31.679352, 32.762703, 21.959576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956610, 33.190632, 22.442980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607077, 33.363247, 22.353363>,  <31.397358, 33.466816, 22.299593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607077, 33.363247, 22.353363>,  <31.956610, 33.190632, 22.442980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607077, 33.363247, 22.353363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246629, 0.003727, 0.969103,
		0.419037, 0.902088, 0.103172,
		-0.873832, 0.431535, -0.224043,
		31.344927, 33.492706, 22.286150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851589, 33.796520, 22.977858>,  <31.956610, 33.190632, 22.442980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851589, 33.796520, 22.977858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.493223, 33.722424, 22.816353>,  <31.278204, 33.677963, 22.719450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.493223, 33.722424, 22.816353>,  <31.851589, 33.796520, 22.977858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493223, 33.722424, 22.816353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426705, 0.106095, 0.898146,
		-0.123541, 0.976948, -0.174097,
		-0.895913, -0.185246, -0.403762,
		31.224449, 33.666851, 22.695225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477318, 34.356651, 23.171423>,  <31.851589, 33.796520, 22.977858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477318, 34.356651, 23.171423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.225327, 34.053570, 23.103287>,  <31.074131, 33.871723, 23.062405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.225327, 34.053570, 23.103287>,  <31.477318, 34.356651, 23.171423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225327, 34.053570, 23.103287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507704, 0.235842, 0.828622,
		-0.587674, 0.608498, -0.533263,
		-0.629981, -0.757700, -0.170338,
		31.036333, 33.826260, 23.052185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843643, 34.729080, 23.170822>,  <31.477318, 34.356651, 23.171423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843643, 34.729080, 23.170822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.812531, 34.339287, 23.255047>,  <30.793863, 34.105412, 23.305582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.812531, 34.339287, 23.255047>,  <30.843643, 34.729080, 23.170822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812531, 34.339287, 23.255047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442707, 0.222996, 0.868495,
		-0.893286, -0.025663, -0.448755,
		-0.077782, -0.974482, 0.210561,
		30.789196, 34.046944, 23.318214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256355, 34.736557, 23.460264>,  <30.843643, 34.729080, 23.170822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256355, 34.736557, 23.460264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.422935, 34.398613, 23.594597>,  <30.522882, 34.195847, 23.675196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.422935, 34.398613, 23.594597>,  <30.256355, 34.736557, 23.460264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422935, 34.398613, 23.594597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374436, 0.177219, 0.910160,
		-0.828473, -0.504781, -0.242544,
		0.416448, -0.844860, 0.335829,
		30.547871, 34.145153, 23.695345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789669, 34.458366, 23.980818>,  <30.256355, 34.736557, 23.460264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789669, 34.458366, 23.980818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.118732, 34.240143, 24.044809>,  <30.316172, 34.109207, 24.083204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.118732, 34.240143, 24.044809>,  <29.789669, 34.458366, 23.980818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118732, 34.240143, 24.044809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151105, 0.061458, 0.986605,
		-0.548086, -0.835814, -0.031878,
		0.822660, -0.545562, 0.159980,
		30.365530, 34.076473, 24.092804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576694, 33.939083, 24.376175>,  <29.789669, 34.458366, 23.980818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576694, 33.939083, 24.376175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.971643, 33.945889, 24.439175>,  <30.208612, 33.949970, 24.476974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.971643, 33.945889, 24.439175>,  <29.576694, 33.939083, 24.376175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971643, 33.945889, 24.439175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156714, -0.040373, 0.986819,
		0.023144, -0.999040, -0.037198,
		0.987373, 0.017010, 0.157498,
		30.267855, 33.950993, 24.486423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754791, 33.326111, 24.757397>,  <29.576694, 33.939083, 24.376175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754791, 33.326111, 24.757397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.028130, 33.609745, 24.826960>,  <30.192133, 33.779926, 24.868698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.028130, 33.609745, 24.826960>,  <29.754791, 33.326111, 24.757397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028130, 33.609745, 24.826960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214050, -0.033155, 0.976260,
		0.698014, -0.704346, 0.129122,
		0.683344, 0.709082, 0.173908,
		30.233133, 33.822468, 24.879131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056833, 33.184906, 25.450775>,  <29.754791, 33.326111, 24.757397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056833, 33.184906, 25.450775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.171331, 33.564793, 25.400009>,  <30.240030, 33.792725, 25.369549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.171331, 33.564793, 25.400009>,  <30.056833, 33.184906, 25.450775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171331, 33.564793, 25.400009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068301, 0.152348, 0.985964,
		0.955719, -0.273560, 0.108475,
		0.286246, 0.949713, -0.126917,
		30.257206, 33.849705, 25.361935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458399, 33.338875, 26.054205>,  <30.056833, 33.184906, 25.450775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458399, 33.338875, 26.054205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.377636, 33.696640, 25.894571>,  <30.329178, 33.911297, 25.798792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.377636, 33.696640, 25.894571>,  <30.458399, 33.338875, 26.054205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377636, 33.696640, 25.894571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148156, 0.374893, 0.915153,
		0.968134, 0.243902, 0.056818,
		-0.201907, 0.894409, -0.399082,
		30.317064, 33.964962, 25.774847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859779, 33.799019, 26.412870>,  <30.458399, 33.338875, 26.054205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859779, 33.799019, 26.412870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590958, 34.047947, 26.252340>,  <30.429665, 34.197304, 26.156023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590958, 34.047947, 26.252340>,  <30.859779, 33.799019, 26.412870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590958, 34.047947, 26.252340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027609, 0.520525, 0.853400,
		0.739987, 0.584610, -0.332639,
		-0.672054, 0.622321, -0.401323,
		30.389341, 34.234642, 26.131943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044325, 34.430286, 26.614630>,  <30.859779, 33.799019, 26.412870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044325, 34.430286, 26.614630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657057, 34.474461, 26.524784>,  <30.424696, 34.500965, 26.470877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657057, 34.474461, 26.524784>,  <31.044325, 34.430286, 26.614630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657057, 34.474461, 26.524784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133405, 0.531629, 0.836405,
		0.211775, 0.839747, -0.499975,
		-0.968171, 0.110431, -0.224612,
		30.366606, 34.507591, 26.457401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823496, 35.211609, 26.697620>,  <31.044325, 34.430286, 26.614630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823496, 35.211609, 26.697620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.498032, 34.984554, 26.747810>,  <30.302753, 34.848320, 26.777925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.498032, 34.984554, 26.747810>,  <30.823496, 35.211609, 26.697620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498032, 34.984554, 26.747810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301647, 0.596752, 0.743570,
		-0.496957, 0.567163, -0.656780,
		-0.813660, -0.567638, 0.125477,
		30.253933, 34.814262, 26.785454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232841, 35.652988, 26.764296>,  <30.823496, 35.211609, 26.697620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232841, 35.652988, 26.764296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109922, 35.317989, 26.945032>,  <30.036171, 35.116989, 27.053474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109922, 35.317989, 26.945032>,  <30.232841, 35.652988, 26.764296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109922, 35.317989, 26.945032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235949, 0.527046, 0.816425,
		-0.921899, 0.144272, -0.359567,
		-0.307296, -0.837501, 0.451842,
		30.017735, 35.066738, 27.080585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894300, 35.920311, 26.365192>,  <30.232841, 35.652988, 26.764296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894300, 35.920311, 26.365192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.198299, 35.743076, 26.555384>,  <31.380699, 35.636738, 26.669498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.198299, 35.743076, 26.555384>,  <30.894300, 35.920311, 26.365192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198299, 35.743076, 26.555384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610162, 0.234455, -0.756792,
		0.223842, 0.865280, 0.448537,
		0.759998, -0.443082, 0.475480,
		31.426298, 35.610153, 26.698029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403595, 36.276081, 26.074690>,  <30.894300, 35.920311, 26.365192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403595, 36.276081, 26.074690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.555300, 35.931496, 26.209768>,  <31.646322, 35.724743, 26.290815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.555300, 35.931496, 26.209768>,  <31.403595, 36.276081, 26.074690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555300, 35.931496, 26.209768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759886, 0.081740, -0.644896,
		0.527952, 0.501197, 0.685616,
		0.379263, -0.861464, 0.337698,
		31.669079, 35.673058, 26.311077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988415, 36.367085, 26.377363>,  <31.403595, 36.276081, 26.074690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988415, 36.367085, 26.377363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014786, 35.981579, 26.273975>,  <32.030609, 35.750275, 26.211943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014786, 35.981579, 26.273975>,  <31.988415, 36.367085, 26.377363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014786, 35.981579, 26.273975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821557, 0.199437, -0.534106,
		0.566302, -0.177136, 0.804938,
		0.065925, -0.963767, -0.258469,
		32.034565, 35.692448, 26.196434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711273, 36.167381, 26.526228>,  <31.988415, 36.367085, 26.377363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711273, 36.167381, 26.526228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548138, 35.915909, 26.261370>,  <32.450256, 35.765026, 26.102455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548138, 35.915909, 26.261370>,  <32.711273, 36.167381, 26.526228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548138, 35.915909, 26.261370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734243, 0.205246, -0.647117,
		0.542731, -0.750092, 0.377896,
		-0.407836, -0.628678, -0.662143,
		32.425785, 35.727306, 26.062727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251617, 35.711288, 26.220137>,  <32.711273, 36.167381, 26.526228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251617, 35.711288, 26.220137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948738, 35.733414, 25.959799>,  <32.767010, 35.746689, 25.803596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948738, 35.733414, 25.959799>,  <33.251617, 35.711288, 26.220137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948738, 35.733414, 25.959799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650990, 0.145589, -0.744994,
		0.053550, -0.987798, -0.146246,
		-0.757195, 0.055311, -0.650843,
		32.721581, 35.750008, 25.764545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615833, 35.403946, 25.699615>,  <33.251617, 35.711288, 26.220137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615833, 35.403946, 25.699615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295998, 35.556023, 25.513666>,  <33.104095, 35.647266, 25.402096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295998, 35.556023, 25.513666>,  <33.615833, 35.403946, 25.699615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295998, 35.556023, 25.513666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577852, 0.276302, -0.767948,
		-0.163521, -0.882674, -0.440622,
		-0.799592, 0.380190, -0.464873,
		33.056118, 35.670078, 25.374205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682621, 35.172329, 25.059486>,  <33.615833, 35.403946, 25.699615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682621, 35.172329, 25.059486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433037, 35.484188, 25.038250>,  <33.283287, 35.671303, 25.025507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433037, 35.484188, 25.038250>,  <33.682621, 35.172329, 25.059486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433037, 35.484188, 25.038250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466173, 0.316836, -0.826013,
		-0.627178, -0.540152, -0.561145,
		-0.623964, 0.779648, -0.053092,
		33.245846, 35.718082, 25.022322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301617, 35.047005, 24.483574>,  <33.682621, 35.172329, 25.059486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301617, 35.047005, 24.483574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268463, 35.440945, 24.544491>,  <33.248573, 35.677311, 24.581041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268463, 35.440945, 24.544491>,  <33.301617, 35.047005, 24.483574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268463, 35.440945, 24.544491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381087, 0.172526, -0.908299,
		-0.920817, -0.017242, -0.389614,
		-0.082880, 0.984854, 0.152294,
		33.243599, 35.736401, 24.590179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064995, 35.440224, 23.849684>,  <33.301617, 35.047005, 24.483574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064995, 35.440224, 23.849684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183056, 35.770844, 24.041391>,  <33.253895, 35.969215, 24.156416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183056, 35.770844, 24.041391>,  <33.064995, 35.440224, 23.849684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183056, 35.770844, 24.041391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376976, 0.360176, -0.853324,
		-0.877936, 0.432535, -0.205282,
		0.295155, 0.826551, 0.479267,
		33.271603, 36.018810, 24.185171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869225, 36.046638, 23.382917>,  <33.064995, 35.440224, 23.849684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869225, 36.046638, 23.382917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150528, 36.199352, 23.622808>,  <33.319309, 36.290981, 23.766743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150528, 36.199352, 23.622808>,  <32.869225, 36.046638, 23.382917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150528, 36.199352, 23.622808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539619, 0.262563, -0.799920,
		-0.462862, 0.886173, -0.021368,
		0.703257, 0.381783, 0.599726,
		33.361504, 36.313889, 23.802727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071659, 36.513695, 22.976940>,  <32.869225, 36.046638, 23.382917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071659, 36.513695, 22.976940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355396, 36.469963, 23.255472>,  <33.525639, 36.443722, 23.422592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355396, 36.469963, 23.255472>,  <33.071659, 36.513695, 22.976940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355396, 36.469963, 23.255472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697128, 0.254765, -0.670155,
		-0.104131, 0.960802, 0.256936,
		0.709345, -0.109333, 0.696331,
		33.568199, 36.437164, 23.464371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507607, 37.071045, 22.916693>,  <33.071659, 36.513695, 22.976940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507607, 37.071045, 22.916693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742943, 36.788582, 23.074272>,  <33.884144, 36.619106, 23.168819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742943, 36.788582, 23.074272>,  <33.507607, 37.071045, 22.916693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742943, 36.788582, 23.074272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739726, 0.273263, -0.614926,
		0.326582, 0.653202, 0.683134,
		0.588345, -0.706155, 0.393947,
		33.919445, 36.576736, 23.192457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249390, 37.351372, 22.899551>,  <33.507607, 37.071045, 22.916693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249390, 37.351372, 22.899551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292969, 36.954647, 22.926207>,  <34.319115, 36.716614, 22.942200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292969, 36.954647, 22.926207>,  <34.249390, 37.351372, 22.899551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292969, 36.954647, 22.926207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808318, 0.049373, -0.586672,
		0.578577, 0.117782, 0.807078,
		0.108948, -0.991811, 0.066639,
		34.325653, 36.657104, 22.946198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986176, 37.236675, 22.874563>,  <34.249390, 37.351372, 22.899551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986176, 37.236675, 22.874563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869442, 36.857208, 22.825800>,  <34.799400, 36.629528, 22.796541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869442, 36.857208, 22.825800>,  <34.986176, 37.236675, 22.874563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869442, 36.857208, 22.825800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710609, -0.129736, -0.691523,
		0.640210, -0.288438, 0.711993,
		-0.291833, -0.948669, -0.121909,
		34.781891, 36.572609, 22.789227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665474, 36.977596, 22.762596>,  <34.986176, 37.236675, 22.874563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665474, 36.977596, 22.762596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386467, 36.714420, 22.649048>,  <35.219063, 36.556515, 22.580919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386467, 36.714420, 22.649048>,  <35.665474, 36.977596, 22.762596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386467, 36.714420, 22.649048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462863, -0.111277, -0.879417,
		0.547015, -0.744804, 0.382154,
		-0.697519, -0.657939, -0.283872,
		35.177212, 36.517040, 22.563887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016685, 36.445358, 22.535313>,  <35.665474, 36.977596, 22.762596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016685, 36.445358, 22.535313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658039, 36.384182, 22.369093>,  <35.442852, 36.347477, 22.269361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658039, 36.384182, 22.369093>,  <36.016685, 36.445358, 22.535313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658039, 36.384182, 22.369093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433381, -0.110560, -0.894403,
		0.090847, -0.982031, 0.165412,
		-0.896620, -0.152940, -0.415550,
		35.389053, 36.338299, 22.244429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065132, 35.764690, 22.312609>,  <36.016685, 36.445358, 22.535313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065132, 35.764690, 22.312609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791180, 35.984138, 22.120798>,  <35.626808, 36.115807, 22.005711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791180, 35.984138, 22.120798>,  <36.065132, 35.764690, 22.312609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791180, 35.984138, 22.120798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481524, -0.153149, -0.862949,
		-0.546873, -0.821923, -0.159286,
		-0.684883, 0.548623, -0.479529,
		35.585716, 36.148724, 21.976940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022751, 35.522495, 21.602194>,  <36.065132, 35.764690, 22.312609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022751, 35.522495, 21.602194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844650, 35.873669, 21.531778>,  <35.737789, 36.084373, 21.489529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844650, 35.873669, 21.531778>,  <36.022751, 35.522495, 21.602194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844650, 35.873669, 21.531778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300407, -0.038745, -0.953024,
		-0.843511, -0.477215, -0.246485,
		-0.445248, 0.877932, -0.176041,
		35.711075, 36.137047, 21.478966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731663, 35.403931, 20.957314>,  <36.022751, 35.522495, 21.602194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731663, 35.403931, 20.957314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751312, 35.797440, 21.026342>,  <35.763100, 36.033546, 21.067760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751312, 35.797440, 21.026342>,  <35.731663, 35.403931, 20.957314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751312, 35.797440, 21.026342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354656, 0.144342, -0.923788,
		-0.933706, 0.106582, -0.341810,
		0.049122, 0.983771, 0.172572,
		35.766048, 36.092571, 21.078114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531029, 35.727123, 20.369280>,  <35.731663, 35.403931, 20.957314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531029, 35.727123, 20.369280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740669, 36.004253, 20.567396>,  <35.866455, 36.170532, 20.686266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740669, 36.004253, 20.567396>,  <35.531029, 35.727123, 20.369280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740669, 36.004253, 20.567396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544834, 0.174228, -0.820244,
		-0.654577, 0.699744, -0.286159,
		0.524104, 0.692822, 0.495290,
		35.897900, 36.212101, 20.715982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560944, 36.384987, 19.943153>,  <35.531029, 35.727123, 20.369280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560944, 36.384987, 19.943153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882072, 36.347134, 20.178617>,  <36.074749, 36.324421, 20.319897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882072, 36.347134, 20.178617>,  <35.560944, 36.384987, 19.943153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882072, 36.347134, 20.178617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595265, 0.071406, -0.800350,
		0.033704, 0.992948, 0.113657,
		0.802822, -0.094631, 0.588661,
		36.122921, 36.318745, 20.355215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927944, 36.737892, 19.496439>,  <35.560944, 36.384987, 19.943153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927944, 36.737892, 19.496439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173138, 36.557556, 19.755974>,  <36.320255, 36.449356, 19.911695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173138, 36.557556, 19.755974>,  <35.927944, 36.737892, 19.496439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173138, 36.557556, 19.755974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761768, 0.119318, -0.636768,
		0.209663, 0.884593, 0.416577,
		0.612985, -0.450841, 0.648838,
		36.357033, 36.422302, 19.950624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687222, 37.216389, 19.540522>,  <35.927944, 36.737892, 19.496439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687222, 37.216389, 19.540522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769543, 36.855553, 19.692249>,  <36.818935, 36.639053, 19.783285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769543, 36.855553, 19.692249>,  <36.687222, 37.216389, 19.540522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769543, 36.855553, 19.692249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752689, -0.101796, -0.650459,
		0.625385, 0.419373, 0.658042,
		0.205799, -0.902088, 0.379319,
		36.831284, 36.584927, 19.806046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403828, 37.214783, 19.745636>,  <36.687222, 37.216389, 19.540522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403828, 37.214783, 19.745636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285469, 36.838551, 19.679008>,  <37.214455, 36.612812, 19.639032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285469, 36.838551, 19.679008>,  <37.403828, 37.214783, 19.745636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285469, 36.838551, 19.679008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747096, -0.119223, -0.653936,
		0.595223, -0.317943, 0.737985,
		-0.295900, -0.940584, -0.166570,
		37.196697, 36.556374, 19.629038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983253, 36.899445, 19.495316>,  <37.403828, 37.214783, 19.745636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983253, 36.899445, 19.495316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739689, 36.597187, 19.398796>,  <37.593548, 36.415833, 19.340885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739689, 36.597187, 19.398796>,  <37.983253, 36.899445, 19.495316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739689, 36.597187, 19.398796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573781, -0.209539, -0.791751,
		0.547720, -0.620561, 0.561165,
		-0.608916, -0.755643, -0.241297,
		37.557014, 36.370495, 19.326406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476040, 36.313374, 19.452473>,  <37.983253, 36.899445, 19.495316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476040, 36.313374, 19.452473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140041, 36.216164, 19.258419>,  <37.938442, 36.157837, 19.141987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140041, 36.216164, 19.258419>,  <38.476040, 36.313374, 19.452473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140041, 36.216164, 19.258419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527865, -0.159068, -0.834300,
		0.125584, -0.956890, 0.261899,
		-0.839992, -0.243022, -0.485132,
		37.888042, 36.143257, 19.112879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512943, 35.656010, 19.211395>,  <38.476040, 36.313374, 19.452473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512943, 35.656010, 19.211395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217186, 35.789482, 18.977488>,  <38.039730, 35.869564, 18.837143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217186, 35.789482, 18.977488>,  <38.512943, 35.656010, 19.211395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217186, 35.789482, 18.977488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405848, -0.472112, -0.782558,
		-0.537200, -0.815946, 0.213654,
		-0.739394, 0.333679, -0.584769,
		37.995369, 35.889587, 18.802057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682125, 34.883873, 19.316441>,  <38.512943, 35.656010, 19.211395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682125, 34.883873, 19.316441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015697, 34.706295, 19.447571>,  <39.215839, 34.599747, 19.526249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015697, 34.706295, 19.447571>,  <38.682125, 34.883873, 19.316441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015697, 34.706295, 19.447571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358988, 0.014790, 0.933225,
		-0.419153, -0.895930, -0.147039,
		0.833929, -0.443950, 0.327827,
		39.265877, 34.573109, 19.545919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421864, 34.188583, 19.690779>,  <38.682125, 34.883873, 19.316441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421864, 34.188583, 19.690779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.790951, 34.284065, 19.811853>,  <39.012402, 34.341354, 19.884499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.790951, 34.284065, 19.811853>,  <38.421864, 34.188583, 19.690779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790951, 34.284065, 19.811853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304690, -0.029382, 0.951998,
		0.236142, -0.970647, 0.045620,
		0.922714, 0.238707, 0.302685,
		39.067764, 34.355679, 19.902658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681065, 33.689255, 20.185884>,  <38.421864, 34.188583, 19.690779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681065, 33.689255, 20.185884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873711, 34.025330, 20.285591>,  <38.989300, 34.226974, 20.345415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873711, 34.025330, 20.285591>,  <38.681065, 33.689255, 20.185884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873711, 34.025330, 20.285591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289397, -0.116001, 0.950154,
		0.827222, -0.529745, 0.187279,
		0.481615, 0.840187, 0.249265,
		39.018196, 34.277386, 20.360371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065536, 33.580631, 20.834791>,  <38.681065, 33.689255, 20.185884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065536, 33.580631, 20.834791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.011845, 33.974129, 20.787081>,  <38.979630, 34.210228, 20.758455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.011845, 33.974129, 20.787081>,  <39.065536, 33.580631, 20.834791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011845, 33.974129, 20.787081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342024, 0.066976, 0.937302,
		0.930056, 0.166605, 0.327475,
		-0.134226, 0.983746, -0.119275,
		38.971577, 34.269253, 20.751299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261700, 33.777893, 21.534725>,  <39.065536, 33.580631, 20.834791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261700, 33.777893, 21.534725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110695, 34.114326, 21.379770>,  <39.020092, 34.316185, 21.286797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110695, 34.114326, 21.379770>,  <39.261700, 33.777893, 21.534725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110695, 34.114326, 21.379770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398574, 0.230021, 0.887823,
		0.835838, 0.489565, 0.248397,
		-0.377510, 0.841081, -0.387388,
		38.997440, 34.366650, 21.263554>
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
