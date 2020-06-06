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
	<24.037647, 34.982395, 34.808624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327236, 35.190720, 34.989563>,  <24.500990, 35.315716, 35.098125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327236, 35.190720, 34.989563>,  <24.037647, 34.982395, 34.808624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327236, 35.190720, 34.989563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056365, -0.698204, 0.713676,
		0.687523, -0.491185, -0.534836,
		0.723972, 0.520815, 0.452346,
		24.544428, 35.346966, 35.125267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516960, 34.447647, 34.913044>,  <24.037647, 34.982395, 34.808624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516960, 34.447647, 34.913044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542953, 34.752583, 35.170605>,  <24.558550, 34.935543, 35.325142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542953, 34.752583, 35.170605>,  <24.516960, 34.447647, 34.913044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542953, 34.752583, 35.170605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010679, -0.645764, 0.763462,
		0.997829, -0.042735, -0.050104,
		0.064982, 0.762340, 0.643906,
		24.562449, 34.981285, 35.363777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671446, 33.742943, 35.156189>,  <24.516960, 34.447647, 34.913044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671446, 33.742943, 35.156189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943655, 33.587044, 34.908001>,  <25.106979, 33.493504, 34.759087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943655, 33.587044, 34.908001>,  <24.671446, 33.742943, 35.156189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.943655, 33.587044, 34.908001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723383, 0.492173, 0.484235,
		0.116652, -0.778372, 0.616871,
		0.680522, -0.389747, -0.620474,
		25.147812, 33.470119, 34.721859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247948, 33.365585, 35.561283>,  <24.671446, 33.742943, 35.156189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247948, 33.365585, 35.561283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422525, 33.467491, 35.216118>,  <25.527271, 33.528633, 35.009018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422525, 33.467491, 35.216118>,  <25.247948, 33.365585, 35.561283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422525, 33.467491, 35.216118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574980, 0.658706, 0.485288,
		0.692038, -0.707956, 0.141003,
		0.436442, 0.254764, -0.862910,
		25.553459, 33.543919, 34.957245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968607, 33.427094, 35.680008>,  <25.247948, 33.365585, 35.561283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968607, 33.427094, 35.680008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897882, 33.648754, 35.354641>,  <25.855448, 33.781750, 35.159420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897882, 33.648754, 35.354641>,  <25.968607, 33.427094, 35.680008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897882, 33.648754, 35.354641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530320, 0.749856, 0.395571,
		0.829155, -0.361432, -0.426461,
		-0.176813, 0.554150, -0.813421,
		25.844839, 33.814999, 35.110615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532570, 33.575401, 35.361942>,  <25.968607, 33.427094, 35.680008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532570, 33.575401, 35.361942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286350, 33.879093, 35.277405>,  <26.138618, 34.061310, 35.226681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286350, 33.879093, 35.277405>,  <26.532570, 33.575401, 35.361942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286350, 33.879093, 35.277405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640669, 0.638242, 0.426838,
		0.458957, 0.127339, -0.879286,
		-0.615550, 0.759231, -0.211343,
		26.101685, 34.106861, 35.214001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979311, 33.982292, 35.159866>,  <26.532570, 33.575401, 35.361942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979311, 33.982292, 35.159866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683954, 34.216389, 35.293888>,  <26.506741, 34.356846, 35.374302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683954, 34.216389, 35.293888>,  <26.979311, 33.982292, 35.159866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683954, 34.216389, 35.293888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667108, 0.561185, 0.489937,
		0.098704, 0.585285, -0.804797,
		-0.738393, 0.585245, 0.335057,
		26.462437, 34.391964, 35.394405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058889, 34.801483, 34.934868>,  <26.979311, 33.982292, 35.159866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058889, 34.801483, 34.934868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875818, 34.720242, 35.281113>,  <26.765976, 34.671497, 35.488857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875818, 34.720242, 35.281113>,  <27.058889, 34.801483, 34.934868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875818, 34.720242, 35.281113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649022, 0.589097, 0.481388,
		-0.607701, 0.782120, -0.137796,
		-0.457678, -0.203108, 0.865608,
		26.738514, 34.659309, 35.540794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933800, 35.392735, 35.351265>,  <27.058889, 34.801483, 34.934868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933800, 35.392735, 35.351265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905308, 35.119995, 35.642471>,  <26.888212, 34.956352, 35.817196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905308, 35.119995, 35.642471>,  <26.933800, 35.392735, 35.351265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905308, 35.119995, 35.642471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603715, 0.551527, 0.575626,
		-0.794011, 0.480515, 0.372358,
		-0.071231, -0.681852, 0.728014,
		26.883938, 34.915440, 35.860874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836760, 35.788513, 35.975800>,  <26.933800, 35.392735, 35.351265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836760, 35.788513, 35.975800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958467, 35.432381, 36.111282>,  <27.031492, 35.218700, 36.192574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958467, 35.432381, 36.111282>,  <26.836760, 35.788513, 35.975800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958467, 35.432381, 36.111282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730155, 0.446343, 0.517351,
		-0.611796, 0.089896, 0.785891,
		0.304269, -0.890335, 0.338709,
		27.049747, 35.165279, 36.212894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947393, 35.889290, 36.706203>,  <26.836760, 35.788513, 35.975800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947393, 35.889290, 36.706203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142324, 35.549278, 36.626244>,  <27.259283, 35.345272, 36.578266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142324, 35.549278, 36.626244>,  <26.947393, 35.889290, 36.706203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142324, 35.549278, 36.626244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782528, 0.323528, 0.531959,
		-0.387506, -0.415668, 0.822836,
		0.487329, -0.850029, -0.199903,
		27.288523, 35.294270, 36.566273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220495, 35.558224, 37.298515>,  <26.947393, 35.889290, 36.706203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220495, 35.558224, 37.298515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446226, 35.470497, 36.980160>,  <27.581665, 35.417862, 36.789146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446226, 35.470497, 36.980160>,  <27.220495, 35.558224, 37.298515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446226, 35.470497, 36.980160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817095, 0.286013, 0.500552,
		0.117853, -0.932789, 0.340610,
		0.564329, -0.219319, -0.795885,
		27.615524, 35.404701, 36.741394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708132, 36.079536, 37.025471>,  <27.220495, 35.558224, 37.298515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708132, 36.079536, 37.025471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511600, 36.216797, 37.345680>,  <27.393681, 36.299152, 37.537807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511600, 36.216797, 37.345680>,  <27.708132, 36.079536, 37.025471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511600, 36.216797, 37.345680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240428, 0.829968, -0.503337,
		-0.837132, -0.439773, -0.325284,
		-0.491330, 0.343152, 0.800526,
		27.364201, 36.319744, 37.585838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265636, 36.136299, 36.551178>,  <27.708132, 36.079536, 37.025471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265636, 36.136299, 36.551178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410061, 35.786259, 36.680073>,  <28.496716, 35.576237, 36.757412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410061, 35.786259, 36.680073>,  <28.265636, 36.136299, 36.551178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410061, 35.786259, 36.680073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908396, -0.408171, -0.090628,
		0.210837, -0.259999, -0.942310,
		0.361060, -0.875098, 0.322239,
		28.518379, 35.523727, 36.776745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062721, 35.502323, 36.076637>,  <28.265636, 36.136299, 36.551178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062721, 35.502323, 36.076637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156321, 35.319824, 36.420052>,  <28.212481, 35.210323, 36.626099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156321, 35.319824, 36.420052>,  <28.062721, 35.502323, 36.076637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156321, 35.319824, 36.420052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764518, -0.631881, -0.127426,
		0.600630, -0.626549, -0.496669,
		0.233997, -0.456249, 0.858535,
		28.226521, 35.182949, 36.677612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189791, 34.762608, 35.989056>,  <28.062721, 35.502323, 36.076637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189791, 34.762608, 35.989056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057192, 34.870071, 36.350815>,  <27.977633, 34.934551, 36.567871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057192, 34.870071, 36.350815>,  <28.189791, 34.762608, 35.989056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057192, 34.870071, 36.350815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848305, -0.504407, -0.161099,
		0.412903, -0.820607, 0.395113,
		-0.331497, 0.268658, 0.904396,
		27.957743, 34.950668, 36.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930733, 34.229340, 36.231625>,  <28.189791, 34.762608, 35.989056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930733, 34.229340, 36.231625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734324, 34.549343, 36.369545>,  <27.616478, 34.741344, 36.452297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734324, 34.549343, 36.369545>,  <27.930733, 34.229340, 36.231625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734324, 34.549343, 36.369545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855100, -0.367002, -0.366216,
		-0.166435, -0.474656, 0.864292,
		-0.491023, 0.800007, 0.344797,
		27.587017, 34.789345, 36.472984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369946, 33.946663, 36.541214>,  <27.930733, 34.229340, 36.231625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369946, 33.946663, 36.541214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275059, 34.326740, 36.460354>,  <27.218126, 34.554787, 36.411839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275059, 34.326740, 36.460354>,  <27.369946, 33.946663, 36.541214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275059, 34.326740, 36.460354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879736, -0.298383, -0.370179,
		-0.412060, 0.090032, 0.906698,
		-0.237215, 0.950190, -0.202156,
		27.203894, 34.611797, 36.399708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793131, 33.903259, 36.782066>,  <27.369946, 33.946663, 36.541214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793131, 33.903259, 36.782066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807537, 34.212227, 36.528431>,  <26.816181, 34.397610, 36.376251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807537, 34.212227, 36.528431>,  <26.793131, 33.903259, 36.782066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807537, 34.212227, 36.528431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889843, -0.263998, -0.372135,
		-0.454843, 0.577640, 0.677827,
		0.036015, 0.772423, -0.634087,
		26.818342, 34.443954, 36.338203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196089, 34.348618, 36.725422>,  <26.793131, 33.903259, 36.782066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196089, 34.348618, 36.725422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377094, 34.401917, 36.372723>,  <26.485697, 34.433895, 36.161102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377094, 34.401917, 36.372723>,  <26.196089, 34.348618, 36.725422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377094, 34.401917, 36.372723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790262, -0.398210, -0.465740,
		-0.413179, 0.907565, -0.074895,
		0.452514, 0.133247, -0.881746,
		26.512848, 34.441891, 36.108200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776217, 34.736919, 36.281521>,  <26.196089, 34.348618, 36.725422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776217, 34.736919, 36.281521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016916, 34.505650, 36.061119>,  <26.161335, 34.366886, 35.928879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016916, 34.505650, 36.061119>,  <25.776217, 34.736919, 36.281521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016916, 34.505650, 36.061119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782303, -0.565697, -0.260748,
		-0.160944, 0.587959, -0.792718,
		0.601747, -0.578179, -0.551007,
		26.197441, 34.332195, 35.895817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510540, 35.210892, 35.773960>,  <25.776217, 34.736919, 36.281521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510540, 35.210892, 35.773960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794025, 34.956688, 35.651417>,  <25.964117, 34.804165, 35.577888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794025, 34.956688, 35.651417>,  <25.510540, 35.210892, 35.773960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794025, 34.956688, 35.651417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642657, -0.402383, -0.651982,
		0.291064, 0.658954, -0.693586,
		0.708713, -0.635506, -0.306362,
		26.006639, 34.766037, 35.559509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308184, 35.077522, 35.009052>,  <25.510540, 35.210892, 35.773960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308184, 35.077522, 35.009052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543404, 34.778831, 35.133369>,  <25.684536, 34.599617, 35.207962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543404, 34.778831, 35.133369>,  <25.308184, 35.077522, 35.009052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543404, 34.778831, 35.133369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629317, -0.663798, -0.404145,
		0.508092, 0.042067, -0.860275,
		0.588050, -0.746728, 0.310797,
		25.719818, 34.554813, 35.226608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179703, 34.574337, 34.464458>,  <25.308184, 35.077522, 35.009052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179703, 34.574337, 34.464458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334826, 34.394157, 34.786129>,  <25.427898, 34.286049, 34.979134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334826, 34.394157, 34.786129>,  <25.179703, 34.574337, 34.464458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334826, 34.394157, 34.786129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712913, -0.699603, -0.048074,
		0.584261, -0.554667, -0.592439,
		0.387807, -0.450445, 0.804180,
		25.451168, 34.259026, 35.027382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696096, 34.496399, 33.967674>,  <25.179703, 34.574337, 34.464458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696096, 34.496399, 33.967674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789043, 34.293457, 34.299603>,  <25.844812, 34.171692, 34.498760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789043, 34.293457, 34.299603>,  <25.696096, 34.496399, 33.967674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789043, 34.293457, 34.299603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524877, -0.783687, -0.332173,
		0.818846, -0.358365, -0.448403,
		0.232369, -0.507355, 0.829817,
		25.858753, 34.141251, 34.548546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981558, 33.885963, 33.780018>,  <25.696096, 34.496399, 33.967674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981558, 33.885963, 33.780018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836317, 33.791481, 34.140541>,  <25.749172, 33.734791, 34.356857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836317, 33.791481, 34.140541>,  <25.981558, 33.885963, 33.780018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836317, 33.791481, 34.140541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559630, -0.718128, -0.413649,
		0.744963, -0.654599, 0.128569,
		-0.363103, -0.236202, 0.901313,
		25.727386, 33.720619, 34.410934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112455, 33.217281, 33.870995>,  <25.981558, 33.885963, 33.780018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112455, 33.217281, 33.870995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812620, 33.299751, 34.122585>,  <25.632719, 33.349232, 34.273540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812620, 33.299751, 34.122585>,  <26.112455, 33.217281, 33.870995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812620, 33.299751, 34.122585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569193, -0.685799, -0.453540,
		0.337843, -0.697977, 0.631419,
		-0.749587, 0.206174, 0.628977,
		25.587744, 33.361603, 34.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154415, 32.954662, 33.113708>,  <26.112455, 33.217281, 33.870995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154415, 32.954662, 33.113708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895926, 32.664497, 33.208515>,  <25.740831, 32.490398, 33.265400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895926, 32.664497, 33.208515>,  <26.154415, 32.954662, 33.113708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895926, 32.664497, 33.208515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312906, 0.031403, 0.949265,
		-0.696047, 0.687602, 0.206691,
		-0.646226, -0.725408, 0.237013,
		25.702057, 32.446877, 33.279617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970375, 33.717010, 32.909187>,  <26.154415, 32.954662, 33.113708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970375, 33.717010, 32.909187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738638, 33.915169, 33.168091>,  <25.599596, 34.034065, 33.323433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738638, 33.915169, 33.168091>,  <25.970375, 33.717010, 32.909187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738638, 33.915169, 33.168091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746639, -0.004024, -0.665217,
		-0.326940, -0.868659, 0.372212,
		-0.579345, 0.495394, 0.647259,
		25.564835, 34.063786, 33.362270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158781, 33.428703, 32.909443>,  <25.970375, 33.717010, 32.909187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158781, 33.428703, 32.909443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221937, 33.798214, 33.048988>,  <25.259830, 34.019920, 33.132717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221937, 33.798214, 33.048988>,  <25.158781, 33.428703, 32.909443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.221937, 33.798214, 33.048988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493916, 0.379808, -0.782172,
		-0.855054, -0.048814, 0.516236,
		0.157890, 0.923776, 0.348867,
		25.269304, 34.075348, 33.153648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593483, 33.809837, 32.834698>,  <25.158781, 33.428703, 32.909443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593483, 33.809837, 32.834698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888222, 34.080147, 32.826817>,  <25.065065, 34.242332, 32.822086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888222, 34.080147, 32.826817>,  <24.593483, 33.809837, 32.834698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888222, 34.080147, 32.826817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230852, 0.224109, -0.946828,
		-0.635427, 0.702214, 0.321137,
		0.736845, 0.675775, -0.019702,
		25.109276, 34.282879, 32.820908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417595, 34.312210, 32.431980>,  <24.593483, 33.809837, 32.834698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417595, 34.312210, 32.431980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807110, 34.399189, 32.405277>,  <25.040819, 34.451378, 32.389256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807110, 34.399189, 32.405277>,  <24.417595, 34.312210, 32.431980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807110, 34.399189, 32.405277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150048, 0.393504, -0.906995,
		-0.170958, 0.893236, 0.415816,
		0.973786, 0.217451, -0.066755,
		25.099245, 34.464424, 32.385250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.327665, 34.967266, 32.248974>,  <24.417595, 34.312210, 32.431980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.327665, 34.967266, 32.248974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699198, 34.883934, 32.126423>,  <24.922117, 34.833935, 32.052891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699198, 34.883934, 32.126423>,  <24.327665, 34.967266, 32.248974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699198, 34.883934, 32.126423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199828, 0.414662, -0.887763,
		0.311990, 0.885807, 0.343522,
		0.928833, -0.208328, -0.306380,
		24.977848, 34.821434, 32.034508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494980, 35.607456, 31.988411>,  <24.327665, 34.967266, 32.248974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494980, 35.607456, 31.988411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781332, 35.359974, 31.858971>,  <24.953144, 35.211487, 31.781305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781332, 35.359974, 31.858971>,  <24.494980, 35.607456, 31.988411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781332, 35.359974, 31.858971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125770, 0.341621, -0.931384,
		0.686801, 0.707461, 0.166746,
		0.715882, -0.618704, -0.323603,
		24.996096, 35.174362, 31.761890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880035, 35.986561, 31.531816>,  <24.494980, 35.607456, 31.988411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880035, 35.986561, 31.531816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952894, 35.600815, 31.455065>,  <24.996611, 35.369366, 31.409014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952894, 35.600815, 31.455065>,  <24.880035, 35.986561, 31.531816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952894, 35.600815, 31.455065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137121, 0.218151, -0.966234,
		0.973663, 0.149688, 0.171971,
		0.182149, -0.964367, -0.191880,
		25.007540, 35.311504, 31.397501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575455, 36.133762, 31.264080>,  <24.880035, 35.986561, 31.531816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575455, 36.133762, 31.264080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364212, 35.803223, 31.185852>,  <25.237467, 35.604900, 31.138914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364212, 35.803223, 31.185852>,  <25.575455, 36.133762, 31.264080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364212, 35.803223, 31.185852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146678, 0.138079, -0.979500,
		0.836413, -0.545968, 0.048286,
		-0.528108, -0.826349, -0.195572,
		25.205780, 35.555317, 31.127180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015331, 35.606960, 31.464653>,  <25.575455, 36.133762, 31.264080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015331, 35.606960, 31.464653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867094, 35.284351, 31.280397>,  <25.778152, 35.090786, 31.169844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867094, 35.284351, 31.280397>,  <26.015331, 35.606960, 31.464653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867094, 35.284351, 31.280397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074135, 0.468685, -0.880249,
		0.925833, -0.360362, -0.113899,
		-0.370591, -0.806519, -0.460640,
		25.755917, 35.042397, 31.142206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412403, 35.471428, 30.821362>,  <26.015331, 35.606960, 31.464653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412403, 35.471428, 30.821362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046179, 35.314114, 30.787710>,  <25.826445, 35.219723, 30.767519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046179, 35.314114, 30.787710>,  <26.412403, 35.471428, 30.821362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046179, 35.314114, 30.787710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128964, 0.485221, -0.864829,
		0.380946, -0.780952, -0.494968,
		-0.915559, -0.393286, -0.084128,
		25.771511, 35.196129, 30.762472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298943, 35.274971, 30.142422>,  <26.412403, 35.471428, 30.821362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298943, 35.274971, 30.142422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934237, 35.352852, 30.287073>,  <25.715412, 35.399582, 30.373863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934237, 35.352852, 30.287073>,  <26.298943, 35.274971, 30.142422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934237, 35.352852, 30.287073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197412, 0.564350, -0.801584,
		-0.360155, -0.802247, -0.476118,
		-0.911766, 0.194703, 0.361627,
		25.660707, 35.411263, 30.395561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872217, 35.558460, 29.660397>,  <26.298943, 35.274971, 30.142422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872217, 35.558460, 29.660397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611004, 35.617908, 29.957438>,  <25.454275, 35.653580, 30.135662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611004, 35.617908, 29.957438>,  <25.872217, 35.558460, 29.660397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611004, 35.617908, 29.957438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577354, 0.536870, -0.615168,
		-0.490109, -0.830471, -0.264786,
		-0.653035, 0.148624, 0.742601,
		25.415092, 35.662495, 30.180218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308386, 35.717468, 29.311352>,  <25.872217, 35.558460, 29.660397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308386, 35.717468, 29.311352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251726, 35.885735, 29.669788>,  <25.217730, 35.986694, 29.884850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251726, 35.885735, 29.669788>,  <25.308386, 35.717468, 29.311352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251726, 35.885735, 29.669788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396707, 0.805226, -0.440720,
		-0.906951, -0.417912, 0.052822,
		-0.141648, 0.420666, 0.896089,
		25.209232, 36.011936, 29.938616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491777, 35.891392, 29.472990>,  <25.308386, 35.717468, 29.311352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491777, 35.891392, 29.472990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776316, 36.133659, 29.615623>,  <24.947039, 36.279022, 29.701204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776316, 36.133659, 29.615623>,  <24.491777, 35.891392, 29.472990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.776316, 36.133659, 29.615623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342105, 0.741559, -0.577109,
		-0.613966, 0.288534, 0.734707,
		0.711344, 0.605672, 0.356583,
		24.989719, 36.315361, 29.722599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464493, 35.927124, 30.224218>,  <24.491777, 35.891392, 29.472990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464493, 35.927124, 30.224218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745739, 35.668556, 30.105711>,  <24.914486, 35.513416, 30.034607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745739, 35.668556, 30.105711>,  <24.464493, 35.927124, 30.224218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745739, 35.668556, 30.105711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054132, -0.464098, 0.884128,
		-0.709012, -0.605606, -0.361306,
		0.703115, -0.646416, -0.296269,
		24.956675, 35.474632, 30.016830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.401697, 35.318439, 30.668650>,  <24.464493, 35.927124, 30.224218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.401697, 35.318439, 30.668650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774179, 35.268345, 30.531727>,  <24.997669, 35.238289, 30.449574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774179, 35.268345, 30.531727>,  <24.401697, 35.318439, 30.668650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774179, 35.268345, 30.531727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253521, -0.452220, 0.855117,
		-0.261891, -0.883070, -0.389359,
		0.931204, -0.125237, -0.342309,
		25.053541, 35.230774, 30.429033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.512247, 34.681271, 30.786802>,  <24.401697, 35.318439, 30.668650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.512247, 34.681271, 30.786802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872816, 34.854393, 30.791229>,  <25.089157, 34.958267, 30.793884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872816, 34.854393, 30.791229>,  <24.512247, 34.681271, 30.786802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872816, 34.854393, 30.791229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193035, -0.424660, 0.884534,
		0.387529, -0.795201, -0.466344,
		0.901421, 0.432803, 0.011067,
		25.143242, 34.984234, 30.794550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106625, 34.283947, 30.863976>,  <24.512247, 34.681271, 30.786802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106625, 34.283947, 30.863976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209961, 34.624718, 31.046175>,  <25.271963, 34.829182, 31.155495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209961, 34.624718, 31.046175>,  <25.106625, 34.283947, 30.863976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209961, 34.624718, 31.046175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098994, -0.492368, 0.864739,
		0.960968, -0.178306, -0.211534,
		0.258341, 0.851928, 0.455499,
		25.287464, 34.880295, 31.182825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779480, 34.252014, 31.281137>,  <25.106625, 34.283947, 30.863976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779480, 34.252014, 31.281137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554619, 34.546352, 31.432142>,  <25.419703, 34.722954, 31.522745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554619, 34.546352, 31.432142>,  <25.779480, 34.252014, 31.281137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554619, 34.546352, 31.432142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126385, -0.374667, 0.918505,
		0.817319, 0.564052, 0.117620,
		-0.562153, 0.735847, 0.377510,
		25.385973, 34.767105, 31.545395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252598, 34.492981, 31.753727>,  <25.779480, 34.252014, 31.281137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252598, 34.492981, 31.753727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885845, 34.617962, 31.853081>,  <25.665792, 34.692951, 31.912693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885845, 34.617962, 31.853081>,  <26.252598, 34.492981, 31.753727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885845, 34.617962, 31.853081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169948, -0.257471, 0.951224,
		0.361168, 0.914374, 0.182970,
		-0.916884, 0.312456, 0.248386,
		25.610781, 34.711700, 31.927597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305195, 34.905590, 32.337818>,  <26.252598, 34.492981, 31.753727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305195, 34.905590, 32.337818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928684, 34.770782, 32.346008>,  <25.702778, 34.689899, 32.350922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928684, 34.770782, 32.346008>,  <26.305195, 34.905590, 32.337818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928684, 34.770782, 32.346008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134170, -0.317713, 0.938646,
		-0.309834, 0.886272, 0.344273,
		-0.941276, -0.337016, 0.020473,
		25.646301, 34.669678, 32.352150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962919, 35.238285, 32.886375>,  <26.305195, 34.905590, 32.337818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962919, 35.238285, 32.886375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782043, 34.888618, 32.815544>,  <25.673519, 34.678818, 32.773045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782043, 34.888618, 32.815544>,  <25.962919, 35.238285, 32.886375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782043, 34.888618, 32.815544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115768, -0.139328, 0.983456,
		-0.884378, 0.465206, -0.038198,
		-0.452188, -0.874169, -0.177075,
		25.646387, 34.626369, 32.762421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500853, 34.756882, 33.022007>,  <25.962919, 35.238285, 32.886375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500853, 34.756882, 33.022007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747000, 34.984730, 32.804070>,  <26.894688, 35.121437, 32.673309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747000, 34.984730, 32.804070>,  <26.500853, 34.756882, 33.022007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747000, 34.984730, 32.804070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664664, -0.003411, 0.747135,
		0.423726, -0.821900, -0.380706,
		0.615369, 0.569622, -0.544842,
		26.931610, 35.155617, 32.640617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179695, 34.429455, 32.826462>,  <26.500853, 34.756882, 33.022007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179695, 34.429455, 32.826462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224422, 34.825005, 32.865707>,  <27.251259, 35.062336, 32.889256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224422, 34.825005, 32.865707>,  <27.179695, 34.429455, 32.826462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224422, 34.825005, 32.865707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699425, -0.148450, 0.699118,
		0.705904, -0.009554, -0.708243,
		0.111818, 0.988874, 0.098110,
		27.257967, 35.121666, 32.895142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874268, 34.666779, 32.630478>,  <27.179695, 34.429455, 32.826462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874268, 34.666779, 32.630478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698694, 34.890476, 32.911785>,  <27.593349, 35.024696, 33.080570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698694, 34.890476, 32.911785>,  <27.874268, 34.666779, 32.630478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698694, 34.890476, 32.911785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739187, -0.220224, 0.636477,
		0.510823, 0.799217, -0.316723,
		-0.438933, 0.559244, 0.703266,
		27.567015, 35.058250, 33.122765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300951, 35.252079, 32.681034>,  <27.874268, 34.666779, 32.630478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300951, 35.252079, 32.681034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111315, 35.156826, 33.020100>,  <27.997532, 35.099674, 33.223537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111315, 35.156826, 33.020100>,  <28.300951, 35.252079, 32.681034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111315, 35.156826, 33.020100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879620, -0.170534, 0.444058,
		0.038811, 0.956144, 0.290314,
		-0.474092, -0.238132, 0.847662,
		27.969088, 35.085388, 33.274399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830990, 35.372826, 33.018280>,  <28.300951, 35.252079, 32.681034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830990, 35.372826, 33.018280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606987, 35.173988, 33.283394>,  <28.472586, 35.054684, 33.442463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606987, 35.173988, 33.283394>,  <28.830990, 35.372826, 33.018280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606987, 35.173988, 33.283394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826933, -0.286408, 0.483893,
		-0.050715, 0.819064, 0.571456,
		-0.560009, -0.497097, 0.662786,
		28.438984, 35.024860, 33.482231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183920, 35.551514, 33.562946>,  <28.830990, 35.372826, 33.018280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183920, 35.551514, 33.562946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967525, 35.224693, 33.642712>,  <28.837688, 35.028603, 33.690571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967525, 35.224693, 33.642712>,  <29.183920, 35.551514, 33.562946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967525, 35.224693, 33.642712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794085, -0.418113, 0.441146,
		-0.277061, 0.397005, 0.875000,
		-0.540986, -0.817049, 0.199412,
		28.805229, 34.979580, 33.702534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043131, 36.245461, 33.416203>,  <29.183920, 35.551514, 33.562946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043131, 36.245461, 33.416203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118694, 36.520382, 33.696751>,  <29.164032, 36.685337, 33.865078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118694, 36.520382, 33.696751>,  <29.043131, 36.245461, 33.416203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118694, 36.520382, 33.696751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368563, 0.612392, -0.699383,
		-0.910206, 0.390620, -0.137629,
		0.188910, 0.687308, 0.701371,
		29.175367, 36.726574, 33.907162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687540, 36.870396, 33.308365>,  <29.043131, 36.245461, 33.416203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687540, 36.870396, 33.308365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055271, 36.869865, 33.465759>,  <29.275909, 36.869545, 33.560196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055271, 36.869865, 33.465759>,  <28.687540, 36.870396, 33.308365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055271, 36.869865, 33.465759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351059, 0.454460, -0.818672,
		-0.177737, 0.890766, 0.418265,
		0.919330, -0.001328, 0.393486,
		29.331070, 36.869469, 33.583805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077452, 37.513187, 33.289345>,  <28.687540, 36.870396, 33.308365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077452, 37.513187, 33.289345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365637, 37.237808, 33.322739>,  <29.538548, 37.072578, 33.342773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365637, 37.237808, 33.322739>,  <29.077452, 37.513187, 33.289345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365637, 37.237808, 33.322739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419957, 0.337317, -0.842528,
		0.551878, 0.642070, 0.532144,
		0.720463, -0.688451, 0.083484,
		29.581776, 37.031273, 33.347782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690809, 37.830555, 33.265732>,  <29.077452, 37.513187, 33.289345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690809, 37.830555, 33.265732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746067, 37.457920, 33.131233>,  <29.779221, 37.234341, 33.050533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746067, 37.457920, 33.131233>,  <29.690809, 37.830555, 33.265732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746067, 37.457920, 33.131233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439236, 0.361915, -0.822247,
		0.887687, -0.034104, 0.459183,
		0.138143, -0.931587, -0.336247,
		29.787510, 37.178444, 33.030357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451109, 37.477142, 33.336269>,  <29.690809, 37.830555, 33.265732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451109, 37.477142, 33.336269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249634, 37.346481, 33.016369>,  <30.128750, 37.268085, 32.824429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249634, 37.346481, 33.016369>,  <30.451109, 37.477142, 33.336269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249634, 37.346481, 33.016369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724720, 0.344095, -0.596976,
		0.470193, -0.880282, 0.063416,
		-0.503686, -0.326653, -0.799749,
		30.098528, 37.248486, 32.776443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973322, 36.983681, 32.973881>,  <30.451109, 37.477142, 33.336269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973322, 36.983681, 32.973881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700861, 37.152061, 32.734268>,  <30.537384, 37.253090, 32.590500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700861, 37.152061, 32.734268>,  <30.973322, 36.983681, 32.973881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700861, 37.152061, 32.734268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688418, 0.089730, -0.719742,
		-0.249224, -0.902636, -0.350908,
		-0.681152, 0.420948, -0.599028,
		30.496515, 37.278347, 32.554558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200001, 36.347084, 32.707233>,  <30.973322, 36.983681, 32.973881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200001, 36.347084, 32.707233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085716, 36.449345, 33.076668>,  <31.017145, 36.510700, 33.298328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085716, 36.449345, 33.076668>,  <31.200001, 36.347084, 32.707233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085716, 36.449345, 33.076668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886800, -0.294789, 0.355929,
		0.363258, 0.920728, -0.142491,
		-0.285709, 0.255655, 0.923586,
		31.000004, 36.526043, 33.353745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828672, 36.535080, 33.056965>,  <31.200001, 36.347084, 32.707233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828672, 36.535080, 33.056965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561417, 36.449940, 33.342140>,  <31.401062, 36.398857, 33.513245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561417, 36.449940, 33.342140>,  <31.828672, 36.535080, 33.056965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561417, 36.449940, 33.342140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738313, -0.308269, 0.599887,
		0.092091, 0.927181, 0.363117,
		-0.668142, -0.212850, 0.712939,
		31.360973, 36.386086, 33.556023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200111, 36.606659, 33.702797>,  <31.828672, 36.535080, 33.056965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200111, 36.606659, 33.702797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903383, 36.363876, 33.816853>,  <31.725346, 36.218208, 33.885284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903383, 36.363876, 33.816853>,  <32.200111, 36.606659, 33.702797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903383, 36.363876, 33.816853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623564, -0.467909, 0.626282,
		-0.246705, 0.642393, 0.725581,
		-0.741825, -0.606953, 0.285138,
		31.680836, 36.181789, 33.902393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550430, 36.460690, 34.296692>,  <32.200111, 36.606659, 33.702797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550430, 36.460690, 34.296692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274475, 36.181255, 34.220764>,  <32.108902, 36.013596, 34.175205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274475, 36.181255, 34.220764>,  <32.550430, 36.460690, 34.296692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274475, 36.181255, 34.220764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600816, -0.698810, 0.388180,
		-0.403828, 0.153751, 0.901822,
		-0.689886, -0.698588, -0.189823,
		32.067509, 35.971680, 34.163818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234756, 36.546677, 34.110508>,  <32.550430, 36.460690, 34.296692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234756, 36.546677, 34.110508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424557, 36.655186, 33.775543>,  <33.538437, 36.720291, 33.574566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424557, 36.655186, 33.775543>,  <33.234756, 36.546677, 34.110508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424557, 36.655186, 33.775543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626708, -0.563927, -0.537795,
		-0.618130, 0.779996, -0.097573,
		0.474502, 0.271277, -0.837410,
		33.566906, 36.736568, 33.524319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000595, 36.021969, 33.704769>,  <33.234756, 36.546677, 34.110508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000595, 36.021969, 33.704769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119816, 36.303204, 33.446518>,  <33.191349, 36.471943, 33.291569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119816, 36.303204, 33.446518>,  <33.000595, 36.021969, 33.704769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119816, 36.303204, 33.446518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185917, -0.620659, -0.761720,
		-0.936270, 0.347063, -0.054271,
		0.298048, 0.703086, -0.645629,
		33.209229, 36.514130, 33.252831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519836, 36.077194, 33.159191>,  <33.000595, 36.021969, 33.704769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519836, 36.077194, 33.159191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871655, 36.196171, 33.010635>,  <33.082745, 36.267555, 32.921501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871655, 36.196171, 33.010635>,  <32.519836, 36.077194, 33.159191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871655, 36.196171, 33.010635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124354, -0.609707, -0.782811,
		-0.459279, 0.734701, -0.499277,
		0.879545, 0.297442, -0.371389,
		33.135517, 36.285404, 32.899220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333431, 36.118748, 32.418667>,  <32.519836, 36.077194, 33.159191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333431, 36.118748, 32.418667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733376, 36.116455, 32.424931>,  <32.973343, 36.115082, 32.428688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733376, 36.116455, 32.424931>,  <32.333431, 36.118748, 32.418667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733376, 36.116455, 32.424931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011045, -0.475949, -0.879404,
		0.012489, 0.879454, -0.475820,
		0.999861, -0.005728, 0.015658,
		33.033333, 36.114738, 32.429626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550991, 36.199387, 31.824808>,  <32.333431, 36.118748, 32.418667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550991, 36.199387, 31.824808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882816, 36.033855, 31.974785>,  <33.081909, 35.934536, 32.064770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882816, 36.033855, 31.974785>,  <32.550991, 36.199387, 31.824808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882816, 36.033855, 31.974785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111198, -0.535568, -0.837139,
		0.547234, 0.736149, -0.398270,
		0.829560, -0.413825, 0.374940,
		33.131683, 35.909710, 32.087265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037346, 36.163818, 31.274124>,  <32.550991, 36.199387, 31.824808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037346, 36.163818, 31.274124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185047, 35.904541, 31.540506>,  <33.273666, 35.748974, 31.700336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185047, 35.904541, 31.540506>,  <33.037346, 36.163818, 31.274124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185047, 35.904541, 31.540506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271410, -0.610140, -0.744356,
		0.888814, 0.455601, -0.049368,
		0.369251, -0.648195, 0.665956,
		33.295822, 35.710083, 31.740294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585659, 35.908016, 30.943287>,  <33.037346, 36.163818, 31.274124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585659, 35.908016, 30.943287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526585, 35.650120, 31.243288>,  <33.491138, 35.495384, 31.423288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526585, 35.650120, 31.243288>,  <33.585659, 35.908016, 30.943287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526585, 35.650120, 31.243288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173260, -0.763456, -0.622186,
		0.973739, 0.038055, 0.224462,
		-0.147689, -0.644737, 0.750001,
		33.482277, 35.456699, 31.468288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190189, 35.449074, 30.948820>,  <33.585659, 35.908016, 30.943287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190189, 35.449074, 30.948820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920425, 35.235695, 31.153015>,  <33.758568, 35.107666, 31.275532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920425, 35.235695, 31.153015>,  <34.190189, 35.449074, 30.948820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920425, 35.235695, 31.153015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068048, -0.643541, -0.762381,
		0.735211, -0.548898, 0.397713,
		-0.674414, -0.533448, 0.510489,
		33.718102, 35.075661, 31.306162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396961, 34.774567, 30.938099>,  <34.190189, 35.449074, 30.948820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396961, 34.774567, 30.938099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998711, 34.806404, 30.957693>,  <33.759762, 34.825508, 30.969450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998711, 34.806404, 30.957693>,  <34.396961, 34.774567, 30.938099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998711, 34.806404, 30.957693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083775, -0.527647, -0.845323,
		-0.041436, -0.845727, 0.532005,
		-0.995623, 0.079595, 0.048988,
		33.700024, 34.830284, 30.972389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153076, 34.152065, 30.718225>,  <34.396961, 34.774567, 30.938099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153076, 34.152065, 30.718225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811634, 34.356030, 30.675623>,  <33.606770, 34.478409, 30.650061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811634, 34.356030, 30.675623>,  <34.153076, 34.152065, 30.718225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811634, 34.356030, 30.675623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135657, -0.415007, -0.899648,
		-0.502945, -0.753496, 0.423426,
		-0.853606, 0.509915, -0.106509,
		33.555553, 34.509003, 30.643671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745304, 33.735233, 30.371237>,  <34.153076, 34.152065, 30.718225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745304, 33.735233, 30.371237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493423, 34.045906, 30.377445>,  <33.342297, 34.232311, 30.381170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493423, 34.045906, 30.377445>,  <33.745304, 33.735233, 30.371237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493423, 34.045906, 30.377445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491565, -0.382908, -0.782142,
		-0.601533, -0.500145, 0.622907,
		-0.629700, 0.776683, 0.015522,
		33.304512, 34.278912, 30.382101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161209, 33.396942, 30.328926>,  <33.745304, 33.735233, 30.371237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161209, 33.396942, 30.328926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108372, 33.768063, 30.189360>,  <33.076672, 33.990734, 30.105619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108372, 33.768063, 30.189360>,  <33.161209, 33.396942, 30.328926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108372, 33.768063, 30.189360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417196, -0.371340, -0.829490,
		-0.899166, 0.035999, 0.436124,
		-0.132090, 0.927799, -0.348915,
		33.068745, 34.046402, 30.084684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446754, 33.523167, 30.176985>,  <33.161209, 33.396942, 30.328926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446754, 33.523167, 30.176985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643040, 33.795452, 29.959423>,  <32.760811, 33.958824, 29.828886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643040, 33.795452, 29.959423>,  <32.446754, 33.523167, 30.176985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643040, 33.795452, 29.959423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408821, -0.371380, -0.833632,
		-0.769460, 0.631432, 0.096050,
		0.490710, 0.680714, -0.543905,
		32.790253, 33.999668, 29.796251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958206, 33.833553, 29.715782>,  <32.446754, 33.523167, 30.176985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958206, 33.833553, 29.715782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299896, 33.889935, 29.515610>,  <32.504910, 33.923763, 29.395506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299896, 33.889935, 29.515610>,  <31.958206, 33.833553, 29.715782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299896, 33.889935, 29.515610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435811, -0.330723, -0.837073,
		-0.283488, 0.933143, -0.221085,
		0.854227, 0.140949, -0.500430,
		32.556164, 33.932220, 29.365480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642902, 34.096470, 29.119213>,  <31.958206, 33.833553, 29.715782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642902, 34.096470, 29.119213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011238, 33.973930, 29.022711>,  <32.232239, 33.900406, 28.964809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011238, 33.973930, 29.022711>,  <31.642902, 34.096470, 29.119213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011238, 33.973930, 29.022711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339397, -0.325035, -0.882702,
		0.191996, 0.894709, -0.403278,
		0.920841, -0.306347, -0.241256,
		32.287491, 33.882027, 28.950335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782497, 34.438560, 28.493116>,  <31.642902, 34.096470, 29.119213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782497, 34.438560, 28.493116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056568, 34.147610, 28.508375>,  <32.221012, 33.973042, 28.517530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056568, 34.147610, 28.508375>,  <31.782497, 34.438560, 28.493116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056568, 34.147610, 28.508375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228463, -0.264347, -0.936977,
		0.691617, 0.633282, -0.347303,
		0.685179, -0.727375, 0.038146,
		32.262123, 33.929398, 28.519819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231190, 34.507671, 27.934752>,  <31.782497, 34.438560, 28.493116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231190, 34.507671, 27.934752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269703, 34.124870, 28.044210>,  <32.292812, 33.895191, 28.109886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269703, 34.124870, 28.044210>,  <32.231190, 34.507671, 27.934752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269703, 34.124870, 28.044210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219883, -0.288584, -0.931864,
		0.970763, 0.029555, -0.238214,
		0.096286, -0.956998, 0.273648,
		32.298588, 33.837772, 28.126305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604881, 34.179298, 27.421783>,  <32.231190, 34.507671, 27.934752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604881, 34.179298, 27.421783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442909, 33.866428, 27.611195>,  <32.345726, 33.678707, 27.724842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442909, 33.866428, 27.611195>,  <32.604881, 34.179298, 27.421783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442909, 33.866428, 27.611195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252308, -0.402195, -0.880102,
		0.878845, -0.475859, -0.034487,
		-0.404934, -0.782175, 0.473530,
		32.321430, 33.631775, 27.753254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767368, 33.700226, 27.021849>,  <32.604881, 34.179298, 27.421783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767368, 33.700226, 27.021849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466419, 33.552563, 27.240080>,  <32.285851, 33.463963, 27.371017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466419, 33.552563, 27.240080>,  <32.767368, 33.700226, 27.021849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466419, 33.552563, 27.240080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362983, -0.458802, -0.811014,
		0.549707, -0.808220, 0.211192,
		-0.752373, -0.369161, 0.545577,
		32.240707, 33.441814, 27.403753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780201, 33.032532, 26.967527>,  <32.767368, 33.700226, 27.021849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780201, 33.032532, 26.967527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408604, 33.148945, 27.058981>,  <32.185646, 33.218792, 27.113853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408604, 33.148945, 27.058981>,  <32.780201, 33.032532, 26.967527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408604, 33.148945, 27.058981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367627, -0.654382, -0.660783,
		-0.042697, -0.697914, 0.714908,
		-0.928992, 0.291033, 0.228632,
		32.129906, 33.236256, 27.127571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509964, 32.528606, 26.687262>,  <32.780201, 33.032532, 26.967527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509964, 32.528606, 26.687262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171547, 32.730045, 26.757231>,  <31.968496, 32.850910, 26.799212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171547, 32.730045, 26.757231>,  <32.509964, 32.528606, 26.687262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171547, 32.730045, 26.757231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404736, -0.393196, -0.825582,
		-0.346981, -0.769277, 0.536485,
		-0.846045, 0.503596, 0.174922,
		31.917734, 32.881123, 26.809708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884470, 32.099110, 26.794800>,  <32.509964, 32.528606, 26.687262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884470, 32.099110, 26.794800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750530, 32.452816, 26.664604>,  <31.670166, 32.665039, 26.586487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750530, 32.452816, 26.664604>,  <31.884470, 32.099110, 26.794800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750530, 32.452816, 26.664604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487028, -0.458129, -0.743587,
		-0.806647, -0.090468, 0.584069,
		-0.334850, 0.884270, -0.325488,
		31.650076, 32.718098, 26.566957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193134, 31.972595, 26.566000>,  <31.884470, 32.099110, 26.794800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193134, 31.972595, 26.566000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273331, 32.316860, 26.378782>,  <31.321449, 32.523418, 26.266451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273331, 32.316860, 26.378782>,  <31.193134, 31.972595, 26.566000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273331, 32.316860, 26.378782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437073, -0.348990, -0.828959,
		-0.876795, 0.370770, 0.306202,
		0.200491, 0.860660, -0.468046,
		31.333479, 32.575058, 26.238369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571123, 32.326878, 26.136709>,  <31.193134, 31.972595, 26.566000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571123, 32.326878, 26.136709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909668, 32.490780, 26.000610>,  <31.112795, 32.589123, 25.918951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909668, 32.490780, 26.000610>,  <30.571123, 32.326878, 26.136709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909668, 32.490780, 26.000610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282348, -0.196495, -0.938972,
		-0.451605, 0.890781, -0.050613,
		0.846364, 0.409755, -0.340249,
		31.163578, 32.613705, 25.898535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386581, 32.397678, 25.507116>,  <30.571123, 32.326878, 26.136709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386581, 32.397678, 25.507116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775942, 32.483444, 25.474813>,  <31.009558, 32.534904, 25.455431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775942, 32.483444, 25.474813>,  <30.386581, 32.397678, 25.507116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775942, 32.483444, 25.474813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074517, -0.037038, -0.996532,
		-0.216658, 0.976041, -0.020076,
		0.973400, 0.214410, -0.080757,
		31.067963, 32.547768, 25.450586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384235, 33.013699, 25.109579>,  <30.386581, 32.397678, 25.507116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384235, 33.013699, 25.109579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734158, 32.821159, 25.087576>,  <30.944111, 32.705635, 25.074373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734158, 32.821159, 25.087576>,  <30.384235, 33.013699, 25.109579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734158, 32.821159, 25.087576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111447, -0.089435, -0.989738,
		0.471484, 0.871957, -0.131882,
		0.874804, -0.481344, -0.055010,
		30.996599, 32.676758, 25.071074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768942, 33.370029, 24.555599>,  <30.384235, 33.013699, 25.109579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768942, 33.370029, 24.555599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938026, 33.008556, 24.582962>,  <31.039476, 32.791672, 24.599379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938026, 33.008556, 24.582962>,  <30.768942, 33.370029, 24.555599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938026, 33.008556, 24.582962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011863, -0.080993, -0.996644,
		0.906187, 0.420482, -0.044957,
		0.422712, -0.903679, 0.068406,
		31.064840, 32.737453, 24.603483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244432, 33.371117, 23.969543>,  <30.768942, 33.370029, 24.555599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244432, 33.371117, 23.969543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174032, 32.994324, 24.083872>,  <31.131792, 32.768250, 24.152470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174032, 32.994324, 24.083872>,  <31.244432, 33.371117, 23.969543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174032, 32.994324, 24.083872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091332, -0.304728, -0.948050,
		0.980144, -0.140753, 0.139665,
		-0.176001, -0.941982, 0.285822,
		31.121231, 32.711731, 24.169619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675278, 33.005131, 23.607273>,  <31.244432, 33.371117, 23.969543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675278, 33.005131, 23.607273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405256, 32.728119, 23.709028>,  <31.243244, 32.561913, 23.770081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405256, 32.728119, 23.709028>,  <31.675278, 33.005131, 23.607273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405256, 32.728119, 23.709028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026929, -0.321446, -0.946545,
		0.737278, -0.645818, 0.198344,
		-0.675053, -0.692525, 0.254386,
		31.202740, 32.520363, 23.785343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859505, 32.286049, 23.181086>,  <31.675278, 33.005131, 23.607273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859505, 32.286049, 23.181086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489944, 32.285267, 23.334137>,  <31.268208, 32.284798, 23.425968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489944, 32.285267, 23.334137>,  <31.859505, 32.286049, 23.181086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489944, 32.285267, 23.334137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363457, -0.308120, -0.879182,
		0.119613, -0.951345, 0.283962,
		-0.923900, -0.001954, 0.382629,
		31.212774, 32.284679, 23.448925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632002, 31.666895, 22.864424>,  <31.859505, 32.286049, 23.181086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632002, 31.666895, 22.864424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299494, 31.852283, 22.987183>,  <31.099989, 31.963516, 23.060839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299494, 31.852283, 22.987183>,  <31.632002, 31.666895, 22.864424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299494, 31.852283, 22.987183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453669, -0.246630, -0.856363,
		-0.321210, -0.851098, 0.415278,
		-0.831270, 0.463471, 0.306898,
		31.050114, 31.991323, 23.079252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133196, 31.142748, 23.026060>,  <31.632002, 31.666895, 22.864424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133196, 31.142748, 23.026060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959814, 31.492954, 22.940657>,  <30.855785, 31.703079, 22.889414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959814, 31.492954, 22.940657>,  <31.133196, 31.142748, 23.026060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959814, 31.492954, 22.940657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335786, -0.376773, -0.863302,
		-0.836280, -0.302510, 0.457301,
		-0.433456, 0.875517, -0.213509,
		30.829777, 31.755610, 22.876604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411158, 30.973289, 22.861582>,  <31.133196, 31.142748, 23.026060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411158, 30.973289, 22.861582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500866, 31.317364, 22.678371>,  <30.554691, 31.523808, 22.568445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500866, 31.317364, 22.678371>,  <30.411158, 30.973289, 22.861582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500866, 31.317364, 22.678371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356471, -0.365015, -0.860054,
		-0.906990, 0.356157, 0.224769,
		0.224270, 0.860184, -0.458024,
		30.568148, 31.575418, 22.540964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959011, 30.909349, 22.357895>,  <30.411158, 30.973289, 22.861582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959011, 30.909349, 22.357895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176085, 31.216494, 22.221729>,  <30.306330, 31.400780, 22.140030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176085, 31.216494, 22.221729>,  <29.959011, 30.909349, 22.357895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176085, 31.216494, 22.221729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348952, -0.162540, -0.922937,
		-0.764019, 0.619653, 0.179739,
		0.542686, 0.767862, -0.340413,
		30.338890, 31.446852, 22.119606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473391, 31.314974, 21.869387>,  <29.959011, 30.909349, 22.357895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473391, 31.314974, 21.869387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853411, 31.422338, 21.805689>,  <30.081423, 31.486757, 21.767469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853411, 31.422338, 21.805689>,  <29.473391, 31.314974, 21.869387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853411, 31.422338, 21.805689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139268, -0.092020, -0.985970,
		-0.279298, 0.958899, -0.050042,
		0.950051, 0.268411, -0.159245,
		30.138426, 31.502861, 21.757915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418633, 31.700914, 21.345783>,  <29.473391, 31.314974, 21.869387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418633, 31.700914, 21.345783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802393, 31.588228, 21.351274>,  <30.032650, 31.520617, 21.354568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802393, 31.588228, 21.351274>,  <29.418633, 31.700914, 21.345783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802393, 31.588228, 21.351274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009431, -0.016597, -0.999818,
		0.281890, 0.959355, -0.013266,
		0.959400, -0.281713, 0.013726,
		30.090214, 31.503714, 21.355392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723145, 32.226967, 20.953222>,  <29.418633, 31.700914, 21.345783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723145, 32.226967, 20.953222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961027, 31.905657, 20.940104>,  <30.103758, 31.712872, 20.932232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961027, 31.905657, 20.940104>,  <29.723145, 32.226967, 20.953222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961027, 31.905657, 20.940104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025780, 0.021720, -0.999431,
		0.803529, 0.595215, -0.007791,
		0.594707, -0.803273, -0.032798,
		30.139439, 31.664675, 20.930264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350124, 32.433506, 20.502783>,  <29.723145, 32.226967, 20.953222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350124, 32.433506, 20.502783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331753, 32.034180, 20.516949>,  <30.320730, 31.794584, 20.525448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331753, 32.034180, 20.516949>,  <30.350124, 32.433506, 20.502783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331753, 32.034180, 20.516949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252252, -0.022713, -0.967395,
		0.966571, -0.053365, -0.250784,
		-0.045929, -0.998317, 0.035416,
		30.317974, 31.734684, 20.527573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832170, 32.304817, 20.059822>,  <30.350124, 32.433506, 20.502783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832170, 32.304817, 20.059822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587265, 31.989250, 20.080793>,  <30.440323, 31.799911, 20.093376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587265, 31.989250, 20.080793>,  <30.832170, 32.304817, 20.059822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587265, 31.989250, 20.080793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203158, 0.092892, -0.974730,
		0.764109, -0.607440, -0.217149,
		-0.612262, -0.788915, 0.052426,
		30.403587, 31.752575, 20.096521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014614, 31.836397, 19.476442>,  <30.832170, 32.304817, 20.059822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014614, 31.836397, 19.476442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642189, 31.762939, 19.602552>,  <30.418734, 31.718864, 19.678219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642189, 31.762939, 19.602552>,  <31.014614, 31.836397, 19.476442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642189, 31.762939, 19.602552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341873, 0.137225, -0.929673,
		0.127441, -0.973372, -0.190539,
		-0.931065, -0.183619, 0.315282,
		30.362871, 31.707848, 19.697136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756382, 31.498039, 18.954454>,  <31.014614, 31.836397, 19.476442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756382, 31.498039, 18.954454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425106, 31.593525, 19.157280>,  <30.226339, 31.650816, 19.278975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425106, 31.593525, 19.157280>,  <30.756382, 31.498039, 18.954454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425106, 31.593525, 19.157280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461900, 0.221672, -0.858784,
		-0.317408, -0.945450, -0.073324,
		-0.828191, 0.238716, 0.507064,
		30.176649, 31.665140, 19.309399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260637, 31.161304, 18.618465>,  <30.756382, 31.498039, 18.954454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260637, 31.161304, 18.618465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097914, 31.472551, 18.809896>,  <30.000278, 31.659300, 18.924755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097914, 31.472551, 18.809896>,  <30.260637, 31.161304, 18.618465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097914, 31.472551, 18.809896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422217, 0.304416, -0.853852,
		-0.810085, -0.549419, 0.204696,
		-0.406810, 0.778120, 0.478577,
		29.975870, 31.705988, 18.953470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594400, 31.112835, 18.436474>,  <30.260637, 31.161304, 18.618465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594400, 31.112835, 18.436474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613894, 31.500402, 18.533485>,  <29.625589, 31.732943, 18.591692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613894, 31.500402, 18.533485>,  <29.594400, 31.112835, 18.436474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613894, 31.500402, 18.533485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372834, 0.242913, -0.895538,
		-0.926618, -0.046782, 0.373083,
		0.048732, 0.968919, 0.242529,
		29.628513, 31.791079, 18.606245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210733, 31.365723, 17.958570>,  <29.594400, 31.112835, 18.436474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210733, 31.365723, 17.958570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336090, 31.714764, 18.108423>,  <29.411304, 31.924189, 18.198336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336090, 31.714764, 18.108423>,  <29.210733, 31.365723, 17.958570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336090, 31.714764, 18.108423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271159, 0.460310, -0.845333,
		-0.910088, 0.163334, 0.380870,
		0.313390, 0.872604, 0.374633,
		29.430107, 31.976545, 18.220814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595270, 31.902067, 17.842144>,  <29.210733, 31.365723, 17.958570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595270, 31.902067, 17.842144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938137, 32.102707, 17.888899>,  <29.143856, 32.223091, 17.916952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938137, 32.102707, 17.888899>,  <28.595270, 31.902067, 17.842144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938137, 32.102707, 17.888899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246754, 0.599158, -0.761658,
		-0.452084, 0.624024, 0.637349,
		0.857165, 0.501602, 0.116889,
		29.195286, 32.253189, 17.923965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531231, 32.724873, 17.873981>,  <28.595270, 31.902067, 17.842144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531231, 32.724873, 17.873981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867950, 32.594570, 17.701815>,  <29.069983, 32.516388, 17.598515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867950, 32.594570, 17.701815>,  <28.531231, 32.724873, 17.873981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867950, 32.594570, 17.701815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121991, 0.661939, -0.739564,
		0.525827, 0.675071, 0.517479,
		0.841798, -0.325756, -0.430418,
		29.120489, 32.496845, 17.572689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019983, 33.278332, 17.767723>,  <28.531231, 32.724873, 17.873981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019983, 33.278332, 17.767723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042185, 32.997700, 17.483551>,  <29.055506, 32.829323, 17.313047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042185, 32.997700, 17.483551>,  <29.019983, 33.278332, 17.767723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042185, 32.997700, 17.483551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107524, 0.703187, -0.702827,
		0.992652, 0.115396, -0.036409,
		0.055501, -0.701578, -0.710428,
		29.058836, 32.787228, 17.270422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674559, 33.386650, 17.367792>,  <29.019983, 33.278332, 17.767723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674559, 33.386650, 17.367792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329157, 33.258892, 17.211664>,  <29.121916, 33.182240, 17.117987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329157, 33.258892, 17.211664>,  <29.674559, 33.386650, 17.367792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329157, 33.258892, 17.211664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057835, 0.831523, -0.552471,
		0.501017, -0.454486, -0.736495,
		-0.863503, -0.319393, -0.390322,
		29.070107, 33.163074, 17.094568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736330, 33.597664, 16.621790>,  <29.674559, 33.386650, 17.367792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736330, 33.597664, 16.621790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346592, 33.570915, 16.707748>,  <29.112749, 33.554867, 16.759323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346592, 33.570915, 16.707748>,  <29.736330, 33.597664, 16.621790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346592, 33.570915, 16.707748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146214, 0.913977, -0.378508,
		-0.171098, -0.400218, -0.900306,
		-0.974344, -0.066875, 0.214897,
		29.054289, 33.550854, 16.772217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403879, 33.645134, 16.021925>,  <29.736330, 33.597664, 16.621790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403879, 33.645134, 16.021925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202480, 33.779099, 16.340504>,  <29.081640, 33.859478, 16.531651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202480, 33.779099, 16.340504>,  <29.403879, 33.645134, 16.021925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202480, 33.779099, 16.340504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146112, 0.941544, -0.303555,
		-0.851553, -0.036469, -0.522999,
		-0.503497, 0.334910, 0.796446,
		29.051432, 33.879570, 16.579437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074062, 33.809559, 15.927254>,  <29.403879, 33.645134, 16.021925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074062, 33.809559, 15.927254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160042, 34.131443, 16.148609>,  <30.211630, 34.324574, 16.281422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160042, 34.131443, 16.148609>,  <30.074062, 33.809559, 15.927254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160042, 34.131443, 16.148609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190384, -0.521235, 0.831906,
		0.957889, -0.284174, 0.041164,
		0.214950, 0.804710, 0.553388,
		30.224527, 34.372856, 16.314625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687073, 33.668743, 16.317463>,  <30.074062, 33.809559, 15.927254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687073, 33.668743, 16.317463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415668, 33.902191, 16.495903>,  <30.252825, 34.042259, 16.602966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415668, 33.902191, 16.495903>,  <30.687073, 33.668743, 16.317463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415668, 33.902191, 16.495903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093468, -0.670931, 0.735606,
		0.728618, 0.457422, 0.509785,
		-0.678513, 0.583624, 0.446098,
		30.212114, 34.077278, 16.629732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836115, 33.750362, 17.049299>,  <30.687073, 33.668743, 16.317463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836115, 33.750362, 17.049299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447102, 33.841442, 17.029987>,  <30.213694, 33.896088, 17.018400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447102, 33.841442, 17.029987>,  <30.836115, 33.750362, 17.049299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447102, 33.841442, 17.029987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172072, -0.563651, 0.807891,
		0.156741, 0.794010, 0.587350,
		-0.972534, 0.227697, -0.048279,
		30.155342, 33.909752, 17.015503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167238, 34.459564, 17.067719>,  <30.836115, 33.750362, 17.049299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167238, 34.459564, 17.067719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002607, 34.823334, 17.091536>,  <30.903828, 35.041595, 17.105825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002607, 34.823334, 17.091536>,  <31.167238, 34.459564, 17.067719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002607, 34.823334, 17.091536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245998, 0.047950, 0.968084,
		0.877547, 0.413089, -0.243452,
		-0.411578, 0.909427, 0.059541,
		30.879133, 35.096161, 17.109398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646830, 34.737492, 17.615141>,  <31.167238, 34.459564, 17.067719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646830, 34.737492, 17.615141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446768, 34.394444, 17.663025>,  <31.326731, 34.188614, 17.691755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446768, 34.394444, 17.663025>,  <31.646830, 34.737492, 17.615141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446768, 34.394444, 17.663025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363163, -0.082248, 0.928088,
		-0.786103, 0.507662, 0.352593,
		-0.500155, -0.857621, 0.119708,
		31.296721, 34.137157, 17.698936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347071, 34.846668, 18.178242>,  <31.646830, 34.737492, 17.615141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347071, 34.846668, 18.178242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379744, 34.448734, 18.154116>,  <31.399347, 34.209976, 18.139641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379744, 34.448734, 18.154116>,  <31.347071, 34.846668, 18.178242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379744, 34.448734, 18.154116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194474, -0.043444, 0.979945,
		-0.977501, -0.091775, 0.189920,
		0.081683, -0.994832, -0.060314,
		31.404249, 34.150284, 18.136021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143343, 34.677212, 18.728052>,  <31.347071, 34.846668, 18.178242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143343, 34.677212, 18.728052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324862, 34.337170, 18.621174>,  <31.433773, 34.133144, 18.557047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324862, 34.337170, 18.621174>,  <31.143343, 34.677212, 18.728052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324862, 34.337170, 18.621174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195803, -0.197397, 0.960570,
		-0.869327, -0.488222, 0.076874,
		0.453797, -0.850102, -0.267197,
		31.461000, 34.082138, 18.541014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903927, 34.136753, 19.228882>,  <31.143343, 34.677212, 18.728052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903927, 34.136753, 19.228882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249634, 34.034031, 19.055864>,  <31.457058, 33.972397, 18.952053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249634, 34.034031, 19.055864>,  <30.903927, 34.136753, 19.228882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249634, 34.034031, 19.055864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383489, -0.220108, 0.896933,
		-0.325544, -0.941065, -0.091750,
		0.864267, -0.256806, -0.432543,
		31.508915, 33.956989, 18.926102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134096, 33.490894, 19.577312>,  <30.903927, 34.136753, 19.228882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134096, 33.490894, 19.577312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464197, 33.649273, 19.416222>,  <31.662258, 33.744301, 19.319567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464197, 33.649273, 19.416222>,  <31.134096, 33.490894, 19.577312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464197, 33.649273, 19.416222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483631, -0.127201, 0.865980,
		0.291652, -0.909422, -0.296463,
		0.825252, 0.395943, -0.402726,
		31.711773, 33.768055, 19.295404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563078, 33.065964, 19.750547>,  <31.134096, 33.490894, 19.577312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563078, 33.065964, 19.750547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740910, 33.420319, 19.697542>,  <31.847609, 33.632931, 19.665739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740910, 33.420319, 19.697542>,  <31.563078, 33.065964, 19.750547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740910, 33.420319, 19.697542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585854, -0.175667, 0.791149,
		0.677588, -0.429360, -0.597097,
		0.444578, 0.885884, -0.132512,
		31.874283, 33.686085, 19.657789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176552, 32.855644, 19.892548>,  <31.563078, 33.065964, 19.750547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176552, 32.855644, 19.892548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181488, 33.255157, 19.911654>,  <32.184448, 33.494865, 19.923117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181488, 33.255157, 19.911654>,  <32.176552, 32.855644, 19.892548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181488, 33.255157, 19.911654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467486, -0.047986, 0.882697,
		0.883914, 0.011439, -0.467509,
		0.012337, 0.998783, 0.047763,
		32.185188, 33.554790, 19.925983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834774, 33.055656, 20.112728>,  <32.176552, 32.855644, 19.892548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834774, 33.055656, 20.112728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644463, 33.395779, 20.202719>,  <32.530273, 33.599854, 20.256712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644463, 33.395779, 20.202719>,  <32.834774, 33.055656, 20.112728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644463, 33.395779, 20.202719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414328, -0.008957, 0.910083,
		0.775863, 0.526215, -0.348044,
		-0.475782, 0.850304, 0.224975,
		32.501728, 33.650871, 20.270212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347408, 33.445900, 20.499981>,  <32.834774, 33.055656, 20.112728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347408, 33.445900, 20.499981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989319, 33.602066, 20.585909>,  <32.774464, 33.695766, 20.637466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989319, 33.602066, 20.585909>,  <33.347408, 33.445900, 20.499981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989319, 33.602066, 20.585909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340293, 0.287705, 0.895224,
		0.287705, 0.874529, -0.390416,
		-0.895224, 0.390416, 0.214822,
		32.720753, 33.719193, 20.650356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410698, 34.191486, 20.762947>,  <33.347408, 33.445900, 20.499981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410698, 34.191486, 20.762947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073067, 34.030640, 20.904839>,  <32.870487, 33.934132, 20.989973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073067, 34.030640, 20.904839>,  <33.410698, 34.191486, 20.762947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073067, 34.030640, 20.904839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281672, 0.230413, 0.931435,
		-0.456276, 0.886124, -0.081223,
		-0.844082, -0.402113, 0.354728,
		32.819843, 33.910007, 21.011257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290337, 34.609673, 21.297159>,  <33.410698, 34.191486, 20.762947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290337, 34.609673, 21.297159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044495, 34.304855, 21.378695>,  <32.896988, 34.121964, 21.427616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044495, 34.304855, 21.378695>,  <33.290337, 34.609673, 21.297159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044495, 34.304855, 21.378695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090411, 0.188652, 0.977873,
		-0.783635, 0.619437, -0.047050,
		-0.614607, -0.762042, 0.203838,
		32.860111, 34.076244, 21.439846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681843, 34.840996, 21.663942>,  <33.290337, 34.609673, 21.297159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681843, 34.840996, 21.663942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733040, 34.455708, 21.758455>,  <32.763756, 34.224537, 21.815163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733040, 34.455708, 21.758455>,  <32.681843, 34.840996, 21.663942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733040, 34.455708, 21.758455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117740, 0.221802, 0.967957,
		-0.984762, -0.151707, -0.085022,
		0.127988, -0.963218, 0.236284,
		32.771435, 34.166740, 21.829340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469112, 34.871418, 22.306042>,  <32.681843, 34.840996, 21.663942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469112, 34.871418, 22.306042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640594, 34.510201, 22.295315>,  <32.743484, 34.293468, 22.288879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640594, 34.510201, 22.295315>,  <32.469112, 34.871418, 22.306042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640594, 34.510201, 22.295315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240690, 0.085552, 0.966824,
		-0.870792, -0.420938, 0.254031,
		0.428706, -0.903046, -0.026818,
		32.769207, 34.239288, 22.287270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302696, 34.560112, 22.876352>,  <32.469112, 34.871418, 22.306042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302696, 34.560112, 22.876352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641102, 34.381794, 22.759369>,  <32.844143, 34.274803, 22.689178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641102, 34.381794, 22.759369>,  <32.302696, 34.560112, 22.876352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641102, 34.381794, 22.759369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388805, 0.140508, 0.910543,
		-0.364823, -0.884038, 0.292199,
		0.846011, -0.445796, -0.292458,
		32.894905, 34.248055, 22.671631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444809, 34.158867, 23.421185>,  <32.302696, 34.560112, 22.876352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444809, 34.158867, 23.421185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789852, 34.217896, 23.227636>,  <32.996880, 34.253311, 23.111507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789852, 34.217896, 23.227636>,  <32.444809, 34.158867, 23.421185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789852, 34.217896, 23.227636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494526, -0.044538, 0.868021,
		0.106543, -0.988048, -0.111396,
		0.862608, 0.147569, -0.483871,
		33.048634, 34.262165, 23.082476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873528, 33.599079, 23.785767>,  <32.444809, 34.158867, 23.421185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873528, 33.599079, 23.785767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090702, 33.877064, 23.597193>,  <33.221008, 34.043854, 23.484049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090702, 33.877064, 23.597193>,  <32.873528, 33.599079, 23.785767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090702, 33.877064, 23.597193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737081, -0.125366, 0.664074,
		0.402402, -0.708037, -0.580307,
		0.542940, 0.694958, -0.471433,
		33.253586, 34.085552, 23.455763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525169, 33.442688, 23.992485>,  <32.873528, 33.599079, 23.785767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525169, 33.442688, 23.992485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590721, 33.812740, 23.855499>,  <33.630051, 34.034771, 23.773308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590721, 33.812740, 23.855499>,  <33.525169, 33.442688, 23.992485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590721, 33.812740, 23.855499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791985, 0.083588, 0.604791,
		0.588135, -0.370338, -0.718990,
		0.163878, 0.925128, -0.342463,
		33.639885, 34.090279, 23.752760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239124, 33.485569, 24.080317>,  <33.525169, 33.442688, 23.992485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239124, 33.485569, 24.080317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096050, 33.858574, 24.060389>,  <34.010204, 34.082378, 24.048431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096050, 33.858574, 24.060389>,  <34.239124, 33.485569, 24.080317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096050, 33.858574, 24.060389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661217, 0.290576, 0.691634,
		0.659433, 0.214447, -0.720528,
		-0.357687, 0.932512, -0.049819,
		33.988743, 34.138329, 24.045443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802837, 33.865231, 23.868299>,  <34.239124, 33.485569, 24.080317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802837, 33.865231, 23.868299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541336, 34.110153, 24.046144>,  <34.384434, 34.257107, 24.152851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541336, 34.110153, 24.046144>,  <34.802837, 33.865231, 23.868299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541336, 34.110153, 24.046144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709413, 0.291490, 0.641690,
		0.263312, 0.734924, -0.624944,
		-0.653758, 0.612308, 0.444612,
		34.345207, 34.293846, 24.179527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129513, 34.395824, 24.241350>,  <34.802837, 33.865231, 23.868299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129513, 34.395824, 24.241350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775249, 34.429878, 24.423937>,  <34.562691, 34.450310, 24.533489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775249, 34.429878, 24.423937>,  <35.129513, 34.395824, 24.241350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775249, 34.429878, 24.423937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441064, 0.461549, 0.769698,
		-0.145155, 0.883020, -0.446324,
		-0.885659, 0.085132, 0.456465,
		34.509552, 34.455418, 24.560877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241566, 35.011204, 24.619150>,  <35.129513, 34.395824, 24.241350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241566, 35.011204, 24.619150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920258, 34.827675, 24.771070>,  <34.727474, 34.717560, 24.862223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920258, 34.827675, 24.771070>,  <35.241566, 35.011204, 24.619150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920258, 34.827675, 24.771070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184943, 0.414004, 0.891289,
		-0.566178, 0.786185, -0.247701,
		-0.803267, -0.458818, 0.379799,
		34.679276, 34.690029, 24.885010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898098, 35.489746, 25.010368>,  <35.241566, 35.011204, 24.619150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898098, 35.489746, 25.010368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719666, 35.163548, 25.157873>,  <34.612606, 34.967831, 25.246376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719666, 35.163548, 25.157873>,  <34.898098, 35.489746, 25.010368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719666, 35.163548, 25.157873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061324, 0.438911, 0.896435,
		-0.892890, 0.377266, -0.245798,
		-0.446078, -0.815492, 0.368764,
		34.585842, 34.918900, 25.268503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194889, 35.652267, 25.191973>,  <34.898098, 35.489746, 25.010368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194889, 35.652267, 25.191973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353951, 35.356491, 25.409266>,  <34.449387, 35.179028, 25.539640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353951, 35.356491, 25.409266>,  <34.194889, 35.652267, 25.191973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353951, 35.356491, 25.409266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167410, 0.523645, 0.835326,
		-0.902132, -0.423116, 0.084442,
		0.397657, -0.739438, 0.543231,
		34.473248, 35.134659, 25.572235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685684, 35.525890, 25.784800>,  <34.194889, 35.652267, 25.191973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685684, 35.525890, 25.784800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028542, 35.364056, 25.912310>,  <34.234257, 35.266956, 25.988815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028542, 35.364056, 25.912310>,  <33.685684, 35.525890, 25.784800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028542, 35.364056, 25.912310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119924, 0.445121, 0.887404,
		-0.500922, -0.798861, 0.333013,
		0.857144, -0.404585, 0.318774,
		34.285686, 35.242680, 26.007942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573841, 35.475456, 26.573429>,  <33.685684, 35.525890, 25.784800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573841, 35.475456, 26.573429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960186, 35.394829, 26.508343>,  <34.191994, 35.346455, 26.469292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960186, 35.394829, 26.508343>,  <33.573841, 35.475456, 26.573429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960186, 35.394829, 26.508343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180488, 0.073054, 0.980861,
		-0.185819, -0.976747, 0.106940,
		0.965865, -0.201564, -0.162716,
		34.249947, 35.334358, 26.459528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720272, 34.969341, 27.073473>,  <33.573841, 35.475456, 26.573429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720272, 34.969341, 27.073473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049049, 35.151199, 26.936239>,  <34.246315, 35.260315, 26.853899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049049, 35.151199, 26.936239>,  <33.720272, 34.969341, 27.073473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049049, 35.151199, 26.936239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353228, 0.065638, 0.933232,
		0.446812, -0.888249, -0.106644,
		0.821943, 0.454648, -0.343082,
		34.295631, 35.287594, 26.833315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279476, 34.576687, 27.452658>,  <33.720272, 34.969341, 27.073473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279476, 34.576687, 27.452658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369022, 34.942730, 27.318520>,  <34.422752, 35.162357, 27.238037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369022, 34.942730, 27.318520>,  <34.279476, 34.576687, 27.452658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369022, 34.942730, 27.318520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223231, 0.286785, 0.931623,
		0.948710, -0.283421, -0.140079,
		0.223869, 0.915110, -0.335344,
		34.436184, 35.217262, 27.217916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782890, 34.741875, 27.869030>,  <34.279476, 34.576687, 27.452658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782890, 34.741875, 27.869030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717262, 35.107334, 27.720266>,  <34.677883, 35.326611, 27.631008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717262, 35.107334, 27.720266>,  <34.782890, 34.741875, 27.869030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717262, 35.107334, 27.720266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177628, 0.398222, 0.899927,
		0.970324, 0.081591, -0.227627,
		-0.164072, 0.913653, -0.371911,
		34.668041, 35.381432, 27.608692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286346, 35.161907, 28.164787>,  <34.782890, 34.741875, 27.869030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286346, 35.161907, 28.164787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036289, 35.444843, 28.032803>,  <34.886253, 35.614605, 27.953611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036289, 35.444843, 28.032803>,  <35.286346, 35.161907, 28.164787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036289, 35.444843, 28.032803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224720, 0.567961, 0.791784,
		0.747462, 0.420828, -0.514009,
		-0.625142, 0.707336, -0.329960,
		34.848747, 35.657043, 27.933815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707859, 35.812717, 28.285378>,  <35.286346, 35.161907, 28.164787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707859, 35.812717, 28.285378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318199, 35.902382, 28.274187>,  <35.084404, 35.956181, 28.267473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318199, 35.902382, 28.274187>,  <35.707859, 35.812717, 28.285378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318199, 35.902382, 28.274187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099983, 0.538879, 0.836428,
		0.202571, 0.812010, -0.547362,
		-0.974150, 0.224163, -0.027974,
		35.025955, 35.969631, 28.265795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605198, 36.515530, 28.304531>,  <35.707859, 35.812717, 28.285378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605198, 36.515530, 28.304531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254578, 36.363110, 28.422144>,  <35.044205, 36.271656, 28.492712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254578, 36.363110, 28.422144>,  <35.605198, 36.515530, 28.304531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254578, 36.363110, 28.422144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003529, 0.605800, 0.795609,
		-0.481295, 0.698430, -0.529670,
		-0.876551, -0.381054, 0.294033,
		34.991611, 36.248795, 28.510353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281410, 37.093044, 28.564108>,  <35.605198, 36.515530, 28.304531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281410, 37.093044, 28.564108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114376, 36.768559, 28.727839>,  <35.014156, 36.573868, 28.826077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114376, 36.768559, 28.727839>,  <35.281410, 37.093044, 28.564108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114376, 36.768559, 28.727839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062221, 0.423899, 0.903570,
		-0.906506, 0.402785, -0.126539,
		-0.417584, -0.811218, 0.409328,
		34.989101, 36.525192, 28.850637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830975, 37.468330, 29.058752>,  <35.281410, 37.093044, 28.564108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830975, 37.468330, 29.058752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870125, 37.083286, 29.159794>,  <34.893616, 36.852261, 29.220419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870125, 37.083286, 29.159794>,  <34.830975, 37.468330, 29.058752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870125, 37.083286, 29.159794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009106, 0.254677, 0.966983,
		-0.995157, -0.092345, 0.033692,
		0.097876, -0.962607, 0.252603,
		34.899487, 36.794506, 29.235575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373112, 37.346191, 29.659729>,  <34.830975, 37.468330, 29.058752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373112, 37.346191, 29.659729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623634, 37.034718, 29.674639>,  <34.773949, 36.847832, 29.683584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623634, 37.034718, 29.674639>,  <34.373112, 37.346191, 29.659729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623634, 37.034718, 29.674639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127550, 0.149527, 0.980496,
		-0.769072, -0.609336, 0.192971,
		0.626306, -0.778686, 0.037276,
		34.811527, 36.801113, 29.685822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265724, 36.971375, 30.267893>,  <34.373112, 37.346191, 29.659729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265724, 36.971375, 30.267893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619976, 36.801907, 30.191826>,  <34.832527, 36.700226, 30.146185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619976, 36.801907, 30.191826>,  <34.265724, 36.971375, 30.267893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619976, 36.801907, 30.191826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292507, 0.190864, 0.937022,
		-0.360688, -0.885482, 0.292960,
		0.885632, -0.423666, -0.190167,
		34.885666, 36.674809, 30.134775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503269, 36.569538, 30.851858>,  <34.265724, 36.971375, 30.267893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503269, 36.569538, 30.851858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842979, 36.676010, 30.669485>,  <35.046806, 36.739895, 30.560062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842979, 36.676010, 30.669485>,  <34.503269, 36.569538, 30.851858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842979, 36.676010, 30.669485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453474, 0.074432, 0.888156,
		0.270348, -0.961044, -0.057493,
		0.849278, 0.266183, -0.455932,
		35.097763, 36.755863, 30.532705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005066, 36.247421, 31.195210>,  <34.503269, 36.569538, 30.851858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005066, 36.247421, 31.195210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190910, 36.532555, 30.985064>,  <35.302418, 36.703632, 30.858976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190910, 36.532555, 30.985064>,  <35.005066, 36.247421, 31.195210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190910, 36.532555, 30.985064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567094, 0.216144, 0.794787,
		0.680103, -0.667199, -0.303818,
		0.464613, 0.712830, -0.525365,
		35.330296, 36.746403, 30.827454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747078, 36.191265, 31.435072>,  <35.005066, 36.247421, 31.195210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747078, 36.191265, 31.435072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695385, 36.553265, 31.272947>,  <35.664368, 36.770466, 31.175673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695385, 36.553265, 31.272947>,  <35.747078, 36.191265, 31.435072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695385, 36.553265, 31.272947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591938, 0.398333, 0.700672,
		0.795556, -0.149369, -0.587180,
		-0.129234, 0.904997, -0.405313,
		35.656616, 36.824764, 31.151354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461773, 36.468891, 31.453083>,  <35.747078, 36.191265, 31.435072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461773, 36.468891, 31.453083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208363, 36.772415, 31.392624>,  <36.056316, 36.954529, 31.356348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208363, 36.772415, 31.392624>,  <36.461773, 36.468891, 31.453083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208363, 36.772415, 31.392624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661272, 0.632448, 0.403396,
		0.401696, 0.155612, -0.902455,
		-0.633529, 0.758811, -0.151150,
		36.018303, 37.000057, 31.347279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069519, 36.427322, 31.054409>,  <36.461773, 36.468891, 31.453083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069519, 36.427322, 31.054409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378548, 36.197144, 30.947081>,  <37.563965, 36.059036, 30.882683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378548, 36.197144, 30.947081>,  <37.069519, 36.427322, 31.054409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378548, 36.197144, 30.947081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041157, 0.467102, -0.883245,
		0.633594, 0.671326, 0.384553,
		0.772571, -0.575445, -0.268323,
		37.610317, 36.024509, 30.866583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554268, 36.950512, 30.697084>,  <37.069519, 36.427322, 31.054409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554268, 36.950512, 30.697084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651096, 36.577255, 30.590769>,  <37.709194, 36.353302, 30.526979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651096, 36.577255, 30.590769>,  <37.554268, 36.950512, 30.697084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651096, 36.577255, 30.590769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042490, 0.263479, -0.963729,
		0.969328, 0.244584, 0.024131,
		0.242071, -0.933144, -0.265790,
		37.723717, 36.297314, 30.511032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151188, 36.964935, 30.184975>,  <37.554268, 36.950512, 30.697084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151188, 36.964935, 30.184975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973164, 36.611732, 30.125359>,  <37.866348, 36.399811, 30.089590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973164, 36.611732, 30.125359>,  <38.151188, 36.964935, 30.184975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973164, 36.611732, 30.125359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225859, 0.050364, -0.972857,
		0.866548, -0.466646, 0.177020,
		-0.445064, -0.883009, -0.149039,
		37.839645, 36.346828, 30.080647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403492, 36.869827, 29.556707>,  <38.151188, 36.964935, 30.184975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403492, 36.869827, 29.556707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129208, 36.579109, 29.572533>,  <37.964638, 36.404678, 29.582027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129208, 36.579109, 29.572533>,  <38.403492, 36.869827, 29.556707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129208, 36.579109, 29.572533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110815, -0.157965, -0.981207,
		0.719388, -0.668441, 0.188859,
		-0.685712, -0.726796, 0.039564,
		37.923492, 36.361069, 29.584402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669327, 36.321735, 29.177546>,  <38.403492, 36.869827, 29.556707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669327, 36.321735, 29.177546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274193, 36.260757, 29.189837>,  <38.037113, 36.224171, 29.197210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274193, 36.260757, 29.189837>,  <38.669327, 36.321735, 29.177546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274193, 36.260757, 29.189837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012817, -0.117110, -0.993036,
		0.154980, -0.981349, 0.113732,
		-0.987835, -0.152443, 0.030728,
		37.977844, 36.215023, 29.199055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600639, 35.757656, 28.789938>,  <38.669327, 36.321735, 29.177546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600639, 35.757656, 28.789938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256115, 35.960449, 28.776541>,  <38.049400, 36.082123, 28.768501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256115, 35.960449, 28.776541>,  <38.600639, 35.757656, 28.789938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256115, 35.960449, 28.776541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022349, -0.028056, -0.999357,
		-0.507594, -0.861501, 0.012835,
		-0.861307, 0.506980, -0.033495,
		37.997723, 36.112545, 28.766493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297829, 35.372723, 28.285078>,  <38.600639, 35.757656, 28.789938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297829, 35.372723, 28.285078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108456, 35.722912, 28.323885>,  <37.994831, 35.933025, 28.347170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108456, 35.722912, 28.323885>,  <38.297829, 35.372723, 28.285078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108456, 35.722912, 28.323885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119630, 0.045217, -0.991788,
		-0.872670, -0.481148, 0.083326,
		-0.473429, 0.875473, 0.097020,
		37.966427, 35.985554, 28.352991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693951, 35.175068, 27.822340>,  <38.297829, 35.372723, 28.285078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693951, 35.175068, 27.822340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716438, 35.574154, 27.837320>,  <37.729931, 35.813606, 27.846308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716438, 35.574154, 27.837320>,  <37.693951, 35.175068, 27.822340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716438, 35.574154, 27.837320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259686, 0.050833, -0.964354,
		-0.964055, 0.044494, 0.261951,
		0.056224, 0.997716, 0.037451,
		37.733307, 35.873470, 27.848557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099026, 35.399982, 27.539726>,  <37.693951, 35.175068, 27.822340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099026, 35.399982, 27.539726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357662, 35.702309, 27.498440>,  <37.512844, 35.883705, 27.473667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357662, 35.702309, 27.498440>,  <37.099026, 35.399982, 27.539726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357662, 35.702309, 27.498440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276152, 0.105791, -0.955274,
		-0.711094, 0.646179, 0.277125,
		0.646595, 0.755818, -0.103216,
		37.551640, 35.929054, 27.467476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815544, 35.855042, 27.017691>,  <37.099026, 35.399982, 27.539726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815544, 35.855042, 27.017691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211330, 35.912891, 27.020212>,  <37.448803, 35.947601, 27.021725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211330, 35.912891, 27.020212>,  <36.815544, 35.855042, 27.017691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211330, 35.912891, 27.020212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006869, -0.003417, -0.999971,
		-0.144598, 0.989481, -0.004375,
		0.989467, 0.144624, 0.006302,
		37.508171, 35.956280, 27.022102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825096, 36.462765, 26.537683>,  <36.815544, 35.855042, 27.017691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825096, 36.462765, 26.537683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196323, 36.318295, 26.573982>,  <37.419060, 36.231613, 26.595762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196323, 36.318295, 26.573982>,  <36.825096, 36.462765, 26.537683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196323, 36.318295, 26.573982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094294, -0.007831, -0.995514,
		0.360268, 0.932464, 0.026789,
		0.928071, -0.361177, 0.090747,
		37.474743, 36.209942, 26.601206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129669, 36.724331, 25.939243>,  <36.825096, 36.462765, 26.537683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129669, 36.724331, 25.939243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357536, 36.417809, 26.058077>,  <37.494255, 36.233894, 26.129377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357536, 36.417809, 26.058077>,  <37.129669, 36.724331, 25.939243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357536, 36.417809, 26.058077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022939, -0.376152, -0.926274,
		0.821557, 0.520850, -0.231859,
		0.569664, -0.766306, 0.297083,
		37.528435, 36.187916, 26.147202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706665, 36.738918, 25.545938>,  <37.129669, 36.724331, 25.939243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706665, 36.738918, 25.545938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672939, 36.364025, 25.681286>,  <37.652706, 36.139091, 25.762493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672939, 36.364025, 25.681286>,  <37.706665, 36.738918, 25.545938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672939, 36.364025, 25.681286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105457, -0.346062, -0.932266,
		0.990843, -0.042916, 0.128014,
		-0.084310, -0.937230, 0.338367,
		37.647648, 36.082855, 25.782797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069088, 36.379471, 25.097006>,  <37.706665, 36.738918, 25.545938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069088, 36.379471, 25.097006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856613, 36.083702, 25.262461>,  <37.729126, 35.906242, 25.361732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856613, 36.083702, 25.262461>,  <38.069088, 36.379471, 25.097006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856613, 36.083702, 25.262461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057879, -0.455398, -0.888404,
		0.845273, -0.495853, 0.199106,
		-0.531191, -0.739420, 0.413635,
		37.697254, 35.861877, 25.386551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181232, 35.849136, 24.644985>,  <38.069088, 36.379471, 25.097006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181232, 35.849136, 24.644985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880772, 35.703049, 24.864944>,  <37.700497, 35.615395, 24.996920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880772, 35.703049, 24.864944>,  <38.181232, 35.849136, 24.644985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880772, 35.703049, 24.864944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236494, -0.628840, -0.740696,
		0.616316, -0.686421, 0.385981,
		-0.751150, -0.365220, 0.549899,
		37.655426, 35.593483, 25.029915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297199, 35.110069, 24.697475>,  <38.181232, 35.849136, 24.644985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297199, 35.110069, 24.697475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917789, 35.230606, 24.736460>,  <37.690144, 35.302929, 24.759851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917789, 35.230606, 24.736460>,  <38.297199, 35.110069, 24.697475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917789, 35.230606, 24.736460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245723, -0.506071, -0.826748,
		-0.199807, -0.808139, 0.554066,
		-0.948524, 0.301337, 0.097462,
		37.633232, 35.321007, 24.765697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903751, 34.509384, 24.523460>,  <38.297199, 35.110069, 24.697475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903751, 34.509384, 24.523460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644936, 34.813862, 24.505943>,  <37.489647, 34.996548, 24.495432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644936, 34.813862, 24.505943>,  <37.903751, 34.509384, 24.523460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644936, 34.813862, 24.505943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447627, -0.425743, -0.786367,
		-0.617223, -0.489210, 0.616205,
		-0.647044, 0.761194, -0.043794,
		37.450821, 35.042221, 24.492805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358173, 34.075668, 24.384365>,  <37.903751, 34.509384, 24.523460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358173, 34.075668, 24.384365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251369, 34.442719, 24.266611>,  <37.187286, 34.662949, 24.195959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251369, 34.442719, 24.266611>,  <37.358173, 34.075668, 24.384365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251369, 34.442719, 24.266611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406004, -0.384158, -0.829207,
		-0.873994, -0.101885, 0.475135,
		-0.267011, 0.917629, -0.294386,
		37.171265, 34.718006, 24.178295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530220, 34.168079, 24.412670>,  <37.358173, 34.075668, 24.384365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530220, 34.168079, 24.412670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681107, 34.442642, 24.163979>,  <36.771637, 34.607380, 24.014763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681107, 34.442642, 24.163979>,  <36.530220, 34.168079, 24.412670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681107, 34.442642, 24.163979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534452, -0.386920, -0.751435,
		-0.756352, 0.615739, 0.220900,
		0.377217, 0.686410, -0.621730,
		36.794273, 34.648567, 23.977459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913052, 34.464905, 24.059399>,  <36.530220, 34.168079, 24.412670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913052, 34.464905, 24.059399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239807, 34.550934, 23.845322>,  <36.435860, 34.602551, 23.716875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239807, 34.550934, 23.845322>,  <35.913052, 34.464905, 24.059399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239807, 34.550934, 23.845322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514081, -0.149265, -0.844654,
		-0.261547, 0.965124, -0.011369,
		0.816893, 0.215072, -0.535191,
		36.484875, 34.615456, 23.684765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750809, 34.930595, 23.598003>,  <35.913052, 34.464905, 24.059399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750809, 34.930595, 23.598003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059250, 34.760021, 23.408875>,  <36.244312, 34.657677, 23.295397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059250, 34.760021, 23.408875>,  <35.750809, 34.930595, 23.598003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059250, 34.760021, 23.408875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629670, -0.400549, -0.665640,
		0.094463, 0.810996, -0.577376,
		0.771099, -0.426434, -0.472822,
		36.290581, 34.632092, 23.267027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736542, 35.092907, 22.862190>,  <35.750809, 34.930595, 23.598003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736542, 35.092907, 22.862190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957645, 34.760113, 22.881186>,  <36.090309, 34.560436, 22.892582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957645, 34.760113, 22.881186>,  <35.736542, 35.092907, 22.862190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957645, 34.760113, 22.881186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591243, -0.431698, -0.681226,
		0.587271, 0.348478, -0.730531,
		0.552761, -0.831986, 0.047488,
		36.123474, 34.510517, 22.895432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458042, 34.842953, 22.193140>,  <35.736542, 35.092907, 22.862190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458042, 34.842953, 22.193140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655102, 34.546345, 22.375324>,  <35.773338, 34.368382, 22.484634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655102, 34.546345, 22.375324>,  <35.458042, 34.842953, 22.193140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655102, 34.546345, 22.375324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484144, -0.668452, -0.564603,
		0.723118, 0.057643, -0.688315,
		0.492651, -0.741518, 0.455462,
		35.802898, 34.323891, 22.511963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829380, 34.469414, 21.663065>,  <35.458042, 34.842953, 22.193140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829380, 34.469414, 21.663065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777866, 34.219498, 21.971104>,  <35.746956, 34.069550, 22.155928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777866, 34.219498, 21.971104>,  <35.829380, 34.469414, 21.663065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777866, 34.219498, 21.971104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402091, -0.676964, -0.616475,
		0.906497, -0.389044, -0.164039,
		-0.128787, -0.624791, 0.770097,
		35.739231, 34.032059, 22.202133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945004, 33.809338, 21.398209>,  <35.829380, 34.469414, 21.663065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945004, 33.809338, 21.398209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761143, 33.716103, 21.740993>,  <35.650826, 33.660160, 21.946665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761143, 33.716103, 21.740993>,  <35.945004, 33.809338, 21.398209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761143, 33.716103, 21.740993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303841, -0.865439, -0.398367,
		0.834504, -0.443493, 0.326981,
		-0.459655, -0.233089, 0.856964,
		35.623245, 33.646175, 21.998083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203136, 33.098637, 21.587498>,  <35.945004, 33.809338, 21.398209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203136, 33.098637, 21.587498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861954, 33.143806, 21.791346>,  <35.657246, 33.170910, 21.913654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861954, 33.143806, 21.791346>,  <36.203136, 33.098637, 21.587498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861954, 33.143806, 21.791346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363064, -0.829813, -0.423787,
		0.375030, -0.546496, 0.748796,
		-0.852958, 0.112928, 0.509618,
		35.606068, 33.177685, 21.944231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109997, 32.513603, 21.819715>,  <36.203136, 33.098637, 21.587498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109997, 32.513603, 21.819715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737354, 32.656433, 21.846844>,  <35.513767, 32.742130, 21.863121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737354, 32.656433, 21.846844>,  <36.109997, 32.513603, 21.819715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737354, 32.656433, 21.846844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363178, -0.907204, -0.212328,
		-0.014289, -0.222439, 0.974842,
		-0.931610, 0.357075, 0.067822,
		35.457870, 32.763554, 21.867189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739079, 32.017448, 22.223223>,  <36.109997, 32.513603, 21.819715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739079, 32.017448, 22.223223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470383, 32.223919, 22.010687>,  <35.309166, 32.347801, 21.883165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470383, 32.223919, 22.010687>,  <35.739079, 32.017448, 22.223223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470383, 32.223919, 22.010687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309897, -0.847299, -0.431332,
		-0.672847, -0.125085, 0.729130,
		-0.671744, 0.516176, -0.531340,
		35.268860, 32.378773, 21.851284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354866, 31.528357, 22.042862>,  <35.739079, 32.017448, 22.223223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354866, 31.528357, 22.042862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218102, 31.804781, 21.788137>,  <35.136044, 31.970636, 21.635302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218102, 31.804781, 21.788137>,  <35.354866, 31.528357, 22.042862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218102, 31.804781, 21.788137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334490, -0.722767, -0.604751,
		-0.878189, 0.006239, 0.478273,
		-0.341908, 0.691063, -0.636813,
		35.115528, 32.012100, 21.597094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691803, 31.358879, 21.855740>,  <35.354866, 31.528357, 22.042862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691803, 31.358879, 21.855740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789913, 31.620033, 21.569082>,  <34.848782, 31.776726, 21.397087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789913, 31.620033, 21.569082>,  <34.691803, 31.358879, 21.855740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789913, 31.620033, 21.569082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248800, -0.672073, -0.697436,
		-0.936983, 0.349367, -0.002407,
		0.245279, 0.652887, -0.716643,
		34.863495, 31.815899, 21.354090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119926, 31.269001, 21.316742>,  <34.691803, 31.358879, 21.855740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119926, 31.269001, 21.316742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444016, 31.419828, 21.137247>,  <34.638470, 31.510324, 21.029551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444016, 31.419828, 21.137247>,  <34.119926, 31.269001, 21.316742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444016, 31.419828, 21.137247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202636, -0.538190, -0.818102,
		-0.549986, 0.753772, -0.359643,
		0.810218, 0.377068, -0.448738,
		34.687080, 31.532949, 21.002626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895721, 31.391859, 20.541372>,  <34.119926, 31.269001, 21.316742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895721, 31.391859, 20.541372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295094, 31.413544, 20.535851>,  <34.534718, 31.426556, 20.532537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295094, 31.413544, 20.535851>,  <33.895721, 31.391859, 20.541372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295094, 31.413544, 20.535851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010374, -0.421889, -0.906588,
		-0.054972, 0.905025, -0.421791,
		0.998434, 0.054212, -0.013803,
		34.594624, 31.429808, 20.531710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153358, 31.485756, 19.905584>,  <33.895721, 31.391859, 20.541372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153358, 31.485756, 19.905584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500427, 31.349989, 20.050875>,  <34.708668, 31.268528, 20.138050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500427, 31.349989, 20.050875>,  <34.153358, 31.485756, 19.905584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500427, 31.349989, 20.050875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186859, -0.454397, -0.870981,
		0.460677, 0.823601, -0.330845,
		0.867675, -0.339419, 0.363227,
		34.760731, 31.248163, 20.159843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687397, 31.804457, 19.465282>,  <34.153358, 31.485756, 19.905584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687397, 31.804457, 19.465282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800045, 31.468399, 19.650690>,  <34.867634, 31.266766, 19.761934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800045, 31.468399, 19.650690>,  <34.687397, 31.804457, 19.465282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800045, 31.468399, 19.650690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248963, -0.402546, -0.880894,
		0.926664, 0.363479, 0.095798,
		0.281624, -0.840143, 0.463517,
		34.884533, 31.216356, 19.789745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419258, 31.632677, 19.217821>,  <34.687397, 31.804457, 19.465282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419258, 31.632677, 19.217821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294460, 31.289139, 19.380323>,  <35.219582, 31.083015, 19.477825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294460, 31.289139, 19.380323>,  <35.419258, 31.632677, 19.217821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294460, 31.289139, 19.380323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162098, -0.469450, -0.867952,
		0.936155, -0.204940, 0.285681,
		-0.311991, -0.858846, 0.406257,
		35.200863, 31.031485, 19.502201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926075, 31.209084, 19.064129>,  <35.419258, 31.632677, 19.217821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926075, 31.209084, 19.064129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598335, 30.987480, 19.123102>,  <35.401691, 30.854519, 19.158485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598335, 30.987480, 19.123102>,  <35.926075, 31.209084, 19.064129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598335, 30.987480, 19.123102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112211, -0.407175, -0.906431,
		0.562202, -0.726142, 0.395786,
		-0.819352, -0.554009, 0.147434,
		35.352531, 30.821278, 19.167332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154076, 30.416969, 19.117985>,  <35.926075, 31.209084, 19.064129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154076, 30.416969, 19.117985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763569, 30.429298, 19.032246>,  <35.529263, 30.436697, 18.980803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763569, 30.429298, 19.032246>,  <36.154076, 30.416969, 19.117985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763569, 30.429298, 19.032246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178594, -0.445200, -0.877441,
		-0.122474, -0.894901, 0.429131,
		-0.976271, 0.030824, -0.214349,
		35.470688, 30.438545, 18.967941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960464, 29.668863, 19.022898>,  <36.154076, 30.416969, 19.117985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960464, 29.668863, 19.022898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693611, 29.916775, 18.857580>,  <35.533501, 30.065521, 18.758390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693611, 29.916775, 18.857580>,  <35.960464, 29.668863, 19.022898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693611, 29.916775, 18.857580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133487, -0.446362, -0.884840,
		-0.732882, -0.645475, 0.215050,
		-0.667133, 0.619777, -0.413293,
		35.493473, 30.102707, 18.733593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395523, 29.469654, 18.577307>,  <35.960464, 29.668863, 19.022898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395523, 29.469654, 18.577307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539814, 29.096762, 18.565800>,  <35.626389, 28.873026, 18.558895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539814, 29.096762, 18.565800>,  <35.395523, 29.469654, 18.577307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539814, 29.096762, 18.565800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431942, 0.139642, 0.891025,
		-0.826622, -0.333841, 0.453041,
		0.360724, -0.932229, -0.028769,
		35.648033, 28.817093, 18.557169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369259, 29.320808, 19.245922>,  <35.395523, 29.469654, 18.577307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369259, 29.320808, 19.245922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627048, 29.056858, 19.091406>,  <35.781723, 28.898487, 18.998695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627048, 29.056858, 19.091406>,  <35.369259, 29.320808, 19.245922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627048, 29.056858, 19.091406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613738, 0.145103, 0.776062,
		-0.456054, -0.737229, 0.498506,
		0.644470, -0.659878, -0.386291,
		35.820389, 28.858894, 18.975519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612347, 28.953791, 19.771355>,  <35.369259, 29.320808, 19.245922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612347, 28.953791, 19.771355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897045, 28.869242, 19.503403>,  <36.067863, 28.818512, 19.342632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897045, 28.869242, 19.503403>,  <35.612347, 28.953791, 19.771355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897045, 28.869242, 19.503403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702240, 0.236672, 0.671450,
		0.016617, -0.948319, 0.316883,
		0.711746, -0.211371, -0.669880,
		36.110569, 28.805830, 19.302439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993164, 28.448296, 20.108356>,  <35.612347, 28.953791, 19.771355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993164, 28.448296, 20.108356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207283, 28.646212, 19.834528>,  <36.335754, 28.764961, 19.670231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207283, 28.646212, 19.834528>,  <35.993164, 28.448296, 20.108356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207283, 28.646212, 19.834528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677842, 0.231924, 0.697669,
		0.503968, -0.837493, -0.211241,
		0.535300, 0.494790, -0.684570,
		36.367874, 28.794649, 19.629156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728355, 28.336527, 20.232670>,  <35.993164, 28.448296, 20.108356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728355, 28.336527, 20.232670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758709, 28.651720, 19.988270>,  <36.776920, 28.840836, 19.841629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758709, 28.651720, 19.988270>,  <36.728355, 28.336527, 20.232670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758709, 28.651720, 19.988270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675074, 0.410369, 0.613084,
		0.733837, -0.458996, -0.500805,
		0.075888, 0.787984, -0.611000,
		36.781475, 28.888115, 19.804970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419689, 28.507679, 20.234270>,  <36.728355, 28.336527, 20.232670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419689, 28.507679, 20.234270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242428, 28.852257, 20.135052>,  <37.136070, 29.059004, 20.075520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242428, 28.852257, 20.135052>,  <37.419689, 28.507679, 20.234270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242428, 28.852257, 20.135052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530886, 0.475158, 0.701701,
		0.722337, 0.179279, -0.667898,
		-0.443158, 0.861443, -0.248048,
		37.109482, 29.110689, 20.060637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859272, 29.075546, 20.457439>,  <37.419689, 28.507679, 20.234270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859272, 29.075546, 20.457439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541832, 29.302996, 20.370852>,  <37.351368, 29.439465, 20.318899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541832, 29.302996, 20.370852>,  <37.859272, 29.075546, 20.457439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541832, 29.302996, 20.370852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262726, 0.641168, 0.721027,
		0.548787, 0.515337, -0.658226,
		-0.793604, 0.568623, -0.216472,
		37.303749, 29.473583, 20.305910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119423, 29.855705, 20.427929>,  <37.859272, 29.075546, 20.457439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119423, 29.855705, 20.427929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731846, 29.827288, 20.522673>,  <37.499298, 29.810238, 20.579519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731846, 29.827288, 20.522673>,  <38.119423, 29.855705, 20.427929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731846, 29.827288, 20.522673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131884, 0.661788, 0.738000,
		-0.209182, 0.746318, -0.631865,
		-0.968942, -0.071044, 0.236861,
		37.441162, 29.805975, 20.593731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984158, 30.484615, 20.561747>,  <38.119423, 29.855705, 20.427929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984158, 30.484615, 20.561747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670784, 30.294716, 20.722170>,  <37.482761, 30.180777, 20.818424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670784, 30.294716, 20.722170>,  <37.984158, 30.484615, 20.561747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670784, 30.294716, 20.722170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065366, 0.704697, 0.706491,
		-0.618027, 0.527274, -0.583116,
		-0.783435, -0.474746, 0.401056,
		37.435753, 30.152292, 20.842487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589584, 31.001610, 20.798254>,  <37.984158, 30.484615, 20.561747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589584, 31.001610, 20.798254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474037, 30.676371, 21.000412>,  <37.404709, 30.481228, 21.121708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474037, 30.676371, 21.000412>,  <37.589584, 31.001610, 20.798254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474037, 30.676371, 21.000412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031558, 0.519528, 0.853870,
		-0.956847, 0.262609, -0.124417,
		-0.288872, -0.813097, 0.505396,
		37.387375, 30.432442, 21.152031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005325, 31.200382, 21.227402>,  <37.589584, 31.001610, 20.798254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005325, 31.200382, 21.227402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139736, 30.862431, 21.393902>,  <37.220383, 30.659660, 21.493803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139736, 30.862431, 21.393902>,  <37.005325, 31.200382, 21.227402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139736, 30.862431, 21.393902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022675, 0.434565, 0.900355,
		-0.941580, -0.311981, 0.126868,
		0.336026, -0.844879, 0.416252,
		37.240543, 30.608967, 21.518778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667603, 31.135874, 21.848553>,  <37.005325, 31.200382, 21.227402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667603, 31.135874, 21.848553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985394, 30.903358, 21.918880>,  <37.176067, 30.763849, 21.961077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985394, 30.903358, 21.918880>,  <36.667603, 31.135874, 21.848553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985394, 30.903358, 21.918880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029680, 0.326333, 0.944789,
		-0.606572, -0.745392, 0.276516,
		0.794474, -0.581290, 0.175821,
		37.223736, 30.728971, 21.971626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504578, 30.701466, 22.491127>,  <36.667603, 31.135874, 21.848553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504578, 30.701466, 22.491127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898090, 30.740747, 22.431093>,  <37.134197, 30.764317, 22.395073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898090, 30.740747, 22.431093>,  <36.504578, 30.701466, 22.491127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898090, 30.740747, 22.431093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107091, 0.349641, 0.930743,
		0.143876, -0.931723, 0.333455,
		0.983784, 0.098202, -0.150084,
		37.193226, 30.770208, 22.386068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872326, 30.456606, 23.057751>,  <36.504578, 30.701466, 22.491127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872326, 30.456606, 23.057751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156090, 30.688997, 22.898153>,  <37.326347, 30.828432, 22.802395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156090, 30.688997, 22.898153>,  <36.872326, 30.456606, 23.057751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156090, 30.688997, 22.898153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167618, 0.410792, 0.896189,
		0.684570, -0.702647, 0.194039,
		0.709414, 0.580980, -0.398992,
		37.368916, 30.863291, 22.778456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309498, 30.471485, 23.588266>,  <36.872326, 30.456606, 23.057751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309498, 30.471485, 23.588266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433372, 30.774509, 23.358416>,  <37.507698, 30.956324, 23.220505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433372, 30.774509, 23.358416>,  <37.309498, 30.471485, 23.588266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433372, 30.774509, 23.358416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143921, 0.560027, 0.815878,
		0.939884, -0.335365, 0.064403,
		0.309684, 0.757562, -0.574627,
		37.526279, 31.001778, 23.186028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909477, 30.738823, 23.972246>,  <37.309498, 30.471485, 23.588266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909477, 30.738823, 23.972246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794048, 31.038639, 23.733948>,  <37.724789, 31.218529, 23.590969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794048, 31.038639, 23.733948>,  <37.909477, 30.738823, 23.972246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794048, 31.038639, 23.733948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372078, 0.661102, 0.651539,
		0.882203, -0.033645, -0.469666,
		-0.288576, 0.749542, -0.595744,
		37.707474, 31.263502, 23.555225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449905, 31.286898, 24.100941>,  <37.909477, 30.738823, 23.972246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449905, 31.286898, 24.100941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115093, 31.452217, 23.957518>,  <37.914207, 31.551409, 23.871464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115093, 31.452217, 23.957518>,  <38.449905, 31.286898, 24.100941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115093, 31.452217, 23.957518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199107, 0.840459, 0.503969,
		0.509642, 0.350447, -0.785781,
		-0.837031, 0.413299, -0.358557,
		37.863983, 31.576206, 23.849951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682606, 31.989290, 23.801199>,  <38.449905, 31.286898, 24.100941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682606, 31.989290, 23.801199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295185, 31.976046, 23.899837>,  <38.062733, 31.968100, 23.959021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295185, 31.976046, 23.899837>,  <38.682606, 31.989290, 23.801199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295185, 31.976046, 23.899837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142817, 0.737581, 0.659983,
		-0.203736, 0.674447, -0.709657,
		-0.968553, -0.033112, 0.246594,
		38.004620, 31.966112, 23.973816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720413, 32.629578, 24.010420>,  <38.682606, 31.989290, 23.801199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720413, 32.629578, 24.010420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379086, 32.481030, 24.156807>,  <38.174290, 32.391899, 24.244640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379086, 32.481030, 24.156807>,  <38.720413, 32.629578, 24.010420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379086, 32.481030, 24.156807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172297, 0.461628, 0.870180,
		-0.492103, 0.805594, -0.329928,
		-0.853316, -0.371372, 0.365969,
		38.123089, 32.369617, 24.266598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248001, 33.310192, 24.267508>,  <38.720413, 32.629578, 24.010420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248001, 33.310192, 24.267508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139874, 32.968380, 24.444916>,  <38.074997, 32.763294, 24.551361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139874, 32.968380, 24.444916>,  <38.248001, 33.310192, 24.267508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139874, 32.968380, 24.444916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085376, 0.437578, 0.895118,
		-0.958977, 0.279835, -0.045331,
		-0.270322, -0.854528, 0.443518,
		38.058777, 32.712021, 24.577971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640579, 33.497810, 24.706457>,  <38.248001, 33.310192, 24.267508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640579, 33.497810, 24.706457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779095, 33.157528, 24.864641>,  <37.862202, 32.953358, 24.959551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779095, 33.157528, 24.864641>,  <37.640579, 33.497810, 24.706457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779095, 33.157528, 24.864641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007145, 0.419137, 0.907895,
		-0.938102, -0.317217, 0.139063,
		0.346287, -0.850704, 0.395459,
		37.882980, 32.902317, 24.983278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166862, 33.303337, 25.293756>,  <37.640579, 33.497810, 24.706457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166862, 33.303337, 25.293756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533115, 33.147602, 25.333828>,  <37.752869, 33.054161, 25.357870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533115, 33.147602, 25.333828>,  <37.166862, 33.303337, 25.293756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533115, 33.147602, 25.333828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036202, 0.328029, 0.943974,
		-0.400386, -0.860705, 0.314448,
		0.915631, -0.389338, 0.100179,
		37.807804, 33.030800, 25.363882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174824, 32.910927, 25.927938>,  <37.166862, 33.303337, 25.293756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174824, 32.910927, 25.927938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559925, 32.987881, 25.851940>,  <37.790985, 33.034054, 25.806341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559925, 32.987881, 25.851940>,  <37.174824, 32.910927, 25.927938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559925, 32.987881, 25.851940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101308, 0.394836, 0.913149,
		0.250691, -0.898384, 0.360639,
		0.962751, 0.192383, -0.189996,
		37.848751, 33.045597, 25.794941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467445, 32.802429, 26.489782>,  <37.174824, 32.910927, 25.927938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467445, 32.802429, 26.489782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752483, 33.011002, 26.302029>,  <37.923508, 33.136143, 26.189377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752483, 33.011002, 26.302029>,  <37.467445, 32.802429, 26.489782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752483, 33.011002, 26.302029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311054, 0.364879, 0.877558,
		0.628851, -0.771348, 0.097819,
		0.712595, 0.521426, -0.469386,
		37.966263, 33.167431, 26.161213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049065, 32.610977, 26.856394>,  <37.467445, 32.802429, 26.489782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049065, 32.610977, 26.856394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166100, 32.949909, 26.679117>,  <38.236320, 33.153271, 26.572750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166100, 32.949909, 26.679117>,  <38.049065, 32.610977, 26.856394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166100, 32.949909, 26.679117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554201, 0.227438, 0.800708,
		0.779265, -0.479896, -0.403046,
		0.292588, 0.847332, -0.443193,
		38.253876, 33.204109, 26.546160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754944, 32.697502, 26.980459>,  <38.049065, 32.610977, 26.856394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754944, 32.697502, 26.980459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677315, 33.070667, 26.859127>,  <38.630737, 33.294567, 26.786327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677315, 33.070667, 26.859127>,  <38.754944, 32.697502, 26.980459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677315, 33.070667, 26.859127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406595, 0.357898, 0.840589,
		0.892757, 0.039804, -0.448776,
		-0.194075, 0.932912, -0.303332,
		38.619091, 33.350540, 26.768127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327602, 33.009937, 27.161745>,  <38.754944, 32.697502, 26.980459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327602, 33.009937, 27.161745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066967, 33.308388, 27.107000>,  <38.910587, 33.487457, 27.074154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066967, 33.308388, 27.107000>,  <39.327602, 33.009937, 27.161745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066967, 33.308388, 27.107000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561230, 0.595551, 0.574752,
		0.510344, 0.297692, -0.806801,
		-0.651590, 0.746123, -0.136863,
		38.871490, 33.532223, 27.065941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805264, 33.602901, 27.044781>,  <39.327602, 33.009937, 27.161745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805264, 33.602901, 27.044781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443638, 33.742538, 27.143410>,  <39.226662, 33.826321, 27.202587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443638, 33.742538, 27.143410>,  <39.805264, 33.602901, 27.044781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443638, 33.742538, 27.143410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422793, 0.646088, 0.635466,
		0.062530, 0.678752, -0.731701,
		-0.904066, 0.349094, 0.246571,
		39.172417, 33.847267, 27.217381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857746, 34.271900, 26.981350>,  <39.805264, 33.602901, 27.044781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857746, 34.271900, 26.981350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561249, 34.201469, 27.240442>,  <39.383350, 34.159210, 27.395897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561249, 34.201469, 27.240442>,  <39.857746, 34.271900, 26.981350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561249, 34.201469, 27.240442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499835, 0.499298, 0.707719,
		-0.448021, 0.848351, -0.282094,
		-0.741244, -0.176073, 0.647732,
		39.338875, 34.148647, 27.434761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603577, 34.949711, 27.296040>,  <39.857746, 34.271900, 26.981350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603577, 34.949711, 27.296040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504009, 34.661533, 27.554958>,  <39.444267, 34.488625, 27.710310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504009, 34.661533, 27.554958>,  <39.603577, 34.949711, 27.296040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504009, 34.661533, 27.554958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415552, 0.524246, 0.743292,
		-0.874846, 0.454005, 0.168889,
		-0.248919, -0.720448, 0.647297,
		39.429333, 34.445400, 27.749147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638664, 35.332211, 27.886518>,  <39.603577, 34.949711, 27.296040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638664, 35.332211, 27.886518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602928, 34.971470, 28.055605>,  <39.581486, 34.755028, 28.157057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602928, 34.971470, 28.055605>,  <39.638664, 35.332211, 27.886518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602928, 34.971470, 28.055605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202379, 0.399121, 0.894285,
		-0.975223, 0.165449, 0.146856,
		-0.089345, -0.901848, 0.422716,
		39.576126, 34.700916, 28.182419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253311, 35.401398, 28.513031>,  <39.638664, 35.332211, 27.886518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253311, 35.401398, 28.513031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466156, 35.065113, 28.553148>,  <39.593864, 34.863342, 28.577219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466156, 35.065113, 28.553148>,  <39.253311, 35.401398, 28.513031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466156, 35.065113, 28.553148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432578, 0.371777, 0.821375,
		-0.727828, -0.393678, 0.561501,
		0.532111, -0.840713, 0.100294,
		39.625790, 34.812901, 28.583237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192650, 35.208244, 29.203829>,  <39.253311, 35.401398, 28.513031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192650, 35.208244, 29.203829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506302, 34.984028, 29.097300>,  <39.694492, 34.849499, 29.033382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506302, 34.984028, 29.097300>,  <39.192650, 35.208244, 29.203829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506302, 34.984028, 29.097300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424928, 0.172181, 0.888701,
		-0.452301, -0.810027, 0.373203,
		0.784130, -0.560545, -0.266325,
		39.741543, 34.815865, 29.017403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256123, 34.700436, 29.728434>,  <39.192650, 35.208244, 29.203829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256123, 34.700436, 29.728434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618637, 34.708218, 29.559551>,  <39.836147, 34.712887, 29.458221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618637, 34.708218, 29.559551>,  <39.256123, 34.700436, 29.728434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618637, 34.708218, 29.559551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422513, -0.067551, 0.903836,
		-0.010933, -0.997526, -0.069443,
		0.906291, 0.019458, -0.422207,
		39.890526, 34.714054, 29.432890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620113, 34.154835, 29.896770>,  <39.256123, 34.700436, 29.728434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620113, 34.154835, 29.896770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947342, 34.370010, 29.815407>,  <40.143681, 34.499115, 29.766588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947342, 34.370010, 29.815407>,  <39.620113, 34.154835, 29.896770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947342, 34.370010, 29.815407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324041, -0.138945, 0.935784,
		0.475135, -0.831452, -0.287983,
		0.818074, 0.537942, -0.203407,
		40.192764, 34.531391, 29.754385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295929, 33.738434, 30.212416>,  <39.620113, 34.154835, 29.896770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295929, 33.738434, 30.212416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385975, 34.122097, 30.143896>,  <40.440002, 34.352295, 30.102783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385975, 34.122097, 30.143896>,  <40.295929, 33.738434, 30.212416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385975, 34.122097, 30.143896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262096, 0.109720, 0.958784,
		0.938419, -0.260730, -0.226692,
		0.225111, 0.959157, -0.171300,
		40.453506, 34.409843, 30.092506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097309, 33.997017, 30.417385>,  <40.295929, 33.738434, 30.212416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097309, 33.997017, 30.417385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858120, 34.317608, 30.420483>,  <40.714607, 34.509964, 30.422340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858120, 34.317608, 30.420483>,  <41.097309, 33.997017, 30.417385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858120, 34.317608, 30.420483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196354, 0.137118, 0.970898,
		0.777094, 0.582090, -0.239366,
		-0.597971, 0.801480, 0.007742,
		40.678730, 34.558052, 30.422806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403179, 34.321213, 30.910391>,  <41.097309, 33.997017, 30.417385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403179, 34.321213, 30.910391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067146, 34.533264, 30.864384>,  <40.865528, 34.660496, 30.836779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067146, 34.533264, 30.864384>,  <41.403179, 34.321213, 30.910391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067146, 34.533264, 30.864384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007335, 0.223115, 0.974765,
		0.542413, 0.818036, -0.191323,
		-0.840080, 0.530129, -0.115020,
		40.815121, 34.692303, 30.829878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537174, 34.901958, 31.236837>,  <41.403179, 34.321213, 30.910391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537174, 34.901958, 31.236837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137726, 34.919060, 31.224644>,  <40.898056, 34.929321, 31.217327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137726, 34.919060, 31.224644>,  <41.537174, 34.901958, 31.236837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137726, 34.919060, 31.224644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016350, 0.298489, 0.954273,
		0.049894, 0.953455, -0.297378,
		-0.998621, 0.042751, -0.030482,
		40.838139, 34.931885, 31.215500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358269, 35.563801, 31.707613>,  <41.537174, 34.901958, 31.236837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358269, 35.563801, 31.707613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031338, 35.340767, 31.649538>,  <40.835178, 35.206947, 31.614693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031338, 35.340767, 31.649538>,  <41.358269, 35.563801, 31.707613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031338, 35.340767, 31.649538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281835, 0.167107, 0.944798,
		-0.502543, 0.813126, -0.293727,
		-0.817325, -0.557585, -0.145189,
		40.786140, 35.173492, 31.605982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661480, 35.960255, 31.847347>,  <41.358269, 35.563801, 31.707613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661480, 35.960255, 31.847347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644032, 35.568733, 31.927393>,  <40.633564, 35.333820, 31.975420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644032, 35.568733, 31.927393>,  <40.661480, 35.960255, 31.847347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644032, 35.568733, 31.927393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221449, 0.204796, 0.953425,
		-0.974196, -0.002728, -0.225687,
		-0.043619, -0.978801, 0.200116,
		40.630947, 35.275093, 31.987427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166702, 35.909786, 32.254772>,  <40.661480, 35.960255, 31.847347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166702, 35.909786, 32.254772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355526, 35.560154, 32.300625>,  <40.468819, 35.350376, 32.328136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355526, 35.560154, 32.300625>,  <40.166702, 35.909786, 32.254772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355526, 35.560154, 32.300625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308773, -0.042140, 0.950202,
		-0.825723, -0.483949, -0.289785,
		0.472060, -0.874081, 0.114635,
		40.497143, 35.297928, 32.335014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711662, 35.604908, 32.682766>,  <40.166702, 35.909786, 32.254772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711662, 35.604908, 32.682766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060272, 35.417747, 32.741436>,  <40.269440, 35.305450, 32.776638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060272, 35.417747, 32.741436>,  <39.711662, 35.604908, 32.682766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060272, 35.417747, 32.741436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136045, 0.056653, 0.989082,
		-0.471098, -0.881965, -0.014281,
		0.871526, -0.467898, 0.146676,
		40.321732, 35.277378, 32.785439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517433, 34.982105, 33.113392>,  <39.711662, 35.604908, 32.682766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517433, 34.982105, 33.113392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915863, 34.968937, 33.146248>,  <40.154922, 34.961037, 33.165962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915863, 34.968937, 33.146248>,  <39.517433, 34.982105, 33.113392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915863, 34.968937, 33.146248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087795, -0.251687, 0.963818,
		-0.011057, -0.967249, -0.253590,
		0.996077, -0.032921, 0.082137,
		40.214687, 34.959061, 33.170887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698612, 34.374470, 33.563988>,  <39.517433, 34.982105, 33.113392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698612, 34.374470, 33.563988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988899, 34.649532, 33.572529>,  <40.163071, 34.814571, 33.577652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988899, 34.649532, 33.572529>,  <39.698612, 34.374470, 33.563988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988899, 34.649532, 33.572529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109867, -0.146472, 0.983095,
		0.679160, -0.711106, -0.181849,
		0.725720, 0.687658, 0.021351,
		40.206615, 34.855831, 33.578934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379772, 34.089985, 33.607937>,  <39.698612, 34.374470, 33.563988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379772, 34.089985, 33.607937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376522, 34.451088, 33.779964>,  <40.374573, 34.667751, 33.883183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376522, 34.451088, 33.779964>,  <40.379772, 34.089985, 33.607937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376522, 34.451088, 33.779964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227410, -0.417148, 0.879928,
		0.973765, 0.104953, -0.201906,
		-0.008126, 0.902758, 0.430071,
		40.374084, 34.721916, 33.908985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863178, 33.981403, 34.176666>,  <40.379772, 34.089985, 33.607937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863178, 33.981403, 34.176666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704853, 34.340492, 34.254051>,  <40.609859, 34.555946, 34.300480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704853, 34.340492, 34.254051>,  <40.863178, 33.981403, 34.176666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704853, 34.340492, 34.254051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077533, -0.177242, 0.981108,
		0.915054, 0.403330, 0.000551,
		-0.395808, 0.897725, 0.193458,
		40.586109, 34.609810, 34.312088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198681, 34.124817, 34.692890>,  <40.863178, 33.981403, 34.176666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198681, 34.124817, 34.692890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889801, 34.376526, 34.728031>,  <40.704472, 34.527550, 34.749115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889801, 34.376526, 34.728031>,  <41.198681, 34.124817, 34.692890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889801, 34.376526, 34.728031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002794, -0.134903, 0.990855,
		0.635368, 0.765388, 0.102414,
		-0.772204, 0.629272, 0.087852,
		40.658138, 34.565308, 34.754387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433990, 34.634117, 35.295372>,  <41.198681, 34.124817, 34.692890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433990, 34.634117, 35.295372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043556, 34.664448, 35.213882>,  <40.809296, 34.682644, 35.164989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043556, 34.664448, 35.213882>,  <41.433990, 34.634117, 35.295372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043556, 34.664448, 35.213882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205482, -0.016072, 0.978529,
		0.070921, 0.996992, 0.031268,
		-0.976088, 0.075823, -0.203724,
		40.750729, 34.687195, 35.152763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126804, 35.336498, 35.529758>,  <41.433990, 34.634117, 35.295372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126804, 35.336498, 35.529758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858559, 35.040375, 35.510925>,  <40.697609, 34.862701, 35.499626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858559, 35.040375, 35.510925>,  <41.126804, 35.336498, 35.529758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858559, 35.040375, 35.510925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232230, 0.149238, 0.961143,
		-0.704514, 0.655495, -0.272004,
		-0.670618, -0.740307, -0.047085,
		40.657372, 34.818283, 35.496799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425522, 35.601891, 35.882801>,  <41.126804, 35.336498, 35.529758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425522, 35.601891, 35.882801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411121, 35.202187, 35.888142>,  <40.402481, 34.962364, 35.891346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411121, 35.202187, 35.888142>,  <40.425522, 35.601891, 35.882801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411121, 35.202187, 35.888142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104985, 0.009504, 0.994428,
		-0.993822, 0.037206, 0.104566,
		-0.036005, -0.999262, 0.013351,
		40.400318, 34.902409, 35.892147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158875, 35.413464, 36.583965>,  <40.425522, 35.601891, 35.882801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158875, 35.413464, 36.583965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258224, 35.039230, 36.483570>,  <40.317833, 34.814690, 36.423332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258224, 35.039230, 36.483570>,  <40.158875, 35.413464, 36.583965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258224, 35.039230, 36.483570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222451, -0.197092, 0.954814,
		-0.942775, -0.292985, 0.159169,
		0.248376, -0.935583, -0.250988,
		40.332737, 34.758556, 36.408272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811882, 34.954525, 37.021702>,  <40.158875, 35.413464, 36.583965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811882, 34.954525, 37.021702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144047, 34.781445, 36.881310>,  <40.343346, 34.677597, 36.797073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144047, 34.781445, 36.881310>,  <39.811882, 34.954525, 37.021702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144047, 34.781445, 36.881310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267686, -0.242627, 0.932457,
		-0.488635, -0.868274, -0.085651,
		0.830410, -0.432704, -0.350981,
		40.393169, 34.651634, 36.776016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014194, 34.421230, 37.610329>,  <39.811882, 34.954525, 37.021702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014194, 34.421230, 37.610329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356316, 34.424004, 37.403095>,  <40.561588, 34.425667, 37.278755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356316, 34.424004, 37.403095>,  <40.014194, 34.421230, 37.610329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356316, 34.424004, 37.403095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518130, -0.014182, 0.855184,
		-0.001403, -0.999875, -0.015732,
		0.855301, 0.006951, -0.518085,
		40.612907, 34.426083, 37.247669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383816, 33.952389, 37.883511>,  <40.014194, 34.421230, 37.610329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383816, 33.952389, 37.883511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624138, 34.226620, 37.719067>,  <40.768330, 34.391159, 37.620399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624138, 34.226620, 37.719067>,  <40.383816, 33.952389, 37.883511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624138, 34.226620, 37.719067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574873, -0.013184, 0.818137,
		0.555477, -0.727879, -0.402041,
		0.600805, 0.685579, -0.411114,
		40.804379, 34.432293, 37.595734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039318, 33.816723, 37.884422>,  <40.383816, 33.952389, 37.883511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039318, 33.816723, 37.884422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082993, 34.212849, 37.850128>,  <41.109200, 34.450523, 37.829552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082993, 34.212849, 37.850128>,  <41.039318, 33.816723, 37.884422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082993, 34.212849, 37.850128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653274, -0.006486, 0.757094,
		0.749207, -0.138673, -0.647656,
		0.109189, 0.990317, -0.085732,
		41.115749, 34.509945, 37.824409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665081, 33.749958, 38.039074>,  <41.039318, 33.816723, 37.884422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665081, 33.749958, 38.039074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532452, 34.122009, 38.102215>,  <41.452873, 34.345242, 38.140099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532452, 34.122009, 38.102215>,  <41.665081, 33.749958, 38.039074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532452, 34.122009, 38.102215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359162, -0.030271, 0.932784,
		0.872389, 0.365980, -0.324030,
		-0.331571, 0.930130, 0.157854,
		41.432980, 34.401047, 38.149570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191010, 34.202454, 38.334351>,  <41.665081, 33.749958, 38.039074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191010, 34.202454, 38.334351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851208, 34.394367, 38.422131>,  <41.647327, 34.509514, 38.474796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851208, 34.394367, 38.422131>,  <42.191010, 34.202454, 38.334351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851208, 34.394367, 38.422131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310254, 0.117870, 0.943318,
		0.426723, 0.869433, -0.248986,
		-0.849500, 0.479784, 0.219447,
		41.596359, 34.538303, 38.487965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361366, 34.893936, 38.665287>,  <42.191010, 34.202454, 38.334351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361366, 34.893936, 38.665287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012260, 34.769283, 38.815578>,  <41.802795, 34.694492, 38.905754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012260, 34.769283, 38.815578>,  <42.361366, 34.893936, 38.665287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012260, 34.769283, 38.815578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286728, 0.295659, 0.911248,
		-0.395059, 0.903036, -0.168687,
		-0.872763, -0.311629, 0.375728,
		41.750431, 34.675793, 38.928295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202381, 35.478848, 39.053326>,  <42.361366, 34.893936, 38.665287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202381, 35.478848, 39.053326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092163, 35.107445, 39.152885>,  <42.026031, 34.884602, 39.212620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092163, 35.107445, 39.152885>,  <42.202381, 35.478848, 39.053326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092163, 35.107445, 39.152885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231949, 0.187051, 0.954574,
		-0.932885, 0.320760, 0.163825,
		-0.275546, -0.928507, 0.248897,
		42.009499, 34.828892, 39.227554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646507, 35.492039, 39.556995>,  <42.202381, 35.478848, 39.053326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646507, 35.492039, 39.556995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939880, 35.221134, 39.533665>,  <42.115902, 35.058590, 39.519669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939880, 35.221134, 39.533665>,  <41.646507, 35.492039, 39.556995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939880, 35.221134, 39.533665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371715, 0.327744, 0.868569,
		-0.569131, -0.658713, 0.492125,
		0.733428, -0.677260, -0.058324,
		42.159908, 35.017956, 39.516167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752754, 35.292313, 40.194252>,  <41.646507, 35.492039, 39.556995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752754, 35.292313, 40.194252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114529, 35.265625, 40.025707>,  <42.331593, 35.249611, 39.924580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114529, 35.265625, 40.025707>,  <41.752754, 35.292313, 40.194252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114529, 35.265625, 40.025707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412885, 0.385434, 0.825207,
		0.107349, -0.920320, 0.376148,
		0.904435, -0.066721, -0.421362,
		42.385860, 35.245609, 39.899300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260796, 34.953968, 40.591095>,  <41.752754, 35.292313, 40.194252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260796, 34.953968, 40.591095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465050, 35.211235, 40.362850>,  <42.587601, 35.365593, 40.225903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465050, 35.211235, 40.362850>,  <42.260796, 34.953968, 40.591095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465050, 35.211235, 40.362850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334440, 0.462810, 0.820948,
		0.792089, -0.610037, 0.021225,
		0.510632, 0.643166, -0.570608,
		42.618240, 35.404186, 40.191669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779728, 34.534847, 40.351303>,  <42.260796, 34.953968, 40.591095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779728, 34.534847, 40.351303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424938, 34.693523, 40.256718>,  <41.212067, 34.788731, 40.199966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424938, 34.693523, 40.256718>,  <41.779728, 34.534847, 40.351303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424938, 34.693523, 40.256718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120130, -0.296222, -0.947535,
		-0.445926, -0.868843, 0.215086,
		-0.886972, 0.396693, -0.236467,
		41.158848, 34.812531, 40.185780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255142, 33.992268, 39.916592>,  <41.779728, 34.534847, 40.351303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255142, 33.992268, 39.916592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209862, 34.379467, 39.827000>,  <41.182693, 34.611786, 39.773243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209862, 34.379467, 39.827000>,  <41.255142, 33.992268, 39.916592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209862, 34.379467, 39.827000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055754, -0.218888, -0.974156,
		-0.992007, -0.122759, -0.029192,
		-0.113196, 0.967997, -0.223983,
		41.175903, 34.669865, 39.759804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686474, 34.116444, 39.425632>,  <41.255142, 33.992268, 39.916592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686474, 34.116444, 39.425632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968666, 34.393650, 39.366264>,  <41.137981, 34.559975, 39.330643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968666, 34.393650, 39.366264>,  <40.686474, 34.116444, 39.425632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968666, 34.393650, 39.366264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022832, -0.231528, -0.972560,
		-0.708361, 0.682734, -0.179162,
		0.705481, 0.693014, -0.148417,
		41.180309, 34.601555, 39.321739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476707, 34.529655, 38.945980>,  <40.686474, 34.116444, 39.425632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476707, 34.529655, 38.945980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870808, 34.597385, 38.936161>,  <41.107269, 34.638023, 38.930271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870808, 34.597385, 38.936161>,  <40.476707, 34.529655, 38.945980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870808, 34.597385, 38.936161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021700, -0.018648, -0.999591,
		-0.169712, 0.985384, -0.014699,
		0.985255, 0.169323, -0.024548,
		41.166386, 34.648182, 38.928795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526047, 35.219162, 38.713455>,  <40.476707, 34.529655, 38.945980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526047, 35.219162, 38.713455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863247, 35.017616, 38.638111>,  <41.065567, 34.896690, 38.592903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863247, 35.017616, 38.638111>,  <40.526047, 35.219162, 38.713455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863247, 35.017616, 38.638111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160338, 0.098881, -0.982097,
		0.513466, 0.858106, 0.002568,
		0.842997, -0.503861, -0.188359,
		41.116146, 34.866459, 38.581604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935345, 35.562378, 38.150700>,  <40.526047, 35.219162, 38.713455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935345, 35.562378, 38.150700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127934, 35.212288, 38.132092>,  <41.243484, 35.002232, 38.120926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127934, 35.212288, 38.132092>,  <40.935345, 35.562378, 38.150700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127934, 35.212288, 38.132092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110476, -0.007948, -0.993847,
		0.869473, 0.483645, -0.100518,
		0.481468, -0.875228, -0.046521,
		41.272373, 34.949718, 38.118134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317337, 35.714878, 37.603466>,  <40.935345, 35.562378, 38.150700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317337, 35.714878, 37.603466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266987, 35.323036, 37.666107>,  <41.236778, 35.087929, 37.703693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266987, 35.323036, 37.666107>,  <41.317337, 35.714878, 37.603466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266987, 35.323036, 37.666107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129620, -0.140267, -0.981592,
		0.983542, -0.143856, -0.109320,
		-0.125874, -0.979607, 0.156605,
		41.229225, 35.029156, 37.713089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598843, 35.278282, 37.057068>,  <41.317337, 35.714878, 37.603466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598843, 35.278282, 37.057068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371128, 34.990238, 37.215736>,  <41.234501, 34.817410, 37.310940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371128, 34.990238, 37.215736>,  <41.598843, 35.278282, 37.057068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371128, 34.990238, 37.215736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117101, -0.406549, -0.906094,
		0.813757, -0.562278, 0.147117,
		-0.569286, -0.720113, 0.396675,
		41.200340, 34.774204, 37.334740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726597, 34.737289, 36.658241>,  <41.598843, 35.278282, 37.057068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726597, 34.737289, 36.658241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389057, 34.622066, 36.839321>,  <41.186535, 34.552933, 36.947971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389057, 34.622066, 36.839321>,  <41.726597, 34.737289, 36.658241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389057, 34.622066, 36.839321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377405, -0.281098, -0.882355,
		0.381422, -0.915427, 0.128491,
		-0.843850, -0.288057, 0.452703,
		41.135902, 34.535648, 36.975132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899292, 34.102139, 36.947800>,  <41.726597, 34.737289, 36.658241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899292, 34.102139, 36.947800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135849, 33.979733, 36.649376>,  <42.277782, 33.906288, 36.470322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135849, 33.979733, 36.649376>,  <41.899292, 34.102139, 36.947800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135849, 33.979733, 36.649376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415277, 0.677492, -0.607083,
		0.691226, 0.668848, 0.273585,
		0.591397, -0.306018, -0.746058,
		42.313267, 33.887928, 36.425560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490723, 34.125694, 36.365036>,  <41.899292, 34.102139, 36.947800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490723, 34.125694, 36.365036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147316, 34.281410, 36.498543>,  <40.941273, 34.374840, 36.578648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147316, 34.281410, 36.498543>,  <41.490723, 34.125694, 36.365036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147316, 34.281410, 36.498543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390067, -0.073272, -0.917866,
		-0.332865, -0.918194, 0.214756,
		-0.858515, 0.389295, 0.333768,
		40.889763, 34.398197, 36.598675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999748, 33.746712, 35.963039>,  <41.490723, 34.125694, 36.365036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999748, 33.746712, 35.963039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762520, 34.028332, 36.119282>,  <40.620182, 34.197304, 36.213028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762520, 34.028332, 36.119282>,  <40.999748, 33.746712, 35.963039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762520, 34.028332, 36.119282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512207, 0.044387, -0.857714,
		-0.621214, -0.708759, 0.334296,
		-0.593075, 0.704053, 0.390605,
		40.584599, 34.239548, 36.236462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198242, 33.628483, 35.935543>,  <40.999748, 33.746712, 35.963039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198242, 33.628483, 35.935543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295452, 34.015797, 35.912319>,  <40.353779, 34.248184, 35.898384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295452, 34.015797, 35.912319>,  <40.198242, 33.628483, 35.935543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295452, 34.015797, 35.912319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389213, 0.042518, -0.920166,
		-0.888511, 0.246221, 0.387200,
		0.243027, 0.968281, -0.058055,
		40.368359, 34.306282, 35.894901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658905, 33.918125, 35.547722>,  <40.198242, 33.628483, 35.935543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658905, 33.918125, 35.547722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969143, 34.170055, 35.530891>,  <40.155285, 34.321213, 35.520794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969143, 34.170055, 35.530891>,  <39.658905, 33.918125, 35.547722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969143, 34.170055, 35.530891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269699, 0.270373, -0.924209,
		-0.570712, 0.728162, 0.379563,
		0.775597, 0.629825, -0.042079,
		40.201820, 34.359001, 35.518269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467136, 34.584923, 35.178890>,  <39.658905, 33.918125, 35.547722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467136, 34.584923, 35.178890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864742, 34.621525, 35.202793>,  <40.103306, 34.643486, 35.217136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864742, 34.621525, 35.202793>,  <39.467136, 34.584923, 35.178890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864742, 34.621525, 35.202793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016623, 0.413833, -0.910201,
		-0.108017, 0.905742, 0.409833,
		0.994010, 0.091504, 0.059757,
		40.162945, 34.648975, 35.220718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615696, 35.264545, 34.864021>,  <39.467136, 34.584923, 35.178890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615696, 35.264545, 34.864021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955639, 35.060070, 34.812752>,  <40.159603, 34.937386, 34.781990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955639, 35.060070, 34.812752>,  <39.615696, 35.264545, 34.864021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955639, 35.060070, 34.812752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122401, 0.428010, -0.895447,
		0.512601, 0.745314, 0.426317,
		0.849858, -0.511189, -0.128171,
		40.210598, 34.906712, 34.774300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990337, 35.748829, 34.467838>,  <39.615696, 35.264545, 34.864021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990337, 35.748829, 34.467838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200855, 35.411678, 34.422993>,  <40.327164, 35.209389, 34.396084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200855, 35.411678, 34.422993>,  <39.990337, 35.748829, 34.467838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200855, 35.411678, 34.422993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185217, 0.242328, -0.952351,
		0.829886, 0.480449, 0.283651,
		0.526293, -0.842880, -0.112117,
		40.358742, 35.158813, 34.389359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666168, 35.949097, 34.057266>,  <39.990337, 35.748829, 34.467838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666168, 35.949097, 34.057266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563957, 35.562656, 34.042488>,  <40.502632, 35.330791, 34.033619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563957, 35.562656, 34.042488>,  <40.666168, 35.949097, 34.057266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563957, 35.562656, 34.042488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037387, 0.028315, -0.998900,
		0.966080, -0.256623, 0.028884,
		-0.255523, -0.966097, -0.036948,
		40.487301, 35.272827, 34.031403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248512, 35.607750, 33.758282>,  <40.666168, 35.949097, 34.057266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248512, 35.607750, 33.758282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907936, 35.407619, 33.695393>,  <40.703590, 35.287540, 33.657661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907936, 35.407619, 33.695393>,  <41.248512, 35.607750, 33.758282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907936, 35.407619, 33.695393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187846, -0.011052, -0.982136,
		0.489655, -0.865764, 0.103395,
		-0.851441, -0.500330, -0.157218,
		40.652504, 35.257519, 33.648228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441490, 35.305721, 33.056038>,  <41.248512, 35.607750, 33.758282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441490, 35.305721, 33.056038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069572, 35.180035, 33.132713>,  <40.846420, 35.104622, 33.178719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069572, 35.180035, 33.132713>,  <41.441490, 35.305721, 33.056038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069572, 35.180035, 33.132713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087954, -0.316027, -0.944665,
		0.357406, -0.895207, 0.266205,
		-0.929798, -0.314215, 0.191687,
		40.790634, 35.085770, 33.190220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433861, 34.619518, 32.813255>,  <41.441490, 35.305721, 33.056038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433861, 34.619518, 32.813255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078861, 34.803791, 32.808788>,  <40.865864, 34.914356, 32.806110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078861, 34.803791, 32.808788>,  <41.433861, 34.619518, 32.813255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078861, 34.803791, 32.808788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114637, -0.244185, -0.962929,
		-0.446332, -0.853313, 0.269524,
		-0.887494, 0.460684, -0.011166,
		40.812614, 34.941998, 32.805439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997131, 34.117924, 32.506081>,  <41.433861, 34.619518, 32.813255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997131, 34.117924, 32.506081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824341, 34.475189, 32.456047>,  <40.720665, 34.689548, 32.426025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824341, 34.475189, 32.456047>,  <40.997131, 34.117924, 32.506081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824341, 34.475189, 32.456047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059535, -0.166630, -0.984221,
		-0.899917, -0.417716, 0.125155,
		-0.431979, 0.893167, -0.125084,
		40.694748, 34.743141, 32.418522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485302, 33.999996, 31.961473>,  <40.997131, 34.117924, 32.506081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485302, 33.999996, 31.961473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516251, 34.397778, 31.989960>,  <40.534821, 34.636448, 32.007053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516251, 34.397778, 31.989960>,  <40.485302, 33.999996, 31.961473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516251, 34.397778, 31.989960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019027, 0.069945, -0.997369,
		-0.996821, 0.078521, -0.013510,
		0.077370, 0.994456, 0.071216,
		40.539463, 34.696114, 32.011326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066086, 33.479538, 32.033810>,  <40.485302, 33.999996, 31.961473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066086, 33.479538, 32.033810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705948, 33.378468, 31.892080>,  <40.489864, 33.317825, 31.807043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705948, 33.378468, 31.892080>,  <41.066086, 33.479538, 32.033810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705948, 33.378468, 31.892080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416388, 0.263462, 0.870177,
		-0.126521, 0.930991, -0.342417,
		-0.900341, -0.252674, -0.354320,
		40.435844, 33.302666, 31.785784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327202, 33.168053, 32.737164>,  <41.066086, 33.479538, 32.033810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327202, 33.168053, 32.737164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650719, 33.391468, 32.663525>,  <41.844830, 33.525517, 32.619339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650719, 33.391468, 32.663525>,  <41.327202, 33.168053, 32.737164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650719, 33.391468, 32.663525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478759, -0.443528, 0.757676,
		0.341537, -0.700941, -0.626126,
		0.808790, 0.558538, -0.184101,
		41.893356, 33.559029, 32.608295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992908, 32.865681, 32.670124>,  <41.327202, 33.168053, 32.737164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992908, 32.865681, 32.670124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040516, 33.223118, 32.843250>,  <42.069080, 33.437580, 32.947124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040516, 33.223118, 32.843250>,  <41.992908, 32.865681, 32.670124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040516, 33.223118, 32.843250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377907, -0.443875, 0.812503,
		0.918162, 0.066861, -0.390524,
		0.119019, 0.893591, 0.432816,
		42.076221, 33.491196, 32.973095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581200, 32.946636, 33.138863>,  <41.992908, 32.865681, 32.670124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581200, 32.946636, 33.138863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349972, 33.247528, 33.265350>,  <42.211235, 33.428062, 33.341244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349972, 33.247528, 33.265350>,  <42.581200, 32.946636, 33.138863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349972, 33.247528, 33.265350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169188, -0.268614, 0.948273,
		0.798256, 0.601666, 0.028009,
		-0.578068, 0.752226, 0.316217,
		42.176552, 33.473194, 33.360214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889313, 33.502148, 33.623211>,  <42.581200, 32.946636, 33.138863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889313, 33.502148, 33.623211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497265, 33.460258, 33.690620>,  <42.262035, 33.435127, 33.731064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497265, 33.460258, 33.690620>,  <42.889313, 33.502148, 33.623211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497265, 33.460258, 33.690620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192717, -0.300508, 0.934107,
		-0.047176, 0.948013, 0.314715,
		-0.980120, -0.104718, 0.168522,
		42.203228, 33.428844, 33.741177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591995, 34.033077, 34.103725>,  <42.889313, 33.502148, 33.623211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591995, 34.033077, 34.103725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423840, 33.670280, 34.093639>,  <42.322945, 33.452602, 34.087585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423840, 33.670280, 34.093639>,  <42.591995, 34.033077, 34.103725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423840, 33.670280, 34.093639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380715, -0.201553, 0.902459,
		-0.823606, 0.369786, 0.430037,
		-0.420392, -0.906992, -0.025217,
		42.297722, 33.398182, 34.086075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904873, 34.768208, 33.976898>,  <42.591995, 34.033077, 34.103725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904873, 34.768208, 33.976898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923717, 34.572620, 34.325310>,  <42.935024, 34.455269, 34.534355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923717, 34.572620, 34.325310>,  <42.904873, 34.768208, 33.976898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923717, 34.572620, 34.325310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487468, -0.749859, -0.447310,
		0.871869, 0.445671, 0.203031,
		0.047108, -0.488967, 0.871029,
		42.937851, 34.425930, 34.586620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455917, 35.460644, 34.193409>,  <42.904873, 34.768208, 33.976898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455917, 35.460644, 34.193409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565384, 35.829269, 34.083267>,  <42.631065, 36.050446, 34.017181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565384, 35.829269, 34.083267>,  <42.455917, 35.460644, 34.193409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565384, 35.829269, 34.083267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912439, -0.158196, 0.377399,
		0.304238, -0.354529, -0.884166,
		0.273670, 0.921566, -0.275357,
		42.647484, 36.105740, 34.000660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036644, 35.444553, 33.780128>,  <42.455917, 35.460644, 34.193409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036644, 35.444553, 33.780128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010914, 35.810188, 33.940281>,  <42.995476, 36.029568, 34.036373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010914, 35.810188, 33.940281>,  <43.036644, 35.444553, 33.780128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010914, 35.810188, 33.940281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920525, -0.100576, 0.377516,
		0.385351, 0.392849, -0.834969,
		-0.064329, 0.914086, 0.400385,
		42.991615, 36.084415, 34.060398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587444, 35.837811, 33.614098>,  <43.036644, 35.444553, 33.780128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587444, 35.837811, 33.614098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487469, 35.966446, 33.979416>,  <43.427483, 36.043629, 34.198608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487469, 35.966446, 33.979416>,  <43.587444, 35.837811, 33.614098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487469, 35.966446, 33.979416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937680, -0.154794, 0.311119,
		0.241425, 0.934141, -0.262857,
		-0.249940, 0.321588, 0.913297,
		43.412487, 36.062923, 34.253407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090260, 36.367138, 33.833794>,  <43.587444, 35.837811, 33.614098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090260, 36.367138, 33.833794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959370, 36.205872, 34.175644>,  <43.880836, 36.109112, 34.380753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959370, 36.205872, 34.175644>,  <44.090260, 36.367138, 33.833794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959370, 36.205872, 34.175644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941107, -0.220484, 0.256328,
		0.085087, 0.888168, 0.451573,
		-0.327227, -0.403169, 0.854621,
		43.861202, 36.084923, 34.432030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445934, 36.686642, 34.328629>,  <44.090260, 36.367138, 33.833794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445934, 36.686642, 34.328629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339348, 36.325432, 34.463413>,  <44.275394, 36.108707, 34.544285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339348, 36.325432, 34.463413>,  <44.445934, 36.686642, 34.328629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339348, 36.325432, 34.463413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963091, -0.235636, 0.130117,
		-0.038099, 0.359195, 0.932485,
		-0.266465, -0.903025, 0.336960,
		44.259407, 36.054523, 34.564503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869968, 36.394691, 34.974056>,  <44.445934, 36.686642, 34.328629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869968, 36.394691, 34.974056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717354, 36.111366, 34.736492>,  <44.625786, 35.941372, 34.593956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717354, 36.111366, 34.736492>,  <44.869968, 36.394691, 34.974056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717354, 36.111366, 34.736492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904001, -0.420014, -0.079818,
		-0.192913, -0.567345, 0.800565,
		-0.381532, -0.708313, -0.593907,
		44.602894, 35.898872, 34.558319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080273, 35.832241, 35.266842>,  <44.869968, 36.394691, 34.974056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080273, 35.832241, 35.266842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032181, 35.763847, 34.875679>,  <45.003326, 35.722809, 34.640980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032181, 35.763847, 34.875679>,  <45.080273, 35.832241, 35.266842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032181, 35.763847, 34.875679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928691, -0.367478, -0.049924,
		-0.350824, -0.914179, 0.202978,
		-0.120229, -0.170989, -0.977910,
		44.996113, 35.712551, 34.582306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086159, 35.100174, 35.087788>,  <45.080273, 35.832241, 35.266842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086159, 35.100174, 35.087788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234554, 35.367085, 34.829453>,  <45.323589, 35.527233, 34.674450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234554, 35.367085, 34.829453>,  <45.086159, 35.100174, 35.087788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234554, 35.367085, 34.829453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905052, -0.415552, 0.090538,
		-0.207964, -0.618105, -0.758088,
		0.370987, 0.667280, -0.645837,
		45.345852, 35.567268, 34.635700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460365, 34.782982, 34.478645>,  <45.086159, 35.100174, 35.087788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460365, 34.782982, 34.478645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614536, 35.144455, 34.553276>,  <45.707039, 35.361340, 34.598053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614536, 35.144455, 34.553276>,  <45.460365, 34.782982, 34.478645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614536, 35.144455, 34.553276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922596, -0.380960, -0.060710,
		0.016216, 0.195535, -0.980563,
		0.385426, 0.903679, 0.186577,
		45.730164, 35.415558, 34.609249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916378, 34.881275, 33.944473>,  <45.460365, 34.782982, 34.478645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916378, 34.881275, 33.944473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030258, 35.059120, 34.284184>,  <46.098587, 35.165829, 34.488010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030258, 35.059120, 34.284184>,  <45.916378, 34.881275, 33.944473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030258, 35.059120, 34.284184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904339, -0.418449, -0.084089,
		0.317991, 0.791972, -0.521212,
		0.284696, 0.444613, 0.849275,
		46.115665, 35.192505, 34.538967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496201, 35.102386, 33.712978>,  <45.916378, 34.881275, 33.944473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496201, 35.102386, 33.712978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504906, 35.114147, 34.112709>,  <46.510128, 35.121204, 34.352547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504906, 35.114147, 34.112709>,  <46.496201, 35.102386, 33.712978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504906, 35.114147, 34.112709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874683, -0.484672, -0.004787,
		0.484206, 0.874202, -0.036263,
		0.021761, 0.029400, 0.999331,
		46.511433, 35.122967, 34.412510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.201595, 35.177170, 33.898102>,  <46.496201, 35.102386, 33.712978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.201595, 35.177170, 33.898102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013229, 35.080063, 34.237350>,  <46.900208, 35.021801, 34.440899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.013229, 35.080063, 34.237350>,  <47.201595, 35.177170, 33.898102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.013229, 35.080063, 34.237350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773851, -0.575254, 0.265023,
		0.423546, 0.781120, 0.458760,
		-0.470918, -0.242763, 0.848117,
		46.871952, 35.007233, 34.491787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.667995, 35.412781, 34.461727>,  <47.201595, 35.177170, 33.898102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.667995, 35.412781, 34.461727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419460, 35.111679, 34.548717>,  <47.270340, 34.931019, 34.600914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419460, 35.111679, 34.548717>,  <47.667995, 35.412781, 34.461727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.419460, 35.111679, 34.548717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769191, -0.533118, 0.352322,
		-0.149270, 0.386195, 0.910259,
		-0.621340, -0.752754, 0.217479,
		47.233059, 34.885853, 34.613960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.703861, 35.289433, 35.232212>,  <47.667995, 35.412781, 34.461727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.703861, 35.289433, 35.232212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637444, 34.982025, 34.985046>,  <47.597595, 34.797581, 34.836746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637444, 34.982025, 34.985046>,  <47.703861, 35.289433, 35.232212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637444, 34.982025, 34.985046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807558, -0.465581, 0.362058,
		-0.565935, -0.438883, 0.697926,
		-0.166040, -0.768516, -0.617911,
		47.587631, 34.751469, 34.799671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.609577, 30.025023, 25.654827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.250664, 30.201462, 25.661995>,  <33.035316, 30.307325, 25.666296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.250664, 30.201462, 25.661995>,  <33.609577, 30.025023, 25.654827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250664, 30.201462, 25.661995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311400, 0.603628, 0.733936,
		0.312921, 0.664127, -0.678982,
		-0.897279, 0.441099, 0.017921,
		32.981480, 30.333792, 25.667372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732029, 30.780798, 25.728910>,  <33.609577, 30.025023, 25.654827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732029, 30.780798, 25.728910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.361855, 30.702839, 25.858887>,  <33.139751, 30.656063, 25.936872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.361855, 30.702839, 25.858887>,  <33.732029, 30.780798, 25.728910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361855, 30.702839, 25.858887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240711, 0.359888, 0.901409,
		-0.292624, 0.912412, -0.286139,
		-0.925435, -0.194897, 0.324940,
		33.084225, 30.644369, 25.956369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685230, 31.278131, 26.058182>,  <33.732029, 30.780798, 25.728910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685230, 31.278131, 26.058182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375755, 31.066969, 26.198309>,  <33.190071, 30.940271, 26.282385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375755, 31.066969, 26.198309>,  <33.685230, 31.278131, 26.058182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375755, 31.066969, 26.198309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076850, 0.470650, 0.878967,
		-0.628887, 0.706969, -0.323568,
		-0.773689, -0.527905, 0.350316,
		33.143650, 30.908598, 26.303404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252895, 31.764154, 26.286762>,  <33.685230, 31.278131, 26.058182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252895, 31.764154, 26.286762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224079, 31.420570, 26.489544>,  <33.206791, 31.214420, 26.611212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224079, 31.420570, 26.489544>,  <33.252895, 31.764154, 26.286762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224079, 31.420570, 26.489544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304101, 0.465157, 0.831355,
		-0.949912, 0.214054, 0.227701,
		-0.072038, -0.858959, 0.506952,
		33.202469, 31.162882, 26.641630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951450, 32.012978, 26.920549>,  <33.252895, 31.764154, 26.286762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951450, 32.012978, 26.920549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053909, 31.644163, 27.036644>,  <33.115387, 31.422874, 27.106300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053909, 31.644163, 27.036644>,  <32.951450, 32.012978, 26.920549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053909, 31.644163, 27.036644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293196, 0.360218, 0.885595,
		-0.921099, -0.141748, 0.362607,
		0.256149, -0.922036, 0.290236,
		33.130753, 31.367552, 27.123714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599346, 31.983887, 27.469311>,  <32.951450, 32.012978, 26.920549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599346, 31.983887, 27.469311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.899708, 31.721653, 27.501198>,  <33.079926, 31.564314, 27.520330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.899708, 31.721653, 27.501198>,  <32.599346, 31.983887, 27.469311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899708, 31.721653, 27.501198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193351, 0.333660, 0.922652,
		-0.631474, -0.677408, 0.377305,
		0.750903, -0.655583, 0.079720,
		33.124977, 31.524979, 27.525114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599010, 31.729759, 28.141220>,  <32.599346, 31.983887, 27.469311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599010, 31.729759, 28.141220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.965145, 31.637688, 28.009058>,  <33.184826, 31.582445, 27.929760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.965145, 31.637688, 28.009058>,  <32.599010, 31.729759, 28.141220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965145, 31.637688, 28.009058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385250, 0.261780, 0.884903,
		-0.117195, -0.937277, 0.328295,
		0.915341, -0.230182, -0.330406,
		33.239746, 31.568634, 27.909937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887043, 31.457041, 28.797747>,  <32.599010, 31.729759, 28.141220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887043, 31.457041, 28.797747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.192451, 31.528744, 28.549583>,  <33.375694, 31.571766, 28.400684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.192451, 31.528744, 28.549583>,  <32.887043, 31.457041, 28.797747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192451, 31.528744, 28.549583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505359, 0.432273, 0.746828,
		0.402056, -0.883747, 0.239463,
		0.763521, 0.179252, -0.620407,
		33.421505, 31.582521, 28.363461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452930, 31.387581, 29.228802>,  <32.887043, 31.457041, 28.797747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452930, 31.387581, 29.228802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586357, 31.580723, 28.904928>,  <33.666412, 31.696608, 28.710604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586357, 31.580723, 28.904928>,  <33.452930, 31.387581, 29.228802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586357, 31.580723, 28.904928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570536, 0.580330, 0.581124,
		0.750483, -0.655794, -0.081912,
		0.333562, 0.482858, -0.809682,
		33.686424, 31.725580, 28.662024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134605, 31.233631, 29.069887>,  <33.452930, 31.387581, 29.228802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134605, 31.233631, 29.069887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066902, 31.595081, 28.912500>,  <34.026279, 31.811951, 28.818068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066902, 31.595081, 28.912500>,  <34.134605, 31.233631, 29.069887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066902, 31.595081, 28.912500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719276, 0.386186, 0.577497,
		0.673792, -0.185268, -0.715319,
		-0.169255, 0.903624, -0.393468,
		34.016125, 31.866169, 28.794460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884033, 31.449520, 29.023422>,  <34.134605, 31.233631, 29.069887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884033, 31.449520, 29.023422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.646587, 31.770956, 29.006182>,  <34.504120, 31.963818, 28.995836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.646587, 31.770956, 29.006182>,  <34.884033, 31.449520, 29.023422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646587, 31.770956, 29.006182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582930, 0.466306, 0.665395,
		0.554805, 0.369865, -0.745246,
		-0.593619, 0.803591, -0.043103,
		34.468502, 32.012032, 28.993250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351952, 31.978016, 28.878162>,  <34.884033, 31.449520, 29.023422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351952, 31.978016, 28.878162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.032043, 32.134876, 29.059969>,  <34.840099, 32.228992, 29.169054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.032043, 32.134876, 29.059969>,  <35.351952, 31.978016, 28.878162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032043, 32.134876, 29.059969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592835, 0.396850, 0.700754,
		0.094427, 0.829896, -0.549870,
		-0.799769, 0.392152, 0.454518,
		34.792114, 32.252522, 29.196325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621178, 32.585148, 29.106745>,  <35.351952, 31.978016, 28.878162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621178, 32.585148, 29.106745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287785, 32.537041, 29.322464>,  <35.087749, 32.508179, 29.451895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287785, 32.537041, 29.322464>,  <35.621178, 32.585148, 29.106745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287785, 32.537041, 29.322464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406822, 0.526891, 0.746245,
		-0.373898, 0.841381, -0.390229,
		-0.833484, -0.120266, 0.539296,
		35.037739, 32.500961, 29.484253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395103, 33.216351, 29.328659>,  <35.621178, 32.585148, 29.106745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395103, 33.216351, 29.328659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202633, 32.990875, 29.597204>,  <35.087151, 32.855591, 29.758331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202633, 32.990875, 29.597204>,  <35.395103, 33.216351, 29.328659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202633, 32.990875, 29.597204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370701, 0.563166, 0.738529,
		-0.794387, 0.604237, -0.062023,
		-0.481175, -0.563686, 0.671363,
		35.058281, 32.821770, 29.798613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096737, 33.677578, 29.858871>,  <35.395103, 33.216351, 29.328659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096737, 33.677578, 29.858871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084785, 33.321838, 30.041374>,  <35.077614, 33.108395, 30.150875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084785, 33.321838, 30.041374>,  <35.096737, 33.677578, 29.858871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084785, 33.321838, 30.041374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328610, 0.422348, 0.844771,
		-0.943993, 0.175166, 0.279631,
		-0.029874, -0.889348, 0.456255,
		35.075825, 33.055035, 30.178251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743092, 33.810051, 30.470257>,  <35.096737, 33.677578, 29.858871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743092, 33.810051, 30.470257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.944462, 33.473164, 30.547443>,  <35.065285, 33.271030, 30.593756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.944462, 33.473164, 30.547443>,  <34.743092, 33.810051, 30.470257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944462, 33.473164, 30.547443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381400, 0.417005, 0.825010,
		-0.775303, -0.341734, 0.531152,
		0.503427, -0.842214, 0.192968,
		35.095490, 33.220501, 30.605333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713604, 33.702885, 31.218864>,  <34.743092, 33.810051, 30.470257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713604, 33.702885, 31.218864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.032814, 33.488541, 31.108587>,  <35.224342, 33.359936, 31.042421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.032814, 33.488541, 31.108587>,  <34.713604, 33.702885, 31.218864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032814, 33.488541, 31.108587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444664, 0.214849, 0.869548,
		-0.406723, -0.816514, 0.409733,
		0.798029, -0.535858, -0.275690,
		35.272224, 33.327782, 31.025881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958771, 33.358761, 31.879253>,  <34.713604, 33.702885, 31.218864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958771, 33.358761, 31.879253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254009, 33.372173, 31.609711>,  <35.431152, 33.380219, 31.447985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254009, 33.372173, 31.609711>,  <34.958771, 33.358761, 31.879253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254009, 33.372173, 31.609711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636443, 0.296900, 0.711892,
		0.223936, -0.954320, 0.197804,
		0.738101, 0.033528, -0.673857,
		35.475441, 33.382233, 31.407555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501202, 33.187675, 32.302654>,  <34.958771, 33.358761, 31.879253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501202, 33.187675, 32.302654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666439, 33.354092, 31.978615>,  <35.765579, 33.453941, 31.784191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666439, 33.354092, 31.978615>,  <35.501202, 33.187675, 32.302654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666439, 33.354092, 31.978615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669136, 0.464746, 0.579887,
		0.617748, -0.781614, -0.086406,
		0.413091, 0.416041, -0.810102,
		35.790367, 33.478905, 31.735584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275253, 33.152073, 32.425369>,  <35.501202, 33.187675, 32.302654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275253, 33.152073, 32.425369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227558, 33.427048, 32.138813>,  <36.198940, 33.592033, 31.966881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227558, 33.427048, 32.138813>,  <36.275253, 33.152073, 32.425369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227558, 33.427048, 32.138813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640585, 0.604536, 0.473485,
		0.758573, -0.402448, -0.512447,
		-0.119239, 0.687439, -0.716387,
		36.191788, 33.633278, 31.923897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947884, 33.500111, 32.398277>,  <36.275253, 33.152073, 32.425369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947884, 33.500111, 32.398277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719585, 33.779858, 32.226166>,  <36.582607, 33.947704, 32.122898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719585, 33.779858, 32.226166>,  <36.947884, 33.500111, 32.398277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719585, 33.779858, 32.226166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651124, 0.704729, 0.281769,
		0.500290, -0.119348, -0.857593,
		-0.570742, 0.699366, -0.430280,
		36.548363, 33.989666, 32.097080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461754, 34.006950, 32.130402>,  <36.947884, 33.500111, 32.398277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461754, 34.006950, 32.130402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104385, 34.186245, 32.142342>,  <36.889965, 34.293823, 32.149506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104385, 34.186245, 32.142342>,  <37.461754, 34.006950, 32.130402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104385, 34.186245, 32.142342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439719, 0.858968, 0.262337,
		0.091948, 0.247502, -0.964514,
		-0.893417, 0.448236, 0.029851,
		36.836361, 34.320717, 32.151299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042347, 33.863708, 31.706463>,  <37.461754, 34.006950, 32.130402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042347, 33.863708, 31.706463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363216, 33.654823, 31.822266>,  <38.555737, 33.529491, 31.891747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363216, 33.654823, 31.822266>,  <38.042347, 33.863708, 31.706463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363216, 33.654823, 31.822266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029918, -0.449096, -0.892982,
		0.596344, 0.724986, -0.344628,
		0.802171, -0.522214, 0.289506,
		38.603867, 33.498158, 31.909117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523552, 33.862202, 31.151182>,  <38.042347, 33.863708, 31.706463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523552, 33.862202, 31.151182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601185, 33.540466, 31.375814>,  <38.647766, 33.347424, 31.510593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601185, 33.540466, 31.375814>,  <38.523552, 33.862202, 31.151182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601185, 33.540466, 31.375814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014858, -0.574812, -0.818151,
		0.980873, 0.150444, -0.123511,
		0.194082, -0.804337, 0.561582,
		38.659409, 33.299164, 31.544289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186626, 33.571457, 30.904287>,  <38.523552, 33.862202, 31.151182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186626, 33.571457, 30.904287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.997742, 33.288452, 31.114599>,  <38.884411, 33.118649, 31.240786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.997742, 33.288452, 31.114599>,  <39.186626, 33.571457, 30.904287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997742, 33.288452, 31.114599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000742, -0.596152, -0.802871,
		0.881483, -0.379518, 0.280986,
		-0.472214, -0.707509, 0.525780,
		38.856079, 33.076199, 31.272333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525570, 32.833412, 30.719288>,  <39.186626, 33.571457, 30.904287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525570, 32.833412, 30.719288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.163158, 32.774315, 30.877922>,  <38.945709, 32.738857, 30.973103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.163158, 32.774315, 30.877922>,  <39.525570, 32.833412, 30.719288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163158, 32.774315, 30.877922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201324, -0.673802, -0.710956,
		0.372259, -0.723991, 0.580742,
		-0.906031, -0.147743, 0.396586,
		38.891350, 32.729992, 30.996899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348541, 32.179413, 30.521215>,  <39.525570, 32.833412, 30.719288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348541, 32.179413, 30.521215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995083, 32.322071, 30.642527>,  <38.783009, 32.407665, 30.715313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995083, 32.322071, 30.642527>,  <39.348541, 32.179413, 30.521215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995083, 32.322071, 30.642527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450167, -0.469427, -0.759597,
		-0.128539, -0.807739, 0.575356,
		-0.883645, 0.356644, 0.303277,
		38.729988, 32.429066, 30.733509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989414, 31.631140, 30.451080>,  <39.348541, 32.179413, 30.521215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989414, 31.631140, 30.451080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715801, 31.922392, 30.433517>,  <38.551632, 32.097141, 30.422979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715801, 31.922392, 30.433517>,  <38.989414, 31.631140, 30.451080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715801, 31.922392, 30.433517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454735, -0.472710, -0.754825,
		-0.570367, -0.496357, 0.654455,
		-0.684030, 0.728131, -0.043908,
		38.510593, 32.140831, 30.420345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419632, 31.216722, 30.261961>,  <38.989414, 31.631140, 30.451080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419632, 31.216722, 30.261961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340706, 31.599184, 30.175394>,  <38.293350, 31.828661, 30.123453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340706, 31.599184, 30.175394>,  <38.419632, 31.216722, 30.261961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340706, 31.599184, 30.175394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598681, -0.292339, -0.745734,
		-0.776303, -0.017580, 0.630114,
		-0.197317, 0.956153, -0.216419,
		38.281509, 31.886030, 30.110468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661545, 31.407728, 30.233656>,  <38.419632, 31.216722, 30.261961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661545, 31.407728, 30.233656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791462, 31.720762, 30.021217>,  <37.869411, 31.908583, 29.893753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791462, 31.720762, 30.021217>,  <37.661545, 31.407728, 30.233656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791462, 31.720762, 30.021217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428876, -0.378621, -0.820190,
		-0.842954, 0.494171, 0.212658,
		0.324797, 0.782586, -0.531098,
		37.888901, 31.955538, 29.861887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057758, 31.577568, 29.842260>,  <37.661545, 31.407728, 30.233656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057758, 31.577568, 29.842260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371498, 31.757366, 29.671263>,  <37.559742, 31.865244, 29.568665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371498, 31.757366, 29.671263>,  <37.057758, 31.577568, 29.842260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371498, 31.757366, 29.671263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348946, -0.250062, -0.903164,
		-0.512867, 0.857569, -0.039287,
		0.784350, 0.449494, -0.427494,
		37.606804, 31.892214, 29.543015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756798, 32.017715, 29.431414>,  <37.057758, 31.577568, 29.842260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756798, 32.017715, 29.431414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125931, 31.952686, 29.291725>,  <37.347408, 31.913670, 29.207912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125931, 31.952686, 29.291725>,  <36.756798, 32.017715, 29.431414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125931, 31.952686, 29.291725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367114, -0.096568, -0.925150,
		0.116680, 0.981959, -0.148799,
		0.922829, -0.162573, -0.349223,
		37.402779, 31.903915, 29.186958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795433, 32.291439, 28.802803>,  <36.756798, 32.017715, 29.431414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795433, 32.291439, 28.802803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100330, 32.034214, 28.773279>,  <37.283268, 31.879879, 28.755564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100330, 32.034214, 28.773279>,  <36.795433, 32.291439, 28.802803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100330, 32.034214, 28.773279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289377, -0.236546, -0.927527,
		0.579000, 0.728364, -0.366394,
		0.762246, -0.643065, -0.073811,
		37.329002, 31.841295, 28.751135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936119, 32.328091, 28.081615>,  <36.795433, 32.291439, 28.802803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936119, 32.328091, 28.081615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115589, 31.992111, 28.203714>,  <37.223270, 31.790524, 28.276974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115589, 31.992111, 28.203714>,  <36.936119, 32.328091, 28.081615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115589, 31.992111, 28.203714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166569, -0.414164, -0.894831,
		0.878037, 0.350640, -0.325733,
		0.448671, -0.839952, 0.305246,
		37.250191, 31.740126, 28.295288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427948, 32.099998, 27.561214>,  <36.936119, 32.328091, 28.081615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427948, 32.099998, 27.561214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349209, 31.762167, 27.760387>,  <37.301968, 31.559467, 27.879890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349209, 31.762167, 27.760387>,  <37.427948, 32.099998, 27.561214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349209, 31.762167, 27.760387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269387, -0.441732, -0.855748,
		0.942700, -0.302587, -0.140566,
		-0.196846, -0.844580, 0.497933,
		37.290154, 31.508793, 27.909767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835880, 31.615271, 27.242224>,  <37.427948, 32.099998, 27.561214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835880, 31.615271, 27.242224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565220, 31.391356, 27.433546>,  <37.402824, 31.257006, 27.548340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565220, 31.391356, 27.433546>,  <37.835880, 31.615271, 27.242224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565220, 31.391356, 27.433546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228819, -0.457572, -0.859226,
		0.699845, -0.690843, 0.181527,
		-0.676652, -0.559789, 0.478308,
		37.362225, 31.223419, 27.577038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918941, 30.978775, 26.920135>,  <37.835880, 31.615271, 27.242224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918941, 30.978775, 26.920135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566231, 30.978893, 27.108803>,  <37.354603, 30.978964, 27.222004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566231, 30.978893, 27.108803>,  <37.918941, 30.978775, 26.920135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566231, 30.978893, 27.108803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381311, -0.589044, -0.712481,
		0.277622, -0.808101, 0.519518,
		-0.881775, 0.000297, 0.471669,
		37.301697, 30.978983, 27.250303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743038, 30.261320, 26.912867>,  <37.918941, 30.978775, 26.920135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743038, 30.261320, 26.912867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414333, 30.485531, 26.953869>,  <37.217110, 30.620058, 26.978470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414333, 30.485531, 26.953869>,  <37.743038, 30.261320, 26.912867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414333, 30.485531, 26.953869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413243, -0.462376, -0.784499,
		-0.392336, -0.687037, 0.611599,
		-0.821768, 0.560526, 0.102507,
		37.167805, 30.653690, 26.984619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255814, 29.853277, 26.699745>,  <37.743038, 30.261320, 26.912867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255814, 29.853277, 26.699745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055130, 30.199001, 26.685541>,  <36.934719, 30.406435, 26.677019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055130, 30.199001, 26.685541>,  <37.255814, 29.853277, 26.699745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055130, 30.199001, 26.685541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644613, -0.400924, -0.650949,
		-0.576859, -0.303694, 0.758290,
		-0.501706, 0.864309, -0.035511,
		36.904617, 30.458294, 26.674889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563187, 29.714294, 26.698746>,  <37.255814, 29.853277, 26.699745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563187, 29.714294, 26.698746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595226, 30.068911, 26.516481>,  <36.614452, 30.281681, 26.407122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595226, 30.068911, 26.516481>,  <36.563187, 29.714294, 26.698746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595226, 30.068911, 26.516481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563745, -0.336706, -0.754201,
		-0.822055, 0.317290, 0.472813,
		0.080102, 0.886541, -0.455662,
		36.619255, 30.334873, 26.379784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.864586, 29.812687, 26.497879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070488, 30.091476, 26.298176>,  <36.194031, 30.258749, 26.178354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070488, 30.091476, 26.298176>,  <35.864586, 29.812687, 26.497879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070488, 30.091476, 26.298176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588895, -0.135777, -0.796723,
		-0.623081, 0.704127, 0.340551,
		0.514755, 0.696972, -0.499257,
		36.224915, 30.300568, 26.148399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345100, 30.194056, 26.196770>,  <35.864586, 29.812687, 26.497879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345100, 30.194056, 26.196770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671108, 30.260117, 25.974607>,  <35.866711, 30.299753, 25.841311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671108, 30.260117, 25.974607>,  <35.345100, 30.194056, 26.196770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671108, 30.260117, 25.974607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549328, -0.084751, -0.831298,
		-0.184361, 0.982620, 0.021649,
		0.815015, 0.165151, -0.555406,
		35.915611, 30.309662, 25.807985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157650, 30.657192, 25.662498>,  <35.345100, 30.194056, 26.196770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157650, 30.657192, 25.662498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494267, 30.514036, 25.500647>,  <35.696236, 30.428143, 25.403536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494267, 30.514036, 25.500647>,  <35.157650, 30.657192, 25.662498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494267, 30.514036, 25.500647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489343, -0.187779, -0.851635,
		0.228812, 0.914687, -0.333155,
		0.841539, -0.357891, -0.404630,
		35.746727, 30.406670, 25.379257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142914, 30.812099, 24.929625>,  <35.157650, 30.657192, 25.662498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142914, 30.812099, 24.929625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.400719, 30.506275, 24.926666>,  <35.555401, 30.322781, 24.924891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.400719, 30.506275, 24.926666>,  <35.142914, 30.812099, 24.929625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400719, 30.506275, 24.926666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500051, -0.414174, -0.760533,
		0.578410, 0.493869, -0.649258,
		0.644509, -0.764561, -0.007398,
		35.594070, 30.276907, 24.924446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397350, 30.794086, 24.268816>,  <35.142914, 30.812099, 24.929625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397350, 30.794086, 24.268816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446918, 30.428183, 24.422625>,  <35.476658, 30.208639, 24.514910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446918, 30.428183, 24.422625>,  <35.397350, 30.794086, 24.268816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446918, 30.428183, 24.422625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406666, -0.400288, -0.821214,
		0.905134, -0.054609, -0.421605,
		0.123918, -0.914761, 0.384522,
		35.484093, 30.153755, 24.537981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655132, 30.350096, 23.727484>,  <35.397350, 30.794086, 24.268816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655132, 30.350096, 23.727484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.530991, 30.072886, 23.987759>,  <35.456505, 29.906559, 24.143925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.530991, 30.072886, 23.987759>,  <35.655132, 30.350096, 23.727484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530991, 30.072886, 23.987759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511407, -0.455279, -0.728824,
		0.801338, -0.558960, -0.213121,
		-0.310354, -0.693025, 0.650688,
		35.437885, 29.864977, 24.182964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789711, 29.763821, 23.493990>,  <35.655132, 30.350096, 23.727484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789711, 29.763821, 23.493990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506020, 29.659817, 23.756100>,  <35.335804, 29.597414, 23.913366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506020, 29.659817, 23.756100>,  <35.789711, 29.763821, 23.493990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506020, 29.659817, 23.756100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329616, -0.699341, -0.634252,
		0.623175, -0.665819, 0.410289,
		-0.709230, -0.260012, 0.655277,
		35.293251, 29.581814, 23.952682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865147, 29.037012, 23.585468>,  <35.789711, 29.763821, 23.493990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865147, 29.037012, 23.585468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484703, 29.124914, 23.672276>,  <35.256435, 29.177656, 23.724360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484703, 29.124914, 23.672276>,  <35.865147, 29.037012, 23.585468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484703, 29.124914, 23.672276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308103, -0.724050, -0.617110,
		0.021519, -0.653803, 0.756359,
		-0.951110, 0.219756, 0.217020,
		35.199371, 29.190842, 23.737381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545731, 28.399645, 23.639078>,  <35.865147, 29.037012, 23.585468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545731, 28.399645, 23.639078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250168, 28.663485, 23.584028>,  <35.072830, 28.821789, 23.550999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250168, 28.663485, 23.584028>,  <35.545731, 28.399645, 23.639078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250168, 28.663485, 23.584028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466772, -0.648388, -0.601429,
		-0.485937, -0.380163, 0.786983,
		-0.738912, 0.659598, -0.137626,
		35.028496, 28.861364, 23.542740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057453, 27.962620, 23.668859>,  <35.545731, 28.399645, 23.639078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057453, 27.962620, 23.668859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.908009, 28.275101, 23.468803>,  <34.818340, 28.462589, 23.348770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.908009, 28.275101, 23.468803>,  <35.057453, 27.962620, 23.668859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908009, 28.275101, 23.468803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306937, -0.612928, -0.728086,
		-0.875330, -0.118512, 0.468778,
		-0.373614, 0.781200, -0.500139,
		34.795925, 28.509460, 23.318762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455967, 27.734192, 23.396709>,  <35.057453, 27.962620, 23.668859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455967, 27.734192, 23.396709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515507, 28.060329, 23.172903>,  <34.551231, 28.256012, 23.038620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515507, 28.060329, 23.172903>,  <34.455967, 27.734192, 23.396709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515507, 28.060329, 23.172903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486339, -0.432295, -0.759339,
		-0.860998, 0.385143, 0.332185,
		0.148853, 0.815344, -0.559515,
		34.560162, 28.304934, 23.005049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836155, 27.798143, 23.119982>,  <34.455967, 27.734192, 23.396709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836155, 27.798143, 23.119982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074997, 28.023357, 22.891438>,  <34.218304, 28.158485, 22.754311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074997, 28.023357, 22.891438>,  <33.836155, 27.798143, 23.119982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074997, 28.023357, 22.891438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391119, -0.417522, -0.820184,
		-0.700348, 0.713209, -0.029092,
		0.597109, 0.563036, -0.571360,
		34.254131, 28.192268, 22.720030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474194, 27.847397, 22.500425>,  <33.836155, 27.798143, 23.119982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474194, 27.847397, 22.500425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842167, 27.963070, 22.394520>,  <34.062950, 28.032473, 22.330976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842167, 27.963070, 22.394520>,  <33.474194, 27.847397, 22.500425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842167, 27.963070, 22.394520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101091, -0.477511, -0.872791,
		-0.378824, 0.829673, -0.410044,
		0.919931, 0.289182, -0.264765,
		34.118145, 28.049824, 22.315090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356197, 28.083872, 21.794516>,  <33.474194, 27.847397, 22.500425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356197, 28.083872, 21.794516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752605, 28.041435, 21.827084>,  <33.990448, 28.015974, 21.846624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752605, 28.041435, 21.827084>,  <33.356197, 28.083872, 21.794516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752605, 28.041435, 21.827084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053588, -0.242799, -0.968595,
		0.122528, 0.964258, -0.234933,
		0.991017, -0.106091, 0.081422,
		34.049911, 28.009607, 21.851511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653027, 28.423523, 21.204134>,  <33.356197, 28.083872, 21.794516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653027, 28.423523, 21.204134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926476, 28.149717, 21.305412>,  <34.090546, 27.985434, 21.366179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926476, 28.149717, 21.305412>,  <33.653027, 28.423523, 21.204134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926476, 28.149717, 21.305412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063206, -0.290090, -0.954910,
		0.727097, 0.668798, -0.155046,
		0.683619, -0.684512, 0.253196,
		34.131561, 27.944365, 21.381371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163414, 28.500662, 20.707174>,  <33.653027, 28.423523, 21.204134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163414, 28.500662, 20.707174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.241215, 28.146681, 20.876423>,  <34.287895, 27.934292, 20.977972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.241215, 28.146681, 20.876423>,  <34.163414, 28.500662, 20.707174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241215, 28.146681, 20.876423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005301, -0.430405, -0.902620,
		0.980888, 0.177802, -0.079022,
		0.194499, -0.884951, 0.423121,
		34.299564, 27.881195, 21.003359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779346, 28.241047, 20.292856>,  <34.163414, 28.500662, 20.707174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779346, 28.241047, 20.292856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587917, 27.937550, 20.469616>,  <34.473061, 27.755451, 20.575672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587917, 27.937550, 20.469616>,  <34.779346, 28.241047, 20.292856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587917, 27.937550, 20.469616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124364, -0.439625, -0.889530,
		0.869196, -0.480661, 0.116032,
		-0.478573, -0.758745, 0.441898,
		34.444344, 27.709927, 20.602184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154640, 27.570705, 20.001753>,  <34.779346, 28.241047, 20.292856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154640, 27.570705, 20.001753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805019, 27.452135, 20.155720>,  <34.595245, 27.380993, 20.248100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805019, 27.452135, 20.155720>,  <35.154640, 27.570705, 20.001753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805019, 27.452135, 20.155720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243229, -0.418849, -0.874874,
		0.420560, -0.858310, 0.293997,
		-0.874053, -0.296428, 0.384917,
		34.542805, 27.363207, 20.271194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120094, 26.921181, 19.889250>,  <35.154640, 27.570705, 20.001753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120094, 26.921181, 19.889250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740013, 27.037704, 19.933535>,  <34.511963, 27.107618, 19.960106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740013, 27.037704, 19.933535>,  <35.120094, 26.921181, 19.889250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740013, 27.037704, 19.933535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220301, -0.376628, -0.899788,
		-0.220417, -0.879370, 0.422048,
		-0.950202, 0.291307, 0.110711,
		34.454952, 27.125097, 19.966747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808819, 26.385590, 19.545532>,  <35.120094, 26.921181, 19.889250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808819, 26.385590, 19.545532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546108, 26.685568, 19.577108>,  <34.388481, 26.865555, 19.596054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546108, 26.685568, 19.577108>,  <34.808819, 26.385590, 19.545532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546108, 26.685568, 19.577108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387707, -0.246030, -0.888343,
		-0.646787, -0.614045, 0.452345,
		-0.656772, 0.749946, 0.078940,
		34.349075, 26.910551, 19.600790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161484, 26.153297, 19.209940>,  <34.808819, 26.385590, 19.545532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161484, 26.153297, 19.209940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171589, 26.553165, 19.208008>,  <34.177650, 26.793087, 19.206848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171589, 26.553165, 19.208008>,  <34.161484, 26.153297, 19.209940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171589, 26.553165, 19.208008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353014, 0.004400, -0.935608,
		-0.935277, 0.025338, 0.353008,
		0.025260, 0.999669, -0.004829,
		34.179169, 26.853065, 19.206558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500927, 26.300137, 18.995548>,  <34.161484, 26.153297, 19.209940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500927, 26.300137, 18.995548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.719116, 26.630060, 18.936016>,  <33.850029, 26.828014, 18.900297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.719116, 26.630060, 18.936016>,  <33.500927, 26.300137, 18.995548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719116, 26.630060, 18.936016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284464, 0.015159, -0.958567,
		-0.788380, 0.565205, 0.242898,
		0.545469, 0.824811, -0.148830,
		33.882755, 26.877504, 18.891367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067631, 26.755264, 18.598316>,  <33.500927, 26.300137, 18.995548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067631, 26.755264, 18.598316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.466980, 26.756275, 18.575537>,  <33.706589, 26.756882, 18.561869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.466980, 26.756275, 18.575537>,  <33.067631, 26.755264, 18.598316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466980, 26.756275, 18.575537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056659, -0.065895, -0.996217,
		-0.006269, 0.997823, -0.065645,
		0.998374, 0.002526, -0.056948,
		33.766491, 26.757032, 18.558453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885265, 27.192318, 19.185999>,  <33.067631, 26.755264, 18.598316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885265, 27.192318, 19.185999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689732, 27.291370, 18.851400>,  <32.572411, 27.350801, 18.650642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689732, 27.291370, 18.851400>,  <32.885265, 27.192318, 19.185999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689732, 27.291370, 18.851400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243365, 0.882092, 0.403346,
		0.837746, 0.400741, -0.370929,
		-0.488830, 0.247630, -0.836495,
		32.543083, 27.365660, 18.600452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072212, 27.938637, 18.961517>,  <32.885265, 27.192318, 19.185999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072212, 27.938637, 18.961517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.713223, 27.835892, 18.818090>,  <32.497829, 27.774244, 18.732035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.713223, 27.835892, 18.818090>,  <33.072212, 27.938637, 18.961517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713223, 27.835892, 18.818090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402384, 0.809756, 0.427063,
		0.180653, 0.527557, -0.830089,
		-0.897470, -0.256864, -0.358565,
		32.443981, 27.758833, 18.710522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839886, 28.500626, 18.492960>,  <33.072212, 27.938637, 18.961517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839886, 28.500626, 18.492960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514374, 28.301952, 18.613668>,  <32.319065, 28.182749, 18.686092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514374, 28.301952, 18.613668>,  <32.839886, 28.500626, 18.492960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514374, 28.301952, 18.613668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254677, 0.771501, 0.583031,
		-0.522397, 0.397607, -0.754327,
		-0.813782, -0.496683, 0.301769,
		32.270241, 28.152946, 18.704199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296448, 29.008566, 18.453781>,  <32.839886, 28.500626, 18.492960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296448, 29.008566, 18.453781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.187222, 28.720413, 18.708805>,  <32.121685, 28.547522, 18.861820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.187222, 28.720413, 18.708805>,  <32.296448, 29.008566, 18.453781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187222, 28.720413, 18.708805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137632, 0.685185, 0.715248,
		-0.952098, 0.107563, -0.286250,
		-0.273068, -0.720384, 0.637559,
		32.105301, 28.504297, 18.900072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002293, 29.372707, 18.866863>,  <32.296448, 29.008566, 18.453781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002293, 29.372707, 18.866863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.994616, 29.035349, 19.081642>,  <31.990009, 28.832933, 19.210508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.994616, 29.035349, 19.081642>,  <32.002293, 29.372707, 18.866863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994616, 29.035349, 19.081642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269677, 0.521507, 0.809509,
		-0.962760, -0.129268, -0.237452,
		-0.019190, -0.843398, 0.536946,
		31.988859, 28.782330, 19.242725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403234, 29.316895, 19.197720>,  <32.002293, 29.372707, 18.866863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403234, 29.316895, 19.197720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.671724, 29.126596, 19.425097>,  <31.832819, 29.012419, 19.561523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.671724, 29.126596, 19.425097>,  <31.403234, 29.316895, 19.197720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671724, 29.126596, 19.425097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312014, 0.514284, 0.798848,
		-0.672388, -0.713568, 0.196761,
		0.671224, -0.475744, 0.568442,
		31.873091, 28.983873, 19.595629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050722, 29.157724, 19.786062>,  <31.403234, 29.316895, 19.197720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050722, 29.157724, 19.786062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.433872, 29.116034, 19.893106>,  <31.663761, 29.091019, 19.957333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.433872, 29.116034, 19.893106>,  <31.050722, 29.157724, 19.786062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433872, 29.116034, 19.893106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211939, 0.372272, 0.903601,
		-0.193804, -0.922253, 0.334500,
		0.957873, -0.104228, 0.267609,
		31.721235, 29.084764, 19.973389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027464, 28.832050, 20.436512>,  <31.050722, 29.157724, 19.786062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027464, 28.832050, 20.436512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377563, 29.024580, 20.417469>,  <31.587624, 29.140099, 20.406044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377563, 29.024580, 20.417469>,  <31.027464, 28.832050, 20.436512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377563, 29.024580, 20.417469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124194, 0.318774, 0.939659,
		0.467457, -0.816523, 0.338784,
		0.875249, 0.481325, -0.047606,
		31.640139, 29.168978, 20.403187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375555, 28.591242, 21.013599>,  <31.027464, 28.832050, 20.436512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375555, 28.591242, 21.013599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.592220, 28.909290, 20.904509>,  <31.722219, 29.100121, 20.839054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.592220, 28.909290, 20.904509>,  <31.375555, 28.591242, 21.013599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592220, 28.909290, 20.904509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163746, 0.218422, 0.962018,
		0.824492, -0.565748, -0.011887,
		0.541664, 0.795123, -0.272727,
		31.754719, 29.147827, 20.822691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833921, 28.536375, 21.408192>,  <31.375555, 28.591242, 21.013599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833921, 28.536375, 21.408192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.864975, 28.920408, 21.300703>,  <31.883606, 29.150829, 21.236210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.864975, 28.920408, 21.300703>,  <31.833921, 28.536375, 21.408192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864975, 28.920408, 21.300703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255519, 0.241371, 0.936190,
		0.963682, -0.141342, -0.226581,
		0.077633, 0.960085, -0.268720,
		31.888266, 29.208433, 21.220087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478142, 28.729446, 21.687206>,  <31.833921, 28.536375, 21.408192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478142, 28.729446, 21.687206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.262897, 29.063776, 21.643684>,  <32.133751, 29.264374, 21.617571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.262897, 29.063776, 21.643684>,  <32.478142, 28.729446, 21.687206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262897, 29.063776, 21.643684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326331, 0.325613, 0.887403,
		0.777140, 0.442013, -0.447971,
		-0.538109, 0.835823, -0.108805,
		32.101463, 29.314524, 21.611042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891033, 29.263411, 21.851265>,  <32.478142, 28.729446, 21.687206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891033, 29.263411, 21.851265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526577, 29.422718, 21.893602>,  <32.307903, 29.518303, 21.919004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526577, 29.422718, 21.893602>,  <32.891033, 29.263411, 21.851265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526577, 29.422718, 21.893602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209535, 0.226573, 0.951189,
		0.354849, 0.888845, -0.289892,
		-0.911141, 0.398270, 0.105845,
		32.253235, 29.542200, 21.925356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059174, 29.937300, 22.186531>,  <32.891033, 29.263411, 21.851265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059174, 29.937300, 22.186531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683456, 29.833067, 22.275824>,  <32.458027, 29.770527, 22.329399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683456, 29.833067, 22.275824>,  <33.059174, 29.937300, 22.186531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683456, 29.833067, 22.275824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041383, 0.559801, 0.827593,
		-0.340619, 0.786588, -0.515032,
		-0.939290, -0.260581, 0.223230,
		32.401669, 29.754892, 22.342793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854053, 30.590218, 22.304867>,  <33.059174, 29.937300, 22.186531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854053, 30.590218, 22.304867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.592350, 30.333393, 22.464720>,  <32.435329, 30.179298, 22.560631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.592350, 30.333393, 22.464720>,  <32.854053, 30.590218, 22.304867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592350, 30.333393, 22.464720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039525, 0.498671, 0.865889,
		-0.755239, 0.582309, -0.300882,
		-0.654256, -0.642061, 0.399632,
		32.396072, 30.140774, 22.584610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547123, 31.043180, 22.859215>,  <32.854053, 30.590218, 22.304867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547123, 31.043180, 22.859215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.441082, 30.664742, 22.933640>,  <32.377457, 30.437679, 22.978294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.441082, 30.664742, 22.933640>,  <32.547123, 31.043180, 22.859215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441082, 30.664742, 22.933640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277504, 0.109940, 0.954413,
		-0.923423, 0.304655, 0.233399,
		-0.265107, -0.946096, 0.186064,
		32.361549, 30.380913, 22.989458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164680, 31.070141, 23.422764>,  <32.547123, 31.043180, 22.859215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164680, 31.070141, 23.422764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279884, 30.687107, 23.426283>,  <32.349007, 30.457287, 23.428394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279884, 30.687107, 23.426283>,  <32.164680, 31.070141, 23.422764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279884, 30.687107, 23.426283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052779, 0.025046, 0.998292,
		-0.956171, -0.287055, 0.057754,
		0.288012, -0.957586, 0.008798,
		32.366287, 30.399832, 23.428923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692482, 30.696745, 23.898066>,  <32.164680, 31.070141, 23.422764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692482, 30.696745, 23.898066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036114, 30.496607, 23.854919>,  <32.242294, 30.376524, 23.829031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036114, 30.496607, 23.854919>,  <31.692482, 30.696745, 23.898066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036114, 30.496607, 23.854919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017745, -0.181502, 0.983230,
		-0.511533, -0.846588, -0.147046,
		0.859080, -0.500345, -0.107867,
		32.293839, 30.346504, 23.822559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587168, 30.097532, 24.198582>,  <31.692482, 30.696745, 23.898066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587168, 30.097532, 24.198582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985035, 30.135567, 24.182602>,  <32.223755, 30.158388, 24.173014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985035, 30.135567, 24.182602>,  <31.587168, 30.097532, 24.198582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985035, 30.135567, 24.182602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048271, -0.086876, 0.995049,
		0.091145, -0.991671, -0.091003,
		0.994667, 0.095086, -0.039951,
		32.283436, 30.164093, 24.170616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857542, 29.550655, 24.572712>,  <31.587168, 30.097532, 24.198582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857542, 29.550655, 24.572712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160976, 29.810863, 24.557932>,  <32.343037, 29.966990, 24.549065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160976, 29.810863, 24.557932>,  <31.857542, 29.550655, 24.572712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160976, 29.810863, 24.557932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128959, -0.094311, 0.987155,
		0.638682, -0.753608, -0.155434,
		0.758587, 0.650523, -0.036950,
		32.388554, 30.006020, 24.546846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389210, 29.269356, 25.053535>,  <31.857542, 29.550655, 24.572712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389210, 29.269356, 25.053535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.491116, 29.651604, 24.994364>,  <32.552258, 29.880953, 24.958860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.491116, 29.651604, 24.994364>,  <32.389210, 29.269356, 25.053535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491116, 29.651604, 24.994364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160667, 0.109021, 0.980969,
		0.953563, -0.273680, -0.125763,
		0.254761, 0.955622, -0.147930,
		32.567543, 29.938290, 24.949986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901218, 29.380089, 25.517159>,  <32.389210, 29.269356, 25.053535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901218, 29.380089, 25.517159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767990, 29.744129, 25.418545>,  <32.688053, 29.962553, 25.359377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767990, 29.744129, 25.418545>,  <32.901218, 29.380089, 25.517159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767990, 29.744129, 25.418545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135702, 0.305010, 0.942632,
		0.933087, 0.280503, -0.225092,
		-0.333066, 0.910103, -0.246536,
		32.668072, 30.017160, 25.344584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.673820, 30.618771, 28.783527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.565365, 30.969156, 28.623941>,  <37.500290, 31.179388, 28.528191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.565365, 30.969156, 28.623941>,  <37.673820, 30.618771, 28.783527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565365, 30.969156, 28.623941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434399, 0.481240, 0.761384,
		0.858941, 0.033134, -0.511002,
		-0.271143, 0.875962, -0.398963,
		37.484020, 31.231945, 28.504251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308182, 30.985748, 28.737299>,  <37.673820, 30.618771, 28.783527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308182, 30.985748, 28.737299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.001404, 31.242430, 28.739033>,  <37.817337, 31.396439, 28.740072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.001404, 31.242430, 28.739033>,  <38.308182, 30.985748, 28.737299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001404, 31.242430, 28.739033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463748, 0.549563, 0.694923,
		0.443553, 0.534974, -0.719071,
		-0.766941, 0.641703, 0.004333,
		37.771320, 31.434940, 28.740332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619930, 31.576143, 28.798664>,  <38.308182, 30.985748, 28.737299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619930, 31.576143, 28.798664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.246067, 31.676027, 28.899900>,  <38.021748, 31.735958, 28.960642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.246067, 31.676027, 28.899900>,  <38.619930, 31.576143, 28.798664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246067, 31.676027, 28.899900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355424, 0.674487, 0.647102,
		-0.009119, 0.694775, -0.719169,
		-0.934661, 0.249709, 0.253090,
		37.965668, 31.750940, 28.975828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701462, 32.323395, 28.944357>,  <38.619930, 31.576143, 28.798664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701462, 32.323395, 28.944357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363419, 32.205112, 29.122505>,  <38.160595, 32.134144, 29.229395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363419, 32.205112, 29.122505>,  <38.701462, 32.323395, 28.944357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363419, 32.205112, 29.122505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136842, 0.685685, 0.714920,
		-0.516788, 0.665129, -0.539011,
		-0.845106, -0.295703, 0.445372,
		38.109886, 32.116402, 29.256117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501629, 32.935913, 29.206442>,  <38.701462, 32.323395, 28.944357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501629, 32.935913, 29.206442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294937, 32.651398, 29.397045>,  <38.170921, 32.480690, 29.511408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294937, 32.651398, 29.397045>,  <38.501629, 32.935913, 29.206442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294937, 32.651398, 29.397045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031660, 0.540317, 0.840866,
		-0.855561, 0.449589, -0.256681,
		-0.516733, -0.711285, 0.476508,
		38.139915, 32.438011, 29.539997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153584, 33.189983, 29.761152>,  <38.501629, 32.935913, 29.206442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153584, 33.189983, 29.761152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.146633, 32.807819, 29.879065>,  <38.142464, 32.578522, 29.949812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.146633, 32.807819, 29.879065>,  <38.153584, 33.189983, 29.761152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146633, 32.807819, 29.879065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196545, 0.285810, 0.937914,
		-0.980341, 0.074235, 0.182814,
		-0.017376, -0.955407, 0.294782,
		38.141418, 32.521198, 29.967499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757538, 33.201958, 30.345797>,  <38.153584, 33.189983, 29.761152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757538, 33.201958, 30.345797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.977917, 32.869545, 30.376371>,  <38.110146, 32.670097, 30.394716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.977917, 32.869545, 30.376371>,  <37.757538, 33.201958, 30.345797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977917, 32.869545, 30.376371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114259, 0.165843, 0.979511,
		-0.826680, -0.530927, 0.186324,
		0.550949, -0.831031, 0.076436,
		38.143200, 32.620235, 30.399302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535992, 32.833447, 30.951963>,  <37.757538, 33.201958, 30.345797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535992, 32.833447, 30.951963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.915016, 32.723896, 30.886105>,  <38.142433, 32.658165, 30.846588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.915016, 32.723896, 30.886105>,  <37.535992, 32.833447, 30.951963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915016, 32.723896, 30.886105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204746, 0.124743, 0.970834,
		-0.245352, -0.953640, 0.174278,
		0.947566, -0.273879, -0.164648,
		38.199287, 32.641731, 30.836710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774796, 32.429234, 31.547007>,  <37.535992, 32.833447, 30.951963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774796, 32.429234, 31.547007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.097527, 32.561127, 31.350922>,  <38.291164, 32.640263, 31.233271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.097527, 32.561127, 31.350922>,  <37.774796, 32.429234, 31.547007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097527, 32.561127, 31.350922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446889, 0.202108, 0.871460,
		0.386428, -0.922186, 0.015710,
		0.806823, 0.329736, -0.490215,
		38.339573, 32.660046, 31.203857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198040, 32.178822, 31.994776>,  <37.774796, 32.429234, 31.547007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198040, 32.178822, 31.994776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393894, 32.442059, 31.765978>,  <38.511406, 32.599998, 31.628700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.393894, 32.442059, 31.765978>,  <38.198040, 32.178822, 31.994776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393894, 32.442059, 31.765978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399464, 0.413807, 0.818041,
		0.775040, -0.629031, -0.060270,
		0.489633, 0.658091, -0.571993,
		38.540783, 32.639484, 31.594379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839390, 32.219467, 32.295460>,  <38.198040, 32.178822, 31.994776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839390, 32.219467, 32.295460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786003, 32.543129, 32.066566>,  <38.753971, 32.737328, 31.929230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786003, 32.543129, 32.066566>,  <38.839390, 32.219467, 32.295460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786003, 32.543129, 32.066566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334144, 0.580335, 0.742671,
		0.933024, -0.092085, -0.347832,
		-0.133470, 0.809155, -0.572235,
		38.745960, 32.785877, 31.894896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478279, 32.675117, 32.415184>,  <38.839390, 32.219467, 32.295460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478279, 32.675117, 32.415184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183876, 32.918831, 32.297153>,  <39.007233, 33.065060, 32.226334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183876, 32.918831, 32.297153>,  <39.478279, 32.675117, 32.415184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183876, 32.918831, 32.297153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323581, 0.699480, 0.637199,
		0.594632, 0.373504, -0.711975,
		-0.736009, 0.609280, -0.295075,
		38.963074, 33.101616, 32.208630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646999, 33.394760, 32.154442>,  <39.478279, 32.675117, 32.415184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646999, 33.394760, 32.154442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296047, 33.389256, 32.346279>,  <39.085476, 33.385952, 32.461380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.296047, 33.389256, 32.346279>,  <39.646999, 33.394760, 32.154442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296047, 33.389256, 32.346279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385947, 0.573588, 0.722524,
		-0.285030, 0.819028, -0.497947,
		-0.877384, -0.013760, 0.479591,
		39.032833, 33.385128, 32.490158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317638, 34.075588, 32.243069>,  <39.646999, 33.394760, 32.154442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317638, 34.075588, 32.243069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234512, 33.858112, 32.568329>,  <39.184635, 33.727627, 32.763485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234512, 33.858112, 32.568329>,  <39.317638, 34.075588, 32.243069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234512, 33.858112, 32.568329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361028, 0.729972, 0.580345,
		-0.909104, 0.414175, 0.044588,
		-0.207817, -0.543691, 0.813149,
		39.172169, 33.695004, 32.812275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799538, 34.364048, 31.716000>,  <39.317638, 34.075588, 32.243069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799538, 34.364048, 31.716000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.082748, 34.643200, 31.672813>,  <40.252674, 34.810692, 31.646902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.082748, 34.643200, 31.672813>,  <39.799538, 34.364048, 31.716000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082748, 34.643200, 31.672813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001134, -0.154006, -0.988069,
		-0.706183, 0.699459, -0.109833,
		0.708029, 0.697882, -0.107963,
		40.295158, 34.852566, 31.640425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557148, 34.855438, 31.268284>,  <39.799538, 34.364048, 31.716000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557148, 34.855438, 31.268284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956161, 34.844563, 31.242414>,  <40.195572, 34.838039, 31.226892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.956161, 34.844563, 31.242414>,  <39.557148, 34.855438, 31.268284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956161, 34.844563, 31.242414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066913, -0.091738, -0.993532,
		0.021078, 0.995412, -0.093331,
		0.997536, -0.027187, -0.064672,
		40.255421, 34.836407, 31.223013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696644, 35.342113, 30.774998>,  <39.557148, 34.855438, 31.268284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696644, 35.342113, 30.774998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032211, 35.124783, 30.787695>,  <40.233551, 34.994385, 30.795313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032211, 35.124783, 30.787695>,  <39.696644, 35.342113, 30.774998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032211, 35.124783, 30.787695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070607, 0.050818, -0.996209,
		0.539658, 0.837979, 0.080995,
		0.838918, -0.543331, 0.031743,
		40.283886, 34.961784, 30.797218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117519, 35.697521, 30.333183>,  <39.696644, 35.342113, 30.774998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117519, 35.697521, 30.333183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.245510, 35.319164, 30.354731>,  <40.322304, 35.092152, 30.367659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.245510, 35.319164, 30.354731>,  <40.117519, 35.697521, 30.333183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245510, 35.319164, 30.354731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061254, -0.036086, -0.997470,
		0.945444, 0.322464, 0.046393,
		0.319974, -0.945894, 0.053869,
		40.341503, 35.035397, 30.370892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565819, 35.700382, 29.826563>,  <40.117519, 35.697521, 30.333183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565819, 35.700382, 29.826563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.540180, 35.310398, 29.911737>,  <40.524796, 35.076408, 29.962843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.540180, 35.310398, 29.911737>,  <40.565819, 35.700382, 29.826563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540180, 35.310398, 29.911737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040790, -0.210637, -0.976713,
		0.997109, -0.071293, -0.026267,
		-0.064100, -0.974961, 0.212937,
		40.520950, 35.017910, 29.975618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074295, 35.376965, 29.424440>,  <40.565819, 35.700382, 29.826563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074295, 35.376965, 29.424440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808163, 35.094570, 29.521540>,  <40.648483, 34.925133, 29.579800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808163, 35.094570, 29.521540>,  <41.074295, 35.376965, 29.424440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808163, 35.094570, 29.521540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208756, -0.136257, -0.968429,
		0.716771, -0.694998, -0.056723,
		-0.665327, -0.705983, 0.242750,
		40.608566, 34.882774, 29.594364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096138, 34.807293, 28.932589>,  <41.074295, 35.376965, 29.424440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096138, 34.807293, 28.932589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727108, 34.773708, 29.083221>,  <40.505692, 34.753559, 29.173601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727108, 34.773708, 29.083221>,  <41.096138, 34.807293, 28.932589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727108, 34.773708, 29.083221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332587, -0.321693, -0.886510,
		0.195575, -0.943114, 0.268861,
		-0.922570, -0.083960, 0.376582,
		40.450336, 34.748520, 29.196196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809105, 34.171982, 28.676697>,  <41.096138, 34.807293, 28.932589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809105, 34.171982, 28.676697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.481186, 34.378830, 28.775093>,  <40.284431, 34.502937, 28.834131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.481186, 34.378830, 28.775093>,  <40.809105, 34.171982, 28.676697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481186, 34.378830, 28.775093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483101, -0.393899, -0.781957,
		-0.307470, -0.759888, 0.572741,
		-0.819802, 0.517120, 0.245990,
		40.235245, 34.533966, 28.848890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238560, 33.736507, 28.861982>,  <40.809105, 34.171982, 28.676697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238560, 33.736507, 28.861982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.049534, 34.074245, 28.760981>,  <39.936119, 34.276890, 28.700380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.049534, 34.074245, 28.760981>,  <40.238560, 33.736507, 28.861982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049534, 34.074245, 28.760981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504650, -0.494149, -0.707916,
		-0.722501, -0.207113, 0.659618,
		-0.472568, 0.844347, -0.252504,
		39.907764, 34.327549, 28.685230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608299, 33.613010, 28.855133>,  <40.238560, 33.736507, 28.861982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608299, 33.613010, 28.855133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635025, 33.931004, 28.613955>,  <39.651058, 34.121799, 28.469248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635025, 33.931004, 28.613955>,  <39.608299, 33.613010, 28.855133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635025, 33.931004, 28.613955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588818, -0.456435, -0.667053,
		-0.805499, 0.399591, 0.437604,
		0.066811, 0.794980, -0.602945,
		39.655067, 34.169498, 28.433071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974751, 33.634460, 28.667784>,  <39.608299, 33.613010, 28.855133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974751, 33.634460, 28.667784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104828, 33.887627, 28.386738>,  <39.182877, 34.039524, 28.218109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104828, 33.887627, 28.386738>,  <38.974751, 33.634460, 28.667784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104828, 33.887627, 28.386738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681672, -0.358070, -0.638051,
		-0.655415, 0.686447, 0.314995,
		0.325198, 0.632912, -0.702616,
		39.202389, 34.077499, 28.175953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404587, 33.945648, 28.248093>,  <38.974751, 33.634460, 28.667784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404587, 33.945648, 28.248093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692200, 34.024521, 27.981527>,  <38.864769, 34.071842, 27.821589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692200, 34.024521, 27.981527>,  <38.404587, 33.945648, 28.248093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692200, 34.024521, 27.981527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643653, -0.172704, -0.745577,
		-0.262104, 0.965036, 0.002734,
		0.719036, 0.197178, -0.666414,
		38.907909, 34.083675, 27.781603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107708, 34.354511, 27.717531>,  <38.404587, 33.945648, 28.248093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107708, 34.354511, 27.717531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443508, 34.227520, 27.541151>,  <38.644989, 34.151325, 27.435324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443508, 34.227520, 27.541151>,  <38.107708, 34.354511, 27.717531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443508, 34.227520, 27.541151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540238, -0.400954, -0.739850,
		0.058088, 0.859326, -0.508118,
		0.839505, -0.317482, -0.440950,
		38.695358, 34.132275, 27.408867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063831, 34.600086, 27.095304>,  <38.107708, 34.354511, 27.717531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063831, 34.600086, 27.095304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.304825, 34.281601, 27.073202>,  <38.449421, 34.090508, 27.059940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.304825, 34.281601, 27.073202>,  <38.063831, 34.600086, 27.095304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304825, 34.281601, 27.073202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543002, -0.358173, -0.759513,
		0.584946, 0.487598, -0.648140,
		0.602483, -0.796216, -0.055255,
		38.485569, 34.042736, 27.056625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265297, 35.237701, 26.653776>,  <38.063831, 34.600086, 27.095304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265297, 35.237701, 26.653776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.013466, 35.513535, 26.510609>,  <37.862370, 35.679035, 26.424709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.013466, 35.513535, 26.510609>,  <38.265297, 35.237701, 26.653776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013466, 35.513535, 26.510609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055404, 0.499351, 0.864627,
		0.774961, 0.524518, -0.352585,
		-0.629576, 0.689587, -0.357917,
		37.824593, 35.720409, 26.403233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686539, 35.767513, 26.784225>,  <38.265297, 35.237701, 26.653776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686539, 35.767513, 26.784225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.314045, 35.891438, 26.707468>,  <38.090549, 35.965790, 26.661413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.314045, 35.891438, 26.707468>,  <38.686539, 35.767513, 26.784225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314045, 35.891438, 26.707468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027704, 0.464858, 0.884952,
		0.363366, 0.829414, -0.424309,
		-0.931234, 0.309807, -0.191892,
		38.034676, 35.984379, 26.649900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689457, 36.441681, 27.006285>,  <38.686539, 35.767513, 26.784225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689457, 36.441681, 27.006285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313324, 36.305641, 27.002028>,  <38.087646, 36.224018, 26.999474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.313324, 36.305641, 27.002028>,  <38.689457, 36.441681, 27.006285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313324, 36.305641, 27.002028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110414, 0.275394, 0.954970,
		-0.321852, 0.899161, -0.296513,
		-0.940330, -0.340098, -0.010644,
		38.031223, 36.203613, 26.998835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398270, 36.920788, 27.471882>,  <38.689457, 36.441681, 27.006285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398270, 36.920788, 27.471882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129585, 36.624886, 27.456022>,  <37.968376, 36.447346, 27.446507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129585, 36.624886, 27.456022>,  <38.398270, 36.920788, 27.471882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129585, 36.624886, 27.456022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067924, 0.008204, 0.997657,
		-0.737696, 0.672826, -0.055757,
		-0.671707, -0.739755, -0.039649,
		37.928074, 36.402958, 27.444128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773521, 37.184242, 27.881464>,  <38.398270, 36.920788, 27.471882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773521, 37.184242, 27.881464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.777557, 36.785011, 27.856995>,  <37.779980, 36.545471, 27.842312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.777557, 36.785011, 27.856995>,  <37.773521, 37.184242, 27.881464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777557, 36.785011, 27.856995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277550, -0.061571, 0.958736,
		-0.960658, 0.007302, -0.277638,
		0.010093, -0.998076, -0.061175,
		37.780586, 36.485588, 27.838642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290367, 37.157112, 28.423605>,  <37.773521, 37.184242, 27.881464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290367, 37.157112, 28.423605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.442509, 36.787735, 28.403290>,  <37.533794, 36.566109, 28.391100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.442509, 36.787735, 28.403290>,  <37.290367, 37.157112, 28.423605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442509, 36.787735, 28.403290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183090, -0.129013, 0.974594,
		-0.906535, -0.361396, -0.218145,
		0.380358, -0.923444, -0.050787,
		37.556618, 36.510700, 28.388054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902252, 36.866798, 28.852612>,  <37.290367, 37.157112, 28.423605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902252, 36.866798, 28.852612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.217628, 36.624397, 28.810425>,  <37.406853, 36.478958, 28.785112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.217628, 36.624397, 28.810425>,  <36.902252, 36.866798, 28.852612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217628, 36.624397, 28.810425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111399, -0.309299, 0.944418,
		-0.604938, -0.732869, -0.311372,
		0.788442, -0.606001, -0.105465,
		37.454163, 36.442596, 28.778786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674385, 36.291409, 29.254433>,  <36.902252, 36.866798, 28.852612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674385, 36.291409, 29.254433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071430, 36.248985, 29.230892>,  <37.309658, 36.223530, 29.216768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071430, 36.248985, 29.230892>,  <36.674385, 36.291409, 29.254433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071430, 36.248985, 29.230892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020912, -0.328261, 0.944355,
		-0.119477, -0.938614, -0.323620,
		0.992617, -0.106061, -0.058848,
		37.369217, 36.217167, 29.213238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832039, 35.647263, 29.406200>,  <36.674385, 36.291409, 29.254433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832039, 35.647263, 29.406200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.168087, 35.852985, 29.475117>,  <37.369717, 35.976418, 29.516466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.168087, 35.852985, 29.475117>,  <36.832039, 35.647263, 29.406200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168087, 35.852985, 29.475117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042470, -0.379051, 0.924401,
		0.540730, -0.769293, -0.340292,
		0.840123, 0.514303, 0.172292,
		37.420124, 36.007275, 29.526804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160915, 35.275738, 29.896828>,  <36.832039, 35.647263, 29.406200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160915, 35.275738, 29.896828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371246, 35.612869, 29.942686>,  <37.497444, 35.815147, 29.970201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371246, 35.612869, 29.942686>,  <37.160915, 35.275738, 29.896828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371246, 35.612869, 29.942686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177535, -0.240563, 0.954259,
		0.831857, -0.481423, -0.276126,
		0.525828, 0.842829, 0.114644,
		37.528996, 35.865719, 29.977079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879185, 35.050877, 30.066328>,  <37.160915, 35.275738, 29.896828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879185, 35.050877, 30.066328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.822495, 35.420631, 30.207991>,  <37.788483, 35.642483, 30.292988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.822495, 35.420631, 30.207991>,  <37.879185, 35.050877, 30.066328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822495, 35.420631, 30.207991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408314, -0.271327, 0.871585,
		0.901773, 0.268132, -0.338986,
		-0.141724, 0.924385, 0.354157,
		37.779976, 35.697948, 30.314238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425247, 35.078926, 30.535078>,  <37.879185, 35.050877, 30.066328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425247, 35.078926, 30.535078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.206913, 35.393616, 30.650404>,  <38.075912, 35.582428, 30.719601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.206913, 35.393616, 30.650404>,  <38.425247, 35.078926, 30.535078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206913, 35.393616, 30.650404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288256, -0.146779, 0.946237,
		0.786745, 0.599602, -0.146660,
		-0.545839, 0.786723, 0.288317,
		38.043159, 35.629631, 30.736898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.282944, 34.207569, 22.593626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980663, 34.299450, 22.838949>,  <36.799294, 34.354576, 22.986143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980663, 34.299450, 22.838949>,  <37.282944, 34.207569, 22.593626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980663, 34.299450, 22.838949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540031, 0.748357, 0.385134,
		-0.370509, 0.622254, -0.689581,
		-0.755704, 0.229700, 0.613310,
		36.753952, 34.368359, 23.022942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432629, 34.941025, 22.783194>,  <37.282944, 34.207569, 22.593626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432629, 34.941025, 22.783194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146183, 34.845581, 23.045565>,  <36.974316, 34.788315, 23.202988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146183, 34.845581, 23.045565>,  <37.432629, 34.941025, 22.783194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146183, 34.845581, 23.045565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345966, 0.694838, 0.630482,
		-0.606204, 0.678427, -0.415033,
		-0.716117, -0.238614, 0.655926,
		36.931347, 34.773998, 23.242342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411690, 35.474167, 23.268793>,  <37.432629, 34.941025, 22.783194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411690, 35.474167, 23.268793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170330, 35.234211, 23.478954>,  <37.025517, 35.090237, 23.605051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170330, 35.234211, 23.478954>,  <37.411690, 35.474167, 23.268793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170330, 35.234211, 23.478954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193986, 0.528648, 0.826378,
		-0.773488, 0.600553, -0.202613,
		-0.603395, -0.599890, 0.525402,
		36.989311, 35.054245, 23.636576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036697, 35.891541, 23.665300>,  <37.411690, 35.474167, 23.268793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036697, 35.891541, 23.665300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053509, 35.531918, 23.839624>,  <37.063595, 35.316143, 23.944220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053509, 35.531918, 23.839624>,  <37.036697, 35.891541, 23.665300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053509, 35.531918, 23.839624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233064, 0.432985, 0.870750,
		-0.971553, 0.064976, 0.227735,
		0.042028, -0.899056, 0.435811,
		37.066116, 35.262199, 23.970367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531670, 35.906303, 24.245686>,  <37.036697, 35.891541, 23.665300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531670, 35.906303, 24.245686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783062, 35.610222, 24.341284>,  <36.933895, 35.432571, 24.398642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783062, 35.610222, 24.341284>,  <36.531670, 35.906303, 24.245686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783062, 35.610222, 24.341284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092853, 0.376454, 0.921770,
		-0.772267, -0.557119, 0.305322,
		0.628476, -0.740203, 0.238993,
		36.971603, 35.388161, 24.412981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346855, 35.463970, 24.923309>,  <36.531670, 35.906303, 24.245686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346855, 35.463970, 24.923309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741039, 35.427357, 24.866047>,  <36.977551, 35.405388, 24.831690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741039, 35.427357, 24.866047>,  <36.346855, 35.463970, 24.923309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741039, 35.427357, 24.866047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159895, 0.214492, 0.963549,
		-0.057490, -0.972428, 0.226008,
		0.985458, -0.091532, -0.143155,
		37.036678, 35.399899, 24.823101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523705, 35.277229, 25.507149>,  <36.346855, 35.463970, 24.923309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523705, 35.277229, 25.507149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878979, 35.376530, 25.352491>,  <37.092144, 35.436108, 25.259697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878979, 35.376530, 25.352491>,  <36.523705, 35.277229, 25.507149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878979, 35.376530, 25.352491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337298, 0.219136, 0.915538,
		0.312011, -0.943584, 0.110900,
		0.888189, 0.248251, -0.386642,
		37.145435, 35.451004, 25.236500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970982, 34.942554, 25.938049>,  <36.523705, 35.277229, 25.507149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970982, 34.942554, 25.938049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203026, 35.216076, 25.761011>,  <37.342251, 35.380188, 25.654789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203026, 35.216076, 25.761011>,  <36.970982, 34.942554, 25.938049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203026, 35.216076, 25.761011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455604, 0.178025, 0.872200,
		0.675205, -0.707617, -0.208270,
		0.580106, 0.683802, -0.442596,
		37.377056, 35.421215, 25.628233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598377, 34.864540, 26.250824>,  <36.970982, 34.942554, 25.938049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598377, 34.864540, 26.250824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620773, 35.239861, 26.114321>,  <37.634212, 35.465054, 26.032419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620773, 35.239861, 26.114321>,  <37.598377, 34.864540, 26.250824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620773, 35.239861, 26.114321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583265, 0.246670, 0.773923,
		0.810350, -0.242379, -0.533465,
		0.055993, 0.938300, -0.341260,
		37.637573, 35.521351, 26.011942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270844, 34.465866, 26.246895>,  <37.598377, 34.864540, 26.250824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270844, 34.465866, 26.246895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401588, 34.129333, 26.419088>,  <38.480034, 33.927414, 26.522406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401588, 34.129333, 26.419088>,  <38.270844, 34.465866, 26.246895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401588, 34.129333, 26.419088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195978, -0.505945, -0.840007,
		0.924529, 0.190202, -0.330258,
		0.326863, -0.841334, 0.430485,
		38.499649, 33.876934, 26.548233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741390, 34.231880, 25.833935>,  <38.270844, 34.465866, 26.246895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741390, 34.231880, 25.833935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609238, 33.918259, 26.044121>,  <38.529945, 33.730087, 26.170233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609238, 33.918259, 26.044121>,  <38.741390, 34.231880, 25.833935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609238, 33.918259, 26.044121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083331, -0.530320, -0.843692,
		0.940163, -0.322525, 0.109871,
		-0.330378, -0.784052, 0.525464,
		38.510124, 33.683044, 26.201759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075802, 33.645382, 25.665613>,  <38.741390, 34.231880, 25.833935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075802, 33.645382, 25.665613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740864, 33.503853, 25.832304>,  <38.539902, 33.418938, 25.932318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740864, 33.503853, 25.832304>,  <39.075802, 33.645382, 25.665613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740864, 33.503853, 25.832304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123311, -0.620406, -0.774526,
		0.532583, -0.699934, 0.475864,
		-0.837347, -0.353821, 0.416728,
		38.489658, 33.397705, 25.957323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091442, 32.862404, 25.466953>,  <39.075802, 33.645382, 25.665613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091442, 32.862404, 25.466953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719566, 32.945099, 25.588894>,  <38.496441, 32.994717, 25.662058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719566, 32.945099, 25.588894>,  <39.091442, 32.862404, 25.466953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719566, 32.945099, 25.588894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368298, -0.534077, -0.760998,
		0.005491, -0.819770, 0.572666,
		-0.929692, 0.206733, 0.304852,
		38.440659, 33.007118, 25.680349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808113, 32.277340, 25.628262>,  <39.091442, 32.862404, 25.466953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808113, 32.277340, 25.628262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495766, 32.514179, 25.548594>,  <38.308357, 32.656284, 25.500793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495766, 32.514179, 25.548594>,  <38.808113, 32.277340, 25.628262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495766, 32.514179, 25.548594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216730, -0.555795, -0.802571,
		-0.585902, -0.583530, 0.562326,
		-0.780863, 0.592101, -0.199173,
		38.261505, 32.691807, 25.488842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337540, 31.776915, 25.444767>,  <38.808113, 32.277340, 25.628262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337540, 31.776915, 25.444767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188984, 32.118736, 25.299545>,  <38.099850, 32.323830, 25.212412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188984, 32.118736, 25.299545>,  <38.337540, 31.776915, 25.444767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188984, 32.118736, 25.299545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442082, -0.506606, -0.740212,
		-0.816475, -0.114410, 0.565932,
		-0.371392, 0.854553, -0.363053,
		38.077564, 32.375103, 25.190630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762592, 31.546034, 25.155334>,  <38.337540, 31.776915, 25.444767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762592, 31.546034, 25.155334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825638, 31.899832, 24.979685>,  <37.863464, 32.112110, 24.874296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825638, 31.899832, 24.979685>,  <37.762592, 31.546034, 25.155334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825638, 31.899832, 24.979685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387956, -0.353465, -0.851207,
		-0.908102, 0.304521, 0.287434,
		0.157612, 0.884494, -0.439122,
		37.872921, 32.165180, 24.847948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046822, 31.790359, 24.742327>,  <37.762592, 31.546034, 25.155334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046822, 31.790359, 24.742327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365925, 31.978809, 24.591795>,  <37.557388, 32.091877, 24.501476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365925, 31.978809, 24.591795>,  <37.046822, 31.790359, 24.742327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365925, 31.978809, 24.591795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249531, -0.310224, -0.917331,
		-0.548922, 0.825714, -0.129925,
		0.797759, 0.471123, -0.376330,
		37.605251, 32.120148, 24.478895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736557, 32.040585, 24.224297>,  <37.046822, 31.790359, 24.742327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736557, 32.040585, 24.224297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126766, 32.030647, 24.136894>,  <37.360889, 32.024685, 24.084452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126766, 32.030647, 24.136894>,  <36.736557, 32.040585, 24.224297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126766, 32.030647, 24.136894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213191, -0.350661, -0.911914,
		-0.053964, 0.936173, -0.347373,
		0.975519, -0.024846, -0.218507,
		37.419422, 32.023193, 24.071342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790409, 32.184849, 23.457012>,  <36.736557, 32.040585, 24.224297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790409, 32.184849, 23.457012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131310, 32.010048, 23.572039>,  <37.335850, 31.905169, 23.641054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131310, 32.010048, 23.572039>,  <36.790409, 32.184849, 23.457012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131310, 32.010048, 23.572039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038678, -0.495562, -0.867711,
		0.521694, 0.750634, -0.405444,
		0.852256, -0.436998, 0.287565,
		37.386986, 31.878948, 23.658308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212048, 32.202866, 22.870255>,  <36.790409, 32.184849, 23.457012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212048, 32.202866, 22.870255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359837, 31.903168, 23.090118>,  <37.448509, 31.723349, 23.222036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359837, 31.903168, 23.090118>,  <37.212048, 32.202866, 22.870255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359837, 31.903168, 23.090118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042223, -0.577368, -0.815392,
		0.928282, 0.324472, -0.181686,
		0.369471, -0.749242, 0.549661,
		37.470676, 31.678394, 23.255016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779587, 32.043262, 22.409985>,  <37.212048, 32.202866, 22.870255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779587, 32.043262, 22.409985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685547, 31.735365, 22.647377>,  <37.629124, 31.550627, 22.789812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685547, 31.735365, 22.647377>,  <37.779587, 32.043262, 22.409985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685547, 31.735365, 22.647377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097664, -0.626213, -0.773511,
		0.967052, -0.123891, 0.222399,
		-0.235100, -0.769746, 0.593481,
		37.615017, 31.504440, 22.825420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335751, 31.564987, 22.288649>,  <37.779587, 32.043262, 22.409985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335751, 31.564987, 22.288649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023533, 31.357233, 22.427780>,  <37.836201, 31.232580, 22.511259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023533, 31.357233, 22.427780>,  <38.335751, 31.564987, 22.288649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023533, 31.357233, 22.427780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049558, -0.606106, -0.793839,
		0.623128, -0.602391, 0.498835,
		-0.780548, -0.519385, 0.347828,
		37.789368, 31.201418, 22.532129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492065, 30.807768, 22.190041>,  <38.335751, 31.564987, 22.288649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492065, 30.807768, 22.190041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097717, 30.826349, 22.254423>,  <37.861111, 30.837498, 22.293053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097717, 30.826349, 22.254423>,  <38.492065, 30.807768, 22.190041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097717, 30.826349, 22.254423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148165, -0.690156, -0.708330,
		0.078179, -0.722168, 0.687285,
		-0.985868, 0.046455, 0.160956,
		37.801956, 30.840286, 22.302710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.278126, 31.625353, 24.160114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.581026, 31.864975, 24.056036>,  <30.762766, 32.008747, 23.993589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.581026, 31.864975, 24.056036>,  <30.278126, 31.625353, 24.160114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581026, 31.864975, 24.056036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363101, -0.054994, 0.930126,
		0.542887, -0.798817, -0.259162,
		0.757253, 0.599055, -0.260195,
		30.808203, 32.044693, 23.977978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984165, 31.432684, 24.442083>,  <30.278126, 31.625353, 24.160114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984165, 31.432684, 24.442083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.062637, 31.818565, 24.371811>,  <31.109720, 32.050095, 24.329647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.062637, 31.818565, 24.371811>,  <30.984165, 31.432684, 24.442083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062637, 31.818565, 24.371811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392479, 0.086932, 0.915644,
		0.898596, -0.248580, -0.361571,
		0.196179, 0.964703, -0.175679,
		31.121490, 32.107975, 24.319107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669968, 31.618851, 24.642145>,  <30.984165, 31.432684, 24.442083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669968, 31.618851, 24.642145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497898, 31.979872, 24.634657>,  <31.394657, 32.196484, 24.630165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497898, 31.979872, 24.634657>,  <31.669968, 31.618851, 24.642145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497898, 31.979872, 24.634657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255502, 0.141614, 0.956381,
		0.865834, 0.406627, -0.291522,
		-0.430174, 0.902552, -0.018720,
		31.368845, 32.250637, 24.629042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074547, 32.007893, 24.992527>,  <31.669968, 31.618851, 24.642145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074547, 32.007893, 24.992527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.752781, 32.244778, 25.011276>,  <31.559721, 32.386909, 25.022526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.752781, 32.244778, 25.011276>,  <32.074547, 32.007893, 24.992527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752781, 32.244778, 25.011276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198880, 0.194109, 0.960608,
		0.559788, 0.782050, -0.273924,
		-0.804415, 0.592215, 0.046874,
		31.511456, 32.422443, 25.025339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364067, 32.679951, 25.304628>,  <32.074547, 32.007893, 24.992527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364067, 32.679951, 25.304628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.967815, 32.645844, 25.347292>,  <31.730064, 32.625378, 25.372890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.967815, 32.645844, 25.347292>,  <32.364067, 32.679951, 25.304628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967815, 32.645844, 25.347292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074141, 0.320043, 0.944497,
		-0.114674, 0.943557, -0.310723,
		-0.990633, -0.085272, 0.106657,
		31.670626, 32.620262, 25.379290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147545, 33.265102, 25.458252>,  <32.364067, 32.679951, 25.304628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147545, 33.265102, 25.458252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836794, 33.058796, 25.602728>,  <31.650345, 32.935013, 25.689413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836794, 33.058796, 25.602728>,  <32.147545, 33.265102, 25.458252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836794, 33.058796, 25.602728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153041, 0.401756, 0.902868,
		-0.610776, 0.756690, -0.233180,
		-0.776873, -0.515764, 0.361188,
		31.603731, 32.904068, 25.711084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706457, 33.723743, 25.743399>,  <32.147545, 33.265102, 25.458252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706457, 33.723743, 25.743399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.641865, 33.373653, 25.925787>,  <31.603109, 33.163601, 26.035221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.641865, 33.373653, 25.925787>,  <31.706457, 33.723743, 25.743399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641865, 33.373653, 25.925787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069154, 0.450865, 0.889909,
		-0.984450, 0.175237, -0.012281,
		-0.161482, -0.875221, 0.455973,
		31.593420, 33.111088, 26.062578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286272, 33.918312, 26.318066>,  <31.706457, 33.723743, 25.743399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286272, 33.918312, 26.318066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.401112, 33.541397, 26.386965>,  <31.470016, 33.315247, 26.428305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.401112, 33.541397, 26.386965>,  <31.286272, 33.918312, 26.318066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401112, 33.541397, 26.386965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033967, 0.189718, 0.981251,
		-0.957298, -0.275867, 0.086474,
		0.287100, -0.942287, 0.172247,
		31.487242, 33.258713, 26.438639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910364, 33.704407, 27.014660>,  <31.286272, 33.918312, 26.318066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910364, 33.704407, 27.014660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.251360, 33.507744, 26.943632>,  <31.455957, 33.389744, 26.901014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.251360, 33.507744, 26.943632>,  <30.910364, 33.704407, 27.014660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251360, 33.507744, 26.943632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232395, 0.052178, 0.971221,
		-0.468245, -0.869223, 0.158740,
		0.852490, -0.491659, -0.177571,
		31.507107, 33.360245, 26.890360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051798, 33.550137, 27.670769>,  <30.910364, 33.704407, 27.014660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051798, 33.550137, 27.670769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.362642, 33.377575, 27.487469>,  <31.549149, 33.274040, 27.377489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.362642, 33.377575, 27.487469>,  <31.051798, 33.550137, 27.670769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362642, 33.377575, 27.487469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541235, 0.086489, 0.836412,
		-0.321194, -0.898005, 0.300700,
		0.777109, -0.431400, -0.458252,
		31.595776, 33.248154, 27.349993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303589, 32.947792, 28.153873>,  <31.051798, 33.550137, 27.670769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303589, 32.947792, 28.153873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.582491, 33.094917, 27.907768>,  <31.749832, 33.183193, 27.760105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.582491, 33.094917, 27.907768>,  <31.303589, 32.947792, 28.153873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582491, 33.094917, 27.907768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577059, 0.221180, 0.786182,
		0.425252, -0.903213, -0.058032,
		0.697254, 0.367813, -0.615264,
		31.791668, 33.205261, 27.723188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883553, 32.579632, 28.387943>,  <31.303589, 32.947792, 28.153873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883553, 32.579632, 28.387943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.005180, 32.905952, 28.191162>,  <32.078159, 33.101746, 28.073093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.005180, 32.905952, 28.191162>,  <31.883553, 32.579632, 28.387943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005180, 32.905952, 28.191162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551873, 0.270081, 0.788982,
		0.776516, -0.511401, -0.368092,
		0.304072, 0.815797, -0.491951,
		32.096401, 33.150692, 28.043577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645119, 32.618233, 28.565697>,  <31.883553, 32.579632, 28.387943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645119, 32.618233, 28.565697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.553219, 32.983780, 28.431797>,  <32.498077, 33.203110, 28.351458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.553219, 32.983780, 28.431797>,  <32.645119, 32.618233, 28.565697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553219, 32.983780, 28.431797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578472, 0.404829, 0.708155,
		0.782677, -0.030942, -0.621658,
		-0.229754, 0.913869, -0.334750,
		32.484291, 33.257942, 28.331371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183163, 32.992157, 28.592340>,  <32.645119, 32.618233, 28.565697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183163, 32.992157, 28.592340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.914589, 33.287140, 28.563126>,  <32.753445, 33.464130, 28.545597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.914589, 33.287140, 28.563126>,  <33.183163, 32.992157, 28.592340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914589, 33.287140, 28.563126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569559, 0.576585, 0.585792,
		0.474110, 0.351720, -0.807163,
		-0.671433, 0.737457, -0.073039,
		32.713158, 33.508377, 28.541214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888279, 33.072796, 28.385271>,  <33.183163, 32.992157, 28.592340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888279, 33.072796, 28.385271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.899410, 32.698315, 28.525415>,  <33.906090, 32.473625, 28.609503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.899410, 32.698315, 28.525415>,  <33.888279, 33.072796, 28.385271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899410, 32.698315, 28.525415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338485, -0.338618, -0.877933,
		0.940560, -0.094157, -0.326314,
		0.027832, -0.936201, 0.350361,
		33.907761, 32.417454, 28.630524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161194, 32.570175, 27.832115>,  <33.888279, 33.072796, 28.385271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161194, 32.570175, 27.832115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.982132, 32.293030, 28.058228>,  <33.874695, 32.126743, 28.193895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.982132, 32.293030, 28.058228>,  <34.161194, 32.570175, 27.832115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982132, 32.293030, 28.058228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091253, -0.593462, -0.799672,
		0.889539, -0.409559, 0.202438,
		-0.447652, -0.692866, 0.565281,
		33.847836, 32.085171, 28.227812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479229, 32.000294, 27.619675>,  <34.161194, 32.570175, 27.832115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479229, 32.000294, 27.619675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.164577, 31.856213, 27.820263>,  <33.975788, 31.769766, 27.940617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.164577, 31.856213, 27.820263>,  <34.479229, 32.000294, 27.619675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164577, 31.856213, 27.820263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126964, -0.700472, -0.702296,
		0.604234, -0.616114, 0.505278,
		-0.786627, -0.360198, 0.501473,
		33.928589, 31.748154, 27.970705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406521, 31.252468, 27.485100>,  <34.479229, 32.000294, 27.619675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406521, 31.252468, 27.485100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046276, 31.342400, 27.633883>,  <33.830128, 31.396358, 27.723152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046276, 31.342400, 27.633883>,  <34.406521, 31.252468, 27.485100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046276, 31.342400, 27.633883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420946, -0.664230, -0.617740,
		0.108178, -0.712917, 0.692854,
		-0.900612, 0.224829, 0.371955,
		33.776093, 31.409849, 27.745468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112106, 30.601149, 27.546986>,  <34.406521, 31.252468, 27.485100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112106, 30.601149, 27.546986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.811478, 30.864910, 27.554197>,  <33.631100, 31.023167, 27.558525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.811478, 30.864910, 27.554197>,  <34.112106, 30.601149, 27.546986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811478, 30.864910, 27.554197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454803, -0.498191, -0.738214,
		-0.477789, -0.563030, 0.674325,
		-0.751580, 0.659396, 0.018038,
		33.586006, 31.062731, 27.559607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558739, 30.193529, 27.447563>,  <34.112106, 30.601149, 27.546986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558739, 30.193529, 27.447563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.416489, 30.556267, 27.357088>,  <33.331139, 30.773911, 27.302803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.416489, 30.556267, 27.357088>,  <33.558739, 30.193529, 27.447563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416489, 30.556267, 27.357088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431445, -0.373966, -0.820978,
		-0.829086, -0.194375, 0.524247,
		-0.355628, 0.906845, -0.226188,
		33.309799, 30.828320, 27.289232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852165, 30.075747, 27.258904>,  <33.558739, 30.193529, 27.447563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852165, 30.075747, 27.258904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974316, 30.410763, 27.077675>,  <33.047607, 30.611773, 26.968937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974316, 30.410763, 27.077675>,  <32.852165, 30.075747, 27.258904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974316, 30.410763, 27.077675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445519, -0.294844, -0.845328,
		-0.841581, 0.459995, 0.283101,
		0.305377, 0.837539, -0.453071,
		33.065929, 30.662025, 26.941753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248665, 30.268406, 26.948500>,  <32.852165, 30.075747, 27.258904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248665, 30.268406, 26.948500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.520386, 30.453791, 26.720900>,  <32.683418, 30.565022, 26.584339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.520386, 30.453791, 26.720900>,  <32.248665, 30.268406, 26.948500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520386, 30.453791, 26.720900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548200, -0.194997, -0.813297,
		-0.487884, 0.864396, 0.121608,
		0.679298, 0.463460, -0.568998,
		32.724174, 30.592829, 26.550200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851294, 30.406805, 26.344624>,  <32.248665, 30.268406, 26.948500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851294, 30.406805, 26.344624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.225502, 30.492767, 26.232471>,  <32.450027, 30.544346, 26.165180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.225502, 30.492767, 26.232471>,  <31.851294, 30.406805, 26.344624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225502, 30.492767, 26.232471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207672, -0.307500, -0.928610,
		-0.285783, 0.926962, -0.243043,
		0.935522, 0.214908, -0.280382,
		32.506157, 30.557240, 26.148357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762556, 30.767626, 25.715345>,  <31.851294, 30.406805, 26.344624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762556, 30.767626, 25.715345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.138832, 30.635073, 25.686268>,  <32.364597, 30.555540, 25.668821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.138832, 30.635073, 25.686268>,  <31.762556, 30.767626, 25.715345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138832, 30.635073, 25.686268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098757, -0.062485, -0.993148,
		0.324572, 0.941424, -0.091506,
		0.940691, -0.331385, -0.072692,
		32.421040, 30.535658, 25.664461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096745, 31.168827, 25.103527>,  <31.762556, 30.767626, 25.715345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096745, 31.168827, 25.103527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.294811, 30.828741, 25.175018>,  <32.413651, 30.624689, 25.217913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.294811, 30.828741, 25.175018>,  <32.096745, 31.168827, 25.103527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294811, 30.828741, 25.175018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148855, -0.119653, -0.981593,
		0.855949, 0.512661, 0.067310,
		0.495171, -0.850213, 0.178729,
		32.443363, 30.573677, 25.228638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702457, 31.201874, 24.704636>,  <32.096745, 31.168827, 25.103527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702457, 31.201874, 24.704636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.672924, 30.810188, 24.780197>,  <32.655205, 30.575176, 24.825535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.672924, 30.810188, 24.780197>,  <32.702457, 31.201874, 24.704636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672924, 30.810188, 24.780197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301564, -0.202478, -0.931699,
		0.950583, -0.011825, 0.310246,
		-0.073836, -0.979216, 0.188906,
		32.650772, 30.516424, 24.836868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385204, 30.842411, 24.528543>,  <32.702457, 31.201874, 24.704636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385204, 30.842411, 24.528543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071838, 30.593809, 24.528257>,  <32.883820, 30.444649, 24.528086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071838, 30.593809, 24.528257>,  <33.385204, 30.842411, 24.528543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071838, 30.593809, 24.528257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194807, -0.244464, -0.949888,
		0.590183, -0.744293, 0.312589,
		-0.783412, -0.621503, -0.000715,
		32.836815, 30.407358, 24.528044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574612, 30.221676, 24.282921>,  <33.385204, 30.842411, 24.528543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574612, 30.221676, 24.282921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180138, 30.228407, 24.216995>,  <32.943455, 30.232445, 24.177441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180138, 30.228407, 24.216995>,  <33.574612, 30.221676, 24.282921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180138, 30.228407, 24.216995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148686, -0.348894, -0.925292,
		-0.073071, -0.937011, 0.341571,
		-0.986181, 0.016825, -0.164814,
		32.884285, 30.233454, 24.167551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025665, 29.554678, 24.149439>,  <33.574612, 30.221676, 24.282921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025665, 29.554678, 24.149439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.387798, 29.439041, 24.024990>,  <34.605080, 29.369659, 23.950321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.387798, 29.439041, 24.024990>,  <34.025665, 29.554678, 24.149439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387798, 29.439041, 24.024990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416893, 0.465089, 0.780956,
		-0.081068, -0.836730, 0.541581,
		0.905333, -0.289092, -0.311123,
		34.659397, 29.352314, 23.931652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310547, 29.347729, 24.754942>,  <34.025665, 29.554678, 24.149439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310547, 29.347729, 24.754942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603542, 29.426691, 24.494329>,  <34.779339, 29.474070, 24.337963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603542, 29.426691, 24.494329>,  <34.310547, 29.347729, 24.754942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603542, 29.426691, 24.494329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636509, 0.140891, 0.758291,
		0.241487, -0.970144, -0.022451,
		0.732489, 0.197408, -0.651529,
		34.823288, 29.485914, 24.298870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866348, 28.968441, 24.881157>,  <34.310547, 29.347729, 24.754942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866348, 28.968441, 24.881157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.051842, 29.244829, 24.659342>,  <35.163139, 29.410662, 24.526253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.051842, 29.244829, 24.659342>,  <34.866348, 28.968441, 24.881157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051842, 29.244829, 24.659342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678494, 0.125527, 0.723801,
		0.569734, -0.711902, -0.410608,
		0.463733, 0.690969, -0.554538,
		35.190960, 29.452120, 24.492981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536121, 28.948500, 25.034372>,  <34.866348, 28.968441, 24.881157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536121, 28.948500, 25.034372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515636, 29.317604, 24.881592>,  <35.503345, 29.539066, 24.789925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515636, 29.317604, 24.881592>,  <35.536121, 28.948500, 25.034372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515636, 29.317604, 24.881592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765533, 0.281881, 0.578362,
		0.641356, -0.262777, -0.720841,
		-0.051211, 0.922763, -0.381950,
		35.500275, 29.594433, 24.767006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217628, 29.111715, 25.179754>,  <35.536121, 28.948500, 25.034372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217628, 29.111715, 25.179754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049923, 29.459026, 25.073685>,  <35.949299, 29.667412, 25.010042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049923, 29.459026, 25.073685>,  <36.217628, 29.111715, 25.179754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049923, 29.459026, 25.073685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648724, 0.490857, 0.581564,
		0.635121, 0.071801, -0.769069,
		-0.419259, 0.868276, -0.265174,
		35.924145, 29.719509, 24.994133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756439, 29.701141, 25.005499>,  <36.217628, 29.111715, 25.179754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756439, 29.701141, 25.005499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449017, 29.933969, 25.111719>,  <36.264565, 30.073666, 25.175451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449017, 29.933969, 25.111719>,  <36.756439, 29.701141, 25.005499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449017, 29.933969, 25.111719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507773, 0.302446, 0.806656,
		0.389215, 0.754799, -0.528005,
		-0.768556, 0.582070, 0.265550,
		36.218449, 30.108591, 25.191383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990540, 30.394554, 25.079702>,  <36.756439, 29.701141, 25.005499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990540, 30.394554, 25.079702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650730, 30.380980, 25.290283>,  <36.446842, 30.372835, 25.416632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650730, 30.380980, 25.290283>,  <36.990540, 30.394554, 25.079702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650730, 30.380980, 25.290283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468061, 0.411863, 0.781849,
		-0.243360, 0.910614, -0.334004,
		-0.849526, -0.033937, 0.526454,
		36.395874, 30.370798, 25.448219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840454, 31.099405, 25.367300>,  <36.990540, 30.394554, 25.079702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840454, 31.099405, 25.367300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656620, 30.834230, 25.603706>,  <36.546322, 30.675125, 25.745550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656620, 30.834230, 25.603706>,  <36.840454, 31.099405, 25.367300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656620, 30.834230, 25.603706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399759, 0.439824, 0.804206,
		-0.793081, 0.605862, 0.062881,
		-0.459581, -0.662938, 0.591015,
		36.518745, 30.635349, 25.781012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657604, 31.526871, 25.954578>,  <36.840454, 31.099405, 25.367300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657604, 31.526871, 25.954578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.652245, 31.143871, 26.069828>,  <36.649029, 30.914072, 26.138979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.652245, 31.143871, 26.069828>,  <36.657604, 31.526871, 25.954578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652245, 31.143871, 26.069828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305741, 0.270428, 0.912903,
		-0.952020, 0.100322, 0.289124,
		-0.013397, -0.957499, 0.288125,
		36.648224, 30.856621, 26.156265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287689, 31.600790, 26.548147>,  <36.657604, 31.526871, 25.954578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287689, 31.600790, 26.548147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488461, 31.256233, 26.579319>,  <36.608925, 31.049500, 26.598022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488461, 31.256233, 26.579319>,  <36.287689, 31.600790, 26.548147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488461, 31.256233, 26.579319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301665, 0.258796, 0.917618,
		-0.810597, -0.437069, 0.389748,
		0.501927, -0.861392, 0.077931,
		36.639038, 30.997816, 26.602697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043953, 31.289618, 27.093811>,  <36.287689, 31.600790, 26.548147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043953, 31.289618, 27.093811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393101, 31.097351, 27.060184>,  <36.602589, 30.981991, 27.040009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393101, 31.097351, 27.060184>,  <36.043953, 31.289618, 27.093811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393101, 31.097351, 27.060184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237209, 0.267423, 0.933925,
		-0.426423, -0.835133, 0.347442,
		0.872866, -0.480664, -0.084066,
		36.654961, 30.953152, 27.034966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057831, 30.998262, 27.699333>,  <36.043953, 31.289618, 27.093811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057831, 30.998262, 27.699333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434052, 30.936722, 27.578213>,  <36.659786, 30.899797, 27.505541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434052, 30.936722, 27.578213>,  <36.057831, 30.998262, 27.699333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434052, 30.936722, 27.578213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336413, 0.299289, 0.892890,
		-0.046750, -0.941677, 0.333255,
		0.940553, -0.153854, -0.302801,
		36.716217, 30.890566, 27.487373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411549, 30.658096, 28.189077>,  <36.057831, 30.998262, 27.699333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411549, 30.658096, 28.189077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.698704, 30.852297, 27.989508>,  <36.870998, 30.968817, 27.869766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.698704, 30.852297, 27.989508>,  <36.411549, 30.658096, 28.189077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698704, 30.852297, 27.989508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352788, 0.364129, 0.861946,
		0.600149, -0.794795, 0.090124,
		0.717887, 0.485501, -0.498926,
		36.914070, 30.997948, 27.839830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981117, 30.399609, 28.512392>,  <36.411549, 30.658096, 28.189077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981117, 30.399609, 28.512392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076439, 30.743340, 28.331387>,  <37.133633, 30.949579, 28.222784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.076439, 30.743340, 28.331387>,  <36.981117, 30.399609, 28.512392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076439, 30.743340, 28.331387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368858, 0.350941, 0.860688,
		0.898419, -0.372014, -0.233342,
		0.238299, 0.859329, -0.452513,
		37.147930, 31.001139, 28.195633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.261265, 30.029306, 22.252132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933014, 30.240530, 22.164753>,  <37.736061, 30.367264, 22.112326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933014, 30.240530, 22.164753>,  <38.261265, 30.029306, 22.252132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933014, 30.240530, 22.164753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151760, -0.569915, -0.807567,
		-0.550934, -0.629566, 0.547830,
		-0.820634, 0.528055, -0.218443,
		37.686825, 30.398949, 22.099218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811581, 29.525221, 21.880554>,  <38.261265, 30.029306, 22.252132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811581, 29.525221, 21.880554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.612057, 29.864603, 21.809772>,  <37.492340, 30.068232, 21.767303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.612057, 29.864603, 21.809772>,  <37.811581, 29.525221, 21.880554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612057, 29.864603, 21.809772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439775, -0.423701, -0.791881,
		-0.746849, -0.317181, 0.584476,
		-0.498813, 0.848454, -0.176953,
		37.462414, 30.119139, 21.756687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071243, 29.383060, 21.801750>,  <37.811581, 29.525221, 21.880554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071243, 29.383060, 21.801750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.188160, 29.708401, 21.600542>,  <37.258308, 29.903605, 21.479818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.188160, 29.708401, 21.600542>,  <37.071243, 29.383060, 21.801750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188160, 29.708401, 21.600542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473329, -0.334008, -0.815106,
		-0.830980, 0.476340, 0.287356,
		0.292288, 0.813351, -0.503019,
		37.275845, 29.952406, 21.449636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490681, 29.510674, 21.424551>,  <37.071243, 29.383060, 21.801750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490681, 29.510674, 21.424551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.794601, 29.699125, 21.245337>,  <36.976955, 29.812197, 21.137808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.794601, 29.699125, 21.245337>,  <36.490681, 29.510674, 21.424551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794601, 29.699125, 21.245337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390320, -0.220574, -0.893867,
		-0.519950, 0.854041, 0.016298,
		0.759804, 0.471128, -0.448037,
		37.022541, 29.840464, 21.110926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132488, 29.879316, 20.851696>,  <36.490681, 29.510674, 21.424551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132488, 29.879316, 20.851696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524578, 29.853344, 20.776926>,  <36.759830, 29.837761, 20.732063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524578, 29.853344, 20.776926>,  <36.132488, 29.879316, 20.851696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524578, 29.853344, 20.776926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197823, -0.298280, -0.933753,
		0.004873, 0.952267, -0.305227,
		0.980226, -0.064931, -0.186926,
		36.818645, 29.833864, 20.720848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288445, 30.236135, 20.246750>,  <36.132488, 29.879316, 20.851696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288445, 30.236135, 20.246750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.572689, 29.956709, 20.280308>,  <36.743237, 29.789053, 20.300442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.572689, 29.956709, 20.280308>,  <36.288445, 30.236135, 20.246750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572689, 29.956709, 20.280308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207911, -0.322401, -0.923488,
		0.672164, 0.638799, -0.374341,
		0.710612, -0.698565, 0.083893,
		36.785873, 29.747139, 20.305475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689621, 30.256165, 19.694250>,  <36.288445, 30.236135, 20.246750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689621, 30.256165, 19.694250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769119, 29.884443, 19.818762>,  <36.816818, 29.661411, 19.893469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769119, 29.884443, 19.818762>,  <36.689621, 30.256165, 19.694250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769119, 29.884443, 19.818762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288884, -0.359053, -0.887483,
		0.936507, 0.086460, -0.339821,
		0.198746, -0.929304, 0.311279,
		36.828743, 29.605652, 19.912146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777336, 29.949295, 19.084736>,  <36.689621, 30.256165, 19.694250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777336, 29.949295, 19.084736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.774261, 29.622978, 19.316051>,  <36.772419, 29.427187, 19.454842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.774261, 29.622978, 19.316051>,  <36.777336, 29.949295, 19.084736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774261, 29.622978, 19.316051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289241, -0.551774, -0.782231,
		0.957226, -0.173276, -0.231721,
		-0.007684, -0.815794, 0.578291,
		36.771957, 29.378241, 19.489538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114014, 29.475117, 18.744886>,  <36.777336, 29.949295, 19.084736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114014, 29.475117, 18.744886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.882881, 29.259798, 18.990274>,  <36.744202, 29.130608, 19.137506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.882881, 29.259798, 18.990274>,  <37.114014, 29.475117, 18.744886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882881, 29.259798, 18.990274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356157, -0.510002, -0.782975,
		0.734345, -0.670920, 0.102977,
		-0.577832, -0.538298, 0.613470,
		36.709530, 29.098309, 19.174316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179169, 28.824770, 18.573856>,  <37.114014, 29.475117, 18.744886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179169, 28.824770, 18.573856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835613, 28.823578, 18.778717>,  <36.629478, 28.822863, 18.901634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835613, 28.823578, 18.778717>,  <37.179169, 28.824770, 18.573856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835613, 28.823578, 18.778717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420137, -0.567798, -0.707878,
		0.292908, -0.823163, 0.486423,
		-0.858889, -0.002979, 0.512154,
		36.577946, 28.822683, 18.932364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786289, 28.148731, 18.412771>,  <37.179169, 28.824770, 18.573856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786289, 28.148731, 18.412771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483704, 28.356897, 18.571226>,  <36.302151, 28.481798, 18.666298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483704, 28.356897, 18.571226>,  <36.786289, 28.148731, 18.412771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483704, 28.356897, 18.571226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641770, -0.473907, -0.602946,
		-0.126052, -0.710337, 0.692483,
		-0.756467, 0.520417, 0.396136,
		36.256763, 28.513023, 18.690067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264851, 27.688671, 18.587574>,  <36.786289, 28.148731, 18.412771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264851, 27.688671, 18.587574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.082020, 28.040653, 18.535791>,  <35.972321, 28.251842, 18.504721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.082020, 28.040653, 18.535791>,  <36.264851, 27.688671, 18.587574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082020, 28.040653, 18.535791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690003, -0.442661, -0.572666,
		-0.561227, -0.172425, 0.809502,
		-0.457077, 0.879955, -0.129460,
		35.944897, 28.304640, 18.496954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634495, 27.440901, 18.563890>,  <36.264851, 27.688671, 18.587574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634495, 27.440901, 18.563890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603985, 27.823494, 18.451235>,  <35.585678, 28.053051, 18.383642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603985, 27.823494, 18.451235>,  <35.634495, 27.440901, 18.563890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603985, 27.823494, 18.451235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747888, -0.241690, -0.618264,
		-0.659428, 0.163475, 0.733778,
		-0.076276, 0.956484, -0.281638,
		35.581100, 28.110439, 18.366743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898258, 27.294868, 18.578566>,  <35.634495, 27.440901, 18.563890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898258, 27.294868, 18.578566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.508102, 27.268597, 18.494368>,  <34.274010, 27.252832, 18.443850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.508102, 27.268597, 18.494368>,  <34.898258, 27.294868, 18.578566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508102, 27.268597, 18.494368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219748, 0.210688, 0.952534,
		-0.018215, 0.975344, -0.219936,
		-0.975387, -0.065681, -0.210493,
		34.215485, 27.248892, 18.431219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691738, 27.864307, 18.725037>,  <34.898258, 27.294868, 18.578566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691738, 27.864307, 18.725037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425552, 27.569357, 18.771397>,  <34.265842, 27.392387, 18.799212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.425552, 27.569357, 18.771397>,  <34.691738, 27.864307, 18.725037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425552, 27.569357, 18.771397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108951, 0.057653, 0.992374,
		-0.738436, 0.673017, 0.041972,
		-0.665464, -0.737377, 0.115899,
		34.225914, 27.348145, 18.806166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063370, 28.189556, 19.156776>,  <34.691738, 27.864307, 18.725037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063370, 28.189556, 19.156776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106388, 27.791971, 19.165447>,  <34.132198, 27.553419, 19.170650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106388, 27.791971, 19.165447>,  <34.063370, 28.189556, 19.156776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106388, 27.791971, 19.165447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024396, 0.019161, 0.999519,
		-0.993900, -0.108026, -0.022188,
		0.107549, -0.993963, 0.021679,
		34.138653, 27.493782, 19.171951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614250, 28.015562, 19.545784>,  <34.063370, 28.189556, 19.156776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614250, 28.015562, 19.545784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822941, 27.675371, 19.572603>,  <33.948154, 27.471256, 19.588696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822941, 27.675371, 19.572603>,  <33.614250, 28.015562, 19.545784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822941, 27.675371, 19.572603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147171, 0.167140, 0.974887,
		-0.840325, -0.498754, 0.212366,
		0.521723, -0.850476, 0.067050,
		33.979458, 27.420229, 19.592718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276001, 27.525570, 20.098257>,  <33.614250, 28.015562, 19.545784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276001, 27.525570, 20.098257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660172, 27.424311, 20.051769>,  <33.890675, 27.363556, 20.023876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660172, 27.424311, 20.051769>,  <33.276001, 27.525570, 20.098257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660172, 27.424311, 20.051769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135202, 0.058866, 0.989068,
		-0.243537, -0.965636, 0.090762,
		0.960422, -0.253145, -0.116220,
		33.948299, 27.348368, 20.016903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297249, 27.064819, 20.718552>,  <33.276001, 27.525570, 20.098257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297249, 27.064819, 20.718552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660404, 27.166134, 20.584934>,  <33.878296, 27.226923, 20.504763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660404, 27.166134, 20.584934>,  <33.297249, 27.064819, 20.718552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660404, 27.166134, 20.584934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315797, 0.110834, 0.942331,
		0.275702, -0.961021, 0.020638,
		0.907888, 0.253286, -0.334045,
		33.932770, 27.242119, 20.484720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760201, 26.684162, 21.111031>,  <33.297249, 27.064819, 20.718552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760201, 26.684162, 21.111031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.956970, 27.000874, 20.966202>,  <34.075031, 27.190901, 20.879305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.956970, 27.000874, 20.966202>,  <33.760201, 26.684162, 21.111031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956970, 27.000874, 20.966202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266521, 0.258955, 0.928391,
		0.828841, -0.553197, -0.083640,
		0.491924, 0.791780, -0.362071,
		34.104546, 27.238407, 20.857580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329994, 26.686384, 21.527605>,  <33.760201, 26.684162, 21.111031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329994, 26.686384, 21.527605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313614, 27.050663, 21.363190>,  <34.303783, 27.269230, 21.264540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313614, 27.050663, 21.363190>,  <34.329994, 26.686384, 21.527605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313614, 27.050663, 21.363190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284639, 0.404972, 0.868895,
		0.957759, -0.081413, -0.275805,
		-0.040954, 0.910697, -0.411039,
		34.301327, 27.323872, 21.239878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914318, 26.982258, 21.737415>,  <34.329994, 26.686384, 21.527605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914318, 26.982258, 21.737415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665642, 27.278934, 21.636705>,  <34.516438, 27.456942, 21.576279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665642, 27.278934, 21.636705>,  <34.914318, 26.982258, 21.737415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665642, 27.278934, 21.636705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401915, 0.577979, 0.710215,
		0.672283, 0.340342, -0.657422,
		-0.621692, 0.741693, -0.251776,
		34.479134, 27.501442, 21.561172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304512, 27.575975, 21.971916>,  <34.914318, 26.982258, 21.737415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304512, 27.575975, 21.971916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922726, 27.695133, 21.965593>,  <34.693653, 27.766628, 21.961800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922726, 27.695133, 21.965593>,  <35.304512, 27.575975, 21.971916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922726, 27.695133, 21.965593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171106, 0.590094, 0.788994,
		0.244366, 0.750364, -0.614198,
		-0.954467, 0.297896, -0.015807,
		34.636387, 27.784502, 21.960852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272217, 28.304712, 21.838184>,  <35.304512, 27.575975, 21.971916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272217, 28.304712, 21.838184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922905, 28.220240, 22.013817>,  <34.713318, 28.169556, 22.119196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922905, 28.220240, 22.013817>,  <35.272217, 28.304712, 21.838184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922905, 28.220240, 22.013817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225168, 0.624251, 0.748071,
		-0.432076, 0.752139, -0.497592,
		-0.873276, -0.211182, 0.439081,
		34.660923, 28.156885, 22.145540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124676, 28.924650, 22.037071>,  <35.272217, 28.304712, 21.838184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124676, 28.924650, 22.037071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862041, 28.699869, 22.238312>,  <34.704460, 28.565001, 22.359056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862041, 28.699869, 22.238312>,  <35.124676, 28.924650, 22.037071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862041, 28.699869, 22.238312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136848, 0.567193, 0.812136,
		-0.741736, 0.602083, -0.295507,
		-0.656582, -0.561951, 0.503101,
		34.665066, 28.531284, 22.389242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585018, 29.369362, 22.259935>,  <35.124676, 28.924650, 22.037071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585018, 29.369362, 22.259935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557549, 29.062975, 22.515617>,  <34.541069, 28.879143, 22.669025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557549, 29.062975, 22.515617>,  <34.585018, 29.369362, 22.259935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557549, 29.062975, 22.515617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176937, 0.621207, 0.763410,
		-0.981823, 0.165523, 0.092869,
		-0.068671, -0.765966, 0.639203,
		34.536945, 28.833185, 22.707378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363865, 29.664541, 22.787161>,  <34.585018, 29.369362, 22.259935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363865, 29.664541, 22.787161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499966, 29.320938, 22.940174>,  <34.581627, 29.114777, 23.031982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499966, 29.320938, 22.940174>,  <34.363865, 29.664541, 22.787161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499966, 29.320938, 22.940174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170078, 0.456317, 0.873412,
		-0.924825, -0.232122, 0.301362,
		0.340254, -0.859008, 0.382534,
		34.602043, 29.063236, 23.054934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975681, 29.553337, 23.440023>,  <34.363865, 29.664541, 22.787161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975681, 29.553337, 23.440023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296577, 29.321018, 23.495295>,  <34.489113, 29.181627, 23.528458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296577, 29.321018, 23.495295>,  <33.975681, 29.553337, 23.440023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296577, 29.321018, 23.495295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251534, 0.538731, 0.804052,
		-0.541432, -0.610282, 0.578279,
		0.802236, -0.580796, 0.138179,
		34.537247, 29.146780, 23.536749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352325, 29.629587, 23.746954>,  <33.975681, 29.553337, 23.440023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352325, 29.629587, 23.746954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.003685, 29.822506, 23.782070>,  <32.794502, 29.938257, 23.803139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.003685, 29.822506, 23.782070>,  <33.352325, 29.629587, 23.746954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003685, 29.822506, 23.782070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195796, -0.178316, -0.964296,
		-0.449423, -0.857667, 0.249851,
		-0.871598, 0.482297, 0.087788,
		32.742207, 29.967196, 23.808407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824005, 29.223146, 23.401781>,  <33.352325, 29.629587, 23.746954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824005, 29.223146, 23.401781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.657146, 29.586641, 23.407227>,  <32.557030, 29.804739, 23.410494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.657146, 29.586641, 23.407227>,  <32.824005, 29.223146, 23.401781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657146, 29.586641, 23.407227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564911, -0.247525, -0.787151,
		-0.711944, -0.336046, 0.616610,
		-0.417145, 0.908738, 0.013613,
		32.532001, 29.859262, 23.411310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119560, 29.124329, 23.230820>,  <32.824005, 29.223146, 23.401781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119560, 29.124329, 23.230820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.205162, 29.507776, 23.155716>,  <32.256523, 29.737844, 23.110655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.205162, 29.507776, 23.155716>,  <32.119560, 29.124329, 23.230820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205162, 29.507776, 23.155716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431270, -0.079741, -0.898692,
		-0.876474, 0.273302, 0.396358,
		0.214008, 0.958617, -0.187758,
		32.269363, 29.795361, 23.099388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462532, 29.351786, 23.143658>,  <32.119560, 29.124329, 23.230820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462532, 29.351786, 23.143658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.745388, 29.572306, 22.966562>,  <31.915102, 29.704618, 22.860304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.745388, 29.572306, 22.966562>,  <31.462532, 29.351786, 23.143658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745388, 29.572306, 22.966562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306738, -0.324985, -0.894593,
		-0.637073, 0.768409, -0.060706,
		0.707142, 0.551300, -0.442739,
		31.957531, 29.737696, 22.833740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154696, 29.569506, 22.521214>,  <31.462532, 29.351786, 23.143658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154696, 29.569506, 22.521214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.543137, 29.644484, 22.462122>,  <31.776201, 29.689470, 22.426668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.543137, 29.644484, 22.462122>,  <31.154696, 29.569506, 22.521214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543137, 29.644484, 22.462122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119708, -0.152925, -0.980961,
		-0.206466, 0.970298, -0.126068,
		0.971103, 0.187443, -0.147727,
		31.834467, 29.700716, 22.417805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127928, 30.098917, 22.049330>,  <31.154696, 29.569506, 22.521214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127928, 30.098917, 22.049330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.484695, 29.923323, 22.005924>,  <31.698755, 29.817966, 21.979881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.484695, 29.923323, 22.005924>,  <31.127928, 30.098917, 22.049330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484695, 29.923323, 22.005924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180088, -0.124708, -0.975713,
		0.414792, 0.889797, -0.190285,
		0.891917, -0.438986, -0.108514,
		31.752270, 29.791626, 21.973370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267660, 30.254063, 21.414646>,  <31.127928, 30.098917, 22.049330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267660, 30.254063, 21.414646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.564079, 29.990231, 21.464931>,  <31.741930, 29.831932, 21.495102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.564079, 29.990231, 21.464931>,  <31.267660, 30.254063, 21.414646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564079, 29.990231, 21.464931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004133, -0.182741, -0.983153,
		0.671440, 0.729082, -0.132693,
		0.741048, -0.659579, 0.125713,
		31.786394, 29.792356, 21.502645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316147, 30.993217, 21.386742>,  <31.267660, 30.254063, 21.414646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316147, 30.993217, 21.386742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.961346, 31.175987, 21.360079>,  <30.748465, 31.285648, 21.344082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.961346, 31.175987, 21.360079>,  <31.316147, 30.993217, 21.386742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961346, 31.175987, 21.360079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068204, 0.272414, 0.959760,
		0.456696, 0.846765, -0.272796,
		-0.887005, 0.456924, -0.066657,
		30.695244, 31.313065, 21.340082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375418, 31.754875, 21.479198>,  <31.316147, 30.993217, 21.386742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375418, 31.754875, 21.479198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.992376, 31.672543, 21.559820>,  <30.762550, 31.623142, 21.608192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.992376, 31.672543, 21.559820>,  <31.375418, 31.754875, 21.479198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992376, 31.672543, 21.559820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120251, 0.350175, 0.928933,
		-0.261785, 0.913789, -0.310578,
		-0.957605, -0.205834, 0.201555,
		30.705095, 31.610792, 21.620287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128860, 32.374458, 21.692612>,  <31.375418, 31.754875, 21.479198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128860, 32.374458, 21.692612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.863861, 32.110210, 21.833851>,  <30.704861, 31.951662, 21.918594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.863861, 32.110210, 21.833851>,  <31.128860, 32.374458, 21.692612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863861, 32.110210, 21.833851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148657, 0.346060, 0.926361,
		-0.734163, 0.666204, -0.131059,
		-0.662500, -0.660617, 0.353100,
		30.665112, 31.912025, 21.939781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551855, 32.751507, 22.064096>,  <31.128860, 32.374458, 21.692612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551855, 32.751507, 22.064096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.586390, 32.380928, 22.210653>,  <30.607109, 32.158581, 22.298588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.586390, 32.380928, 22.210653>,  <30.551855, 32.751507, 22.064096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586390, 32.380928, 22.210653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299963, 0.374871, 0.877208,
		-0.950036, 0.034170, 0.310265,
		0.086335, -0.926447, 0.366390,
		30.612289, 32.102993, 22.320570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222528, 32.923191, 22.725725>,  <30.551855, 32.751507, 22.064096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222528, 32.923191, 22.725725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.409248, 32.572128, 22.769218>,  <30.521280, 32.361492, 22.795315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.409248, 32.572128, 22.769218>,  <30.222528, 32.923191, 22.725725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409248, 32.572128, 22.769218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139112, 0.194290, 0.971030,
		-0.873355, -0.438148, 0.212786,
		0.466798, -0.877655, 0.108732,
		30.549288, 32.308830, 22.801838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925236, 32.622837, 23.306849>,  <30.222528, 32.923191, 22.725725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925236, 32.622837, 23.306849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.285030, 32.452545, 23.267509>,  <30.500908, 32.350368, 23.243906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.285030, 32.452545, 23.267509>,  <29.925236, 32.622837, 23.306849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285030, 32.452545, 23.267509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187733, 0.173304, 0.966810,
		-0.394559, -0.888098, 0.235809,
		0.899489, -0.425733, -0.098347,
		30.554876, 32.324825, 23.238005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964491, 32.060757, 23.705969>,  <29.925236, 32.622837, 23.306849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964491, 32.060757, 23.705969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.350016, 32.146309, 23.642313>,  <30.581329, 32.197639, 23.604120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.350016, 32.146309, 23.642313>,  <29.964491, 32.060757, 23.705969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350016, 32.146309, 23.642313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191990, -0.142718, 0.970964,
		0.184955, -0.966379, -0.178615,
		0.963811, 0.213877, -0.159139,
		30.639158, 32.210472, 23.594572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.519379, 30.819704, 18.252945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802555, 30.574709, 18.393614>,  <34.972462, 30.427711, 18.478016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802555, 30.574709, 18.393614>,  <34.519379, 30.819704, 18.252945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802555, 30.574709, 18.393614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302606, 0.186862, 0.934619,
		-0.638158, -0.768075, -0.053056,
		0.707943, -0.612489, 0.351672,
		35.014938, 30.390963, 18.499115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212547, 30.626751, 18.840855>,  <34.519379, 30.819704, 18.252945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212547, 30.626751, 18.840855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.590710, 30.505356, 18.888363>,  <34.817608, 30.432518, 18.916868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.590710, 30.505356, 18.888363>,  <34.212547, 30.626751, 18.840855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590710, 30.505356, 18.888363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031123, 0.278695, 0.959875,
		-0.324412, -0.911166, 0.254034,
		0.945404, -0.303488, 0.118771,
		34.874332, 30.414309, 18.923994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325367, 30.166805, 19.439941>,  <34.212547, 30.626751, 18.840855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325367, 30.166805, 19.439941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.680416, 30.335093, 19.364985>,  <34.893448, 30.436066, 19.320009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.680416, 30.335093, 19.364985>,  <34.325367, 30.166805, 19.439941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680416, 30.335093, 19.364985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069336, 0.280174, 0.957442,
		0.455317, -0.862843, 0.219518,
		0.887626, 0.420719, -0.187394,
		34.946705, 30.461308, 19.308765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808929, 29.853893, 19.915646>,  <34.325367, 30.166805, 19.439941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808929, 29.853893, 19.915646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.916553, 30.218180, 19.790295>,  <34.981129, 30.436752, 19.715084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.916553, 30.218180, 19.790295>,  <34.808929, 29.853893, 19.915646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916553, 30.218180, 19.790295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151855, 0.281193, 0.947560,
		0.951078, -0.302535, -0.062640,
		0.269056, 0.910716, -0.313378,
		34.997269, 30.491394, 19.696281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286327, 30.149231, 20.381468>,  <34.808929, 29.853893, 19.915646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286327, 30.149231, 20.381468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.152943, 30.485287, 20.210367>,  <35.072914, 30.686920, 20.107708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.152943, 30.485287, 20.210367>,  <35.286327, 30.149231, 20.381468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152943, 30.485287, 20.210367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244220, 0.515209, 0.821533,
		0.910583, 0.169482, -0.376980,
		-0.333458, 0.840140, -0.427750,
		35.052906, 30.737329, 20.082043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754463, 30.677990, 20.698702>,  <35.286327, 30.149231, 20.381468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754463, 30.677990, 20.698702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.467957, 30.876938, 20.502913>,  <35.296051, 30.996307, 20.385439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.467957, 30.876938, 20.502913>,  <35.754463, 30.677990, 20.698702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467957, 30.876938, 20.502913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089907, 0.761355, 0.642072,
		0.692010, 0.415888, -0.590051,
		-0.716267, 0.497370, -0.489474,
		35.253075, 31.026148, 20.356070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896233, 31.449631, 20.517860>,  <35.754463, 30.677990, 20.698702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896233, 31.449631, 20.517860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496830, 31.470831, 20.512564>,  <35.257187, 31.483551, 20.509386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496830, 31.470831, 20.512564>,  <35.896233, 31.449631, 20.517860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496830, 31.470831, 20.512564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033441, 0.784674, 0.619006,
		0.043200, 0.617639, -0.785275,
		-0.998507, 0.053002, -0.013243,
		35.197277, 31.486731, 20.508591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647644, 32.137760, 20.277416>,  <35.896233, 31.449631, 20.517860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647644, 32.137760, 20.277416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.358776, 31.969940, 20.497398>,  <35.185455, 31.869249, 20.629387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.358776, 31.969940, 20.497398>,  <35.647644, 32.137760, 20.277416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358776, 31.969940, 20.497398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012461, 0.787039, 0.616778,
		-0.691605, 0.452271, -0.563147,
		-0.722169, -0.419549, 0.549956,
		35.142124, 31.844076, 20.662386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057999, 32.633083, 20.328594>,  <35.647644, 32.137760, 20.277416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057999, 32.633083, 20.328594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034935, 32.384949, 20.641481>,  <35.021095, 32.236069, 20.829214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034935, 32.384949, 20.641481>,  <35.057999, 32.633083, 20.328594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034935, 32.384949, 20.641481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111943, 0.774562, 0.622513,
		-0.992040, 0.123460, 0.024778,
		-0.057663, -0.620332, 0.782217,
		35.017635, 32.198849, 20.876146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738464, 32.924061, 20.739851>,  <35.057999, 32.633083, 20.328594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738464, 32.924061, 20.739851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.860371, 32.644897, 20.999096>,  <34.933514, 32.477402, 21.154642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.860371, 32.644897, 20.999096>,  <34.738464, 32.924061, 20.739851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860371, 32.644897, 20.999096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173162, 0.709744, 0.682846,
		-0.936553, -0.095880, 0.337156,
		0.304766, -0.697904, 0.648110,
		34.951801, 32.435528, 21.193529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330242, 33.065742, 21.342001>,  <34.738464, 32.924061, 20.739851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330242, 33.065742, 21.342001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.644314, 32.853661, 21.469980>,  <34.832756, 32.726410, 21.546768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.644314, 32.853661, 21.469980>,  <34.330242, 33.065742, 21.342001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644314, 32.853661, 21.469980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059736, 0.579096, 0.813068,
		-0.616377, -0.619294, 0.486369,
		0.785182, -0.530210, 0.319947,
		34.879868, 32.694599, 21.565964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165688, 33.135490, 22.011187>,  <34.330242, 33.065742, 21.342001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165688, 33.135490, 22.011187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.553726, 33.051304, 21.962837>,  <34.786549, 33.000793, 21.933826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.553726, 33.051304, 21.962837>,  <34.165688, 33.135490, 22.011187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553726, 33.051304, 21.962837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241112, 0.778728, 0.579179,
		-0.027769, -0.591005, 0.806189,
		0.970100, -0.210465, -0.120874,
		34.844757, 32.988163, 21.926575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511066, 33.250252, 21.893518>,  <34.165688, 33.135490, 22.011187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511066, 33.250252, 21.893518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.255703, 33.509224, 22.060017>,  <33.102486, 33.664608, 22.159916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.255703, 33.509224, 22.060017>,  <33.511066, 33.250252, 21.893518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255703, 33.509224, 22.060017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598757, -0.077927, -0.797131,
		-0.483653, -0.758127, 0.437404,
		-0.638412, 0.647434, 0.416245,
		33.064178, 33.703453, 22.184891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864719, 32.899464, 22.005180>,  <33.511066, 33.250252, 21.893518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864719, 32.899464, 22.005180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.836895, 33.296944, 21.970015>,  <32.820202, 33.535431, 21.948915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.836895, 33.296944, 21.970015>,  <32.864719, 32.899464, 22.005180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836895, 33.296944, 21.970015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455260, -0.110039, -0.883533,
		-0.887637, -0.021435, 0.460044,
		-0.069561, 0.993696, -0.087916,
		32.816025, 33.595051, 21.943640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165272, 33.032074, 21.723751>,  <32.864719, 32.899464, 22.005180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165272, 33.032074, 21.723751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.376583, 33.360329, 21.636597>,  <32.503372, 33.557281, 21.584303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.376583, 33.360329, 21.636597>,  <32.165272, 33.032074, 21.723751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376583, 33.360329, 21.636597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269367, -0.081377, -0.959593,
		-0.805207, 0.565627, 0.178063,
		0.528282, 0.820636, -0.217887,
		32.535069, 33.606518, 21.571230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692871, 33.537651, 21.433414>,  <32.165272, 33.032074, 21.723751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692871, 33.537651, 21.433414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057289, 33.629246, 21.296267>,  <32.275940, 33.684204, 21.213978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057289, 33.629246, 21.296267>,  <31.692871, 33.537651, 21.433414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057289, 33.629246, 21.296267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377827, 0.130785, -0.916592,
		-0.165047, 0.964603, 0.205670,
		0.911047, 0.228988, -0.342868,
		32.330605, 33.697941, 21.193407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497051, 34.017811, 20.869184>,  <31.692871, 33.537651, 21.433414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497051, 34.017811, 20.869184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.886751, 33.945961, 20.814667>,  <32.120571, 33.902851, 20.781956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.886751, 33.945961, 20.814667>,  <31.497051, 34.017811, 20.869184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886751, 33.945961, 20.814667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118147, 0.108182, -0.987086,
		0.192045, 0.977770, 0.084174,
		0.974248, -0.179620, -0.136296,
		32.179028, 33.892075, 20.773777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808718, 34.717991, 20.565964>,  <31.497051, 34.017811, 20.869184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808718, 34.717991, 20.565964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.013371, 34.387001, 20.473431>,  <32.136162, 34.188408, 20.417912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.013371, 34.387001, 20.473431>,  <31.808718, 34.717991, 20.565964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013371, 34.387001, 20.473431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034041, 0.249508, -0.967774,
		0.858529, 0.503021, 0.099489,
		0.511634, -0.827475, -0.231333,
		32.166862, 34.138760, 20.404030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279537, 34.885712, 19.893099>,  <31.808718, 34.717991, 20.565964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279537, 34.885712, 19.893099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256733, 34.487068, 19.916853>,  <32.243050, 34.247883, 19.931105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256733, 34.487068, 19.916853>,  <32.279537, 34.885712, 19.893099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256733, 34.487068, 19.916853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162980, -0.049394, -0.985392,
		0.984981, -0.065856, -0.159611,
		-0.057011, -0.996606, 0.059385,
		32.239628, 34.188087, 19.934668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749992, 34.601643, 19.403559>,  <32.279537, 34.885712, 19.893099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749992, 34.601643, 19.403559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.454220, 34.345383, 19.486313>,  <32.276756, 34.191628, 19.535965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.454220, 34.345383, 19.486313>,  <32.749992, 34.601643, 19.403559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454220, 34.345383, 19.486313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296949, 0.034573, -0.954267,
		0.604200, -0.767053, -0.215806,
		-0.739435, -0.640651, 0.206886,
		32.232388, 34.153187, 19.548378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785561, 34.282574, 18.812775>,  <32.749992, 34.601643, 19.403559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785561, 34.282574, 18.812775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.462749, 34.099194, 18.961647>,  <32.269062, 33.989166, 19.050970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.462749, 34.099194, 18.961647>,  <32.785561, 34.282574, 18.812775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462749, 34.099194, 18.961647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256604, -0.295387, -0.920272,
		0.531840, -0.838193, 0.120745,
		-0.807032, -0.458454, 0.372182,
		32.220638, 33.961658, 19.073301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687073, 33.586468, 18.447935>,  <32.785561, 34.282574, 18.812775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687073, 33.586468, 18.447935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.330746, 33.701004, 18.589050>,  <32.116951, 33.769726, 18.673719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.330746, 33.701004, 18.589050>,  <32.687073, 33.586468, 18.447935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330746, 33.701004, 18.589050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432526, -0.296574, -0.851449,
		-0.139177, -0.911073, 0.388042,
		-0.890815, 0.286340, 0.352787,
		32.063499, 33.786907, 18.694885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154453, 33.041241, 18.230038>,  <32.687073, 33.586468, 18.447935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154453, 33.041241, 18.230038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.929285, 33.359257, 18.320396>,  <31.794184, 33.550068, 18.374611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.929285, 33.359257, 18.320396>,  <32.154453, 33.041241, 18.230038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929285, 33.359257, 18.320396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534438, -0.141652, -0.833253,
		-0.630470, -0.589787, 0.504638,
		-0.562925, 0.795039, 0.225897,
		31.760408, 33.597767, 18.388165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485098, 32.846966, 18.076845>,  <32.154453, 33.041241, 18.230038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485098, 32.846966, 18.076845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.480461, 33.246300, 18.099438>,  <31.477680, 33.485901, 18.112993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.480461, 33.246300, 18.099438>,  <31.485098, 32.846966, 18.076845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480461, 33.246300, 18.099438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689407, 0.032938, -0.723625,
		-0.724282, -0.047327, 0.687878,
		-0.011590, 0.998336, 0.056483,
		31.476984, 33.545799, 18.116383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789816, 33.070602, 18.258152>,  <31.485098, 32.846966, 18.076845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789816, 33.070602, 18.258152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.957607, 33.358330, 18.036661>,  <31.058283, 33.530968, 17.903767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.957607, 33.358330, 18.036661>,  <30.789816, 33.070602, 18.258152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957607, 33.358330, 18.036661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763392, -0.050530, -0.643956,
		-0.491192, 0.692836, 0.527929,
		0.419480, 0.719323, -0.553725,
		31.083452, 33.574127, 17.870544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151428, 32.963287, 18.524652>,  <30.789816, 33.070602, 18.258152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151428, 32.963287, 18.524652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.898277, 32.666397, 18.436502>,  <29.746387, 32.488262, 18.383614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.898277, 32.666397, 18.436502>,  <30.151428, 32.963287, 18.524652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898277, 32.666397, 18.436502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033961, -0.257741, 0.965617,
		-0.773507, 0.618601, 0.137911,
		-0.632877, -0.742228, -0.220373,
		29.708414, 32.443729, 18.370390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633791, 33.016430, 19.007919>,  <30.151428, 32.963287, 18.524652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633791, 33.016430, 19.007919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673378, 32.637543, 18.885944>,  <29.697130, 32.410210, 18.812759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673378, 32.637543, 18.885944>,  <29.633791, 33.016430, 19.007919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673378, 32.637543, 18.885944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135200, -0.290801, 0.947183,
		-0.985863, -0.134966, 0.099284,
		0.098966, -0.947216, -0.304937,
		29.703068, 32.353378, 18.794462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312798, 32.650082, 19.526045>,  <29.633791, 33.016430, 19.007919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312798, 32.650082, 19.526045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515299, 32.358082, 19.342386>,  <29.636799, 32.182884, 19.232191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515299, 32.358082, 19.342386>,  <29.312798, 32.650082, 19.526045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515299, 32.358082, 19.342386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207460, -0.413687, 0.886467,
		-0.837060, -0.544030, -0.057985,
		0.506252, -0.729996, -0.459146,
		29.667175, 32.139084, 19.204643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084454, 32.119751, 19.903717>,  <29.312798, 32.650082, 19.526045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084454, 32.119751, 19.903717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.432037, 31.995777, 19.749395>,  <29.640589, 31.921392, 19.656801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.432037, 31.995777, 19.749395>,  <29.084454, 32.119751, 19.903717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432037, 31.995777, 19.749395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293794, -0.304265, 0.906150,
		-0.398237, -0.900757, -0.173336,
		0.868961, -0.309937, -0.385806,
		29.692726, 31.902796, 19.633654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159687, 31.385252, 20.053391>,  <29.084454, 32.119751, 19.903717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159687, 31.385252, 20.053391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.533754, 31.496910, 19.966179>,  <29.758194, 31.563906, 19.913851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.533754, 31.496910, 19.966179>,  <29.159687, 31.385252, 20.053391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533754, 31.496910, 19.966179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340606, -0.539797, 0.769810,
		0.097196, -0.794165, -0.599879,
		0.935169, 0.279145, -0.218031,
		29.814304, 31.580654, 19.900770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582743, 30.763893, 20.257620>,  <29.159687, 31.385252, 20.053391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582743, 30.763893, 20.257620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.845646, 31.061583, 20.210056>,  <30.003387, 31.240196, 20.181519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.845646, 31.061583, 20.210056>,  <29.582743, 30.763893, 20.257620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845646, 31.061583, 20.210056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417437, -0.228120, 0.879607,
		0.627501, -0.627765, -0.460601,
		0.657259, 0.744226, -0.118907,
		30.042824, 31.284851, 20.174385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155781, 30.446184, 20.545637>,  <29.582743, 30.763893, 20.257620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155781, 30.446184, 20.545637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213745, 30.841913, 20.551802>,  <30.248524, 31.079351, 20.555500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.213745, 30.841913, 20.551802>,  <30.155781, 30.446184, 20.545637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213745, 30.841913, 20.551802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349919, -0.065810, 0.934466,
		0.925504, -0.130022, -0.355720,
		0.144911, 0.989325, 0.015411,
		30.257217, 31.138710, 20.556425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899803, 30.567751, 20.791046>,  <30.155781, 30.446184, 20.545637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899803, 30.567751, 20.791046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.691103, 30.905994, 20.836159>,  <30.565884, 31.108940, 20.863226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.691103, 30.905994, 20.836159>,  <30.899803, 30.567751, 20.791046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691103, 30.905994, 20.836159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278095, 0.043609, 0.959563,
		0.806498, 0.532017, -0.257912,
		-0.521751, 0.845610, 0.112781,
		30.534578, 31.159678, 20.869993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700338, 30.434723, 20.813263>,  <30.899803, 30.567751, 20.791046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700338, 30.434723, 20.813263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.800198, 30.073669, 20.953506>,  <31.860113, 29.857037, 21.037653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.800198, 30.073669, 20.953506>,  <31.700338, 30.434723, 20.813263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800198, 30.073669, 20.953506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129936, -0.327571, -0.935849,
		0.959579, 0.279190, 0.035507,
		0.249649, -0.902635, 0.350607,
		31.875092, 29.802879, 21.058689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405521, 30.218725, 20.594213>,  <31.700338, 30.434723, 20.813263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405521, 30.218725, 20.594213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191364, 29.888899, 20.667358>,  <32.062870, 29.691002, 20.711246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191364, 29.888899, 20.667358>,  <32.405521, 30.218725, 20.594213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191364, 29.888899, 20.667358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131477, -0.295236, -0.946335,
		0.834305, -0.482622, 0.266480,
		-0.535397, -0.824567, 0.182863,
		32.030746, 29.641529, 20.722218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808922, 29.695868, 20.324347>,  <32.405521, 30.218725, 20.594213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808922, 29.695868, 20.324347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.437145, 29.550209, 20.348137>,  <32.214081, 29.462814, 20.362411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.437145, 29.550209, 20.348137>,  <32.808922, 29.695868, 20.324347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437145, 29.550209, 20.348137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131354, -0.477185, -0.868930,
		0.344797, -0.799807, 0.491348,
		-0.929441, -0.364146, 0.059474,
		32.158314, 29.440966, 20.365978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909573, 28.962870, 20.336882>,  <32.808922, 29.695868, 20.324347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909573, 28.962870, 20.336882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.533901, 29.020927, 20.212378>,  <32.308498, 29.055763, 20.137674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.533901, 29.020927, 20.212378>,  <32.909573, 28.962870, 20.336882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533901, 29.020927, 20.212378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123162, -0.703681, -0.699760,
		-0.320596, -0.695533, 0.643003,
		-0.939175, 0.145146, -0.311260,
		32.252148, 29.064472, 20.118999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753269, 28.301294, 20.161865>,  <32.909573, 28.962870, 20.336882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753269, 28.301294, 20.161865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447948, 28.496578, 19.992622>,  <32.264755, 28.613749, 19.891077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447948, 28.496578, 19.992622>,  <32.753269, 28.301294, 20.161865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447948, 28.496578, 19.992622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063861, -0.708734, -0.702579,
		-0.642880, -0.509259, 0.572155,
		-0.763301, 0.488213, -0.423109,
		32.218960, 28.643042, 19.865690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265259, 27.811266, 19.979923>,  <32.753269, 28.301294, 20.161865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265259, 27.811266, 19.979923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.169212, 28.123606, 19.749229>,  <32.111584, 28.311010, 19.610813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.169212, 28.123606, 19.749229>,  <32.265259, 27.811266, 19.979923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169212, 28.123606, 19.749229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034033, -0.600520, -0.798885,
		-0.970148, -0.172195, 0.170768,
		-0.240114, 0.780849, -0.576732,
		32.097179, 28.357861, 19.576210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583216, 27.646366, 19.719042>,  <32.265259, 27.811266, 19.979923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583216, 27.646366, 19.719042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.731497, 27.904764, 19.452127>,  <31.820465, 28.059803, 19.291979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.731497, 27.904764, 19.452127>,  <31.583216, 27.646366, 19.719042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731497, 27.904764, 19.452127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003003, -0.717638, -0.696409,
		-0.928748, 0.260163, -0.264089,
		0.370701, 0.645995, -0.667286,
		31.842707, 28.098562, 19.251942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283957, 27.462112, 19.180885>,  <31.583216, 27.646366, 19.719042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283957, 27.462112, 19.180885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.592493, 27.666220, 19.028751>,  <31.777615, 27.788685, 18.937471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.592493, 27.666220, 19.028751>,  <31.283957, 27.462112, 19.180885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592493, 27.666220, 19.028751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111225, -0.696504, -0.708880,
		-0.626625, 0.504487, -0.593999,
		0.771343, 0.510269, -0.380336,
		31.823896, 27.819300, 18.914650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273018, 27.544659, 18.375168>,  <31.283957, 27.462112, 19.180885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273018, 27.544659, 18.375168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.650841, 27.552750, 18.506258>,  <31.877535, 27.557604, 18.584911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.650841, 27.552750, 18.506258>,  <31.273018, 27.544659, 18.375168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650841, 27.552750, 18.506258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240645, -0.721700, -0.649029,
		0.223390, 0.691910, -0.686555,
		0.944557, 0.020229, 0.327725,
		31.934208, 27.558819, 18.604576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.485191, 34.696716, 32.185165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879303, 34.628353, 32.183136>,  <36.115768, 34.587337, 32.181919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879303, 34.628353, 32.183136>,  <35.485191, 34.696716, 32.185165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879303, 34.628353, 32.183136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097108, -0.534939, -0.839291,
		0.140726, 0.827425, -0.543659,
		0.985275, -0.170904, -0.005070,
		36.174885, 34.577084, 32.181614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687412, 34.759335, 31.476988>,  <35.485191, 34.696716, 32.185165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687412, 34.759335, 31.476988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954292, 34.517056, 31.650412>,  <36.114418, 34.371689, 31.754465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954292, 34.517056, 31.650412>,  <35.687412, 34.759335, 31.476988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954292, 34.517056, 31.650412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173357, -0.692334, -0.700443,
		0.724428, 0.392173, -0.566926,
		0.667197, -0.605701, 0.433560,
		36.154453, 34.335346, 31.780479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193531, 34.596806, 30.988670>,  <35.687412, 34.759335, 31.476988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193531, 34.596806, 30.988670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.187241, 34.304798, 31.261969>,  <36.183468, 34.129593, 31.425947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.187241, 34.304798, 31.261969>,  <36.193531, 34.596806, 30.988670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187241, 34.304798, 31.261969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203536, -0.666683, -0.717012,
		0.978941, -0.150340, -0.138102,
		-0.015725, -0.730022, 0.683243,
		36.182522, 34.085793, 31.466942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409946, 34.073341, 30.667925>,  <36.193531, 34.596806, 30.988670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409946, 34.073341, 30.667925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232681, 33.890526, 30.976398>,  <36.126324, 33.780838, 31.161484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232681, 33.890526, 30.976398>,  <36.409946, 34.073341, 30.667925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232681, 33.890526, 30.976398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403835, -0.666257, -0.626912,
		0.800329, -0.589254, 0.110692,
		-0.443160, -0.457035, 0.771186,
		36.099731, 33.753414, 31.207754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472080, 33.354172, 30.611107>,  <36.409946, 34.073341, 30.667925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472080, 33.354172, 30.611107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168098, 33.365070, 30.870869>,  <35.985710, 33.371609, 31.026726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168098, 33.365070, 30.870869>,  <36.472080, 33.354172, 30.611107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168098, 33.365070, 30.870869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479983, -0.697221, -0.532446,
		0.438272, -0.716338, 0.542934,
		-0.759957, 0.027243, 0.649403,
		35.940113, 33.373245, 31.065689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317162, 32.718613, 30.643372>,  <36.472080, 33.354172, 30.611107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317162, 32.718613, 30.643372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980438, 32.908844, 30.745495>,  <35.778404, 33.022984, 30.806768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980438, 32.908844, 30.745495>,  <36.317162, 32.718613, 30.643372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980438, 32.908844, 30.745495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534145, -0.665816, -0.520940,
		-0.077759, -0.574904, 0.814518,
		-0.841809, 0.475579, 0.255308,
		35.727894, 33.051517, 30.822088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789223, 32.134277, 30.732170>,  <36.317162, 32.718613, 30.643372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789223, 32.134277, 30.732170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581570, 32.471264, 30.674545>,  <35.456978, 32.673454, 30.639971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581570, 32.471264, 30.674545>,  <35.789223, 32.134277, 30.732170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581570, 32.471264, 30.674545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635778, -0.493290, -0.593676,
		-0.571215, -0.216607, 0.791704,
		-0.519134, 0.842465, -0.144061,
		35.425831, 32.724003, 30.631327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150383, 31.859598, 30.634502>,  <35.789223, 32.134277, 30.732170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150383, 31.859598, 30.634502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126644, 32.237480, 30.505501>,  <35.112400, 32.464211, 30.428099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126644, 32.237480, 30.505501>,  <35.150383, 31.859598, 30.634502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126644, 32.237480, 30.505501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698508, -0.270105, -0.662669,
		-0.713137, 0.185944, 0.675915,
		-0.059349, 0.944705, -0.322505,
		35.108841, 32.520893, 30.408749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428944, 31.970341, 30.559944>,  <35.150383, 31.859598, 30.634502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428944, 31.970341, 30.559944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626553, 32.231560, 30.330347>,  <34.745117, 32.388290, 30.192589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626553, 32.231560, 30.330347>,  <34.428944, 31.970341, 30.559944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626553, 32.231560, 30.330347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555604, -0.270679, -0.786153,
		-0.668764, 0.707291, 0.229114,
		0.494023, 0.653048, -0.573995,
		34.774761, 32.427475, 30.158148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895103, 32.318142, 30.120640>,  <34.428944, 31.970341, 30.559944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895103, 32.318142, 30.120640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250809, 32.375423, 29.946880>,  <34.464233, 32.409794, 29.842625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250809, 32.375423, 29.946880>,  <33.895103, 32.318142, 30.120640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250809, 32.375423, 29.946880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417146, -0.135638, -0.898661,
		-0.187614, 0.980354, -0.060881,
		0.889264, 0.143205, -0.434398,
		34.517590, 32.418385, 29.816561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829128, 32.917870, 29.775986>,  <33.895103, 32.318142, 30.120640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829128, 32.917870, 29.775986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122501, 32.702065, 29.610575>,  <34.298523, 32.572582, 29.511328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122501, 32.702065, 29.610575>,  <33.829128, 32.917870, 29.775986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122501, 32.702065, 29.610575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549548, -0.112541, -0.827848,
		0.400098, 0.834421, -0.379030,
		0.733429, -0.539515, -0.413527,
		34.342529, 32.540211, 29.486517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713921, 33.050961, 29.090166>,  <33.829128, 32.917870, 29.775986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713921, 33.050961, 29.090166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925941, 32.711781, 29.091906>,  <34.053154, 32.508270, 29.092949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925941, 32.711781, 29.091906>,  <33.713921, 33.050961, 29.090166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925941, 32.711781, 29.091906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464214, -0.294463, -0.835343,
		0.709613, 0.440757, -0.549712,
		0.530053, -0.847954, 0.004349,
		34.084957, 32.457394, 29.093210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531898, 33.645985, 28.665770>,  <33.713921, 33.050961, 29.090166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531898, 33.645985, 28.665770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151234, 33.727299, 28.757868>,  <32.922836, 33.776089, 28.813126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151234, 33.727299, 28.757868>,  <33.531898, 33.645985, 28.665770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151234, 33.727299, 28.757868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302870, 0.496488, 0.813492,
		0.051059, 0.843904, -0.534059,
		-0.951663, 0.203286, 0.230243,
		32.865734, 33.788284, 28.826941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585239, 34.370800, 28.680246>,  <33.531898, 33.645985, 28.665770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585239, 34.370800, 28.680246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279942, 34.224503, 28.893295>,  <33.096764, 34.136726, 29.021124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279942, 34.224503, 28.893295>,  <33.585239, 34.370800, 28.680246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279942, 34.224503, 28.893295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235817, 0.609798, 0.756662,
		-0.601534, 0.703122, -0.379179,
		-0.763248, -0.365741, 0.532622,
		33.050968, 34.114780, 29.053082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408020, 34.942848, 29.089085>,  <33.585239, 34.370800, 28.680246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408020, 34.942848, 29.089085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205521, 34.661232, 29.288301>,  <33.084023, 34.492264, 29.407831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205521, 34.661232, 29.288301>,  <33.408020, 34.942848, 29.089085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205521, 34.661232, 29.288301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224079, 0.450291, 0.864307,
		-0.832767, 0.549155, -0.070200,
		-0.506249, -0.704036, 0.498042,
		33.053646, 34.450020, 29.437714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955906, 35.254856, 29.562757>,  <33.408020, 34.942848, 29.089085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955906, 35.254856, 29.562757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.991737, 34.886719, 29.715042>,  <33.013237, 34.665836, 29.806412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.991737, 34.886719, 29.715042>,  <32.955906, 35.254856, 29.562757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991737, 34.886719, 29.715042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284304, 0.389971, 0.875839,
		-0.954540, 0.029781, 0.296591,
		0.089578, -0.920345, 0.380710,
		33.018612, 34.610615, 29.829254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812737, 35.477955, 30.174816>,  <32.955906, 35.254856, 29.562757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812737, 35.477955, 30.174816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942425, 35.102119, 30.218727>,  <33.020237, 34.876617, 30.245073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942425, 35.102119, 30.218727>,  <32.812737, 35.477955, 30.174816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942425, 35.102119, 30.218727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187856, 0.177684, 0.965991,
		-0.927142, -0.292570, 0.234116,
		0.324218, -0.939591, 0.109777,
		33.039692, 34.820244, 30.251659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435696, 35.173828, 30.694445>,  <32.812737, 35.477955, 30.174816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435696, 35.173828, 30.694445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786785, 34.983494, 30.671885>,  <32.997440, 34.869293, 30.658348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786785, 34.983494, 30.671885>,  <32.435696, 35.173828, 30.694445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786785, 34.983494, 30.671885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197167, 0.251376, 0.947595,
		-0.436721, -0.842847, 0.314458,
		0.877724, -0.475835, -0.056400,
		33.050102, 34.840744, 30.654964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353962, 34.766281, 31.247810>,  <32.435696, 35.173828, 30.694445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353962, 34.766281, 31.247810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748535, 34.774609, 31.182663>,  <32.985279, 34.779606, 31.143576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748535, 34.774609, 31.182663>,  <32.353962, 34.766281, 31.247810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748535, 34.774609, 31.182663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157858, 0.152609, 0.975598,
		0.045160, -0.988067, 0.147252,
		0.986428, 0.020813, -0.162867,
		33.044464, 34.780853, 31.133802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742401, 34.382763, 31.841766>,  <32.353962, 34.766281, 31.247810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742401, 34.382763, 31.841766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000477, 34.638126, 31.673876>,  <33.155323, 34.791344, 31.573141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000477, 34.638126, 31.673876>,  <32.742401, 34.382763, 31.841766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000477, 34.638126, 31.673876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243017, 0.349353, 0.904928,
		0.724343, -0.685851, 0.070256,
		0.645190, 0.638405, -0.419724,
		33.194035, 34.829647, 31.547958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323158, 34.473179, 32.309509>,  <32.742401, 34.382763, 31.841766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323158, 34.473179, 32.309509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353439, 34.779003, 32.053471>,  <33.371609, 34.962498, 31.899849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353439, 34.779003, 32.053471>,  <33.323158, 34.473179, 32.309509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353439, 34.779003, 32.053471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215356, 0.614250, 0.759157,
		0.973597, -0.195315, -0.118154,
		0.075699, 0.764558, -0.640094,
		33.376148, 35.008369, 31.861443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724510, 34.910465, 32.689434>,  <33.323158, 34.473179, 32.309509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724510, 34.910465, 32.689434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572605, 35.141346, 32.400265>,  <33.481461, 35.279873, 32.226765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572605, 35.141346, 32.400265>,  <33.724510, 34.910465, 32.689434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572605, 35.141346, 32.400265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155446, 0.730539, 0.664943,
		0.911930, 0.364897, -0.187709,
		-0.379764, 0.577203, -0.722922,
		33.458675, 35.314507, 32.183388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115059, 35.432827, 32.751617>,  <33.724510, 34.910465, 32.689434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115059, 35.432827, 32.751617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801899, 35.559692, 32.537521>,  <33.614002, 35.635811, 32.409065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801899, 35.559692, 32.537521>,  <34.115059, 35.432827, 32.751617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801899, 35.559692, 32.537521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082529, 0.799754, 0.594629,
		0.616655, 0.509705, -0.599948,
		-0.782896, 0.317167, -0.535237,
		33.567032, 35.654842, 32.376949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301418, 36.073009, 32.586445>,  <34.115059, 35.432827, 32.751617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301418, 36.073009, 32.586445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904430, 36.098324, 32.544506>,  <33.666237, 36.113510, 32.519344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904430, 36.098324, 32.544506>,  <34.301418, 36.073009, 32.586445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904430, 36.098324, 32.544506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020780, 0.930747, 0.365073,
		0.120685, 0.360147, -0.925056,
		-0.992473, 0.063281, -0.104844,
		33.606689, 36.117310, 32.513054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153252, 36.744843, 32.299309>,  <34.301418, 36.073009, 32.586445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153252, 36.744843, 32.299309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830475, 36.623470, 32.501995>,  <33.636806, 36.550648, 32.623608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830475, 36.623470, 32.501995>,  <34.153252, 36.744843, 32.299309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830475, 36.623470, 32.501995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045094, 0.823783, 0.565109,
		-0.588901, 0.478863, -0.651066,
		-0.806946, -0.303434, 0.506720,
		33.588390, 36.532440, 32.654011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633774, 37.268326, 32.317833>,  <34.153252, 36.744843, 32.299309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633774, 37.268326, 32.317833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528374, 37.034012, 32.624409>,  <33.465134, 36.893425, 32.808353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528374, 37.034012, 32.624409>,  <33.633774, 37.268326, 32.317833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528374, 37.034012, 32.624409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071373, 0.804179, 0.590086,
		-0.962016, 0.100785, -0.253709,
		-0.263500, -0.585780, 0.766440,
		33.449326, 36.858276, 32.854340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331329, 37.445366, 32.013100>,  <33.633774, 37.268326, 32.317833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331329, 37.445366, 32.013100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.247555, 37.721680, 31.736271>,  <34.197289, 37.887466, 31.570175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.247555, 37.721680, 31.736271>,  <34.331329, 37.445366, 32.013100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247555, 37.721680, 31.736271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940074, 0.052505, 0.336902,
		0.269063, 0.721156, 0.638388,
		-0.209440, 0.690780, -0.692068,
		34.184723, 37.928913, 31.528650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130005, 37.611351, 31.957066>,  <34.331329, 37.445366, 32.013100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130005, 37.611351, 31.957066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496883, 37.543678, 31.812775>,  <35.717010, 37.503075, 31.726200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496883, 37.543678, 31.812775>,  <35.130005, 37.611351, 31.957066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496883, 37.543678, 31.812775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393246, -0.238854, -0.887866,
		0.064048, 0.956204, -0.285606,
		0.917200, -0.169180, -0.360725,
		35.772045, 37.492924, 31.704557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170460, 38.040325, 31.374657>,  <35.130005, 37.611351, 31.957066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170460, 38.040325, 31.374657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442799, 37.750420, 31.332394>,  <35.606201, 37.576477, 31.307035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442799, 37.750420, 31.332394>,  <35.170460, 38.040325, 31.374657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442799, 37.750420, 31.332394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433157, -0.282113, -0.856030,
		0.590616, 0.628588, -0.506014,
		0.680843, -0.724768, -0.105657,
		35.647053, 37.532990, 31.300697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473820, 37.991882, 30.671040>,  <35.170460, 38.040325, 31.374657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473820, 37.991882, 30.671040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540462, 37.628456, 30.824270>,  <35.580448, 37.410400, 30.916208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540462, 37.628456, 30.824270>,  <35.473820, 37.991882, 30.671040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540462, 37.628456, 30.824270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234600, -0.413876, -0.879585,
		0.957708, 0.056677, -0.282106,
		0.166609, -0.908567, 0.383076,
		35.590446, 37.355885, 30.939194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016140, 37.699982, 30.228313>,  <35.473820, 37.991882, 30.671040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016140, 37.699982, 30.228313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814472, 37.409988, 30.416018>,  <35.693470, 37.235992, 30.528639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814472, 37.409988, 30.416018>,  <36.016140, 37.699982, 30.228313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814472, 37.409988, 30.416018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284002, -0.373963, -0.882890,
		0.815570, -0.578398, -0.017356,
		-0.504171, -0.724988, 0.469259,
		35.663219, 37.192493, 30.556795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095531, 37.133636, 29.865208>,  <36.016140, 37.699982, 30.228313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095531, 37.133636, 29.865208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795128, 37.009518, 30.098341>,  <35.614883, 36.935047, 30.238222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795128, 37.009518, 30.098341>,  <36.095531, 37.133636, 29.865208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795128, 37.009518, 30.098341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378423, -0.521078, -0.765032,
		0.541087, -0.795108, 0.273914,
		-0.751013, -0.310293, 0.582835,
		35.569824, 36.916431, 30.273191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145130, 36.436588, 29.869144>,  <36.095531, 37.133636, 29.865208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145130, 36.436588, 29.869144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760483, 36.533436, 29.920797>,  <35.529694, 36.591545, 29.951788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760483, 36.533436, 29.920797>,  <36.145130, 36.436588, 29.869144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760483, 36.533436, 29.920797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237419, -0.498186, -0.833933,
		-0.137578, -0.832581, 0.536546,
		-0.961616, 0.242117, 0.129131,
		35.471996, 36.606071, 29.959536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698051, 35.828796, 29.619532>,  <36.145130, 36.436588, 29.869144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698051, 35.828796, 29.619532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420528, 36.116253, 29.638258>,  <35.254013, 36.288727, 29.649494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420528, 36.116253, 29.638258>,  <35.698051, 35.828796, 29.619532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420528, 36.116253, 29.638258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387525, -0.317762, -0.865362,
		-0.607005, -0.618537, 0.498956,
		-0.693808, 0.718637, 0.046816,
		35.212387, 36.331844, 29.652302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990566, 35.543941, 29.615507>,  <35.698051, 35.828796, 29.619532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990566, 35.543941, 29.615507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949230, 35.924332, 29.498917>,  <34.924431, 36.152565, 29.428963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949230, 35.924332, 29.498917>,  <34.990566, 35.543941, 29.615507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949230, 35.924332, 29.498917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425369, -0.307148, -0.851305,
		-0.899101, 0.036015, 0.436257,
		-0.103335, 0.950980, -0.291477,
		34.918228, 36.209625, 29.411474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299744, 35.579128, 29.358028>,  <34.990566, 35.543941, 29.615507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299744, 35.579128, 29.358028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.472637, 35.891033, 29.176855>,  <34.576374, 36.078175, 29.068151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.472637, 35.891033, 29.176855>,  <34.299744, 35.579128, 29.358028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472637, 35.891033, 29.176855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457963, -0.242872, -0.855151,
		-0.776818, 0.577050, 0.252125,
		0.432230, 0.779761, -0.452935,
		34.602306, 36.124962, 29.040974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810459, 35.805149, 28.836042>,  <34.299744, 35.579128, 29.358028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810459, 35.805149, 28.836042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184357, 35.917301, 28.748730>,  <34.408695, 35.984592, 28.696342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184357, 35.917301, 28.748730>,  <33.810459, 35.805149, 28.836042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184357, 35.917301, 28.748730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154542, -0.232374, -0.960270,
		-0.319959, 0.931339, -0.173879,
		0.934742, 0.280376, -0.218281,
		34.464779, 36.001415, 28.683245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740780, 36.173042, 28.243155>,  <33.810459, 35.805149, 28.836042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740780, 36.173042, 28.243155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135040, 36.105537, 28.244236>,  <34.371597, 36.065033, 28.244884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135040, 36.105537, 28.244236>,  <33.740780, 36.173042, 28.243155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135040, 36.105537, 28.244236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007724, 0.029083, -0.999547,
		0.168611, 0.985227, 0.029970,
		0.985652, -0.168766, 0.002706,
		34.430737, 36.054909, 28.245049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940834, 36.531902, 27.689905>,  <33.740780, 36.173042, 28.243155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940834, 36.531902, 27.689905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235584, 36.266285, 27.740597>,  <34.412434, 36.106915, 27.771011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235584, 36.266285, 27.740597>,  <33.940834, 36.531902, 27.689905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235584, 36.266285, 27.740597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061623, -0.120702, -0.990774,
		0.673210, 0.737890, -0.048022,
		0.736879, -0.664040, 0.126729,
		34.456650, 36.067074, 27.778616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354301, 36.651730, 27.173115>,  <33.940834, 36.531902, 27.689905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354301, 36.651730, 27.173115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449326, 36.281250, 27.290234>,  <34.506340, 36.058964, 27.360504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449326, 36.281250, 27.290234>,  <34.354301, 36.651730, 27.173115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449326, 36.281250, 27.290234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048052, -0.289851, -0.955865,
		0.970184, 0.241143, -0.024351,
		0.237559, -0.926195, 0.292796,
		34.520592, 36.003391, 27.378073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861549, 36.466019, 26.861870>,  <34.354301, 36.651730, 27.173115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861549, 36.466019, 26.861870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715412, 36.108688, 26.966557>,  <34.627728, 35.894291, 27.029367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715412, 36.108688, 26.966557>,  <34.861549, 36.466019, 26.861870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715412, 36.108688, 26.966557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002070, -0.280371, -0.959890,
		0.930869, -0.351234, 0.100583,
		-0.365346, -0.893323, 0.261716,
		34.605808, 35.840691, 27.045071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356049, 35.990871, 26.568348>,  <34.861549, 36.466019, 26.861870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356049, 35.990871, 26.568348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041424, 35.762665, 26.662859>,  <34.852650, 35.625740, 26.719566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041424, 35.762665, 26.662859>,  <35.356049, 35.990871, 26.568348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041424, 35.762665, 26.662859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104124, -0.499688, -0.859924,
		0.608668, -0.651783, 0.452441,
		-0.786563, -0.570519, 0.236278,
		34.805454, 35.591511, 26.733742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538517, 35.319508, 26.276342>,  <35.356049, 35.990871, 26.568348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538517, 35.319508, 26.276342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144070, 35.304989, 26.341166>,  <34.907402, 35.296276, 26.380058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144070, 35.304989, 26.341166>,  <35.538517, 35.319508, 26.276342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144070, 35.304989, 26.341166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118251, -0.531677, -0.838651,
		0.116604, -0.846169, 0.520002,
		-0.986114, -0.036299, 0.162056,
		34.848236, 35.294098, 26.389782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413830, 34.645702, 26.316761>,  <35.538517, 35.319508, 26.276342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413830, 34.645702, 26.316761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073025, 34.832371, 26.221851>,  <34.868542, 34.944370, 26.164906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073025, 34.832371, 26.221851>,  <35.413830, 34.645702, 26.316761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073025, 34.832371, 26.221851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098100, -0.587510, -0.803249,
		-0.514251, -0.661100, 0.546345,
		-0.852011, 0.466668, -0.237273,
		34.817421, 34.972370, 26.150669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901867, 34.053757, 26.200407>,  <35.413830, 34.645702, 26.316761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901867, 34.053757, 26.200407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783539, 34.389744, 26.018442>,  <34.712540, 34.591335, 25.909264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783539, 34.389744, 26.018442>,  <34.901867, 34.053757, 26.200407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783539, 34.389744, 26.018442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223981, -0.523942, -0.821777,
		-0.928612, -0.141210, 0.343132,
		-0.295824, 0.839967, -0.454910,
		34.694790, 34.641735, 25.881969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272564, 33.851593, 25.889774>,  <34.901867, 34.053757, 26.200407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272564, 33.851593, 25.889774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360744, 34.187977, 25.692114>,  <34.413651, 34.389809, 25.573517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360744, 34.187977, 25.692114>,  <34.272564, 33.851593, 25.889774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360744, 34.187977, 25.692114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443222, -0.364927, -0.818769,
		-0.868883, 0.399515, 0.292285,
		0.220448, 0.840961, -0.494153,
		34.426880, 34.440266, 25.543867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760746, 34.014511, 25.496134>,  <34.272564, 33.851593, 25.889774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760746, 34.014511, 25.496134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050377, 34.216228, 25.307922>,  <34.224155, 34.337257, 25.194996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050377, 34.216228, 25.307922>,  <33.760746, 34.014511, 25.496134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050377, 34.216228, 25.307922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433432, -0.197975, -0.879172,
		-0.536510, 0.840535, 0.075224,
		0.724082, 0.504289, -0.470530,
		34.267601, 34.367516, 25.166763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392544, 34.478748, 25.195389>,  <33.760746, 34.014511, 25.496134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392544, 34.478748, 25.195389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743401, 34.478996, 25.003294>,  <33.953915, 34.479145, 24.888037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743401, 34.478996, 25.003294>,  <33.392544, 34.478748, 25.195389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743401, 34.478996, 25.003294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480147, -0.018347, -0.876996,
		-0.009351, 0.999831, -0.015797,
		0.877138, 0.000616, -0.480238,
		34.006542, 34.479179, 24.859222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406929, 35.047279, 24.747231>,  <33.392544, 34.478748, 25.195389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406929, 35.047279, 24.747231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706478, 34.837158, 24.585613>,  <33.886208, 34.711086, 24.488642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706478, 34.837158, 24.585613>,  <33.406929, 35.047279, 24.747231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706478, 34.837158, 24.585613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540582, -0.131516, -0.830948,
		0.383361, 0.840691, -0.382457,
		0.748869, -0.525303, -0.404044,
		33.931137, 34.679569, 24.464399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495129, 35.332466, 24.033955>,  <33.406929, 35.047279, 24.747231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495129, 35.332466, 24.033955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650379, 34.963837, 24.030783>,  <33.743530, 34.742661, 24.028879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650379, 34.963837, 24.030783>,  <33.495129, 35.332466, 24.033955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650379, 34.963837, 24.030783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409306, -0.164659, -0.897416,
		0.825727, 0.351558, -0.441114,
		0.388127, -0.921572, -0.007931,
		33.766819, 34.687366, 24.028404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828289, 35.340778, 23.388073>,  <33.495129, 35.332466, 24.033955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828289, 35.340778, 23.388073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781143, 34.965080, 23.517027>,  <33.752853, 34.739662, 23.594398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781143, 34.965080, 23.517027>,  <33.828289, 35.340778, 23.388073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781143, 34.965080, 23.517027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200870, -0.295384, -0.934023,
		0.972501, -0.174847, -0.153850,
		-0.117867, -0.939243, 0.322383,
		33.745785, 34.683308, 23.613741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888596, 35.043491, 22.794359>,  <33.828289, 35.340778, 23.388073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888596, 35.043491, 22.794359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736458, 34.741653, 23.008251>,  <33.645176, 34.560551, 23.136585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736458, 34.741653, 23.008251>,  <33.888596, 35.043491, 22.794359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736458, 34.741653, 23.008251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354031, -0.415349, -0.837942,
		0.854402, -0.508013, -0.109174,
		-0.380340, -0.754591, 0.534728,
		33.622356, 34.515278, 23.168669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229626, 34.444691, 22.505882>,  <33.888596, 35.043491, 22.794359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229626, 34.444691, 22.505882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871719, 34.378906, 22.671946>,  <33.656975, 34.339436, 22.771584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871719, 34.378906, 22.671946>,  <34.229626, 34.444691, 22.505882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871719, 34.378906, 22.671946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324741, -0.398498, -0.857755,
		0.306505, -0.902304, 0.303153,
		-0.894761, -0.164460, 0.415157,
		33.603291, 34.329567, 22.796492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036495, 33.857136, 22.256466>,  <34.229626, 34.444691, 22.505882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036495, 33.857136, 22.256466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676655, 33.966450, 22.392717>,  <33.460751, 34.032040, 22.474468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676655, 33.966450, 22.392717>,  <34.036495, 33.857136, 22.256466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676655, 33.966450, 22.392717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419590, -0.324668, -0.847664,
		-0.121062, -0.905487, 0.406740,
		-0.899604, 0.273284, 0.340628,
		33.406773, 34.048435, 22.494905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470192, 33.401833, 22.698877>,  <34.036495, 33.857136, 22.256466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470192, 33.401833, 22.698877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794212, 33.325508, 22.477100>,  <34.988625, 33.279713, 22.344034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794212, 33.325508, 22.477100>,  <34.470192, 33.401833, 22.698877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794212, 33.325508, 22.477100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505854, 0.705596, 0.496231,
		0.296523, -0.682440, 0.668094,
		0.810053, -0.190814, -0.554441,
		35.037228, 33.268265, 22.310768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975937, 33.309040, 23.100050>,  <34.470192, 33.401833, 22.698877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975937, 33.309040, 23.100050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167080, 33.401356, 22.761019>,  <35.281765, 33.456745, 22.557600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167080, 33.401356, 22.761019>,  <34.975937, 33.309040, 23.100050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167080, 33.401356, 22.761019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623677, 0.590344, 0.512368,
		0.618615, -0.773452, 0.138157,
		0.477852, 0.230793, -0.847580,
		35.310436, 33.470592, 22.506744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570892, 33.415241, 23.334148>,  <34.975937, 33.309040, 23.100050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570892, 33.415241, 23.334148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627857, 33.582062, 22.975086>,  <35.662037, 33.682152, 22.759649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627857, 33.582062, 22.975086>,  <35.570892, 33.415241, 23.334148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627857, 33.582062, 22.975086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682113, 0.615817, 0.394324,
		0.717246, -0.668460, -0.196775,
		0.142412, 0.417050, -0.897657,
		35.670582, 33.707176, 22.705790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306046, 33.270470, 23.087540>,  <35.570892, 33.415241, 23.334148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306046, 33.270470, 23.087540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161751, 33.604176, 22.920750>,  <36.075176, 33.804401, 22.820675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161751, 33.604176, 22.920750>,  <36.306046, 33.270470, 23.087540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161751, 33.604176, 22.920750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689763, 0.539562, 0.482805,
		0.627772, -0.113448, -0.770086,
		-0.360735, 0.834268, -0.416974,
		36.053532, 33.854454, 22.795658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973072, 33.518772, 22.896889>,  <36.306046, 33.270470, 23.087540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973072, 33.518772, 22.896889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690979, 33.801983, 22.911587>,  <36.521725, 33.971909, 22.920404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690979, 33.801983, 22.911587>,  <36.973072, 33.518772, 22.896889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690979, 33.801983, 22.911587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641340, 0.615005, 0.458750,
		0.302208, 0.347090, -0.887805,
		-0.705232, 0.708023, 0.036743,
		36.479408, 34.014389, 22.922609>
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
