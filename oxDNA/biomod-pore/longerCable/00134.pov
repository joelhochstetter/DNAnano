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
	<24.505394, 34.709785, 34.834263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.193316, 34.901257, 34.995338>,  <24.006069, 35.016140, 35.091984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.193316, 34.901257, 34.995338>,  <24.505394, 34.709785, 34.834263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.193316, 34.901257, 34.995338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595971, 0.764381, 0.246049,
		-0.190032, 0.431960, -0.881646,
		-0.780196, 0.478678, 0.402692,
		23.959257, 35.044861, 35.116146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518383, 35.351532, 34.534382>,  <24.505394, 34.709785, 34.834263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518383, 35.351532, 34.534382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340219, 35.372353, 34.891907>,  <24.233320, 35.384846, 35.106422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340219, 35.372353, 34.891907>,  <24.518383, 35.351532, 34.534382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340219, 35.372353, 34.891907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758538, 0.552285, 0.345835,
		-0.475637, 0.832029, -0.285478,
		-0.445410, 0.052054, 0.893812,
		24.206596, 35.387970, 35.160049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.318274, 36.034809, 34.773499>,  <24.518383, 35.351532, 34.534382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.318274, 36.034809, 34.773499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424555, 35.805317, 35.083397>,  <24.488323, 35.667622, 35.269337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424555, 35.805317, 35.083397>,  <24.318274, 36.034809, 34.773499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424555, 35.805317, 35.083397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822569, 0.554031, 0.128181,
		-0.502775, 0.603226, 0.619141,
		0.265701, -0.573732, 0.774748,
		24.504265, 35.633198, 35.315823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.289333, 36.533051, 35.365517>,  <24.318274, 36.034809, 34.773499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.289333, 36.533051, 35.365517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546562, 36.228569, 35.399052>,  <24.700899, 36.045879, 35.419174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546562, 36.228569, 35.399052>,  <24.289333, 36.533051, 35.365517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.546562, 36.228569, 35.399052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763809, 0.645440, 0.001508,
		-0.055263, 0.063069, 0.996478,
		0.643072, -0.761202, 0.083842,
		24.739483, 36.000210, 35.424206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.802073, 36.649666, 35.875877>,  <24.289333, 36.533051, 35.365517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.802073, 36.649666, 35.875877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965204, 36.403461, 35.606117>,  <25.063084, 36.255737, 35.444260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965204, 36.403461, 35.606117>,  <24.802073, 36.649666, 35.875877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965204, 36.403461, 35.606117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837804, 0.545906, 0.008405,
		0.362986, -0.568443, 0.738318,
		0.407830, -0.615515, -0.674401,
		25.087553, 36.218807, 35.403797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468470, 37.057884, 35.612259>,  <24.802073, 36.649666, 35.875877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468470, 37.057884, 35.612259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554796, 36.700954, 35.453674>,  <25.606592, 36.486797, 35.358524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554796, 36.700954, 35.453674>,  <25.468470, 37.057884, 35.612259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554796, 36.700954, 35.453674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903559, 0.336420, -0.265335,
		0.370142, -0.300961, 0.878873,
		0.215815, -0.892325, -0.396459,
		25.619541, 36.433258, 35.334736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132132, 36.839127, 35.899441>,  <25.468470, 37.057884, 35.612259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132132, 36.839127, 35.899441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060938, 36.685387, 35.537094>,  <26.018221, 36.593143, 35.319687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060938, 36.685387, 35.537094>,  <26.132132, 36.839127, 35.899441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060938, 36.685387, 35.537094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869478, 0.369648, -0.327671,
		0.460793, -0.845953, 0.268390,
		-0.177985, -0.384348, -0.905869,
		26.007542, 36.570084, 35.265335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716831, 36.309254, 35.586845>,  <26.132132, 36.839127, 35.899441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716831, 36.309254, 35.586845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498753, 36.512070, 35.319809>,  <26.367907, 36.633759, 35.159588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498753, 36.512070, 35.319809>,  <26.716831, 36.309254, 35.586845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498753, 36.512070, 35.319809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820108, 0.487636, -0.299390,
		0.173739, -0.710722, -0.681681,
		-0.545195, 0.507036, -0.667590,
		26.335194, 36.664181, 35.119534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129490, 36.260242, 34.911037>,  <26.716831, 36.309254, 35.586845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129490, 36.260242, 34.911037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880507, 36.572617, 34.931786>,  <26.731117, 36.760040, 34.944237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880507, 36.572617, 34.931786>,  <27.129490, 36.260242, 34.911037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880507, 36.572617, 34.931786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757491, 0.617793, -0.211044,
		-0.196857, -0.092073, -0.976099,
		-0.622459, 0.780932, 0.051872,
		26.693769, 36.806896, 34.947346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222954, 36.624947, 34.296967>,  <27.129490, 36.260242, 34.911037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222954, 36.624947, 34.296967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059753, 36.890030, 34.548157>,  <26.961832, 37.049080, 34.698872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059753, 36.890030, 34.548157>,  <27.222954, 36.624947, 34.296967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059753, 36.890030, 34.548157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740678, 0.642415, -0.196719,
		-0.533788, 0.384866, -0.752960,
		-0.408002, 0.662708, 0.627975,
		26.937353, 37.088840, 34.736549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278044, 37.219700, 33.936890>,  <27.222954, 36.624947, 34.296967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278044, 37.219700, 33.936890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228767, 37.336464, 34.316280>,  <27.199202, 37.406521, 34.543915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228767, 37.336464, 34.316280>,  <27.278044, 37.219700, 33.936890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228767, 37.336464, 34.316280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687790, 0.714093, -0.130442,
		-0.715380, 0.636285, -0.288743,
		-0.123191, 0.291910, 0.948479,
		27.191811, 37.424038, 34.600822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608528, 37.848503, 33.838058>,  <27.278044, 37.219700, 33.936890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608528, 37.848503, 33.838058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528431, 37.838612, 34.229832>,  <27.480373, 37.832676, 34.464897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528431, 37.838612, 34.229832>,  <27.608528, 37.848503, 33.838058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528431, 37.838612, 34.229832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775439, 0.607015, 0.173860,
		-0.598831, 0.794305, -0.102374,
		-0.200241, -0.024728, 0.979435,
		27.468359, 37.831192, 34.523663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424658, 38.497784, 34.352184>,  <27.608528, 37.848503, 33.838058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424658, 38.497784, 34.352184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623556, 38.188725, 34.510052>,  <27.742895, 38.003288, 34.604771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623556, 38.188725, 34.510052>,  <27.424658, 38.497784, 34.352184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623556, 38.188725, 34.510052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714274, 0.622781, 0.319306,
		-0.492501, 0.123125, 0.861558,
		0.497247, -0.772648, 0.394665,
		27.772730, 37.956932, 34.628452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587027, 38.618313, 35.100506>,  <27.424658, 38.497784, 34.352184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587027, 38.618313, 35.100506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845970, 38.362469, 34.934700>,  <28.001335, 38.208961, 34.835217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845970, 38.362469, 34.934700>,  <27.587027, 38.618313, 35.100506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845970, 38.362469, 34.934700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743405, 0.649852, 0.158244,
		0.168160, -0.410594, 0.896178,
		0.647357, -0.639612, -0.414517,
		28.040176, 38.170586, 34.810345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079294, 38.235126, 35.554970>,  <27.587027, 38.618313, 35.100506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079294, 38.235126, 35.554970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258846, 38.315315, 35.206646>,  <28.366577, 38.363430, 34.997650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258846, 38.315315, 35.206646>,  <28.079294, 38.235126, 35.554970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258846, 38.315315, 35.206646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700900, 0.525498, 0.482276,
		0.554297, -0.826837, 0.095371,
		0.448881, 0.200479, -0.870812,
		28.393511, 38.375458, 34.945404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756144, 37.455879, 35.715168>,  <28.079294, 38.235126, 35.554970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756144, 37.455879, 35.715168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592369, 37.725079, 35.468777>,  <27.494104, 37.886600, 35.320942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592369, 37.725079, 35.468777>,  <27.756144, 37.455879, 35.715168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592369, 37.725079, 35.468777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782182, -0.606484, -0.142718,
		-0.469630, 0.423372, 0.774728,
		-0.409438, 0.673003, -0.615977,
		27.469538, 37.926979, 35.283985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012478, 37.876900, 35.814976>,  <27.756144, 37.455879, 35.715168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012478, 37.876900, 35.814976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087135, 37.753826, 35.441772>,  <27.131929, 37.679981, 35.217850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087135, 37.753826, 35.441772>,  <27.012478, 37.876900, 35.814976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087135, 37.753826, 35.441772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922662, -0.381083, -0.058902,
		-0.337429, 0.871842, -0.355011,
		0.186642, -0.307680, -0.933005,
		27.143127, 37.661522, 35.161873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358324, 38.010918, 35.448643>,  <27.012478, 37.876900, 35.814976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358324, 38.010918, 35.448643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540916, 37.730675, 35.229275>,  <26.650473, 37.562527, 35.097652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540916, 37.730675, 35.229275>,  <26.358324, 38.010918, 35.448643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540916, 37.730675, 35.229275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869696, -0.481433, -0.108865,
		-0.187757, 0.526657, -0.829084,
		0.456482, -0.700611, -0.548423,
		26.677860, 37.520493, 35.064747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987165, 37.836609, 34.698555>,  <26.358324, 38.010918, 35.448643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987165, 37.836609, 34.698555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187117, 37.512760, 34.821609>,  <26.307087, 37.318451, 34.895443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187117, 37.512760, 34.821609>,  <25.987165, 37.836609, 34.698555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187117, 37.512760, 34.821609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836591, -0.543285, -0.070405,
		0.224134, -0.222170, -0.948896,
		0.499879, -0.809618, 0.307634,
		26.337080, 37.269875, 34.913898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767454, 37.365097, 34.219978>,  <25.987165, 37.836609, 34.698555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767454, 37.365097, 34.219978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924498, 37.145836, 34.515377>,  <26.018724, 37.014278, 34.692616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924498, 37.145836, 34.515377>,  <25.767454, 37.365097, 34.219978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924498, 37.145836, 34.515377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816641, -0.577117, 0.005782,
		0.423032, -0.605361, -0.674227,
		0.392608, -0.548156, 0.738501,
		26.042280, 36.981388, 34.736927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590376, 36.683132, 34.127113>,  <25.767454, 37.365097, 34.219978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590376, 36.683132, 34.127113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686947, 36.699986, 34.514915>,  <25.744890, 36.710098, 34.747597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686947, 36.699986, 34.514915>,  <25.590376, 36.683132, 34.127113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686947, 36.699986, 34.514915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735603, -0.643664, 0.211154,
		0.632931, -0.764148, -0.124406,
		0.241428, 0.042133, 0.969504,
		25.759375, 36.712624, 34.805767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803804, 36.095654, 34.292343>,  <25.590376, 36.683132, 34.127113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803804, 36.095654, 34.292343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647766, 36.221249, 34.638577>,  <25.554142, 36.296604, 34.846317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647766, 36.221249, 34.638577>,  <25.803804, 36.095654, 34.292343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647766, 36.221249, 34.638577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636768, -0.771021, -0.007290,
		0.665094, -0.554019, 0.500711,
		-0.390098, 0.313989, 0.865584,
		25.530737, 36.315445, 34.898251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502005, 35.457977, 34.456047>,  <25.803804, 36.095654, 34.292343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502005, 35.457977, 34.456047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380423, 35.684914, 34.762180>,  <25.307474, 35.821075, 34.945862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380423, 35.684914, 34.762180>,  <25.502005, 35.457977, 34.456047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380423, 35.684914, 34.762180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795786, -0.592864, 0.123437,
		0.523771, -0.571525, 0.631683,
		-0.303954, 0.567338, 0.765336,
		25.289236, 35.855114, 34.991779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553768, 35.131588, 35.039028>,  <25.502005, 35.457977, 34.456047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553768, 35.131588, 35.039028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271368, 35.414356, 35.021912>,  <25.101929, 35.584019, 35.011642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271368, 35.414356, 35.021912>,  <25.553768, 35.131588, 35.039028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271368, 35.414356, 35.021912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703941, -0.707084, -0.067081,
		-0.077679, -0.017235, 0.996830,
		-0.705998, 0.706920, -0.042793,
		25.059568, 35.626431, 35.009075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958858, 34.525360, 35.207172>,  <25.553768, 35.131588, 35.039028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958858, 34.525360, 35.207172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045406, 34.893139, 35.075836>,  <26.097336, 35.113804, 34.997032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045406, 34.893139, 35.075836>,  <25.958858, 34.525360, 35.207172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045406, 34.893139, 35.075836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920052, -0.079513, 0.383642,
		0.326630, -0.385102, -0.863140,
		0.216372, 0.919442, -0.328342,
		26.110317, 35.168972, 34.977333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595226, 34.469330, 34.838322>,  <25.958858, 34.525360, 35.207172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595226, 34.469330, 34.838322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551115, 34.821030, 35.023685>,  <26.524649, 35.032051, 35.134903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551115, 34.821030, 35.023685>,  <26.595226, 34.469330, 34.838322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551115, 34.821030, 35.023685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943414, -0.054114, 0.327173,
		0.312745, 0.473269, -0.823533,
		-0.110276, 0.879254, 0.463412,
		26.518032, 35.084805, 35.162708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643711, 33.776615, 34.449665>,  <26.595226, 34.469330, 34.838322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643711, 33.776615, 34.449665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999001, 33.602299, 34.391502>,  <27.212173, 33.497707, 34.356606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999001, 33.602299, 34.391502>,  <26.643711, 33.776615, 34.449665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999001, 33.602299, 34.391502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391746, 0.553131, 0.735242,
		-0.239988, -0.710020, 0.662025,
		0.888223, -0.435795, -0.145403,
		27.265467, 33.471561, 34.347881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854824, 33.813141, 35.110828>,  <26.643711, 33.776615, 34.449665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854824, 33.813141, 35.110828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172440, 33.802010, 34.867939>,  <27.363008, 33.795330, 34.722206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172440, 33.802010, 34.867939>,  <26.854824, 33.813141, 35.110828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172440, 33.802010, 34.867939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561718, 0.415384, 0.715492,
		0.232321, -0.909220, 0.345463,
		0.794040, -0.027829, -0.607228,
		27.410652, 33.793659, 34.685772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500511, 33.543941, 35.315445>,  <26.854824, 33.813141, 35.110828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500511, 33.543941, 35.315445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588867, 33.862511, 35.090263>,  <27.641882, 34.053654, 34.955154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588867, 33.862511, 35.090263>,  <27.500511, 33.543941, 35.315445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588867, 33.862511, 35.090263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284121, 0.499626, 0.818321,
		0.932997, -0.340706, -0.115918,
		0.220891, 0.796425, -0.562951,
		27.655134, 34.101437, 34.921379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185259, 33.740013, 35.477062>,  <27.500511, 33.543941, 35.315445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185259, 33.740013, 35.477062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996761, 34.066719, 35.343895>,  <27.883663, 34.262741, 35.263996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996761, 34.066719, 35.343895>,  <28.185259, 33.740013, 35.477062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996761, 34.066719, 35.343895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283746, 0.497776, 0.819578,
		0.835115, 0.291758, -0.466326,
		-0.471244, 0.816760, -0.332915,
		27.855389, 34.311749, 35.244022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600365, 34.237869, 35.415794>,  <28.185259, 33.740013, 35.477062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600365, 34.237869, 35.415794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249968, 34.420120, 35.479092>,  <28.039730, 34.529469, 35.517071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249968, 34.420120, 35.479092>,  <28.600365, 34.237869, 35.415794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249968, 34.420120, 35.479092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407410, 0.523366, 0.748402,
		0.258172, 0.720065, -0.644092,
		-0.875993, 0.455626, 0.158243,
		27.987169, 34.556808, 35.526566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707003, 34.938496, 35.645893>,  <28.600365, 34.237869, 35.415794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707003, 34.938496, 35.645893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660017, 35.330822, 35.583672>,  <28.631824, 35.566219, 35.546337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660017, 35.330822, 35.583672>,  <28.707003, 34.938496, 35.645893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660017, 35.330822, 35.583672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933261, -0.162570, -0.320304,
		-0.339449, 0.107551, 0.934456,
		-0.117465, 0.980818, -0.155558,
		28.624777, 35.625069, 35.537003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152494, 35.267159, 36.105663>,  <28.707003, 34.938496, 35.645893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152494, 35.267159, 36.105663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213942, 35.421913, 35.741966>,  <28.250811, 35.514767, 35.523750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213942, 35.421913, 35.741966>,  <28.152494, 35.267159, 36.105663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213942, 35.421913, 35.741966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933170, -0.245800, -0.262253,
		-0.324955, 0.888762, 0.323276,
		0.153619, 0.386891, -0.909239,
		28.260027, 35.537979, 35.469193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818336, 35.693470, 36.254890>,  <28.152494, 35.267159, 36.105663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818336, 35.693470, 36.254890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042376, 36.017548, 36.185749>,  <29.176800, 36.211994, 36.144264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042376, 36.017548, 36.185749>,  <28.818336, 35.693470, 36.254890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042376, 36.017548, 36.185749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082177, 0.153283, 0.984760,
		0.824340, -0.565767, 0.019274,
		0.560099, 0.810193, -0.172851,
		29.210405, 36.260605, 36.133892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529766, 35.619316, 36.450878>,  <28.818336, 35.693470, 36.254890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529766, 35.619316, 36.450878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414488, 36.000435, 36.489063>,  <29.345322, 36.229107, 36.511974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414488, 36.000435, 36.489063>,  <29.529766, 35.619316, 36.450878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414488, 36.000435, 36.489063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248863, -0.021744, 0.968295,
		0.924668, 0.302817, -0.230850,
		-0.288196, 0.952801, 0.095466,
		29.328030, 36.286274, 36.517704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083284, 36.105354, 36.797619>,  <29.529766, 35.619316, 36.450878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083284, 36.105354, 36.797619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705618, 36.210255, 36.877392>,  <29.479017, 36.273193, 36.925255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705618, 36.210255, 36.877392>,  <30.083284, 36.105354, 36.797619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705618, 36.210255, 36.877392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181223, -0.092142, 0.979116,
		0.275150, 0.960591, 0.039472,
		-0.944167, 0.262250, 0.199434,
		29.422367, 36.288929, 36.937222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020201, 36.722713, 36.467266>,  <30.083284, 36.105354, 36.797619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020201, 36.722713, 36.467266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938124, 36.566547, 36.108273>,  <29.888878, 36.472847, 35.892876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938124, 36.566547, 36.108273>,  <30.020201, 36.722713, 36.467266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938124, 36.566547, 36.108273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417551, 0.794431, -0.441057,
		0.885182, -0.465245, 0.000007,
		-0.205194, -0.390419, -0.897479,
		29.876566, 36.449421, 35.839027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636703, 36.631859, 36.047783>,  <30.020201, 36.722713, 36.467266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636703, 36.631859, 36.047783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341740, 36.657738, 35.778847>,  <30.164761, 36.673267, 35.617485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341740, 36.657738, 35.778847>,  <30.636703, 36.631859, 36.047783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341740, 36.657738, 35.778847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504423, 0.714738, -0.484466,
		0.449200, -0.696394, -0.559692,
		-0.737412, 0.064700, -0.672337,
		30.120516, 36.677147, 35.577145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988100, 36.933502, 35.461929>,  <30.636703, 36.631859, 36.047783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988100, 36.933502, 35.461929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602121, 36.988461, 35.372486>,  <30.370533, 37.021435, 35.318821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602121, 36.988461, 35.372486>,  <30.988100, 36.933502, 35.461929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602121, 36.988461, 35.372486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222650, 0.879618, -0.420356,
		0.138932, -0.455407, -0.879376,
		-0.964948, 0.137393, -0.223603,
		30.312637, 37.029678, 35.305405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865795, 37.084393, 34.675674>,  <30.988100, 36.933502, 35.461929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865795, 37.084393, 34.675674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607645, 37.243954, 34.936249>,  <30.452755, 37.339691, 35.092594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607645, 37.243954, 34.936249>,  <30.865795, 37.084393, 34.675674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607645, 37.243954, 34.936249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319722, 0.915581, -0.243905,
		-0.693735, 0.050867, -0.718432,
		-0.645376, 0.398904, 0.651434,
		30.414032, 37.363625, 35.131680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459202, 37.586529, 34.393539>,  <30.865795, 37.084393, 34.675674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459202, 37.586529, 34.393539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486063, 37.684643, 34.780388>,  <30.502180, 37.743511, 35.012497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486063, 37.684643, 34.780388>,  <30.459202, 37.586529, 34.393539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486063, 37.684643, 34.780388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226899, 0.940158, -0.254206,
		-0.971600, 0.236509, 0.007479,
		0.067153, 0.245289, 0.967121,
		30.506208, 37.758228, 35.070526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939348, 38.157104, 34.572269>,  <30.459202, 37.586529, 34.393539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939348, 38.157104, 34.572269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266401, 38.168877, 34.802265>,  <30.462633, 38.175938, 34.940262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266401, 38.168877, 34.802265>,  <29.939348, 38.157104, 34.572269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266401, 38.168877, 34.802265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119830, 0.968124, -0.219946,
		-0.563135, 0.248735, 0.788041,
		0.817630, 0.029428, 0.574991,
		30.511690, 38.177704, 34.974762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504969, 37.912289, 35.216759>,  <29.939348, 38.157104, 34.572269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504969, 37.912289, 35.216759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721863, 37.630154, 35.034122>,  <29.851999, 37.460873, 34.924541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721863, 37.630154, 35.034122>,  <29.504969, 37.912289, 35.216759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721863, 37.630154, 35.034122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533528, -0.708837, 0.461408,
		-0.649097, -0.006590, -0.760677,
		0.542237, -0.705341, -0.456588,
		29.884533, 37.418552, 34.897144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099957, 37.256588, 34.958218>,  <29.504969, 37.912289, 35.216759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099957, 37.256588, 34.958218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478121, 37.164127, 35.050106>,  <29.705019, 37.108650, 35.105240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478121, 37.164127, 35.050106>,  <29.099957, 37.256588, 34.958218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478121, 37.164127, 35.050106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292667, -0.912279, 0.286521,
		0.143338, -0.338110, -0.930127,
		0.945410, -0.231148, 0.229718,
		29.761744, 37.094784, 35.119022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292042, 36.646828, 34.631748>,  <29.099957, 37.256588, 34.958218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292042, 36.646828, 34.631748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538385, 36.649467, 34.946880>,  <29.686192, 36.651051, 35.135960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538385, 36.649467, 34.946880>,  <29.292042, 36.646828, 34.631748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538385, 36.649467, 34.946880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340229, -0.899690, 0.273501,
		0.710609, -0.436480, -0.551834,
		0.615857, 0.006602, 0.787831,
		29.723143, 36.651447, 35.183231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570421, 35.939487, 34.692543>,  <29.292042, 36.646828, 34.631748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570421, 35.939487, 34.692543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611280, 36.116196, 35.049061>,  <29.635796, 36.222221, 35.262970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611280, 36.116196, 35.049061>,  <29.570421, 35.939487, 34.692543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611280, 36.116196, 35.049061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174295, -0.874173, 0.453257,
		0.979381, -0.201647, -0.012295,
		0.102146, 0.441769, 0.891295,
		29.641924, 36.248726, 35.316448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018351, 35.504871, 35.135525>,  <29.570421, 35.939487, 34.692543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018351, 35.504871, 35.135525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777878, 35.740738, 35.351257>,  <29.633595, 35.882259, 35.480698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777878, 35.740738, 35.351257>,  <30.018351, 35.504871, 35.135525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777878, 35.740738, 35.351257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229305, -0.773821, 0.590441,
		0.765508, 0.231291, 0.600419,
		-0.601180, 0.589666, 0.539329,
		29.597525, 35.917637, 35.513058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639668, 36.050953, 35.341774>,  <30.018351, 35.504871, 35.135525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639668, 36.050953, 35.341774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938713, 35.910923, 35.116024>,  <31.118139, 35.826904, 34.980572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938713, 35.910923, 35.116024>,  <30.639668, 36.050953, 35.341774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938713, 35.910923, 35.116024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640755, 0.156708, 0.751583,
		-0.174670, -0.923520, 0.341470,
		0.747612, -0.350077, -0.564377,
		31.162996, 35.805901, 34.946712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998810, 35.517151, 35.658291>,  <30.639668, 36.050953, 35.341774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998810, 35.517151, 35.658291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269695, 35.674591, 35.409630>,  <31.432226, 35.769054, 35.260433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269695, 35.674591, 35.409630>,  <30.998810, 35.517151, 35.658291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269695, 35.674591, 35.409630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647264, 0.083094, 0.757723,
		0.349899, -0.915517, -0.198493,
		0.677215, 0.393604, -0.621656,
		31.472860, 35.792671, 35.223133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622749, 35.007000, 35.587677>,  <30.998810, 35.517151, 35.658291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622749, 35.007000, 35.587677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688929, 35.398926, 35.542801>,  <31.728636, 35.634083, 35.515877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688929, 35.398926, 35.542801>,  <31.622749, 35.007000, 35.587677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688929, 35.398926, 35.542801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745844, -0.049885, 0.664250,
		0.645246, -0.193575, -0.739044,
		0.165450, 0.979816, -0.112189,
		31.738564, 35.692871, 35.509144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351196, 35.120857, 35.559048>,  <31.622749, 35.007000, 35.587677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351196, 35.120857, 35.559048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195545, 35.475700, 35.658337>,  <32.102154, 35.688606, 35.717911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195545, 35.475700, 35.658337>,  <32.351196, 35.120857, 35.559048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195545, 35.475700, 35.658337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649011, 0.072792, 0.757288,
		0.653729, 0.455783, -0.604070,
		-0.389131, 0.887109, 0.248222,
		32.078804, 35.741833, 35.732803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929680, 35.490028, 35.689827>,  <32.351196, 35.120857, 35.559048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929680, 35.490028, 35.689827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633110, 35.694279, 35.863976>,  <32.455170, 35.816830, 35.968464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633110, 35.694279, 35.863976>,  <32.929680, 35.490028, 35.689827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633110, 35.694279, 35.863976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559222, 0.111577, 0.821475,
		0.370892, 0.852531, -0.368281,
		-0.741425, 0.510629, 0.435371,
		32.410683, 35.847466, 35.994587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319511, 35.887871, 36.126213>,  <32.929680, 35.490028, 35.689827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319511, 35.887871, 36.126213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938457, 35.903648, 36.246834>,  <32.709827, 35.913116, 36.319206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938457, 35.903648, 36.246834>,  <33.319511, 35.887871, 36.126213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938457, 35.903648, 36.246834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303741, 0.073656, 0.949903,
		0.015261, 0.996503, -0.082149,
		-0.952632, 0.039449, 0.301555,
		32.652668, 35.915482, 36.337299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970848, 36.416077, 35.823986>,  <33.319511, 35.887871, 36.126213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970848, 36.416077, 35.823986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645931, 36.452824, 36.054375>,  <32.450981, 36.474873, 36.192608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645931, 36.452824, 36.054375>,  <32.970848, 36.416077, 35.823986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645931, 36.452824, 36.054375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520710, -0.330682, 0.787090,
		0.262769, 0.939261, 0.220775,
		-0.812289, 0.091863, 0.575976,
		32.402245, 36.480381, 36.227169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226925, 36.553310, 36.512871>,  <32.970848, 36.416077, 35.823986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226925, 36.553310, 36.512871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844715, 36.440418, 36.547081>,  <32.615387, 36.372684, 36.567608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844715, 36.440418, 36.547081>,  <33.226925, 36.553310, 36.512871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844715, 36.440418, 36.547081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189242, -0.364401, 0.911811,
		-0.226171, 0.887446, 0.401604,
		-0.955528, -0.282226, 0.085525,
		32.558056, 36.355751, 36.572739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937607, 36.706593, 37.151573>,  <33.226925, 36.553310, 36.512871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937607, 36.706593, 37.151573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729530, 36.372292, 37.081249>,  <32.604683, 36.171711, 37.039055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729530, 36.372292, 37.081249>,  <32.937607, 36.706593, 37.151573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729530, 36.372292, 37.081249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185697, -0.311611, 0.931888,
		-0.833616, 0.452116, 0.317295,
		-0.520194, -0.835757, -0.175807,
		32.573471, 36.121563, 37.028507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687496, 36.312496, 37.816784>,  <32.937607, 36.706593, 37.151573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687496, 36.312496, 37.816784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688728, 35.980953, 37.593006>,  <32.689468, 35.782028, 37.458740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688728, 35.980953, 37.593006>,  <32.687496, 36.312496, 37.816784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688728, 35.980953, 37.593006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131980, -0.554216, 0.821843,
		-0.991247, -0.076370, 0.107684,
		0.003084, -0.828862, -0.559445,
		32.689655, 35.732296, 37.425171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077522, 35.730324, 38.119114>,  <32.687496, 36.312496, 37.816784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077522, 35.730324, 38.119114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688557, 35.637020, 38.118385>,  <32.455177, 35.581036, 38.117947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688557, 35.637020, 38.118385>,  <33.077522, 35.730324, 38.119114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688557, 35.637020, 38.118385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001065, 0.012261, -0.999924,
		0.233266, -0.972337, -0.012171,
		-0.972412, -0.233261, -0.001824,
		32.396832, 35.567043, 38.117840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936054, 35.144085, 37.668999>,  <33.077522, 35.730324, 38.119114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936054, 35.144085, 37.668999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588745, 35.341335, 37.690624>,  <32.380360, 35.459686, 37.703598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588745, 35.341335, 37.690624>,  <32.936054, 35.144085, 37.668999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588745, 35.341335, 37.690624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052349, 0.017297, -0.998479,
		-0.493309, -0.869787, 0.010796,
		-0.868277, 0.493124, 0.054065,
		32.328262, 35.489273, 37.706844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448322, 34.877346, 37.144531>,  <32.936054, 35.144085, 37.668999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448322, 34.877346, 37.144531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331936, 35.241413, 37.262474>,  <32.262104, 35.459854, 37.333241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331936, 35.241413, 37.262474>,  <32.448322, 34.877346, 37.144531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331936, 35.241413, 37.262474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360482, 0.181179, -0.915001,
		-0.886224, -0.372521, 0.275382,
		-0.290963, 0.910166, 0.294852,
		32.244648, 35.514462, 37.350929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778330, 35.192543, 36.805435>,  <32.448322, 34.877346, 37.144531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778330, 35.192543, 36.805435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018669, 35.505608, 36.870453>,  <32.162872, 35.693447, 36.909462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018669, 35.505608, 36.870453>,  <31.778330, 35.192543, 36.805435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018669, 35.505608, 36.870453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295702, 0.406542, -0.864456,
		-0.742658, 0.471343, 0.475705,
		0.600849, 0.782662, 0.162544,
		32.198925, 35.740406, 36.919216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386189, 35.887589, 36.683933>,  <31.778330, 35.192543, 36.805435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386189, 35.887589, 36.683933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773794, 35.977238, 36.642399>,  <32.006359, 36.031025, 36.617477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773794, 35.977238, 36.642399>,  <31.386189, 35.887589, 36.683933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773794, 35.977238, 36.642399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178776, 0.346314, -0.920927,
		-0.170438, 0.910954, 0.375650,
		0.969015, 0.224118, -0.103832,
		32.064499, 36.044472, 36.611248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438921, 36.578007, 36.456879>,  <31.386189, 35.887589, 36.683933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438921, 36.578007, 36.456879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758690, 36.369423, 36.337543>,  <31.950552, 36.244274, 36.265942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758690, 36.369423, 36.337543>,  <31.438921, 36.578007, 36.456879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758690, 36.369423, 36.337543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249004, 0.164328, -0.954460,
		0.546736, 0.837303, 0.001522,
		0.799422, -0.521459, -0.298336,
		31.998516, 36.212986, 36.248043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671158, 36.939018, 36.011356>,  <31.438921, 36.578007, 36.456879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671158, 36.939018, 36.011356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785999, 36.566353, 35.922302>,  <31.854904, 36.342754, 35.868870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785999, 36.566353, 35.922302>,  <31.671158, 36.939018, 36.011356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785999, 36.566353, 35.922302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359030, 0.110817, -0.926724,
		0.888070, 0.346002, -0.302680,
		0.287106, -0.931666, -0.222638,
		31.872131, 36.286854, 35.855511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956657, 36.941406, 35.317245>,  <31.671158, 36.939018, 36.011356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956657, 36.941406, 35.317245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856178, 36.559608, 35.381538>,  <31.795891, 36.330528, 35.420113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856178, 36.559608, 35.381538>,  <31.956657, 36.941406, 35.317245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856178, 36.559608, 35.381538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319662, -0.074934, -0.944564,
		0.913629, -0.288651, -0.286293,
		-0.251196, -0.954498, 0.160733,
		31.780819, 36.273258, 35.429760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338001, 36.516380, 34.840675>,  <31.956657, 36.941406, 35.317245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338001, 36.516380, 34.840675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993822, 36.359367, 34.970634>,  <31.787315, 36.265160, 35.048611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993822, 36.359367, 34.970634>,  <32.338001, 36.516380, 34.840675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993822, 36.359367, 34.970634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313891, -0.093945, -0.944800,
		0.401384, -0.914929, -0.042377,
		-0.860444, -0.392530, 0.324896,
		31.735689, 36.241608, 35.068104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162754, 35.737705, 34.554745>,  <32.338001, 36.516380, 34.840675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162754, 35.737705, 34.554745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838762, 35.957500, 34.636715>,  <31.644367, 36.089378, 34.685898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838762, 35.957500, 34.636715>,  <32.162754, 35.737705, 34.554745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838762, 35.957500, 34.636715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324109, -0.128210, -0.937292,
		-0.488762, -0.825603, 0.281942,
		-0.809979, 0.549493, 0.204921,
		31.595768, 36.122349, 34.698193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561291, 35.332993, 34.524246>,  <32.162754, 35.737705, 34.554745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561291, 35.332993, 34.524246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502878, 35.699909, 34.376060>,  <31.467831, 35.920059, 34.287148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502878, 35.699909, 34.376060>,  <31.561291, 35.332993, 34.524246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502878, 35.699909, 34.376060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287257, -0.397666, -0.871404,
		-0.946656, -0.020832, 0.321571,
		-0.146031, 0.917294, -0.370469,
		31.459068, 35.975098, 34.264919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106180, 35.211998, 34.078407>,  <31.561291, 35.332993, 34.524246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106180, 35.211998, 34.078407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215128, 35.574768, 33.949844>,  <31.280497, 35.792431, 33.872707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215128, 35.574768, 33.949844>,  <31.106180, 35.211998, 34.078407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215128, 35.574768, 33.949844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152071, -0.289260, -0.945094,
		-0.950100, 0.306290, 0.059131,
		0.272369, 0.906926, -0.321404,
		31.296839, 35.846848, 33.853424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572645, 35.504299, 33.649738>,  <31.106180, 35.211998, 34.078407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572645, 35.504299, 33.649738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907104, 35.693539, 33.538719>,  <31.107780, 35.807083, 33.472107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907104, 35.693539, 33.538719>,  <30.572645, 35.504299, 33.649738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907104, 35.693539, 33.538719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218273, -0.177225, -0.959660,
		-0.503200, 0.863001, -0.044922,
		0.836150, 0.473096, -0.277550,
		31.157949, 35.835468, 33.455456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412933, 35.903790, 33.038853>,  <30.572645, 35.504299, 33.649738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412933, 35.903790, 33.038853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812029, 35.905388, 33.012020>,  <31.051487, 35.906345, 32.995922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812029, 35.905388, 33.012020>,  <30.412933, 35.903790, 33.038853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812029, 35.905388, 33.012020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064683, -0.213322, -0.974838,
		-0.018206, 0.976974, -0.212581,
		0.997740, 0.003997, -0.067078,
		31.111351, 35.906586, 32.991898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590029, 36.360615, 32.507935>,  <30.412933, 35.903790, 33.038853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590029, 36.360615, 32.507935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917419, 36.133808, 32.544994>,  <31.113853, 35.997723, 32.567230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917419, 36.133808, 32.544994>,  <30.590029, 36.360615, 32.507935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917419, 36.133808, 32.544994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150557, 0.056050, -0.987011,
		0.554462, 0.821795, 0.131245,
		0.818477, -0.567019, 0.092649,
		31.162962, 35.963703, 32.572788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084131, 36.683369, 32.051853>,  <30.590029, 36.360615, 32.507935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084131, 36.683369, 32.051853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212587, 36.310730, 32.119972>,  <31.289661, 36.087147, 32.160843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212587, 36.310730, 32.119972>,  <31.084131, 36.683369, 32.051853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212587, 36.310730, 32.119972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266802, -0.083544, -0.960124,
		0.908672, 0.353772, 0.221721,
		0.321141, -0.931593, 0.170301,
		31.308929, 36.031254, 32.171062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792070, 36.710503, 31.729822>,  <31.084131, 36.683369, 32.051853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792070, 36.710503, 31.729822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706060, 36.320934, 31.758799>,  <31.654453, 36.087193, 31.776184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706060, 36.320934, 31.758799>,  <31.792070, 36.710503, 31.729822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706060, 36.320934, 31.758799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225599, -0.121707, -0.966588,
		0.950194, -0.191499, 0.245885,
		-0.215027, -0.973918, 0.072443,
		31.641552, 36.028759, 31.780531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438885, 36.360779, 31.442362>,  <31.792070, 36.710503, 31.729822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438885, 36.360779, 31.442362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136093, 36.099403, 31.441353>,  <31.954418, 35.942577, 31.440748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136093, 36.099403, 31.441353>,  <32.438885, 36.360779, 31.442362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136093, 36.099403, 31.441353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198075, -0.225781, -0.953829,
		0.622697, -0.722526, 0.300340,
		-0.756977, -0.653436, -0.002521,
		31.909000, 35.903374, 31.440596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737080, 35.839417, 31.104853>,  <32.438885, 36.360779, 31.442362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737080, 35.839417, 31.104853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343464, 35.800930, 31.044966>,  <32.107296, 35.777840, 31.009033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343464, 35.800930, 31.044966>,  <32.737080, 35.839417, 31.104853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343464, 35.800930, 31.044966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145169, 0.052704, -0.988002,
		0.102953, -0.993964, -0.037895,
		-0.984036, -0.096216, -0.149719,
		32.048252, 35.772064, 31.000050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779297, 35.455509, 30.468035>,  <32.737080, 35.839417, 31.104853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779297, 35.455509, 30.468035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422756, 35.628590, 30.522078>,  <32.208832, 35.732437, 30.554502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422756, 35.628590, 30.522078>,  <32.779297, 35.455509, 30.468035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422756, 35.628590, 30.522078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047981, 0.206313, -0.977309,
		-0.450761, -0.877611, -0.163137,
		-0.891354, 0.432705, 0.135106,
		32.155350, 35.758400, 30.562609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585297, 35.309589, 29.822521>,  <32.779297, 35.455509, 30.468035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585297, 35.309589, 29.822521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303108, 35.568096, 29.938900>,  <32.133793, 35.723198, 30.008728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303108, 35.568096, 29.938900>,  <32.585297, 35.309589, 29.822521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303108, 35.568096, 29.938900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174855, 0.239119, -0.955117,
		-0.686828, -0.724684, -0.055690,
		-0.705474, 0.646263, 0.290948,
		32.091465, 35.761974, 30.026184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072426, 35.214176, 29.352562>,  <32.585297, 35.309589, 29.822521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072426, 35.214176, 29.352562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012184, 35.578552, 29.506191>,  <31.976040, 35.797176, 29.598370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012184, 35.578552, 29.506191>,  <32.072426, 35.214176, 29.352562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012184, 35.578552, 29.506191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347598, 0.314904, -0.883182,
		-0.925470, -0.266511, 0.269216,
		-0.150600, 0.910938, 0.384073,
		31.967005, 35.851833, 29.621412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471897, 35.431667, 29.034292>,  <32.072426, 35.214176, 29.352562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471897, 35.431667, 29.034292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645121, 35.762394, 29.177870>,  <31.749054, 35.960831, 29.264015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645121, 35.762394, 29.177870>,  <31.471897, 35.431667, 29.034292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645121, 35.762394, 29.177870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286654, 0.503878, -0.814823,
		-0.854570, 0.249974, 0.455218,
		0.433059, 0.826814, 0.358942,
		31.775038, 36.010437, 29.285553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941128, 35.974022, 29.022264>,  <31.471897, 35.431667, 29.034292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941128, 35.974022, 29.022264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301708, 36.146275, 29.039894>,  <31.518057, 36.249626, 29.050472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301708, 36.146275, 29.039894>,  <30.941128, 35.974022, 29.022264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301708, 36.146275, 29.039894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292166, 0.680382, -0.672100,
		-0.319416, 0.592988, 0.739147,
		0.901450, 0.430633, 0.044074,
		31.572144, 36.275463, 29.053116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815748, 36.665356, 29.169193>,  <30.941128, 35.974022, 29.022264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815748, 36.665356, 29.169193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172588, 36.637383, 28.990635>,  <31.386692, 36.620598, 28.883499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172588, 36.637383, 28.990635>,  <30.815748, 36.665356, 29.169193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172588, 36.637383, 28.990635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376107, 0.432586, -0.819398,
		0.250407, 0.898876, 0.359608,
		0.892099, -0.069932, -0.446396,
		31.440218, 36.616402, 28.856716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917679, 37.229046, 28.809305>,  <30.815748, 36.665356, 29.169193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917679, 37.229046, 28.809305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202055, 37.020012, 28.621061>,  <31.372681, 36.894592, 28.508114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202055, 37.020012, 28.621061>,  <30.917679, 37.229046, 28.809305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202055, 37.020012, 28.621061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295860, 0.384836, -0.874281,
		0.637992, 0.760795, 0.118983,
		0.710938, -0.522582, -0.470612,
		31.415337, 36.863235, 28.479877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054064, 37.595016, 28.246315>,  <30.917679, 37.229046, 28.809305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054064, 37.595016, 28.246315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251371, 37.266380, 28.132002>,  <31.369757, 37.069199, 28.063414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251371, 37.266380, 28.132002>,  <31.054064, 37.595016, 28.246315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251371, 37.266380, 28.132002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024984, 0.341778, -0.939448,
		0.869518, 0.456261, 0.189116,
		0.493270, -0.821592, -0.285783,
		31.399353, 37.019901, 28.046267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497673, 37.882294, 27.871094>,  <31.054064, 37.595016, 28.246315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497673, 37.882294, 27.871094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486856, 37.504620, 27.739777>,  <31.480366, 37.278015, 27.660986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486856, 37.504620, 27.739777>,  <31.497673, 37.882294, 27.871094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486856, 37.504620, 27.739777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158531, 0.320207, -0.933989,
		0.986984, -0.077300, 0.141024,
		-0.027041, -0.944189, -0.328294,
		31.478745, 37.221363, 27.641289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046333, 37.750694, 27.401230>,  <31.497673, 37.882294, 27.871094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046333, 37.750694, 27.401230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791374, 37.453213, 27.320602>,  <31.638399, 37.274723, 27.272226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791374, 37.453213, 27.320602>,  <32.046333, 37.750694, 27.401230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791374, 37.453213, 27.320602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185348, 0.105934, -0.976946,
		0.747913, -0.660061, 0.070322,
		-0.637395, -0.743705, -0.201571,
		31.600155, 37.230103, 27.260132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317371, 37.357269, 26.918890>,  <32.046333, 37.750694, 27.401230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317371, 37.357269, 26.918890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936277, 37.245663, 26.870823>,  <31.707621, 37.178699, 26.841982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936277, 37.245663, 26.870823>,  <32.317371, 37.357269, 26.918890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936277, 37.245663, 26.870823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111882, 0.045496, -0.992679,
		0.282444, -0.959207, -0.012128,
		-0.952737, -0.279020, -0.120168,
		31.650455, 37.161957, 26.834772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300682, 36.866409, 26.332586>,  <32.317371, 37.357269, 26.918890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300682, 36.866409, 26.332586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945923, 37.043182, 26.386417>,  <31.733068, 37.149246, 26.418716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945923, 37.043182, 26.386417>,  <32.300682, 36.866409, 26.332586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945923, 37.043182, 26.386417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105062, 0.090732, -0.990318,
		-0.449866, -0.892447, -0.034040,
		-0.886895, 0.441934, 0.134580,
		31.679853, 37.175762, 26.426792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779671, 36.520420, 25.954430>,  <32.300682, 36.866409, 26.332586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779671, 36.520420, 25.954430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579062, 36.859249, 26.024797>,  <31.458696, 37.062546, 26.067019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579062, 36.859249, 26.024797>,  <31.779671, 36.520420, 25.954430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579062, 36.859249, 26.024797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115895, 0.135730, -0.983944,
		-0.857346, -0.513860, 0.030099,
		-0.501524, 0.847068, 0.175921,
		31.428604, 37.113369, 26.077574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237555, 36.473244, 25.634476>,  <31.779671, 36.520420, 25.954430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237555, 36.473244, 25.634476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252930, 36.870350, 25.679964>,  <31.262156, 37.108616, 25.707256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252930, 36.870350, 25.679964>,  <31.237555, 36.473244, 25.634476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252930, 36.870350, 25.679964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154014, 0.118330, -0.980958,
		-0.987321, 0.020192, 0.157449,
		0.038438, 0.992769, 0.113720,
		31.264462, 37.168182, 25.714081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699631, 36.731052, 25.205769>,  <31.237555, 36.473244, 25.634476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699631, 36.731052, 25.205769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900427, 37.070255, 25.273756>,  <31.020905, 37.273777, 25.314548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900427, 37.070255, 25.273756>,  <30.699631, 36.731052, 25.205769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900427, 37.070255, 25.273756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127482, 0.266930, -0.955247,
		-0.855425, 0.457858, 0.242103,
		0.501992, 0.848006, 0.169970,
		31.051025, 37.324657, 25.324747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281532, 37.310474, 25.085417>,  <30.699631, 36.731052, 25.205769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281532, 37.310474, 25.085417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654636, 37.449085, 25.045666>,  <30.878500, 37.532253, 25.021814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654636, 37.449085, 25.045666>,  <30.281532, 37.310474, 25.085417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654636, 37.449085, 25.045666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231397, 0.364143, -0.902140,
		-0.276427, 0.864477, 0.419843,
		0.932762, 0.346526, -0.099378,
		30.934465, 37.553043, 25.015852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238008, 37.974758, 24.787344>,  <30.281532, 37.310474, 25.085417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238008, 37.974758, 24.787344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621138, 37.884857, 24.715719>,  <30.851015, 37.830917, 24.672745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621138, 37.884857, 24.715719>,  <30.238008, 37.974758, 24.787344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621138, 37.884857, 24.715719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034695, 0.528113, -0.848465,
		0.285260, 0.818891, 0.498041,
		0.957822, -0.224754, -0.179061,
		30.908484, 37.817432, 24.662001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431999, 38.646988, 24.575512>,  <30.238008, 37.974758, 24.787344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431999, 38.646988, 24.575512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714441, 38.392036, 24.452118>,  <30.883907, 38.239067, 24.378082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714441, 38.392036, 24.452118>,  <30.431999, 38.646988, 24.575512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714441, 38.392036, 24.452118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063688, 0.491047, -0.868802,
		0.705236, 0.593820, 0.387324,
		0.706106, -0.637378, -0.308485,
		30.926273, 38.200825, 24.359573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880148, 38.975365, 24.175177>,  <30.431999, 38.646988, 24.575512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880148, 38.975365, 24.175177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958513, 38.604557, 24.047272>,  <31.005531, 38.382072, 23.970528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958513, 38.604557, 24.047272>,  <30.880148, 38.975365, 24.175177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958513, 38.604557, 24.047272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025829, 0.330847, -0.943331,
		0.980281, 0.176551, 0.088761,
		0.195912, -0.927022, -0.319763,
		31.017286, 38.326450, 23.951344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496555, 38.975437, 23.788183>,  <30.880148, 38.975365, 24.175177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496555, 38.975437, 23.788183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239790, 38.690948, 23.673559>,  <31.085732, 38.520256, 23.604784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239790, 38.690948, 23.673559>,  <31.496555, 38.975437, 23.788183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239790, 38.690948, 23.673559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017543, 0.360002, -0.932786,
		0.766578, -0.603793, -0.218612,
		-0.641911, -0.711219, -0.286562,
		31.047216, 38.477581, 23.587591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757187, 38.589184, 23.080984>,  <31.496555, 38.975437, 23.788183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757187, 38.589184, 23.080984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363939, 38.516293, 23.087572>,  <31.127991, 38.472557, 23.091524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363939, 38.516293, 23.087572>,  <31.757187, 38.589184, 23.080984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363939, 38.516293, 23.087572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022858, 0.033014, -0.999193,
		0.181534, -0.982703, -0.036622,
		-0.983119, -0.182225, 0.016470,
		31.069004, 38.461624, 23.092512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632448, 38.136765, 22.499512>,  <31.757187, 38.589184, 23.080984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632448, 38.136765, 22.499512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273508, 38.278992, 22.604073>,  <31.058144, 38.364330, 22.666809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273508, 38.278992, 22.604073>,  <31.632448, 38.136765, 22.499512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273508, 38.278992, 22.604073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210769, 0.175108, -0.961724,
		-0.387737, -0.918098, -0.082190,
		-0.897350, 0.355573, 0.261402,
		31.004303, 38.385662, 22.682493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070921, 37.832649, 22.127657>,  <31.632448, 38.136765, 22.499512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070921, 37.832649, 22.127657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942871, 38.199863, 22.221241>,  <30.866041, 38.420193, 22.277391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942871, 38.199863, 22.221241>,  <31.070921, 37.832649, 22.127657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942871, 38.199863, 22.221241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146851, 0.195887, -0.969569,
		-0.935925, -0.344738, 0.072106,
		-0.320123, 0.918033, 0.233961,
		30.846834, 38.475273, 22.291430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454010, 37.908333, 21.724800>,  <31.070921, 37.832649, 22.127657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454010, 37.908333, 21.724800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541164, 38.285217, 21.826601>,  <30.593456, 38.511349, 21.887682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541164, 38.285217, 21.826601>,  <30.454010, 37.908333, 21.724800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541164, 38.285217, 21.826601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273589, 0.309276, -0.910768,
		-0.936843, 0.128815, 0.325165,
		0.217887, 0.942208, 0.254501,
		30.606531, 38.567879, 21.902952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928581, 38.266605, 21.506491>,  <30.454010, 37.908333, 21.724800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928581, 38.266605, 21.506491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242025, 38.513134, 21.537718>,  <30.430092, 38.661053, 21.556454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242025, 38.513134, 21.537718>,  <29.928581, 38.266605, 21.506491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242025, 38.513134, 21.537718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243588, 0.420415, -0.874023,
		-0.571504, 0.665878, 0.479572,
		0.783612, 0.616326, 0.078069,
		30.477110, 38.698032, 21.561138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697943, 38.873718, 21.199732>,  <29.928581, 38.266605, 21.506491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697943, 38.873718, 21.199732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090141, 38.946918, 21.228415>,  <30.325460, 38.990837, 21.245625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090141, 38.946918, 21.228415>,  <29.697943, 38.873718, 21.199732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090141, 38.946918, 21.228415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032610, 0.511241, -0.858818,
		-0.193821, 0.839728, 0.507237,
		0.980495, 0.182998, 0.071706,
		30.384289, 39.001820, 21.249926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667501, 39.504612, 21.105469>,  <29.697943, 38.873718, 21.199732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667501, 39.504612, 21.105469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045969, 39.393826, 21.038473>,  <30.273050, 39.327354, 20.998276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045969, 39.393826, 21.038473>,  <29.667501, 39.504612, 21.105469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045969, 39.393826, 21.038473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045669, 0.626530, -0.778058,
		0.320430, 0.728526, 0.605453,
		0.946171, -0.276964, -0.167488,
		30.329821, 39.310738, 20.988226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004162, 40.077782, 21.174356>,  <29.667501, 39.504612, 21.105469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004162, 40.077782, 21.174356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242579, 39.837154, 20.961624>,  <30.385630, 39.692776, 20.833984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242579, 39.837154, 20.961624>,  <30.004162, 40.077782, 21.174356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242579, 39.837154, 20.961624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014938, 0.670538, -0.741725,
		0.802813, 0.434156, 0.408656,
		0.596043, -0.601571, -0.531832,
		30.421392, 39.656685, 20.802074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603106, 40.503048, 21.018368>,  <30.004162, 40.077782, 21.174356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603106, 40.503048, 21.018368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572975, 40.202007, 20.756708>,  <30.554897, 40.021381, 20.599712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572975, 40.202007, 20.756708>,  <30.603106, 40.503048, 21.018368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572975, 40.202007, 20.756708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040876, 0.653132, -0.756140,
		0.996321, -0.083696, -0.018434,
		-0.075325, -0.752605, -0.654150,
		30.550377, 39.976227, 20.560463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122959, 40.636513, 20.597445>,  <30.603106, 40.503048, 21.018368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122959, 40.636513, 20.597445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853493, 40.411964, 20.405180>,  <30.691813, 40.277237, 20.289822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853493, 40.411964, 20.405180>,  <31.122959, 40.636513, 20.597445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853493, 40.411964, 20.405180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051973, 0.612795, -0.788531,
		0.737205, -0.556189, -0.383643,
		-0.673667, -0.561370, -0.480662,
		30.651392, 40.243553, 20.260981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389227, 40.696026, 19.974428>,  <31.122959, 40.636513, 20.597445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389227, 40.696026, 19.974428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017384, 40.556324, 19.927364>,  <30.794277, 40.472504, 19.899126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017384, 40.556324, 19.927364>,  <31.389227, 40.696026, 19.974428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017384, 40.556324, 19.927364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113807, 0.575694, -0.809706,
		0.350532, -0.739321, -0.574920,
		-0.929611, -0.349258, -0.117659,
		30.738501, 40.451546, 19.892067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342625, 40.373428, 19.244947>,  <31.389227, 40.696026, 19.974428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342625, 40.373428, 19.244947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971716, 40.469543, 19.359787>,  <30.749170, 40.527214, 19.428692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971716, 40.469543, 19.359787>,  <31.342625, 40.373428, 19.244947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971716, 40.469543, 19.359787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127267, 0.518879, -0.845321,
		-0.352092, -0.820381, -0.450561,
		-0.927273, 0.240289, 0.287101,
		30.693535, 40.541630, 19.445917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981462, 40.309471, 18.658733>,  <31.342625, 40.373428, 19.244947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981462, 40.309471, 18.658733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768307, 40.547543, 18.899328>,  <30.640413, 40.690384, 19.043686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768307, 40.547543, 18.899328>,  <30.981462, 40.309471, 18.658733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768307, 40.547543, 18.899328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179251, 0.615295, -0.767647,
		-0.826981, -0.516889, -0.221198,
		-0.532890, 0.595179, 0.601489,
		30.608440, 40.726097, 19.079775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305330, 40.402576, 18.345003>,  <30.981462, 40.309471, 18.658733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305330, 40.402576, 18.345003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383081, 40.720745, 18.574617>,  <30.429731, 40.911648, 18.712387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383081, 40.720745, 18.574617>,  <30.305330, 40.402576, 18.345003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383081, 40.720745, 18.574617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272250, 0.605953, -0.747463,
		-0.942389, -0.010992, 0.334337,
		0.194377, 0.795424, 0.574036,
		30.441395, 40.959373, 18.746828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688704, 40.872540, 18.367086>,  <30.305330, 40.402576, 18.345003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688704, 40.872540, 18.367086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033197, 41.068905, 18.419670>,  <30.239895, 41.186722, 18.451220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033197, 41.068905, 18.419670>,  <29.688704, 40.872540, 18.367086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033197, 41.068905, 18.419670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303530, 0.704337, -0.641700,
		-0.407607, 0.512754, 0.755606,
		0.861235, 0.490910, 0.131457,
		30.291569, 41.216179, 18.459106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577465, 41.617058, 18.409084>,  <29.688704, 40.872540, 18.367086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577465, 41.617058, 18.409084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968220, 41.631985, 18.324890>,  <30.202673, 41.640942, 18.274374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968220, 41.631985, 18.324890>,  <29.577465, 41.617058, 18.409084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968220, 41.631985, 18.324890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143821, 0.843204, -0.517999,
		0.158152, 0.536297, 0.829080,
		0.976885, 0.037316, -0.210486,
		30.261286, 41.643181, 18.261744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429865, 42.251156, 18.743746>,  <29.577465, 41.617058, 18.409084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429865, 42.251156, 18.743746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711145, 42.058685, 18.953117>,  <29.879913, 41.943203, 19.078741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711145, 42.058685, 18.953117>,  <29.429865, 42.251156, 18.743746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711145, 42.058685, 18.953117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050245, -0.767990, -0.638488,
		0.709212, 0.422687, -0.564229,
		0.703203, -0.481173, 0.523429,
		29.922106, 41.914333, 19.110146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657047, 42.696033, 19.245966>,  <29.429865, 42.251156, 18.743746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657047, 42.696033, 19.245966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713364, 43.053394, 19.416618>,  <29.747154, 43.267811, 19.519009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713364, 43.053394, 19.416618>,  <29.657047, 42.696033, 19.245966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713364, 43.053394, 19.416618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731164, 0.384369, -0.563612,
		-0.667515, -0.232585, 0.707339,
		0.140791, 0.893401, 0.426630,
		29.755602, 43.321415, 19.544607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922340, 42.922112, 19.440397>,  <29.657047, 42.696033, 19.245966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922340, 42.922112, 19.440397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187561, 43.218681, 19.399117>,  <29.346693, 43.396622, 19.374348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187561, 43.218681, 19.399117>,  <28.922340, 42.922112, 19.440397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187561, 43.218681, 19.399117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663126, 0.517794, -0.540511,
		-0.347311, 0.426823, 0.834983,
		0.663052, 0.741425, -0.103202,
		29.386477, 43.441109, 19.368156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551544, 43.635323, 19.490927>,  <28.922340, 42.922112, 19.440397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551544, 43.635323, 19.490927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866642, 43.615765, 19.245304>,  <29.055700, 43.604031, 19.097931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866642, 43.615765, 19.245304>,  <28.551544, 43.635323, 19.490927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866642, 43.615765, 19.245304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560911, 0.355121, -0.747843,
		0.254634, 0.933541, 0.252316,
		0.787744, -0.048899, -0.614058,
		29.102964, 43.601093, 19.061087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588493, 44.165844, 19.093031>,  <28.551544, 43.635323, 19.490927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588493, 44.165844, 19.093031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747179, 43.852577, 18.901505>,  <28.842390, 43.664616, 18.786589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747179, 43.852577, 18.901505>,  <28.588493, 44.165844, 19.093031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747179, 43.852577, 18.901505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580079, 0.190377, -0.792000,
		0.711426, 0.591948, -0.378774,
		0.396713, -0.783169, -0.478816,
		28.866194, 43.617626, 18.757860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376915, 44.480831, 19.167513>,  <28.588493, 44.165844, 19.093031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376915, 44.480831, 19.167513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101902, 44.377869, 18.895912>,  <28.936895, 44.316090, 18.732952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101902, 44.377869, 18.895912>,  <29.376915, 44.480831, 19.167513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101902, 44.377869, 18.895912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108245, -0.888286, 0.446352,
		-0.718042, 0.380380, 0.582861,
		-0.687531, -0.257408, -0.679001,
		28.895643, 44.300648, 18.692211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178286, 44.495403, 19.363642>,  <29.376915, 44.480831, 19.167513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178286, 44.495403, 19.363642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922165, 44.188156, 19.363070>,  <29.768492, 44.003807, 19.362726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922165, 44.188156, 19.363070>,  <30.178286, 44.495403, 19.363642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922165, 44.188156, 19.363070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456415, -0.381960, 0.803612,
		-0.617818, 0.513901, 0.595152,
		-0.640302, -0.768122, -0.001430,
		29.730074, 43.957718, 19.362640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915916, 44.483002, 19.991011>,  <30.178286, 44.495403, 19.363642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915916, 44.483002, 19.991011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854847, 44.109791, 19.860683>,  <29.818205, 43.885864, 19.782486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854847, 44.109791, 19.860683>,  <29.915916, 44.483002, 19.991011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854847, 44.109791, 19.860683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514148, -0.356543, 0.780082,
		-0.844004, -0.048423, 0.534147,
		-0.152672, -0.933023, -0.325820,
		29.809046, 43.829884, 19.762938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498190, 44.158161, 20.515554>,  <29.915916, 44.483002, 19.991011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498190, 44.158161, 20.515554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697132, 43.877243, 20.311821>,  <29.816498, 43.708694, 20.189581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697132, 43.877243, 20.311821>,  <29.498190, 44.158161, 20.515554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697132, 43.877243, 20.311821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463832, -0.280880, 0.840218,
		-0.733141, -0.654133, 0.186049,
		0.497357, -0.702293, -0.509333,
		29.846338, 43.666553, 20.159021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504736, 43.604748, 20.944851>,  <29.498190, 44.158161, 20.515554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504736, 43.604748, 20.944851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787497, 43.485474, 20.688297>,  <29.957153, 43.413910, 20.534365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787497, 43.485474, 20.688297>,  <29.504736, 43.604748, 20.944851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787497, 43.485474, 20.688297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540035, -0.358075, 0.761672,
		-0.456786, -0.884797, -0.092091,
		0.706901, -0.298189, -0.641385,
		29.999567, 43.396019, 20.495882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566847, 42.964275, 21.127563>,  <29.504736, 43.604748, 20.944851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566847, 42.964275, 21.127563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889555, 43.087708, 20.926008>,  <30.083179, 43.161766, 20.805075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889555, 43.087708, 20.926008>,  <29.566847, 42.964275, 21.127563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889555, 43.087708, 20.926008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585500, -0.302848, 0.751979,
		0.079443, -0.901700, -0.425001,
		0.806771, 0.308577, -0.503886,
		30.131586, 43.180279, 20.774843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981787, 42.362030, 21.036579>,  <29.566847, 42.964275, 21.127563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981787, 42.362030, 21.036579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215143, 42.683353, 20.988653>,  <30.355156, 42.876148, 20.959898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215143, 42.683353, 20.988653>,  <29.981787, 42.362030, 21.036579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215143, 42.683353, 20.988653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607349, -0.333534, 0.721028,
		0.539244, -0.493410, -0.682468,
		0.583389, 0.803307, -0.119816,
		30.390160, 42.924347, 20.952709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509996, 42.092747, 21.418077>,  <29.981787, 42.362030, 21.036579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509996, 42.092747, 21.418077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610800, 42.473827, 21.350128>,  <30.671282, 42.702477, 21.309359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610800, 42.473827, 21.350128>,  <30.509996, 42.092747, 21.418077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610800, 42.473827, 21.350128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795552, -0.104010, 0.596892,
		0.550990, -0.285563, -0.784133,
		0.252008, 0.952699, -0.169872,
		30.686401, 42.759636, 21.299168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200247, 42.214577, 21.088093>,  <30.509996, 42.092747, 21.418077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200247, 42.214577, 21.088093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153051, 42.560688, 21.282974>,  <31.124735, 42.768356, 21.399902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153051, 42.560688, 21.282974>,  <31.200247, 42.214577, 21.088093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153051, 42.560688, 21.282974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691647, -0.280440, 0.665566,
		0.712534, 0.415500, -0.565381,
		-0.117987, 0.865282, 0.487202,
		31.117655, 42.820274, 21.429134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804560, 42.410522, 21.272408>,  <31.200247, 42.214577, 21.088093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804560, 42.410522, 21.272408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558065, 42.600792, 21.523481>,  <31.410168, 42.714954, 21.674126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558065, 42.600792, 21.523481>,  <31.804560, 42.410522, 21.272408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558065, 42.600792, 21.523481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565922, -0.286822, 0.772959,
		0.547708, 0.831547, -0.092442,
		-0.616237, 0.475671, 0.627685,
		31.373194, 42.743492, 21.711786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284515, 42.642326, 21.735189>,  <31.804560, 42.410522, 21.272408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284515, 42.642326, 21.735189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932358, 42.686993, 21.919550>,  <31.721062, 42.713791, 22.030167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932358, 42.686993, 21.919550>,  <32.284515, 42.642326, 21.735189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932358, 42.686993, 21.919550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412887, -0.297611, 0.860786,
		0.233289, 0.948134, 0.215911,
		-0.880398, 0.111665, 0.460902,
		31.668238, 42.720493, 22.057821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397701, 43.080441, 22.276388>,  <32.284515, 42.642326, 21.735189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397701, 43.080441, 22.276388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078129, 42.850662, 22.347630>,  <31.886385, 42.712795, 22.390373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078129, 42.850662, 22.347630>,  <32.397701, 43.080441, 22.276388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078129, 42.850662, 22.347630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391658, -0.272210, 0.878923,
		-0.456414, 0.771954, 0.442463,
		-0.798931, -0.574447, 0.178102,
		31.838449, 42.678329, 22.401060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153275, 43.222366, 22.934139>,  <32.397701, 43.080441, 22.276388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153275, 43.222366, 22.934139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993420, 42.864529, 22.854143>,  <31.897507, 42.649826, 22.806145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993420, 42.864529, 22.854143>,  <32.153275, 43.222366, 22.934139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993420, 42.864529, 22.854143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207438, -0.300767, 0.930865,
		-0.892896, 0.330519, 0.305769,
		-0.399633, -0.894593, -0.199991,
		31.873529, 42.596149, 22.794146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003033, 43.012730, 23.504827>,  <32.153275, 43.222366, 22.934139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003033, 43.012730, 23.504827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931648, 42.659031, 23.332195>,  <31.888817, 42.446812, 23.228617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931648, 42.659031, 23.332195>,  <32.003033, 43.012730, 23.504827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931648, 42.659031, 23.332195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169799, -0.459717, 0.871681,
		-0.969185, 0.082281, 0.232187,
		-0.178463, -0.884245, -0.431580,
		31.878109, 42.393757, 23.202721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435122, 42.631290, 23.882362>,  <32.003033, 43.012730, 23.504827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435122, 42.631290, 23.882362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655956, 42.367760, 23.677952>,  <31.788456, 42.209641, 23.555305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655956, 42.367760, 23.677952>,  <31.435122, 42.631290, 23.882362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655956, 42.367760, 23.677952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185368, -0.500573, 0.845616,
		-0.812921, -0.561579, -0.154233,
		0.552085, -0.658829, -0.511025,
		31.821583, 42.170113, 23.524645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312054, 42.034885, 24.191032>,  <31.435122, 42.631290, 23.882362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312054, 42.034885, 24.191032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638859, 41.950878, 23.976227>,  <31.834942, 41.900475, 23.847343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638859, 41.950878, 23.976227>,  <31.312054, 42.034885, 24.191032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638859, 41.950878, 23.976227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325695, -0.600441, 0.730338,
		-0.475826, -0.771598, -0.422167,
		0.817014, -0.210016, -0.537011,
		31.883963, 41.887875, 23.815123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291477, 41.277588, 24.088661>,  <31.312054, 42.034885, 24.191032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291477, 41.277588, 24.088661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667770, 41.409561, 24.057251>,  <31.893545, 41.488747, 24.038404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667770, 41.409561, 24.057251>,  <31.291477, 41.277588, 24.088661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667770, 41.409561, 24.057251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238471, -0.478854, 0.844885,
		0.241157, -0.813535, -0.529154,
		0.940731, 0.329938, -0.078525,
		31.949989, 41.508541, 24.033693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615580, 40.729218, 24.371578>,  <31.291477, 41.277588, 24.088661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615580, 40.729218, 24.371578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865101, 41.040398, 24.401693>,  <32.014812, 41.227104, 24.419764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865101, 41.040398, 24.401693>,  <31.615580, 40.729218, 24.371578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865101, 41.040398, 24.401693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252201, -0.291530, 0.922716,
		0.739773, -0.556606, -0.378056,
		0.623804, 0.777947, 0.075289,
		32.052242, 41.273781, 24.424280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152786, 40.519871, 24.605076>,  <31.615580, 40.729218, 24.371578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152786, 40.519871, 24.605076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180199, 40.903969, 24.713327>,  <32.196648, 41.134426, 24.778278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180199, 40.903969, 24.713327>,  <32.152786, 40.519871, 24.605076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180199, 40.903969, 24.713327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124777, -0.277387, 0.952621,
		0.989815, -0.031518, -0.138826,
		0.068533, 0.960241, 0.270629,
		32.200760, 41.192039, 24.794516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778004, 40.704704, 25.099466>,  <32.152786, 40.519871, 24.605076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778004, 40.704704, 25.099466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492008, 40.976803, 25.164034>,  <32.320412, 41.140060, 25.202774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492008, 40.976803, 25.164034>,  <32.778004, 40.704704, 25.099466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492008, 40.976803, 25.164034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137913, -0.089115, 0.986427,
		0.685398, 0.727546, -0.030099,
		-0.714989, 0.680246, 0.161417,
		32.277512, 41.180878, 25.212460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024544, 41.048798, 25.707876>,  <32.778004, 40.704704, 25.099466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024544, 41.048798, 25.707876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635864, 41.135754, 25.670893>,  <32.402657, 41.187927, 25.648703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635864, 41.135754, 25.670893>,  <33.024544, 41.048798, 25.707876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635864, 41.135754, 25.670893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113631, -0.086980, 0.989708,
		0.207115, 0.972201, 0.109221,
		-0.971695, 0.217395, -0.092457,
		32.344357, 41.200974, 25.643156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957005, 41.382557, 26.295366>,  <33.024544, 41.048798, 25.707876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957005, 41.382557, 26.295366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588860, 41.294247, 26.166248>,  <32.367973, 41.241261, 26.088778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588860, 41.294247, 26.166248>,  <32.957005, 41.382557, 26.295366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588860, 41.294247, 26.166248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325012, -0.027244, 0.945317,
		-0.217497, 0.974944, -0.046680,
		-0.920360, -0.220775, -0.322794,
		32.312752, 41.228016, 26.069410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529018, 41.991257, 26.646687>,  <32.957005, 41.382557, 26.295366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529018, 41.991257, 26.646687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314335, 41.676567, 26.524696>,  <32.185524, 41.487755, 26.451502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314335, 41.676567, 26.524696>,  <32.529018, 41.991257, 26.646687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314335, 41.676567, 26.524696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525238, 0.028637, 0.850473,
		-0.660351, 0.616645, -0.428586,
		-0.536713, -0.786720, -0.304975,
		32.153320, 41.440552, 26.433205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816532, 42.215176, 26.763561>,  <32.529018, 41.991257, 26.646687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816532, 42.215176, 26.763561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841328, 41.816177, 26.749992>,  <31.856205, 41.576778, 26.741852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841328, 41.816177, 26.749992>,  <31.816532, 42.215176, 26.763561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841328, 41.816177, 26.749992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321553, -0.052135, 0.945455,
		-0.944860, -0.047701, -0.323981,
		0.061990, -0.997500, -0.033922,
		31.859924, 41.516926, 26.739817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249937, 42.069057, 27.146021>,  <31.816532, 42.215176, 26.763561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249937, 42.069057, 27.146021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439415, 41.717381, 27.125477>,  <31.553101, 41.506374, 27.113152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439415, 41.717381, 27.125477>,  <31.249937, 42.069057, 27.146021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439415, 41.717381, 27.125477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215256, -0.172129, 0.961268,
		-0.853979, -0.444291, -0.270788,
		0.473693, -0.879191, -0.051358,
		31.581522, 41.453625, 27.110069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781815, 41.459698, 27.364656>,  <31.249937, 42.069057, 27.146021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781815, 41.459698, 27.364656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160103, 41.334175, 27.398451>,  <31.387075, 41.258862, 27.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160103, 41.334175, 27.398451>,  <30.781815, 41.459698, 27.364656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160103, 41.334175, 27.398451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089232, -0.000763, 0.996010,
		-0.312494, -0.949485, -0.028724,
		0.945720, -0.313810, 0.084486,
		31.443819, 41.240032, 27.423798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832571, 40.733948, 27.639227>,  <30.781815, 41.459698, 27.364656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832571, 40.733948, 27.639227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189800, 40.883541, 27.739275>,  <31.404137, 40.973297, 27.799305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189800, 40.883541, 27.739275>,  <30.832571, 40.733948, 27.639227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189800, 40.883541, 27.739275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059366, -0.453119, 0.889471,
		0.445980, -0.809210, -0.382466,
		0.893072, 0.373981, 0.250121,
		31.457722, 40.995735, 27.814312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218513, 40.224823, 27.931662>,  <30.832571, 40.733948, 27.639227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218513, 40.224823, 27.931662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474001, 40.513222, 28.039146>,  <31.627293, 40.686260, 28.103638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474001, 40.513222, 28.039146>,  <31.218513, 40.224823, 27.931662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474001, 40.513222, 28.039146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244361, -0.521225, 0.817687,
		0.729608, -0.456608, -0.509098,
		0.638717, 0.720995, 0.268713,
		31.665615, 40.729519, 28.119761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748581, 39.906353, 28.187204>,  <31.218513, 40.224823, 27.931662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748581, 39.906353, 28.187204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744425, 40.268883, 28.356190>,  <31.741932, 40.486401, 28.457581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744425, 40.268883, 28.356190>,  <31.748581, 39.906353, 28.187204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744425, 40.268883, 28.356190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328036, -0.396016, 0.857650,
		0.944608, 0.147495, -0.293191,
		-0.010390, 0.906320, 0.422464,
		31.741308, 40.540779, 28.482929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312141, 39.836540, 28.530508>,  <31.748581, 39.906353, 28.187204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312141, 39.836540, 28.530508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143467, 40.149426, 28.713955>,  <32.042263, 40.337154, 28.824024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143467, 40.149426, 28.713955>,  <32.312141, 39.836540, 28.530508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143467, 40.149426, 28.713955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146765, -0.440238, 0.885805,
		0.894786, 0.440839, 0.070841,
		-0.421685, 0.782209, 0.458619,
		32.016960, 40.384087, 28.851542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749119, 40.089474, 29.119843>,  <32.312141, 39.836540, 28.530508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749119, 40.089474, 29.119843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381226, 40.226791, 29.195993>,  <32.160488, 40.309181, 29.241684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381226, 40.226791, 29.195993>,  <32.749119, 40.089474, 29.119843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381226, 40.226791, 29.195993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115517, -0.226815, 0.967063,
		0.375165, 0.911431, 0.168953,
		-0.919732, 0.343291, 0.190379,
		32.105305, 40.329781, 29.253107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835274, 40.516254, 29.557365>,  <32.749119, 40.089474, 29.119843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835274, 40.516254, 29.557365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448586, 40.438995, 29.624466>,  <32.216572, 40.392639, 29.664726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448586, 40.438995, 29.624466>,  <32.835274, 40.516254, 29.557365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448586, 40.438995, 29.624466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196857, -0.142849, 0.969970,
		-0.163383, 0.970716, 0.176117,
		-0.966723, -0.193146, 0.167754,
		32.158569, 40.381050, 29.674791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585255, 40.902473, 30.243839>,  <32.835274, 40.516254, 29.557365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585255, 40.902473, 30.243839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298088, 40.634037, 30.169823>,  <32.125790, 40.472977, 30.125412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298088, 40.634037, 30.169823>,  <32.585255, 40.902473, 30.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298088, 40.634037, 30.169823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072003, -0.335971, 0.939116,
		-0.692400, 0.660879, 0.289519,
		-0.717912, -0.671090, -0.185041,
		32.082714, 40.432709, 30.114311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230228, 40.965969, 30.894678>,  <32.585255, 40.902473, 30.243839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230228, 40.965969, 30.894678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095192, 40.626751, 30.731285>,  <32.014172, 40.423222, 30.633249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095192, 40.626751, 30.731285>,  <32.230228, 40.965969, 30.894678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095192, 40.626751, 30.731285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158008, -0.376744, 0.912742,
		-0.927937, 0.372675, -0.006813,
		-0.337589, -0.848043, -0.408480,
		31.993916, 40.372337, 30.608742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624592, 40.807934, 31.103550>,  <32.230228, 40.965969, 30.894678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624592, 40.807934, 31.103550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772074, 40.446732, 31.015335>,  <31.860563, 40.230011, 30.962406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772074, 40.446732, 31.015335>,  <31.624592, 40.807934, 31.103550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772074, 40.446732, 31.015335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079594, -0.267050, 0.960390,
		-0.926133, -0.336546, -0.170336,
		0.368704, -0.903006, -0.220537,
		31.882685, 40.175831, 30.949175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196934, 40.242584, 31.499275>,  <31.624592, 40.807934, 31.103550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196934, 40.242584, 31.499275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567425, 40.133755, 31.394907>,  <31.789719, 40.068455, 31.332287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567425, 40.133755, 31.394907>,  <31.196934, 40.242584, 31.499275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567425, 40.133755, 31.394907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137968, -0.399462, 0.906308,
		-0.350811, -0.875446, -0.332455,
		0.926227, -0.272075, -0.260920,
		31.845293, 40.052132, 31.316631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207756, 39.514996, 31.830458>,  <31.196934, 40.242584, 31.499275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207756, 39.514996, 31.830458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590082, 39.572445, 31.727861>,  <31.819477, 39.606915, 31.666304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590082, 39.572445, 31.727861>,  <31.207756, 39.514996, 31.830458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590082, 39.572445, 31.727861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293720, -0.502410, 0.813211,
		-0.012064, -0.852617, -0.522397,
		0.955815, 0.143628, -0.256492,
		31.876827, 39.615532, 31.650913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610182, 38.907768, 31.827372>,  <31.207756, 39.514996, 31.830458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610182, 38.907768, 31.827372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894943, 39.184456, 31.875893>,  <32.065800, 39.350468, 31.905005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894943, 39.184456, 31.875893>,  <31.610182, 38.907768, 31.827372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894943, 39.184456, 31.875893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324332, -0.477042, 0.816848,
		0.622896, -0.542176, -0.563955,
		0.711905, 0.691720, 0.121303,
		32.108517, 39.391972, 31.912283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274918, 38.596653, 31.998888>,  <31.610182, 38.907768, 31.827372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274918, 38.596653, 31.998888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278278, 38.966393, 32.151474>,  <32.280296, 39.188236, 32.243027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278278, 38.966393, 32.151474>,  <32.274918, 38.596653, 31.998888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278278, 38.966393, 32.151474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278103, -0.368588, 0.887018,
		0.960515, 0.098631, -0.260161,
		0.008405, 0.924346, 0.381464,
		32.280800, 39.243694, 32.265915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812450, 38.611683, 32.509754>,  <32.274918, 38.596653, 31.998888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812450, 38.611683, 32.509754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617687, 38.947399, 32.606510>,  <32.500828, 39.148830, 32.664566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617687, 38.947399, 32.606510>,  <32.812450, 38.611683, 32.509754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617687, 38.947399, 32.606510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175051, -0.177553, 0.968417,
		0.855731, 0.513876, -0.060466,
		-0.486910, 0.839289, 0.241892,
		32.471615, 39.199184, 32.679077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272926, 38.905205, 32.983528>,  <32.812450, 38.611683, 32.509754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272926, 38.905205, 32.983528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911877, 39.059830, 33.059254>,  <32.695248, 39.152603, 33.104691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911877, 39.059830, 33.059254>,  <33.272926, 38.905205, 32.983528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911877, 39.059830, 33.059254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064959, -0.312452, 0.947710,
		0.425499, 0.867724, 0.256917,
		-0.902625, 0.386561, 0.189314,
		32.641090, 39.175797, 33.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393246, 39.241268, 33.618023>,  <33.272926, 38.905205, 32.983528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393246, 39.241268, 33.618023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000626, 39.181580, 33.570217>,  <32.765053, 39.145767, 33.541534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000626, 39.181580, 33.570217>,  <33.393246, 39.241268, 33.618023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000626, 39.181580, 33.570217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052439, -0.391005, 0.918894,
		-0.183849, 0.908211, 0.375968,
		-0.981555, -0.149222, -0.119511,
		32.706158, 39.136814, 33.534363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996861, 39.088810, 33.088833>,  <33.393246, 39.241268, 33.618023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996861, 39.088810, 33.088833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331047, 39.262135, 33.224022>,  <34.531559, 39.366131, 33.305138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331047, 39.262135, 33.224022>,  <33.996861, 39.088810, 33.088833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331047, 39.262135, 33.224022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161153, 0.394792, -0.904527,
		-0.525376, 0.810171, 0.260007,
		0.835470, 0.433315, 0.337976,
		34.581688, 39.392128, 33.325413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777893, 39.766823, 32.944626>,  <33.996861, 39.088810, 33.088833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777893, 39.766823, 32.944626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174267, 39.744854, 32.993671>,  <34.412090, 39.731670, 33.023098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174267, 39.744854, 32.993671>,  <33.777893, 39.766823, 32.944626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174267, 39.744854, 32.993671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132136, 0.233132, -0.963426,
		0.024329, 0.970893, 0.238276,
		0.990933, -0.054924, 0.122618,
		34.471546, 39.728378, 33.030457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070332, 40.451359, 32.790855>,  <33.777893, 39.766823, 32.944626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070332, 40.451359, 32.790855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338276, 40.161129, 32.727837>,  <34.499043, 39.986992, 32.690025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338276, 40.161129, 32.727837>,  <34.070332, 40.451359, 32.790855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338276, 40.161129, 32.727837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173782, 0.359515, -0.916815,
		0.721861, 0.586761, 0.366917,
		0.669863, -0.725576, -0.157551,
		34.539234, 39.943455, 32.680573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588406, 40.851360, 32.514244>,  <34.070332, 40.451359, 32.790855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588406, 40.851360, 32.514244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685776, 40.478012, 32.408749>,  <34.744198, 40.254002, 32.345451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685776, 40.478012, 32.408749>,  <34.588406, 40.851360, 32.514244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685776, 40.478012, 32.408749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434499, 0.348046, -0.830707,
		0.867153, 0.087621, 0.490273,
		0.243425, -0.933374, -0.263738,
		34.758804, 40.197998, 32.329628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209995, 40.931431, 32.327549>,  <34.588406, 40.851360, 32.514244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209995, 40.931431, 32.327549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109421, 40.589664, 32.145672>,  <35.049076, 40.384605, 32.036545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109421, 40.589664, 32.145672>,  <35.209995, 40.931431, 32.327549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109421, 40.589664, 32.145672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277097, 0.386577, -0.879645,
		0.927361, -0.347168, 0.139559,
		-0.251434, -0.854420, -0.454696,
		35.033989, 40.333340, 32.009262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682674, 40.906410, 31.722149>,  <35.209995, 40.931431, 32.327549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682674, 40.906410, 31.722149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408455, 40.634415, 31.618118>,  <35.243923, 40.471218, 31.555700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408455, 40.634415, 31.618118>,  <35.682674, 40.906410, 31.722149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408455, 40.634415, 31.618118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047358, 0.314823, -0.947968,
		0.726486, -0.662194, -0.183623,
		-0.685547, -0.679990, -0.260074,
		35.202789, 40.430416, 31.540096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928104, 40.512188, 31.192175>,  <35.682674, 40.906410, 31.722149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928104, 40.512188, 31.192175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530590, 40.479656, 31.161768>,  <35.292084, 40.460136, 31.143524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530590, 40.479656, 31.161768>,  <35.928104, 40.512188, 31.192175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530590, 40.479656, 31.161768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064870, 0.131871, -0.989142,
		0.090466, -0.987925, -0.125776,
		-0.993785, -0.081325, -0.076016,
		35.232456, 40.455257, 31.138964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815773, 40.177357, 30.597332>,  <35.928104, 40.512188, 31.192175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815773, 40.177357, 30.597332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451057, 40.325016, 30.669296>,  <35.232227, 40.413612, 30.712475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451057, 40.325016, 30.669296>,  <35.815773, 40.177357, 30.597332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451057, 40.325016, 30.669296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108877, 0.205122, -0.972662,
		-0.395963, -0.906451, -0.146835,
		-0.911789, 0.369151, 0.179912,
		35.177521, 40.435760, 30.723270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416103, 39.900288, 30.105875>,  <35.815773, 40.177357, 30.597332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416103, 39.900288, 30.105875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230717, 40.235310, 30.221600>,  <35.119484, 40.436321, 30.291035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230717, 40.235310, 30.221600>,  <35.416103, 39.900288, 30.105875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230717, 40.235310, 30.221600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128624, 0.259448, -0.957153,
		-0.876730, -0.480819, -0.012515,
		-0.463465, 0.837556, 0.289311,
		35.091679, 40.486576, 30.308393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902130, 40.035393, 29.698732>,  <35.416103, 39.900288, 30.105875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902130, 40.035393, 29.698732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927547, 40.407280, 29.843826>,  <34.942799, 40.630413, 29.930883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927547, 40.407280, 29.843826>,  <34.902130, 40.035393, 29.698732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927547, 40.407280, 29.843826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068309, 0.366671, -0.927840,
		-0.995638, 0.034184, 0.086810,
		0.063548, 0.929722, 0.362737,
		34.946613, 40.686195, 29.952648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593884, 40.392456, 29.239796>,  <34.902130, 40.035393, 29.698732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593884, 40.392456, 29.239796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817677, 40.671741, 29.418447>,  <34.951954, 40.839314, 29.525639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817677, 40.671741, 29.418447>,  <34.593884, 40.392456, 29.239796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817677, 40.671741, 29.418447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015871, 0.529737, -0.848013,
		-0.828689, 0.481538, 0.285297,
		0.559483, 0.698212, 0.446630,
		34.985523, 40.881207, 29.552437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184818, 41.021072, 29.179861>,  <34.593884, 40.392456, 29.239796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184818, 41.021072, 29.179861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568150, 41.121273, 29.234793>,  <34.798149, 41.181393, 29.267752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568150, 41.121273, 29.234793>,  <34.184818, 41.021072, 29.179861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568150, 41.121273, 29.234793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014406, 0.522488, -0.852525,
		-0.285308, 0.815020, 0.504324,
		0.958328, 0.250497, 0.137329,
		34.855648, 41.196423, 29.275991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212917, 41.749256, 29.183746>,  <34.184818, 41.021072, 29.179861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212917, 41.749256, 29.183746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586525, 41.646584, 29.084373>,  <34.810692, 41.584980, 29.024750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586525, 41.646584, 29.084373>,  <34.212917, 41.749256, 29.183746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586525, 41.646584, 29.084373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068719, 0.553374, -0.830093,
		0.350543, 0.792398, 0.499225,
		0.934022, -0.256677, -0.248434,
		34.866730, 41.569580, 29.009844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546124, 42.373657, 28.959774>,  <34.212917, 41.749256, 29.183746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546124, 42.373657, 28.959774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742744, 42.057549, 28.813433>,  <34.860718, 41.867882, 28.725628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742744, 42.057549, 28.813433>,  <34.546124, 42.373657, 28.959774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742744, 42.057549, 28.813433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122755, 0.353038, -0.927521,
		0.862154, 0.500833, 0.076526,
		0.491550, -0.790272, -0.365853,
		34.890209, 41.820465, 28.703676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899841, 42.670849, 28.411615>,  <34.546124, 42.373657, 28.959774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899841, 42.670849, 28.411615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933826, 42.282295, 28.322901>,  <34.954216, 42.049164, 28.269672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933826, 42.282295, 28.322901>,  <34.899841, 42.670849, 28.411615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933826, 42.282295, 28.322901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038431, 0.225622, -0.973457,
		0.995643, 0.074183, 0.056500,
		0.084962, -0.971387, -0.221788,
		34.959316, 41.990879, 28.256365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493633, 42.574013, 27.945749>,  <34.899841, 42.670849, 28.411615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493633, 42.574013, 27.945749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219437, 42.289207, 27.884905>,  <35.054916, 42.118324, 27.848398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219437, 42.289207, 27.884905>,  <35.493633, 42.574013, 27.945749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219437, 42.289207, 27.884905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028345, 0.182663, -0.982767,
		0.727526, -0.677993, -0.105032,
		-0.685495, -0.712011, -0.152109,
		35.013786, 42.075603, 27.839272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735863, 42.292809, 27.328794>,  <35.493633, 42.574013, 27.945749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735863, 42.292809, 27.328794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350616, 42.191479, 27.365095>,  <35.119469, 42.130680, 27.386875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350616, 42.191479, 27.365095>,  <35.735863, 42.292809, 27.328794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350616, 42.191479, 27.365095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170120, 0.311904, -0.934759,
		0.208492, -0.915719, -0.343495,
		-0.963114, -0.253325, 0.090753,
		35.061684, 42.115479, 27.392321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661869, 41.766132, 26.891813>,  <35.735863, 42.292809, 27.328794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661869, 41.766132, 26.891813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283581, 41.888947, 26.934397>,  <35.056606, 41.962635, 26.959948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283581, 41.888947, 26.934397>,  <35.661869, 41.766132, 26.891813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283581, 41.888947, 26.934397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050498, 0.184769, -0.981484,
		-0.321025, -0.933588, -0.159235,
		-0.945723, 0.307040, 0.106460,
		34.999863, 41.981060, 26.966335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385773, 41.598610, 26.262131>,  <35.661869, 41.766132, 26.891813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385773, 41.598610, 26.262131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086842, 41.834354, 26.384865>,  <34.907482, 41.975800, 26.458506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086842, 41.834354, 26.384865>,  <35.385773, 41.598610, 26.262131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086842, 41.834354, 26.384865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228146, 0.206109, -0.951561,
		-0.624056, -0.781134, -0.019571,
		-0.747331, 0.589363, 0.306836,
		34.862640, 42.011162, 26.476915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763714, 41.368340, 25.982635>,  <35.385773, 41.598610, 26.262131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763714, 41.368340, 25.982635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671738, 41.742558, 26.089882>,  <34.616550, 41.967087, 26.154230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671738, 41.742558, 26.089882>,  <34.763714, 41.368340, 25.982635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671738, 41.742558, 26.089882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280962, 0.199954, -0.938658,
		-0.931766, -0.291166, 0.216874,
		-0.229941, 0.935543, 0.268117,
		34.602757, 42.023220, 26.170317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184807, 41.464405, 25.708235>,  <34.763714, 41.368340, 25.982635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184807, 41.464405, 25.708235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301289, 41.841080, 25.775673>,  <34.371178, 42.067085, 25.816135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301289, 41.841080, 25.775673>,  <34.184807, 41.464405, 25.708235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301289, 41.841080, 25.775673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150649, 0.219174, -0.963985,
		-0.944724, 0.255319, 0.205689,
		0.291206, 0.941687, 0.168596,
		34.388649, 42.123585, 25.826252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664967, 41.861847, 25.494019>,  <34.184807, 41.464405, 25.708235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664967, 41.861847, 25.494019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013428, 42.058064, 25.485485>,  <34.222504, 42.175793, 25.480366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013428, 42.058064, 25.485485>,  <33.664967, 41.861847, 25.494019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013428, 42.058064, 25.485485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162456, 0.246961, -0.955310,
		-0.463353, 0.835690, 0.294833,
		0.871155, 0.490544, -0.021333,
		34.274773, 42.205227, 25.479086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515812, 42.501118, 25.332254>,  <33.664967, 41.861847, 25.494019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515812, 42.501118, 25.332254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902733, 42.495937, 25.230942>,  <34.134888, 42.492828, 25.170155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902733, 42.495937, 25.230942>,  <33.515812, 42.501118, 25.332254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902733, 42.495937, 25.230942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240675, 0.268027, -0.932865,
		0.079965, 0.963324, 0.256148,
		0.967306, -0.012948, -0.253281,
		34.192924, 42.492054, 25.154957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650112, 43.205612, 25.025858>,  <33.515812, 42.501118, 25.332254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650112, 43.205612, 25.025858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927479, 42.950783, 24.891214>,  <34.093899, 42.797886, 24.810429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927479, 42.950783, 24.891214>,  <33.650112, 43.205612, 25.025858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927479, 42.950783, 24.891214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095951, 0.381362, -0.919433,
		0.714117, 0.669850, 0.203316,
		0.693419, -0.637074, -0.336610,
		34.135506, 42.759659, 24.790232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039051, 43.546535, 24.585413>,  <33.650112, 43.205612, 25.025858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039051, 43.546535, 24.585413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136398, 43.171001, 24.487965>,  <34.194809, 42.945679, 24.429497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136398, 43.171001, 24.487965>,  <34.039051, 43.546535, 24.585413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136398, 43.171001, 24.487965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139930, 0.282529, -0.948998,
		0.959786, 0.196870, 0.200131,
		0.243372, -0.938840, -0.243619,
		34.209412, 42.889351, 24.414879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703049, 43.595753, 24.136309>,  <34.039051, 43.546535, 24.585413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703049, 43.595753, 24.136309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502350, 43.257149, 24.065119>,  <34.381931, 43.053986, 24.022404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502350, 43.257149, 24.065119>,  <34.703049, 43.595753, 24.136309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502350, 43.257149, 24.065119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017155, 0.195972, -0.980459,
		0.864844, -0.494996, -0.083806,
		-0.501747, -0.846507, -0.177977,
		34.351826, 43.003197, 24.011726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093258, 43.197746, 23.742237>,  <34.703049, 43.595753, 24.136309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093258, 43.197746, 23.742237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724209, 43.056950, 23.679157>,  <34.502781, 42.972469, 23.641310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724209, 43.056950, 23.679157>,  <35.093258, 43.197746, 23.742237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724209, 43.056950, 23.679157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183239, -0.040226, -0.982245,
		0.339401, -0.935137, 0.101612,
		-0.922622, -0.351995, -0.157701,
		34.447422, 42.951351, 23.631847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225063, 42.545364, 23.294052>,  <35.093258, 43.197746, 23.742237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225063, 42.545364, 23.294052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834133, 42.612835, 23.242849>,  <34.599575, 42.653316, 23.212128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834133, 42.612835, 23.242849>,  <35.225063, 42.545364, 23.294052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834133, 42.612835, 23.242849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101826, -0.155654, -0.982549,
		-0.185666, -0.973302, 0.134948,
		-0.977323, 0.168685, -0.128007,
		34.540936, 42.663437, 23.204447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898968, 41.983772, 22.860338>,  <35.225063, 42.545364, 23.294052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898968, 41.983772, 22.860338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636700, 42.284145, 22.828873>,  <34.479340, 42.464371, 22.809994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636700, 42.284145, 22.828873>,  <34.898968, 41.983772, 22.860338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636700, 42.284145, 22.828873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046091, -0.064183, -0.996873,
		-0.753638, -0.657247, 0.007471,
		-0.655672, 0.750937, -0.078664,
		34.439999, 42.509426, 22.805273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326488, 41.777733, 22.492016>,  <34.898968, 41.983772, 22.860338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326488, 41.777733, 22.492016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304272, 42.174549, 22.446814>,  <34.290943, 42.412640, 22.419693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304272, 42.174549, 22.446814>,  <34.326488, 41.777733, 22.492016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304272, 42.174549, 22.446814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050366, -0.115820, -0.991992,
		-0.997185, -0.049403, 0.056398,
		-0.055539, 0.992041, -0.113006,
		34.287609, 42.472160, 22.412912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754295, 41.949894, 22.068232>,  <34.326488, 41.777733, 22.492016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754295, 41.949894, 22.068232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024887, 42.244114, 22.053617>,  <34.187244, 42.420647, 22.044849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024887, 42.244114, 22.053617>,  <33.754295, 41.949894, 22.068232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024887, 42.244114, 22.053617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044538, -0.090380, -0.994911,
		-0.735111, 0.671413, -0.093900,
		0.676483, 0.735552, -0.036536,
		34.227833, 42.464779, 22.042656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555202, 42.311855, 21.430790>,  <33.754295, 41.949894, 22.068232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555202, 42.311855, 21.430790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919792, 42.466995, 21.485628>,  <34.138546, 42.560078, 21.518532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919792, 42.466995, 21.485628>,  <33.555202, 42.311855, 21.430790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919792, 42.466995, 21.485628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242446, -0.237244, -0.940710,
		-0.332329, 0.890667, -0.310273,
		0.911470, 0.387850, 0.137096,
		34.193233, 42.583351, 21.526756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710941, 42.827290, 20.981178>,  <33.555202, 42.311855, 21.430790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710941, 42.827290, 20.981178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072807, 42.675461, 21.058640>,  <34.289928, 42.584362, 21.105116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072807, 42.675461, 21.058640>,  <33.710941, 42.827290, 20.981178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072807, 42.675461, 21.058640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201644, -0.019024, -0.979274,
		0.375391, 0.924966, 0.059328,
		0.904667, -0.379573, 0.193655,
		34.344208, 42.561588, 21.116735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168438, 43.053131, 20.430349>,  <33.710941, 42.827290, 20.981178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168438, 43.053131, 20.430349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413857, 42.776176, 20.582222>,  <34.561108, 42.610004, 20.673346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413857, 42.776176, 20.582222>,  <34.168438, 43.053131, 20.430349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413857, 42.776176, 20.582222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242532, -0.292347, -0.925046,
		0.751493, 0.659642, -0.011441,
		0.613545, -0.692391, 0.379681,
		34.597919, 42.568459, 20.696127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817192, 43.024155, 19.976448>,  <34.168438, 43.053131, 20.430349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817192, 43.024155, 19.976448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803967, 42.674000, 20.169365>,  <34.796032, 42.463909, 20.285116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803967, 42.674000, 20.169365>,  <34.817192, 43.024155, 19.976448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803967, 42.674000, 20.169365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292840, -0.469865, -0.832749,
		0.955589, 0.113701, 0.271884,
		-0.033064, -0.875385, 0.482294,
		34.794048, 42.411385, 20.314053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380573, 42.722012, 19.639845>,  <34.817192, 43.024155, 19.976448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380573, 42.722012, 19.639845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165825, 42.439011, 19.823675>,  <35.036976, 42.269211, 19.933973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165825, 42.439011, 19.823675>,  <35.380573, 42.722012, 19.639845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165825, 42.439011, 19.823675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184522, -0.630021, -0.754337,
		0.823237, -0.320181, 0.468791,
		-0.536872, -0.707501, 0.459576,
		35.004765, 42.226761, 19.961548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813164, 42.073090, 19.657553>,  <35.380573, 42.722012, 19.639845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813164, 42.073090, 19.657553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422306, 42.000389, 19.701649>,  <35.187790, 41.956768, 19.728106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422306, 42.000389, 19.701649>,  <35.813164, 42.073090, 19.657553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422306, 42.000389, 19.701649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006194, -0.542724, -0.839889,
		0.212479, -0.820011, 0.531446,
		-0.977146, -0.181751, 0.110238,
		35.129162, 41.945866, 19.734720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992615, 41.560085, 19.159170>,  <35.813164, 42.073090, 19.657553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992615, 41.560085, 19.159170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340374, 41.365608, 19.123940>,  <36.549030, 41.248920, 19.102802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340374, 41.365608, 19.123940>,  <35.992615, 41.560085, 19.159170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340374, 41.365608, 19.123940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065545, -0.290157, 0.954732,
		-0.489739, -0.824273, -0.284130,
		0.869401, -0.486193, -0.088075,
		36.601196, 41.219749, 19.097517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879223, 40.875702, 19.440947>,  <35.992615, 41.560085, 19.159170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879223, 40.875702, 19.440947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268295, 40.941364, 19.506605>,  <36.501740, 40.980762, 19.546000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268295, 40.941364, 19.506605>,  <35.879223, 40.875702, 19.440947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268295, 40.941364, 19.506605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105868, -0.315596, 0.942969,
		0.206603, -0.934585, -0.289595,
		0.972680, 0.164161, 0.164146,
		36.560101, 40.990612, 19.555849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088840, 40.260017, 19.785318>,  <35.879223, 40.875702, 19.440947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088840, 40.260017, 19.785318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382450, 40.529522, 19.819391>,  <36.558617, 40.691223, 19.839834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382450, 40.529522, 19.819391>,  <36.088840, 40.260017, 19.785318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382450, 40.529522, 19.819391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274902, -0.409468, 0.869922,
		0.621000, -0.615126, -0.485777,
		0.734022, 0.673763, 0.085180,
		36.602657, 40.731651, 19.844946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604996, 39.912281, 20.059910>,  <36.088840, 40.260017, 19.785318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604996, 39.912281, 20.059910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701382, 40.295311, 20.123142>,  <36.759212, 40.525127, 20.161081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701382, 40.295311, 20.123142>,  <36.604996, 39.912281, 20.059910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701382, 40.295311, 20.123142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300529, -0.228497, 0.925997,
		0.922831, -0.175628, -0.342838,
		0.240969, 0.957572, 0.158083,
		36.773674, 40.582584, 20.170567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290295, 39.909615, 20.287817>,  <36.604996, 39.912281, 20.059910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290295, 39.909615, 20.287817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194263, 40.281441, 20.399731>,  <37.136646, 40.504536, 20.466879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194263, 40.281441, 20.399731>,  <37.290295, 39.909615, 20.287817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194263, 40.281441, 20.399731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323743, -0.195048, 0.925822,
		0.915180, 0.312844, -0.254114,
		-0.240073, 0.929562, 0.279785,
		37.122242, 40.560310, 20.483665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869434, 40.203403, 20.685850>,  <37.290295, 39.909615, 20.287817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869434, 40.203403, 20.685850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549366, 40.409092, 20.809340>,  <37.357327, 40.532505, 20.883432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549366, 40.409092, 20.809340>,  <37.869434, 40.203403, 20.685850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549366, 40.409092, 20.809340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263018, -0.161757, 0.951134,
		0.539029, 0.842267, -0.005816,
		-0.800169, 0.514218, 0.308723,
		37.309315, 40.563358, 20.901957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112568, 40.542240, 21.213955>,  <37.869434, 40.203403, 20.685850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112568, 40.542240, 21.213955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717323, 40.561226, 21.272446>,  <37.480175, 40.572617, 21.307541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717323, 40.561226, 21.272446>,  <38.112568, 40.542240, 21.213955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717323, 40.561226, 21.272446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144816, -0.031961, 0.988942,
		0.051610, 0.998362, 0.024708,
		-0.988112, 0.047461, 0.146228,
		37.420891, 40.575462, 21.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959953, 41.197472, 21.618378>,  <38.112568, 40.542240, 21.213955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959953, 41.197472, 21.618378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654034, 40.946404, 21.676489>,  <37.470482, 40.795761, 21.711355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654034, 40.946404, 21.676489>,  <37.959953, 41.197472, 21.618378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654034, 40.946404, 21.676489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110355, 0.349792, 0.930305,
		-0.634743, 0.695467, -0.336789,
		-0.764803, -0.627671, 0.145280,
		37.424591, 40.758102, 21.720074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373829, 41.622425, 21.820698>,  <37.959953, 41.197472, 21.618378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373829, 41.622425, 21.820698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337292, 41.243954, 21.944897>,  <37.315369, 41.016872, 22.019415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337292, 41.243954, 21.944897>,  <37.373829, 41.622425, 21.820698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337292, 41.243954, 21.944897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103072, 0.319106, 0.942097,
		-0.990471, 0.054047, -0.126671,
		-0.091340, -0.946177, 0.310495,
		37.309891, 40.960102, 22.038046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875656, 41.668324, 22.317911>,  <37.373829, 41.622425, 21.820698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875656, 41.668324, 22.317911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022926, 41.303360, 22.389421>,  <37.111290, 41.084381, 22.432327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022926, 41.303360, 22.389421>,  <36.875656, 41.668324, 22.317911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022926, 41.303360, 22.389421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020293, 0.184352, 0.982651,
		-0.929533, -0.365420, 0.049359,
		0.368179, -0.912405, 0.178777,
		37.133381, 41.029640, 22.443054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436493, 41.281445, 22.831940>,  <36.875656, 41.668324, 22.317911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436493, 41.281445, 22.831940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789555, 41.094120, 22.847967>,  <37.001392, 40.981728, 22.857584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789555, 41.094120, 22.847967>,  <36.436493, 41.281445, 22.831940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789555, 41.094120, 22.847967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001820, 0.088657, 0.996061,
		-0.470016, -0.879106, 0.079106,
		0.882656, -0.468308, 0.040071,
		37.054352, 40.953629, 22.859989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404583, 40.867599, 23.490072>,  <36.436493, 41.281445, 22.831940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404583, 40.867599, 23.490072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792816, 40.900558, 23.399580>,  <37.025757, 40.920334, 23.345284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792816, 40.900558, 23.399580>,  <36.404583, 40.867599, 23.490072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792816, 40.900558, 23.399580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215752, 0.119429, 0.969117,
		0.106865, -0.989418, 0.098139,
		0.970583, 0.082391, -0.226232,
		37.083992, 40.925278, 23.331711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734383, 40.467209, 24.002916>,  <36.404583, 40.867599, 23.490072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734383, 40.467209, 24.002916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024841, 40.711369, 23.876343>,  <37.199116, 40.857864, 23.800400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024841, 40.711369, 23.876343>,  <36.734383, 40.467209, 24.002916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024841, 40.711369, 23.876343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232199, 0.215477, 0.948501,
		0.647148, -0.762222, 0.014733,
		0.726143, 0.610399, -0.316433,
		37.242683, 40.894489, 23.781412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158230, 40.431911, 24.542263>,  <36.734383, 40.467209, 24.002916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158230, 40.431911, 24.542263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327641, 40.738091, 24.348476>,  <37.429287, 40.921799, 24.232204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327641, 40.738091, 24.348476>,  <37.158230, 40.431911, 24.542263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327641, 40.738091, 24.348476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480994, 0.263165, 0.836295,
		0.767637, -0.587221, -0.256719,
		0.423530, 0.765451, -0.484465,
		37.454700, 40.967728, 24.203136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891781, 40.295921, 24.538097>,  <37.158230, 40.431911, 24.542263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891781, 40.295921, 24.538097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799362, 40.682652, 24.494509>,  <37.743912, 40.914688, 24.468355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799362, 40.682652, 24.494509>,  <37.891781, 40.295921, 24.538097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799362, 40.682652, 24.494509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529009, 0.218830, 0.819916,
		0.816559, 0.131791, -0.562017,
		-0.231044, 0.966822, -0.108969,
		37.730049, 40.972698, 24.461819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452324, 40.769962, 24.766886>,  <37.891781, 40.295921, 24.538097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452324, 40.769962, 24.766886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132240, 41.009792, 24.761543>,  <37.940189, 41.153690, 24.758337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132240, 41.009792, 24.761543>,  <38.452324, 40.769962, 24.766886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132240, 41.009792, 24.761543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316852, 0.441580, 0.839412,
		0.509189, 0.667471, -0.543331,
		-0.800208, 0.599575, -0.013358,
		37.892178, 41.189663, 24.757536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633278, 41.450359, 25.087589>,  <38.452324, 40.769962, 24.766886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633278, 41.450359, 25.087589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236816, 41.403290, 25.112118>,  <37.998940, 41.375046, 25.126835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236816, 41.403290, 25.112118>,  <38.633278, 41.450359, 25.087589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236816, 41.403290, 25.112118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038585, 0.186563, 0.981685,
		-0.126963, 0.975370, -0.180372,
		-0.991157, -0.117678, 0.061321,
		37.939468, 41.367985, 25.130514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387535, 42.012363, 25.401485>,  <38.633278, 41.450359, 25.087589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387535, 42.012363, 25.401485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094433, 41.749130, 25.470762>,  <37.918571, 41.591190, 25.512327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094433, 41.749130, 25.470762>,  <38.387535, 42.012363, 25.401485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094433, 41.749130, 25.470762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013742, 0.240145, 0.970640,
		-0.680353, 0.713622, -0.166924,
		-0.732756, -0.658084, 0.173190,
		37.874607, 41.551704, 25.522718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133842, 42.373432, 25.931137>,  <38.387535, 42.012363, 25.401485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133842, 42.373432, 25.931137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950348, 42.020950, 25.976803>,  <37.840252, 41.809460, 26.004202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950348, 42.020950, 25.976803>,  <38.133842, 42.373432, 25.931137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950348, 42.020950, 25.976803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088356, 0.082609, 0.992657,
		-0.884170, 0.465453, 0.039964,
		-0.458734, -0.881209, 0.114166,
		37.812729, 41.756588, 26.011053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620880, 42.500774, 26.366966>,  <38.133842, 42.373432, 25.931137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620880, 42.500774, 26.366966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688110, 42.107071, 26.388826>,  <37.728447, 41.870850, 26.401941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688110, 42.107071, 26.388826>,  <37.620880, 42.500774, 26.366966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688110, 42.107071, 26.388826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039825, 0.062172, 0.997271,
		-0.984969, -0.165441, 0.049648,
		0.168076, -0.984258, 0.054649,
		37.738533, 41.811794, 26.405222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135639, 42.228664, 26.892117>,  <37.620880, 42.500774, 26.366966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135639, 42.228664, 26.892117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416428, 41.943893, 26.884161>,  <37.584900, 41.773029, 26.879389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416428, 41.943893, 26.884161>,  <37.135639, 42.228664, 26.892117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416428, 41.943893, 26.884161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165004, -0.189732, 0.967871,
		-0.692832, -0.676132, -0.250657,
		0.701967, -0.711932, -0.019887,
		37.627018, 41.730312, 26.878195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861557, 41.638664, 27.151289>,  <37.135639, 42.228664, 26.892117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861557, 41.638664, 27.151289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255962, 41.585171, 27.191074>,  <37.492607, 41.553074, 27.214947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255962, 41.585171, 27.191074>,  <36.861557, 41.638664, 27.151289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255962, 41.585171, 27.191074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134826, -0.289194, 0.947728,
		-0.097975, -0.947884, -0.303179,
		0.986014, -0.133730, 0.099466,
		37.551765, 41.545052, 27.220915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976837, 41.044739, 27.495680>,  <36.861557, 41.638664, 27.151289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976837, 41.044739, 27.495680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309551, 41.250648, 27.578753>,  <37.509182, 41.374195, 27.628597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309551, 41.250648, 27.578753>,  <36.976837, 41.044739, 27.495680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309551, 41.250648, 27.578753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130491, -0.182322, 0.974541,
		0.539538, -0.837712, -0.084479,
		0.831788, 0.514778, 0.207683,
		37.559086, 41.405083, 27.641058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361366, 40.560276, 27.957876>,  <36.976837, 41.044739, 27.495680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361366, 40.560276, 27.957876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530155, 40.920403, 28.000532>,  <37.631428, 41.136478, 28.026127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530155, 40.920403, 28.000532>,  <37.361366, 40.560276, 27.957876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530155, 40.920403, 28.000532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045381, -0.138455, 0.989329,
		0.905473, -0.412628, -0.099281,
		0.421970, 0.900316, 0.106642,
		37.656746, 41.190498, 28.032524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766365, 40.403770, 28.603369>,  <37.361366, 40.560276, 27.957876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766365, 40.403770, 28.603369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736652, 40.801144, 28.568575>,  <37.718826, 41.039570, 28.547699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736652, 40.801144, 28.568575>,  <37.766365, 40.403770, 28.603369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736652, 40.801144, 28.568575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013308, 0.086231, 0.996186,
		0.997148, 0.075156, 0.006815,
		-0.074281, 0.993436, -0.086985,
		37.714367, 41.099174, 28.542479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317993, 40.712513, 29.105305>,  <37.766365, 40.403770, 28.603369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317993, 40.712513, 29.105305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086674, 41.031364, 29.035845>,  <37.947884, 41.222675, 28.994169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086674, 41.031364, 29.035845>,  <38.317993, 40.712513, 29.105305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086674, 41.031364, 29.035845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205873, 0.063373, 0.976525,
		0.789422, 0.600473, 0.127459,
		-0.578299, 0.797130, -0.173649,
		37.913185, 41.270504, 28.983749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519318, 41.323025, 29.473112>,  <38.317993, 40.712513, 29.105305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519318, 41.323025, 29.473112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124752, 41.369713, 29.426865>,  <37.888012, 41.397728, 29.399117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124752, 41.369713, 29.426865>,  <38.519318, 41.323025, 29.473112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124752, 41.369713, 29.426865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084769, 0.241236, 0.966757,
		0.140734, 0.963421, -0.228064,
		-0.986412, 0.116723, -0.115618,
		37.828827, 41.404728, 29.392179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343830, 41.887234, 29.895945>,  <38.519318, 41.323025, 29.473112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343830, 41.887234, 29.895945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991203, 41.710281, 29.830040>,  <37.779629, 41.604111, 29.790497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991203, 41.710281, 29.830040>,  <38.343830, 41.887234, 29.895945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991203, 41.710281, 29.830040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240537, 0.120635, 0.963114,
		-0.406183, 0.888679, -0.212755,
		-0.881565, -0.442376, -0.164760,
		37.726734, 41.577568, 29.780611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883411, 42.232677, 30.278223>,  <38.343830, 41.887234, 29.895945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883411, 42.232677, 30.278223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707836, 41.879807, 30.209986>,  <37.602489, 41.668083, 30.169044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707836, 41.879807, 30.209986>,  <37.883411, 42.232677, 30.278223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707836, 41.879807, 30.209986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266794, -0.053334, 0.962277,
		-0.857994, 0.467893, -0.211948,
		-0.438939, -0.882174, -0.170592,
		37.576153, 41.615154, 30.158808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225132, 42.192619, 30.535679>,  <37.883411, 42.232677, 30.278223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225132, 42.192619, 30.535679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335094, 41.809196, 30.505770>,  <37.401073, 41.579144, 30.487823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335094, 41.809196, 30.505770>,  <37.225132, 42.192619, 30.535679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335094, 41.809196, 30.505770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273798, -0.152597, 0.949604,
		-0.921662, -0.240579, -0.304402,
		0.274906, -0.958559, -0.074773,
		37.417564, 41.521629, 30.483337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775307, 41.962334, 31.030348>,  <37.225132, 42.192619, 30.535679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775307, 41.962334, 31.030348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039841, 41.670235, 30.961788>,  <37.198563, 41.494976, 30.920652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039841, 41.670235, 30.961788>,  <36.775307, 41.962334, 31.030348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039841, 41.670235, 30.961788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002641, -0.230772, 0.973004,
		-0.750084, -0.643031, -0.154547,
		0.661337, -0.730243, -0.171400,
		37.238243, 41.451160, 30.910368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619400, 41.382607, 31.546139>,  <36.775307, 41.962334, 31.030348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619400, 41.382607, 31.546139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000790, 41.311165, 31.448988>,  <37.229622, 41.268299, 31.390697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000790, 41.311165, 31.448988>,  <36.619400, 41.382607, 31.546139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000790, 41.311165, 31.448988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138006, -0.457688, 0.878337,
		-0.268036, -0.870990, -0.411745,
		0.953473, -0.178602, -0.242879,
		37.286831, 41.257584, 31.376123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741856, 40.669712, 31.583708>,  <36.619400, 41.382607, 31.546139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741856, 40.669712, 31.583708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096859, 40.853539, 31.597105>,  <37.309860, 40.963833, 31.605145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096859, 40.853539, 31.597105>,  <36.741856, 40.669712, 31.583708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096859, 40.853539, 31.597105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255964, -0.552145, 0.793485,
		0.383154, -0.695653, -0.607667,
		0.887511, 0.459568, 0.033495,
		37.363113, 40.991409, 31.607153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217617, 40.212982, 31.510986>,  <36.741856, 40.669712, 31.583708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217617, 40.212982, 31.510986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444439, 40.486958, 31.693989>,  <37.580532, 40.651344, 31.803791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444439, 40.486958, 31.693989>,  <37.217617, 40.212982, 31.510986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444439, 40.486958, 31.693989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261437, -0.676385, 0.688589,
		0.781091, -0.270857, -0.562613,
		0.567052, 0.684938, 0.457506,
		37.614555, 40.692440, 31.831242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690517, 39.777527, 31.725584>,  <37.217617, 40.212982, 31.510986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690517, 39.777527, 31.725584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762001, 40.113243, 31.930973>,  <37.804890, 40.314674, 32.054207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762001, 40.113243, 31.930973>,  <37.690517, 39.777527, 31.725584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762001, 40.113243, 31.930973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254238, -0.543541, 0.799953,
		0.950488, -0.012410, -0.310513,
		0.178704, 0.839291, 0.513474,
		37.815613, 40.365032, 32.085014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274612, 39.621895, 32.060940>,  <37.690517, 39.777527, 31.725584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274612, 39.621895, 32.060940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132946, 39.930462, 32.272404>,  <38.047947, 40.115601, 32.399284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132946, 39.930462, 32.272404>,  <38.274612, 39.621895, 32.060940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132946, 39.930462, 32.272404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190890, -0.493770, 0.848382,
		0.915495, 0.401381, 0.027619,
		-0.354162, 0.771417, 0.528663,
		38.026699, 40.161888, 32.431004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817081, 39.745895, 32.564629>,  <38.274612, 39.621895, 32.060940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817081, 39.745895, 32.564629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471573, 39.907333, 32.685295>,  <38.264267, 40.004196, 32.757694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471573, 39.907333, 32.685295>,  <38.817081, 39.745895, 32.564629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471573, 39.907333, 32.685295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174204, -0.322568, 0.930378,
		0.472806, 0.856188, 0.208318,
		-0.863775, 0.403599, 0.301664,
		38.212440, 40.028412, 32.775795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987274, 40.169239, 33.113708>,  <38.817081, 39.745895, 32.564629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987274, 40.169239, 33.113708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606606, 40.049236, 33.139957>,  <38.378204, 39.977234, 33.155708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606606, 40.049236, 33.139957>,  <38.987274, 40.169239, 33.113708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606606, 40.049236, 33.139957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164026, -0.315892, 0.934510,
		-0.259632, 0.900115, 0.349836,
		-0.951676, -0.300011, 0.065627,
		38.321102, 39.959232, 33.159645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869480, 40.455349, 33.692619>,  <38.987274, 40.169239, 33.113708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869480, 40.455349, 33.692619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588127, 40.172264, 33.666096>,  <38.419315, 40.002415, 33.650181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588127, 40.172264, 33.666096>,  <38.869480, 40.455349, 33.692619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588127, 40.172264, 33.666096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103109, -0.193891, 0.975589,
		-0.703295, 0.679374, 0.209351,
		-0.703381, -0.707713, -0.066313,
		38.377113, 39.959949, 33.646202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337276, 40.565392, 34.314087>,  <38.869480, 40.455349, 33.692619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337276, 40.565392, 34.314087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360771, 40.200294, 34.152374>,  <38.374866, 39.981236, 34.055347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360771, 40.200294, 34.152374>,  <38.337276, 40.565392, 34.314087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360771, 40.200294, 34.152374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135473, -0.393948, 0.909094,
		-0.989039, -0.108167, 0.100513,
		0.058737, -0.912746, -0.404283,
		38.378391, 39.926472, 34.031090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317066, 40.206593, 34.933914>,  <38.337276, 40.565392, 34.314087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317066, 40.206593, 34.933914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376358, 39.901604, 34.681988>,  <38.411934, 39.718609, 34.530834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376358, 39.901604, 34.681988>,  <38.317066, 40.206593, 34.933914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376358, 39.901604, 34.681988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098458, -0.645061, 0.757761,
		-0.984039, -0.050313, -0.170689,
		0.148230, -0.762472, -0.629812,
		38.420826, 39.672863, 34.493046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853096, 39.638184, 35.071056>,  <38.317066, 40.206593, 34.933914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853096, 39.638184, 35.071056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160858, 39.457466, 34.890438>,  <38.345516, 39.349033, 34.782066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160858, 39.457466, 34.890438>,  <37.853096, 39.638184, 35.071056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160858, 39.457466, 34.890438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068567, -0.644410, 0.761600,
		-0.635068, -0.616941, -0.464835,
		0.769407, -0.451796, -0.451546,
		38.391682, 39.321926, 34.754974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641270, 38.854141, 34.976555>,  <37.853096, 39.638184, 35.071056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641270, 38.854141, 34.976555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038235, 38.903309, 34.975189>,  <38.276413, 38.932808, 34.974369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038235, 38.903309, 34.975189>,  <37.641270, 38.854141, 34.976555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038235, 38.903309, 34.975189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075645, -0.588384, 0.805035,
		0.096943, -0.799184, -0.593217,
		0.992411, 0.122917, -0.003415,
		38.335957, 38.940186, 34.974163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062847, 38.190350, 34.973816>,  <37.641270, 38.854141, 34.976555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062847, 38.190350, 34.973816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293503, 38.468575, 35.145248>,  <38.431896, 38.635509, 35.248108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293503, 38.468575, 35.145248>,  <38.062847, 38.190350, 34.973816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293503, 38.468575, 35.145248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146486, -0.604101, 0.783329,
		0.803759, -0.388918, -0.450239,
		0.576640, 0.695561, 0.428580,
		38.466496, 38.677242, 35.273823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602169, 37.755829, 35.350571>,  <38.062847, 38.190350, 34.973816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602169, 37.755829, 35.350571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692558, 38.121212, 35.485943>,  <38.746792, 38.340443, 35.567165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692558, 38.121212, 35.485943>,  <38.602169, 37.755829, 35.350571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692558, 38.121212, 35.485943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191212, -0.382249, 0.904060,
		0.955183, -0.139581, -0.261042,
		0.225973, 0.913457, 0.338428,
		38.760349, 38.395248, 35.587471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151100, 37.628056, 35.680035>,  <38.602169, 37.755829, 35.350571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151100, 37.628056, 35.680035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997604, 37.963428, 35.834835>,  <38.905506, 38.164654, 35.927715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997604, 37.963428, 35.834835>,  <39.151100, 37.628056, 35.680035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997604, 37.963428, 35.834835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340632, -0.261009, 0.903241,
		0.858319, 0.478437, -0.185437,
		-0.383743, 0.838434, 0.387000,
		38.882481, 38.214958, 35.950935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643250, 37.890606, 36.155159>,  <39.151100, 37.628056, 35.680035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643250, 37.890606, 36.155159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311638, 38.088013, 36.260345>,  <39.112671, 38.206455, 36.323460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311638, 38.088013, 36.260345>,  <39.643250, 37.890606, 36.155159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311638, 38.088013, 36.260345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183822, -0.203617, 0.961639,
		0.528128, 0.845567, 0.078086,
		-0.829030, 0.493515, 0.262970,
		39.062927, 38.236069, 36.339237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833084, 38.311298, 36.649490>,  <39.643250, 37.890606, 36.155159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833084, 38.311298, 36.649490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450188, 38.213951, 36.712048>,  <39.220448, 38.155544, 36.749580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450188, 38.213951, 36.712048>,  <39.833084, 38.311298, 36.649490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450188, 38.213951, 36.712048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204474, -0.186772, 0.960889,
		-0.204636, 0.951782, 0.228548,
		-0.957243, -0.243365, 0.156394,
		39.163013, 38.140942, 36.758965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622234, 38.611301, 37.341553>,  <39.833084, 38.311298, 36.649490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622234, 38.611301, 37.341553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335819, 38.345634, 37.255596>,  <39.163971, 38.186234, 37.204021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335819, 38.345634, 37.255596>,  <39.622234, 38.611301, 37.341553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335819, 38.345634, 37.255596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006584, -0.314252, 0.949316,
		-0.698032, 0.678330, 0.229389,
		-0.716036, -0.664164, -0.214892,
		39.121010, 38.146385, 37.191128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007236, 38.807888, 37.696613>,  <39.622234, 38.611301, 37.341553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007236, 38.807888, 37.696613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078747, 38.417747, 37.644875>,  <39.121655, 38.183662, 37.613831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078747, 38.417747, 37.644875>,  <39.007236, 38.807888, 37.696613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078747, 38.417747, 37.644875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135044, -0.154542, 0.978713,
		-0.974578, -0.157504, -0.159344,
		0.178777, -0.975350, -0.129343,
		39.132381, 38.125141, 37.606071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039989, 38.830288, 38.387970>,  <39.007236, 38.807888, 37.696613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039989, 38.830288, 38.387970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039803, 38.479305, 38.196110>,  <39.039688, 38.268715, 38.080994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039803, 38.479305, 38.196110>,  <39.039989, 38.830288, 38.387970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039803, 38.479305, 38.196110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170682, -0.472546, 0.864620,
		-0.985326, 0.082276, -0.149544,
		-0.000471, -0.877457, -0.479655,
		39.039661, 38.216068, 38.052212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488449, 38.497910, 38.531334>,  <39.039989, 38.830288, 38.387970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488449, 38.497910, 38.531334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731186, 38.194183, 38.437378>,  <38.876827, 38.011948, 38.381004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731186, 38.194183, 38.437378>,  <38.488449, 38.497910, 38.531334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731186, 38.194183, 38.437378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089533, -0.358953, 0.929051,
		-0.789762, -0.542759, -0.285813,
		0.606845, -0.759319, -0.234893,
		38.913239, 37.966389, 38.366909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338749, 37.956810, 39.093704>,  <38.488449, 38.497910, 38.531334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338749, 37.956810, 39.093704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594952, 37.708458, 38.912922>,  <38.748672, 37.559448, 38.804455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594952, 37.708458, 38.912922>,  <38.338749, 37.956810, 39.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594952, 37.708458, 38.912922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043607, -0.616971, 0.785776,
		-0.766716, -0.483584, -0.422247,
		0.640504, -0.620880, -0.451954,
		38.787102, 37.522194, 38.777336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061535, 37.184608, 39.085022>,  <38.338749, 37.956810, 39.093704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061535, 37.184608, 39.085022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459503, 37.222023, 39.099949>,  <38.698284, 37.244473, 39.108906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459503, 37.222023, 39.099949>,  <38.061535, 37.184608, 39.085022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459503, 37.222023, 39.099949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022712, -0.569455, 0.821709,
		0.098113, -0.816684, -0.568685,
		0.994916, 0.093536, 0.037322,
		38.757977, 37.250084, 39.111145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423553, 36.447727, 39.099800>,  <38.061535, 37.184608, 39.085022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423553, 36.447727, 39.099800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618454, 36.717602, 39.321568>,  <38.735394, 36.879528, 39.454628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618454, 36.717602, 39.321568>,  <38.423553, 36.447727, 39.099800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618454, 36.717602, 39.321568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318172, -0.454083, 0.832211,
		0.813237, -0.581896, -0.006584,
		0.487250, 0.674690, 0.554420,
		38.764629, 36.920010, 39.487892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722683, 36.011925, 39.636143>,  <38.423553, 36.447727, 39.099800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722683, 36.011925, 39.636143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691540, 36.385338, 39.776115>,  <38.672852, 36.609386, 39.860100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691540, 36.385338, 39.776115>,  <38.722683, 36.011925, 39.636143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691540, 36.385338, 39.776115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123809, -0.357332, 0.925735,
		0.989247, 0.028756, 0.143403,
		-0.077862, 0.933535, 0.349929,
		38.668182, 36.665398, 39.881096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090210, 36.017204, 40.311073>,  <38.722683, 36.011925, 39.636143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090210, 36.017204, 40.311073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828156, 36.318638, 40.332638>,  <38.670921, 36.499496, 40.345577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828156, 36.318638, 40.332638>,  <39.090210, 36.017204, 40.311073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828156, 36.318638, 40.332638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329715, -0.349381, 0.877053,
		0.679766, 0.556817, 0.477360,
		-0.655138, 0.753583, 0.053907,
		38.631615, 36.544712, 40.348808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182682, 36.243046, 40.988525>,  <39.090210, 36.017204, 40.311073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182682, 36.243046, 40.988525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829491, 36.395401, 40.878780>,  <38.617577, 36.486813, 40.812935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829491, 36.395401, 40.878780>,  <39.182682, 36.243046, 40.988525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829491, 36.395401, 40.878780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403169, -0.315991, 0.858839,
		0.240421, 0.868952, 0.432574,
		-0.882979, 0.380884, -0.274364,
		38.564598, 36.509666, 40.796471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960735, 36.540634, 41.589100>,  <39.182682, 36.243046, 40.988525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960735, 36.540634, 41.589100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624897, 36.487343, 41.378452>,  <38.423393, 36.455368, 41.252064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624897, 36.487343, 41.378452>,  <38.960735, 36.540634, 41.589100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624897, 36.487343, 41.378452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402777, -0.497795, 0.768096,
		-0.364477, 0.857001, 0.364288,
		-0.839600, -0.133227, -0.526615,
		38.373016, 36.447376, 41.220467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471794, 36.866833, 41.957634>,  <38.960735, 36.540634, 41.589100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471794, 36.866833, 41.957634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306309, 36.565205, 41.753586>,  <38.207020, 36.384228, 41.631157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306309, 36.565205, 41.753586>,  <38.471794, 36.866833, 41.957634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306309, 36.565205, 41.753586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434485, -0.328854, 0.838497,
		-0.800043, 0.568531, -0.191583,
		-0.413709, -0.754074, -0.510116,
		38.182198, 36.338982, 41.600552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778183, 36.939976, 42.055141>,  <38.471794, 36.866833, 41.957634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778183, 36.939976, 42.055141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857098, 36.554462, 41.983356>,  <37.904446, 36.323154, 41.940285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857098, 36.554462, 41.983356>,  <37.778183, 36.939976, 42.055141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857098, 36.554462, 41.983356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313716, -0.235500, 0.919849,
		-0.928796, -0.125168, -0.348813,
		0.197282, -0.963781, -0.179464,
		37.916283, 36.265327, 41.929516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140808, 36.374397, 42.099697>,  <37.778183, 36.939976, 42.055141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140808, 36.374397, 42.099697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498775, 36.243427, 42.220966>,  <37.713554, 36.164845, 42.293728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498775, 36.243427, 42.220966>,  <37.140808, 36.374397, 42.099697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498775, 36.243427, 42.220966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391615, -0.250600, 0.885346,
		-0.213898, -0.911044, -0.352487,
		0.894922, -0.327413, 0.303176,
		37.767250, 36.145199, 42.311916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876480, 36.005363, 42.578716>,  <37.140808, 36.374397, 42.099697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876480, 36.005363, 42.578716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274853, 35.973980, 42.596458>,  <37.513878, 35.955151, 42.607105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274853, 35.973980, 42.596458>,  <36.876480, 36.005363, 42.578716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274853, 35.973980, 42.596458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066831, -0.312676, 0.947506,
		-0.060471, -0.946614, -0.316647,
		0.995930, -0.078459, 0.044355,
		37.573631, 35.950443, 42.609764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278900, 35.344696, 42.686203>,  <36.876480, 36.005363, 42.578716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278900, 35.344696, 42.686203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482410, 35.620522, 42.892368>,  <37.604519, 35.786018, 43.016068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482410, 35.620522, 42.892368>,  <37.278900, 35.344696, 42.686203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482410, 35.620522, 42.892368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109203, -0.542159, 0.833149,
		0.853944, -0.480172, -0.200536,
		0.508778, 0.689564, 0.515410,
		37.635044, 35.827389, 43.046989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053837, 35.382153, 42.632359>,  <37.278900, 35.344696, 42.686203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053837, 35.382153, 42.632359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738556, 35.603611, 42.524868>,  <37.549389, 35.736485, 42.460373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738556, 35.603611, 42.524868>,  <38.053837, 35.382153, 42.632359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738556, 35.603611, 42.524868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525414, 0.378027, -0.762257,
		-0.320432, -0.742007, -0.588854,
		-0.788203, 0.553643, -0.268729,
		37.502094, 35.769703, 42.444248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848976, 35.198494, 41.992359>,  <38.053837, 35.382153, 42.632359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848976, 35.198494, 41.992359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701042, 35.567814, 42.033806>,  <37.612282, 35.789406, 42.058674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701042, 35.567814, 42.033806>,  <37.848976, 35.198494, 41.992359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701042, 35.567814, 42.033806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471377, 0.282571, -0.835439,
		-0.800642, -0.260129, -0.539727,
		-0.369833, 0.923302, 0.103619,
		37.590092, 35.844803, 42.064892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587090, 35.424374, 41.394398>,  <37.848976, 35.198494, 41.992359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587090, 35.424374, 41.394398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595394, 35.782017, 41.573345>,  <37.600376, 35.996601, 41.680714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595394, 35.782017, 41.573345>,  <37.587090, 35.424374, 41.394398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595394, 35.782017, 41.573345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235273, 0.430531, -0.871372,
		-0.971708, 0.123345, -0.201421,
		0.020761, 0.894108, 0.447370,
		37.601624, 36.050247, 41.707558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187428, 35.832745, 41.003860>,  <37.587090, 35.424374, 41.394398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187428, 35.832745, 41.003860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478550, 36.047302, 41.174778>,  <37.653225, 36.176037, 41.277328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478550, 36.047302, 41.174778>,  <37.187428, 35.832745, 41.003860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478550, 36.047302, 41.174778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300050, 0.311199, -0.901735,
		-0.616660, 0.784496, 0.065546,
		0.727805, 0.536397, 0.427292,
		37.696892, 36.208221, 41.302967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284840, 36.266769, 40.530701>,  <37.187428, 35.832745, 41.003860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284840, 36.266769, 40.530701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604935, 36.351330, 40.755173>,  <37.796993, 36.402065, 40.889854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604935, 36.351330, 40.755173>,  <37.284840, 36.266769, 40.530701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604935, 36.351330, 40.755173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305873, 0.661032, -0.685185,
		-0.515805, 0.719964, 0.464324,
		0.800242, 0.211398, 0.561181,
		37.845009, 36.414749, 40.923527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422691, 37.004726, 40.524685>,  <37.284840, 36.266769, 40.530701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422691, 37.004726, 40.524685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777306, 36.850842, 40.627483>,  <37.990074, 36.758511, 40.689163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777306, 36.850842, 40.627483>,  <37.422691, 37.004726, 40.524685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777306, 36.850842, 40.627483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455170, 0.625693, -0.633505,
		0.082917, 0.678602, 0.729811,
		0.886536, -0.384716, 0.256998,
		38.043266, 36.735428, 40.704582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906738, 37.535381, 40.432537>,  <37.422691, 37.004726, 40.524685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906738, 37.535381, 40.432537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152641, 37.220142, 40.420120>,  <38.300182, 37.030998, 40.412670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152641, 37.220142, 40.420120>,  <37.906738, 37.535381, 40.432537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152641, 37.220142, 40.420120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532273, 0.443605, -0.721041,
		0.582026, 0.426743, 0.692197,
		0.614761, -0.788102, -0.031046,
		38.337070, 36.983711, 40.410805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664726, 37.790955, 40.463856>,  <37.906738, 37.535381, 40.432537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664726, 37.790955, 40.463856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675533, 37.444111, 40.264904>,  <38.682018, 37.236004, 40.145535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675533, 37.444111, 40.264904>,  <38.664726, 37.790955, 40.463856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675533, 37.444111, 40.264904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448440, 0.455196, -0.769220,
		0.893405, -0.202262, 0.401145,
		0.027015, -0.867114, -0.497377,
		38.683640, 37.183975, 40.115692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315517, 37.749229, 40.321301>,  <38.664726, 37.790955, 40.463856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315517, 37.749229, 40.321301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126778, 37.507759, 40.064262>,  <39.013535, 37.362877, 39.910038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126778, 37.507759, 40.064262>,  <39.315517, 37.749229, 40.321301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126778, 37.507759, 40.064262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514371, 0.403468, -0.756727,
		0.716088, -0.687594, 0.120139,
		-0.471849, -0.603679, -0.642597,
		38.985222, 37.326656, 39.871483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685555, 37.986973, 39.684227>,  <39.315517, 37.749229, 40.321301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685555, 37.986973, 39.684227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427849, 37.690739, 39.607853>,  <39.273224, 37.513000, 39.562027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427849, 37.690739, 39.607853>,  <39.685555, 37.986973, 39.684227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427849, 37.690739, 39.607853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262869, 0.020013, -0.964624,
		0.718205, -0.671667, 0.181782,
		-0.644268, -0.740582, -0.190934,
		39.234570, 37.468563, 39.550571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993752, 37.628040, 39.174137>,  <39.685555, 37.986973, 39.684227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993752, 37.628040, 39.174137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625458, 37.478107, 39.130779>,  <39.404484, 37.388145, 39.104767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625458, 37.478107, 39.130779>,  <39.993752, 37.628040, 39.174137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625458, 37.478107, 39.130779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040445, 0.184614, -0.981978,
		0.388093, -0.908523, -0.154820,
		-0.920732, -0.374837, -0.108393,
		39.349239, 37.365658, 39.098263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955635, 37.230671, 38.497765>,  <39.993752, 37.628040, 39.174137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955635, 37.230671, 38.497765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575794, 37.343510, 38.552437>,  <39.347889, 37.411213, 38.585239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575794, 37.343510, 38.552437>,  <39.955635, 37.230671, 38.497765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575794, 37.343510, 38.552437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122896, 0.066083, -0.990217,
		-0.288369, -0.957107, -0.028084,
		-0.949600, 0.282097, 0.136681,
		39.290913, 37.428139, 38.593441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469826, 36.827339, 38.018215>,  <39.955635, 37.230671, 38.497765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469826, 36.827339, 38.018215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306602, 37.181862, 38.105797>,  <39.208668, 37.394577, 38.158344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306602, 37.181862, 38.105797>,  <39.469826, 36.827339, 38.018215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306602, 37.181862, 38.105797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142955, 0.174841, -0.974163,
		-0.901692, -0.428820, 0.055357,
		-0.408062, 0.886309, 0.218955,
		39.184185, 37.447754, 38.171482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850754, 36.781784, 37.761837>,  <39.469826, 36.827339, 38.018215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850754, 36.781784, 37.761837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933182, 37.171055, 37.802750>,  <38.982639, 37.404617, 37.827297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933182, 37.171055, 37.802750>,  <38.850754, 36.781784, 37.761837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933182, 37.171055, 37.802750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339758, 0.169181, -0.925171,
		-0.917659, 0.155900, 0.365508,
		0.206071, 0.973177, 0.102283,
		38.995003, 37.463009, 37.833435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331707, 37.039490, 37.540867>,  <38.850754, 36.781784, 37.761837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331707, 37.039490, 37.540867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607471, 37.327408, 37.508373>,  <38.772930, 37.500160, 37.488876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607471, 37.327408, 37.508373>,  <38.331707, 37.039490, 37.540867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607471, 37.327408, 37.508373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418765, 0.304538, -0.855507,
		-0.591055, 0.623815, 0.511379,
		0.689413, 0.719799, -0.081233,
		38.814297, 37.543346, 37.484005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074825, 37.329376, 36.963478>,  <38.331707, 37.039490, 37.540867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074825, 37.329376, 36.963478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406910, 37.544724, 37.021313>,  <38.606159, 37.673931, 37.056015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406910, 37.544724, 37.021313>,  <38.074825, 37.329376, 36.963478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406910, 37.544724, 37.021313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174957, 0.497920, -0.849391,
		-0.529282, 0.679877, 0.507571,
		0.830211, 0.538371, 0.144591,
		38.655972, 37.706234, 37.064690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848843, 38.026985, 36.992104>,  <38.074825, 37.329376, 36.963478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848843, 38.026985, 36.992104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239498, 38.045795, 36.908226>,  <38.473892, 38.057079, 36.857899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239498, 38.045795, 36.908226>,  <37.848843, 38.026985, 36.992104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239498, 38.045795, 36.908226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205154, 0.494507, -0.844615,
		0.063978, 0.867901, 0.492600,
		0.976636, 0.047022, -0.209691,
		38.532490, 38.059902, 36.845318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921089, 38.609669, 36.715488>,  <37.848843, 38.026985, 36.992104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921089, 38.609669, 36.715488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284996, 38.487957, 36.602531>,  <38.503338, 38.414932, 36.534756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284996, 38.487957, 36.602531>,  <37.921089, 38.609669, 36.715488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284996, 38.487957, 36.602531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087266, 0.524880, -0.846691,
		0.405851, 0.794932, 0.450964,
		0.909764, -0.304276, -0.282394,
		38.557926, 38.396675, 36.517815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370083, 39.182617, 36.597992>,  <37.921089, 38.609669, 36.715488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370083, 39.182617, 36.597992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533936, 38.888287, 36.382305>,  <38.632248, 38.711689, 36.252892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533936, 38.888287, 36.382305>,  <38.370083, 39.182617, 36.597992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533936, 38.888287, 36.382305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045913, 0.606967, -0.793400,
		0.911096, 0.300243, 0.282416,
		0.409630, -0.735830, -0.539220,
		38.656826, 38.667538, 36.220539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864971, 39.513252, 36.189674>,  <38.370083, 39.182617, 36.597992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864971, 39.513252, 36.189674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795368, 39.163502, 36.008480>,  <38.753605, 38.953651, 35.899765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795368, 39.163502, 36.008480>,  <38.864971, 39.513252, 36.189674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795368, 39.163502, 36.008480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034193, 0.465089, -0.884604,
		0.984150, -0.138440, -0.110827,
		-0.174009, -0.874372, -0.452983,
		38.743164, 38.901192, 35.872585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463860, 39.448380, 35.592667>,  <38.864971, 39.513252, 36.189674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463860, 39.448380, 35.592667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162750, 39.209488, 35.481926>,  <38.982086, 39.066151, 35.415482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162750, 39.209488, 35.481926>,  <39.463860, 39.448380, 35.592667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162750, 39.209488, 35.481926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043757, 0.374245, -0.926297,
		0.656826, -0.709404, -0.255588,
		-0.752771, -0.597232, -0.276855,
		38.936920, 39.030319, 35.398869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622002, 39.043015, 34.949604>,  <39.463860, 39.448380, 35.592667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622002, 39.043015, 34.949604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223194, 39.020859, 34.971119>,  <38.983910, 39.007565, 34.984028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223194, 39.020859, 34.971119>,  <39.622002, 39.043015, 34.949604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223194, 39.020859, 34.971119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068684, 0.318183, -0.945538,
		0.035259, -0.946410, -0.321037,
		-0.997015, -0.055389, 0.053785,
		38.924091, 39.004242, 34.987255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436798, 38.819878, 34.278572>,  <39.622002, 39.043015, 34.949604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436798, 38.819878, 34.278572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103512, 38.992462, 34.416897>,  <38.903538, 39.096012, 34.499889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103512, 38.992462, 34.416897>,  <39.436798, 38.819878, 34.278572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103512, 38.992462, 34.416897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230088, 0.298135, -0.926377,
		-0.502796, -0.851442, -0.149137,
		-0.833220, 0.431464, 0.345808,
		38.853546, 39.121902, 34.520638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660744, 38.383606, 33.728149>,  <39.436798, 38.819878, 34.278572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660744, 38.383606, 33.728149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848991, 38.154987, 33.459270>,  <39.961941, 38.017815, 33.297943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848991, 38.154987, 33.459270>,  <39.660744, 38.383606, 33.728149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848991, 38.154987, 33.459270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861564, 0.133326, 0.489829,
		-0.190339, -0.809665, 0.555171,
		0.470616, -0.571549, -0.672200,
		39.990177, 37.983524, 33.257610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918140, 37.795250, 34.009277>,  <39.660744, 38.383606, 33.728149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918140, 37.795250, 34.009277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138275, 37.928436, 33.703007>,  <40.270355, 38.008347, 33.519245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138275, 37.928436, 33.703007>,  <39.918140, 37.795250, 34.009277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138275, 37.928436, 33.703007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791107, 0.085292, 0.605702,
		0.266981, -0.939075, -0.216469,
		0.550336, 0.332961, -0.765681,
		40.303375, 38.028324, 33.473301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525757, 37.626247, 33.986702>,  <39.918140, 37.795250, 34.009277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525757, 37.626247, 33.986702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608765, 37.865685, 33.677219>,  <40.658569, 38.009346, 33.491531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608765, 37.865685, 33.677219>,  <40.525757, 37.626247, 33.986702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608765, 37.865685, 33.677219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886603, 0.219124, 0.407332,
		0.413365, -0.770497, -0.485246,
		0.207520, 0.598597, -0.773703,
		40.671021, 38.045265, 33.445107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178329, 37.433586, 33.538872>,  <40.525757, 37.626247, 33.986702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178329, 37.433586, 33.538872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094017, 37.823460, 33.568710>,  <41.043430, 38.057384, 33.586613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094017, 37.823460, 33.568710>,  <41.178329, 37.433586, 33.538872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094017, 37.823460, 33.568710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777258, 0.120827, 0.617471,
		0.592825, 0.188134, -0.783048,
		-0.210781, 0.974683, 0.074599,
		41.030785, 38.115864, 33.591091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694576, 37.893353, 33.368252>,  <41.178329, 37.433586, 33.538872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694576, 37.893353, 33.368252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481476, 38.080322, 33.650440>,  <41.353615, 38.192505, 33.819756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481476, 38.080322, 33.650440>,  <41.694576, 37.893353, 33.368252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481476, 38.080322, 33.650440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829760, 0.124633, 0.544026,
		0.166367, 0.875202, -0.454250,
		-0.532748, 0.467426, 0.705473,
		41.321651, 38.220551, 33.862083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983879, 38.576397, 33.464184>,  <41.694576, 37.893353, 33.368252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983879, 38.576397, 33.464184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805534, 38.443295, 33.796562>,  <41.698528, 38.363434, 33.995991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805534, 38.443295, 33.796562>,  <41.983879, 38.576397, 33.464184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805534, 38.443295, 33.796562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867439, 0.068374, 0.492823,
		-0.220805, 0.940531, 0.258161,
		-0.445864, -0.332757, 0.830950,
		41.671776, 38.343468, 34.045849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509354, 38.228645, 33.120155>,  <41.983879, 38.576397, 33.464184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509354, 38.228645, 33.120155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498051, 38.208618, 33.519493>,  <42.491268, 38.196602, 33.759098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498051, 38.208618, 33.519493>,  <42.509354, 38.228645, 33.120155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498051, 38.208618, 33.519493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993319, -0.113202, 0.022439,
		0.111891, 0.992310, 0.052928,
		-0.028258, -0.050063, 0.998346,
		42.489574, 38.193600, 33.818996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057796, 38.599457, 33.381363>,  <42.509354, 38.228645, 33.120155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057796, 38.599457, 33.381363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993881, 38.389877, 33.716015>,  <42.955532, 38.264130, 33.916805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993881, 38.389877, 33.716015>,  <43.057796, 38.599457, 33.381363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993881, 38.389877, 33.716015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928035, 0.209154, 0.308230,
		-0.336480, 0.825672, 0.452821,
		-0.159787, -0.523947, 0.836629,
		42.945946, 38.232693, 33.967003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256992, 38.947300, 34.002884>,  <43.057796, 38.599457, 33.381363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256992, 38.947300, 34.002884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233662, 38.578251, 34.155392>,  <43.219662, 38.356823, 34.246895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233662, 38.578251, 34.155392>,  <43.256992, 38.947300, 34.002884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233662, 38.578251, 34.155392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852163, 0.152928, 0.500432,
		-0.520016, 0.354094, 0.777304,
		-0.058328, -0.922622, 0.381271,
		43.216164, 38.301464, 34.269772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384483, 38.933304, 34.697685>,  <43.256992, 38.947300, 34.002884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384483, 38.933304, 34.697685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466866, 38.558037, 34.586380>,  <43.516296, 38.332878, 34.519596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466866, 38.558037, 34.586380>,  <43.384483, 38.933304, 34.697685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466866, 38.558037, 34.586380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852529, 0.032427, 0.521673,
		-0.480391, -0.344671, 0.806490,
		0.205958, -0.938163, -0.278264,
		43.528652, 38.276588, 34.502899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399769, 38.421440, 35.299545>,  <43.384483, 38.933304, 34.697685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399769, 38.421440, 35.299545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634933, 38.313965, 34.994347>,  <43.776031, 38.249481, 34.811226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634933, 38.313965, 34.994347>,  <43.399769, 38.421440, 35.299545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634933, 38.313965, 34.994347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776471, -0.077040, 0.625426,
		-0.226825, -0.960142, 0.163335,
		0.587915, -0.268687, -0.762996,
		43.811310, 38.233360, 34.765450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731636, 37.743851, 35.320549>,  <43.399769, 38.421440, 35.299545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731636, 37.743851, 35.320549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008072, 37.965248, 35.134628>,  <44.173935, 38.098087, 35.023075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008072, 37.965248, 35.134628>,  <43.731636, 37.743851, 35.320549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008072, 37.965248, 35.134628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626469, -0.138006, 0.767132,
		0.360456, -0.821341, -0.442121,
		0.691092, 0.553492, -0.464799,
		44.215401, 38.131294, 34.995190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410892, 37.465889, 35.343029>,  <43.731636, 37.743851, 35.320549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410892, 37.465889, 35.343029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471519, 37.858864, 35.299492>,  <44.507896, 38.094650, 35.273369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471519, 37.858864, 35.299492>,  <44.410892, 37.465889, 35.343029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471519, 37.858864, 35.299492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709713, -0.031522, 0.703785,
		0.687993, -0.183920, -0.702025,
		0.151570, 0.982436, -0.108844,
		44.516991, 38.153595, 35.266838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119732, 37.463776, 35.456448>,  <44.410892, 37.465889, 35.343029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119732, 37.463776, 35.456448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961945, 37.261181, 35.149757>,  <44.867271, 37.139626, 34.965744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961945, 37.261181, 35.149757>,  <45.119732, 37.463776, 35.456448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961945, 37.261181, 35.149757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720905, -0.687978, 0.083569,
		-0.569816, -0.519770, 0.636513,
		-0.394470, -0.506484, -0.766725,
		44.843605, 37.109234, 34.919739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069626, 36.768272, 35.672974>,  <45.119732, 37.463776, 35.456448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069626, 36.768272, 35.672974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120361, 36.803558, 35.277775>,  <45.150803, 36.824730, 35.040657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120361, 36.803558, 35.277775>,  <45.069626, 36.768272, 35.672974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120361, 36.803558, 35.277775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824691, -0.562841, 0.055620,
		-0.551177, -0.821844, -0.144139,
		0.126839, 0.088214, -0.987993,
		45.158413, 36.830021, 34.981377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240326, 36.133469, 35.478359>,  <45.069626, 36.768272, 35.672974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240326, 36.133469, 35.478359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356762, 36.422546, 35.227604>,  <45.426624, 36.595993, 35.077152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356762, 36.422546, 35.227604>,  <45.240326, 36.133469, 35.478359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356762, 36.422546, 35.227604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904504, -0.421364, -0.065755,
		-0.311667, -0.547879, -0.776333,
		0.291093, 0.722690, -0.626884,
		45.444092, 36.639355, 35.039539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018276, 36.055218, 35.526058>,  <45.240326, 36.133469, 35.478359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018276, 36.055218, 35.526058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850636, 35.692219, 35.537357>,  <45.750050, 35.474419, 35.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850636, 35.692219, 35.537357>,  <46.018276, 36.055218, 35.526058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850636, 35.692219, 35.537357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061174, -0.002821, -0.998123,
		0.905876, -0.420043, -0.054334,
		-0.419101, -0.907500, 0.028251,
		45.724907, 35.419968, 35.545834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366524, 35.820927, 34.980179>,  <46.018276, 36.055218, 35.526058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366524, 35.820927, 34.980179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026917, 35.626949, 35.064075>,  <45.823151, 35.510563, 35.114414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026917, 35.626949, 35.064075>,  <46.366524, 35.820927, 34.980179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026917, 35.626949, 35.064075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305355, 0.126397, -0.943812,
		0.431189, -0.865361, -0.255395,
		-0.849020, -0.484947, 0.209742,
		45.772209, 35.481464, 35.126999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.522865, 35.007793, 35.187202>,  <46.366524, 35.820927, 34.980179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.522865, 35.007793, 35.187202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670837, 34.883343, 34.837036>,  <46.759621, 34.808670, 34.626938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670837, 34.883343, 34.837036>,  <46.522865, 35.007793, 35.187202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670837, 34.883343, 34.837036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817315, 0.557016, 0.147407,
		0.441757, -0.770020, 0.460348,
		0.369928, -0.311131, -0.875415,
		46.781815, 34.790005, 34.574413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.128876, 34.556187, 35.241062>,  <46.522865, 35.007793, 35.187202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.128876, 34.556187, 35.241062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.114937, 34.805248, 34.928371>,  <47.106571, 34.954685, 34.740757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.114937, 34.805248, 34.928371>,  <47.128876, 34.556187, 35.241062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.114937, 34.805248, 34.928371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758379, 0.525904, 0.385081,
		0.650882, -0.579422, -0.490533,
		-0.034849, 0.622652, -0.781723,
		47.104481, 34.992043, 34.693855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.778809, 34.569069, 34.954235>,  <47.128876, 34.556187, 35.241062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.778809, 34.569069, 34.954235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.588985, 34.911385, 34.871853>,  <47.475094, 35.116776, 34.822422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.588985, 34.911385, 34.871853>,  <47.778809, 34.569069, 34.954235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.588985, 34.911385, 34.871853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802936, 0.516746, 0.297098,
		0.360681, -0.024381, -0.932371,
		-0.474555, 0.855792, -0.205957,
		47.446617, 35.168121, 34.810066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.703930, 37.185089, 24.644466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317226, 37.138382, 24.735455>,  <34.085205, 37.110359, 24.790049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317226, 37.138382, 24.735455>,  <34.703930, 37.185089, 24.644466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317226, 37.138382, 24.735455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207773, 0.159750, 0.965044,
		-0.149025, 0.980227, -0.130178,
		-0.966758, -0.116768, 0.227471,
		34.027199, 37.103352, 24.803696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586285, 37.750519, 25.088591>,  <34.703930, 37.185089, 24.644466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586285, 37.750519, 25.088591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318432, 37.458263, 25.141890>,  <34.157719, 37.282909, 25.173868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.318432, 37.458263, 25.141890>,  <34.586285, 37.750519, 25.088591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318432, 37.458263, 25.141890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077423, 0.109758, 0.990938,
		-0.738643, 0.673884, -0.016930,
		-0.669636, -0.730639, 0.133246,
		34.117542, 37.239071, 25.181864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139008, 37.933186, 25.606844>,  <34.586285, 37.750519, 25.088591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139008, 37.933186, 25.606844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.091351, 37.536663, 25.584532>,  <34.062756, 37.298748, 25.571144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.091351, 37.536663, 25.584532>,  <34.139008, 37.933186, 25.606844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091351, 37.536663, 25.584532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115365, -0.041980, 0.992436,
		-0.986152, 0.124675, -0.109361,
		-0.119141, -0.991309, -0.055782,
		34.055607, 37.239269, 25.567797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546558, 37.756062, 26.058834>,  <34.139008, 37.933186, 25.606844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546558, 37.756062, 26.058834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.775845, 37.432007, 26.009687>,  <33.913418, 37.237572, 25.980200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.775845, 37.432007, 26.009687>,  <33.546558, 37.756062, 26.058834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775845, 37.432007, 26.009687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123635, -0.233740, 0.964407,
		-0.810023, -0.537623, -0.234145,
		0.573216, -0.810140, -0.122866,
		33.947811, 37.188965, 25.972828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080582, 37.134472, 26.339003>,  <33.546558, 37.756062, 26.058834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080582, 37.134472, 26.339003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465519, 37.026203, 26.328960>,  <33.696480, 36.961243, 26.322935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465519, 37.026203, 26.328960>,  <33.080582, 37.134472, 26.339003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465519, 37.026203, 26.328960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069997, -0.335979, 0.939265,
		-0.262666, -0.902139, -0.342274,
		0.962344, -0.270672, -0.025103,
		33.754223, 36.945000, 26.321430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091259, 36.462605, 26.762676>,  <33.080582, 37.134472, 26.339003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091259, 36.462605, 26.762676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.463928, 36.607918, 26.762722>,  <33.687531, 36.695107, 26.762751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.463928, 36.607918, 26.762722>,  <33.091259, 36.462605, 26.762676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463928, 36.607918, 26.762722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135534, -0.347880, 0.927691,
		0.337059, -0.864292, -0.373350,
		0.931677, 0.363288, 0.000115,
		33.743431, 36.716904, 26.762756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452778, 35.984352, 27.072191>,  <33.091259, 36.462605, 26.762676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452778, 35.984352, 27.072191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705700, 36.294163, 27.079130>,  <33.857452, 36.480049, 27.083294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705700, 36.294163, 27.079130>,  <33.452778, 35.984352, 27.072191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705700, 36.294163, 27.079130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246272, -0.222179, 0.943391,
		0.734533, -0.592240, -0.331229,
		0.632306, 0.774524, 0.017346,
		33.895393, 36.526520, 27.084333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864807, 35.858208, 27.627636>,  <33.452778, 35.984352, 27.072191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864807, 35.858208, 27.627636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972927, 36.236504, 27.555510>,  <34.037800, 36.463482, 27.512234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972927, 36.236504, 27.555510>,  <33.864807, 35.858208, 27.627636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972927, 36.236504, 27.555510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341181, 0.081042, 0.936497,
		0.900297, -0.314654, -0.300764,
		0.270298, 0.945741, -0.180316,
		34.054016, 36.520226, 27.501415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598499, 35.932613, 27.641798>,  <33.864807, 35.858208, 27.627636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598499, 35.932613, 27.641798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398357, 36.265835, 27.736174>,  <34.278271, 36.465767, 27.792799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398357, 36.265835, 27.736174>,  <34.598499, 35.932613, 27.641798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398357, 36.265835, 27.736174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349655, -0.054878, 0.935270,
		0.792076, 0.550468, -0.263822,
		-0.500358, 0.833051, 0.235941,
		34.248249, 36.515751, 27.806955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093212, 36.268875, 28.036285>,  <34.598499, 35.932613, 27.641798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093212, 36.268875, 28.036285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.741413, 36.440681, 28.118265>,  <34.530334, 36.543766, 28.167454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.741413, 36.440681, 28.118265>,  <35.093212, 36.268875, 28.036285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741413, 36.440681, 28.118265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271914, 0.100085, 0.957103,
		0.390578, 0.897496, -0.204815,
		-0.879495, 0.429515, 0.204951,
		34.477566, 36.569534, 28.179750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211483, 36.935684, 28.464214>,  <35.093212, 36.268875, 28.036285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211483, 36.935684, 28.464214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.831387, 36.829834, 28.529957>,  <34.603329, 36.766323, 28.569403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.831387, 36.829834, 28.529957>,  <35.211483, 36.935684, 28.464214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831387, 36.829834, 28.529957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145684, 0.088850, 0.985333,
		-0.275348, 0.960249, -0.045877,
		-0.950242, -0.264626, 0.164358,
		34.546314, 36.750446, 28.579264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920551, 37.590092, 28.940182>,  <35.211483, 36.935684, 28.464214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920551, 37.590092, 28.940182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.730530, 37.243340, 29.000633>,  <34.616516, 37.035286, 29.036903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.730530, 37.243340, 29.000633>,  <34.920551, 37.590092, 28.940182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730530, 37.243340, 29.000633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126675, 0.102585, 0.986625,
		-0.870793, 0.487841, 0.061079,
		-0.475050, -0.866884, 0.151127,
		34.588017, 36.983273, 29.045971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517464, 37.650364, 29.599779>,  <34.920551, 37.590092, 28.940182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517464, 37.650364, 29.599779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.530209, 37.251892, 29.567242>,  <34.537857, 37.012810, 29.547720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.530209, 37.251892, 29.567242>,  <34.517464, 37.650364, 29.599779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530209, 37.251892, 29.567242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132438, -0.076457, 0.988238,
		-0.990679, -0.042264, 0.129495,
		0.031866, -0.996177, -0.081342,
		34.539768, 36.953037, 29.542839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971321, 37.386333, 30.094231>,  <34.517464, 37.650364, 29.599779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971321, 37.386333, 30.094231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268211, 37.133209, 30.006006>,  <34.446346, 36.981335, 29.953072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268211, 37.133209, 30.006006>,  <33.971321, 37.386333, 30.094231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268211, 37.133209, 30.006006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167867, -0.143064, 0.975373,
		-0.648780, -0.760976, 0.000041,
		0.742230, -0.632810, -0.220560,
		34.490879, 36.943367, 29.939838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057919, 37.127266, 30.655451>,  <33.971321, 37.386333, 30.094231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057919, 37.127266, 30.655451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389069, 36.955204, 30.511461>,  <34.587761, 36.851967, 30.425068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389069, 36.955204, 30.511461>,  <34.057919, 37.127266, 30.655451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389069, 36.955204, 30.511461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308033, -0.187672, 0.932682,
		-0.468755, -0.883032, -0.022867,
		0.827880, -0.430155, -0.359975,
		34.637432, 36.826157, 30.403469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047535, 36.389721, 30.912743>,  <34.057919, 37.127266, 30.655451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047535, 36.389721, 30.912743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421848, 36.515862, 30.849670>,  <34.646435, 36.591545, 30.811827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.421848, 36.515862, 30.849670>,  <34.047535, 36.389721, 30.912743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421848, 36.515862, 30.849670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227643, -0.198885, 0.953217,
		0.269241, -0.927899, -0.257901,
		0.935782, 0.315354, -0.157681,
		34.702583, 36.610466, 30.802366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398693, 35.887070, 31.151834>,  <34.047535, 36.389721, 30.912743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398693, 35.887070, 31.151834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.650963, 36.197472, 31.148525>,  <34.802322, 36.383713, 31.146540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.650963, 36.197472, 31.148525>,  <34.398693, 35.887070, 31.151834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650963, 36.197472, 31.148525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416440, -0.329413, 0.847387,
		0.654853, -0.537867, -0.530911,
		0.630670, 0.776006, -0.008273,
		34.840164, 36.430275, 31.146044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139046, 35.604610, 31.340784>,  <34.398693, 35.887070, 31.151834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139046, 35.604610, 31.340784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163750, 35.991665, 31.438648>,  <35.178574, 36.223900, 31.497368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163750, 35.991665, 31.438648>,  <35.139046, 35.604610, 31.340784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163750, 35.991665, 31.438648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454771, -0.245489, 0.856107,
		0.888464, 0.058390, -0.455216,
		0.061763, 0.967639, 0.244662,
		35.182278, 36.281956, 31.512047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766094, 35.646484, 31.736391>,  <35.139046, 35.604610, 31.340784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766094, 35.646484, 31.736391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625797, 36.017788, 31.785894>,  <35.541618, 36.240570, 31.815596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625797, 36.017788, 31.785894>,  <35.766094, 35.646484, 31.736391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625797, 36.017788, 31.785894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471151, 0.060704, 0.879961,
		0.809320, 0.366946, -0.458642,
		-0.350739, 0.928260, 0.123758,
		35.520576, 36.296265, 31.823021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383423, 36.144089, 31.834356>,  <35.766094, 35.646484, 31.736391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383423, 36.144089, 31.834356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055744, 36.296211, 32.006069>,  <35.859138, 36.387486, 32.109097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055744, 36.296211, 32.006069>,  <36.383423, 36.144089, 31.834356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055744, 36.296211, 32.006069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480214, 0.045624, 0.875964,
		0.313549, 0.923734, -0.220004,
		-0.819196, 0.380307, 0.429284,
		35.809986, 36.410305, 32.134853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507202, 36.763668, 32.079197>,  <36.383423, 36.144089, 31.834356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507202, 36.763668, 32.079197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199577, 36.664135, 32.314693>,  <36.015003, 36.604416, 32.455994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199577, 36.664135, 32.314693>,  <36.507202, 36.763668, 32.079197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199577, 36.664135, 32.314693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568723, 0.153974, 0.807989,
		-0.291709, 0.956228, 0.023103,
		-0.769064, -0.248837, 0.588745,
		35.968857, 36.589485, 32.491318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541622, 37.259056, 32.560745>,  <36.507202, 36.763668, 32.079197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541622, 37.259056, 32.560745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293167, 36.989010, 32.719940>,  <36.144093, 36.826981, 32.815456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293167, 36.989010, 32.719940>,  <36.541622, 37.259056, 32.560745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293167, 36.989010, 32.719940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407308, 0.155766, 0.899910,
		-0.669541, 0.721075, 0.178230,
		-0.621140, -0.675120, 0.397991,
		36.106827, 36.786472, 32.839336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137878, 37.694267, 32.759228>,  <36.541622, 37.259056, 32.560745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137878, 37.694267, 32.759228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.519245, 37.605095, 32.677940>,  <37.748066, 37.551590, 32.629166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.519245, 37.605095, 32.677940>,  <37.137878, 37.694267, 32.759228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519245, 37.605095, 32.677940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231610, -0.109348, -0.966644,
		0.193276, 0.968682, -0.155888,
		0.953416, -0.222934, -0.203222,
		37.805271, 37.538216, 32.616974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406357, 38.163738, 32.109825>,  <37.137878, 37.694267, 32.759228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406357, 38.163738, 32.109825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622715, 37.829720, 32.150082>,  <37.752529, 37.629307, 32.174236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622715, 37.829720, 32.150082>,  <37.406357, 38.163738, 32.109825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622715, 37.829720, 32.150082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045047, -0.148248, -0.987924,
		0.839885, 0.529827, -0.117802,
		0.540892, -0.835048, 0.100644,
		37.784985, 37.579205, 32.180275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800301, 38.153248, 31.539377>,  <37.406357, 38.163738, 32.109825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800301, 38.153248, 31.539377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833088, 37.769142, 31.646091>,  <37.852760, 37.538677, 31.710121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833088, 37.769142, 31.646091>,  <37.800301, 38.153248, 31.539377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833088, 37.769142, 31.646091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090478, -0.273753, -0.957535,
		0.992519, 0.054353, -0.109323,
		0.081973, -0.960263, 0.266787,
		37.857681, 37.481064, 31.726128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294758, 37.888325, 30.964188>,  <37.800301, 38.153248, 31.539377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294758, 37.888325, 30.964188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128750, 37.574154, 31.147867>,  <38.029144, 37.385651, 31.258076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128750, 37.574154, 31.147867>,  <38.294758, 37.888325, 30.964188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128750, 37.574154, 31.147867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063929, -0.478296, -0.875869,
		0.907565, -0.392856, 0.148289,
		-0.415016, -0.785428, 0.459200,
		38.004246, 37.338524, 31.285627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585201, 37.243389, 30.645535>,  <38.294758, 37.888325, 30.964188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585201, 37.243389, 30.645535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232510, 37.144894, 30.806494>,  <38.020897, 37.085796, 30.903070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232510, 37.144894, 30.806494>,  <38.585201, 37.243389, 30.645535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232510, 37.144894, 30.806494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230896, -0.518582, -0.823262,
		0.411394, -0.818804, 0.400393,
		-0.881727, -0.246236, 0.402400,
		37.967991, 37.071022, 30.927214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571491, 36.593380, 30.418270>,  <38.585201, 37.243389, 30.645535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571491, 36.593380, 30.418270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202854, 36.678547, 30.548094>,  <37.981674, 36.729649, 30.625988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202854, 36.678547, 30.548094>,  <38.571491, 36.593380, 30.418270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202854, 36.678547, 30.548094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387959, -0.532661, -0.752170,
		0.012729, -0.819107, 0.573499,
		-0.921589, 0.212920, 0.324560,
		37.926376, 36.742424, 30.645462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248020, 35.933754, 30.373524>,  <38.571491, 36.593380, 30.418270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248020, 35.933754, 30.373524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986702, 36.236542, 30.379246>,  <37.829910, 36.418213, 30.382679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986702, 36.236542, 30.379246>,  <38.248020, 35.933754, 30.373524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986702, 36.236542, 30.379246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334097, -0.271280, -0.902655,
		-0.679400, -0.594480, 0.430127,
		-0.653295, 0.756968, 0.014306,
		37.790714, 36.463631, 30.383537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583920, 35.723595, 30.106554>,  <38.248020, 35.933754, 30.373524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583920, 35.723595, 30.106554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536076, 36.118149, 30.061399>,  <37.507370, 36.354881, 30.034307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536076, 36.118149, 30.061399>,  <37.583920, 35.723595, 30.106554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536076, 36.118149, 30.061399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260738, -0.140920, -0.955069,
		-0.957972, -0.084797, 0.274042,
		-0.119605, 0.986383, -0.112887,
		37.500195, 36.414062, 30.027533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040268, 35.749352, 29.703302>,  <37.583920, 35.723595, 30.106554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040268, 35.749352, 29.703302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.228977, 36.098175, 29.651251>,  <37.342205, 36.307472, 29.620020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.228977, 36.098175, 29.651251>,  <37.040268, 35.749352, 29.703302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228977, 36.098175, 29.651251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173097, -0.053107, -0.983472,
		-0.864561, 0.486502, 0.125897,
		0.471775, 0.872064, -0.130127,
		37.370510, 36.359795, 29.612213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653431, 35.971786, 29.231457>,  <37.040268, 35.749352, 29.703302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653431, 35.971786, 29.231457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973328, 36.211884, 29.226904>,  <37.165264, 36.355942, 29.224173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973328, 36.211884, 29.226904>,  <36.653431, 35.971786, 29.231457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973328, 36.211884, 29.226904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106808, 0.123598, -0.986568,
		-0.590771, 0.790212, 0.162956,
		0.799739, 0.600240, -0.011384,
		37.213249, 36.391956, 29.223490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418598, 36.670692, 29.005688>,  <36.653431, 35.971786, 29.231457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418598, 36.670692, 29.005688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806046, 36.623089, 28.918398>,  <37.038513, 36.594524, 28.866024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806046, 36.623089, 28.918398>,  <36.418598, 36.670692, 29.005688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806046, 36.623089, 28.918398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197247, 0.166224, -0.966159,
		0.151260, 0.978880, 0.137532,
		0.968615, -0.119013, -0.218224,
		37.096630, 36.587383, 28.852930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682556, 37.245155, 28.615097>,  <36.418598, 36.670692, 29.005688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682556, 37.245155, 28.615097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933407, 36.945526, 28.529678>,  <37.083916, 36.765747, 28.478426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933407, 36.945526, 28.529678>,  <36.682556, 37.245155, 28.615097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933407, 36.945526, 28.529678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256483, 0.060284, -0.964667,
		0.735480, 0.659739, -0.154319,
		0.627125, -0.749073, -0.213549,
		37.121544, 36.720802, 28.465614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039082, 37.536366, 28.170017>,  <36.682556, 37.245155, 28.615097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039082, 37.536366, 28.170017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101479, 37.143517, 28.127869>,  <37.138916, 36.907806, 28.102579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101479, 37.143517, 28.127869>,  <37.039082, 37.536366, 28.170017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101479, 37.143517, 28.127869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013749, 0.104507, -0.994429,
		0.987662, 0.156572, 0.002799,
		0.155993, -0.982122, -0.105370,
		37.148277, 36.848881, 28.096258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561852, 37.371368, 27.600870>,  <37.039082, 37.536366, 28.170017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561852, 37.371368, 27.600870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342400, 37.042717, 27.662756>,  <37.210728, 36.845528, 27.699888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342400, 37.042717, 27.662756>,  <37.561852, 37.371368, 27.600870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342400, 37.042717, 27.662756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086383, -0.128353, -0.987959,
		0.831594, -0.555384, -0.000557,
		-0.548625, -0.821629, 0.154714,
		37.177811, 36.796227, 27.709169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889503, 36.976997, 27.147602>,  <37.561852, 37.371368, 27.600870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889503, 36.976997, 27.147602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538994, 36.812370, 27.247816>,  <37.328690, 36.713596, 27.307943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538994, 36.812370, 27.247816>,  <37.889503, 36.976997, 27.147602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538994, 36.812370, 27.247816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273845, -0.002414, -0.961771,
		0.396434, -0.911378, -0.110589,
		-0.876270, -0.411563, 0.250534,
		37.276112, 36.688900, 27.322977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827206, 36.271130, 26.861290>,  <37.889503, 36.976997, 27.147602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827206, 36.271130, 26.861290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462715, 36.427032, 26.914589>,  <37.244022, 36.520576, 26.946568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462715, 36.427032, 26.914589>,  <37.827206, 36.271130, 26.861290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462715, 36.427032, 26.914589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152701, -0.019210, -0.988086,
		-0.382558, -0.920716, 0.077021,
		-0.911226, 0.389761, 0.133245,
		37.189346, 36.543961, 26.954563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484631, 35.983585, 26.268003>,  <37.827206, 36.271130, 26.861290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484631, 35.983585, 26.268003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260925, 36.284134, 26.408100>,  <37.126701, 36.464462, 26.492159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.260925, 36.284134, 26.408100>,  <37.484631, 35.983585, 26.268003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260925, 36.284134, 26.408100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315688, 0.197627, -0.928054,
		-0.766527, -0.629596, 0.126672,
		-0.559265, 0.751367, 0.350242,
		37.093147, 36.509544, 26.513172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701199, 35.873787, 26.132797>,  <37.484631, 35.983585, 26.268003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701199, 35.873787, 26.132797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.817448, 36.255211, 26.164457>,  <36.887199, 36.484066, 26.183453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.817448, 36.255211, 26.164457>,  <36.701199, 35.873787, 26.132797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817448, 36.255211, 26.164457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410071, 0.198865, -0.890109,
		-0.864511, 0.226232, 0.448821,
		0.290626, 0.953558, 0.079150,
		36.904636, 36.541279, 26.188202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.922005, 36.037823, 25.646824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187748, 36.316994, 25.753805>,  <36.347195, 36.484497, 25.817995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187748, 36.316994, 25.753805>,  <35.922005, 36.037823, 25.646824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187748, 36.316994, 25.753805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397880, 0.633164, -0.663924,
		-0.632713, 0.334666, 0.698336,
		0.664354, 0.697927, 0.267454,
		36.387054, 36.526371, 25.834042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537586, 36.625759, 25.681419>,  <35.922005, 36.037823, 25.646824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537586, 36.625759, 25.681419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917358, 36.732365, 25.615017>,  <36.145222, 36.796326, 25.575176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917358, 36.732365, 25.615017>,  <35.537586, 36.625759, 25.681419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917358, 36.732365, 25.615017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259751, 0.369659, -0.892122,
		-0.176394, 0.890126, 0.420192,
		0.949428, 0.266510, -0.166006,
		36.202187, 36.812317, 25.565216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546539, 37.407379, 25.555719>,  <35.537586, 36.625759, 25.681419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546539, 37.407379, 25.555719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861774, 37.232109, 25.382782>,  <36.050915, 37.126945, 25.279018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861774, 37.232109, 25.382782>,  <35.546539, 37.407379, 25.555719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861774, 37.232109, 25.382782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348287, 0.261718, -0.900111,
		0.507559, 0.859945, 0.053646,
		0.788087, -0.438175, -0.432345,
		36.098202, 37.100655, 25.253078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851021, 37.892822, 25.126791>,  <35.546539, 37.407379, 25.555719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851021, 37.892822, 25.126791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045845, 37.571369, 24.990002>,  <36.162739, 37.378498, 24.907928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045845, 37.571369, 24.990002>,  <35.851021, 37.892822, 25.126791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045845, 37.571369, 24.990002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173966, 0.294439, -0.939703,
		0.855867, 0.517183, 0.003604,
		0.487060, -0.803634, -0.341973,
		36.191963, 37.330280, 24.887409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271019, 38.203701, 24.541937>,  <35.851021, 37.892822, 25.126791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271019, 38.203701, 24.541937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.260387, 37.810242, 24.470684>,  <36.254009, 37.574165, 24.427933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.260387, 37.810242, 24.470684>,  <36.271019, 38.203701, 24.541937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260387, 37.810242, 24.470684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140177, 0.180104, -0.973608,
		0.989770, -0.000905, -0.142671,
		-0.026576, -0.983647, -0.178134,
		36.252415, 37.515148, 24.417244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718239, 38.078781, 23.972794>,  <36.271019, 38.203701, 24.541937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718239, 38.078781, 23.972794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445805, 37.787018, 23.998365>,  <36.282345, 37.611961, 24.013708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445805, 37.787018, 23.998365>,  <36.718239, 38.078781, 23.972794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445805, 37.787018, 23.998365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293361, 0.191840, -0.936556,
		0.670866, -0.656629, -0.344639,
		-0.681086, -0.729408, 0.063930,
		36.241478, 37.568195, 24.017544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820702, 37.779926, 23.404459>,  <36.718239, 38.078781, 23.972794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820702, 37.779926, 23.404459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.458542, 37.640923, 23.502016>,  <36.241245, 37.557518, 23.560551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.458542, 37.640923, 23.502016>,  <36.820702, 37.779926, 23.404459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458542, 37.640923, 23.502016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315955, 0.167805, -0.933817,
		0.283590, -0.922537, -0.261730,
		-0.905400, -0.347516, 0.243893,
		36.186920, 37.536667, 23.575184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661720, 37.295223, 22.930016>,  <36.820702, 37.779926, 23.404459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661720, 37.295223, 22.930016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300797, 37.378201, 23.081177>,  <36.084244, 37.427986, 23.171873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300797, 37.378201, 23.081177>,  <36.661720, 37.295223, 22.930016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300797, 37.378201, 23.081177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340706, 0.193934, -0.919951,
		-0.264130, -0.958830, -0.104309,
		-0.902305, 0.207448, 0.377903,
		36.030106, 37.440434, 23.194548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179249, 36.861198, 22.672150>,  <36.661720, 37.295223, 22.930016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179249, 36.861198, 22.672150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.968849, 37.187038, 22.769926>,  <35.842609, 37.382542, 22.828592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.968849, 37.187038, 22.769926>,  <36.179249, 36.861198, 22.672150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968849, 37.187038, 22.769926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231976, 0.139099, -0.962725,
		-0.818235, -0.563100, 0.115800,
		-0.526002, 0.814598, 0.244441,
		35.811047, 37.431419, 22.843258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531429, 36.786427, 22.263319>,  <36.179249, 36.861198, 22.672150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531429, 36.786427, 22.263319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536663, 37.171619, 22.371012>,  <35.539803, 37.402737, 22.435627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536663, 37.171619, 22.371012>,  <35.531429, 36.786427, 22.263319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536663, 37.171619, 22.371012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236982, 0.264572, -0.934795,
		-0.971426, -0.051569, 0.231673,
		0.013088, 0.962986, 0.269233,
		35.540588, 37.460514, 22.451782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869953, 37.100384, 21.994116>,  <35.531429, 36.786427, 22.263319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869953, 37.100384, 21.994116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.109814, 37.412785, 22.063932>,  <35.253731, 37.600224, 22.105824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.109814, 37.412785, 22.063932>,  <34.869953, 37.100384, 21.994116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109814, 37.412785, 22.063932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265071, 0.399633, -0.877514,
		-0.755090, 0.479933, 0.446659,
		0.599648, 0.780998, 0.174543,
		35.289707, 37.647083, 22.116295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570026, 37.589500, 21.606762>,  <34.869953, 37.100384, 21.994116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570026, 37.589500, 21.606762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943356, 37.720455, 21.665720>,  <35.167355, 37.799026, 21.701096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943356, 37.720455, 21.665720>,  <34.570026, 37.589500, 21.606762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943356, 37.720455, 21.665720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001872, 0.406085, -0.913834,
		-0.359033, 0.853178, 0.378395,
		0.933323, 0.327388, 0.147395,
		35.223351, 37.818672, 21.709938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549171, 38.204411, 21.283674>,  <34.570026, 37.589500, 21.606762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549171, 38.204411, 21.283674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945007, 38.149082, 21.299538>,  <35.182510, 38.115883, 21.309055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945007, 38.149082, 21.299538>,  <34.549171, 38.204411, 21.283674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945007, 38.149082, 21.299538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086136, 0.348663, -0.933282,
		0.115268, 0.926985, 0.356949,
		0.989593, -0.138323, 0.039657,
		35.241886, 38.107586, 21.311434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778126, 38.820431, 21.032169>,  <34.549171, 38.204411, 21.283674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778126, 38.820431, 21.032169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073162, 38.553951, 20.988092>,  <35.250183, 38.394066, 20.961647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073162, 38.553951, 20.988092>,  <34.778126, 38.820431, 21.032169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073162, 38.553951, 20.988092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132418, 0.302722, -0.943835,
		0.662137, 0.681573, 0.311502,
		0.737591, -0.666197, -0.110191,
		35.294437, 38.354092, 20.955034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323040, 39.254120, 20.813591>,  <34.778126, 38.820431, 21.032169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323040, 39.254120, 20.813591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423183, 38.880356, 20.712248>,  <35.483269, 38.656097, 20.651442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423183, 38.880356, 20.712248>,  <35.323040, 39.254120, 20.813591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423183, 38.880356, 20.712248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010447, 0.264283, -0.964389,
		0.968097, 0.238797, 0.075927,
		0.250359, -0.934415, -0.253357,
		35.498291, 38.600033, 20.636240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990688, 39.283516, 20.481321>,  <35.323040, 39.254120, 20.813591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990688, 39.283516, 20.481321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804504, 38.957737, 20.342743>,  <35.692795, 38.762272, 20.259596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804504, 38.957737, 20.342743>,  <35.990688, 39.283516, 20.481321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804504, 38.957737, 20.342743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284689, 0.232862, -0.929907,
		0.838034, -0.531463, 0.123476,
		-0.465459, -0.814446, -0.346448,
		35.664867, 38.713402, 20.238808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339390, 39.146820, 19.948559>,  <35.990688, 39.283516, 20.481321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339390, 39.146820, 19.948559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033932, 38.904537, 19.859150>,  <35.850658, 38.759167, 19.805504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033932, 38.904537, 19.859150>,  <36.339390, 39.146820, 19.948559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033932, 38.904537, 19.859150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046136, 0.294124, -0.954653,
		0.643986, -0.739328, -0.196661,
		-0.763645, -0.605710, -0.223522,
		35.804840, 38.722824, 19.792093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592102, 38.851265, 19.320221>,  <36.339390, 39.146820, 19.948559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592102, 38.851265, 19.320221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194351, 38.810230, 19.330732>,  <35.955700, 38.785610, 19.337040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194351, 38.810230, 19.330732>,  <36.592102, 38.851265, 19.320221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194351, 38.810230, 19.330732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035847, 0.092551, -0.995063,
		0.099688, -0.990405, -0.095709,
		-0.994373, -0.102626, 0.026276,
		35.896038, 38.779453, 19.338617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539829, 38.295757, 18.779768>,  <36.592102, 38.851265, 19.320221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539829, 38.295757, 18.779768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207588, 38.509842, 18.841278>,  <36.008244, 38.638294, 18.878183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207588, 38.509842, 18.841278>,  <36.539829, 38.295757, 18.779768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207588, 38.509842, 18.841278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035265, 0.225035, -0.973712,
		-0.555749, -0.814190, -0.168040,
		-0.830602, 0.535214, 0.153775,
		35.958408, 38.670406, 18.887411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097588, 38.200771, 18.245634>,  <36.539829, 38.295757, 18.779768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097588, 38.200771, 18.245634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936508, 38.532272, 18.401073>,  <35.839859, 38.731171, 18.494337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936508, 38.532272, 18.401073>,  <36.097588, 38.200771, 18.245634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936508, 38.532272, 18.401073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051617, 0.403308, -0.913607,
		-0.913875, -0.387968, -0.119635,
		-0.402700, 0.828748, 0.388599,
		35.815697, 38.780895, 18.517653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416630, 38.426678, 17.756073>,  <36.097588, 38.200771, 18.245634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416630, 38.426678, 17.756073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555157, 38.755501, 17.936865>,  <35.638271, 38.952793, 18.045340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555157, 38.755501, 17.936865>,  <35.416630, 38.426678, 17.756073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555157, 38.755501, 17.936865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018236, 0.475806, -0.879361,
		-0.937940, 0.312779, 0.149789,
		0.346316, 0.822057, 0.451981,
		35.659050, 39.002117, 18.072460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048622, 39.009037, 17.444845>,  <35.416630, 38.426678, 17.756073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048622, 39.009037, 17.444845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357800, 39.205284, 17.605768>,  <35.543304, 39.323032, 17.702322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357800, 39.205284, 17.605768>,  <35.048622, 39.009037, 17.444845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357800, 39.205284, 17.605768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169558, 0.451292, -0.876120,
		-0.611402, 0.745404, 0.265633,
		0.772941, 0.490621, 0.402310,
		35.589684, 39.352470, 17.726461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010040, 39.723724, 17.188036>,  <35.048622, 39.009037, 17.444845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010040, 39.723724, 17.188036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396561, 39.676193, 17.279379>,  <35.628471, 39.647675, 17.334185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396561, 39.676193, 17.279379>,  <35.010040, 39.723724, 17.188036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396561, 39.676193, 17.279379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257335, 0.469412, -0.844649,
		-0.006823, 0.874947, 0.484171,
		0.966298, -0.118831, 0.228357,
		35.686451, 39.640545, 17.347885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373631, 39.949699, 17.377220>,  <35.010040, 39.723724, 17.188036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373631, 39.949699, 17.377220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042400, 40.168785, 17.329376>,  <33.843662, 40.300236, 17.300671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042400, 40.168785, 17.329376>,  <34.373631, 39.949699, 17.377220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042400, 40.168785, 17.329376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386872, -0.403871, 0.828986,
		0.405739, 0.732734, 0.546330,
		-0.828073, 0.547712, -0.119608,
		33.793980, 40.333099, 17.293493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157082, 40.486130, 17.946321>,  <34.373631, 39.949699, 17.377220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157082, 40.486130, 17.946321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839844, 40.353519, 17.741936>,  <33.649498, 40.273952, 17.619305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839844, 40.353519, 17.741936>,  <34.157082, 40.486130, 17.946321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839844, 40.353519, 17.741936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444278, -0.258995, 0.857635,
		-0.416666, 0.907200, 0.058119,
		-0.793099, -0.331527, -0.510963,
		33.601913, 40.254063, 17.588646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587208, 40.821915, 18.253504>,  <34.157082, 40.486130, 17.946321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587208, 40.821915, 18.253504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458248, 40.489372, 18.072435>,  <33.380875, 40.289848, 17.963795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458248, 40.489372, 18.072435>,  <33.587208, 40.821915, 18.253504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458248, 40.489372, 18.072435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383104, -0.322701, 0.865503,
		-0.865617, 0.452456, -0.214457,
		-0.322396, -0.831353, -0.452673,
		33.361530, 40.239967, 17.936634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840065, 40.725742, 18.420753>,  <33.587208, 40.821915, 18.253504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840065, 40.725742, 18.420753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002827, 40.374989, 18.318382>,  <33.100483, 40.164536, 18.256960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002827, 40.374989, 18.318382>,  <32.840065, 40.725742, 18.420753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002827, 40.374989, 18.318382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397870, -0.422331, 0.814455,
		-0.822269, -0.229582, -0.520735,
		0.406906, -0.876886, -0.255926,
		33.124897, 40.111923, 18.241604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298843, 40.179714, 18.597321>,  <32.840065, 40.725742, 18.420753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298843, 40.179714, 18.597321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650303, 39.991829, 18.563021>,  <32.861179, 39.879097, 18.542440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650303, 39.991829, 18.563021>,  <32.298843, 40.179714, 18.597321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650303, 39.991829, 18.563021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212045, -0.544774, 0.811332,
		-0.427806, -0.694690, -0.578263,
		0.878647, -0.469710, -0.085752,
		32.913898, 39.850918, 18.537296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111141, 39.458035, 18.726360>,  <32.298843, 40.179714, 18.597321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111141, 39.458035, 18.726360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.508556, 39.456581, 18.771742>,  <32.747005, 39.455711, 18.798971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.508556, 39.456581, 18.771742>,  <32.111141, 39.458035, 18.726360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508556, 39.456581, 18.771742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099871, -0.502991, 0.858502,
		0.053949, -0.864284, -0.500103,
		0.993537, -0.003631, 0.113453,
		32.806618, 39.455490, 18.805779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218697, 38.799164, 18.835632>,  <32.111141, 39.458035, 18.726360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218697, 38.799164, 18.835632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.540783, 38.983002, 18.985512>,  <32.734035, 39.093304, 19.075439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.540783, 38.983002, 18.985512>,  <32.218697, 38.799164, 18.835632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540783, 38.983002, 18.985512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045438, -0.582213, 0.811765,
		0.591234, -0.670674, -0.447926,
		0.805219, 0.459590, 0.374699,
		32.782349, 39.120880, 19.097921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712467, 38.323376, 19.142414>,  <32.218697, 38.799164, 18.835632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712467, 38.323376, 19.142414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841446, 38.643120, 19.345213>,  <32.918835, 38.834969, 19.466892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841446, 38.643120, 19.345213>,  <32.712467, 38.323376, 19.142414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841446, 38.643120, 19.345213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043708, -0.547609, 0.835592,
		0.945577, -0.247276, -0.211514,
		0.322449, 0.799362, 0.506998,
		32.938179, 38.882927, 19.497313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234032, 38.101295, 19.521477>,  <32.712467, 38.323376, 19.142414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234032, 38.101295, 19.521477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.153206, 38.437283, 19.722921>,  <33.104710, 38.638874, 19.843788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.153206, 38.437283, 19.722921>,  <33.234032, 38.101295, 19.521477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153206, 38.437283, 19.722921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231211, -0.458770, 0.857946,
		0.951688, 0.289805, -0.101506,
		-0.202069, 0.839966, 0.503612,
		33.092587, 38.689274, 19.874004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733795, 38.213371, 19.966719>,  <33.234032, 38.101295, 19.521477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733795, 38.213371, 19.966719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.433475, 38.426682, 20.122625>,  <33.253284, 38.554668, 20.216169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.433475, 38.426682, 20.122625>,  <33.733795, 38.213371, 19.966719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433475, 38.426682, 20.122625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114212, -0.476383, 0.871788,
		0.650583, 0.699053, 0.296760,
		-0.750798, 0.533277, 0.389767,
		33.208237, 38.586666, 20.239555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961182, 38.327553, 20.601587>,  <33.733795, 38.213371, 19.966719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961182, 38.327553, 20.601587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.567043, 38.394585, 20.614275>,  <33.330559, 38.434803, 20.621887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.567043, 38.394585, 20.614275>,  <33.961182, 38.327553, 20.601587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567043, 38.394585, 20.614275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009018, -0.236909, 0.971490,
		0.170316, 0.956970, 0.234949,
		-0.985348, 0.167579, 0.031719,
		33.271439, 38.444859, 20.623791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900536, 38.742203, 21.185633>,  <33.961182, 38.327553, 20.601587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900536, 38.742203, 21.185633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537148, 38.583519, 21.133007>,  <33.319115, 38.488308, 21.101431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537148, 38.583519, 21.133007>,  <33.900536, 38.742203, 21.185633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537148, 38.583519, 21.133007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013085, -0.287627, 0.957653,
		-0.417755, 0.871716, 0.256108,
		-0.908465, -0.396714, -0.131564,
		33.264606, 38.464504, 21.093538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497536, 39.039032, 21.800310>,  <33.900536, 38.742203, 21.185633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497536, 39.039032, 21.800310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.302536, 38.727703, 21.642040>,  <33.185535, 38.540905, 21.547079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.302536, 38.727703, 21.642040>,  <33.497536, 39.039032, 21.800310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302536, 38.727703, 21.642040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160407, -0.365620, 0.916837,
		-0.858260, 0.510429, 0.053393,
		-0.487502, -0.778321, -0.395674,
		33.156284, 38.494205, 21.523338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846123, 38.942669, 22.207638>,  <33.497536, 39.039032, 21.800310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846123, 38.942669, 22.207638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932800, 38.593548, 22.032703>,  <32.984806, 38.384075, 21.927742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932800, 38.593548, 22.032703>,  <32.846123, 38.942669, 22.207638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932800, 38.593548, 22.032703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086198, -0.463338, 0.881980,
		-0.972426, -0.153423, -0.175637,
		0.216695, -0.872800, -0.437337,
		32.997810, 38.331707, 21.901503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485039, 38.520355, 22.613762>,  <32.846123, 38.942669, 22.207638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485039, 38.520355, 22.613762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740173, 38.268261, 22.436687>,  <32.893253, 38.117004, 22.330442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740173, 38.268261, 22.436687>,  <32.485039, 38.520355, 22.613762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740173, 38.268261, 22.436687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140522, -0.469905, 0.871460,
		-0.757248, -0.618052, -0.211157,
		0.637831, -0.630239, -0.442685,
		32.931522, 38.079189, 22.303883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508347, 37.939968, 23.030033>,  <32.485039, 38.520355, 22.613762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508347, 37.939968, 23.030033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807102, 37.828339, 22.788612>,  <32.986355, 37.761360, 22.643761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807102, 37.828339, 22.788612>,  <32.508347, 37.939968, 23.030033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807102, 37.828339, 22.788612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351500, -0.604784, 0.714622,
		-0.564446, -0.745893, -0.353615,
		0.746892, -0.279070, -0.603549,
		33.031170, 37.744617, 22.607548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458569, 37.207111, 22.809448>,  <32.508347, 37.939968, 23.030033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458569, 37.207111, 22.809448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818493, 37.375980, 22.853470>,  <33.034447, 37.477303, 22.879883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818493, 37.375980, 22.853470>,  <32.458569, 37.207111, 22.809448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818493, 37.375980, 22.853470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159430, -0.552992, 0.817791,
		0.406108, -0.718310, -0.564895,
		0.899810, 0.422173, 0.110055,
		33.088436, 37.502632, 22.886486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874611, 36.677311, 23.013983>,  <32.458569, 37.207111, 22.809448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874611, 36.677311, 23.013983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127102, 36.967903, 23.122629>,  <33.278599, 37.142258, 23.187817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127102, 36.967903, 23.122629>,  <32.874611, 36.677311, 23.013983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127102, 36.967903, 23.122629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323378, -0.564832, 0.759204,
		0.704963, -0.391399, -0.591468,
		0.631232, 0.726479, 0.271616,
		33.316471, 37.185848, 23.204113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300266, 36.334156, 23.436966>,  <32.874611, 36.677311, 23.013983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300266, 36.334156, 23.436966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424534, 36.705021, 23.520733>,  <33.499096, 36.927540, 23.570993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424534, 36.705021, 23.520733>,  <33.300266, 36.334156, 23.436966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424534, 36.705021, 23.520733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217089, -0.283705, 0.934015,
		0.925396, -0.244707, -0.289416,
		0.310669, 0.927162, 0.209416,
		33.517735, 36.983170, 23.583557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018753, 36.249935, 23.661951>,  <33.300266, 36.334156, 23.436966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018753, 36.249935, 23.661951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847336, 36.577183, 23.815332>,  <33.744488, 36.773533, 23.907362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.847336, 36.577183, 23.815332>,  <34.018753, 36.249935, 23.661951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847336, 36.577183, 23.815332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313477, -0.263408, 0.912331,
		0.847399, 0.511175, -0.143580,
		-0.428540, 0.818118, 0.383454,
		33.718773, 36.822617, 23.930368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499584, 36.536671, 24.133564>,  <34.018753, 36.249935, 23.661951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499584, 36.536671, 24.133564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164410, 36.713062, 24.262182>,  <33.963303, 36.818897, 24.339354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164410, 36.713062, 24.262182>,  <34.499584, 36.536671, 24.133564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164410, 36.713062, 24.262182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368388, 0.022319, 0.929404,
		0.402674, 0.897238, -0.181154,
		-0.837940, 0.440982, 0.321544,
		33.913029, 36.845356, 24.358646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.032516, 35.941879, 28.149576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.737076, 36.188076, 28.259592>,  <37.559811, 36.335793, 28.325602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.737076, 36.188076, 28.259592>,  <38.032516, 35.941879, 28.149576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737076, 36.188076, 28.259592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442252, 0.134449, 0.886756,
		0.508808, 0.776594, -0.371505,
		-0.738598, 0.615488, 0.275042,
		37.515495, 36.372723, 28.342104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360443, 36.449017, 28.569649>,  <38.032516, 35.941879, 28.149576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360443, 36.449017, 28.569649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974461, 36.514225, 28.651892>,  <37.742870, 36.553352, 28.701237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974461, 36.514225, 28.651892>,  <38.360443, 36.449017, 28.569649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974461, 36.514225, 28.651892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232438, 0.167509, 0.958078,
		0.121748, 0.972298, -0.199533,
		-0.964961, 0.163023, 0.205606,
		37.684971, 36.563133, 28.713573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312618, 37.079685, 29.073975>,  <38.360443, 36.449017, 28.569649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312618, 37.079685, 29.073975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.973343, 36.875404, 29.130199>,  <37.769779, 36.752834, 29.163935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.973343, 36.875404, 29.130199>,  <38.312618, 37.079685, 29.073975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973343, 36.875404, 29.130199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059173, 0.172353, 0.983256,
		-0.526378, 0.842305, -0.115968,
		-0.848189, -0.510702, 0.140564,
		37.718887, 36.722195, 29.172369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760799, 37.574558, 29.396566>,  <38.312618, 37.079685, 29.073975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760799, 37.574558, 29.396566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.707146, 37.189766, 29.491730>,  <37.674953, 36.958889, 29.548828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.707146, 37.189766, 29.491730>,  <37.760799, 37.574558, 29.396566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707146, 37.189766, 29.491730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091630, 0.251091, 0.963617,
		-0.986717, 0.107457, -0.121827,
		-0.134137, -0.961980, 0.237910,
		37.666904, 36.901173, 29.563103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518703, 37.701340, 30.080553>,  <37.760799, 37.574558, 29.396566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518703, 37.701340, 30.080553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503269, 37.302044, 30.062504>,  <37.494011, 37.062466, 30.051674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503269, 37.302044, 30.062504>,  <37.518703, 37.701340, 30.080553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503269, 37.302044, 30.062504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040069, -0.043575, 0.998246,
		-0.998452, 0.040323, -0.038317,
		-0.038582, -0.998236, -0.045123,
		37.491695, 37.002575, 30.048967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957077, 37.470718, 30.411152>,  <37.518703, 37.701340, 30.080553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957077, 37.470718, 30.411152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.226711, 37.175415, 30.401508>,  <37.388493, 36.998234, 30.395721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.226711, 37.175415, 30.401508>,  <36.957077, 37.470718, 30.411152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226711, 37.175415, 30.401508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021986, -0.052679, 0.998369,
		-0.738323, -0.672460, -0.051742,
		0.674089, -0.738257, -0.024109,
		37.428940, 36.953938, 30.394276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687836, 36.942650, 30.878780>,  <36.957077, 37.470718, 30.411152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687836, 36.942650, 30.878780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.077946, 36.882702, 30.813820>,  <37.312012, 36.846733, 30.774843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.077946, 36.882702, 30.813820>,  <36.687836, 36.942650, 30.878780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077946, 36.882702, 30.813820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180798, 0.118571, 0.976347,
		-0.127065, -0.981571, 0.142735,
		0.975278, -0.149866, -0.162400,
		37.370529, 36.837742, 30.765100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883961, 36.622196, 31.456165>,  <36.687836, 36.942650, 30.878780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883961, 36.622196, 31.456165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230972, 36.749649, 31.303396>,  <37.439178, 36.826122, 31.211735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230972, 36.749649, 31.303396>,  <36.883961, 36.622196, 31.456165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230972, 36.749649, 31.303396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350576, 0.152977, 0.923956,
		0.352832, -0.935451, 0.021005,
		0.867529, 0.318637, -0.381921,
		37.491230, 36.845242, 31.188820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342289, 36.312080, 31.787445>,  <36.883961, 36.622196, 31.456165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342289, 36.312080, 31.787445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.544975, 36.625591, 31.643818>,  <37.666588, 36.813698, 31.557642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.544975, 36.625591, 31.643818>,  <37.342289, 36.312080, 31.787445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544975, 36.625591, 31.643818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415142, 0.143196, 0.898417,
		0.755575, -0.604309, -0.252818,
		0.506718, 0.783777, -0.359069,
		37.696991, 36.860725, 31.536097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976330, 36.281883, 32.059784>,  <37.342289, 36.312080, 31.787445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976330, 36.281883, 32.059784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965057, 36.665295, 31.946348>,  <37.958294, 36.895344, 31.878288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965057, 36.665295, 31.946348>,  <37.976330, 36.281883, 32.059784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965057, 36.665295, 31.946348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498896, 0.259327, 0.826953,
		0.866203, -0.118173, -0.485517,
		-0.028184, 0.958533, -0.283586,
		37.956604, 36.952854, 31.861273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636051, 36.653713, 32.096741>,  <37.976330, 36.281883, 32.059784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636051, 36.653713, 32.096741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.356640, 36.934875, 32.150379>,  <38.188992, 37.103573, 32.182564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.356640, 36.934875, 32.150379>,  <38.636051, 36.653713, 32.096741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356640, 36.934875, 32.150379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482618, 0.324418, 0.813531,
		0.528331, 0.632994, -0.565850,
		-0.698531, 0.702903, 0.134095,
		38.147079, 37.145748, 32.190609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062252, 37.191612, 32.284283>,  <38.636051, 36.653713, 32.096741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062252, 37.191612, 32.284283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686909, 37.290585, 32.380825>,  <38.461700, 37.349968, 32.438751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686909, 37.290585, 32.380825>,  <39.062252, 37.191612, 32.284283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686909, 37.290585, 32.380825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296949, 0.219670, 0.929283,
		0.176917, 0.943674, -0.279605,
		-0.938361, 0.247435, 0.241360,
		38.405399, 37.364815, 32.453232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076103, 37.758171, 32.739235>,  <39.062252, 37.191612, 32.284283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076103, 37.758171, 32.739235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.751450, 37.535778, 32.810936>,  <38.556656, 37.402344, 32.853958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.751450, 37.535778, 32.810936>,  <39.076103, 37.758171, 32.739235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751450, 37.535778, 32.810936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079338, 0.199102, 0.976762,
		-0.578753, 0.806996, -0.117487,
		-0.811635, -0.555983, 0.179256,
		38.507957, 37.368984, 32.864712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706242, 38.166206, 33.084423>,  <39.076103, 37.758171, 32.739235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706242, 38.166206, 33.084423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.612560, 37.791386, 33.188030>,  <38.556351, 37.566494, 33.250195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.612560, 37.791386, 33.188030>,  <38.706242, 38.166206, 33.084423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612560, 37.791386, 33.188030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048686, 0.254785, 0.965771,
		-0.970968, 0.238798, -0.014051,
		-0.234204, -0.937049, 0.259014,
		38.542297, 37.510269, 33.265736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804592, 38.706299, 33.722919>,  <38.706242, 38.166206, 33.084423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804592, 38.706299, 33.722919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669624, 38.995674, 33.963844>,  <38.588642, 39.169300, 34.108398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669624, 38.995674, 33.963844>,  <38.804592, 38.706299, 33.722919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669624, 38.995674, 33.963844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569277, 0.352765, -0.742618,
		-0.749714, -0.593459, 0.292806,
		-0.337422, 0.723439, 0.602315,
		38.568398, 39.212708, 34.144539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177082, 38.722832, 33.573048>,  <38.804592, 38.706299, 33.722919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177082, 38.722832, 33.573048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225113, 39.082272, 33.741856>,  <38.253933, 39.297935, 33.843140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225113, 39.082272, 33.741856>,  <38.177082, 38.722832, 33.573048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225113, 39.082272, 33.741856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644332, 0.393938, -0.655476,
		-0.755260, -0.193210, 0.626301,
		0.120079, 0.898600, 0.422017,
		38.261135, 39.351852, 33.868462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499855, 39.070522, 33.393597>,  <38.177082, 38.722832, 33.573048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499855, 39.070522, 33.393597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.746655, 39.366119, 33.501820>,  <37.894733, 39.543480, 33.566753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.746655, 39.366119, 33.501820>,  <37.499855, 39.070522, 33.393597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746655, 39.366119, 33.501820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332411, 0.556355, -0.761559,
		-0.713317, 0.379941, 0.588918,
		0.616995, 0.738995, 0.270561,
		37.931751, 39.587818, 33.582989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060432, 39.655201, 33.267632>,  <37.499855, 39.070522, 33.393597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060432, 39.655201, 33.267632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440895, 39.777958, 33.254223>,  <37.669170, 39.851612, 33.246178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440895, 39.777958, 33.254223>,  <37.060432, 39.655201, 33.267632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440895, 39.777958, 33.254223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242388, 0.675111, -0.696759,
		-0.191201, 0.670850, 0.716522,
		0.951152, 0.306897, -0.033524,
		37.726242, 39.870026, 33.244167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105824, 40.470657, 33.224018>,  <37.060432, 39.655201, 33.267632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105824, 40.470657, 33.224018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461590, 40.342644, 33.093468>,  <37.675049, 40.265835, 33.015137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461590, 40.342644, 33.093468>,  <37.105824, 40.470657, 33.224018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461590, 40.342644, 33.093468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021180, 0.684388, -0.728810,
		0.456617, 0.655125, 0.601924,
		0.889411, -0.320039, -0.326379,
		37.728413, 40.246632, 32.995556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481419, 41.083263, 33.187042>,  <37.105824, 40.470657, 33.224018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481419, 41.083263, 33.187042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671303, 40.812737, 32.961742>,  <37.785233, 40.650421, 32.826565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671303, 40.812737, 32.961742>,  <37.481419, 41.083263, 33.187042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671303, 40.812737, 32.961742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038753, 0.623267, -0.781048,
		0.879291, 0.392596, 0.269659,
		0.474706, -0.676318, -0.563248,
		37.813713, 40.609840, 32.792767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073448, 41.395939, 32.855995>,  <37.481419, 41.083263, 33.187042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073448, 41.395939, 32.855995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982052, 41.088531, 32.616940>,  <37.927216, 40.904087, 32.473507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982052, 41.088531, 32.616940>,  <38.073448, 41.395939, 32.855995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982052, 41.088531, 32.616940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075080, 0.625961, -0.776232,
		0.970647, -0.132490, -0.200726,
		-0.228490, -0.768517, -0.597639,
		37.913506, 40.857975, 32.437649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421959, 41.561871, 32.320133>,  <38.073448, 41.395939, 32.855995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421959, 41.561871, 32.320133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187431, 41.278328, 32.163288>,  <38.046715, 41.108200, 32.069180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187431, 41.278328, 32.163288>,  <38.421959, 41.561871, 32.320133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187431, 41.278328, 32.163288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131666, 0.394213, -0.909538,
		0.799311, -0.584904, -0.137800,
		-0.586315, -0.708861, -0.392111,
		38.011536, 41.065670, 32.045654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593536, 41.501312, 31.620228>,  <38.421959, 41.561871, 32.320133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593536, 41.501312, 31.620228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231281, 41.331699, 31.621666>,  <38.013927, 41.229931, 31.622530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231281, 41.331699, 31.621666>,  <38.593536, 41.501312, 31.620228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231281, 41.331699, 31.621666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106465, 0.219158, -0.969864,
		0.410468, -0.878729, -0.243622,
		-0.905639, -0.424035, 0.003596,
		37.959591, 41.204491, 31.622746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525661, 41.170746, 30.967037>,  <38.593536, 41.501312, 31.620228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525661, 41.170746, 30.967037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.144676, 41.204689, 31.084080>,  <37.916084, 41.225056, 31.154305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.144676, 41.204689, 31.084080>,  <38.525661, 41.170746, 30.967037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144676, 41.204689, 31.084080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290681, 0.034490, -0.956198,
		-0.091234, -0.995796, -0.008184,
		-0.952461, 0.084859, 0.292605,
		37.858936, 41.230145, 31.171862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098385, 40.574154, 30.649124>,  <38.525661, 41.170746, 30.967037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098385, 40.574154, 30.649124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817284, 40.844749, 30.737213>,  <37.648621, 41.007107, 30.790066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817284, 40.844749, 30.737213>,  <38.098385, 40.574154, 30.649124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817284, 40.844749, 30.737213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338876, -0.046128, -0.939699,
		-0.625538, -0.735006, 0.261663,
		-0.702755, 0.676489, 0.220222,
		37.606457, 41.047695, 30.803280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448586, 40.250584, 30.390961>,  <38.098385, 40.574154, 30.649124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448586, 40.250584, 30.390961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.448513, 40.649422, 30.421417>,  <37.448471, 40.888725, 30.439692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.448513, 40.649422, 30.421417>,  <37.448586, 40.250584, 30.390961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448513, 40.649422, 30.421417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364678, 0.070833, -0.928435,
		-0.931134, -0.027936, 0.363607,
		-0.000182, 0.997097, 0.076143,
		37.448460, 40.948551, 30.444260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795650, 40.600998, 30.104935>,  <37.448586, 40.250584, 30.390961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795650, 40.600998, 30.104935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080505, 40.880436, 30.077150>,  <37.251419, 41.048100, 30.060480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080505, 40.880436, 30.077150>,  <36.795650, 40.600998, 30.104935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080505, 40.880436, 30.077150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246131, 0.155788, -0.956635,
		-0.657479, 0.698352, 0.282888,
		0.712138, 0.698595, -0.069459,
		37.294147, 41.090015, 30.056313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661026, 40.948929, 29.430489>,  <36.795650, 40.600998, 30.104935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661026, 40.948929, 29.430489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977585, 41.161907, 29.550613>,  <37.167522, 41.289696, 29.622688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.977585, 41.161907, 29.550613>,  <36.661026, 40.948929, 29.430489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977585, 41.161907, 29.550613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185884, 0.258400, -0.947985,
		-0.582353, 0.806058, 0.105524,
		0.791399, 0.532447, 0.300313,
		37.215004, 41.321640, 29.640707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095989, 41.471626, 29.465984>,  <36.661026, 40.948929, 29.430489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095989, 41.471626, 29.465984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.704227, 41.417992, 29.405594>,  <35.469170, 41.385811, 29.369360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.704227, 41.417992, 29.405594>,  <36.095989, 41.471626, 29.465984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704227, 41.417992, 29.405594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108767, -0.279618, 0.953931,
		-0.170124, 0.950702, 0.259274,
		-0.979402, -0.134086, -0.150975,
		35.410408, 41.377766, 29.360302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694702, 41.763561, 30.120579>,  <36.095989, 41.471626, 29.465984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694702, 41.763561, 30.120579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469734, 41.477417, 29.954716>,  <35.334755, 41.305729, 29.855198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469734, 41.477417, 29.954716>,  <35.694702, 41.763561, 30.120579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469734, 41.477417, 29.954716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230011, -0.346338, 0.909475,
		-0.794217, 0.606882, 0.030245,
		-0.562419, -0.715363, -0.414657,
		35.301010, 41.262810, 29.830318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113064, 41.844475, 30.510698>,  <35.694702, 41.763561, 30.120579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113064, 41.844475, 30.510698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067112, 41.491467, 30.328285>,  <35.039539, 41.279663, 30.218838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067112, 41.491467, 30.328285>,  <35.113064, 41.844475, 30.510698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067112, 41.491467, 30.328285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344298, -0.395244, 0.851611,
		-0.931806, 0.254843, -0.258444,
		-0.114879, -0.882518, -0.456033,
		35.032650, 41.226711, 30.191475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465603, 41.556538, 30.808247>,  <35.113064, 41.844475, 30.510698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465603, 41.556538, 30.808247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.657742, 41.240883, 30.655130>,  <34.773026, 41.051491, 30.563261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.657742, 41.240883, 30.655130>,  <34.465603, 41.556538, 30.808247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657742, 41.240883, 30.655130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214396, -0.528842, 0.821194,
		-0.850470, -0.312391, -0.423216,
		0.480349, -0.789137, -0.382789,
		34.801846, 41.004143, 30.540293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060314, 40.976486, 30.962620>,  <34.465603, 41.556538, 30.808247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060314, 40.976486, 30.962620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.416985, 40.814972, 30.880777>,  <34.630989, 40.718063, 30.831671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.416985, 40.814972, 30.880777>,  <34.060314, 40.976486, 30.962620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416985, 40.814972, 30.880777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120505, -0.647431, 0.752537,
		-0.436336, -0.646365, -0.625959,
		0.891678, -0.403790, -0.204607,
		34.684486, 40.693836, 30.819395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961872, 40.275677, 31.048967>,  <34.060314, 40.976486, 30.962620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961872, 40.275677, 31.048967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.356010, 40.339638, 31.072708>,  <34.592495, 40.378014, 31.086952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.356010, 40.339638, 31.072708>,  <33.961872, 40.275677, 31.048967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356010, 40.339638, 31.072708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040223, -0.556008, 0.830203,
		0.165753, -0.815651, -0.554292,
		0.985347, 0.159904, 0.059352,
		34.651615, 40.387608, 31.090513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244743, 39.661324, 31.210957>,  <33.961872, 40.275677, 31.048967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244743, 39.661324, 31.210957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.550568, 39.896778, 31.315985>,  <34.734062, 40.038052, 31.379002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.550568, 39.896778, 31.315985>,  <34.244743, 39.661324, 31.210957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550568, 39.896778, 31.315985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149516, -0.558235, 0.816100,
		0.626965, -0.584703, -0.514818,
		0.764565, 0.588640, 0.262571,
		34.779938, 40.073368, 31.394756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809990, 39.187931, 31.355461>,  <34.244743, 39.661324, 31.210957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809990, 39.187931, 31.355461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.864552, 39.534584, 31.547440>,  <34.897289, 39.742577, 31.662626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.864552, 39.534584, 31.547440>,  <34.809990, 39.187931, 31.355461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864552, 39.534584, 31.547440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156782, -0.497253, 0.853322,
		0.978168, -0.041151, -0.203700,
		0.136406, 0.866629, 0.479945,
		34.905472, 39.794571, 31.691423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062004, 38.987892, 32.035183>,  <34.809990, 39.187931, 31.355461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062004, 38.987892, 32.035183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.979626, 39.370255, 32.118927>,  <34.930199, 39.599670, 32.169174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.979626, 39.370255, 32.118927>,  <35.062004, 38.987892, 32.035183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979626, 39.370255, 32.118927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015074, -0.217024, 0.976050,
		0.978446, 0.197862, 0.059105,
		-0.205951, 0.955903, 0.209364,
		34.917839, 39.657024, 32.181736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572964, 39.176201, 32.556911>,  <35.062004, 38.987892, 32.035183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572964, 39.176201, 32.556911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.282143, 39.447578, 32.599072>,  <35.107651, 39.610405, 32.624367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.282143, 39.447578, 32.599072>,  <35.572964, 39.176201, 32.556911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282143, 39.447578, 32.599072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135055, -0.009196, 0.990795,
		0.673170, 0.734593, -0.084941,
		-0.727050, 0.678446, 0.105402,
		35.064026, 39.651112, 32.630692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808777, 39.565975, 33.087601>,  <35.572964, 39.176201, 32.556911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808777, 39.565975, 33.087601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.416130, 39.641502, 33.076481>,  <35.180542, 39.686821, 33.069809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.416130, 39.641502, 33.076481>,  <35.808777, 39.565975, 33.087601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416130, 39.641502, 33.076481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033336, -0.026210, 0.999100,
		0.187923, 0.981661, 0.032022,
		-0.981618, 0.188821, -0.027799,
		35.121643, 39.698151, 33.068142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795822, 39.770893, 33.679344>,  <35.808777, 39.565975, 33.087601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795822, 39.770893, 33.679344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.420742, 39.678482, 33.575542>,  <35.195694, 39.623035, 33.513260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.420742, 39.678482, 33.575542>,  <35.795822, 39.770893, 33.679344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420742, 39.678482, 33.575542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147749, -0.410864, 0.899645,
		-0.314464, 0.881940, 0.351133,
		-0.937701, -0.231026, -0.259508,
		35.139431, 39.609173, 33.497688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.893925, 43.285126, 26.109144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769684, 42.918400, 26.008762>,  <34.695141, 42.698364, 25.948532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769684, 42.918400, 26.008762>,  <34.893925, 43.285126, 26.109144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769684, 42.918400, 26.008762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118669, -0.224548, 0.967210,
		-0.943104, 0.330197, -0.039053,
		-0.310601, -0.916814, -0.250956,
		34.676502, 42.643356, 25.933475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370762, 43.249699, 26.600340>,  <34.893925, 43.285126, 26.109144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370762, 43.249699, 26.600340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426598, 42.884335, 26.447399>,  <34.460098, 42.665115, 26.355635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426598, 42.884335, 26.447399>,  <34.370762, 43.249699, 26.600340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426598, 42.884335, 26.447399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225582, -0.346646, 0.910466,
		-0.964172, -0.213342, 0.157661,
		0.139588, -0.913412, -0.382353,
		34.468475, 42.610310, 26.332693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956295, 42.802856, 26.982094>,  <34.370762, 43.249699, 26.600340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956295, 42.802856, 26.982094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251709, 42.583332, 26.825445>,  <34.428959, 42.451618, 26.731457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251709, 42.583332, 26.825445>,  <33.956295, 42.802856, 26.982094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251709, 42.583332, 26.825445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077565, -0.507838, 0.857953,
		-0.669736, -0.664007, -0.332489,
		0.738538, -0.548813, -0.391621,
		34.473270, 42.418690, 26.707958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796860, 42.184246, 27.268328>,  <33.956295, 42.802856, 26.982094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796860, 42.184246, 27.268328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180855, 42.135368, 27.167540>,  <34.411251, 42.106041, 27.107067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180855, 42.135368, 27.167540>,  <33.796860, 42.184246, 27.268328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180855, 42.135368, 27.167540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165812, -0.477067, 0.863084,
		-0.225666, -0.870331, -0.437720,
		0.959991, -0.122189, -0.251969,
		34.468853, 42.098713, 27.091949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824085, 41.493942, 27.412043>,  <33.796860, 42.184246, 27.268328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824085, 41.493942, 27.412043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182243, 41.672050, 27.411146>,  <34.397137, 41.778915, 27.410608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182243, 41.672050, 27.411146>,  <33.824085, 41.493942, 27.412043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182243, 41.672050, 27.411146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237558, -0.473430, 0.848193,
		0.376616, -0.759997, -0.529683,
		0.895392, 0.445273, -0.002242,
		34.450859, 41.805634, 27.410473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269341, 40.994713, 27.614981>,  <33.824085, 41.493942, 27.412043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269341, 40.994713, 27.614981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485283, 41.320877, 27.698563>,  <34.614849, 41.516575, 27.748711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485283, 41.320877, 27.698563>,  <34.269341, 40.994713, 27.614981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485283, 41.320877, 27.698563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232898, -0.383236, 0.893806,
		0.808899, -0.433858, -0.396799,
		0.539853, 0.815413, 0.208954,
		34.647240, 41.565502, 27.761250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786137, 40.720169, 28.014048>,  <34.269341, 40.994713, 27.614981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786137, 40.720169, 28.014048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836094, 41.110882, 28.083666>,  <34.866070, 41.345310, 28.125437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836094, 41.110882, 28.083666>,  <34.786137, 40.720169, 28.014048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836094, 41.110882, 28.083666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356870, -0.207905, 0.910724,
		0.925767, -0.051634, -0.374552,
		0.124896, 0.976785, 0.174045,
		34.873562, 41.403919, 28.135880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530888, 40.824917, 28.230822>,  <34.786137, 40.720169, 28.014048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530888, 40.824917, 28.230822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331387, 41.142719, 28.369383>,  <35.211685, 41.333401, 28.452520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331387, 41.142719, 28.369383>,  <35.530888, 40.824917, 28.230822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331387, 41.142719, 28.369383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353898, -0.178155, 0.918160,
		0.791201, 0.580529, -0.192320,
		-0.498756, 0.794511, 0.346404,
		35.181759, 41.381073, 28.473305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046776, 41.189598, 28.620314>,  <35.530888, 40.824917, 28.230822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046776, 41.189598, 28.620314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685173, 41.294922, 28.755035>,  <35.468212, 41.358116, 28.835869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685173, 41.294922, 28.755035>,  <36.046776, 41.189598, 28.620314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685173, 41.294922, 28.755035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300993, -0.167462, 0.938808,
		0.303599, 0.950065, 0.072132,
		-0.904008, 0.263310, 0.336804,
		35.413971, 41.373917, 28.856077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636688, 41.586643, 29.012733>,  <36.046776, 41.189598, 28.620314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636688, 41.586643, 29.012733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010437, 41.557781, 29.152298>,  <37.234688, 41.540462, 29.236036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010437, 41.557781, 29.152298>,  <36.636688, 41.586643, 29.012733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010437, 41.557781, 29.152298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355073, 0.269606, -0.895118,
		-0.029482, 0.960263, 0.277533,
		0.934374, -0.072155, 0.348912,
		37.290749, 41.536133, 29.256971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052814, 42.179180, 28.878111>,  <36.636688, 41.586643, 29.012733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052814, 42.179180, 28.878111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320969, 41.882915, 28.896015>,  <37.481861, 41.705158, 28.906757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320969, 41.882915, 28.896015>,  <37.052814, 42.179180, 28.878111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320969, 41.882915, 28.896015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279630, 0.196301, -0.939826,
		0.687307, 0.642562, 0.338709,
		0.670385, -0.740662, 0.044761,
		37.522083, 41.660717, 28.909443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738708, 42.420864, 28.537876>,  <37.052814, 42.179180, 28.878111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738708, 42.420864, 28.537876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706802, 42.022362, 28.524511>,  <37.687656, 41.783260, 28.516493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706802, 42.022362, 28.524511>,  <37.738708, 42.420864, 28.537876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706802, 42.022362, 28.524511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238979, 0.013429, -0.970932,
		0.967743, -0.085434, 0.237012,
		-0.079768, -0.996253, -0.033413,
		37.682873, 41.723484, 28.514488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258686, 42.339542, 28.039537>,  <37.738708, 42.420864, 28.537876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258686, 42.339542, 28.039537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068527, 41.987911, 28.053535>,  <37.954433, 41.776932, 28.061935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068527, 41.987911, 28.053535>,  <38.258686, 42.339542, 28.039537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068527, 41.987911, 28.053535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042118, -0.062475, -0.997157,
		0.878764, -0.472568, 0.066725,
		-0.475394, -0.879077, 0.034997,
		37.925911, 41.724190, 28.064035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739834, 41.943832, 27.732059>,  <38.258686, 42.339542, 28.039537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739834, 41.943832, 27.732059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376495, 41.778099, 27.709290>,  <38.158493, 41.678658, 27.695627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376495, 41.778099, 27.709290>,  <38.739834, 41.943832, 27.732059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376495, 41.778099, 27.709290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098473, -0.079598, -0.991951,
		0.406471, -0.906636, 0.113103,
		-0.908342, -0.414337, -0.056925,
		38.103992, 41.653797, 27.692211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815994, 41.333385, 27.291338>,  <38.739834, 41.943832, 27.732059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815994, 41.333385, 27.291338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419579, 41.380474, 27.266092>,  <38.181728, 41.408726, 27.250946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419579, 41.380474, 27.266092>,  <38.815994, 41.333385, 27.291338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419579, 41.380474, 27.266092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059752, -0.031865, -0.997705,
		-0.119461, -0.992535, 0.024545,
		-0.991039, 0.117720, -0.063112,
		38.122265, 41.415791, 27.247158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595795, 40.886669, 26.724192>,  <38.815994, 41.333385, 27.291338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595795, 40.886669, 26.724192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292095, 41.144226, 26.762022>,  <38.109875, 41.298759, 26.784721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292095, 41.144226, 26.762022>,  <38.595795, 40.886669, 26.724192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292095, 41.144226, 26.762022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051870, 0.084991, -0.995031,
		-0.648732, -0.760380, -0.031130,
		-0.759247, 0.643893, 0.094578,
		38.064320, 41.337395, 26.790396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984138, 40.539268, 26.475428>,  <38.595795, 40.886669, 26.724192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984138, 40.539268, 26.475428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897484, 40.929153, 26.453489>,  <37.845490, 41.163082, 26.440327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897484, 40.929153, 26.453489>,  <37.984138, 40.539268, 26.475428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897484, 40.929153, 26.453489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128051, -0.084065, -0.988198,
		-0.967818, -0.207057, 0.143024,
		-0.216637, 0.974710, -0.054846,
		37.832493, 41.221565, 26.437035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279331, 40.599983, 26.128452>,  <37.984138, 40.539268, 26.475428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279331, 40.599983, 26.128452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429409, 40.968670, 26.089130>,  <37.519455, 41.189884, 26.065536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429409, 40.968670, 26.089130>,  <37.279331, 40.599983, 26.128452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429409, 40.968670, 26.089130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212845, -0.017552, -0.976928,
		-0.902178, 0.387463, 0.189597,
		0.375196, 0.921718, -0.098305,
		37.541969, 41.245186, 26.059639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850307, 40.845211, 25.611174>,  <37.279331, 40.599983, 26.128452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850307, 40.845211, 25.611174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183922, 41.065090, 25.592340>,  <37.384090, 41.197018, 25.581039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183922, 41.065090, 25.592340>,  <36.850307, 40.845211, 25.611174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183922, 41.065090, 25.592340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129851, 0.112639, -0.985115,
		-0.536213, 0.827734, 0.165324,
		0.834035, 0.549699, -0.047084,
		37.434132, 41.230000, 25.578215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689049, 41.428654, 25.377544>,  <36.850307, 40.845211, 25.611174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689049, 41.428654, 25.377544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077995, 41.387909, 25.293520>,  <37.311363, 41.363464, 25.243105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077995, 41.387909, 25.293520>,  <36.689049, 41.428654, 25.377544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077995, 41.387909, 25.293520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208387, 0.026921, -0.977676,
		0.105238, 0.994435, 0.004951,
		0.972368, -0.101857, -0.210060,
		37.369705, 41.357353, 25.230501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865726, 41.917019, 24.707558>,  <36.689049, 41.428654, 25.377544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865726, 41.917019, 24.707558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181595, 41.671650, 24.712168>,  <37.371117, 41.524429, 24.714933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181595, 41.671650, 24.712168>,  <36.865726, 41.917019, 24.707558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181595, 41.671650, 24.712168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048803, 0.044077, -0.997835,
		0.611590, 0.788522, 0.064743,
		0.789669, -0.613425, 0.011525,
		37.418495, 41.487621, 24.715626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349277, 42.203461, 24.294102>,  <36.865726, 41.917019, 24.707558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349277, 42.203461, 24.294102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462589, 41.822926, 24.342627>,  <37.530575, 41.594604, 24.371740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462589, 41.822926, 24.342627>,  <37.349277, 42.203461, 24.294102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462589, 41.822926, 24.342627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049555, -0.111804, -0.992494,
		0.957756, 0.287164, 0.015472,
		0.283279, -0.951334, 0.121311,
		37.547573, 41.537525, 24.379021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010761, 42.001190, 23.948408>,  <37.349277, 42.203461, 24.294102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010761, 42.001190, 23.948408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770454, 41.681576, 23.958344>,  <37.626270, 41.489807, 23.964306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770454, 41.681576, 23.958344>,  <38.010761, 42.001190, 23.948408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770454, 41.681576, 23.958344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243665, -0.212620, -0.946266,
		0.761385, -0.562432, 0.322433,
		-0.600766, -0.799039, 0.024840,
		37.590225, 41.441864, 23.965796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.244930, 37.110706, 23.690105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.187891, 37.500305, 23.760525>,  <31.153667, 37.734066, 23.802776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.187891, 37.500305, 23.760525>,  <31.244930, 37.110706, 23.690105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187891, 37.500305, 23.760525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099106, -0.162922, 0.981649,
		0.984807, 0.157428, -0.073297,
		-0.142597, 0.973998, 0.176048,
		31.145111, 37.792503, 23.813339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818647, 37.361660, 24.008585>,  <31.244930, 37.110706, 23.690105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818647, 37.361660, 24.008585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.538900, 37.628952, 24.110054>,  <31.371052, 37.789330, 24.170937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.538900, 37.628952, 24.110054>,  <31.818647, 37.361660, 24.008585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538900, 37.628952, 24.110054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112917, -0.247157, 0.962374,
		0.705788, 0.701695, 0.097398,
		-0.699366, 0.668234, 0.253674,
		31.329090, 37.829422, 24.186155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186890, 37.713142, 24.460367>,  <31.818647, 37.361660, 24.008585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186890, 37.713142, 24.460367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.792881, 37.744469, 24.521824>,  <31.556477, 37.763264, 24.558699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.792881, 37.744469, 24.521824>,  <32.186890, 37.713142, 24.460367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792881, 37.744469, 24.521824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129815, -0.249743, 0.959571,
		0.113523, 0.965140, 0.235834,
		-0.985018, 0.078319, 0.153641,
		31.497375, 37.767963, 24.567917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190994, 37.941555, 25.076199>,  <32.186890, 37.713142, 24.460367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190994, 37.941555, 25.076199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.802990, 37.849152, 25.045973>,  <31.570187, 37.793709, 25.027838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.802990, 37.849152, 25.045973>,  <32.190994, 37.941555, 25.076199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802990, 37.849152, 25.045973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007640, -0.281755, 0.959456,
		-0.242938, 0.931261, 0.271540,
		-0.970012, -0.231013, -0.075564,
		31.511986, 37.779846, 25.023304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710354, 38.417084, 25.509804>,  <32.190994, 37.941555, 25.076199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710354, 38.417084, 25.509804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.518866, 38.068344, 25.468401>,  <31.403973, 37.859100, 25.443560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.518866, 38.068344, 25.468401>,  <31.710354, 38.417084, 25.509804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518866, 38.068344, 25.468401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108436, -0.058278, 0.992394,
		-0.871245, 0.486303, -0.066640,
		-0.478721, -0.871844, -0.103507,
		31.375250, 37.806789, 25.437349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259933, 38.427456, 26.045259>,  <31.710354, 38.417084, 25.509804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259933, 38.427456, 26.045259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.254253, 38.044151, 25.931042>,  <31.250845, 37.814171, 25.862511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.254253, 38.044151, 25.931042>,  <31.259933, 38.427456, 26.045259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254253, 38.044151, 25.931042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021874, -0.285209, 0.958216,
		-0.999660, 0.019852, -0.016911,
		-0.014199, -0.958260, -0.285546,
		31.249994, 37.756672, 25.845377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817974, 38.171276, 26.425884>,  <31.259933, 38.427456, 26.045259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817974, 38.171276, 26.425884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.036652, 37.863140, 26.294615>,  <31.167858, 37.678257, 26.215855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.036652, 37.863140, 26.294615>,  <30.817974, 38.171276, 26.425884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036652, 37.863140, 26.294615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003284, -0.393895, 0.919150,
		-0.837325, -0.501417, -0.217871,
		0.546695, -0.770342, -0.328171,
		31.200661, 37.632038, 26.196163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462444, 37.625595, 26.626644>,  <30.817974, 38.171276, 26.425884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462444, 37.625595, 26.626644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.821688, 37.469345, 26.545834>,  <31.037233, 37.375595, 26.497347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.821688, 37.469345, 26.545834>,  <30.462444, 37.625595, 26.626644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821688, 37.469345, 26.545834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010807, -0.439645, 0.898107,
		-0.439645, -0.808779, -0.390626,
		-0.898107, 0.390626, 0.202028,
		31.091120, 37.352158, 26.485226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352743, 37.044380, 26.831247>,  <30.462444, 37.625595, 26.626644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352743, 37.044380, 26.831247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752354, 37.051609, 26.815165>,  <30.992121, 37.055946, 26.805515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752354, 37.051609, 26.815165>,  <30.352743, 37.044380, 26.831247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752354, 37.051609, 26.815165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044068, -0.431625, 0.900976,
		-0.001072, -0.901872, -0.432002,
		0.999028, 0.018072, -0.040206,
		31.052063, 37.057030, 26.803102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638680, 36.404896, 26.997126>,  <30.352743, 37.044380, 26.831247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638680, 36.404896, 26.997126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.919756, 36.675632, 27.084866>,  <31.088402, 36.838074, 27.137510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.919756, 36.675632, 27.084866>,  <30.638680, 36.404896, 26.997126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919756, 36.675632, 27.084866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160395, -0.451053, 0.877966,
		0.693181, -0.581755, -0.425513,
		0.702690, 0.676840, 0.219351,
		31.130564, 36.878685, 27.150671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315975, 36.023907, 27.114481>,  <30.638680, 36.404896, 26.997126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315975, 36.023907, 27.114481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.375517, 36.381702, 27.283110>,  <31.411242, 36.596382, 27.384287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.375517, 36.381702, 27.283110>,  <31.315975, 36.023907, 27.114481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375517, 36.381702, 27.283110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244884, -0.446388, 0.860680,
		0.958058, -0.024877, -0.285493,
		0.148852, 0.894493, 0.421574,
		31.420172, 36.650051, 27.409582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798222, 35.875206, 27.670153>,  <31.315975, 36.023907, 27.114481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798222, 35.875206, 27.670153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.674658, 36.240665, 27.775843>,  <31.600519, 36.459942, 27.839256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.674658, 36.240665, 27.775843>,  <31.798222, 35.875206, 27.670153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674658, 36.240665, 27.775843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266382, -0.183582, 0.946223,
		0.913026, 0.362681, -0.186670,
		-0.308908, 0.913652, 0.264227,
		31.581985, 36.514763, 27.855110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379669, 36.102600, 27.966135>,  <31.798222, 35.875206, 27.670153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379669, 36.102600, 27.966135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.089581, 36.330219, 28.121178>,  <31.915527, 36.466789, 28.214203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.089581, 36.330219, 28.121178>,  <32.379669, 36.102600, 27.966135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089581, 36.330219, 28.121178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489679, 0.030540, 0.871368,
		0.484013, 0.821736, -0.300799,
		-0.725221, 0.569049, 0.387605,
		31.872015, 36.500935, 28.237459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623627, 36.607639, 28.300215>,  <32.379669, 36.102600, 27.966135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623627, 36.607639, 28.300215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.263500, 36.608860, 28.474306>,  <32.047424, 36.609592, 28.578762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.263500, 36.608860, 28.474306>,  <32.623627, 36.607639, 28.300215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263500, 36.608860, 28.474306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431413, -0.126094, 0.893299,
		0.057603, 0.992013, 0.112210,
		-0.900314, 0.003048, 0.435231,
		31.993406, 36.609776, 28.604876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286076, 36.978867, 28.502926>,  <32.623627, 36.607639, 28.300215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286076, 36.978867, 28.502926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.649746, 36.858742, 28.387541>,  <33.867947, 36.786667, 28.318310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.649746, 36.858742, 28.387541>,  <33.286076, 36.978867, 28.502926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649746, 36.858742, 28.387541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164916, 0.376409, -0.911657,
		0.382361, 0.876430, 0.292696,
		0.909177, -0.300312, -0.288461,
		33.922501, 36.768646, 28.301003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655910, 37.608154, 28.145102>,  <33.286076, 36.978867, 28.502926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655910, 37.608154, 28.145102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.845276, 37.272537, 28.037859>,  <33.958897, 37.071167, 27.973513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.845276, 37.272537, 28.037859>,  <33.655910, 37.608154, 28.145102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845276, 37.272537, 28.037859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192916, 0.395751, -0.897867,
		0.859454, 0.373342, 0.349220,
		0.473416, -0.839045, -0.268106,
		33.987301, 37.020824, 27.957428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111462, 37.774048, 27.601532>,  <33.655910, 37.608154, 28.145102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111462, 37.774048, 27.601532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.124844, 37.376167, 27.562654>,  <34.132874, 37.137440, 27.539328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.124844, 37.376167, 27.562654>,  <34.111462, 37.774048, 27.601532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124844, 37.376167, 27.562654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054130, 0.098908, -0.993623,
		0.997973, 0.027984, 0.057152,
		0.033458, -0.994703, -0.097192,
		34.134880, 37.077755, 27.533497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665169, 37.499393, 27.085917>,  <34.111462, 37.774048, 27.601532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665169, 37.499393, 27.085917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.424374, 37.180527, 27.104380>,  <34.279896, 36.989208, 27.115458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.424374, 37.180527, 27.104380>,  <34.665169, 37.499393, 27.085917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424374, 37.180527, 27.104380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001701, -0.056523, -0.998400,
		0.798501, -0.601106, 0.032670,
		-0.601991, -0.797168, 0.046157,
		34.243778, 36.941376, 27.118227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986843, 36.967022, 26.776651>,  <34.665169, 37.499393, 27.085917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986843, 36.967022, 26.776651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596916, 36.879196, 26.761087>,  <34.362961, 36.826500, 26.751749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596916, 36.879196, 26.761087>,  <34.986843, 36.967022, 26.776651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596916, 36.879196, 26.761087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041492, -0.007151, -0.999113,
		0.219096, -0.975571, 0.016081,
		-0.974821, -0.219569, -0.038912,
		34.304470, 36.813324, 26.749414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929993, 36.413654, 26.356102>,  <34.986843, 36.967022, 26.776651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929993, 36.413654, 26.356102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.578892, 36.603916, 26.333136>,  <34.368229, 36.718075, 26.319357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.578892, 36.603916, 26.333136>,  <34.929993, 36.413654, 26.356102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578892, 36.603916, 26.333136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037655, -0.050977, -0.997990,
		-0.477627, -0.878153, 0.026834,
		-0.877755, 0.475657, -0.057415,
		34.315567, 36.746613, 26.315910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551842, 36.009579, 25.816860>,  <34.929993, 36.413654, 26.356102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551842, 36.009579, 25.816860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.370010, 36.362877, 25.862865>,  <34.260910, 36.574856, 25.890469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.370010, 36.362877, 25.862865>,  <34.551842, 36.009579, 25.816860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370010, 36.362877, 25.862865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128337, 0.062829, -0.989738,
		-0.881411, -0.464677, 0.084793,
		-0.454582, 0.883249, 0.115013,
		34.233635, 36.627850, 25.897369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939640, 35.956623, 25.449333>,  <34.551842, 36.009579, 25.816860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939640, 35.956623, 25.449333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.970482, 36.351585, 25.504597>,  <33.988987, 36.588562, 25.537754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.970482, 36.351585, 25.504597>,  <33.939640, 35.956623, 25.449333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970482, 36.351585, 25.504597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253283, 0.153424, -0.955149,
		-0.964314, 0.038655, 0.261923,
		0.077106, 0.987404, 0.138158,
		33.993614, 36.647808, 25.546043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274685, 36.245358, 25.491205>,  <33.939640, 35.956623, 25.449333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274685, 36.245358, 25.491205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.530613, 36.525436, 25.364492>,  <33.684170, 36.693485, 25.288465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.530613, 36.525436, 25.364492>,  <33.274685, 36.245358, 25.491205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530613, 36.525436, 25.364492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516273, 0.086269, -0.852068,
		-0.569287, 0.708718, 0.416690,
		0.639824, 0.700197, -0.316780,
		33.722561, 36.735497, 25.269459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866840, 36.733540, 25.162003>,  <33.274685, 36.245358, 25.491205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866840, 36.733540, 25.162003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.234642, 36.842484, 25.048628>,  <33.455322, 36.907852, 24.980604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.234642, 36.842484, 25.048628>,  <32.866840, 36.733540, 25.162003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234642, 36.842484, 25.048628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356796, 0.275687, -0.892577,
		-0.164967, 0.921854, 0.350673,
		0.919501, 0.272364, -0.283435,
		33.510494, 36.924194, 24.963598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820240, 37.345772, 24.865850>,  <32.866840, 36.733540, 25.162003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820240, 37.345772, 24.865850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.162636, 37.213749, 24.706678>,  <33.368073, 37.134537, 24.611176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.162636, 37.213749, 24.706678>,  <32.820240, 37.345772, 24.865850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162636, 37.213749, 24.706678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242137, 0.424118, -0.872636,
		0.456788, 0.843319, 0.283121,
		0.855987, -0.330056, -0.397931,
		33.419434, 37.114731, 24.587299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112957, 37.831413, 24.412298>,  <32.820240, 37.345772, 24.865850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112957, 37.831413, 24.412298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306355, 37.514931, 24.262516>,  <33.422394, 37.325039, 24.172647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306355, 37.514931, 24.262516>,  <33.112957, 37.831413, 24.412298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306355, 37.514931, 24.262516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047887, 0.451047, -0.891215,
		0.874035, 0.412968, 0.255969,
		0.483497, -0.791211, -0.374455,
		33.451405, 37.277569, 24.150179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683716, 38.163979, 24.056517>,  <33.112957, 37.831413, 24.412298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683716, 38.163979, 24.056517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.622486, 37.804527, 23.892057>,  <33.585747, 37.588856, 23.793383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.622486, 37.804527, 23.892057>,  <33.683716, 38.163979, 24.056517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622486, 37.804527, 23.892057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097329, 0.400317, -0.911193,
		0.983410, -0.179498, 0.026183,
		-0.153076, -0.898625, -0.411146,
		33.576565, 37.534939, 23.768713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189720, 37.998466, 23.546696>,  <33.683716, 38.163979, 24.056517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189720, 37.998466, 23.546696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.878590, 37.776237, 23.429173>,  <33.691910, 37.642899, 23.358658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.878590, 37.776237, 23.429173>,  <34.189720, 37.998466, 23.546696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878590, 37.776237, 23.429173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155044, 0.283412, -0.946382,
		0.609052, -0.781675, -0.134308,
		-0.777828, -0.555572, -0.293807,
		33.645241, 37.609566, 23.341030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903004, 37.735943, 23.790976>,  <34.189720, 37.998466, 23.546696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903004, 37.735943, 23.790976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.249626, 37.648628, 23.611448>,  <35.457600, 37.596241, 23.503731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.249626, 37.648628, 23.611448>,  <34.903004, 37.735943, 23.790976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249626, 37.648628, 23.611448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307814, -0.474127, 0.824897,
		-0.392858, -0.852970, -0.343666,
		0.866553, -0.218282, -0.448820,
		35.509590, 37.583145, 23.476803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977100, 37.120178, 23.995358>,  <34.903004, 37.735943, 23.790976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977100, 37.120178, 23.995358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.341576, 37.238937, 23.881096>,  <35.560261, 37.310192, 23.812540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.341576, 37.238937, 23.881096>,  <34.977100, 37.120178, 23.995358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341576, 37.238937, 23.881096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410669, -0.598811, 0.687587,
		0.033090, -0.743827, -0.667553,
		0.911184, 0.296895, -0.285652,
		35.614929, 37.328007, 23.795401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459679, 36.559132, 24.007549>,  <34.977100, 37.120178, 23.995358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459679, 36.559132, 24.007549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.703541, 36.875210, 24.032574>,  <35.849857, 37.064857, 24.047588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.703541, 36.875210, 24.032574>,  <35.459679, 36.559132, 24.007549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703541, 36.875210, 24.032574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395366, -0.371545, 0.840024,
		0.687025, -0.487392, -0.538930,
		0.609658, 0.790192, 0.062562,
		35.886436, 37.112267, 24.051342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174557, 36.231144, 24.232670>,  <35.459679, 36.559132, 24.007549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174557, 36.231144, 24.232670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192108, 36.627037, 24.287083>,  <36.202641, 36.864574, 24.319731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.192108, 36.627037, 24.287083>,  <36.174557, 36.231144, 24.232670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192108, 36.627037, 24.287083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422290, -0.141777, 0.895305,
		0.905398, 0.018156, -0.424175,
		0.043883, 0.989732, 0.136032,
		36.205273, 36.923958, 24.327892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736187, 36.222988, 24.530178>,  <36.174557, 36.231144, 24.232670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736187, 36.222988, 24.530178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.580627, 36.580376, 24.620043>,  <36.487293, 36.794807, 24.673962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.580627, 36.580376, 24.620043>,  <36.736187, 36.222988, 24.530178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580627, 36.580376, 24.620043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432905, -0.038033, 0.900637,
		0.813235, 0.447512, -0.371996,
		-0.388898, 0.893468, 0.224660,
		36.463959, 36.848415, 24.687441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284649, 36.585777, 24.836313>,  <36.736187, 36.222988, 24.530178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284649, 36.585777, 24.836313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.944233, 36.750797, 24.966259>,  <36.739983, 36.849812, 25.044228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.944233, 36.750797, 24.966259>,  <37.284649, 36.585777, 24.836313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944233, 36.750797, 24.966259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335319, -0.049139, 0.940822,
		0.404103, 0.909607, -0.096518,
		-0.851035, 0.412554, 0.324866,
		36.688923, 36.874565, 25.063719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433151, 37.045872, 25.378761>,  <37.284649, 36.585777, 24.836313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433151, 37.045872, 25.378761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.045341, 36.970577, 25.441484>,  <36.812656, 36.925400, 25.479118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.045341, 36.970577, 25.441484>,  <37.433151, 37.045872, 25.378761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045341, 36.970577, 25.441484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201074, -0.245718, 0.948257,
		-0.139969, 0.950888, 0.276080,
		-0.969525, -0.188239, 0.156806,
		36.754482, 36.914104, 25.488525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262409, 37.405754, 26.014414>,  <37.433151, 37.045872, 25.378761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262409, 37.405754, 26.014414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984642, 37.119724, 25.982302>,  <36.817982, 36.948105, 25.963034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984642, 37.119724, 25.982302>,  <37.262409, 37.405754, 26.014414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984642, 37.119724, 25.982302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103209, -0.209396, 0.972369,
		-0.712130, 0.666946, 0.219211,
		-0.694419, -0.715078, -0.080282,
		36.776318, 36.905201, 25.958218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649178, 37.667011, 26.415249>,  <37.262409, 37.405754, 26.014414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649178, 37.667011, 26.415249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682037, 37.271450, 26.365746>,  <36.701752, 37.034111, 26.336042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682037, 37.271450, 26.365746>,  <36.649178, 37.667011, 26.415249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682037, 37.271450, 26.365746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072506, -0.129781, 0.988888,
		-0.993979, -0.072260, -0.082363,
		0.082146, -0.988906, -0.123761,
		36.706680, 36.974777, 26.328617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260536, 37.429585, 26.932995>,  <36.649178, 37.667011, 26.415249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260536, 37.429585, 26.932995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449478, 37.101143, 26.804825>,  <36.562843, 36.904079, 26.727922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449478, 37.101143, 26.804825>,  <36.260536, 37.429585, 26.932995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449478, 37.101143, 26.804825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158275, -0.278611, 0.947272,
		-0.867082, -0.498162, -0.001642,
		0.472353, -0.821103, -0.320426,
		36.591183, 36.854813, 26.708696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962025, 36.817997, 27.157240>,  <36.260536, 37.429585, 26.932995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962025, 36.817997, 27.157240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347012, 36.742123, 27.079594>,  <36.578003, 36.696598, 27.033007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347012, 36.742123, 27.079594>,  <35.962025, 36.817997, 27.157240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347012, 36.742123, 27.079594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163487, -0.165699, 0.972531,
		-0.216644, -0.967761, -0.128468,
		0.962464, -0.189690, -0.194114,
		36.635750, 36.685219, 27.021360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056828, 36.272850, 27.542564>,  <35.962025, 36.817997, 27.157240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056828, 36.272850, 27.542564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428043, 36.402180, 27.468597>,  <36.650772, 36.479778, 27.424217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428043, 36.402180, 27.468597>,  <36.056828, 36.272850, 27.542564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428043, 36.402180, 27.468597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229676, -0.105912, 0.967487,
		0.293231, -0.940341, -0.172551,
		0.928043, 0.323328, -0.184917,
		36.706455, 36.499180, 27.413122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434494, 35.775085, 27.834976>,  <36.056828, 36.272850, 27.542564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434494, 35.775085, 27.834976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670670, 36.095245, 27.793512>,  <36.812374, 36.287342, 27.768635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670670, 36.095245, 27.793512>,  <36.434494, 35.775085, 27.834976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670670, 36.095245, 27.793512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335976, -0.126980, 0.933272,
		0.733824, -0.585869, -0.343888,
		0.590442, 0.800396, -0.103657,
		36.847801, 36.335365, 27.762415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095028, 35.494335, 27.981903>,  <36.434494, 35.775085, 27.834976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095028, 35.494335, 27.981903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095638, 35.892357, 28.021616>,  <37.096004, 36.131172, 28.045443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095638, 35.892357, 28.021616>,  <37.095028, 35.494335, 27.981903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095638, 35.892357, 28.021616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306322, -0.094973, 0.947178,
		0.951927, 0.028967, -0.304954,
		0.001525, 0.995058, 0.099280,
		37.096096, 36.190876, 28.051399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.177719, 41.604675, 23.228146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882816, 41.405842, 23.411167>,  <37.705875, 41.286541, 23.520981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882816, 41.405842, 23.411167>,  <38.177719, 41.604675, 23.228146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882816, 41.405842, 23.411167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179329, -0.508975, -0.841894,
		0.651373, -0.702749, 0.286107,
		-0.737261, -0.497080, 0.457556,
		37.661636, 41.256718, 23.548433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394806, 40.897057, 23.223116>,  <38.177719, 41.604675, 23.228146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394806, 40.897057, 23.223116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.995979, 40.919167, 23.244263>,  <37.756683, 40.932430, 23.256950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.995979, 40.919167, 23.244263>,  <38.394806, 40.897057, 23.223116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995979, 40.919167, 23.244263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074441, -0.542506, -0.836747,
		-0.017566, -0.838232, 0.545032,
		-0.997071, 0.055271, 0.052869,
		37.696857, 40.935749, 23.260124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175171, 40.294453, 22.907953>,  <38.394806, 40.897057, 23.223116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175171, 40.294453, 22.907953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.831127, 40.498104, 22.895309>,  <37.624702, 40.620296, 22.887724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.831127, 40.498104, 22.895309>,  <38.175171, 40.294453, 22.907953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831127, 40.498104, 22.895309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223397, -0.431660, -0.873936,
		-0.458596, -0.744616, 0.485013,
		-0.860106, 0.509134, -0.031612,
		37.573093, 40.650841, 22.885826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653168, 39.760090, 22.644236>,  <38.175171, 40.294453, 22.907953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653168, 39.760090, 22.644236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531590, 40.136387, 22.584072>,  <37.458641, 40.362164, 22.547974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531590, 40.136387, 22.584072>,  <37.653168, 39.760090, 22.644236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531590, 40.136387, 22.584072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323963, -0.250533, -0.912294,
		-0.895915, -0.228564, 0.380914,
		-0.303949, 0.940740, -0.150410,
		37.440403, 40.418610, 22.538948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067760, 39.698055, 22.292856>,  <37.653168, 39.760090, 22.644236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067760, 39.698055, 22.292856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.159721, 40.082470, 22.231462>,  <37.214897, 40.313118, 22.194626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.159721, 40.082470, 22.231462>,  <37.067760, 39.698055, 22.292856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159721, 40.082470, 22.231462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268433, -0.088972, -0.959181,
		-0.935462, 0.261715, 0.237519,
		0.229899, 0.961036, -0.153482,
		37.228691, 40.370781, 22.185417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431263, 39.977562, 21.936899>,  <37.067760, 39.698055, 22.292856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431263, 39.977562, 21.936899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756573, 40.193977, 21.851236>,  <36.951759, 40.323826, 21.799839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756573, 40.193977, 21.851236>,  <36.431263, 39.977562, 21.936899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756573, 40.193977, 21.851236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299574, 0.073795, -0.951215,
		-0.498839, 0.837755, 0.222097,
		0.813274, 0.541037, -0.214158,
		37.000553, 40.356289, 21.786989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129299, 40.470470, 21.478550>,  <36.431263, 39.977562, 21.936899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129299, 40.470470, 21.478550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522118, 40.521336, 21.422817>,  <36.757809, 40.551857, 21.389378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522118, 40.521336, 21.422817>,  <36.129299, 40.470470, 21.478550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522118, 40.521336, 21.422817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161037, 0.180496, -0.970303,
		-0.098242, 0.975320, 0.197734,
		0.982047, 0.127167, -0.139330,
		36.816730, 40.559486, 21.381018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213943, 41.126328, 21.243114>,  <36.129299, 40.470470, 21.478550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213943, 41.126328, 21.243114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.560745, 40.959301, 21.134342>,  <36.768826, 40.859085, 21.069078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.560745, 40.959301, 21.134342>,  <36.213943, 41.126328, 21.243114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560745, 40.959301, 21.134342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057630, 0.458024, -0.887070,
		0.494964, 0.784761, 0.373043,
		0.867000, -0.417569, -0.271931,
		36.820847, 40.834030, 21.052763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736565, 41.659210, 21.012318>,  <36.213943, 41.126328, 21.243114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736565, 41.659210, 21.012318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825512, 41.306541, 20.845848>,  <36.878880, 41.094940, 20.745966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825512, 41.306541, 20.845848>,  <36.736565, 41.659210, 21.012318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825512, 41.306541, 20.845848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107245, 0.402151, -0.909271,
		0.969047, 0.246822, -0.005131,
		0.222365, -0.881676, -0.416174,
		36.892220, 41.042038, 20.720995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141312, 41.821522, 20.469959>,  <36.736565, 41.659210, 21.012318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141312, 41.821522, 20.469959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.022724, 41.447952, 20.390062>,  <36.951572, 41.223812, 20.342125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.022724, 41.447952, 20.390062>,  <37.141312, 41.821522, 20.469959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022724, 41.447952, 20.390062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069188, 0.229596, -0.970824,
		0.952534, -0.273996, -0.132684,
		-0.296466, -0.933923, -0.199740,
		36.933784, 41.167774, 20.330141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593426, 41.614498, 19.946735>,  <37.141312, 41.821522, 20.469959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593426, 41.614498, 19.946735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.279701, 41.369312, 19.908499>,  <37.091469, 41.222202, 19.885557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.279701, 41.369312, 19.908499>,  <37.593426, 41.614498, 19.946735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279701, 41.369312, 19.908499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079603, 0.053380, -0.995397,
		0.615243, -0.788307, 0.006927,
		-0.784308, -0.612962, -0.095593,
		37.044407, 41.185425, 19.879822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858730, 41.091900, 19.572012>,  <37.593426, 41.614498, 19.946735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858730, 41.091900, 19.572012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.459415, 41.074936, 19.555916>,  <37.219826, 41.064758, 19.546259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.459415, 41.074936, 19.555916>,  <37.858730, 41.091900, 19.572012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459415, 41.074936, 19.555916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046607, -0.161763, -0.985729,
		0.035298, -0.985918, 0.163463,
		-0.998289, -0.042412, -0.040240,
		37.159927, 41.062214, 19.543844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671722, 40.447830, 19.174896>,  <37.858730, 41.091900, 19.572012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671722, 40.447830, 19.174896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.399143, 40.738525, 19.140303>,  <37.235596, 40.912945, 19.119547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.399143, 40.738525, 19.140303>,  <37.671722, 40.447830, 19.174896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399143, 40.738525, 19.140303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024650, -0.140892, -0.989718,
		-0.731453, -0.672308, 0.113924,
		-0.681446, 0.726740, -0.086484,
		37.194710, 40.956547, 19.114357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089077, 40.384666, 18.607698>,  <37.671722, 40.447830, 19.174896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089077, 40.384666, 18.607698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219086, 40.761993, 18.580822>,  <37.297092, 40.988388, 18.564695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219086, 40.761993, 18.580822>,  <37.089077, 40.384666, 18.607698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219086, 40.761993, 18.580822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100685, -0.105163, -0.989345,
		-0.940331, 0.314795, -0.129158,
		0.325023, 0.943316, -0.067193,
		37.316593, 41.044987, 18.560663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562111, 39.977989, 18.195450>,  <37.089077, 40.384666, 18.607698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562111, 39.977989, 18.195450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264297, 39.763405, 18.036510>,  <36.085609, 39.634655, 17.941147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264297, 39.763405, 18.036510>,  <36.562111, 39.977989, 18.195450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264297, 39.763405, 18.036510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182477, -0.408998, 0.894104,
		-0.642163, 0.738196, 0.206621,
		-0.744532, -0.536457, -0.397348,
		36.040939, 39.602467, 17.917307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934830, 40.115505, 18.681509>,  <36.562111, 39.977989, 18.195450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934830, 40.115505, 18.681509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875229, 39.762352, 18.503380>,  <35.839466, 39.550461, 18.396502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875229, 39.762352, 18.503380>,  <35.934830, 40.115505, 18.681509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875229, 39.762352, 18.503380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290302, -0.391449, 0.873208,
		-0.945263, 0.259391, -0.197975,
		-0.149006, -0.882884, -0.445324,
		35.830528, 39.497486, 18.369783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274891, 39.863022, 18.968016>,  <35.934830, 40.115505, 18.681509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274891, 39.863022, 18.968016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433422, 39.525032, 18.824379>,  <35.528542, 39.322239, 18.738197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433422, 39.525032, 18.824379>,  <35.274891, 39.863022, 18.968016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433422, 39.525032, 18.824379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294981, -0.487576, 0.821740,
		-0.869430, -0.219756, -0.442491,
		0.396330, -0.844972, -0.359089,
		35.552322, 39.271542, 18.716652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795776, 39.315002, 19.098772>,  <35.274891, 39.863022, 18.968016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795776, 39.315002, 19.098772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.151031, 39.137135, 19.052328>,  <35.364185, 39.030415, 19.024462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.151031, 39.137135, 19.052328>,  <34.795776, 39.315002, 19.098772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151031, 39.137135, 19.052328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174666, -0.560278, 0.809679,
		-0.425094, -0.698825, -0.575272,
		0.888137, -0.444670, -0.116109,
		35.417473, 39.003735, 19.017494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596836, 38.684441, 19.220659>,  <34.795776, 39.315002, 19.098772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596836, 38.684441, 19.220659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993137, 38.703644, 19.271410>,  <35.230919, 38.715164, 19.301861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993137, 38.703644, 19.271410>,  <34.596836, 38.684441, 19.220659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993137, 38.703644, 19.271410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083965, -0.517602, 0.851492,
		0.106547, -0.854274, -0.508787,
		0.990756, 0.048003, 0.126878,
		35.290363, 38.718044, 19.309473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783752, 37.995872, 19.435730>,  <34.596836, 38.684441, 19.220659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783752, 37.995872, 19.435730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072895, 38.246555, 19.552153>,  <35.246380, 38.396965, 19.622007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072895, 38.246555, 19.552153>,  <34.783752, 37.995872, 19.435730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072895, 38.246555, 19.552153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093935, -0.506427, 0.857151,
		0.684585, -0.592256, -0.424943,
		0.722855, 0.626710, 0.291059,
		35.289753, 38.434566, 19.639471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013809, 37.637238, 19.934513>,  <34.783752, 37.995872, 19.435730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013809, 37.637238, 19.934513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213978, 37.974506, 20.013138>,  <35.334080, 38.176868, 20.060312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213978, 37.974506, 20.013138>,  <35.013809, 37.637238, 19.934513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213978, 37.974506, 20.013138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279332, -0.372130, 0.885151,
		0.819482, -0.388044, -0.421748,
		0.500423, 0.843173, 0.196560,
		35.364105, 38.227459, 20.072105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796539, 37.485870, 20.111471>,  <35.013809, 37.637238, 19.934513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796539, 37.485870, 20.111471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689072, 37.831940, 20.280844>,  <35.624592, 38.039581, 20.382467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689072, 37.831940, 20.280844>,  <35.796539, 37.485870, 20.111471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689072, 37.831940, 20.280844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396981, -0.301066, 0.867044,
		0.877622, 0.401045, -0.262568,
		-0.268674, 0.865171, 0.423430,
		35.608471, 38.091492, 20.407873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310837, 37.524910, 20.738543>,  <35.796539, 37.485870, 20.111471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310837, 37.524910, 20.738543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992565, 37.756416, 20.810003>,  <35.801601, 37.895321, 20.852880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992565, 37.756416, 20.810003>,  <36.310837, 37.524910, 20.738543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992565, 37.756416, 20.810003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124371, -0.132554, 0.983342,
		0.592807, 0.804648, 0.033490,
		-0.795684, 0.578766, 0.178654,
		35.753860, 37.930046, 20.863600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499870, 37.936695, 21.323404>,  <36.310837, 37.524910, 20.738543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499870, 37.936695, 21.323404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102905, 37.983906, 21.309601>,  <35.864727, 38.012234, 21.301319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102905, 37.983906, 21.309601>,  <36.499870, 37.936695, 21.323404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102905, 37.983906, 21.309601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038081, -0.028142, 0.998878,
		0.116923, 0.992612, 0.032423,
		-0.992411, 0.118027, -0.034509,
		35.805183, 38.019314, 21.299248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406364, 38.301201, 21.916658>,  <36.499870, 37.936695, 21.323404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406364, 38.301201, 21.916658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039967, 38.154934, 21.850643>,  <35.820129, 38.067173, 21.811033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039967, 38.154934, 21.850643>,  <36.406364, 38.301201, 21.916658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039967, 38.154934, 21.850643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159322, -0.045986, 0.986155,
		-0.368197, 0.929608, -0.016136,
		-0.915995, -0.365670, -0.165039,
		35.765167, 38.045235, 21.801132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013935, 38.666252, 22.345200>,  <36.406364, 38.301201, 21.916658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013935, 38.666252, 22.345200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784119, 38.345497, 22.279629>,  <35.646229, 38.153042, 22.240286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784119, 38.345497, 22.279629>,  <36.013935, 38.666252, 22.345200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784119, 38.345497, 22.279629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115809, -0.118623, 0.986163,
		-0.810239, 0.585579, -0.024712,
		-0.574544, -0.801889, -0.163928,
		35.611755, 38.104931, 22.230450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421940, 38.694672, 22.889946>,  <36.013935, 38.666252, 22.345200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421940, 38.694672, 22.889946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466545, 38.321579, 22.752787>,  <35.493309, 38.097725, 22.670490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.466545, 38.321579, 22.752787>,  <35.421940, 38.694672, 22.889946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466545, 38.321579, 22.752787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080012, -0.352356, 0.932439,
		-0.990537, -0.076543, -0.113922,
		0.111513, -0.932730, -0.342898,
		35.500000, 38.041759, 22.649918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918060, 38.282818, 23.204546>,  <35.421940, 38.694672, 22.889946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918060, 38.282818, 23.204546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177425, 38.007778, 23.073847>,  <35.333046, 37.842754, 22.995426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177425, 38.007778, 23.073847>,  <34.918060, 38.282818, 23.204546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177425, 38.007778, 23.073847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127939, -0.521525, 0.843589,
		-0.750460, -0.505192, -0.426135,
		0.648415, -0.687599, -0.326750,
		35.371948, 37.801498, 22.975822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328506, 37.967880, 22.795229>,  <34.918060, 38.282818, 23.204546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328506, 37.967880, 22.795229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967197, 37.799789, 22.829878>,  <33.750412, 37.698936, 22.850668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967197, 37.799789, 22.829878>,  <34.328506, 37.967880, 22.795229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967197, 37.799789, 22.829878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155862, 0.133269, -0.978747,
		0.399751, -0.897580, -0.185876,
		-0.903275, -0.420226, 0.086624,
		33.696213, 37.673721, 22.855865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206795, 37.548946, 22.239923>,  <34.328506, 37.967880, 22.795229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206795, 37.548946, 22.239923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825649, 37.626286, 22.333452>,  <33.596962, 37.672688, 22.389568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825649, 37.626286, 22.333452>,  <34.206795, 37.548946, 22.239923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825649, 37.626286, 22.333452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210582, 0.133358, -0.968437,
		-0.218429, -0.972025, -0.086355,
		-0.952861, 0.193349, 0.233820,
		33.539791, 37.684292, 22.403599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843884, 37.340023, 21.694746>,  <34.206795, 37.548946, 22.239923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843884, 37.340023, 21.694746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546452, 37.544750, 21.866854>,  <33.367992, 37.667587, 21.970119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546452, 37.544750, 21.866854>,  <33.843884, 37.340023, 21.694746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546452, 37.544750, 21.866854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341890, 0.261988, -0.902482,
		-0.574633, -0.818171, -0.019822,
		-0.743578, 0.511819, 0.430271,
		33.323380, 37.698296, 21.995935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359432, 37.208374, 21.352327>,  <33.843884, 37.340023, 21.694746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359432, 37.208374, 21.352327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246628, 37.550018, 21.527130>,  <33.178947, 37.755005, 21.632011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246628, 37.550018, 21.527130>,  <33.359432, 37.208374, 21.352327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246628, 37.550018, 21.527130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264587, 0.368595, -0.891140,
		-0.922207, -0.366934, 0.122039,
		-0.282006, 0.854106, 0.437007,
		33.162025, 37.806252, 21.658232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660282, 37.417927, 21.020641>,  <33.359432, 37.208374, 21.352327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660282, 37.417927, 21.020641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810596, 37.748695, 21.187967>,  <32.900784, 37.947155, 21.288363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810596, 37.748695, 21.187967>,  <32.660282, 37.417927, 21.020641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810596, 37.748695, 21.187967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177063, 0.507153, -0.843472,
		-0.909633, 0.242898, 0.336998,
		0.375787, 0.826920, 0.418315,
		32.923332, 37.996773, 21.313461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091984, 37.945065, 20.932762>,  <32.660282, 37.417927, 21.020641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091984, 37.945065, 20.932762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.459667, 38.097851, 20.971043>,  <32.680279, 38.189522, 20.994011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.459667, 38.097851, 20.971043>,  <32.091984, 37.945065, 20.932762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459667, 38.097851, 20.971043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131208, 0.526254, -0.840143,
		-0.371270, 0.759710, 0.533854,
		0.919208, 0.381966, 0.095702,
		32.735428, 38.212440, 20.999754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006931, 38.595600, 20.821627>,  <32.091984, 37.945065, 20.932762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006931, 38.595600, 20.821627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.395836, 38.540081, 20.746323>,  <32.629177, 38.506771, 20.701141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.395836, 38.540081, 20.746323>,  <32.006931, 38.595600, 20.821627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395836, 38.540081, 20.746323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087090, 0.532179, -0.842141,
		0.217075, 0.835177, 0.505329,
		0.972262, -0.138798, -0.188258,
		32.687515, 38.498440, 20.689846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663126, 39.127022, 21.295807>,  <32.006931, 38.595600, 20.821627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663126, 39.127022, 21.295807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.263496, 39.110901, 21.289799>,  <31.023718, 39.101231, 21.286194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.263496, 39.110901, 21.289799>,  <31.663126, 39.127022, 21.295807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263496, 39.110901, 21.289799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009841, -0.125792, 0.992008,
		-0.041868, 0.991238, 0.125279,
		-0.999075, -0.040301, -0.015021,
		30.963774, 39.098812, 21.285292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452822, 39.544800, 21.800230>,  <31.663126, 39.127022, 21.295807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452822, 39.544800, 21.800230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144842, 39.298138, 21.734610>,  <30.960054, 39.150139, 21.695236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144842, 39.298138, 21.734610>,  <31.452822, 39.544800, 21.800230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144842, 39.298138, 21.734610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096098, -0.142105, 0.985176,
		-0.630827, 0.774301, 0.050154,
		-0.769950, -0.616656, -0.164052,
		30.913857, 39.113140, 21.685394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839220, 39.782146, 22.276466>,  <31.452822, 39.544800, 21.800230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839220, 39.782146, 22.276466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776577, 39.401600, 22.170347>,  <30.738991, 39.173271, 22.106676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776577, 39.401600, 22.170347>,  <30.839220, 39.782146, 22.276466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776577, 39.401600, 22.170347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000775, -0.268729, 0.963216,
		-0.987660, 0.150643, 0.042823,
		-0.156609, -0.951363, -0.265296,
		30.729593, 39.116192, 22.090759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201445, 39.465652, 22.722113>,  <30.839220, 39.782146, 22.276466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201445, 39.465652, 22.722113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413668, 39.157089, 22.581577>,  <30.541002, 38.971951, 22.497257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413668, 39.157089, 22.581577>,  <30.201445, 39.465652, 22.722113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413668, 39.157089, 22.581577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183159, -0.509023, 0.841040,
		-0.827624, -0.381869, -0.411356,
		0.530557, -0.771408, -0.351337,
		30.572834, 38.925667, 22.476175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799801, 38.876301, 22.850468>,  <30.201445, 39.465652, 22.722113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799801, 38.876301, 22.850468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.170416, 38.735897, 22.796331>,  <30.392786, 38.651653, 22.763849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.170416, 38.735897, 22.796331>,  <29.799801, 38.876301, 22.850468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170416, 38.735897, 22.796331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027014, -0.420904, 0.906703,
		-0.375226, -0.836440, -0.399467,
		0.926540, -0.351010, -0.135338,
		30.448378, 38.630592, 22.755730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766844, 38.287346, 23.303633>,  <29.799801, 38.876301, 22.850468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766844, 38.287346, 23.303633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.155087, 38.341881, 23.224300>,  <30.388031, 38.374603, 23.176701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.155087, 38.341881, 23.224300>,  <29.766844, 38.287346, 23.303633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155087, 38.341881, 23.224300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240675, -0.551218, 0.798896,
		-0.000402, -0.823146, -0.567829,
		0.970606, 0.136341, -0.198332,
		30.446268, 38.382782, 23.164801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124353, 37.605206, 23.406525>,  <29.766844, 38.287346, 23.303633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124353, 37.605206, 23.406525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394026, 37.897640, 23.448456>,  <30.555828, 38.073101, 23.473614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394026, 37.897640, 23.448456>,  <30.124353, 37.605206, 23.406525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394026, 37.897640, 23.448456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291243, -0.393594, 0.871930,
		0.678719, -0.557307, -0.478278,
		0.674179, 0.731091, 0.104828,
		30.596279, 38.116966, 23.479904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.963676, 41.936283, 19.241110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.298309, 41.750038, 19.356577>,  <34.499088, 41.638290, 19.425858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.298309, 41.750038, 19.356577>,  <33.963676, 41.936283, 19.241110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298309, 41.750038, 19.356577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019897, 0.500749, 0.865364,
		-0.547474, -0.729695, 0.409655,
		0.836586, -0.465613, 0.288666,
		34.549286, 41.610355, 19.443176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850140, 41.613453, 19.865622>,  <33.963676, 41.936283, 19.241110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850140, 41.613453, 19.865622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240234, 41.690777, 19.822639>,  <34.474293, 41.737171, 19.796850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240234, 41.690777, 19.822639>,  <33.850140, 41.613453, 19.865622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240234, 41.690777, 19.822639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045840, 0.298640, 0.953264,
		0.216362, -0.934584, 0.282384,
		0.975236, 0.193306, -0.107456,
		34.532806, 41.748768, 19.790403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228569, 41.263454, 20.325621>,  <33.850140, 41.613453, 19.865622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228569, 41.263454, 20.325621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.472294, 41.566212, 20.231081>,  <34.618530, 41.747864, 20.174358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.472294, 41.566212, 20.231081>,  <34.228569, 41.263454, 20.325621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472294, 41.566212, 20.231081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006276, 0.302661, 0.953077,
		0.792907, -0.579237, 0.189165,
		0.609310, 0.756889, -0.236347,
		34.655087, 41.793278, 20.160177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683258, 41.306404, 20.921808>,  <34.228569, 41.263454, 20.325621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683258, 41.306404, 20.921808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717075, 41.656746, 20.731762>,  <34.737366, 41.866951, 20.617735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717075, 41.656746, 20.731762>,  <34.683258, 41.306404, 20.921808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717075, 41.656746, 20.731762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066483, 0.470800, 0.879731,
		0.994199, -0.105964, -0.018426,
		0.084545, 0.875853, -0.475114,
		34.742439, 41.919502, 20.589228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232346, 41.617672, 21.239983>,  <34.683258, 41.306404, 20.921808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232346, 41.617672, 21.239983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.014427, 41.903835, 21.064991>,  <34.883678, 42.075535, 20.959995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.014427, 41.903835, 21.064991>,  <35.232346, 41.617672, 21.239983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014427, 41.903835, 21.064991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039943, 0.543244, 0.838624,
		0.837619, 0.439403, -0.324531,
		-0.544793, 0.715410, -0.437481,
		34.850990, 42.118458, 20.933746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467621, 42.254799, 21.598776>,  <35.232346, 41.617672, 21.239983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467621, 42.254799, 21.598776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.105816, 42.339077, 21.450468>,  <34.888733, 42.389645, 21.361483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.105816, 42.339077, 21.450468>,  <35.467621, 42.254799, 21.598776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105816, 42.339077, 21.450468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198369, 0.561770, 0.803159,
		0.377510, 0.800014, -0.466330,
		-0.904509, 0.210696, -0.370771,
		34.834465, 42.402287, 21.339237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393772, 43.017567, 21.830212>,  <35.467621, 42.254799, 21.598776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393772, 43.017567, 21.830212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.023182, 42.904743, 21.730541>,  <34.800827, 42.837048, 21.670740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.023182, 42.904743, 21.730541>,  <35.393772, 43.017567, 21.830212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023182, 42.904743, 21.730541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341962, 0.354371, 0.870335,
		-0.157187, 0.891551, -0.424770,
		-0.926474, -0.282060, -0.249174,
		34.745239, 42.820126, 21.655788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980255, 43.485844, 22.169104>,  <35.393772, 43.017567, 21.830212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980255, 43.485844, 22.169104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.739437, 43.174461, 22.098061>,  <34.594948, 42.987633, 22.055435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.739437, 43.174461, 22.098061>,  <34.980255, 43.485844, 22.169104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739437, 43.174461, 22.098061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516915, 0.210458, 0.829763,
		-0.608556, 0.591364, -0.529101,
		-0.602045, -0.778458, -0.177610,
		34.558823, 42.940926, 22.044777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288399, 43.734798, 22.379919>,  <34.980255, 43.485844, 22.169104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288399, 43.734798, 22.379919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.271278, 43.335201, 22.374620>,  <34.261005, 43.095444, 22.371441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.271278, 43.335201, 22.374620>,  <34.288399, 43.734798, 22.379919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271278, 43.335201, 22.374620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341113, 0.002149, 0.940020,
		-0.939047, 0.044757, -0.340862,
		-0.042805, -0.998996, -0.013249,
		34.258438, 43.035503, 22.370646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673683, 43.582062, 22.712152>,  <34.288399, 43.734798, 22.379919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673683, 43.582062, 22.712152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904633, 43.256268, 22.734955>,  <34.043201, 43.060791, 22.748636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904633, 43.256268, 22.734955>,  <33.673683, 43.582062, 22.712152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904633, 43.256268, 22.734955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237214, -0.100527, 0.966242,
		-0.781261, -0.571406, -0.251250,
		0.577374, -0.814487, 0.057007,
		34.077847, 43.011921, 22.752056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286133, 42.987270, 22.938850>,  <33.673683, 43.582062, 22.712152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286133, 42.987270, 22.938850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.668686, 42.915382, 23.030973>,  <33.898216, 42.872250, 23.086246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.668686, 42.915382, 23.030973>,  <33.286133, 42.987270, 22.938850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668686, 42.915382, 23.030973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258497, -0.153371, 0.953759,
		-0.136082, -0.971689, -0.193136,
		0.956379, -0.179715, 0.230308,
		33.955601, 42.861465, 23.100065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341732, 42.361568, 23.324789>,  <33.286133, 42.987270, 22.938850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341732, 42.361568, 23.324789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.684589, 42.551041, 23.405710>,  <33.890305, 42.664722, 23.454264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.684589, 42.551041, 23.405710>,  <33.341732, 42.361568, 23.324789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684589, 42.551041, 23.405710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110073, -0.215242, 0.970338,
		0.503172, -0.853991, -0.132356,
		0.857148, 0.473678, 0.202305,
		33.941734, 42.693146, 23.466402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000893, 41.640354, 23.249905>,  <33.341732, 42.361568, 23.324789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000893, 41.640354, 23.249905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.642052, 41.682415, 23.421553>,  <32.426746, 41.707653, 23.524542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.642052, 41.682415, 23.421553>,  <33.000893, 41.640354, 23.249905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642052, 41.682415, 23.421553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394680, 0.245799, -0.885331,
		-0.198572, -0.963600, -0.179006,
		-0.897105, 0.105152, 0.429122,
		32.372921, 41.713959, 23.550289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510464, 41.308006, 22.808050>,  <33.000893, 41.640354, 23.249905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510464, 41.308006, 22.808050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309090, 41.569088, 23.034512>,  <32.188267, 41.725739, 23.170387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309090, 41.569088, 23.034512>,  <32.510464, 41.308006, 22.808050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309090, 41.569088, 23.034512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545999, 0.267515, -0.793928,
		-0.669656, -0.708809, 0.221701,
		-0.503435, 0.652706, 0.566152,
		32.158058, 41.764900, 23.204357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843273, 41.266056, 22.562599>,  <32.510464, 41.308006, 22.808050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843273, 41.266056, 22.562599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856461, 41.615204, 22.757334>,  <31.864374, 41.824692, 22.874174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856461, 41.615204, 22.757334>,  <31.843273, 41.266056, 22.562599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856461, 41.615204, 22.757334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479008, 0.441312, -0.758811,
		-0.877191, -0.208179, 0.432663,
		0.032971, 0.872872, 0.486835,
		31.866352, 41.877064, 22.903385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177032, 41.482563, 22.529177>,  <31.843273, 41.266056, 22.562599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177032, 41.482563, 22.529177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.401848, 41.803234, 22.610590>,  <31.536737, 41.995636, 22.659437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.401848, 41.803234, 22.610590>,  <31.177032, 41.482563, 22.529177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401848, 41.803234, 22.610590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473656, 0.513694, -0.715380,
		-0.678057, 0.305667, 0.668436,
		0.562040, 0.801677, 0.203533,
		31.570459, 42.043736, 22.671650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757334, 42.008514, 22.546066>,  <31.177032, 41.482563, 22.529177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757334, 42.008514, 22.546066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.093914, 42.223515, 22.523973>,  <31.295862, 42.352516, 22.510717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.093914, 42.223515, 22.523973>,  <30.757334, 42.008514, 22.546066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093914, 42.223515, 22.523973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472357, 0.682105, -0.558221,
		-0.262370, 0.495806, 0.827851,
		0.841452, 0.537502, -0.055233,
		31.346350, 42.384766, 22.507404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541542, 42.683144, 22.662741>,  <30.757334, 42.008514, 22.546066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541542, 42.683144, 22.662741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.892595, 42.714424, 22.473576>,  <31.103228, 42.733192, 22.360077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.892595, 42.714424, 22.473576>,  <30.541542, 42.683144, 22.662741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892595, 42.714424, 22.473576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375031, 0.726458, -0.575857,
		0.298520, 0.682747, 0.666890,
		0.877632, 0.078200, -0.472914,
		31.155886, 42.737885, 22.331701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620256, 43.370640, 22.563810>,  <30.541542, 42.683144, 22.662741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620256, 43.370640, 22.563810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849199, 43.191174, 22.289261>,  <30.986565, 43.083496, 22.124531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849199, 43.191174, 22.289261>,  <30.620256, 43.370640, 22.563810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849199, 43.191174, 22.289261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298999, 0.665218, -0.684167,
		0.763548, 0.596813, 0.246593,
		0.572358, -0.448663, -0.686372,
		31.020906, 43.056576, 22.083349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785004, 43.879364, 22.057470>,  <30.620256, 43.370640, 22.563810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785004, 43.879364, 22.057470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.899715, 43.560284, 21.845272>,  <30.968542, 43.368835, 21.717953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.899715, 43.560284, 21.845272>,  <30.785004, 43.879364, 22.057470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899715, 43.560284, 21.845272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374513, 0.416336, -0.828495,
		0.881759, 0.436272, -0.179354,
		0.286777, -0.797704, -0.530498,
		30.985748, 43.320972, 21.686123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976759, 44.077053, 21.392086>,  <30.785004, 43.879364, 22.057470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976759, 44.077053, 21.392086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888371, 43.691292, 21.333996>,  <30.835337, 43.459835, 21.299141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888371, 43.691292, 21.333996>,  <30.976759, 44.077053, 21.392086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888371, 43.691292, 21.333996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500155, 0.239893, -0.832044,
		0.837268, -0.111222, -0.535362,
		-0.220971, -0.964407, -0.145226,
		30.822079, 43.401970, 21.290428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190367, 43.946774, 20.745365>,  <30.976759, 44.077053, 21.392086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190367, 43.946774, 20.745365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969698, 43.616699, 20.793896>,  <30.837297, 43.418655, 20.823013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969698, 43.616699, 20.793896>,  <31.190367, 43.946774, 20.745365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969698, 43.616699, 20.793896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505116, 0.214790, -0.835897,
		0.663715, -0.522424, -0.535310,
		-0.551671, -0.825190, 0.121325,
		30.804197, 43.369141, 20.830294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187355, 43.612362, 20.091997>,  <31.190367, 43.946774, 20.745365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187355, 43.612362, 20.091997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.880604, 43.438808, 20.281158>,  <30.696552, 43.334675, 20.394655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.880604, 43.438808, 20.281158>,  <31.187355, 43.612362, 20.091997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880604, 43.438808, 20.281158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546379, 0.054811, -0.835742,
		0.336696, -0.899300, -0.279099,
		-0.766880, -0.433885, 0.472904,
		30.650539, 43.308643, 20.423029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967955, 43.043133, 19.694614>,  <31.187355, 43.612362, 20.091997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967955, 43.043133, 19.694614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.659737, 43.145981, 19.927904>,  <30.474806, 43.207691, 20.067877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.659737, 43.145981, 19.927904>,  <30.967955, 43.043133, 19.694614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659737, 43.145981, 19.927904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615730, -0.063791, -0.785371,
		-0.164731, -0.964272, 0.207470,
		-0.770546, 0.257121, 0.583223,
		30.428574, 43.223118, 20.102871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369497, 42.715931, 19.453806>,  <30.967955, 43.043133, 19.694614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369497, 42.715931, 19.453806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220463, 43.015560, 19.672920>,  <30.131042, 43.195339, 19.804388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220463, 43.015560, 19.672920>,  <30.369497, 42.715931, 19.453806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220463, 43.015560, 19.672920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711022, 0.148897, -0.687224,
		-0.596346, -0.645535, 0.477133,
		-0.372584, 0.749075, 0.547784,
		30.108688, 43.240284, 19.837255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398359, 41.901241, 19.564892>,  <30.369497, 42.715931, 19.453806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398359, 41.901241, 19.564892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.387733, 41.606632, 19.294537>,  <30.381359, 41.429867, 19.132324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.387733, 41.606632, 19.294537>,  <30.398359, 41.901241, 19.564892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387733, 41.606632, 19.294537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045114, -0.676320, 0.735225,
		-0.998628, -0.010962, 0.051193,
		-0.026564, -0.736526, -0.675887,
		30.379765, 41.385674, 19.091770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802736, 41.447071, 19.789705>,  <30.398359, 41.901241, 19.564892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802736, 41.447071, 19.789705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067770, 41.239822, 19.573360>,  <30.226791, 41.115475, 19.443554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067770, 41.239822, 19.573360>,  <29.802736, 41.447071, 19.789705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067770, 41.239822, 19.573360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123768, -0.787939, 0.603187,
		-0.738687, -0.332723, -0.586205,
		0.662588, -0.518120, -0.540860,
		30.266546, 41.084385, 19.411102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522470, 40.791592, 19.778658>,  <29.802736, 41.447071, 19.789705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522470, 40.791592, 19.778658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903284, 40.716518, 19.681988>,  <30.131773, 40.671474, 19.623985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903284, 40.716518, 19.681988>,  <29.522470, 40.791592, 19.778658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903284, 40.716518, 19.681988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040110, -0.706446, 0.706629,
		-0.303350, -0.682429, -0.665033,
		0.952034, -0.187682, -0.241673,
		30.188894, 40.660213, 19.609486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515907, 40.052193, 19.784691>,  <29.522470, 40.791592, 19.778658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515907, 40.052193, 19.784691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.887884, 40.197456, 19.807749>,  <30.111071, 40.284615, 19.821583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.887884, 40.197456, 19.807749>,  <29.515907, 40.052193, 19.784691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887884, 40.197456, 19.807749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238659, -0.715374, 0.656721,
		0.279732, -0.596955, -0.751927,
		0.929942, 0.363160, 0.057644,
		30.166866, 40.306404, 19.825043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806749, 39.519817, 19.529593>,  <29.515907, 40.052193, 19.784691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806749, 39.519817, 19.529593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.062469, 39.732239, 19.752043>,  <30.215900, 39.859692, 19.885513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.062469, 39.732239, 19.752043>,  <29.806749, 39.519817, 19.529593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062469, 39.732239, 19.752043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224633, -0.820651, 0.525425,
		0.735416, -0.210979, -0.643934,
		0.639299, 0.531055, 0.556127,
		30.254259, 39.891556, 19.918880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541368, 39.157658, 19.589085>,  <29.806749, 39.519817, 19.529593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541368, 39.157658, 19.589085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525768, 39.397202, 19.909046>,  <30.516409, 39.540928, 20.101023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525768, 39.397202, 19.909046>,  <30.541368, 39.157658, 19.589085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525768, 39.397202, 19.909046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422436, -0.715577, 0.556325,
		0.905553, 0.359604, -0.225073,
		-0.038999, 0.598861, 0.799903,
		30.514069, 39.576859, 20.149017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053801, 38.880753, 19.975510>,  <30.541368, 39.157658, 19.589085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053801, 38.880753, 19.975510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843924, 39.101425, 20.234844>,  <30.717997, 39.233829, 20.390446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.843924, 39.101425, 20.234844>,  <31.053801, 38.880753, 19.975510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843924, 39.101425, 20.234844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358094, -0.547902, 0.756023,
		0.772312, 0.628846, 0.089925,
		-0.524693, 0.551684, 0.648338,
		30.686516, 39.266930, 20.429346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521069, 39.065872, 20.566578>,  <31.053801, 38.880753, 19.975510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521069, 39.065872, 20.566578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149416, 39.120422, 20.704052>,  <30.926424, 39.153152, 20.786535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149416, 39.120422, 20.704052>,  <31.521069, 39.065872, 20.566578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149416, 39.120422, 20.704052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184129, -0.635399, 0.749910,
		0.320645, 0.760046, 0.565258,
		-0.929130, 0.136375, 0.343684,
		30.870676, 39.161335, 20.807158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261929, 39.300385, 20.772923>,  <31.521069, 39.065872, 20.566578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261929, 39.300385, 20.772923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.566803, 39.097500, 20.612022>,  <32.749729, 38.975769, 20.515482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.566803, 39.097500, 20.612022>,  <32.261929, 39.300385, 20.772923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566803, 39.097500, 20.612022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096484, 0.703437, -0.704179,
		0.640126, 0.497905, 0.585089,
		0.762187, -0.507215, -0.402248,
		32.795460, 38.945335, 20.491348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627743, 39.805973, 20.396061>,  <32.261929, 39.300385, 20.772923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627743, 39.805973, 20.396061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.785030, 39.463421, 20.262205>,  <32.879402, 39.257889, 20.181892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.785030, 39.463421, 20.262205>,  <32.627743, 39.805973, 20.396061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785030, 39.463421, 20.262205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179210, 0.428363, -0.885657,
		0.901810, 0.288287, 0.321914,
		0.393220, -0.856385, -0.334638,
		32.902996, 39.206505, 20.161814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234818, 40.038837, 20.010170>,  <32.627743, 39.805973, 20.396061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234818, 40.038837, 20.010170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151726, 39.676819, 19.861719>,  <33.101871, 39.459606, 19.772650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151726, 39.676819, 19.861719>,  <33.234818, 40.038837, 20.010170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151726, 39.676819, 19.861719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268003, 0.312226, -0.911422,
		0.940756, -0.288795, 0.177696,
		-0.207732, -0.905049, -0.371126,
		33.089405, 39.405304, 19.750381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771660, 39.889999, 19.501911>,  <33.234818, 40.038837, 20.010170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771660, 39.889999, 19.501911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.460865, 39.656250, 19.408276>,  <33.274387, 39.515999, 19.352095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.460865, 39.656250, 19.408276>,  <33.771660, 39.889999, 19.501911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460865, 39.656250, 19.408276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133010, 0.211066, -0.968380,
		0.615304, -0.783555, -0.086268,
		-0.776987, -0.584374, -0.234090,
		33.227768, 39.480938, 19.338049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112175, 39.579350, 18.900379>,  <33.771660, 39.889999, 19.501911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112175, 39.579350, 18.900379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.721840, 39.505390, 18.853825>,  <33.487637, 39.461014, 18.825891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.721840, 39.505390, 18.853825>,  <34.112175, 39.579350, 18.900379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721840, 39.505390, 18.853825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065542, 0.260434, -0.963265,
		0.208411, -0.947623, -0.242024,
		-0.975843, -0.184892, -0.116386,
		33.429089, 39.449921, 18.818909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062534, 39.195419, 18.285820>,  <34.112175, 39.579350, 18.900379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062534, 39.195419, 18.285820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.717030, 39.378399, 18.370346>,  <33.509727, 39.488186, 18.421062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.717030, 39.378399, 18.370346>,  <34.062534, 39.195419, 18.285820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717030, 39.378399, 18.370346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082998, 0.284479, -0.955083,
		-0.497018, -0.842503, -0.207755,
		-0.863762, 0.457450, 0.211317,
		33.457901, 39.515633, 18.433741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638012, 38.950932, 17.830065>,  <34.062534, 39.195419, 18.285820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638012, 38.950932, 17.830065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.480064, 39.293980, 17.961864>,  <33.385296, 39.499809, 18.040943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.480064, 39.293980, 17.961864>,  <33.638012, 38.950932, 17.830065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480064, 39.293980, 17.961864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040701, 0.374619, -0.926285,
		-0.917835, -0.352352, -0.182832,
		-0.394871, 0.857618, 0.329497,
		33.361603, 39.551266, 18.060713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991386, 39.145683, 17.368977>,  <33.638012, 38.950932, 17.830065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991386, 39.145683, 17.368977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.109432, 39.485966, 17.542965>,  <33.180260, 39.690136, 17.647358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.109432, 39.485966, 17.542965>,  <32.991386, 39.145683, 17.368977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109432, 39.485966, 17.542965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129322, 0.415492, -0.900357,
		-0.946669, 0.321961, 0.012603,
		0.295116, 0.850710, 0.434970,
		33.197968, 39.741180, 17.673456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654537, 39.645527, 17.050907>,  <32.991386, 39.145683, 17.368977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654537, 39.645527, 17.050907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.004620, 39.761944, 17.205469>,  <33.214668, 39.831795, 17.298206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.004620, 39.761944, 17.205469>,  <32.654537, 39.645527, 17.050907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004620, 39.761944, 17.205469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214341, 0.482774, -0.849110,
		-0.433671, 0.825969, 0.360146,
		0.875207, 0.291041, 0.386404,
		33.267181, 39.849255, 17.321390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.324757, 35.935349, 33.510632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542149, 36.184124, 33.285126>,  <35.672585, 36.333389, 33.149822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542149, 36.184124, 33.285126>,  <35.324757, 35.935349, 33.510632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542149, 36.184124, 33.285126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662215, -0.095065, -0.743259,
		-0.515854, 0.777276, 0.360191,
		0.543475, 0.621937, -0.563763,
		35.705193, 36.370705, 33.115997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850178, 36.298473, 33.157917>,  <35.324757, 35.935349, 33.510632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850178, 36.298473, 33.157917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185951, 36.387463, 32.959583>,  <35.387417, 36.440857, 32.840584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185951, 36.387463, 32.959583>,  <34.850178, 36.298473, 33.157917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185951, 36.387463, 32.959583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510706, 0.010996, -0.859685,
		-0.185804, 0.974877, 0.122849,
		0.839438, 0.222473, -0.495833,
		35.437782, 36.454205, 32.810833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747681, 36.969616, 32.703011>,  <34.850178, 36.298473, 33.157917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747681, 36.969616, 32.703011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065990, 36.788479, 32.542171>,  <35.256977, 36.679798, 32.445667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065990, 36.788479, 32.542171>,  <34.747681, 36.969616, 32.703011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065990, 36.788479, 32.542171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395524, 0.114153, -0.911334,
		0.458589, 0.884254, -0.088269,
		0.795774, -0.452840, -0.402093,
		35.304722, 36.652626, 32.421543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975960, 37.394733, 32.124779>,  <34.747681, 36.969616, 32.703011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975960, 37.394733, 32.124779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164429, 37.053764, 32.034115>,  <35.277508, 36.849182, 31.979717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164429, 37.053764, 32.034115>,  <34.975960, 37.394733, 32.124779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164429, 37.053764, 32.034115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161967, 0.168984, -0.972219,
		0.867044, 0.494792, -0.058444,
		0.471170, -0.852423, -0.226657,
		35.305779, 36.798038, 31.966118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325531, 37.593357, 31.610165>,  <34.975960, 37.394733, 32.124779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325531, 37.593357, 31.610165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292931, 37.195099, 31.592047>,  <35.273369, 36.956146, 31.581177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292931, 37.195099, 31.592047>,  <35.325531, 37.593357, 31.610165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292931, 37.195099, 31.592047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167591, 0.058489, -0.984120,
		0.982482, -0.072620, -0.171628,
		-0.081505, -0.995643, -0.045294,
		35.268478, 36.896404, 31.578459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675224, 37.393215, 31.041567>,  <35.325531, 37.593357, 31.610165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675224, 37.393215, 31.041567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430870, 37.077686, 31.068644>,  <35.284256, 36.888371, 31.084890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430870, 37.077686, 31.068644>,  <35.675224, 37.393215, 31.041567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430870, 37.077686, 31.068644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116044, 0.004633, -0.993233,
		0.783169, -0.614607, -0.094368,
		-0.610885, -0.788820, 0.067693,
		35.247604, 36.841042, 31.088951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877174, 36.971134, 30.487646>,  <35.675224, 37.393215, 31.041567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877174, 36.971134, 30.487646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508118, 36.832809, 30.555927>,  <35.286682, 36.749813, 30.596897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508118, 36.832809, 30.555927>,  <35.877174, 36.971134, 30.487646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508118, 36.832809, 30.555927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191932, 0.027822, -0.981014,
		0.334497, -0.937891, -0.092043,
		-0.922645, -0.345812, 0.170705,
		35.231323, 36.729065, 30.607140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725990, 36.512356, 29.874378>,  <35.877174, 36.971134, 30.487646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725990, 36.512356, 29.874378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366531, 36.558666, 30.043623>,  <35.150856, 36.586452, 30.145170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366531, 36.558666, 30.043623>,  <35.725990, 36.512356, 29.874378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366531, 36.558666, 30.043623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430030, -0.042092, -0.901833,
		-0.086608, -0.992382, 0.087616,
		-0.898651, 0.115784, 0.423109,
		35.096935, 36.593399, 30.170555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252735, 35.901855, 29.751688>,  <35.725990, 36.512356, 29.874378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252735, 35.901855, 29.751688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036987, 36.235718, 29.796284>,  <34.907539, 36.436035, 29.823042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036987, 36.235718, 29.796284>,  <35.252735, 35.901855, 29.751688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036987, 36.235718, 29.796284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337481, -0.092965, -0.936730,
		-0.771481, -0.542873, 0.331823,
		-0.539373, 0.834654, 0.111489,
		34.875175, 36.486115, 29.829731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568050, 35.693138, 29.445820>,  <35.252735, 35.901855, 29.751688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568050, 35.693138, 29.445820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559109, 36.091957, 29.475197>,  <34.553745, 36.331249, 29.492823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559109, 36.091957, 29.475197>,  <34.568050, 35.693138, 29.445820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559109, 36.091957, 29.475197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435450, 0.056419, -0.898443,
		-0.899935, -0.052063, 0.432904,
		-0.022352, 0.997049, 0.073444,
		34.552402, 36.391071, 29.497231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859791, 35.901733, 29.281401>,  <34.568050, 35.693138, 29.445820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859791, 35.901733, 29.281401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084320, 36.221546, 29.195917>,  <34.219036, 36.413433, 29.144627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084320, 36.221546, 29.195917>,  <33.859791, 35.901733, 29.281401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084320, 36.221546, 29.195917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342417, -0.010720, -0.939487,
		-0.753440, 0.600529, 0.267756,
		0.561319, 0.799531, -0.213709,
		34.252716, 36.461407, 29.131805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380199, 36.337906, 28.833563>,  <33.859791, 35.901733, 29.281401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380199, 36.337906, 28.833563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742096, 36.492718, 28.762402>,  <33.959232, 36.585606, 28.719706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742096, 36.492718, 28.762402>,  <33.380199, 36.337906, 28.833563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742096, 36.492718, 28.762402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256561, 0.161735, -0.952900,
		-0.340030, 0.907771, 0.245626,
		0.904741, 0.387033, -0.177903,
		34.013519, 36.608826, 28.709030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729038, 36.781227, 28.976536>,  <33.380199, 36.337906, 28.833563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729038, 36.781227, 28.976536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356857, 36.635899, 28.995550>,  <32.133549, 36.548702, 29.006958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356857, 36.635899, 28.995550>,  <32.729038, 36.781227, 28.976536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356857, 36.635899, 28.995550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121767, -0.184238, 0.975310,
		-0.345590, 0.913267, 0.215665,
		-0.930452, -0.363318, 0.047535,
		32.077721, 36.526901, 29.009811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425152, 37.084831, 29.517614>,  <32.729038, 36.781227, 28.976536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425152, 37.084831, 29.517614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204372, 36.755203, 29.466595>,  <32.071903, 36.557426, 29.435984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204372, 36.755203, 29.466595>,  <32.425152, 37.084831, 29.517614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204372, 36.755203, 29.466595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092111, -0.212273, 0.972859,
		-0.828775, 0.525220, 0.193070,
		-0.551948, -0.824066, -0.127548,
		32.038788, 36.507984, 29.428329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799582, 37.113792, 30.003649>,  <32.425152, 37.084831, 29.517614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799582, 37.113792, 30.003649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832161, 36.732723, 29.886496>,  <31.851709, 36.504082, 29.816204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832161, 36.732723, 29.886496>,  <31.799582, 37.113792, 30.003649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832161, 36.732723, 29.886496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115549, -0.300905, 0.946628,
		-0.989957, -0.043260, -0.134589,
		0.081449, -0.952673, -0.292884,
		31.856596, 36.446922, 29.798630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332502, 36.738857, 30.484894>,  <31.799582, 37.113792, 30.003649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332502, 36.738857, 30.484894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561504, 36.436440, 30.358000>,  <31.698906, 36.254990, 30.281862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561504, 36.436440, 30.358000>,  <31.332502, 36.738857, 30.484894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561504, 36.436440, 30.358000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031555, -0.406951, 0.912905,
		-0.819295, -0.512631, -0.256838,
		0.572504, -0.756042, -0.317237,
		31.733255, 36.209625, 30.262829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914474, 36.180191, 30.643856>,  <31.332502, 36.738857, 30.484894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914474, 36.180191, 30.643856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.293545, 36.056664, 30.611494>,  <31.520987, 35.982548, 30.592077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.293545, 36.056664, 30.611494>,  <30.914474, 36.180191, 30.643856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293545, 36.056664, 30.611494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059675, -0.420324, 0.905409,
		-0.313609, -0.853206, -0.416759,
		0.947675, -0.308815, -0.080902,
		31.577847, 35.964020, 30.587223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848495, 35.473381, 30.784756>,  <30.914474, 36.180191, 30.643856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848495, 35.473381, 30.784756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214642, 35.613934, 30.863375>,  <31.434330, 35.698265, 30.910547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214642, 35.613934, 30.863375>,  <30.848495, 35.473381, 30.784756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214642, 35.613934, 30.863375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025956, -0.435658, 0.899738,
		0.401784, -0.828692, -0.389667,
		0.915367, 0.351386, 0.196550,
		31.489252, 35.719349, 30.922340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967432, 35.032009, 31.287634>,  <30.848495, 35.473381, 30.784756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967432, 35.032009, 31.287634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246134, 35.313461, 31.343412>,  <31.413355, 35.482330, 31.376879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246134, 35.313461, 31.343412>,  <30.967432, 35.032009, 31.287634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246134, 35.313461, 31.343412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003060, -0.197315, 0.980335,
		0.717306, -0.682624, -0.139633,
		0.696752, 0.703627, 0.139446,
		31.455160, 35.524548, 31.385246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441063, 34.764950, 31.809158>,  <30.967432, 35.032009, 31.287634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441063, 34.764950, 31.809158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.489594, 35.161983, 31.811935>,  <31.518711, 35.400204, 31.813602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.489594, 35.161983, 31.811935>,  <31.441063, 34.764950, 31.809158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489594, 35.161983, 31.811935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063572, -0.014750, 0.997868,
		0.990575, -0.120624, -0.064890,
		0.121324, 0.992589, 0.006942,
		31.525991, 35.459759, 31.814018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827385, 34.797684, 32.314590>,  <31.441063, 34.764950, 31.809158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827385, 34.797684, 32.314590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675386, 35.165287, 32.272602>,  <31.584187, 35.385849, 32.247410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675386, 35.165287, 32.272602>,  <31.827385, 34.797684, 32.314590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675386, 35.165287, 32.272602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039936, 0.129682, 0.990751,
		0.924125, 0.372292, -0.085981,
		-0.379998, 0.919011, -0.104974,
		31.561386, 35.440990, 32.241108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224991, 35.272865, 32.698112>,  <31.827385, 34.797684, 32.314590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224991, 35.272865, 32.698112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876066, 35.465393, 32.663700>,  <31.666710, 35.580910, 32.643051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876066, 35.465393, 32.663700>,  <32.224991, 35.272865, 32.698112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876066, 35.465393, 32.663700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018291, 0.207959, 0.977966,
		0.488604, 0.851520, -0.190209,
		-0.872314, 0.481317, -0.086035,
		31.614372, 35.609787, 32.637890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424301, 35.850544, 33.163944>,  <32.224991, 35.272865, 32.698112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424301, 35.850544, 33.163944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025845, 35.855045, 33.129128>,  <31.786770, 35.857746, 33.108238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025845, 35.855045, 33.129128>,  <32.424301, 35.850544, 33.163944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025845, 35.855045, 33.129128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067643, 0.533502, 0.843090,
		0.055928, 0.845724, -0.530682,
		-0.996141, 0.011256, -0.087045,
		31.727003, 35.858421, 33.103012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248169, 36.529072, 33.309864>,  <32.424301, 35.850544, 33.163944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248169, 36.529072, 33.309864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903725, 36.326004, 33.320896>,  <31.697058, 36.204163, 33.327515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903725, 36.326004, 33.320896>,  <32.248169, 36.529072, 33.309864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903725, 36.326004, 33.320896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224585, 0.428483, 0.875193,
		-0.456122, 0.747447, -0.482987,
		-0.861112, -0.507667, 0.027576,
		31.645391, 36.173702, 33.329170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682491, 37.023037, 33.406757>,  <32.248169, 36.529072, 33.309864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682491, 37.023037, 33.406757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568077, 36.667984, 33.551144>,  <31.499428, 36.454952, 33.637775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568077, 36.667984, 33.551144>,  <31.682491, 37.023037, 33.406757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568077, 36.667984, 33.551144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279638, 0.437631, 0.854565,
		-0.916507, 0.143499, -0.373394,
		-0.286038, -0.887630, 0.360965,
		31.482265, 36.401695, 33.659431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998602, 37.107414, 33.594872>,  <31.682491, 37.023037, 33.406757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998602, 37.107414, 33.594872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174179, 36.804775, 33.788738>,  <31.279526, 36.623192, 33.905056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174179, 36.804775, 33.788738>,  <30.998602, 37.107414, 33.594872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174179, 36.804775, 33.788738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135906, 0.477292, 0.868172,
		-0.888178, -0.446944, 0.106677,
		0.438940, -0.756593, 0.484662,
		31.305861, 36.577797, 33.934135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408291, 37.731621, 33.314957>,  <30.998602, 37.107414, 33.594872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408291, 37.731621, 33.314957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.640495, 38.030777, 33.186172>,  <31.779818, 38.210270, 33.108902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.640495, 38.030777, 33.186172>,  <31.408291, 37.731621, 33.314957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640495, 38.030777, 33.186172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367126, 0.112529, 0.923340,
		0.726790, -0.654211, -0.209246,
		0.580513, 0.747894, -0.321963,
		31.814650, 38.255146, 33.089584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614704, 38.371929, 33.623196>,  <31.408291, 37.731621, 33.314957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614704, 38.371929, 33.623196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915129, 38.613640, 33.729599>,  <32.095383, 38.758667, 33.793442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915129, 38.613640, 33.729599>,  <31.614704, 38.371929, 33.623196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915129, 38.613640, 33.729599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046723, 0.450541, -0.891532,
		-0.658579, 0.657165, 0.366616,
		0.751059, 0.604274, 0.266012,
		32.140446, 38.794922, 33.809402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374817, 39.094803, 33.564240>,  <31.614704, 38.371929, 33.623196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374817, 39.094803, 33.564240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773834, 39.098469, 33.536461>,  <32.013245, 39.100666, 33.519794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773834, 39.098469, 33.536461>,  <31.374817, 39.094803, 33.564240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773834, 39.098469, 33.536461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059755, 0.628653, -0.775386,
		0.036555, 0.777631, 0.627656,
		0.997543, 0.009161, -0.069448,
		32.073097, 39.101215, 33.515625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459719, 39.702148, 33.281788>,  <31.374817, 39.094803, 33.564240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459719, 39.702148, 33.281788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819302, 39.539032, 33.217804>,  <32.035049, 39.441162, 33.179413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819302, 39.539032, 33.217804>,  <31.459719, 39.702148, 33.281788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819302, 39.539032, 33.217804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095432, 0.538731, -0.837055,
		0.427518, 0.737210, 0.523211,
		0.898955, -0.407788, -0.159964,
		32.088989, 39.416695, 33.169815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892265, 40.256367, 33.079369>,  <31.459719, 39.702148, 33.281788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892265, 40.256367, 33.079369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083321, 39.928955, 32.951702>,  <32.197952, 39.732506, 32.875103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083321, 39.928955, 32.951702>,  <31.892265, 40.256367, 33.079369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083321, 39.928955, 32.951702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271633, 0.483069, -0.832382,
		0.835510, 0.310882, 0.453073,
		0.477638, -0.818533, -0.319163,
		32.226612, 39.683395, 32.855953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427242, 40.490776, 32.631725>,  <31.892265, 40.256367, 33.079369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427242, 40.490776, 32.631725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.373245, 40.109245, 32.524395>,  <32.340847, 39.880329, 32.459999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.373245, 40.109245, 32.524395>,  <32.427242, 40.490776, 32.631725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373245, 40.109245, 32.524395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011004, 0.272228, -0.962170,
		0.990785, -0.126934, -0.047245,
		-0.134993, -0.953824, -0.268323,
		32.332748, 39.823097, 32.443897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895458, 40.357567, 32.049328>,  <32.427242, 40.490776, 32.631725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895458, 40.357567, 32.049328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643795, 40.049984, 32.003956>,  <32.492798, 39.865433, 31.976732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643795, 40.049984, 32.003956>,  <32.895458, 40.357567, 32.049328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643795, 40.049984, 32.003956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198633, 0.300145, -0.932983,
		0.751472, -0.564459, -0.341578,
		-0.629153, -0.768960, -0.113430,
		32.455048, 39.819298, 31.969927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100220, 40.066853, 31.357140>,  <32.895458, 40.357567, 32.049328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100220, 40.066853, 31.357140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735111, 39.924416, 31.437185>,  <32.516045, 39.838951, 31.485212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.735111, 39.924416, 31.437185>,  <33.100220, 40.066853, 31.357140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735111, 39.924416, 31.437185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251736, 0.104589, -0.962128,
		0.321682, -0.928577, -0.185108,
		-0.912771, -0.356097, 0.200112,
		32.461281, 39.817589, 31.497219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959877, 39.492851, 30.863338>,  <33.100220, 40.066853, 31.357140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959877, 39.492851, 30.863338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611351, 39.643230, 30.989496>,  <32.402233, 39.733456, 31.065191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611351, 39.643230, 30.989496>,  <32.959877, 39.492851, 30.863338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611351, 39.643230, 30.989496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342374, -0.005286, -0.939549,
		-0.351550, -0.926628, 0.133319,
		-0.871317, 0.375944, 0.315394,
		32.349957, 39.756012, 31.084114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446415, 39.145805, 30.491251>,  <32.959877, 39.492851, 30.863338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446415, 39.145805, 30.491251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.268547, 39.470467, 30.642771>,  <32.161827, 39.665264, 30.733683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.268547, 39.470467, 30.642771>,  <32.446415, 39.145805, 30.491251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268547, 39.470467, 30.642771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332874, 0.242868, -0.911159,
		-0.831541, -0.531260, 0.162180,
		-0.444673, 0.811651, 0.378797,
		32.135143, 39.713963, 30.756411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775419, 39.150299, 30.193480>,  <32.446415, 39.145805, 30.491251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775419, 39.150299, 30.193480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842087, 39.524353, 30.318535>,  <31.882088, 39.748787, 30.393568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842087, 39.524353, 30.318535>,  <31.775419, 39.150299, 30.193480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842087, 39.524353, 30.318535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423588, 0.354229, -0.833723,
		-0.890390, 0.006528, 0.455152,
		0.166671, 0.935136, 0.312637,
		31.892088, 39.804893, 30.412327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240988, 39.509918, 29.722261>,  <31.775419, 39.150299, 30.193480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240988, 39.509918, 29.722261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477850, 39.795292, 29.872124>,  <31.619967, 39.966515, 29.962042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477850, 39.795292, 29.872124>,  <31.240988, 39.509918, 29.722261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477850, 39.795292, 29.872124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009288, 0.470947, -0.882113,
		-0.805771, 0.518867, 0.285500,
		0.592154, 0.713432, 0.374657,
		31.655497, 40.009323, 29.984520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876829, 40.191513, 29.702084>,  <31.240988, 39.509918, 29.722261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876829, 40.191513, 29.702084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.271580, 40.252365, 29.680414>,  <31.508430, 40.288876, 29.667412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.271580, 40.252365, 29.680414>,  <30.876829, 40.191513, 29.702084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271580, 40.252365, 29.680414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119171, 0.459662, -0.880062,
		-0.108982, 0.874967, 0.471758,
		0.986875, 0.152130, -0.054176,
		31.567642, 40.298004, 29.664162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978096, 40.866344, 29.536928>,  <30.876829, 40.191513, 29.702084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978096, 40.866344, 29.536928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317339, 40.679520, 29.436871>,  <31.520884, 40.567425, 29.376837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317339, 40.679520, 29.436871>,  <30.978096, 40.866344, 29.536928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317339, 40.679520, 29.436871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065701, 0.561188, -0.825077,
		0.525739, 0.683317, 0.506633,
		0.848105, -0.467061, -0.250143,
		31.571770, 40.539402, 29.361828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357843, 41.385700, 29.374546>,  <30.978096, 40.866344, 29.536928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357843, 41.385700, 29.374546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545574, 41.081692, 29.194723>,  <31.658213, 40.899288, 29.086830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545574, 41.081692, 29.194723>,  <31.357843, 41.385700, 29.374546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545574, 41.081692, 29.194723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091116, 0.464708, -0.880763,
		0.878311, 0.454328, 0.148850,
		0.469327, -0.760021, -0.449555,
		31.686373, 40.853687, 29.059856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847395, 41.704674, 28.950886>,  <31.357843, 41.385700, 29.374546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847395, 41.704674, 28.950886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.812946, 41.334938, 28.802197>,  <31.792276, 41.113098, 28.712982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.812946, 41.334938, 28.802197>,  <31.847395, 41.704674, 28.950886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812946, 41.334938, 28.802197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137531, 0.380569, -0.914468,
		0.986746, -0.027633, -0.159901,
		-0.086123, -0.924340, -0.371724,
		31.787109, 41.057636, 28.690680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325565, 41.757992, 28.390938>,  <31.847395, 41.704674, 28.950886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325565, 41.757992, 28.390938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089924, 41.442047, 28.322729>,  <31.948540, 41.252480, 28.281805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089924, 41.442047, 28.322729>,  <32.325565, 41.757992, 28.390938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089924, 41.442047, 28.322729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071728, 0.261305, -0.962587,
		0.804869, -0.554831, -0.210591,
		-0.589102, -0.789862, -0.170520,
		31.913193, 41.205090, 28.271574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681339, 41.419781, 27.917076>,  <32.325565, 41.757992, 28.390938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681339, 41.419781, 27.917076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297619, 41.307762, 27.902584>,  <32.067387, 41.240551, 27.893888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297619, 41.307762, 27.902584>,  <32.681339, 41.419781, 27.917076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297619, 41.307762, 27.902584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025468, 0.213580, -0.976593,
		0.281233, -0.935925, -0.212020,
		-0.959302, -0.280050, -0.036230,
		32.009827, 41.223747, 27.891716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742016, 40.901100, 27.418741>,  <32.681339, 41.419781, 27.917076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742016, 40.901100, 27.418741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359943, 41.018776, 27.431856>,  <32.130699, 41.089382, 27.439726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359943, 41.018776, 27.431856>,  <32.742016, 40.901100, 27.418741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359943, 41.018776, 27.431856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034495, -0.000616, -0.999405,
		-0.293998, -0.955746, 0.010737,
		-0.955183, 0.294194, 0.032787,
		32.073387, 41.107033, 27.441692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318714, 40.374203, 27.178585>,  <32.742016, 40.901100, 27.418741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318714, 40.374203, 27.178585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100426, 40.706295, 27.133144>,  <31.969454, 40.905552, 27.105879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100426, 40.706295, 27.133144>,  <32.318714, 40.374203, 27.178585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100426, 40.706295, 27.133144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089891, -0.192788, -0.977115,
		-0.833132, -0.523019, 0.179838,
		-0.545720, 0.830232, -0.113603,
		31.936710, 40.955364, 27.099064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854687, 40.202366, 26.716774>,  <32.318714, 40.374203, 27.178585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854687, 40.202366, 26.716774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851662, 40.602203, 26.705793>,  <31.849846, 40.842106, 26.699205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851662, 40.602203, 26.705793>,  <31.854687, 40.202366, 26.716774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851662, 40.602203, 26.705793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026070, -0.027245, -0.999289,
		-0.999631, -0.008272, -0.025853,
		-0.007562, 0.999594, -0.027451,
		31.849394, 40.902081, 26.697557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381310, 40.442181, 26.157125>,  <31.854687, 40.202366, 26.716774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381310, 40.442181, 26.157125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648699, 40.730190, 26.231646>,  <31.809132, 40.902996, 26.276358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648699, 40.730190, 26.231646>,  <31.381310, 40.442181, 26.157125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648699, 40.730190, 26.231646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001386, 0.249283, -0.968430,
		-0.743736, 0.647626, 0.165641,
		0.668472, 0.720027, 0.186298,
		31.849241, 40.946198, 26.287535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059135, 41.016632, 25.779182>,  <31.381310, 40.442181, 26.157125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059135, 41.016632, 25.779182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442808, 41.094139, 25.861568>,  <31.673012, 41.140644, 25.910999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442808, 41.094139, 25.861568>,  <31.059135, 41.016632, 25.779182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442808, 41.094139, 25.861568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139012, 0.311172, -0.940132,
		-0.246258, 0.930390, 0.271535,
		0.959183, 0.193768, 0.205964,
		31.730564, 41.152271, 25.923357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137066, 41.647087, 25.436710>,  <31.059135, 41.016632, 25.779182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137066, 41.647087, 25.436710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509058, 41.523098, 25.515764>,  <31.732252, 41.448704, 25.563196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509058, 41.523098, 25.515764>,  <31.137066, 41.647087, 25.436710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509058, 41.523098, 25.515764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264919, 0.192369, -0.944887,
		0.254868, 0.931082, 0.261016,
		0.929979, -0.309969, 0.197633,
		31.788052, 41.430107, 25.575054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575272, 42.212944, 25.498968>,  <31.137066, 41.647087, 25.436710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575272, 42.212944, 25.498968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784903, 41.887630, 25.397848>,  <31.910681, 41.692440, 25.337175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784903, 41.887630, 25.397848>,  <31.575272, 42.212944, 25.498968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784903, 41.887630, 25.397848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162563, 0.386896, -0.907681,
		0.836013, 0.434598, 0.334973,
		0.524076, -0.813287, -0.252801,
		31.942125, 41.643642, 25.322008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193359, 42.410339, 25.164948>,  <31.575272, 42.212944, 25.498968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193359, 42.410339, 25.164948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206856, 42.030018, 25.041767>,  <32.214954, 41.801826, 24.967859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206856, 42.030018, 25.041767>,  <32.193359, 42.410339, 25.164948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206856, 42.030018, 25.041767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119283, 0.309756, -0.943304,
		0.992287, -0.004910, 0.123865,
		0.033737, -0.950804, -0.307952,
		32.216976, 41.744778, 24.949381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806763, 42.366707, 24.602318>,  <32.193359, 42.410339, 25.164948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806763, 42.366707, 24.602318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.613564, 42.023838, 24.530804>,  <32.497643, 41.818115, 24.487894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.613564, 42.023838, 24.530804>,  <32.806763, 42.366707, 24.602318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613564, 42.023838, 24.530804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043662, 0.180351, -0.982633,
		0.874533, -0.482415, -0.049683,
		-0.482997, -0.857175, -0.178786,
		32.468666, 41.766685, 24.477167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163097, 41.939434, 24.092621>,  <32.806763, 42.366707, 24.602318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163097, 41.939434, 24.092621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784851, 41.814644, 24.055773>,  <32.557903, 41.739769, 24.033665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784851, 41.814644, 24.055773>,  <33.163097, 41.939434, 24.092621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784851, 41.814644, 24.055773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013400, 0.320304, -0.947220,
		0.325060, -0.894455, -0.307060,
		-0.945598, -0.312018, -0.092132,
		32.501167, 41.721050, 24.028137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784576, 41.853577, 23.709694>,  <33.163097, 41.939434, 24.092621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784576, 41.853577, 23.709694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956795, 42.202473, 23.802492>,  <34.060127, 42.411812, 23.858171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956795, 42.202473, 23.802492>,  <33.784576, 41.853577, 23.709694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956795, 42.202473, 23.802492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147005, -0.321377, 0.935471,
		0.890515, -0.368662, -0.266593,
		0.430550, 0.872241, 0.231996,
		34.085960, 42.464146, 23.872091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519058, 41.715923, 24.026842>,  <33.784576, 41.853577, 23.709694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519058, 41.715923, 24.026842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419979, 42.084816, 24.145588>,  <34.360531, 42.306152, 24.216835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419979, 42.084816, 24.145588>,  <34.519058, 41.715923, 24.026842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419979, 42.084816, 24.145588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299364, -0.218562, 0.928769,
		0.921427, 0.318921, -0.221947,
		-0.247695, 0.922236, 0.296863,
		34.345669, 42.361488, 24.234646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178596, 41.997673, 24.416416>,  <34.519058, 41.715923, 24.026842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178596, 41.997673, 24.416416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878632, 42.231590, 24.540125>,  <34.698654, 42.371941, 24.614351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878632, 42.231590, 24.540125>,  <35.178596, 41.997673, 24.416416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878632, 42.231590, 24.540125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282549, -0.139583, 0.949043,
		0.598161, 0.799085, -0.060557,
		-0.749913, 0.584791, 0.309273,
		34.653656, 42.407028, 24.632906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448540, 42.496624, 24.959034>,  <35.178596, 41.997673, 24.416416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448540, 42.496624, 24.959034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053074, 42.504620, 25.018566>,  <34.815796, 42.509415, 25.054285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053074, 42.504620, 25.018566>,  <35.448540, 42.496624, 24.959034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053074, 42.504620, 25.018566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146748, -0.081651, 0.985798,
		0.031855, 0.996461, 0.077793,
		-0.988661, 0.019986, 0.148829,
		34.756477, 42.510616, 25.063215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381805, 42.934948, 25.537077>,  <35.448540, 42.496624, 24.959034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381805, 42.934948, 25.537077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030830, 42.743565, 25.523321>,  <34.820248, 42.628735, 25.515068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030830, 42.743565, 25.523321>,  <35.381805, 42.934948, 25.537077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030830, 42.743565, 25.523321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052855, 0.025181, 0.998285,
		-0.476774, 0.877748, -0.047383,
		-0.877436, -0.478460, -0.034388,
		34.767601, 42.600025, 25.513004>
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
