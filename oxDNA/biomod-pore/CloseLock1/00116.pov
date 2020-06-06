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
	<24.435616, 35.235283, 34.736820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487049, 35.201569, 35.132065>,  <24.517910, 35.181339, 35.369213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487049, 35.201569, 35.132065>,  <24.435616, 35.235283, 34.736820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487049, 35.201569, 35.132065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779894, -0.606859, -0.153255,
		0.612560, 0.790328, -0.012299,
		0.128585, -0.084286, 0.988110,
		24.525625, 35.176285, 35.428497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154375, 35.405796, 34.844704>,  <24.435616, 35.235283, 34.736820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154375, 35.405796, 34.844704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006227, 35.193398, 35.149563>,  <24.917339, 35.065960, 35.332478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006227, 35.193398, 35.149563>,  <25.154375, 35.405796, 34.844704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006227, 35.193398, 35.149563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792599, -0.608508, -0.038784,
		0.484368, 0.589715, 0.646238,
		-0.370370, -0.530993, 0.762150,
		24.895117, 35.034100, 35.378208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627670, 35.534889, 35.417149>,  <25.154375, 35.405796, 34.844704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627670, 35.534889, 35.417149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409533, 35.200809, 35.445538>,  <25.278650, 35.000362, 35.462570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409533, 35.200809, 35.445538>,  <25.627670, 35.534889, 35.417149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409533, 35.200809, 35.445538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836437, -0.536726, 0.110899,
		-0.054532, 0.119840, 0.991294,
		-0.545343, -0.835203, 0.070970,
		25.245930, 34.950249, 35.466827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986864, 35.081512, 36.012554>,  <25.627670, 35.534889, 35.417149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986864, 35.081512, 36.012554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740471, 34.867714, 35.781078>,  <25.592636, 34.739437, 35.642193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740471, 34.867714, 35.781078>,  <25.986864, 35.081512, 36.012554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740471, 34.867714, 35.781078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619726, -0.782295, 0.062885,
		-0.486320, -0.319894, 0.813118,
		-0.615982, -0.534492, -0.578692,
		25.555676, 34.707367, 35.607471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803261, 34.374561, 36.370819>,  <25.986864, 35.081512, 36.012554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803261, 34.374561, 36.370819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773045, 34.387466, 35.972172>,  <25.754915, 34.395210, 35.732983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773045, 34.387466, 35.972172>,  <25.803261, 34.374561, 36.370819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773045, 34.387466, 35.972172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708914, -0.701141, -0.076432,
		-0.701235, -0.712294, 0.030119,
		-0.075559, 0.032245, -0.996620,
		25.750383, 34.397148, 35.673187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932907, 33.671665, 36.218185>,  <25.803261, 34.374561, 36.370819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932907, 33.671665, 36.218185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974943, 33.895664, 35.889465>,  <26.000164, 34.030064, 35.692234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974943, 33.895664, 35.889465>,  <25.932907, 33.671665, 36.218185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974943, 33.895664, 35.889465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710351, -0.620596, -0.332057,
		-0.695958, -0.548870, -0.463016,
		0.105090, 0.560002, -0.821799,
		26.006470, 34.063663, 35.642925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794603, 33.307743, 35.475761>,  <25.932907, 33.671665, 36.218185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794603, 33.307743, 35.475761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062576, 33.604359, 35.461311>,  <26.223360, 33.782330, 35.452641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062576, 33.604359, 35.461311>,  <25.794603, 33.307743, 35.475761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062576, 33.604359, 35.461311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663550, -0.619878, -0.418870,
		-0.333003, 0.256643, -0.907328,
		0.669933, 0.741543, -0.036126,
		26.263556, 33.826820, 35.450474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207108, 33.141716, 34.985474>,  <25.794603, 33.307743, 35.475761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207108, 33.141716, 34.985474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430016, 33.453373, 35.100285>,  <26.563761, 33.640369, 35.169170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430016, 33.453373, 35.100285>,  <26.207108, 33.141716, 34.985474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430016, 33.453373, 35.100285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828201, -0.496825, -0.259322,
		-0.059450, 0.382225, -0.922155,
		0.557269, 0.779147, 0.287023,
		26.597197, 33.687119, 35.186390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739450, 33.440453, 34.373497>,  <26.207108, 33.141716, 34.985474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739450, 33.440453, 34.373497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880339, 33.517704, 34.739807>,  <26.964872, 33.564053, 34.959595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880339, 33.517704, 34.739807>,  <26.739450, 33.440453, 34.373497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880339, 33.517704, 34.739807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862187, -0.447619, -0.237213,
		0.364106, 0.873120, -0.324172,
		0.352221, 0.193126, 0.915774,
		26.986006, 33.575642, 35.014538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343143, 33.647739, 34.245148>,  <26.739450, 33.440453, 34.373497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343143, 33.647739, 34.245148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385662, 33.583321, 34.637630>,  <27.411173, 33.544670, 34.873119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385662, 33.583321, 34.637630>,  <27.343143, 33.647739, 34.245148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385662, 33.583321, 34.637630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871496, -0.460026, -0.169915,
		0.478745, 0.873178, 0.091452,
		0.106296, -0.161045, 0.981206,
		27.417551, 33.535007, 34.931992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114893, 33.867146, 34.404900>,  <27.343143, 33.647739, 34.245148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114893, 33.867146, 34.404900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971621, 33.590790, 34.656097>,  <27.885656, 33.424976, 34.806816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971621, 33.590790, 34.656097>,  <28.114893, 33.867146, 34.404900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971621, 33.590790, 34.656097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846522, -0.524041, -0.093710,
		0.393836, 0.498043, 0.772558,
		-0.358180, -0.690894, 0.627991,
		27.864166, 33.383522, 34.844494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676090, 33.698135, 34.848255>,  <28.114893, 33.867146, 34.404900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676090, 33.698135, 34.848255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419277, 33.397354, 34.908062>,  <28.265190, 33.216885, 34.943947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419277, 33.397354, 34.908062>,  <28.676090, 33.698135, 34.848255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419277, 33.397354, 34.908062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761601, -0.647940, 0.011707,
		0.088078, 0.121392, 0.988689,
		-0.642032, -0.751956, 0.149522,
		28.226667, 33.171768, 34.952919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972597, 33.276745, 35.349724>,  <28.676090, 33.698135, 34.848255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972597, 33.276745, 35.349724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711220, 33.005524, 35.215111>,  <28.554394, 32.842793, 35.134342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711220, 33.005524, 35.215111>,  <28.972597, 33.276745, 35.349724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711220, 33.005524, 35.215111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686049, -0.718364, 0.115276,
		-0.319916, -0.155552, 0.934589,
		-0.653444, -0.678053, -0.336533,
		28.515186, 32.802109, 35.114151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000174, 32.685303, 35.788044>,  <28.972597, 33.276745, 35.349724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000174, 32.685303, 35.788044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860552, 32.577518, 35.429035>,  <28.776779, 32.512848, 35.213631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860552, 32.577518, 35.429035>,  <29.000174, 32.685303, 35.788044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860552, 32.577518, 35.429035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618577, -0.785710, -0.004674,
		-0.703935, -0.556821, 0.440938,
		-0.349052, -0.269464, -0.897525,
		28.755836, 32.496677, 35.159779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946470, 31.911978, 35.786846>,  <29.000174, 32.685303, 35.788044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946470, 31.911978, 35.786846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932846, 31.997362, 35.396301>,  <28.924671, 32.048592, 35.161976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932846, 31.997362, 35.396301>,  <28.946470, 31.911978, 35.786846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932846, 31.997362, 35.396301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590534, -0.783847, -0.191972,
		-0.806294, -0.583111, -0.099359,
		-0.034058, 0.213460, -0.976358,
		28.922628, 32.061401, 35.103394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760693, 31.236443, 35.344807>,  <28.946470, 31.911978, 35.786846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760693, 31.236443, 35.344807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956453, 31.502464, 35.119175>,  <29.073910, 31.662077, 34.983795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956453, 31.502464, 35.119175>,  <28.760693, 31.236443, 35.344807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956453, 31.502464, 35.119175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650750, -0.709110, -0.271453,
		-0.580527, -0.234227, -0.779824,
		0.489400, 0.665057, -0.564081,
		29.103273, 31.701981, 34.949951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920635, 30.769072, 34.801327>,  <28.760693, 31.236443, 35.344807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920635, 30.769072, 34.801327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142834, 31.093601, 34.728470>,  <29.276154, 31.288319, 34.684757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142834, 31.093601, 34.728470>,  <28.920635, 30.769072, 34.801327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142834, 31.093601, 34.728470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736093, -0.581692, -0.346123,
		-0.386769, 0.058196, -0.920338,
		0.555497, 0.811325, -0.182143,
		29.309483, 31.336998, 34.673828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156681, 30.676966, 34.162460>,  <28.920635, 30.769072, 34.801327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156681, 30.676966, 34.162460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406511, 30.922495, 34.355591>,  <29.556410, 31.069813, 34.471470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406511, 30.922495, 34.355591>,  <29.156681, 30.676966, 34.162460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406511, 30.922495, 34.355591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736997, -0.667783, -0.104408,
		0.258338, 0.421055, -0.869468,
		0.624577, 0.613823, 0.482830,
		29.593885, 31.106642, 34.500439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850832, 30.664217, 33.751274>,  <29.156681, 30.676966, 34.162460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850832, 30.664217, 33.751274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970638, 30.846025, 34.086823>,  <30.042522, 30.955111, 34.288151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970638, 30.846025, 34.086823>,  <29.850832, 30.664217, 33.751274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970638, 30.846025, 34.086823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833837, -0.552009, 0.001374,
		0.463688, 0.699068, -0.544332,
		0.299515, 0.454521, 0.838869,
		30.060493, 30.982382, 34.338482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585293, 30.726469, 33.730343>,  <29.850832, 30.664217, 33.751274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585293, 30.726469, 33.730343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541517, 30.806459, 34.119812>,  <30.515253, 30.854454, 34.353493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541517, 30.806459, 34.119812>,  <30.585293, 30.726469, 33.730343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541517, 30.806459, 34.119812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823734, -0.529987, 0.201437,
		0.556315, 0.824089, -0.106727,
		-0.109438, 0.199977, 0.973670,
		30.508686, 30.866453, 34.411911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232349, 30.968836, 34.018757>,  <30.585293, 30.726469, 33.730343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232349, 30.968836, 34.018757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017538, 30.847307, 34.333538>,  <30.888651, 30.774389, 34.522408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017538, 30.847307, 34.333538>,  <31.232349, 30.968836, 34.018757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017538, 30.847307, 34.333538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754119, -0.590969, 0.286463,
		0.378031, 0.747294, 0.546484,
		-0.537027, -0.303822, 0.786953,
		30.856430, 30.756161, 34.569622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674772, 31.087248, 34.692188>,  <31.232349, 30.968836, 34.018757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674772, 31.087248, 34.692188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392378, 30.819796, 34.785580>,  <31.222940, 30.659325, 34.841614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392378, 30.819796, 34.785580>,  <31.674772, 31.087248, 34.692188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392378, 30.819796, 34.785580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647913, -0.476631, 0.594165,
		-0.285993, 0.570748, 0.769711,
		-0.705987, -0.668632, 0.233482,
		31.180582, 30.619205, 34.855625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632597, 30.977827, 35.568806>,  <31.674772, 31.087248, 34.692188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632597, 30.977827, 35.568806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471979, 30.663975, 35.379868>,  <31.375608, 30.475662, 35.266502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471979, 30.663975, 35.379868>,  <31.632597, 30.977827, 35.568806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471979, 30.663975, 35.379868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668845, -0.603561, 0.434004,
		-0.625625, -0.141657, 0.767155,
		-0.401546, -0.784632, -0.472350,
		31.351515, 30.428585, 35.238163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520149, 30.446301, 36.117466>,  <31.632597, 30.977827, 35.568806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520149, 30.446301, 36.117466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562170, 30.278610, 35.756752>,  <31.587381, 30.177996, 35.540325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562170, 30.278610, 35.756752>,  <31.520149, 30.446301, 36.117466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562170, 30.278610, 35.756752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677108, -0.633989, 0.373607,
		-0.728346, -0.649854, 0.217259,
		0.105051, -0.419223, -0.901785,
		31.593685, 30.152843, 35.486217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371399, 29.706795, 36.079044>,  <31.520149, 30.446301, 36.117466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371399, 29.706795, 36.079044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645704, 29.811214, 35.807285>,  <31.810287, 29.873867, 35.644230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645704, 29.811214, 35.807285>,  <31.371399, 29.706795, 36.079044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645704, 29.811214, 35.807285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701569, -0.485549, 0.521577,
		-0.193722, -0.834323, -0.516118,
		0.685764, 0.261051, -0.679397,
		31.851433, 29.889530, 35.603466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796047, 29.159252, 35.683945>,  <31.371399, 29.706795, 36.079044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796047, 29.159252, 35.683945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033169, 29.475540, 35.745060>,  <32.175442, 29.665314, 35.781731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033169, 29.475540, 35.745060>,  <31.796047, 29.159252, 35.683945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033169, 29.475540, 35.745060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648000, -0.580972, 0.492512,
		0.478207, -0.192954, -0.856789,
		0.592802, 0.790722, 0.152790,
		32.211010, 29.712757, 35.790897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518921, 29.028086, 35.383499>,  <31.796047, 29.159252, 35.683945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518921, 29.028086, 35.383499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513283, 29.294037, 35.682228>,  <32.509899, 29.453608, 35.861465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513283, 29.294037, 35.682228>,  <32.518921, 29.028086, 35.383499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513283, 29.294037, 35.682228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639557, -0.568138, 0.517867,
		0.768614, 0.484932, -0.417220,
		-0.014092, 0.664876, 0.746821,
		32.509056, 29.493500, 35.906273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528038, 28.973633, 34.586189>,  <32.518921, 29.028086, 35.383499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528038, 28.973633, 34.586189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733070, 28.768368, 34.310822>,  <32.856091, 28.645208, 34.145599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733070, 28.768368, 34.310822>,  <32.528038, 28.973633, 34.586189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733070, 28.768368, 34.310822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852693, 0.210020, 0.478336,
		-0.100882, -0.832199, 0.545223,
		0.512578, -0.513163, -0.688423,
		32.886845, 28.614418, 34.104294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841095, 28.445093, 34.932037>,  <32.528038, 28.973633, 34.586189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841095, 28.445093, 34.932037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043388, 28.612658, 34.630375>,  <33.164764, 28.713196, 34.449379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043388, 28.612658, 34.630375>,  <32.841095, 28.445093, 34.932037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043388, 28.612658, 34.630375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812324, 0.063091, 0.579785,
		0.290459, -0.905832, -0.308385,
		0.505731, 0.418912, -0.754154,
		33.195107, 28.738331, 34.404129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577011, 28.124863, 34.798035>,  <32.841095, 28.445093, 34.932037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577011, 28.124863, 34.798035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536316, 28.516388, 34.726963>,  <33.511898, 28.751303, 34.684319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536316, 28.516388, 34.726963>,  <33.577011, 28.124863, 34.798035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536316, 28.516388, 34.726963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742403, 0.193590, 0.641374,
		0.662184, -0.066663, -0.746370,
		-0.101734, 0.978815, -0.177682,
		33.505795, 28.810032, 34.673656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931496, 28.423079, 35.375088>,  <33.577011, 28.124863, 34.798035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931496, 28.423079, 35.375088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930912, 28.757936, 35.156296>,  <33.930561, 28.958851, 35.025021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930912, 28.757936, 35.156296>,  <33.931496, 28.423079, 35.375088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930912, 28.757936, 35.156296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619709, 0.430046, 0.656522,
		0.784830, -0.338013, -0.519412,
		-0.001458, 0.837143, -0.546983,
		33.930473, 29.009079, 34.992203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711658, 28.686104, 35.282375>,  <33.931496, 28.423079, 35.375088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711658, 28.686104, 35.282375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443150, 28.981333, 35.255135>,  <34.282043, 29.158470, 35.238789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443150, 28.981333, 35.255135>,  <34.711658, 28.686104, 35.282375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443150, 28.981333, 35.255135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477779, 0.501119, 0.721531,
		0.566670, 0.451808, -0.689024,
		-0.671277, 0.738071, -0.068104,
		34.241768, 29.202755, 35.234703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044170, 29.376633, 35.251236>,  <34.711658, 28.686104, 35.282375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044170, 29.376633, 35.251236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679844, 29.400887, 35.414570>,  <34.461246, 29.415440, 35.512569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679844, 29.400887, 35.414570>,  <35.044170, 29.376633, 35.251236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679844, 29.400887, 35.414570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358344, 0.607203, 0.709150,
		-0.204941, 0.792229, -0.574780,
		-0.910818, 0.060635, 0.408332,
		34.406597, 29.419077, 35.537067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955070, 30.107990, 35.438145>,  <35.044170, 29.376633, 35.251236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955070, 30.107990, 35.438145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763798, 29.831581, 35.654968>,  <34.649033, 29.665735, 35.785061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763798, 29.831581, 35.654968>,  <34.955070, 30.107990, 35.438145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763798, 29.831581, 35.654968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151156, 0.543230, 0.825865,
		-0.865155, 0.476850, -0.155311,
		-0.478183, -0.691025, 0.542057,
		34.620342, 29.624273, 35.817585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214638, 30.377132, 35.750561>,  <34.955070, 30.107990, 35.438145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214638, 30.377132, 35.750561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523632, 30.169930, 35.897491>,  <34.709030, 30.045609, 35.985649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523632, 30.169930, 35.897491>,  <34.214638, 30.377132, 35.750561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523632, 30.169930, 35.897491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066912, 0.641622, 0.764097,
		-0.631494, -0.565677, 0.530306,
		0.772488, -0.518006, 0.367330,
		34.755379, 30.014528, 36.007690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477921, 30.497046, 36.460472>,  <34.214638, 30.377132, 35.750561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477921, 30.497046, 36.460472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619705, 30.585527, 36.097061>,  <34.704777, 30.638617, 35.879013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619705, 30.585527, 36.097061>,  <34.477921, 30.497046, 36.460472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619705, 30.585527, 36.097061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402206, 0.913208, 0.065425,
		0.844149, 0.342225, 0.412668,
		0.354462, 0.221206, -0.908529,
		34.726044, 30.651890, 35.824501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750118, 31.191587, 36.342983>,  <34.477921, 30.497046, 36.460472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750118, 31.191587, 36.342983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593140, 31.112617, 35.983650>,  <34.498951, 31.065235, 35.768051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593140, 31.112617, 35.983650>,  <34.750118, 31.191587, 36.342983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593140, 31.112617, 35.983650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599081, 0.795971, 0.086787,
		0.697916, 0.572235, -0.430651,
		-0.392448, -0.197425, -0.898336,
		34.475407, 31.053391, 35.714149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843037, 31.828222, 35.912796>,  <34.750118, 31.191587, 36.342983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843037, 31.828222, 35.912796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529373, 31.590326, 35.841942>,  <34.341175, 31.447590, 35.799427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529373, 31.590326, 35.841942>,  <34.843037, 31.828222, 35.912796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529373, 31.590326, 35.841942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609071, 0.792291, 0.036150,
		0.118845, 0.136236, -0.983522,
		-0.784161, -0.594739, -0.177137,
		34.294125, 31.411905, 35.788799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392738, 32.235332, 35.500576>,  <34.843037, 31.828222, 35.912796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392738, 32.235332, 35.500576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143135, 31.942570, 35.610069>,  <33.993374, 31.766912, 35.675766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143135, 31.942570, 35.610069>,  <34.392738, 32.235332, 35.500576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143135, 31.942570, 35.610069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775645, 0.622654, -0.103330,
		-0.094811, -0.276796, -0.956240,
		-0.624008, -0.731906, 0.273730,
		33.955933, 31.722998, 35.692188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940781, 32.059570, 34.981754>,  <34.392738, 32.235332, 35.500576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940781, 32.059570, 34.981754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738186, 31.953970, 35.310089>,  <33.616631, 31.890610, 35.507092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738186, 31.953970, 35.310089>,  <33.940781, 32.059570, 34.981754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738186, 31.953970, 35.310089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768299, 0.570299, -0.290647,
		-0.391394, -0.777859, -0.491677,
		-0.506485, -0.263998, 0.820840,
		33.586239, 31.874771, 35.556339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257023, 31.908392, 34.795834>,  <33.940781, 32.059570, 34.981754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257023, 31.908392, 34.795834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210983, 31.955341, 35.190392>,  <33.183361, 31.983511, 35.427128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210983, 31.955341, 35.190392>,  <33.257023, 31.908392, 34.795834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210983, 31.955341, 35.190392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895749, 0.416983, -0.154138,
		-0.429402, -0.901304, 0.057143,
		-0.115098, 0.117373, 0.986395,
		33.176453, 31.990553, 35.486309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533718, 31.731977, 34.981766>,  <33.257023, 31.908392, 34.795834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533718, 31.731977, 34.981766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683025, 31.962240, 35.272774>,  <32.772610, 32.100399, 35.447380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683025, 31.962240, 35.272774>,  <32.533718, 31.731977, 34.981766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683025, 31.962240, 35.272774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850073, 0.526296, 0.019703,
		-0.371551, -0.625803, 0.685799,
		0.373263, 0.575658, 0.727524,
		32.795006, 32.134937, 35.491032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925711, 31.839109, 35.371655>,  <32.533718, 31.731977, 34.981766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925711, 31.839109, 35.371655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188568, 32.127193, 35.460606>,  <32.346283, 32.300045, 35.513977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188568, 32.127193, 35.460606>,  <31.925711, 31.839109, 35.371655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188568, 32.127193, 35.460606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730777, 0.681051, -0.046200,
		-0.184727, -0.132152, 0.973864,
		0.657146, 0.720212, 0.222382,
		32.385712, 32.343258, 35.527321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666971, 32.207153, 35.913349>,  <31.925711, 31.839109, 35.371655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666971, 32.207153, 35.913349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925133, 32.477215, 35.770451>,  <32.080029, 32.639252, 35.684711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925133, 32.477215, 35.770451>,  <31.666971, 32.207153, 35.913349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925133, 32.477215, 35.770451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712052, 0.701068, 0.038536,
		0.276472, 0.229506, 0.933215,
		0.645403, 0.675152, -0.357246,
		32.118755, 32.679760, 35.663277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514030, 32.801426, 36.168980>,  <31.666971, 32.207153, 35.913349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514030, 32.801426, 36.168980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755455, 32.978325, 35.903610>,  <31.900311, 33.084465, 35.744389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755455, 32.978325, 35.903610>,  <31.514030, 32.801426, 36.168980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755455, 32.978325, 35.903610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626995, 0.777267, -0.052287,
		0.492533, 0.447521, 0.746415,
		0.603563, 0.442246, -0.663423,
		31.936523, 33.111000, 35.704582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431780, 33.462242, 36.316292>,  <31.514030, 32.801426, 36.168980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431780, 33.462242, 36.316292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608183, 33.479721, 35.957714>,  <31.714024, 33.490208, 35.742569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608183, 33.479721, 35.957714>,  <31.431780, 33.462242, 36.316292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608183, 33.479721, 35.957714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475494, 0.858496, -0.192069,
		0.761196, 0.510955, 0.399381,
		0.441006, 0.043701, -0.896440,
		31.740484, 33.492832, 35.688782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736279, 34.102795, 36.330276>,  <31.431780, 33.462242, 36.316292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736279, 34.102795, 36.330276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687428, 33.998432, 35.947235>,  <31.658117, 33.935814, 35.717407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687428, 33.998432, 35.947235>,  <31.736279, 34.102795, 36.330276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687428, 33.998432, 35.947235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641089, 0.757290, -0.124568,
		0.757688, 0.598700, -0.259747,
		-0.122125, -0.260904, -0.957609,
		31.650789, 33.920162, 35.659954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801249, 34.710167, 35.957344>,  <31.736279, 34.102795, 36.330276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801249, 34.710167, 35.957344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579355, 34.440998, 35.761612>,  <31.446218, 34.279495, 35.644173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579355, 34.440998, 35.761612>,  <31.801249, 34.710167, 35.957344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579355, 34.440998, 35.761612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755788, 0.653478, -0.041854,
		0.347930, 0.346611, -0.871094,
		-0.554734, -0.672925, -0.489329,
		31.412935, 34.239120, 35.614815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525688, 35.098301, 35.365891>,  <31.801249, 34.710167, 35.957344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525688, 35.098301, 35.365891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294390, 34.777084, 35.423531>,  <31.155611, 34.584354, 35.458115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294390, 34.777084, 35.423531>,  <31.525688, 35.098301, 35.365891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294390, 34.777084, 35.423531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815102, 0.560990, -0.144564,
		0.035252, -0.201050, -0.978947,
		-0.578244, -0.803037, 0.144100,
		31.120916, 34.536175, 35.466763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968029, 35.100216, 34.792648>,  <31.525688, 35.098301, 35.365891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968029, 35.100216, 34.792648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830526, 34.825489, 35.048809>,  <30.748026, 34.660652, 35.202507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830526, 34.825489, 35.048809>,  <30.968029, 35.100216, 34.792648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830526, 34.825489, 35.048809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849158, 0.518528, 0.100299,
		-0.400954, -0.509325, -0.761462,
		-0.343755, -0.686816, 0.640404,
		30.727400, 34.619446, 35.240929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387070, 34.788662, 34.491165>,  <30.968029, 35.100216, 34.792648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387070, 34.788662, 34.491165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359011, 34.730179, 34.885872>,  <30.342175, 34.695087, 35.122696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359011, 34.730179, 34.885872>,  <30.387070, 34.788662, 34.491165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359011, 34.730179, 34.885872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912736, 0.408527, -0.004354,
		-0.402483, -0.900960, -0.162107,
		-0.070148, -0.146208, 0.986764,
		30.337967, 34.686317, 35.181900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734264, 34.407955, 34.587189>,  <30.387070, 34.788662, 34.491165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734264, 34.407955, 34.587189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830194, 34.599998, 34.924706>,  <29.887753, 34.715225, 35.127216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830194, 34.599998, 34.924706>,  <29.734264, 34.407955, 34.587189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830194, 34.599998, 34.924706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882345, 0.470302, -0.016817,
		-0.404909, -0.740479, 0.536414,
		0.239824, 0.480112, 0.843787,
		29.902142, 34.744034, 35.177841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164738, 34.284000, 35.070915>,  <29.734264, 34.407955, 34.587189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164738, 34.284000, 35.070915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346035, 34.612976, 35.208420>,  <29.454813, 34.810360, 35.290920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346035, 34.612976, 35.208420>,  <29.164738, 34.284000, 35.070915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346035, 34.612976, 35.208420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887707, 0.451460, 0.090335,
		-0.080898, -0.346100, 0.934703,
		0.453246, 0.822435, 0.343758,
		29.482008, 34.859707, 35.311546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958599, 34.444294, 35.776836>,  <29.164738, 34.284000, 35.070915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958599, 34.444294, 35.776836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094460, 34.809158, 35.685101>,  <29.175976, 35.028076, 35.630058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094460, 34.809158, 35.685101>,  <28.958599, 34.444294, 35.776836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094460, 34.809158, 35.685101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841337, 0.403654, 0.359466,
		0.420467, 0.070864, 0.904536,
		0.339647, 0.912163, -0.229344,
		29.196354, 35.082806, 35.616299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701504, 34.910324, 36.292294>,  <28.958599, 34.444294, 35.776836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701504, 34.910324, 36.292294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825748, 35.147499, 35.995121>,  <28.900295, 35.289803, 35.816818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825748, 35.147499, 35.995121>,  <28.701504, 34.910324, 36.292294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825748, 35.147499, 35.995121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742676, 0.639199, 0.199640,
		0.593255, 0.489748, 0.638901,
		0.310611, 0.592934, -0.742933,
		28.918932, 35.325378, 35.772240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701563, 35.543133, 36.594383>,  <28.701504, 34.910324, 36.292294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701563, 35.543133, 36.594383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661201, 35.588665, 36.199039>,  <28.636986, 35.615982, 35.961834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661201, 35.588665, 36.199039>,  <28.701563, 35.543133, 36.594383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661201, 35.588665, 36.199039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773240, 0.616142, 0.149900,
		0.626035, 0.779367, 0.025847,
		-0.100902, 0.113828, -0.988363,
		28.630932, 35.622814, 35.902531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545723, 36.328205, 36.544445>,  <28.701563, 35.543133, 36.594383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545723, 36.328205, 36.544445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449617, 36.176849, 36.186878>,  <28.391954, 36.086037, 35.972336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449617, 36.176849, 36.186878>,  <28.545723, 36.328205, 36.544445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449617, 36.176849, 36.186878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782540, 0.620401, -0.052283,
		0.574372, 0.686967, -0.445167,
		-0.240265, -0.378390, -0.893920,
		28.377539, 36.063332, 35.918701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386330, 36.947048, 36.116993>,  <28.545723, 36.328205, 36.544445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386330, 36.947048, 36.116993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202072, 36.633442, 35.950558>,  <28.091518, 36.445278, 35.850697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202072, 36.633442, 35.950558>,  <28.386330, 36.947048, 36.116993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202072, 36.633442, 35.950558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886352, 0.431035, 0.169081,
		0.046785, 0.446684, -0.893468,
		-0.460642, -0.784017, -0.416085,
		28.063879, 36.398235, 35.825733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929367, 36.917950, 36.666035>,  <28.386330, 36.947048, 36.116993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929367, 36.917950, 36.666035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235630, 36.943886, 36.410046>,  <29.419388, 36.959450, 36.256451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235630, 36.943886, 36.410046>,  <28.929367, 36.917950, 36.666035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235630, 36.943886, 36.410046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634547, -0.239255, 0.734920,
		-0.105462, -0.968789, -0.224333,
		0.765655, 0.064844, -0.639974,
		29.465326, 36.963341, 36.218052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301256, 36.231411, 36.511997>,  <28.929367, 36.917950, 36.666035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301256, 36.231411, 36.511997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514706, 36.568871, 36.488312>,  <29.642775, 36.771347, 36.474102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514706, 36.568871, 36.488312>,  <29.301256, 36.231411, 36.511997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514706, 36.568871, 36.488312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423837, -0.206182, 0.881958,
		0.731852, -0.495731, -0.467593,
		0.533624, 0.843646, -0.059215,
		29.674793, 36.821964, 36.470547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028517, 36.021347, 36.582176>,  <29.301256, 36.231411, 36.511997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028517, 36.021347, 36.582176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967999, 36.399063, 36.699085>,  <29.931688, 36.625694, 36.769230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967999, 36.399063, 36.699085>,  <30.028517, 36.021347, 36.582176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967999, 36.399063, 36.699085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498216, -0.182531, 0.847622,
		0.853751, 0.273858, -0.442845,
		-0.151295, 0.944290, 0.292276,
		29.922609, 36.682350, 36.786770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629858, 36.430740, 36.761864>,  <30.028517, 36.021347, 36.582176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629858, 36.430740, 36.761864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309944, 36.530598, 36.980228>,  <30.117996, 36.590511, 37.111248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309944, 36.530598, 36.980228>,  <30.629858, 36.430740, 36.761864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309944, 36.530598, 36.980228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494669, -0.241114, 0.834965,
		0.340073, 0.937839, 0.069347,
		-0.799783, 0.249645, 0.545916,
		30.070009, 36.605492, 37.144005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724134, 36.914703, 37.359646>,  <30.629858, 36.430740, 36.761864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724134, 36.914703, 37.359646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432310, 36.664185, 37.469551>,  <30.257215, 36.513874, 37.535496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432310, 36.664185, 37.469551>,  <30.724134, 36.914703, 37.359646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432310, 36.664185, 37.469551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422639, -0.097001, 0.901092,
		-0.537697, 0.773528, 0.335465,
		-0.729560, -0.626296, 0.274765,
		30.213442, 36.476295, 37.551979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108461, 37.191975, 37.869553>,  <30.724134, 36.914703, 37.359646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108461, 37.191975, 37.869553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239698, 36.815624, 37.903271>,  <30.318441, 36.589813, 37.923500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239698, 36.815624, 37.903271>,  <30.108461, 37.191975, 37.869553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239698, 36.815624, 37.903271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452860, 0.234972, 0.860062,
		-0.829019, -0.244005, 0.503178,
		0.328093, -0.940877, 0.084296,
		30.338127, 36.533360, 37.928558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856335, 36.907032, 38.539070>,  <30.108461, 37.191975, 37.869553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856335, 36.907032, 38.539070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193853, 36.726852, 38.422382>,  <30.396364, 36.618744, 38.352367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193853, 36.726852, 38.422382>,  <29.856335, 36.907032, 38.539070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193853, 36.726852, 38.422382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463429, 0.337479, 0.819354,
		-0.270627, -0.826562, 0.493515,
		0.843798, -0.450448, -0.291721,
		30.446993, 36.591717, 38.334866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021088, 36.563320, 39.177353>,  <29.856335, 36.907032, 38.539070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021088, 36.563320, 39.177353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337021, 36.628605, 38.940872>,  <30.526581, 36.667774, 38.798985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337021, 36.628605, 38.940872>,  <30.021088, 36.563320, 39.177353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337021, 36.628605, 38.940872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474325, 0.448549, 0.757510,
		0.388815, -0.878731, 0.276867,
		0.789835, 0.163206, -0.591206,
		30.573971, 36.677567, 38.763512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539263, 36.451763, 39.614788>,  <30.021088, 36.563320, 39.177353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539263, 36.451763, 39.614788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755262, 36.624207, 39.325638>,  <30.884863, 36.727673, 39.152149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755262, 36.624207, 39.325638>,  <30.539263, 36.451763, 39.614788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755262, 36.624207, 39.325638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592767, 0.414924, 0.690265,
		0.597519, -0.801236, -0.031491,
		0.539999, 0.431113, -0.722871,
		30.917261, 36.753540, 39.108776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367743, 36.394516, 39.807709>,  <30.539263, 36.451763, 39.614788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367743, 36.394516, 39.807709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317141, 36.695080, 39.548672>,  <31.286779, 36.875420, 39.393250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317141, 36.695080, 39.548672>,  <31.367743, 36.394516, 39.807709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317141, 36.695080, 39.548672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598670, 0.578371, 0.554148,
		0.790942, -0.317590, -0.523017,
		-0.126506, 0.751414, -0.647590,
		31.279188, 36.920506, 39.354393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072536, 36.778431, 39.723511>,  <31.367743, 36.394516, 39.807709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072536, 36.778431, 39.723511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808813, 37.037422, 39.570629>,  <31.650578, 37.192818, 39.478901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808813, 37.037422, 39.570629>,  <32.072536, 36.778431, 39.723511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808813, 37.037422, 39.570629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514006, 0.759146, 0.399368,
		0.548732, 0.066852, -0.833321,
		-0.659311, 0.647478, -0.382205,
		31.611019, 37.231667, 39.455967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475525, 37.415627, 39.536518>,  <32.072536, 36.778431, 39.723511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475525, 37.415627, 39.536518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096348, 37.541946, 39.552860>,  <31.868841, 37.617741, 39.562664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096348, 37.541946, 39.552860>,  <32.475525, 37.415627, 39.536518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096348, 37.541946, 39.552860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304026, 0.859416, 0.411064,
		0.094705, 0.402086, -0.910691,
		-0.947945, 0.315803, 0.040853,
		31.811964, 37.636688, 39.565117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466805, 38.125389, 39.492817>,  <32.475525, 37.415627, 39.536518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466805, 38.125389, 39.492817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107311, 38.060829, 39.655907>,  <31.891617, 38.022095, 39.753761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107311, 38.060829, 39.655907>,  <32.466805, 38.125389, 39.492817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107311, 38.060829, 39.655907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169465, 0.729724, 0.662408,
		-0.404436, 0.664420, -0.628473,
		-0.898728, -0.161397, 0.407723,
		31.837692, 38.012409, 39.778225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372326, 38.772598, 39.971157>,  <32.466805, 38.125389, 39.492817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372326, 38.772598, 39.971157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099766, 38.513279, 40.107044>,  <31.936230, 38.357689, 40.188576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099766, 38.513279, 40.107044>,  <32.372326, 38.772598, 39.971157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099766, 38.513279, 40.107044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140884, 0.339292, 0.930071,
		-0.718227, 0.681608, -0.139858,
		-0.681396, -0.648299, 0.339717,
		31.895348, 38.318790, 40.208958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821777, 39.184948, 40.264339>,  <32.372326, 38.772598, 39.971157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821777, 39.184948, 40.264339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792574, 38.815025, 40.413689>,  <31.775053, 38.593071, 40.503300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792574, 38.815025, 40.413689>,  <31.821777, 39.184948, 40.264339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792574, 38.815025, 40.413689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023566, 0.375870, 0.926372,
		-0.997053, 0.058832, -0.049235,
		-0.073006, -0.924803, 0.373376,
		31.770672, 38.537586, 40.525703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299294, 39.171688, 40.858040>,  <31.821777, 39.184948, 40.264339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299294, 39.171688, 40.858040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523310, 38.844681, 40.911724>,  <31.657719, 38.648476, 40.943935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523310, 38.844681, 40.911724>,  <31.299294, 39.171688, 40.858040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523310, 38.844681, 40.911724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015784, 0.172501, 0.984883,
		-0.828315, -0.549456, 0.109511,
		0.560041, -0.817521, 0.134213,
		31.691322, 38.599426, 40.951988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098465, 38.814426, 41.440788>,  <31.299294, 39.171688, 40.858040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098465, 38.814426, 41.440788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479166, 38.709583, 41.376953>,  <31.707586, 38.646679, 41.338650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479166, 38.709583, 41.376953>,  <31.098465, 38.814426, 41.440788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479166, 38.709583, 41.376953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176167, 0.040851, 0.983512,
		-0.251263, -0.964174, 0.085054,
		0.951752, -0.262104, -0.159591,
		31.764692, 38.630951, 41.329075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237425, 38.487114, 41.981194>,  <31.098465, 38.814426, 41.440788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237425, 38.487114, 41.981194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602863, 38.540112, 41.827423>,  <31.822126, 38.571911, 41.735161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602863, 38.540112, 41.827423>,  <31.237425, 38.487114, 41.981194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602863, 38.540112, 41.827423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359516, 0.178491, 0.915909,
		0.189979, -0.974979, 0.115431,
		0.913595, 0.132504, -0.384430,
		31.876942, 38.579861, 41.712093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634529, 38.114071, 42.427574>,  <31.237425, 38.487114, 41.981194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634529, 38.114071, 42.427574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887163, 38.350845, 42.227291>,  <32.038742, 38.492912, 42.107121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887163, 38.350845, 42.227291>,  <31.634529, 38.114071, 42.427574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887163, 38.350845, 42.227291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571932, 0.080303, 0.816361,
		0.523444, -0.801972, -0.287831,
		0.631585, 0.591939, -0.500708,
		32.076637, 38.528427, 42.077080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410545, 37.923817, 42.642319>,  <31.634529, 38.114071, 42.427574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410545, 37.923817, 42.642319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360748, 38.304722, 42.530823>,  <32.330872, 38.533264, 42.463924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360748, 38.304722, 42.530823>,  <32.410545, 37.923817, 42.642319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360748, 38.304722, 42.530823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387271, 0.305278, 0.869958,
		0.913522, 0.000354, -0.406789,
		-0.124492, 0.952263, -0.278741,
		32.323402, 38.590401, 42.447201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889893, 38.188606, 43.037552>,  <32.410545, 37.923817, 42.642319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889893, 38.188606, 43.037552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672150, 38.498379, 42.908592>,  <32.541504, 38.684242, 42.831219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672150, 38.498379, 42.908592>,  <32.889893, 38.188606, 43.037552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672150, 38.498379, 42.908592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238408, 0.511308, 0.825667,
		0.804263, 0.372594, -0.462963,
		-0.544355, 0.774428, -0.322396,
		32.508842, 38.730705, 42.811874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330551, 38.849655, 43.134144>,  <32.889893, 38.188606, 43.037552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330551, 38.849655, 43.134144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941643, 38.937405, 43.101742>,  <32.708298, 38.990055, 43.082302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941643, 38.937405, 43.101742>,  <33.330551, 38.849655, 43.134144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941643, 38.937405, 43.101742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037100, 0.486717, 0.872772,
		0.230886, 0.845567, -0.481360,
		-0.972273, 0.219369, -0.081005,
		32.649960, 39.003216, 43.077438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321903, 39.553116, 43.455395>,  <33.330551, 38.849655, 43.134144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321903, 39.553116, 43.455395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952602, 39.401909, 43.482826>,  <32.731022, 39.311184, 43.499287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952602, 39.401909, 43.482826>,  <33.321903, 39.553116, 43.455395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952602, 39.401909, 43.482826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107330, 0.425180, 0.898722,
		-0.368894, 0.822388, -0.433122,
		-0.923254, -0.378020, 0.068580,
		32.675625, 39.288502, 43.503399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992725, 39.960632, 43.919060>,  <33.321903, 39.553116, 43.455395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992725, 39.960632, 43.919060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709106, 39.678593, 43.915394>,  <32.538933, 39.509369, 43.913193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709106, 39.678593, 43.915394>,  <32.992725, 39.960632, 43.919060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709106, 39.678593, 43.915394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211501, 0.200246, 0.956644,
		-0.672694, 0.680247, -0.291114,
		-0.709049, -0.705100, -0.009169,
		32.496391, 39.467064, 43.912643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268391, 40.240753, 44.204552>,  <32.992725, 39.960632, 43.919060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268391, 40.240753, 44.204552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287643, 39.842621, 44.238003>,  <32.299194, 39.603741, 44.258076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287643, 39.842621, 44.238003>,  <32.268391, 40.240753, 44.204552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287643, 39.842621, 44.238003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215319, 0.071420, 0.973929,
		-0.975357, -0.064885, -0.210876,
		0.048133, -0.995334, 0.083631,
		32.302082, 39.544022, 44.263092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779491, 40.086105, 44.635689>,  <32.268391, 40.240753, 44.204552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779491, 40.086105, 44.635689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978645, 39.739597, 44.652111>,  <32.098137, 39.531693, 44.661964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978645, 39.739597, 44.652111>,  <31.779491, 40.086105, 44.635689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978645, 39.739597, 44.652111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173501, -0.053116, 0.983400,
		-0.849711, -0.496741, -0.176745,
		0.497883, -0.866272, 0.041052,
		32.128010, 39.479717, 44.664425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386572, 39.679588, 45.088619>,  <31.779491, 40.086105, 44.635689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386572, 39.679588, 45.088619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755198, 39.526180, 45.112736>,  <31.976372, 39.434135, 45.127205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755198, 39.526180, 45.112736>,  <31.386572, 39.679588, 45.088619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755198, 39.526180, 45.112736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111411, -0.112479, 0.987389,
		-0.371903, -0.916657, -0.146385,
		0.921562, -0.383522, 0.060294,
		32.031666, 39.411125, 45.130825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407970, 39.443478, 45.843300>,  <31.386572, 39.679588, 45.088619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407970, 39.443478, 45.843300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766813, 39.325485, 45.711735>,  <31.982119, 39.254688, 45.632793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766813, 39.325485, 45.711735>,  <31.407970, 39.443478, 45.843300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766813, 39.325485, 45.711735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299413, -0.141531, 0.943568,
		-0.324890, -0.944962, -0.038647,
		0.897106, -0.294984, -0.328916,
		32.035946, 39.236992, 45.613060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464872, 38.783108, 46.002274>,  <31.407970, 39.443478, 45.843300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464872, 38.783108, 46.002274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812346, 38.979782, 45.978153>,  <32.020828, 39.097786, 45.963680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812346, 38.979782, 45.978153>,  <31.464872, 38.783108, 46.002274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812346, 38.979782, 45.978153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097486, -0.050327, 0.993964,
		0.485685, -0.869316, -0.091650,
		0.868681, 0.491688, -0.060303,
		32.072948, 39.127289, 45.960064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817089, 38.432430, 46.478508>,  <31.464872, 38.783108, 46.002274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817089, 38.432430, 46.478508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030605, 38.767380, 46.431385>,  <32.158714, 38.968349, 46.403111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030605, 38.767380, 46.431385>,  <31.817089, 38.432430, 46.478508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030605, 38.767380, 46.431385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101477, 0.074876, 0.992016,
		0.839506, -0.541483, -0.045006,
		0.533791, 0.837371, -0.117806,
		32.190742, 39.018589, 46.396042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604328, 38.370983, 46.816036>,  <31.817089, 38.432430, 46.478508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604328, 38.370983, 46.816036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475288, 38.749283, 46.800587>,  <32.397865, 38.976261, 46.791317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475288, 38.749283, 46.800587>,  <32.604328, 38.370983, 46.816036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475288, 38.749283, 46.800587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310916, 0.144420, 0.939401,
		0.894015, 0.291038, -0.340638,
		-0.322596, 0.945748, -0.038625,
		32.378510, 39.033009, 46.788998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052452, 38.601574, 47.211563>,  <32.604328, 38.370983, 46.816036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052452, 38.601574, 47.211563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785778, 38.899647, 47.205547>,  <32.625774, 39.078491, 47.201939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785778, 38.899647, 47.205547>,  <33.052452, 38.601574, 47.211563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785778, 38.899647, 47.205547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159401, 0.162262, 0.973788,
		0.728092, 0.646816, -0.226961,
		-0.666689, 0.745185, -0.015038,
		32.585770, 39.123203, 47.201035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333633, 39.205688, 47.514927>,  <33.052452, 38.601574, 47.211563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333633, 39.205688, 47.514927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938686, 39.235725, 47.570732>,  <32.701717, 39.253750, 47.604218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938686, 39.235725, 47.570732>,  <33.333633, 39.205688, 47.514927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938686, 39.235725, 47.570732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155858, 0.301974, 0.940489,
		0.028498, 0.950354, -0.309864,
		-0.987368, 0.075097, 0.139515,
		32.642475, 39.258255, 47.612587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270836, 39.810417, 47.766567>,  <33.333633, 39.205688, 47.514927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270836, 39.810417, 47.766567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923641, 39.644890, 47.876373>,  <32.715324, 39.545574, 47.942257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923641, 39.644890, 47.876373>,  <33.270836, 39.810417, 47.766567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923641, 39.644890, 47.876373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004288, 0.546527, 0.837430,
		-0.496570, 0.728055, -0.472604,
		-0.867986, -0.413816, 0.274511,
		32.663246, 39.520744, 47.958725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906593, 40.311035, 47.992317>,  <33.270836, 39.810417, 47.766567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906593, 40.311035, 47.992317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717712, 40.006557, 48.170128>,  <32.604382, 39.823872, 48.276814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717712, 40.006557, 48.170128>,  <32.906593, 40.311035, 47.992317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717712, 40.006557, 48.170128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166850, 0.417989, 0.892998,
		-0.865554, 0.495847, -0.070371,
		-0.472205, -0.761197, 0.444524,
		32.576050, 39.778198, 48.303486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413445, 40.630898, 48.464520>,  <32.906593, 40.311035, 47.992317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413445, 40.630898, 48.464520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453323, 40.252083, 48.586628>,  <32.477249, 40.024796, 48.659893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453323, 40.252083, 48.586628>,  <32.413445, 40.630898, 48.464520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453323, 40.252083, 48.586628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232849, 0.320486, 0.918188,
		-0.967389, -0.020457, 0.252467,
		0.099695, -0.947032, 0.305272,
		32.483231, 39.967972, 48.678211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073971, 40.584362, 49.075951>,  <32.413445, 40.630898, 48.464520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073971, 40.584362, 49.075951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312019, 40.263042, 49.066601>,  <32.454849, 40.070251, 49.060989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312019, 40.263042, 49.066601>,  <32.073971, 40.584362, 49.075951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312019, 40.263042, 49.066601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320723, 0.210731, 0.923433,
		-0.736867, -0.557048, 0.383046,
		0.595117, -0.803299, -0.023378,
		32.490555, 40.022053, 49.059586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840004, 40.128429, 49.529140>,  <32.073971, 40.584362, 49.075951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840004, 40.128429, 49.529140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230831, 40.061592, 49.476349>,  <32.465328, 40.021488, 49.444675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230831, 40.061592, 49.476349>,  <31.840004, 40.128429, 49.529140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230831, 40.061592, 49.476349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155933, 0.139446, 0.977875,
		-0.144994, -0.976030, 0.162304,
		0.977068, -0.167095, -0.131976,
		32.523952, 40.011463, 49.436756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080479, 39.924263, 50.187267>,  <31.840004, 40.128429, 49.529140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080479, 39.924263, 50.187267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439354, 39.951267, 50.012688>,  <32.654678, 39.967472, 49.907940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439354, 39.951267, 50.012688>,  <32.080479, 39.924263, 50.187267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439354, 39.951267, 50.012688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438511, -0.018697, 0.898531,
		0.052505, -0.997543, -0.046381,
		0.897191, 0.067516, -0.436452,
		32.708511, 39.971519, 49.881752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555111, 39.649418, 50.624233>,  <32.080479, 39.924263, 50.187267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555111, 39.649418, 50.624233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804260, 39.864761, 50.397182>,  <32.953751, 39.993965, 50.260952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804260, 39.864761, 50.397182>,  <32.555111, 39.649418, 50.624233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804260, 39.864761, 50.397182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635185, 0.075543, 0.768657,
		0.456692, -0.839324, -0.294903,
		0.622874, 0.538357, -0.567626,
		32.991123, 40.026268, 50.226894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271877, 39.246941, 50.754322>,  <32.555111, 39.649418, 50.624233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271877, 39.246941, 50.754322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342720, 39.618282, 50.623611>,  <33.385227, 39.841087, 50.545185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342720, 39.618282, 50.623611>,  <33.271877, 39.246941, 50.754322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342720, 39.618282, 50.623611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731126, 0.098167, 0.675143,
		0.658853, -0.358490, -0.661360,
		0.177108, 0.928358, -0.326779,
		33.395851, 39.896790, 50.525578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976212, 39.372280, 50.514606>,  <33.271877, 39.246941, 50.754322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976212, 39.372280, 50.514606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836422, 39.737160, 50.600178>,  <33.752548, 39.956085, 50.651520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836422, 39.737160, 50.600178>,  <33.976212, 39.372280, 50.514606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836422, 39.737160, 50.600178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711193, 0.109616, 0.694399,
		0.609976, 0.394823, -0.687055,
		-0.349477, 0.912195, 0.213932,
		33.731579, 40.010818, 50.664356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610985, 39.909588, 50.527241>,  <33.976212, 39.372280, 50.514606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610985, 39.909588, 50.527241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299713, 40.032284, 50.746452>,  <34.112949, 40.105904, 50.877979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299713, 40.032284, 50.746452>,  <34.610985, 39.909588, 50.527241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299713, 40.032284, 50.746452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608814, 0.154196, 0.778183,
		0.154196, 0.939219, -0.306742,
		-0.778183, 0.306742, 0.548034,
		34.066257, 40.124306, 50.910862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945564, 40.385876, 51.037773>,  <34.610985, 39.909588, 50.527241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945564, 40.385876, 51.037773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578796, 40.336010, 51.189415>,  <34.358738, 40.306091, 51.280399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578796, 40.336010, 51.189415>,  <34.945564, 40.385876, 51.037773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578796, 40.336010, 51.189415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342237, 0.242999, 0.907648,
		-0.205271, 0.961983, -0.180146,
		-0.916917, -0.124662, 0.379107,
		34.303722, 40.298611, 51.303146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980118, 40.901798, 51.509079>,  <34.945564, 40.385876, 51.037773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980118, 40.901798, 51.509079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664711, 40.693779, 51.640404>,  <34.475468, 40.568966, 51.719196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664711, 40.693779, 51.640404>,  <34.980118, 40.901798, 51.509079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664711, 40.693779, 51.640404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258410, 0.204263, 0.944193,
		-0.558087, 0.829353, -0.026680,
		-0.788519, -0.520048, 0.328310,
		34.428154, 40.537766, 51.738895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887604, 41.240803, 52.130356>,  <34.980118, 40.901798, 51.509079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887604, 41.240803, 52.130356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670887, 40.905399, 52.153568>,  <34.540855, 40.704159, 52.167496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670887, 40.905399, 52.153568>,  <34.887604, 41.240803, 52.130356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670887, 40.905399, 52.153568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247529, -0.093190, 0.964388,
		-0.803238, 0.536863, 0.258044,
		-0.541792, -0.838507, 0.058035,
		34.508350, 40.653847, 52.170979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571846, 41.412777, 52.621559>,  <34.887604, 41.240803, 52.130356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571846, 41.412777, 52.621559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589462, 41.015789, 52.575825>,  <34.600033, 40.777596, 52.548386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589462, 41.015789, 52.575825>,  <34.571846, 41.412777, 52.621559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589462, 41.015789, 52.575825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472139, -0.080184, 0.877870,
		-0.880423, -0.092646, 0.465050,
		0.044041, -0.992465, -0.114337,
		34.602676, 40.718048, 52.541523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569954, 40.910538, 53.218418>,  <34.571846, 41.412777, 52.621559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569954, 40.910538, 53.218418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754227, 40.557648, 53.179531>,  <34.864792, 40.345913, 53.156200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754227, 40.557648, 53.179531>,  <34.569954, 40.910538, 53.218418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754227, 40.557648, 53.179531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178433, -0.015239, 0.983834,
		-0.869443, -0.470585, 0.150397,
		0.460685, -0.882223, -0.097217,
		34.892433, 40.292980, 53.150368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300739, 40.270733, 53.601181>,  <34.569954, 40.910538, 53.218418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300739, 40.270733, 53.601181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690510, 40.181408, 53.591190>,  <34.924374, 40.127815, 53.585197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690510, 40.181408, 53.591190>,  <34.300739, 40.270733, 53.601181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690510, 40.181408, 53.591190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018994, -0.028888, 0.999402,
		-0.223898, -0.974319, -0.023908,
		0.974428, -0.223310, -0.024974,
		34.982838, 40.114414, 53.583698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510773, 39.646004, 54.086823>,  <34.300739, 40.270733, 53.601181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510773, 39.646004, 54.086823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834221, 39.875629, 54.035309>,  <35.028290, 40.013405, 54.004402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834221, 39.875629, 54.035309>,  <34.510773, 39.646004, 54.086823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834221, 39.875629, 54.035309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251184, -0.138915, 0.957919,
		0.532021, -0.806938, -0.256526,
		0.808616, 0.574068, -0.128784,
		35.076805, 40.047852, 53.996674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998455, 39.364628, 54.511257>,  <34.510773, 39.646004, 54.086823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998455, 39.364628, 54.511257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119152, 39.732582, 54.411053>,  <35.191570, 39.953354, 54.350929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119152, 39.732582, 54.411053>,  <34.998455, 39.364628, 54.511257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119152, 39.732582, 54.411053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350555, 0.137304, 0.926423,
		0.886603, -0.367356, -0.281042,
		0.301739, 0.919890, -0.250513,
		35.209675, 40.008549, 54.335899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683186, 39.800228, 55.021301>,  <34.998455, 39.364628, 54.511257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683186, 39.800228, 55.021301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362186, 39.759056, 55.256386>,  <34.169586, 39.734352, 55.397434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362186, 39.759056, 55.256386>,  <34.683186, 39.800228, 55.021301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362186, 39.759056, 55.256386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417655, 0.606533, 0.676522,
		-0.426100, 0.788368, -0.443752,
		-0.802498, -0.102931, 0.587709,
		34.121437, 39.728176, 55.432697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435810, 40.121845, 54.915676>,  <34.683186, 39.800228, 55.021301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435810, 40.121845, 54.915676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642452, 39.780781, 54.884472>,  <35.766438, 39.576141, 54.865749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642452, 39.780781, 54.884472>,  <35.435810, 40.121845, 54.915676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642452, 39.780781, 54.884472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244152, -0.059366, -0.967918,
		0.820674, 0.519082, -0.238848,
		0.516608, -0.852660, -0.078015,
		35.797436, 39.524982, 54.861069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756580, 40.045460, 54.209644>,  <35.435810, 40.121845, 54.915676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756580, 40.045460, 54.209644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756054, 39.679295, 54.370651>,  <35.755737, 39.459595, 54.467255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756054, 39.679295, 54.370651>,  <35.756580, 40.045460, 54.209644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756054, 39.679295, 54.370651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255627, -0.388837, -0.885133,
		0.966775, -0.104057, -0.233493,
		-0.001313, -0.915411, 0.402518,
		35.755661, 39.404671, 54.491405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069828, 39.613541, 53.859493>,  <35.756580, 40.045460, 54.209644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069828, 39.613541, 53.859493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876972, 39.333572, 54.070263>,  <35.761257, 39.165592, 54.196724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876972, 39.333572, 54.070263>,  <36.069828, 39.613541, 53.859493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876972, 39.333572, 54.070263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043272, -0.581688, -0.812260,
		0.875026, -0.414423, 0.250167,
		-0.482139, -0.699923, 0.526925,
		35.732330, 39.123596, 54.228340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360600, 38.954391, 53.804863>,  <36.069828, 39.613541, 53.859493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360600, 38.954391, 53.804863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976475, 38.900578, 53.902603>,  <35.746002, 38.868290, 53.961246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976475, 38.900578, 53.902603>,  <36.360600, 38.954391, 53.804863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976475, 38.900578, 53.902603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122332, -0.584133, -0.802386,
		0.250680, -0.800431, 0.544490,
		-0.960309, -0.134534, 0.244349,
		35.688381, 38.860218, 53.975906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128342, 38.218300, 53.710854>,  <36.360600, 38.954391, 53.804863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128342, 38.218300, 53.710854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798290, 38.442722, 53.684383>,  <35.600262, 38.577377, 53.668503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798290, 38.442722, 53.684383>,  <36.128342, 38.218300, 53.710854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798290, 38.442722, 53.684383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209711, -0.412941, -0.886285,
		-0.524583, -0.717421, 0.458389,
		-0.825127, 0.561059, -0.066171,
		35.550751, 38.611038, 53.664532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499096, 37.768166, 53.549679>,  <36.128342, 38.218300, 53.710854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499096, 37.768166, 53.549679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460655, 38.141800, 53.412132>,  <35.437592, 38.365982, 53.329605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460655, 38.141800, 53.412132>,  <35.499096, 37.768166, 53.549679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460655, 38.141800, 53.412132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405546, -0.352232, -0.843484,
		-0.909009, 0.058391, 0.412667,
		-0.096103, 0.934090, -0.343862,
		35.431824, 38.422028, 53.308975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758198, 37.878674, 53.306606>,  <35.499096, 37.768166, 53.549679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758198, 37.878674, 53.306606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005096, 38.139397, 53.130352>,  <35.153236, 38.295830, 53.024601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005096, 38.139397, 53.130352>,  <34.758198, 37.878674, 53.306606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005096, 38.139397, 53.130352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437514, -0.181111, -0.880784,
		-0.653904, 0.736442, 0.173384,
		0.617245, 0.651806, -0.440633,
		35.190269, 38.334938, 52.998161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349339, 38.110516, 52.715023>,  <34.758198, 37.878674, 53.306606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349339, 38.110516, 52.715023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707710, 38.265190, 52.627579>,  <34.922733, 38.357994, 52.575111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707710, 38.265190, 52.627579>,  <34.349339, 38.110516, 52.715023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707710, 38.265190, 52.627579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204487, -0.077863, -0.975768,
		-0.394338, 0.918918, 0.009312,
		0.895926, 0.386686, -0.218611,
		34.976486, 38.381195, 52.561996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234489, 38.577412, 52.234241>,  <34.349339, 38.110516, 52.715023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234489, 38.577412, 52.234241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623863, 38.501385, 52.183186>,  <34.857487, 38.455769, 52.152550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623863, 38.501385, 52.183186>,  <34.234489, 38.577412, 52.234241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623863, 38.501385, 52.183186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121034, 0.046039, -0.991580,
		0.194348, 0.980690, 0.021811,
		0.973437, -0.190072, -0.127644,
		34.915894, 38.444363, 52.144894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511147, 39.033344, 51.607738>,  <34.234489, 38.577412, 52.234241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511147, 39.033344, 51.607738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760830, 38.724449, 51.655083>,  <34.910641, 38.539112, 51.683487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760830, 38.724449, 51.655083>,  <34.511147, 39.033344, 51.607738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760830, 38.724449, 51.655083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002620, -0.153566, -0.988135,
		0.781252, 0.616493, -0.097881,
		0.624210, -0.772239, 0.118359,
		34.948093, 38.492779, 51.690590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051567, 39.195229, 51.294598>,  <34.511147, 39.033344, 51.607738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051567, 39.195229, 51.294598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064484, 38.795475, 51.299999>,  <35.072235, 38.555622, 51.303242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064484, 38.795475, 51.299999>,  <35.051567, 39.195229, 51.294598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064484, 38.795475, 51.299999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147347, -0.008608, -0.989048,
		0.988558, 0.033931, 0.146978,
		0.032294, -0.999387, 0.013509,
		35.074173, 38.495659, 51.304050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475250, 39.005100, 50.793846>,  <35.051567, 39.195229, 51.294598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475250, 39.005100, 50.793846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252960, 38.673943, 50.824211>,  <35.119587, 38.475246, 50.842430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252960, 38.673943, 50.824211>,  <35.475250, 39.005100, 50.793846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252960, 38.673943, 50.824211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134478, -0.179628, -0.974500,
		0.820418, -0.531344, 0.211157,
		-0.555724, -0.827893, 0.075916,
		35.086243, 38.425575, 50.846985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807716, 38.550053, 50.384228>,  <35.475250, 39.005100, 50.793846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807716, 38.550053, 50.384228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457485, 38.358761, 50.411507>,  <35.247345, 38.243984, 50.427872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457485, 38.358761, 50.411507>,  <35.807716, 38.550053, 50.384228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457485, 38.358761, 50.411507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075984, -0.275757, -0.958220,
		0.477057, -0.833818, 0.277786,
		-0.875581, -0.478233, 0.068195,
		35.194809, 38.215290, 50.431965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915802, 38.008850, 50.076595>,  <35.807716, 38.550053, 50.384228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915802, 38.008850, 50.076595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516201, 38.021824, 50.064308>,  <35.276440, 38.029606, 50.056934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516201, 38.021824, 50.064308>,  <35.915802, 38.008850, 50.076595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516201, 38.021824, 50.064308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026327, -0.128070, -0.991416,
		-0.036086, -0.991235, 0.127089,
		-0.999002, 0.032430, -0.030718,
		35.216499, 38.031555, 50.055092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803246, 37.439045, 49.667564>,  <35.915802, 38.008850, 50.076595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803246, 37.439045, 49.667564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472000, 37.663105, 49.658970>,  <35.273254, 37.797543, 49.653812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472000, 37.663105, 49.658970>,  <35.803246, 37.439045, 49.667564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472000, 37.663105, 49.658970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126200, -0.223642, -0.966467,
		-0.546176, -0.797629, 0.255892,
		-0.828110, 0.560154, -0.021487,
		35.223568, 37.831150, 49.652523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227146, 37.029808, 49.275463>,  <35.803246, 37.439045, 49.667564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227146, 37.029808, 49.275463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100876, 37.408604, 49.251606>,  <35.025116, 37.635883, 49.237289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100876, 37.408604, 49.251606>,  <35.227146, 37.029808, 49.275463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100876, 37.408604, 49.251606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144314, -0.110047, -0.983394,
		-0.937829, -0.301824, 0.171403,
		-0.315674, 0.946991, -0.059648,
		35.006172, 37.692699, 49.233711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654068, 36.999142, 48.819542>,  <35.227146, 37.029808, 49.275463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654068, 36.999142, 48.819542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758972, 37.385082, 48.826176>,  <34.821915, 37.616646, 48.830154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758972, 37.385082, 48.826176>,  <34.654068, 36.999142, 48.819542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758972, 37.385082, 48.826176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156743, 0.059551, -0.985843,
		-0.952182, 0.255949, 0.166852,
		0.262262, 0.964854, 0.016586,
		34.837650, 37.674538, 48.831150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097118, 37.308578, 48.395527>,  <34.654068, 36.999142, 48.819542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097118, 37.308578, 48.395527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424465, 37.535568, 48.431843>,  <34.620872, 37.671764, 48.453632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424465, 37.535568, 48.431843>,  <34.097118, 37.308578, 48.395527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424465, 37.535568, 48.431843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103107, 0.300395, -0.948226,
		-0.565370, 0.766636, 0.304344,
		0.818368, 0.567478, 0.090789,
		34.669975, 37.705811, 48.459080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845215, 37.977848, 48.226894>,  <34.097118, 37.308578, 48.395527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845215, 37.977848, 48.226894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240517, 38.006496, 48.172890>,  <34.477695, 38.023685, 48.140488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240517, 38.006496, 48.172890>,  <33.845215, 37.977848, 48.226894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240517, 38.006496, 48.172890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148633, 0.244674, -0.958146,
		-0.035591, 0.966956, 0.252445,
		0.988252, 0.071623, -0.135013,
		34.536991, 38.027985, 48.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861938, 38.396637, 47.735748>,  <33.845215, 37.977848, 48.226894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861938, 38.396637, 47.735748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226547, 38.232433, 47.725861>,  <34.445312, 38.133911, 47.719929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226547, 38.232433, 47.725861>,  <33.861938, 38.396637, 47.735748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226547, 38.232433, 47.725861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017951, 0.099774, -0.994848,
		0.410864, 0.906380, 0.098315,
		0.911520, -0.410512, -0.024723,
		34.500004, 38.109280, 47.718445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225048, 38.704041, 47.204544>,  <33.861938, 38.396637, 47.735748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225048, 38.704041, 47.204544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428726, 38.366711, 47.273266>,  <34.550934, 38.164314, 47.314499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428726, 38.366711, 47.273266>,  <34.225048, 38.704041, 47.204544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428726, 38.366711, 47.273266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031269, -0.181364, -0.982919,
		0.860080, 0.505874, -0.065981,
		0.509200, -0.843326, 0.171806,
		34.581486, 38.113712, 47.324806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695580, 38.771152, 46.726860>,  <34.225048, 38.704041, 47.204544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695580, 38.771152, 46.726860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676006, 38.379456, 46.805538>,  <34.664261, 38.144436, 46.852745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676006, 38.379456, 46.805538>,  <34.695580, 38.771152, 46.726860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676006, 38.379456, 46.805538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021179, -0.195867, -0.980402,
		0.998577, -0.052141, -0.011155,
		-0.048934, -0.979243, 0.196693,
		34.661327, 38.085682, 46.864548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200779, 38.447880, 46.377274>,  <34.695580, 38.771152, 46.726860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200779, 38.447880, 46.377274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956387, 38.140190, 46.452103>,  <34.809753, 37.955578, 46.497002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956387, 38.140190, 46.452103>,  <35.200779, 38.447880, 46.377274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956387, 38.140190, 46.452103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148888, -0.343749, -0.927183,
		0.777520, -0.538636, 0.324552,
		-0.610979, -0.769225, 0.187076,
		34.773094, 37.909424, 46.508224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543880, 37.872536, 46.129826>,  <35.200779, 38.447880, 46.377274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543880, 37.872536, 46.129826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150318, 37.808945, 46.097198>,  <34.914181, 37.770790, 46.077621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150318, 37.808945, 46.097198>,  <35.543880, 37.872536, 46.129826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150318, 37.808945, 46.097198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123476, -0.274962, -0.953493,
		0.129154, -0.948221, 0.290167,
		-0.983907, -0.158976, -0.081570,
		34.855145, 37.761253, 46.072727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505100, 37.286629, 45.635628>,  <35.543880, 37.872536, 46.129826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505100, 37.286629, 45.635628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128178, 37.420315, 45.643105>,  <34.902023, 37.500526, 45.647591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128178, 37.420315, 45.643105>,  <35.505100, 37.286629, 45.635628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128178, 37.420315, 45.643105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155091, -0.386415, -0.909192,
		-0.296642, -0.859641, 0.415957,
		-0.942311, 0.334216, 0.018696,
		34.845486, 37.520580, 45.648712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136879, 36.674721, 45.597023>,  <35.505100, 37.286629, 45.635628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136879, 36.674721, 45.597023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917377, 36.981159, 45.463181>,  <34.785675, 37.165024, 45.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917377, 36.981159, 45.463181>,  <35.136879, 36.674721, 45.597023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917377, 36.981159, 45.463181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280109, -0.545613, -0.789839,
		-0.787658, -0.339705, 0.514000,
		-0.548757, 0.766098, -0.334602,
		34.752750, 37.210987, 45.362801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453266, 36.353798, 45.415688>,  <35.136879, 36.674721, 45.597023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453266, 36.353798, 45.415688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463058, 36.699150, 45.214104>,  <34.468933, 36.906361, 45.093155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463058, 36.699150, 45.214104>,  <34.453266, 36.353798, 45.415688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463058, 36.699150, 45.214104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320850, -0.470657, -0.821910,
		-0.946813, 0.181816, 0.265494,
		0.024480, 0.863380, -0.503960,
		34.470402, 36.958164, 45.062916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796146, 36.408775, 45.110008>,  <34.453266, 36.353798, 45.415688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796146, 36.408775, 45.110008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013721, 36.665798, 44.894138>,  <34.144268, 36.820011, 44.764618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013721, 36.665798, 44.894138>,  <33.796146, 36.408775, 45.110008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013721, 36.665798, 44.894138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407257, -0.360164, -0.839299,
		-0.733672, 0.676312, 0.065781,
		0.543936, 0.642560, -0.539675,
		34.176903, 36.858566, 44.732235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390068, 36.792622, 44.742516>,  <33.796146, 36.408775, 45.110008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390068, 36.792622, 44.742516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735859, 36.791775, 44.541451>,  <33.943333, 36.791267, 44.420811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735859, 36.791775, 44.541451>,  <33.390068, 36.792622, 44.742516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735859, 36.791775, 44.541451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496418, -0.160765, -0.853067,
		-0.079003, 0.986990, -0.140031,
		0.864481, -0.002119, -0.502661,
		33.995205, 36.791138, 44.390652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153076, 37.068657, 44.145046>,  <33.390068, 36.792622, 44.742516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153076, 37.068657, 44.145046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501205, 36.885269, 44.073105>,  <33.710083, 36.775238, 44.029942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501205, 36.885269, 44.073105>,  <33.153076, 37.068657, 44.145046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501205, 36.885269, 44.073105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367543, -0.361591, -0.856833,
		0.327799, 0.811824, -0.483208,
		0.870322, -0.458469, -0.179851,
		33.762302, 36.747730, 44.019150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074741, 37.112789, 43.403793>,  <33.153076, 37.068657, 44.145046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074741, 37.112789, 43.403793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382523, 36.857521, 43.414204>,  <33.567192, 36.704361, 43.420448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382523, 36.857521, 43.414204>,  <33.074741, 37.112789, 43.403793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382523, 36.857521, 43.414204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344364, -0.448831, -0.824599,
		0.537917, 0.625529, -0.565119,
		0.769454, -0.638172, 0.026024,
		33.613358, 36.666069, 43.422012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414959, 37.027405, 42.765110>,  <33.074741, 37.112789, 43.403793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414959, 37.027405, 42.765110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506657, 36.692692, 42.964005>,  <33.561676, 36.491863, 43.083344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506657, 36.692692, 42.964005>,  <33.414959, 37.027405, 42.765110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506657, 36.692692, 42.964005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214099, -0.541683, -0.812860,
		0.949530, 0.079888, -0.303333,
		0.229248, -0.836778, 0.497240,
		33.575432, 36.441658, 43.113178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683937, 36.681374, 42.231190>,  <33.414959, 37.027405, 42.765110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683937, 36.681374, 42.231190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674362, 36.390011, 42.505081>,  <33.668617, 36.215195, 42.669415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674362, 36.390011, 42.505081>,  <33.683937, 36.681374, 42.231190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674362, 36.390011, 42.505081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097719, -0.679942, -0.726726,
		0.994926, -0.084305, -0.054905,
		-0.023934, -0.728404, 0.684730,
		33.667183, 36.171490, 42.710499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063477, 36.139843, 41.929733>,  <33.683937, 36.681374, 42.231190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063477, 36.139843, 41.929733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871578, 35.930805, 42.211651>,  <33.756439, 35.805382, 42.380802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871578, 35.930805, 42.211651>,  <34.063477, 36.139843, 41.929733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871578, 35.930805, 42.211651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062995, -0.780685, -0.621741,
		0.875141, -0.342679, 0.341613,
		-0.479750, -0.522591, 0.704797,
		33.727654, 35.774029, 42.423088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498844, 35.562981, 41.953453>,  <34.063477, 36.139843, 41.929733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498844, 35.562981, 41.953453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117508, 35.516708, 42.064995>,  <33.888706, 35.488945, 42.131920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117508, 35.516708, 42.064995>,  <34.498844, 35.562981, 41.953453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117508, 35.516708, 42.064995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110997, -0.724673, -0.680094,
		0.280756, -0.679313, 0.678019,
		-0.953339, -0.115682, 0.278859,
		33.831505, 35.482002, 42.148651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298183, 34.859386, 41.653812>,  <34.498844, 35.562981, 41.953453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298183, 34.859386, 41.653812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946388, 35.022129, 41.752583>,  <33.735313, 35.119774, 41.811844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946388, 35.022129, 41.752583>,  <34.298183, 34.859386, 41.653812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946388, 35.022129, 41.752583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438888, -0.492684, -0.751425,
		-0.184070, -0.769239, 0.611874,
		-0.879486, 0.406859, 0.246922,
		33.682541, 35.144188, 41.826660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828838, 34.291790, 41.463081>,  <34.298183, 34.859386, 41.653812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828838, 34.291790, 41.463081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624275, 34.634094, 41.494408>,  <33.501537, 34.839478, 41.513203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624275, 34.634094, 41.494408>,  <33.828838, 34.291790, 41.463081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624275, 34.634094, 41.494408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427430, -0.174246, -0.887098,
		-0.745498, -0.487144, 0.454889,
		-0.511407, 0.855762, 0.078320,
		33.470852, 34.890823, 41.517902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084896, 34.125996, 41.212994>,  <33.828838, 34.291790, 41.463081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084896, 34.125996, 41.212994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152943, 34.517899, 41.170773>,  <33.193771, 34.753040, 41.145439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152943, 34.517899, 41.170773>,  <33.084896, 34.125996, 41.212994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152943, 34.517899, 41.170773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352583, -0.039510, -0.934946,
		-0.920189, 0.196263, 0.338724,
		0.170112, 0.979755, -0.105556,
		33.203976, 34.811825, 41.139107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482094, 34.369911, 40.787659>,  <33.084896, 34.125996, 41.212994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482094, 34.369911, 40.787659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755421, 34.661961, 40.787617>,  <32.919415, 34.837189, 40.787590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755421, 34.661961, 40.787617>,  <32.482094, 34.369911, 40.787659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755421, 34.661961, 40.787617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268461, 0.251116, -0.929983,
		-0.678977, 0.635499, 0.367601,
		0.683315, 0.730124, -0.000104,
		32.960415, 34.880997, 40.787586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179615, 34.930271, 40.737160>,  <32.482094, 34.369911, 40.787659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179615, 34.930271, 40.737160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537895, 35.002480, 40.574612>,  <32.752865, 35.045803, 40.477085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537895, 35.002480, 40.574612>,  <32.179615, 34.930271, 40.737160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537895, 35.002480, 40.574612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412028, -0.006686, -0.911147,
		-0.167199, 0.983548, 0.068391,
		0.895700, 0.180521, -0.406367,
		32.806606, 35.056637, 40.452702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108368, 35.336876, 40.052364>,  <32.179615, 34.930271, 40.737160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108368, 35.336876, 40.052364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494709, 35.243118, 40.008194>,  <32.726513, 35.186863, 39.981693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494709, 35.243118, 40.008194>,  <32.108368, 35.336876, 40.052364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494709, 35.243118, 40.008194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091399, 0.090580, -0.991686,
		0.242444, 0.967913, 0.066064,
		0.965851, -0.234390, -0.110427,
		32.784466, 35.172802, 39.975067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372482, 35.787041, 39.598770>,  <32.108368, 35.336876, 40.052364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372482, 35.787041, 39.598770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632843, 35.483391, 39.595928>,  <32.789059, 35.301201, 39.594223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632843, 35.483391, 39.595928>,  <32.372482, 35.787041, 39.598770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632843, 35.483391, 39.595928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163675, 0.149472, -0.975125,
		0.741307, 0.633549, 0.221542,
		0.650903, -0.759127, -0.007108,
		32.828114, 35.255653, 39.593796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962326, 36.025120, 39.304852>,  <32.372482, 35.787041, 39.598770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962326, 36.025120, 39.304852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965034, 35.627712, 39.259460>,  <32.966660, 35.389267, 39.232224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965034, 35.627712, 39.259460>,  <32.962326, 36.025120, 39.304852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965034, 35.627712, 39.259460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132525, 0.111590, -0.984878,
		0.991157, 0.021708, -0.130910,
		0.006772, -0.993517, -0.113480,
		32.967068, 35.329659, 39.225418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299171, 35.938232, 38.662262>,  <32.962326, 36.025120, 39.304852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299171, 35.938232, 38.662262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184757, 35.562317, 38.737068>,  <33.116108, 35.336765, 38.781952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184757, 35.562317, 38.737068>,  <33.299171, 35.938232, 38.662262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184757, 35.562317, 38.737068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077527, -0.217228, -0.973037,
		0.955078, -0.263824, 0.134994,
		-0.286035, -0.939792, 0.187016,
		33.098946, 35.280380, 38.793175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825191, 35.449684, 38.475510>,  <33.299171, 35.938232, 38.662262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825191, 35.449684, 38.475510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442623, 35.334301, 38.457409>,  <33.213081, 35.265072, 38.446548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442623, 35.334301, 38.457409>,  <33.825191, 35.449684, 38.475510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442623, 35.334301, 38.457409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082271, -0.117543, -0.989654,
		0.280159, -0.950249, 0.136152,
		-0.956422, -0.288462, -0.045248,
		33.155697, 35.247761, 38.443836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507580, 35.166527, 38.407883>,  <33.825191, 35.449684, 38.475510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507580, 35.166527, 38.407883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892262, 35.192848, 38.301453>,  <35.123070, 35.208641, 38.237595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892262, 35.192848, 38.301453>,  <34.507580, 35.166527, 38.407883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892262, 35.192848, 38.301453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264383, 0.033310, 0.963842,
		0.072286, -0.997276, 0.014638,
		0.961705, 0.065802, -0.266071,
		35.180775, 35.212589, 38.221630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733700, 34.769745, 38.872787>,  <34.507580, 35.166527, 38.407883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733700, 34.769745, 38.872787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010891, 35.025532, 38.739601>,  <35.177204, 35.179005, 38.659687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010891, 35.025532, 38.739601>,  <34.733700, 34.769745, 38.872787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010891, 35.025532, 38.739601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391585, 0.053941, 0.918559,
		0.605350, -0.766924, -0.213026,
		0.692974, 0.639467, -0.332969,
		35.218784, 35.217373, 38.639709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371666, 34.515022, 39.077087>,  <34.733700, 34.769745, 38.872787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371666, 34.515022, 39.077087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462173, 34.897827, 39.004505>,  <35.516479, 35.127510, 38.960957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462173, 34.897827, 39.004505>,  <35.371666, 34.515022, 39.077087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462173, 34.897827, 39.004505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654682, -0.011477, 0.755817,
		0.721245, -0.289817, -0.629136,
		0.226269, 0.957013, -0.181460,
		35.530056, 35.184933, 38.950066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164536, 34.484470, 39.087505>,  <35.371666, 34.515022, 39.077087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164536, 34.484470, 39.087505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997826, 34.843559, 39.144638>,  <35.897800, 35.059013, 39.178917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997826, 34.843559, 39.144638>,  <36.164536, 34.484470, 39.087505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997826, 34.843559, 39.144638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622727, 0.167504, 0.764299,
		0.662200, 0.407486, -0.628845,
		-0.416775, 0.897718, 0.142831,
		35.872791, 35.112873, 39.187489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762028, 34.908207, 39.249489>,  <36.164536, 34.484470, 39.087505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762028, 34.908207, 39.249489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424568, 35.091240, 39.361828>,  <36.222092, 35.201061, 39.429230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424568, 35.091240, 39.361828>,  <36.762028, 34.908207, 39.249489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424568, 35.091240, 39.361828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442291, 0.295780, 0.846695,
		0.304366, 0.838528, -0.451920,
		-0.843647, 0.457586, 0.280848,
		36.171474, 35.228516, 39.446083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905487, 35.580925, 39.391918>,  <36.762028, 34.908207, 39.249489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905487, 35.580925, 39.391918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559696, 35.544079, 39.589581>,  <36.352222, 35.521973, 39.708179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559696, 35.544079, 39.589581>,  <36.905487, 35.580925, 39.391918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559696, 35.544079, 39.589581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409767, 0.440262, 0.798912,
		-0.291153, 0.893131, -0.342851,
		-0.864477, -0.092116, 0.494159,
		36.300354, 35.516445, 39.737827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780807, 36.277924, 39.718128>,  <36.905487, 35.580925, 39.391918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780807, 36.277924, 39.718128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552059, 36.018234, 39.918716>,  <36.414810, 35.862419, 40.039070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552059, 36.018234, 39.918716>,  <36.780807, 36.277924, 39.718128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552059, 36.018234, 39.918716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229288, 0.460430, 0.857573,
		-0.787647, 0.605404, -0.114449,
		-0.571874, -0.649223, 0.501468,
		36.380497, 35.823467, 40.069157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493690, 36.735401, 40.267052>,  <36.780807, 36.277924, 39.718128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493690, 36.735401, 40.267052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448711, 36.352001, 40.371841>,  <36.421722, 36.121960, 40.434715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448711, 36.352001, 40.371841>,  <36.493690, 36.735401, 40.267052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448711, 36.352001, 40.371841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148490, 0.244475, 0.958218,
		-0.982500, 0.146653, 0.114836,
		-0.112451, -0.958501, 0.261973,
		36.414978, 36.064449, 40.450432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033424, 36.784908, 40.916107>,  <36.493690, 36.735401, 40.267052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033424, 36.784908, 40.916107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191277, 36.417461, 40.908047>,  <36.285988, 36.196995, 40.903210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191277, 36.417461, 40.908047>,  <36.033424, 36.784908, 40.916107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191277, 36.417461, 40.908047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108784, 0.024938, 0.993753,
		-0.912377, -0.394358, 0.109773,
		0.394632, -0.918619, -0.020147,
		36.309666, 36.141876, 40.902004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690922, 36.469124, 41.452774>,  <36.033424, 36.784908, 40.916107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690922, 36.469124, 41.452774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025795, 36.255226, 41.406864>,  <36.226719, 36.126888, 41.379318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025795, 36.255226, 41.406864>,  <35.690922, 36.469124, 41.452774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025795, 36.255226, 41.406864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100955, -0.055160, 0.993361,
		-0.537527, -0.843210, 0.007807,
		0.837181, -0.534746, -0.114777,
		36.276951, 36.094803, 41.372433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629154, 36.012890, 41.995396>,  <35.690922, 36.469124, 41.452774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629154, 36.012890, 41.995396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009056, 36.021858, 41.870518>,  <36.236996, 36.027241, 41.795589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009056, 36.021858, 41.870518>,  <35.629154, 36.012890, 41.995396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009056, 36.021858, 41.870518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312507, -0.012048, 0.949839,
		0.017544, -0.999676, -0.018452,
		0.949753, 0.022430, -0.312194,
		36.293983, 36.028584, 41.776859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963058, 35.551472, 42.457340>,  <35.629154, 36.012890, 41.995396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963058, 35.551472, 42.457340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272469, 35.770512, 42.329712>,  <36.458115, 35.901936, 42.253136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272469, 35.770512, 42.329712>,  <35.963058, 35.551472, 42.457340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272469, 35.770512, 42.329712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361477, 0.032332, 0.931820,
		0.520578, -0.836118, -0.172934,
		0.773520, 0.547596, -0.319068,
		36.504524, 35.934792, 42.233990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580879, 35.216942, 42.546871>,  <35.963058, 35.551472, 42.457340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580879, 35.216942, 42.546871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637367, 35.612923, 42.549507>,  <36.671261, 35.850513, 42.551090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637367, 35.612923, 42.549507>,  <36.580879, 35.216942, 42.546871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637367, 35.612923, 42.549507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238722, -0.040513, 0.970243,
		0.960765, -0.135442, -0.242046,
		0.141218, 0.989957, 0.006591,
		36.679733, 35.909908, 42.551483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801510, 35.299339, 43.156258>,  <36.580879, 35.216942, 42.546871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801510, 35.299339, 43.156258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791473, 35.689194, 43.067299>,  <36.785450, 35.923107, 43.013924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791473, 35.689194, 43.067299>,  <36.801510, 35.299339, 43.156258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791473, 35.689194, 43.067299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180720, 0.223225, 0.957868,
		0.983214, -0.016159, -0.181737,
		-0.025090, 0.974633, -0.222398,
		36.783947, 35.981583, 43.000580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460182, 35.710239, 43.368500>,  <36.801510, 35.299339, 43.156258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460182, 35.710239, 43.368500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174263, 35.989742, 43.357231>,  <37.002712, 36.157444, 43.350471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174263, 35.989742, 43.357231>,  <37.460182, 35.710239, 43.368500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174263, 35.989742, 43.357231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222425, 0.265353, 0.938144,
		0.663013, 0.664321, -0.345097,
		-0.714801, 0.698760, -0.028171,
		36.959824, 36.199371, 43.348782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790462, 36.300106, 43.499168>,  <37.460182, 35.710239, 43.368500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790462, 36.300106, 43.499168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401482, 36.361317, 43.569496>,  <37.168091, 36.398045, 43.611694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401482, 36.361317, 43.569496>,  <37.790462, 36.300106, 43.499168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401482, 36.361317, 43.569496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220491, 0.359288, 0.906805,
		0.075595, 0.920595, -0.383132,
		-0.972455, 0.153027, 0.175822,
		37.109745, 36.407227, 43.622242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800377, 36.903244, 43.817383>,  <37.790462, 36.300106, 43.499168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800377, 36.903244, 43.817383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448330, 36.731808, 43.899071>,  <37.237103, 36.628948, 43.948082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448330, 36.731808, 43.899071>,  <37.800377, 36.903244, 43.817383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448330, 36.731808, 43.899071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080825, 0.288605, 0.954031,
		-0.467822, 0.856166, -0.219367,
		-0.880119, -0.428586, 0.204215,
		37.184296, 36.603233, 43.960335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394291, 37.379276, 44.251949>,  <37.800377, 36.903244, 43.817383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394291, 37.379276, 44.251949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249737, 37.015663, 44.334957>,  <37.163006, 36.797497, 44.384762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249737, 37.015663, 44.334957>,  <37.394291, 37.379276, 44.251949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249737, 37.015663, 44.334957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009402, 0.218994, 0.975681,
		-0.932371, 0.354544, -0.070594,
		-0.361381, -0.909033, 0.207517,
		37.141323, 36.742954, 44.397213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857971, 37.540066, 44.752407>,  <37.394291, 37.379276, 44.251949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857971, 37.540066, 44.752407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953949, 37.152287, 44.772762>,  <37.011536, 36.919617, 44.784977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953949, 37.152287, 44.772762>,  <36.857971, 37.540066, 44.752407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953949, 37.152287, 44.772762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172963, 0.008894, 0.984888,
		-0.955255, -0.245117, -0.165546,
		0.239940, -0.969453, 0.050892,
		37.025932, 36.861450, 44.788029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291321, 37.198689, 45.079037>,  <36.857971, 37.540066, 44.752407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291321, 37.198689, 45.079037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622852, 36.980736, 45.129875>,  <36.821770, 36.849964, 45.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622852, 36.980736, 45.129875>,  <36.291321, 37.198689, 45.079037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622852, 36.980736, 45.129875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090730, 0.093255, 0.991500,
		-0.552099, -0.833313, 0.027856,
		0.828828, -0.544879, 0.127093,
		36.871502, 36.817272, 45.168003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177624, 36.865837, 45.742722>,  <36.291321, 37.198689, 45.079037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177624, 36.865837, 45.742722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565338, 36.783230, 45.689304>,  <36.797966, 36.733665, 45.657253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565338, 36.783230, 45.689304>,  <36.177624, 36.865837, 45.742722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565338, 36.783230, 45.689304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158267, 0.108154, 0.981455,
		-0.188241, -0.972448, 0.137517,
		0.969287, -0.206515, -0.133547,
		36.856125, 36.721275, 45.649239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321564, 36.337376, 46.215973>,  <36.177624, 36.865837, 45.742722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321564, 36.337376, 46.215973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659740, 36.532406, 46.128792>,  <36.862644, 36.649426, 46.076485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659740, 36.532406, 46.128792>,  <36.321564, 36.337376, 46.215973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659740, 36.532406, 46.128792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170174, 0.140884, 0.975291,
		0.506235, -0.861638, 0.036136,
		0.845439, 0.487577, -0.217949,
		36.913372, 36.678680, 46.063408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852486, 36.167927, 46.750622>,  <36.321564, 36.337376, 46.215973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852486, 36.167927, 46.750622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973026, 36.516094, 46.594898>,  <37.045353, 36.724995, 46.501465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973026, 36.516094, 46.594898>,  <36.852486, 36.167927, 46.750622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973026, 36.516094, 46.594898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241231, 0.325412, 0.914284,
		0.922493, -0.369437, -0.111907,
		0.301355, 0.870415, -0.389310,
		37.063431, 36.777218, 46.478104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439377, 36.377365, 47.204617>,  <36.852486, 36.167927, 46.750622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439377, 36.377365, 47.204617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360420, 36.716404, 47.007591>,  <37.313046, 36.919827, 46.889378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360420, 36.716404, 47.007591>,  <37.439377, 36.377365, 47.204617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360420, 36.716404, 47.007591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232151, 0.528570, 0.816529,
		0.952440, 0.046831, -0.301107,
		-0.197395, 0.847597, -0.492559,
		37.301201, 36.970684, 46.859825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953568, 36.803329, 47.349766>,  <37.439377, 36.377365, 47.204617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953568, 36.803329, 47.349766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650047, 37.035133, 47.230843>,  <37.467937, 37.174217, 47.159489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650047, 37.035133, 47.230843>,  <37.953568, 36.803329, 47.349766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650047, 37.035133, 47.230843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105401, 0.559702, 0.821964,
		0.642744, 0.592366, -0.485781,
		-0.758796, 0.579514, -0.297309,
		37.422409, 37.208988, 47.141651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215961, 37.424938, 47.465714>,  <37.953568, 36.803329, 47.349766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215961, 37.424938, 47.465714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818157, 37.461468, 47.445309>,  <37.579475, 37.483387, 47.433067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818157, 37.461468, 47.445309>,  <38.215961, 37.424938, 47.465714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818157, 37.461468, 47.445309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027661, 0.699879, 0.713726,
		0.100879, 0.708399, -0.698565,
		-0.994514, 0.091323, -0.051008,
		37.519802, 37.488865, 47.430008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012173, 38.163948, 47.327377>,  <38.215961, 37.424938, 47.465714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012173, 38.163948, 47.327377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721992, 37.994583, 47.544426>,  <37.547882, 37.892963, 47.674656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721992, 37.994583, 47.544426>,  <38.012173, 38.163948, 47.327377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721992, 37.994583, 47.544426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090276, 0.723039, 0.684883,
		-0.682324, 0.545837, -0.486308,
		-0.725454, -0.423411, 0.542623,
		37.504356, 37.867561, 47.707214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736954, 38.689220, 47.692562>,  <38.012173, 38.163948, 47.327377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736954, 38.689220, 47.692562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569660, 38.400181, 47.912716>,  <37.469284, 38.226757, 48.044807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569660, 38.400181, 47.912716>,  <37.736954, 38.689220, 47.692562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569660, 38.400181, 47.912716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117022, 0.643743, 0.756241,
		-0.900769, 0.251879, -0.353797,
		-0.418235, -0.722600, 0.550389,
		37.444191, 38.183399, 48.077831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218491, 38.975327, 47.999550>,  <37.736954, 38.689220, 47.692562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218491, 38.975327, 47.999550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250954, 38.639946, 48.215107>,  <37.270432, 38.438717, 48.344440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250954, 38.639946, 48.215107>,  <37.218491, 38.975327, 47.999550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250954, 38.639946, 48.215107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214070, 0.513398, 0.831021,
		-0.973441, -0.182802, -0.137824,
		0.081153, -0.838455, 0.538895,
		37.275299, 38.388409, 48.376774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705936, 39.025337, 48.512032>,  <37.218491, 38.975327, 47.999550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705936, 39.025337, 48.512032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943684, 38.739204, 48.659016>,  <37.086330, 38.567524, 48.747208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943684, 38.739204, 48.659016>,  <36.705936, 39.025337, 48.512032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943684, 38.739204, 48.659016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045997, 0.425941, 0.903581,
		-0.802879, -0.553959, 0.220261,
		0.594365, -0.715335, 0.367460,
		37.121994, 38.524605, 48.769253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411102, 38.839344, 49.152096>,  <36.705936, 39.025337, 48.512032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411102, 38.839344, 49.152096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794899, 38.729797, 49.178543>,  <37.025177, 38.664070, 49.194412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794899, 38.729797, 49.178543>,  <36.411102, 38.839344, 49.152096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794899, 38.729797, 49.178543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018414, 0.295142, 0.955276,
		-0.281130, -0.915363, 0.288229,
		0.959493, -0.273865, 0.066118,
		37.082748, 38.647636, 49.198380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471279, 38.460266, 49.749100>,  <36.411102, 38.839344, 49.152096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471279, 38.460266, 49.749100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836941, 38.596527, 49.661209>,  <37.056335, 38.678284, 49.608475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836941, 38.596527, 49.661209>,  <36.471279, 38.460266, 49.749100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836941, 38.596527, 49.661209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101486, 0.332456, 0.937642,
		0.392467, -0.879445, 0.269343,
		0.914150, 0.340659, -0.219729,
		37.111187, 38.698723, 49.595291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882221, 38.349461, 50.336910>,  <36.471279, 38.460266, 49.749100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882221, 38.349461, 50.336910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102818, 38.630955, 50.157745>,  <37.235176, 38.799850, 50.050247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102818, 38.630955, 50.157745>,  <36.882221, 38.349461, 50.336910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102818, 38.630955, 50.157745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188260, 0.418097, 0.888681,
		0.812663, -0.574420, 0.098090,
		0.551487, 0.703731, -0.447912,
		37.268265, 38.842075, 50.023373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569080, 38.423615, 50.802307>,  <36.882221, 38.349461, 50.336910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569080, 38.423615, 50.802307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539528, 38.745834, 50.567142>,  <37.521797, 38.939167, 50.426044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539528, 38.745834, 50.567142>,  <37.569080, 38.423615, 50.802307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539528, 38.745834, 50.567142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277696, 0.582820, 0.763680,
		0.957824, -0.106840, -0.266755,
		-0.073879, 0.805547, -0.587908,
		37.517365, 38.987499, 50.390770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210152, 38.726891, 50.813721>,  <37.569080, 38.423615, 50.802307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210152, 38.726891, 50.813721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957996, 39.024105, 50.723827>,  <37.806702, 39.202435, 50.669891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957996, 39.024105, 50.723827>,  <38.210152, 38.726891, 50.813721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957996, 39.024105, 50.723827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446245, 0.583748, 0.678309,
		0.635194, 0.327316, -0.699567,
		-0.630392, 0.743036, -0.224730,
		37.768879, 39.247017, 50.656410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603806, 39.324318, 50.870464>,  <38.210152, 38.726891, 50.813721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603806, 39.324318, 50.870464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230145, 39.465839, 50.889149>,  <38.005947, 39.550751, 50.900360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230145, 39.465839, 50.889149>,  <38.603806, 39.324318, 50.870464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230145, 39.465839, 50.889149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292874, 0.685250, 0.666826,
		0.203920, 0.636597, -0.743748,
		-0.934153, 0.353803, 0.046707,
		37.949898, 39.571980, 50.903160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733097, 39.919407, 51.230282>,  <38.603806, 39.324318, 50.870464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733097, 39.919407, 51.230282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333206, 39.926735, 51.235981>,  <38.093269, 39.931129, 51.239403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333206, 39.926735, 51.235981>,  <38.733097, 39.919407, 51.230282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333206, 39.926735, 51.235981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022620, 0.631702, 0.774881,
		0.005189, 0.774995, -0.631947,
		-0.999731, 0.018316, 0.014253,
		38.033287, 39.932228, 51.240257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545139, 40.646500, 51.135742>,  <38.733097, 39.919407, 51.230282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545139, 40.646500, 51.135742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258266, 40.443623, 51.326908>,  <38.086143, 40.321896, 51.441608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258266, 40.443623, 51.326908>,  <38.545139, 40.646500, 51.135742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258266, 40.443623, 51.326908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113337, 0.591771, 0.798099,
		-0.687611, 0.626545, -0.366922,
		-0.717179, -0.507196, 0.477919,
		38.043114, 40.291462, 51.470284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902794, 40.961021, 51.142002>,  <38.545139, 40.646500, 51.135742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902794, 40.961021, 51.142002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952225, 40.719135, 51.456722>,  <37.981884, 40.574005, 51.645554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952225, 40.719135, 51.456722>,  <37.902794, 40.961021, 51.142002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952225, 40.719135, 51.456722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029576, 0.790279, 0.612033,
		-0.991894, -0.098906, 0.079779,
		0.123581, -0.604712, 0.786798,
		37.989300, 40.537724, 51.692760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802181, 41.418079, 50.567928>,  <37.902794, 40.961021, 51.142002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802181, 41.418079, 50.567928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087189, 41.675346, 50.455742>,  <38.258194, 41.829704, 50.388432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087189, 41.675346, 50.455742>,  <37.802181, 41.418079, 50.567928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087189, 41.675346, 50.455742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316232, -0.062462, -0.946623,
		-0.626354, 0.763176, 0.158884,
		0.712516, 0.643165, -0.280464,
		38.300945, 41.868298, 50.371601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554485, 42.010445, 50.207371>,  <37.802181, 41.418079, 50.567928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554485, 42.010445, 50.207371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930889, 41.954617, 50.084064>,  <38.156731, 41.921120, 50.010078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930889, 41.954617, 50.084064>,  <37.554485, 42.010445, 50.207371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930889, 41.954617, 50.084064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324419, -0.113012, -0.939138,
		0.096236, 0.983742, -0.151624,
		0.941005, -0.139569, -0.308269,
		38.213192, 41.912746, 49.991585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747520, 42.479927, 49.577431>,  <37.554485, 42.010445, 50.207371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747520, 42.479927, 49.577431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991158, 42.163158, 49.560127>,  <38.137341, 41.973099, 49.549744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991158, 42.163158, 49.560127>,  <37.747520, 42.479927, 49.577431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991158, 42.163158, 49.560127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184553, -0.088477, -0.978832,
		0.771327, 0.604184, -0.200042,
		0.609094, -0.791918, -0.043259,
		38.173885, 41.925583, 49.547150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048725, 42.589199, 48.972309>,  <37.747520, 42.479927, 49.577431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048725, 42.589199, 48.972309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121395, 42.210987, 49.080357>,  <38.164997, 41.984058, 49.145184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121395, 42.210987, 49.080357>,  <38.048725, 42.589199, 48.972309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121395, 42.210987, 49.080357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080322, -0.259503, -0.962396,
		0.980072, 0.196544, 0.028801,
		0.181680, -0.945531, 0.270118,
		38.175900, 41.927326, 49.161392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363388, 42.464554, 48.384693>,  <38.048725, 42.589199, 48.972309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363388, 42.464554, 48.384693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277210, 42.123413, 48.574947>,  <38.225502, 41.918728, 48.689098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277210, 42.123413, 48.574947>,  <38.363388, 42.464554, 48.384693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277210, 42.123413, 48.574947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120044, -0.460248, -0.879637,
		0.969109, -0.246614, -0.003219,
		-0.215449, -0.852850, 0.475635,
		38.212574, 41.867558, 48.717636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754509, 41.944195, 48.029785>,  <38.363388, 42.464554, 48.384693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754509, 41.944195, 48.029785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457039, 41.768875, 48.231716>,  <38.278557, 41.663685, 48.352875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457039, 41.768875, 48.231716>,  <38.754509, 41.944195, 48.029785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457039, 41.768875, 48.231716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237714, -0.532409, -0.812424,
		0.624856, -0.724181, 0.291748,
		-0.743671, -0.438295, 0.504827,
		38.233936, 41.637386, 48.383163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822704, 41.182659, 47.887733>,  <38.754509, 41.944195, 48.029785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822704, 41.182659, 47.887733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443764, 41.245434, 47.999367>,  <38.216400, 41.283100, 48.066345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443764, 41.245434, 47.999367>,  <38.822704, 41.182659, 47.887733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443764, 41.245434, 47.999367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309876, -0.668765, -0.675818,
		0.080582, -0.726722, 0.682189,
		-0.947356, 0.156935, 0.279085,
		38.159557, 41.292515, 48.083092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575230, 40.516689, 47.899216>,  <38.822704, 41.182659, 47.887733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575230, 40.516689, 47.899216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255245, 40.753292, 47.858849>,  <38.063255, 40.895256, 47.834629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255245, 40.753292, 47.858849>,  <38.575230, 40.516689, 47.899216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255245, 40.753292, 47.858849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430467, -0.682864, -0.590249,
		-0.418047, -0.428736, 0.800889,
		-0.799959, 0.591508, -0.100913,
		38.015259, 40.930744, 47.828575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053360, 40.048660, 47.867352>,  <38.575230, 40.516689, 47.899216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053360, 40.048660, 47.867352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894520, 40.389709, 47.731503>,  <37.799217, 40.594337, 47.649994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894520, 40.389709, 47.731503>,  <38.053360, 40.048660, 47.867352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894520, 40.389709, 47.731503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562251, -0.518482, -0.644244,
		-0.725387, -0.064873, 0.685277,
		-0.397098, 0.852624, -0.339625,
		37.775391, 40.645496, 47.629616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382675, 39.982109, 47.798370>,  <38.053360, 40.048660, 47.867352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382675, 39.982109, 47.798370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428120, 40.294434, 47.552631>,  <37.455387, 40.481827, 47.405186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428120, 40.294434, 47.552631>,  <37.382675, 39.982109, 47.798370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428120, 40.294434, 47.552631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493498, -0.492328, -0.716988,
		-0.862294, 0.384639, 0.329394,
		0.113612, 0.780811, -0.614351,
		37.462204, 40.528675, 47.368324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745049, 40.027256, 47.463188>,  <37.382675, 39.982109, 47.798370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745049, 40.027256, 47.463188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992565, 40.249420, 47.240978>,  <37.141075, 40.382721, 47.107651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992565, 40.249420, 47.240978>,  <36.745049, 40.027256, 47.463188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992565, 40.249420, 47.240978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344977, -0.443205, -0.827382,
		-0.705750, 0.703624, -0.082648,
		0.618796, 0.555413, -0.555526,
		37.178204, 40.416042, 47.074322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310349, 40.240620, 46.973999>,  <36.745049, 40.027256, 47.463188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310349, 40.240620, 46.973999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681751, 40.273548, 46.829170>,  <36.904594, 40.293304, 46.742271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681751, 40.273548, 46.829170>,  <36.310349, 40.240620, 46.973999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681751, 40.273548, 46.829170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295582, -0.426305, -0.854924,
		-0.224730, 0.900826, -0.371496,
		0.928508, 0.082320, -0.362072,
		36.960304, 40.298244, 46.720547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220207, 40.594517, 46.195663>,  <36.310349, 40.240620, 46.973999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220207, 40.594517, 46.195663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583221, 40.426540, 46.193523>,  <36.801029, 40.325756, 46.192238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583221, 40.426540, 46.193523>,  <36.220207, 40.594517, 46.195663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583221, 40.426540, 46.193523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142084, -0.295013, -0.944870,
		0.395207, 0.858266, -0.327402,
		0.907537, -0.419938, -0.005355,
		36.855484, 40.300560, 46.191917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664200, 40.832909, 45.613113>,  <36.220207, 40.594517, 46.195663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664200, 40.832909, 45.613113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781761, 40.468582, 45.729065>,  <36.852299, 40.249985, 45.798637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781761, 40.468582, 45.729065>,  <36.664200, 40.832909, 45.613113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781761, 40.468582, 45.729065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134337, -0.260905, -0.955972,
		0.946348, 0.319904, 0.045676,
		0.293902, -0.910818, 0.289882,
		36.869930, 40.195335, 45.816029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237175, 40.786224, 45.244659>,  <36.664200, 40.832909, 45.613113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237175, 40.786224, 45.244659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177765, 40.409615, 45.365643>,  <37.142120, 40.183651, 45.438232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177765, 40.409615, 45.365643>,  <37.237175, 40.786224, 45.244659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177765, 40.409615, 45.365643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202353, -0.328312, -0.922640,
		0.967984, -0.075832, 0.239282,
		-0.148525, -0.941520, 0.302456,
		37.133209, 40.127159, 45.456379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765942, 40.375912, 44.963417>,  <37.237175, 40.786224, 45.244659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765942, 40.375912, 44.963417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476772, 40.109028, 45.035206>,  <37.303272, 39.948898, 45.078278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476772, 40.109028, 45.035206>,  <37.765942, 40.375912, 44.963417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476772, 40.109028, 45.035206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055592, -0.315083, -0.947434,
		0.688691, -0.674943, 0.264872,
		-0.722921, -0.667214, 0.179473,
		37.259895, 39.908863, 45.089046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026943, 39.786053, 44.751377>,  <37.765942, 40.375912, 44.963417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026943, 39.786053, 44.751377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637547, 39.695805, 44.736389>,  <37.403908, 39.641655, 44.727398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637547, 39.695805, 44.736389>,  <38.026943, 39.786053, 44.751377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637547, 39.695805, 44.736389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130985, -0.415721, -0.900011,
		0.187485, -0.881063, 0.434255,
		-0.973495, -0.225619, -0.037465,
		37.345497, 39.628120, 44.725151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966938, 39.094784, 44.717884>,  <38.026943, 39.786053, 44.751377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966938, 39.094784, 44.717884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617558, 39.227425, 44.575272>,  <37.407928, 39.307011, 44.489704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617558, 39.227425, 44.575272>,  <37.966938, 39.094784, 44.717884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617558, 39.227425, 44.575272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107629, -0.582642, -0.805571,
		-0.474861, -0.742003, 0.473221,
		-0.873455, 0.331602, -0.356535,
		37.355522, 39.326904, 44.468311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579464, 38.452972, 44.415478>,  <37.966938, 39.094784, 44.717884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579464, 38.452972, 44.415478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387733, 38.770943, 44.266705>,  <37.272694, 38.961727, 44.177441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387733, 38.770943, 44.266705>,  <37.579464, 38.452972, 44.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387733, 38.770943, 44.266705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024214, -0.435604, -0.899813,
		-0.877301, -0.422301, 0.228047,
		-0.479330, 0.794928, -0.371930,
		37.243935, 39.009422, 44.155125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089352, 38.197121, 43.955845>,  <37.579464, 38.452972, 44.415478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089352, 38.197121, 43.955845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134628, 38.582615, 43.859180>,  <37.161797, 38.813911, 43.801182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134628, 38.582615, 43.859180>,  <37.089352, 38.197121, 43.955845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134628, 38.582615, 43.859180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101966, -0.253209, -0.962023,
		-0.988327, 0.084254, -0.126930,
		0.113194, 0.963736, -0.241662,
		37.168587, 38.871735, 43.786682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655392, 38.341702, 43.416710>,  <37.089352, 38.197121, 43.955845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655392, 38.341702, 43.416710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945351, 38.616543, 43.397072>,  <37.119328, 38.781448, 43.385288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945351, 38.616543, 43.397072>,  <36.655392, 38.341702, 43.416710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945351, 38.616543, 43.397072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092234, -0.167440, -0.981558,
		-0.682654, 0.707001, -0.184751,
		0.724897, 0.687105, -0.049094,
		37.162819, 38.822674, 43.382343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516834, 38.671673, 42.753105>,  <36.655392, 38.341702, 43.416710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516834, 38.671673, 42.753105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897469, 38.761044, 42.837540>,  <37.125851, 38.814667, 42.888199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897469, 38.761044, 42.837540>,  <36.516834, 38.671673, 42.753105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897469, 38.761044, 42.837540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272219, -0.293702, -0.916317,
		-0.142736, 0.929419, -0.340305,
		0.951590, 0.223429, 0.211084,
		37.182945, 38.828072, 42.900864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686012, 39.129269, 42.295361>,  <36.516834, 38.671673, 42.753105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686012, 39.129269, 42.295361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051174, 39.008865, 42.405632>,  <37.270271, 38.936623, 42.471794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051174, 39.008865, 42.405632>,  <36.686012, 39.129269, 42.295361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051174, 39.008865, 42.405632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216002, -0.216801, -0.952019,
		0.346337, 0.928649, -0.132899,
		0.912904, -0.301013, 0.275676,
		37.325047, 38.918560, 42.488335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068043, 39.361759, 41.923351>,  <36.686012, 39.129269, 42.295361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068043, 39.361759, 41.923351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292210, 39.051769, 42.040207>,  <37.426712, 38.865776, 42.110321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292210, 39.051769, 42.040207>,  <37.068043, 39.361759, 41.923351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292210, 39.051769, 42.040207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285422, -0.150412, -0.946525,
		0.777472, 0.613837, 0.136900,
		0.560421, -0.774971, 0.292144,
		37.460335, 38.819279, 42.127850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736351, 39.411766, 41.577251>,  <37.068043, 39.361759, 41.923351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736351, 39.411766, 41.577251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719940, 39.023571, 41.672314>,  <37.710094, 38.790653, 41.729351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719940, 39.023571, 41.672314>,  <37.736351, 39.411766, 41.577251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719940, 39.023571, 41.672314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460513, -0.229449, -0.857485,
		0.886704, 0.074266, 0.456333,
		-0.041024, -0.970483, 0.237654,
		37.707634, 38.732426, 41.743610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289646, 39.187092, 41.155491>,  <37.736351, 39.411766, 41.577251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289646, 39.187092, 41.155491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118767, 38.842339, 41.264786>,  <38.016239, 38.635487, 41.330364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118767, 38.842339, 41.264786>,  <38.289646, 39.187092, 41.155491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118767, 38.842339, 41.264786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493345, -0.475449, -0.728395,
		0.757703, -0.176366, 0.628316,
		-0.427197, -0.861884, 0.273240,
		37.990608, 38.583775, 41.346756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852249, 38.748577, 41.317574>,  <38.289646, 39.187092, 41.155491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852249, 38.748577, 41.317574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522400, 38.542236, 41.224709>,  <38.324490, 38.418430, 41.168987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522400, 38.542236, 41.224709>,  <38.852249, 38.748577, 41.317574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522400, 38.542236, 41.224709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547918, -0.626283, -0.554577,
		0.140679, -0.584522, 0.799090,
		-0.824618, -0.515853, -0.232165,
		38.275013, 38.387482, 41.155060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035084, 38.029270, 41.222206>,  <38.852249, 38.748577, 41.317574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035084, 38.029270, 41.222206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691505, 38.055058, 41.019009>,  <38.485359, 38.070530, 40.897091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691505, 38.055058, 41.019009>,  <39.035084, 38.029270, 41.222206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691505, 38.055058, 41.019009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449402, -0.380629, -0.808183,
		-0.245460, -0.922478, 0.297966,
		-0.858945, 0.064470, -0.507993,
		38.433823, 38.074398, 40.866611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237370, 37.567551, 40.750710>,  <39.035084, 38.029270, 41.222206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237370, 37.567551, 40.750710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887943, 37.703465, 40.611328>,  <38.678288, 37.785011, 40.527699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887943, 37.703465, 40.611328>,  <39.237370, 37.567551, 40.750710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887943, 37.703465, 40.611328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346647, -0.068182, -0.935514,
		-0.341633, -0.938028, -0.058224,
		-0.873569, 0.339786, -0.348458,
		38.625874, 37.805401, 40.506790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835812, 37.027397, 40.341125>,  <39.237370, 37.567551, 40.750710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835812, 37.027397, 40.341125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709396, 37.378654, 40.197464>,  <38.633549, 37.589409, 40.111267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709396, 37.378654, 40.197464>,  <38.835812, 37.027397, 40.341125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709396, 37.378654, 40.197464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310679, -0.261892, -0.913724,
		-0.896437, -0.400350, -0.190053,
		-0.316035, 0.878142, -0.359150,
		38.614586, 37.642097, 40.089718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387226, 36.842541, 39.771782>,  <38.835812, 37.027397, 40.341125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387226, 36.842541, 39.771782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513359, 37.219746, 39.729286>,  <38.589039, 37.446068, 39.703789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513359, 37.219746, 39.729286>,  <38.387226, 36.842541, 39.771782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513359, 37.219746, 39.729286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306471, -0.207152, -0.929066,
		-0.898132, 0.260403, -0.354328,
		0.315331, 0.943016, -0.106244,
		38.607960, 37.502651, 39.697414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147202, 37.122238, 39.134106>,  <38.387226, 36.842541, 39.771782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147202, 37.122238, 39.134106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435333, 37.386997, 39.217060>,  <38.608212, 37.545853, 39.266834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435333, 37.386997, 39.217060>,  <38.147202, 37.122238, 39.134106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435333, 37.386997, 39.217060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348321, -0.086627, -0.933364,
		-0.599827, 0.744571, -0.292954,
		0.720333, 0.661899, 0.207389,
		38.651432, 37.585567, 39.279278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231739, 37.599380, 38.503750>,  <38.147202, 37.122238, 39.134106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231739, 37.599380, 38.503750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588470, 37.678780, 38.666348>,  <38.802509, 37.726418, 38.763905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588470, 37.678780, 38.666348>,  <38.231739, 37.599380, 38.503750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588470, 37.678780, 38.666348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429425, -0.088960, -0.898710,
		-0.142231, 0.976056, -0.164577,
		0.891832, 0.198498, 0.406490,
		38.856022, 37.738331, 38.788296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566143, 37.912533, 37.977219>,  <38.231739, 37.599380, 38.503750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566143, 37.912533, 37.977219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849075, 37.781765, 38.227913>,  <39.018833, 37.703304, 38.378330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849075, 37.781765, 38.227913>,  <38.566143, 37.912533, 37.977219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849075, 37.781765, 38.227913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583856, -0.229618, -0.778709,
		0.398489, 0.916732, 0.028460,
		0.707332, -0.326923, 0.626740,
		39.061275, 37.683689, 38.415936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093445, 38.152679, 37.689766>,  <38.566143, 37.912533, 37.977219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093445, 38.152679, 37.689766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217598, 37.860859, 37.933540>,  <39.292088, 37.685764, 38.079803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217598, 37.860859, 37.933540>,  <39.093445, 38.152679, 37.689766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217598, 37.860859, 37.933540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600131, -0.346813, -0.720808,
		0.737230, 0.589465, 0.330186,
		0.310378, -0.729556, 0.609437,
		39.310711, 37.641991, 38.116371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873432, 38.221813, 37.827965>,  <39.093445, 38.152679, 37.689766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873432, 38.221813, 37.827965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731052, 37.849640, 37.862839>,  <39.645622, 37.626335, 37.883762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731052, 37.849640, 37.862839>,  <39.873432, 38.221813, 37.827965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731052, 37.849640, 37.862839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698118, -0.326772, -0.637065,
		0.621232, -0.165900, 0.765864,
		-0.355951, -0.930429, 0.087183,
		39.624268, 37.570511, 37.888992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401684, 37.791599, 37.818832>,  <39.873432, 38.221813, 37.827965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401684, 37.791599, 37.818832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114689, 37.522583, 37.746277>,  <39.942493, 37.361172, 37.702744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114689, 37.522583, 37.746277>,  <40.401684, 37.791599, 37.818832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114689, 37.522583, 37.746277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609853, -0.480659, -0.630116,
		0.336596, -0.562716, 0.755019,
		-0.717483, -0.672545, -0.181386,
		39.899445, 37.320820, 37.691860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722961, 37.142647, 37.997437>,  <40.401684, 37.791599, 37.818832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722961, 37.142647, 37.997437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417290, 37.083523, 37.746304>,  <40.233887, 37.048050, 37.595623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417290, 37.083523, 37.746304>,  <40.722961, 37.142647, 37.997437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417290, 37.083523, 37.746304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622004, -0.426472, -0.656683,
		-0.170689, -0.892342, 0.417841,
		-0.764183, -0.147810, -0.627835,
		40.188034, 37.039181, 37.557953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913403, 36.501034, 37.782730>,  <40.722961, 37.142647, 37.997437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913403, 36.501034, 37.782730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671741, 36.712025, 37.543812>,  <40.526745, 36.838619, 37.400463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671741, 36.712025, 37.543812>,  <40.913403, 36.501034, 37.782730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671741, 36.712025, 37.543812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577317, -0.226926, -0.784353,
		-0.549272, -0.818700, -0.167425,
		-0.604157, 0.527481, -0.597293,
		40.490494, 36.870270, 37.364624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807594, 36.261024, 37.041557>,  <40.913403, 36.501034, 37.782730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807594, 36.261024, 37.041557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774338, 36.657047, 36.996159>,  <40.754383, 36.894661, 36.968918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774338, 36.657047, 36.996159>,  <40.807594, 36.261024, 37.041557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774338, 36.657047, 36.996159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531670, -0.052261, -0.845338,
		-0.842861, -0.130625, -0.522037,
		-0.083140, 0.990054, -0.113498,
		40.749397, 36.954063, 36.962109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459946, 36.426941, 36.361183>,  <40.807594, 36.261024, 37.041557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459946, 36.426941, 36.361183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709282, 36.701160, 36.511631>,  <40.858883, 36.865692, 36.601902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709282, 36.701160, 36.511631>,  <40.459946, 36.426941, 36.361183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709282, 36.701160, 36.511631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626105, -0.149416, -0.765289,
		-0.468446, 0.712527, -0.522364,
		0.623338, 0.685551, 0.376124,
		40.896282, 36.906826, 36.624470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657631, 37.049305, 35.895546>,  <40.459946, 36.426941, 36.361183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657631, 37.049305, 35.895546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978027, 36.985996, 36.126499>,  <41.170265, 36.948013, 36.265072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978027, 36.985996, 36.126499>,  <40.657631, 37.049305, 35.895546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978027, 36.985996, 36.126499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593959, 0.089173, -0.799538,
		0.075055, 0.983361, 0.165432,
		0.800986, -0.158270, 0.577383,
		41.218323, 36.938515, 36.299713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161015, 37.447044, 35.580612>,  <40.657631, 37.049305, 35.895546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161015, 37.447044, 35.580612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361378, 37.186398, 35.808468>,  <41.481594, 37.030010, 35.945183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361378, 37.186398, 35.808468>,  <41.161015, 37.447044, 35.580612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361378, 37.186398, 35.808468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665236, -0.131178, -0.735019,
		0.553674, 0.747122, 0.367770,
		0.500905, -0.651615, 0.569642,
		41.511650, 36.990913, 35.979359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911613, 37.545986, 35.419846>,  <41.161015, 37.447044, 35.580612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911613, 37.545986, 35.419846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861549, 37.193317, 35.601830>,  <41.831512, 36.981716, 35.711021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861549, 37.193317, 35.601830>,  <41.911613, 37.545986, 35.419846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861549, 37.193317, 35.601830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799924, -0.360945, -0.479416,
		0.586904, 0.303932, 0.750446,
		-0.125160, -0.881671, 0.454962,
		41.824001, 36.928818, 35.738319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605488, 37.308968, 35.584923>,  <41.911613, 37.545986, 35.419846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605488, 37.308968, 35.584923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369015, 36.991093, 35.529812>,  <42.227131, 36.800369, 35.496746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369015, 36.991093, 35.529812>,  <42.605488, 37.308968, 35.584923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369015, 36.991093, 35.529812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695908, -0.416242, -0.585196,
		0.407696, -0.441839, 0.799101,
		-0.591182, -0.794683, -0.137779,
		42.191662, 36.752689, 35.488480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024639, 36.701473, 35.664291>,  <42.605488, 37.308968, 35.584923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024639, 36.701473, 35.664291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193520, 36.863312, 35.339813>,  <43.294849, 36.960415, 35.145126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193520, 36.863312, 35.339813>,  <43.024639, 36.701473, 35.664291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193520, 36.863312, 35.339813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903392, 0.113749, -0.413453,
		-0.075009, 0.907393, 0.413536,
		0.422204, 0.404597, -0.811200,
		43.320179, 36.984692, 35.096455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806389, 36.665840, 35.695507>,  <43.024639, 36.701473, 35.664291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806389, 36.665840, 35.695507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127602, 36.512245, 35.877804>,  <44.320328, 36.420090, 35.987183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127602, 36.512245, 35.877804>,  <43.806389, 36.665840, 35.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127602, 36.512245, 35.877804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566358, -0.253806, 0.784105,
		-0.185413, -0.887773, -0.421285,
		0.803032, -0.383982, 0.455739,
		44.368511, 36.397049, 36.014526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646927, 35.956421, 35.899242>,  <43.806389, 36.665840, 35.695507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646927, 35.956421, 35.899242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932697, 36.115929, 36.129223>,  <44.104160, 36.211636, 36.267212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932697, 36.115929, 36.129223>,  <43.646927, 35.956421, 35.899242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932697, 36.115929, 36.129223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483661, -0.312351, 0.817624,
		0.505633, -0.862217, -0.030281,
		0.714428, 0.398772, 0.574956,
		44.147026, 36.235561, 36.301708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747879, 35.432739, 36.407940>,  <43.646927, 35.956421, 35.899242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747879, 35.432739, 36.407940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891113, 35.756428, 36.594246>,  <43.977055, 35.950642, 36.706032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891113, 35.756428, 36.594246>,  <43.747879, 35.432739, 36.407940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891113, 35.756428, 36.594246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361512, -0.339776, 0.868252,
		0.860863, -0.479287, 0.170874,
		0.358083, 0.809219, 0.465769,
		43.998539, 35.999195, 36.733978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950031, 35.204281, 37.023338>,  <43.747879, 35.432739, 36.407940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950031, 35.204281, 37.023338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951160, 35.600063, 37.081253>,  <43.951839, 35.837532, 37.116001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951160, 35.600063, 37.081253>,  <43.950031, 35.204281, 37.023338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951160, 35.600063, 37.081253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285599, -0.137959, 0.948367,
		0.958345, -0.044030, 0.282199,
		0.002824, 0.989459, 0.144787,
		43.952007, 35.896900, 37.124691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407089, 35.339478, 37.625275>,  <43.950031, 35.204281, 37.023338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407089, 35.339478, 37.625275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142624, 35.633522, 37.565315>,  <43.983944, 35.809948, 37.529339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142624, 35.633522, 37.565315>,  <44.407089, 35.339478, 37.625275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142624, 35.633522, 37.565315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282892, -0.059228, 0.957322,
		0.694860, 0.675354, 0.247117,
		-0.661167, 0.735112, -0.149898,
		43.944275, 35.854057, 37.520348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519753, 35.893856, 38.184208>,  <44.407089, 35.339478, 37.625275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519753, 35.893856, 38.184208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140194, 35.905010, 38.058468>,  <43.912460, 35.911705, 37.983025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140194, 35.905010, 38.058468>,  <44.519753, 35.893856, 38.184208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140194, 35.905010, 38.058468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304047, -0.347711, 0.886934,
		-0.084568, 0.937187, 0.338422,
		-0.948896, 0.027890, -0.314354,
		43.855526, 35.913376, 37.964161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167454, 36.049603, 38.777138>,  <44.519753, 35.893856, 38.184208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167454, 36.049603, 38.777138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846119, 35.973923, 38.551270>,  <43.653320, 35.928513, 38.415749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846119, 35.973923, 38.551270>,  <44.167454, 36.049603, 38.777138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846119, 35.973923, 38.551270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507828, -0.277637, 0.815493,
		-0.311067, 0.941871, 0.126953,
		-0.803335, -0.189203, -0.564672,
		43.605118, 35.917160, 38.381866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590866, 36.205681, 39.242241>,  <44.167454, 36.049603, 38.777138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590866, 36.205681, 39.242241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425274, 35.988651, 38.949879>,  <43.325920, 35.858433, 38.774460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425274, 35.988651, 38.949879>,  <43.590866, 36.205681, 39.242241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425274, 35.988651, 38.949879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593831, -0.447591, 0.668601,
		-0.689917, 0.710825, -0.136906,
		-0.413980, -0.542578, -0.730910,
		43.301079, 35.825878, 38.730606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850231, 36.290321, 39.304932>,  <43.590866, 36.205681, 39.242241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850231, 36.290321, 39.304932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912891, 35.936565, 39.129063>,  <42.950485, 35.724312, 39.023540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912891, 35.936565, 39.129063>,  <42.850231, 36.290321, 39.304932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912891, 35.936565, 39.129063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708795, -0.410680, 0.573543,
		-0.687802, 0.221794, -0.691185,
		0.156647, -0.884392, -0.439673,
		42.959885, 35.671249, 38.997162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217331, 36.070271, 39.081524>,  <42.850231, 36.290321, 39.304932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217331, 36.070271, 39.081524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442139, 35.739471, 39.075741>,  <42.577023, 35.540993, 39.072269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442139, 35.739471, 39.075741>,  <42.217331, 36.070271, 39.081524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442139, 35.739471, 39.075741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752889, -0.518734, 0.405060,
		-0.342483, -0.216768, -0.914176,
		0.562018, -0.826999, -0.014455,
		42.610744, 35.491371, 39.071404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826378, 35.569752, 38.861710>,  <42.217331, 36.070271, 39.081524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826378, 35.569752, 38.861710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094200, 35.351387, 39.063175>,  <42.254894, 35.220367, 39.184055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094200, 35.351387, 39.063175>,  <41.826378, 35.569752, 38.861710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094200, 35.351387, 39.063175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738139, -0.413498, 0.533076,
		-0.082748, -0.728698, -0.679818,
		0.669555, -0.545911, 0.503664,
		42.295067, 35.187614, 39.214275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390366, 35.060368, 39.143898>,  <41.826378, 35.569752, 38.861710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390366, 35.060368, 39.143898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730770, 35.004726, 39.346455>,  <41.935013, 34.971344, 39.467987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730770, 35.004726, 39.346455>,  <41.390366, 35.060368, 39.143898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730770, 35.004726, 39.346455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520738, -0.348196, 0.779482,
		0.067895, -0.927044, -0.368754,
		0.851013, -0.139101, 0.506387,
		41.986073, 34.962997, 39.498371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446819, 34.386089, 39.422924>,  <41.390366, 35.060368, 39.143898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446819, 34.386089, 39.422924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677555, 34.617413, 39.653687>,  <41.815994, 34.756207, 39.792145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677555, 34.617413, 39.653687>,  <41.446819, 34.386089, 39.422924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677555, 34.617413, 39.653687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674909, -0.060447, 0.735421,
		0.460171, -0.813578, 0.355435,
		0.576837, 0.578306, 0.576907,
		41.850605, 34.790905, 39.826759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574604, 33.973156, 40.052990>,  <41.446819, 34.386089, 39.422924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574604, 33.973156, 40.052990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644138, 34.357841, 40.137745>,  <41.685860, 34.588654, 40.188599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644138, 34.357841, 40.137745>,  <41.574604, 33.973156, 40.052990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644138, 34.357841, 40.137745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541409, -0.086397, 0.836309,
		0.822593, -0.260096, 0.505659,
		0.173833, 0.961710, 0.211888,
		41.696289, 34.646355, 40.201313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697662, 33.947906, 40.782867>,  <41.574604, 33.973156, 40.052990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697662, 33.947906, 40.782867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608677, 34.324936, 40.683212>,  <41.555286, 34.551151, 40.623421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608677, 34.324936, 40.683212>,  <41.697662, 33.947906, 40.782867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608677, 34.324936, 40.683212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646815, 0.048510, 0.761103,
		0.729478, 0.330467, 0.598876,
		-0.222468, 0.942570, -0.249138,
		41.541935, 34.607708, 40.608471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709663, 34.339741, 41.313046>,  <41.697662, 33.947906, 40.782867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709663, 34.339741, 41.313046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465305, 34.558212, 41.083786>,  <41.318691, 34.689293, 40.946232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465305, 34.558212, 41.083786>,  <41.709663, 34.339741, 41.313046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465305, 34.558212, 41.083786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613943, 0.130274, 0.778526,
		0.499877, 0.827479, 0.255736,
		-0.610898, 0.546175, -0.573146,
		41.282036, 34.722065, 40.911842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713505, 34.922661, 41.738506>,  <41.709663, 34.339741, 41.313046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713505, 34.922661, 41.738506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409008, 34.973530, 41.484154>,  <41.226311, 35.004051, 41.331543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409008, 34.973530, 41.484154>,  <41.713505, 34.922661, 41.738506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409008, 34.973530, 41.484154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531672, 0.439017, 0.724285,
		0.371270, 0.889434, -0.266583,
		-0.761238, 0.127171, -0.635881,
		41.180637, 35.011681, 41.293388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520035, 35.627743, 41.774281>,  <41.713505, 34.922661, 41.738506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520035, 35.627743, 41.774281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198101, 35.424717, 41.651234>,  <41.004940, 35.302902, 41.577404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198101, 35.424717, 41.651234>,  <41.520035, 35.627743, 41.774281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198101, 35.424717, 41.651234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551304, 0.447404, 0.704197,
		-0.219794, 0.736350, -0.639905,
		-0.804832, -0.507561, -0.307616,
		40.956650, 35.272449, 41.558949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879810, 36.064960, 42.051632>,  <41.520035, 35.627743, 41.774281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879810, 36.064960, 42.051632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728764, 35.703484, 41.970882>,  <40.638134, 35.486599, 41.922432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728764, 35.703484, 41.970882>,  <40.879810, 36.064960, 42.051632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728764, 35.703484, 41.970882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726186, 0.153758, 0.670084,
		-0.574507, 0.399634, -0.714307,
		-0.377618, -0.903688, -0.201874,
		40.615479, 35.432377, 41.910320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156002, 36.131336, 41.944542>,  <40.879810, 36.064960, 42.051632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156002, 36.131336, 41.944542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201427, 35.748512, 42.051235>,  <40.228683, 35.518818, 42.115253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201427, 35.748512, 42.051235>,  <40.156002, 36.131336, 41.944542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201427, 35.748512, 42.051235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681538, 0.120305, 0.721825,
		-0.722917, -0.263763, -0.638608,
		0.113564, -0.957056, 0.266735,
		40.235497, 35.461395, 42.131256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477482, 35.959000, 42.019207>,  <40.156002, 36.131336, 41.944542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477482, 35.959000, 42.019207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695446, 35.681084, 42.206970>,  <39.826225, 35.514332, 42.319626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695446, 35.681084, 42.206970>,  <39.477482, 35.959000, 42.019207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695446, 35.681084, 42.206970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630304, 0.029790, 0.775777,
		-0.552987, -0.718593, -0.421698,
		0.544906, -0.694793, 0.469405,
		39.858917, 35.472645, 42.347794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998657, 35.479774, 42.294514>,  <39.477482, 35.959000, 42.019207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998657, 35.479774, 42.294514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336777, 35.490345, 42.507969>,  <39.539650, 35.496689, 42.636044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336777, 35.490345, 42.507969>,  <38.998657, 35.479774, 42.294514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336777, 35.490345, 42.507969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533906, 0.003647, 0.845536,
		0.020411, -0.999644, 0.017200,
		0.845298, 0.026441, 0.533641,
		39.590366, 35.498272, 42.668060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994541, 34.854664, 42.727219>,  <38.998657, 35.479774, 42.294514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994541, 34.854664, 42.727219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168152, 35.190643, 42.857513>,  <39.272320, 35.392231, 42.935692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168152, 35.190643, 42.857513>,  <38.994541, 34.854664, 42.727219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168152, 35.190643, 42.857513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630940, 0.025313, 0.775419,
		0.643066, -0.542076, 0.540944,
		0.434028, 0.839948, 0.325739,
		39.298359, 35.442627, 42.955235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328266, 34.264366, 43.073719>,  <38.994541, 34.854664, 42.727219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328266, 34.264366, 43.073719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404110, 34.303955, 42.682976>,  <39.449615, 34.327709, 42.448528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404110, 34.303955, 42.682976>,  <39.328266, 34.264366, 43.073719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404110, 34.303955, 42.682976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324948, -0.932517, -0.157548,
		-0.926530, 0.347301, -0.144653,
		0.189608, 0.098968, -0.976859,
		39.460991, 34.333645, 42.389919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673550, 33.624935, 42.836185>,  <39.328266, 34.264366, 43.073719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673550, 33.624935, 42.836185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999802, 33.570965, 43.061237>,  <40.195553, 33.538582, 43.196266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999802, 33.570965, 43.061237>,  <39.673550, 33.624935, 42.836185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999802, 33.570965, 43.061237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405773, -0.826584, 0.390010,
		0.412436, -0.546401, -0.728932,
		0.815625, -0.134927, 0.562628,
		40.244488, 33.530487, 43.230026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768425, 32.940262, 42.845894>,  <39.673550, 33.624935, 42.836185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768425, 32.940262, 42.845894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937569, 33.071129, 43.183926>,  <40.039055, 33.149651, 43.386745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937569, 33.071129, 43.183926>,  <39.768425, 32.940262, 42.845894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937569, 33.071129, 43.183926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280058, -0.839719, 0.465231,
		0.861834, -0.433397, -0.263455,
		0.422858, 0.327169, 0.845075,
		40.064426, 33.169281, 43.437447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109306, 32.571529, 42.203972>,  <39.768425, 32.940262, 42.845894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109306, 32.571529, 42.203972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451920, 32.373268, 42.261494>,  <40.657486, 32.254311, 42.296005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451920, 32.373268, 42.261494>,  <40.109306, 32.571529, 42.203972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451920, 32.373268, 42.261494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012101, -0.297850, -0.954536,
		0.515952, 0.815850, -0.261116,
		0.856532, -0.495655, 0.143804,
		40.708878, 32.224571, 42.304634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108749, 32.163036, 41.716721>,  <40.109306, 32.571529, 42.203972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108749, 32.163036, 41.716721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475590, 32.102604, 41.864288>,  <40.695694, 32.066345, 41.952831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475590, 32.102604, 41.864288>,  <40.108749, 32.163036, 41.716721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475590, 32.102604, 41.864288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188318, -0.651467, -0.734933,
		0.351378, 0.743481, -0.569008,
		0.917099, -0.151085, 0.368922,
		40.750721, 32.057278, 41.974964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587337, 31.971231, 41.127411>,  <40.108749, 32.163036, 41.716721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587337, 31.971231, 41.127411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709496, 31.799433, 41.467354>,  <40.782791, 31.696354, 41.671322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709496, 31.799433, 41.467354>,  <40.587337, 31.971231, 41.127411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709496, 31.799433, 41.467354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273040, -0.815526, -0.510261,
		0.912240, 0.387879, -0.131790,
		0.305398, -0.429497, 0.849862,
		40.801113, 31.670584, 41.722313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283150, 32.445419, 40.545853>,  <40.587337, 31.971231, 41.127411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283150, 32.445419, 40.545853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011127, 32.428925, 40.253052>,  <39.847916, 32.419029, 40.077370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011127, 32.428925, 40.253052>,  <40.283150, 32.445419, 40.545853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011127, 32.428925, 40.253052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731487, 0.029343, -0.681224,
		0.049570, -0.998718, 0.010209,
		-0.680051, -0.041236, -0.732004,
		39.807114, 32.416553, 40.033451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352501, 31.860891, 40.150215>,  <40.283150, 32.445419, 40.545853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352501, 31.860891, 40.150215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236053, 32.224117, 40.029770>,  <40.166187, 32.442055, 39.957504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236053, 32.224117, 40.029770>,  <40.352501, 31.860891, 40.150215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236053, 32.224117, 40.029770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873913, 0.124347, -0.469907,
		-0.389265, -0.399942, -0.829771,
		-0.291115, 0.908066, -0.301111,
		40.148720, 32.496536, 39.939438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389755, 31.981359, 39.355267>,  <40.352501, 31.860891, 40.150215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389755, 31.981359, 39.355267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411049, 32.338551, 39.534042>,  <40.423824, 32.552864, 39.641308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411049, 32.338551, 39.534042>,  <40.389755, 31.981359, 39.355267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411049, 32.338551, 39.534042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899016, 0.151965, -0.410703,
		-0.434668, 0.423672, -0.794711,
		0.053236, 0.892977, 0.446942,
		40.427021, 32.606445, 39.668125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567265, 32.428020, 38.802666>,  <40.389755, 31.981359, 39.355267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567265, 32.428020, 38.802666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655712, 32.590565, 39.157288>,  <40.708782, 32.688091, 39.370060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655712, 32.590565, 39.157288>,  <40.567265, 32.428020, 38.802666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655712, 32.590565, 39.157288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909109, 0.243178, -0.338208,
		-0.353025, 0.880758, -0.315655,
		0.221120, 0.406360, 0.886554,
		40.722050, 32.712471, 39.423252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722572, 33.048073, 38.569469>,  <40.567265, 32.428020, 38.802666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722572, 33.048073, 38.569469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887192, 33.021282, 38.933041>,  <40.985962, 33.005207, 39.151184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887192, 33.021282, 38.933041>,  <40.722572, 33.048073, 38.569469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887192, 33.021282, 38.933041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857319, 0.366841, -0.361153,
		-0.309243, 0.927870, 0.208391,
		0.411550, -0.066973, 0.908923,
		41.010658, 33.001190, 39.205719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163208, 33.693222, 38.612595>,  <40.722572, 33.048073, 38.569469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163208, 33.693222, 38.612595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281811, 33.417618, 38.877125>,  <41.352970, 33.252254, 39.035843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281811, 33.417618, 38.877125>,  <41.163208, 33.693222, 38.612595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281811, 33.417618, 38.877125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950959, 0.149119, -0.271000,
		0.088106, 0.709245, 0.699435,
		0.296505, -0.689010, 0.661324,
		41.370762, 33.210915, 39.075523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816990, 33.942856, 38.726921>,  <41.163208, 33.693222, 38.612595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816990, 33.942856, 38.726921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798641, 33.580151, 38.894577>,  <41.787632, 33.362530, 38.995171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798641, 33.580151, 38.894577>,  <41.816990, 33.942856, 38.726921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798641, 33.580151, 38.894577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937172, -0.184328, -0.296196,
		0.345838, 0.379220, 0.858247,
		-0.045876, -0.906761, 0.419142,
		41.784878, 33.308121, 39.020321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420414, 33.915516, 39.071243>,  <41.816990, 33.942856, 38.726921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420414, 33.915516, 39.071243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281670, 33.544346, 39.016621>,  <42.198421, 33.321644, 38.983849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281670, 33.544346, 39.016621>,  <42.420414, 33.915516, 39.071243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281670, 33.544346, 39.016621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836600, -0.240276, -0.492310,
		0.424016, -0.285002, 0.859642,
		-0.346860, -0.927923, -0.136552,
		42.177612, 33.265968, 38.975655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001751, 33.551689, 39.167130>,  <42.420414, 33.915516, 39.071243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001751, 33.551689, 39.167130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762962, 33.297462, 38.971298>,  <42.619690, 33.144928, 38.853802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762962, 33.297462, 38.971298>,  <43.001751, 33.551689, 39.167130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762962, 33.297462, 38.971298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759669, -0.251614, -0.599662,
		0.257941, -0.729894, 0.633026,
		-0.596967, -0.635567, -0.489576,
		42.583874, 33.106792, 38.824425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374271, 32.990879, 38.902275>,  <43.001751, 33.551689, 39.167130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374271, 32.990879, 38.902275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068668, 32.981789, 38.644356>,  <42.885307, 32.976334, 38.489605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068668, 32.981789, 38.644356>,  <43.374271, 32.990879, 38.902275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068668, 32.981789, 38.644356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638836, -0.166699, -0.751066,
		-0.090415, -0.985746, 0.141881,
		-0.764012, -0.022731, -0.644801,
		42.839466, 32.974968, 38.450916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489159, 32.322392, 38.607288>,  <43.374271, 32.990879, 38.902275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489159, 32.322392, 38.607288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252880, 32.541229, 38.370049>,  <43.111115, 32.672531, 38.227707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252880, 32.541229, 38.370049>,  <43.489159, 32.322392, 38.607288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252880, 32.541229, 38.370049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698955, -0.020331, -0.714877,
		-0.403167, -0.836821, -0.370388,
		-0.590693, 0.547099, -0.593097,
		43.075672, 32.705360, 38.192120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596714, 32.080128, 37.891876>,  <43.489159, 32.322392, 38.607288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596714, 32.080128, 37.891876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447842, 32.447350, 37.837242>,  <43.358517, 32.667683, 37.804462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447842, 32.447350, 37.837242>,  <43.596714, 32.080128, 37.891876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447842, 32.447350, 37.837242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711128, 0.187481, -0.677604,
		-0.596468, -0.349327, -0.722631,
		-0.372185, 0.918053, -0.136590,
		43.336185, 32.722767, 37.796265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559776, 32.127136, 37.158920>,  <43.596714, 32.080128, 37.891876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559776, 32.127136, 37.158920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530499, 32.495174, 37.312840>,  <43.512932, 32.715996, 37.405193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530499, 32.495174, 37.312840>,  <43.559776, 32.127136, 37.158920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530499, 32.495174, 37.312840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858071, 0.254740, -0.445895,
		-0.508289, 0.297550, -0.808150,
		-0.073192, 0.920093, 0.384800,
		43.508541, 32.771202, 37.428280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744480, 32.526371, 36.602196>,  <43.559776, 32.127136, 37.158920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744480, 32.526371, 36.602196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781982, 32.800259, 36.891296>,  <43.804485, 32.964592, 37.064758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781982, 32.800259, 36.891296>,  <43.744480, 32.526371, 36.602196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781982, 32.800259, 36.891296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795215, 0.385287, -0.468174,
		-0.599034, 0.618638, -0.508375,
		0.093760, 0.684720, 0.722750,
		43.810112, 33.005676, 37.108120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663750, 33.146320, 36.227028>,  <43.744480, 32.526371, 36.602196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663750, 33.146320, 36.227028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863144, 33.186089, 36.571499>,  <43.982780, 33.209949, 36.778183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863144, 33.186089, 36.571499>,  <43.663750, 33.146320, 36.227028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863144, 33.186089, 36.571499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636522, 0.632423, -0.441453,
		-0.588518, 0.768216, 0.251971,
		0.498484, 0.099418, 0.861179,
		44.012688, 33.215916, 36.829853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784637, 33.811047, 36.244213>,  <43.663750, 33.146320, 36.227028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784637, 33.811047, 36.244213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043705, 33.657684, 36.507584>,  <44.199146, 33.565666, 36.665607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043705, 33.657684, 36.507584>,  <43.784637, 33.811047, 36.244213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043705, 33.657684, 36.507584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711604, 0.613230, -0.342883,
		-0.272303, 0.690613, 0.670003,
		0.647665, -0.383409, 0.658428,
		44.238003, 33.542660, 36.705112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099628, 34.398529, 36.478512>,  <43.784637, 33.811047, 36.244213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099628, 34.398529, 36.478512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352787, 34.096344, 36.546291>,  <44.504684, 33.915031, 36.586960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352787, 34.096344, 36.546291>,  <44.099628, 34.398529, 36.478512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352787, 34.096344, 36.546291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755996, 0.555784, -0.345795,
		0.167056, 0.346959, 0.922882,
		0.632900, -0.755462, 0.169453,
		44.542656, 33.869705, 36.597126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721195, 34.635632, 36.578690>,  <44.099628, 34.398529, 36.478512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721195, 34.635632, 36.578690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848431, 34.264175, 36.502327>,  <44.924774, 34.041302, 36.456509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848431, 34.264175, 36.502327>,  <44.721195, 34.635632, 36.578690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848431, 34.264175, 36.502327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877998, 0.364520, -0.310232,
		0.357683, -0.068933, 0.931295,
		0.318091, -0.928641, -0.190905,
		44.943859, 33.985584, 36.445057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457371, 34.534153, 36.901405>,  <44.721195, 34.635632, 36.578690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457371, 34.534153, 36.901405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426693, 34.264221, 36.607815>,  <45.408287, 34.102261, 36.431660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426693, 34.264221, 36.607815>,  <45.457371, 34.534153, 36.901405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426693, 34.264221, 36.607815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963312, 0.139737, -0.229135,
		0.257191, -0.724624, 0.639354,
		-0.076696, -0.674829, -0.733978,
		45.403683, 34.061771, 36.387623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062000, 34.130554, 36.993687>,  <45.457371, 34.534153, 36.901405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062000, 34.130554, 36.993687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925125, 34.078823, 36.621410>,  <45.842999, 34.047787, 36.398045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925125, 34.078823, 36.621410>,  <46.062000, 34.130554, 36.993687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925125, 34.078823, 36.621410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930509, 0.091034, -0.354776,
		0.130605, -0.987415, 0.089186,
		-0.342193, -0.129324, -0.930688,
		45.822468, 34.040028, 36.342205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622875, 33.941547, 36.643147>,  <46.062000, 34.130554, 36.993687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622875, 33.941547, 36.643147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386719, 34.061626, 36.343460>,  <46.245026, 34.133675, 36.163651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386719, 34.061626, 36.343460>,  <46.622875, 33.941547, 36.643147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.386719, 34.061626, 36.343460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805197, 0.283052, -0.521093,
		0.055634, -0.910912, -0.408832,
		-0.590392, 0.300200, -0.749211,
		46.209602, 34.151688, 36.118698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787529, 33.603760, 35.933208>,  <46.622875, 33.941547, 36.643147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787529, 33.603760, 35.933208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639168, 33.972672, 35.889698>,  <46.550152, 34.194019, 35.863590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639168, 33.972672, 35.889698>,  <46.787529, 33.603760, 35.933208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639168, 33.972672, 35.889698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791820, 0.252870, -0.555948,
		-0.485233, -0.292334, -0.824069,
		-0.370905, 0.922279, -0.108775,
		46.527897, 34.249355, 35.857067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957993, 33.823261, 35.241886>,  <46.787529, 33.603760, 35.933208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957993, 33.823261, 35.241886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886261, 34.151951, 35.458260>,  <46.843224, 34.349163, 35.588085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886261, 34.151951, 35.458260>,  <46.957993, 33.823261, 35.241886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886261, 34.151951, 35.458260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750664, 0.469691, -0.464644,
		-0.635882, 0.322737, -0.701067,
		-0.179326, 0.821725, 0.540935,
		46.832462, 34.398468, 35.620541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634777, 34.382393, 34.875385>,  <46.957993, 33.823261, 35.241886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634777, 34.382393, 34.875385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879421, 34.518059, 35.161293>,  <47.026207, 34.599457, 35.332840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879421, 34.518059, 35.161293>,  <46.634777, 34.382393, 34.875385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879421, 34.518059, 35.161293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659365, 0.280770, -0.697428,
		-0.437229, 0.897851, -0.051912,
		0.611611, 0.339165, 0.714772,
		47.062904, 34.619808, 35.375725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719807, 34.986881, 34.697803>,  <46.634777, 34.382393, 34.875385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719807, 34.986881, 34.697803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.027687, 34.815174, 34.886822>,  <47.212414, 34.712151, 35.000233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.027687, 34.815174, 34.886822>,  <46.719807, 34.986881, 34.697803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.027687, 34.815174, 34.886822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594402, 0.211811, -0.775772,
		0.232921, 0.877991, 0.418186,
		0.769697, -0.429264, 0.472545,
		47.258595, 34.686394, 35.028584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.303925, 35.414024, 34.749249>,  <46.719807, 34.986881, 34.697803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.303925, 35.414024, 34.749249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376266, 35.022743, 34.708424>,  <47.419670, 34.787975, 34.683929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376266, 35.022743, 34.708424>,  <47.303925, 35.414024, 34.749249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.376266, 35.022743, 34.708424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532031, 0.184580, -0.826362,
		0.827186, 0.095150, 0.553814,
		0.180851, -0.978201, -0.102059,
		47.430523, 34.729282, 34.677807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.996067, 35.147705, 34.794525>,  <47.303925, 35.414024, 34.749249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.996067, 35.147705, 34.794525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826019, 34.864899, 34.568466>,  <47.723991, 34.695213, 34.432831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826019, 34.864899, 34.568466>,  <47.996067, 35.147705, 34.794525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.826019, 34.864899, 34.568466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752701, 0.070631, -0.654562,
		0.502705, -0.703659, 0.502147,
		-0.425122, -0.707018, -0.565152,
		47.698483, 34.652794, 34.398922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.525055, 42.573429, 44.623363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147881, 42.476131, 44.714314>,  <33.921574, 42.417751, 44.768883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147881, 42.476131, 44.714314>,  <34.525055, 42.573429, 44.623363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147881, 42.476131, 44.714314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116980, -0.397341, -0.910185,
		0.311743, -0.884846, 0.346213,
		-0.942938, -0.243243, 0.227378,
		33.864998, 42.403160, 44.782528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463329, 41.864971, 44.364532>,  <34.525055, 42.573429, 44.623363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463329, 41.864971, 44.364532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089382, 41.998932, 44.411617>,  <33.865013, 42.079308, 44.439869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089382, 41.998932, 44.411617>,  <34.463329, 41.864971, 44.364532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089382, 41.998932, 44.411617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249941, -0.385496, -0.888213,
		-0.252087, -0.859786, 0.444095,
		-0.934870, 0.334905, 0.117717,
		33.808922, 42.099403, 44.446934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022686, 41.252823, 44.231472>,  <34.463329, 41.864971, 44.364532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022686, 41.252823, 44.231472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797173, 41.580284, 44.187744>,  <33.661865, 41.776760, 44.161507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797173, 41.580284, 44.187744>,  <34.022686, 41.252823, 44.231472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797173, 41.580284, 44.187744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409499, -0.392019, -0.823791,
		-0.717254, -0.419677, 0.556253,
		-0.563788, 0.818653, -0.109320,
		33.628036, 41.825878, 44.154949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367630, 40.977661, 44.197197>,  <34.022686, 41.252823, 44.231472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367630, 40.977661, 44.197197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.363487, 41.344063, 44.036785>,  <33.361004, 41.563904, 43.940536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.363487, 41.344063, 44.036785>,  <33.367630, 40.977661, 44.197197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363487, 41.344063, 44.036785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309323, -0.384316, -0.869839,
		-0.950900, 0.115042, 0.287321,
		-0.010354, 0.916005, -0.401032,
		33.360382, 41.618866, 43.916477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773540, 40.974442, 43.771358>,  <33.367630, 40.977661, 44.197197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773540, 40.974442, 43.771358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.035542, 41.247791, 43.642376>,  <33.192741, 41.411800, 43.564987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.035542, 41.247791, 43.642376>,  <32.773540, 40.974442, 43.771358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035542, 41.247791, 43.642376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155165, -0.296008, -0.942498,
		-0.739526, 0.667371, -0.087850,
		0.655000, 0.683371, -0.322458,
		33.232040, 41.452801, 43.545639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457897, 41.247711, 43.300400>,  <32.773540, 40.974442, 43.771358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457897, 41.247711, 43.300400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.838291, 41.343231, 43.221809>,  <33.066528, 41.400543, 43.174656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.838291, 41.343231, 43.221809>,  <32.457897, 41.247711, 43.300400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838291, 41.343231, 43.221809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163020, -0.152782, -0.974722,
		-0.262781, 0.958975, -0.106364,
		0.950984, 0.238799, -0.196481,
		33.123585, 41.414871, 43.162865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488518, 41.531319, 42.605999>,  <32.457897, 41.247711, 43.300400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488518, 41.531319, 42.605999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.869011, 41.409801, 42.627445>,  <33.097305, 41.336891, 42.640312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.869011, 41.409801, 42.627445>,  <32.488518, 41.531319, 42.605999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869011, 41.409801, 42.627445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050573, -0.325026, -0.944352,
		0.304313, 0.895583, -0.324537,
		0.951228, -0.303792, 0.053617,
		33.154381, 41.318665, 42.643532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809780, 41.538704, 41.881615>,  <32.488518, 41.531319, 42.605999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809780, 41.538704, 41.881615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.099201, 41.331074, 42.063618>,  <33.272854, 41.206497, 42.172817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.099201, 41.331074, 42.063618>,  <32.809780, 41.538704, 41.881615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099201, 41.331074, 42.063618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181989, -0.492397, -0.851132,
		0.665845, 0.698646, -0.261810,
		0.723554, -0.519075, 0.455006,
		33.316269, 41.175350, 42.200119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493885, 41.680061, 41.509590>,  <32.809780, 41.538704, 41.881615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493885, 41.680061, 41.509590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513725, 41.332401, 41.706413>,  <33.525631, 41.123806, 41.824505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513725, 41.332401, 41.706413>,  <33.493885, 41.680061, 41.509590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513725, 41.332401, 41.706413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024730, -0.491441, -0.870560,
		0.998463, 0.055352, -0.002884,
		0.049604, -0.869150, 0.492054,
		33.528606, 41.071655, 41.854031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130428, 41.268299, 41.274231>,  <33.493885, 41.680061, 41.509590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130428, 41.268299, 41.274231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883312, 41.006943, 41.449238>,  <33.735043, 40.850128, 41.554241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883312, 41.006943, 41.449238>,  <34.130428, 41.268299, 41.274231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883312, 41.006943, 41.449238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225666, -0.680307, -0.697322,
		0.753265, -0.332067, 0.567735,
		-0.617791, -0.653387, 0.437515,
		33.697975, 40.810928, 41.580494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554592, 40.644573, 41.487160>,  <34.130428, 41.268299, 41.274231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554592, 40.644573, 41.487160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.168640, 40.545197, 41.453037>,  <33.937069, 40.485569, 41.432564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.168640, 40.545197, 41.453037>,  <34.554592, 40.644573, 41.487160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168640, 40.545197, 41.453037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239432, -0.698245, -0.674631,
		0.108045, -0.671364, 0.733210,
		-0.964883, -0.248444, -0.085304,
		33.879177, 40.470665, 41.427444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644405, 39.973869, 41.583939>,  <34.554592, 40.644573, 41.487160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644405, 39.973869, 41.583939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300663, 40.033978, 41.388420>,  <34.094418, 40.070042, 41.271111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300663, 40.033978, 41.388420>,  <34.644405, 39.973869, 41.583939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300663, 40.033978, 41.388420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213413, -0.763248, -0.609842,
		-0.464713, -0.628389, 0.623835,
		-0.859358, 0.150267, -0.488797,
		34.042854, 40.079060, 41.241779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465736, 39.314476, 41.383324>,  <34.644405, 39.973869, 41.583939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465736, 39.314476, 41.383324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.236740, 39.528210, 41.134571>,  <34.099342, 39.656448, 40.985317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.236740, 39.528210, 41.134571>,  <34.465736, 39.314476, 41.383324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236740, 39.528210, 41.134571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323683, -0.549586, -0.770185,
		-0.753315, -0.642218, 0.141679,
		-0.572492, 0.534333, -0.621886,
		34.064991, 39.688511, 40.948006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158985, 38.844803, 41.010735>,  <34.465736, 39.314476, 41.383324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158985, 38.844803, 41.010735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117760, 39.165436, 40.775162>,  <34.093025, 39.357815, 40.633820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117760, 39.165436, 40.775162>,  <34.158985, 38.844803, 41.010735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117760, 39.165436, 40.775162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244022, -0.553615, -0.796218,
		-0.964277, -0.225778, -0.138544,
		-0.103068, 0.801583, -0.588933,
		34.086838, 39.405910, 40.598480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630054, 38.719669, 40.608479>,  <34.158985, 38.844803, 41.010735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630054, 38.719669, 40.608479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848866, 38.989597, 40.410336>,  <33.980152, 39.151554, 40.291451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848866, 38.989597, 40.410336>,  <33.630054, 38.719669, 40.608479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848866, 38.989597, 40.410336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212169, -0.684188, -0.697761,
		-0.809780, 0.276596, -0.517447,
		0.547029, 0.674819, -0.495356,
		34.012974, 39.192043, 40.261730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402916, 38.736366, 39.924469>,  <33.630054, 38.719669, 40.608479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402916, 38.736366, 39.924469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.764339, 38.906235, 39.901730>,  <33.981194, 39.008156, 39.888088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.764339, 38.906235, 39.901730>,  <33.402916, 38.736366, 39.924469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764339, 38.906235, 39.901730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220092, -0.573870, -0.788817,
		-0.367611, 0.700232, -0.611994,
		0.903560, 0.424673, -0.056845,
		34.035408, 39.033638, 39.884674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603634, 39.106606, 39.243668>,  <33.402916, 38.736366, 39.924469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603634, 39.106606, 39.243668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.939522, 38.953091, 39.397327>,  <34.141056, 38.860981, 39.489521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.939522, 38.953091, 39.397327>,  <33.603634, 39.106606, 39.243668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939522, 38.953091, 39.397327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131458, -0.542709, -0.829569,
		0.526861, 0.747108, -0.405274,
		0.839724, -0.383792, 0.384146,
		34.191441, 38.837952, 39.512569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944637, 38.818691, 38.674721>,  <33.603634, 39.106606, 39.243668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944637, 38.818691, 38.674721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.202866, 38.705452, 38.958439>,  <34.357803, 38.637508, 39.128670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.202866, 38.705452, 38.958439>,  <33.944637, 38.818691, 38.674721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202866, 38.705452, 38.958439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489264, -0.559818, -0.668748,
		0.586393, 0.778756, -0.222895,
		0.645572, -0.283095, 0.709291,
		34.396538, 38.620522, 39.171227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628178, 38.838154, 38.405682>,  <33.944637, 38.818691, 38.674721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628178, 38.838154, 38.405682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638058, 38.576660, 38.708210>,  <34.643986, 38.419765, 38.889729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638058, 38.576660, 38.708210>,  <34.628178, 38.838154, 38.405682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638058, 38.576660, 38.708210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395714, -0.688362, -0.607921,
		0.918041, 0.314305, 0.241687,
		0.024704, -0.653735, 0.756320,
		34.645470, 38.380539, 38.935104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209976, 38.490585, 38.231163>,  <34.628178, 38.838154, 38.405682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209976, 38.490585, 38.231163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048157, 38.233829, 38.491722>,  <34.951065, 38.079777, 38.648056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048157, 38.233829, 38.491722>,  <35.209976, 38.490585, 38.231163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048157, 38.233829, 38.491722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299356, -0.765989, -0.568900,
		0.864134, -0.035148, 0.502033,
		-0.404547, -0.641892, 0.651396,
		34.926792, 38.041264, 38.687141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724052, 38.005665, 38.415569>,  <35.209976, 38.490585, 38.231163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724052, 38.005665, 38.415569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.360275, 37.856403, 38.488972>,  <35.142010, 37.766846, 38.533012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.360275, 37.856403, 38.488972>,  <35.724052, 38.005665, 38.415569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360275, 37.856403, 38.488972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141816, -0.693160, -0.706695,
		0.390902, -0.616674, 0.683307,
		-0.909441, -0.373153, 0.183504,
		35.087444, 37.744457, 38.544022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737381, 37.227787, 38.680332>,  <35.724052, 38.005665, 38.415569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737381, 37.227787, 38.680332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403835, 37.329220, 38.484222>,  <35.203709, 37.390079, 38.366558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403835, 37.329220, 38.484222>,  <35.737381, 37.227787, 38.680332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403835, 37.329220, 38.484222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127471, -0.775738, -0.618046,
		-0.537050, -0.577862, 0.614535,
		-0.833863, 0.253586, -0.490271,
		35.153675, 37.405296, 38.337143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433308, 37.422974, 38.350384>,  <35.737381, 37.227787, 38.680332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433308, 37.422974, 38.350384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.660786, 37.690681, 38.159107>,  <36.797272, 37.851307, 38.044342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.660786, 37.690681, 38.159107>,  <36.433308, 37.422974, 38.350384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660786, 37.690681, 38.159107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241784, 0.419652, 0.874890,
		0.786209, -0.613165, 0.076836,
		0.568696, 0.669268, -0.478188,
		36.831394, 37.891460, 38.015652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967728, 37.664761, 38.807346>,  <36.433308, 37.422974, 38.350384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967728, 37.664761, 38.807346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956989, 37.985313, 38.568325>,  <36.950546, 38.177643, 38.424911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956989, 37.985313, 38.568325>,  <36.967728, 37.664761, 38.807346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956989, 37.985313, 38.568325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369441, 0.563402, 0.738980,
		0.928866, -0.200919, -0.311191,
		-0.026850, 0.801380, -0.597553,
		36.948933, 38.225727, 38.389061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419476, 38.139835, 39.087730>,  <36.967728, 37.664761, 38.807346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419476, 38.139835, 39.087730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223576, 38.385899, 38.840595>,  <37.106033, 38.533535, 38.692314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223576, 38.385899, 38.840595>,  <37.419476, 38.139835, 39.087730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223576, 38.385899, 38.840595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074671, 0.735635, 0.673250,
		0.868658, 0.283592, -0.406214,
		-0.489753, 0.615156, -0.617838,
		37.076649, 38.570446, 38.655243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769306, 38.815311, 39.015591>,  <37.419476, 38.139835, 39.087730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769306, 38.815311, 39.015591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380234, 38.877037, 38.946224>,  <37.146790, 38.914074, 38.904606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.380234, 38.877037, 38.946224>,  <37.769306, 38.815311, 39.015591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380234, 38.877037, 38.946224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013474, 0.708260, 0.705823,
		0.231744, 0.688879, -0.686834,
		-0.972683, 0.154316, -0.173417,
		37.088428, 38.923332, 38.894199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747215, 39.553635, 38.777370>,  <37.769306, 38.815311, 39.015591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747215, 39.553635, 38.777370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.389206, 39.436020, 38.911518>,  <37.174400, 39.365452, 38.992004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.389206, 39.436020, 38.911518>,  <37.747215, 39.553635, 38.777370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389206, 39.436020, 38.911518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036249, 0.701473, 0.711774,
		-0.444541, 0.649212, -0.617176,
		-0.895024, -0.294041, 0.335367,
		37.120697, 39.347809, 39.012127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265629, 40.139084, 38.656422>,  <37.747215, 39.553635, 38.777370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265629, 40.139084, 38.656422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142315, 39.904785, 38.956249>,  <37.068325, 39.764206, 39.136147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142315, 39.904785, 38.956249>,  <37.265629, 40.139084, 38.656422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142315, 39.904785, 38.956249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045573, 0.777951, 0.626670,
		-0.950202, 0.227353, -0.213135,
		-0.308284, -0.585750, 0.749572,
		37.049831, 39.729061, 39.181122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720577, 40.534996, 38.898281>,  <37.265629, 40.139084, 38.656422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720577, 40.534996, 38.898281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803722, 40.280399, 39.195381>,  <36.853607, 40.127640, 39.373642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803722, 40.280399, 39.195381>,  <36.720577, 40.534996, 38.898281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803722, 40.280399, 39.195381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029008, 0.763010, 0.645735,
		-0.977729, -0.112676, 0.177061,
		0.207858, -0.636490, 0.742748,
		36.866081, 40.089451, 39.418205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252804, 40.706837, 39.409992>,  <36.720577, 40.534996, 38.898281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252804, 40.706837, 39.409992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507362, 40.477230, 39.616100>,  <36.660095, 40.339466, 39.739765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507362, 40.477230, 39.616100>,  <36.252804, 40.706837, 39.409992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507362, 40.477230, 39.616100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021308, 0.654663, 0.755620,
		-0.771071, -0.491851, 0.404392,
		0.636393, -0.574020, 0.515272,
		36.698280, 40.305023, 39.770683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963936, 40.560040, 39.998024>,  <36.252804, 40.706837, 39.409992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963936, 40.560040, 39.998024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348598, 40.490868, 40.083164>,  <36.579395, 40.449364, 40.134251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348598, 40.490868, 40.083164>,  <35.963936, 40.560040, 39.998024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348598, 40.490868, 40.083164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082279, 0.558466, 0.825437,
		-0.261611, -0.811303, 0.522826,
		0.961660, -0.172926, 0.212854,
		36.637096, 40.438992, 40.147022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993732, 40.428329, 40.725983>,  <35.963936, 40.560040, 39.998024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993732, 40.428329, 40.725983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382832, 40.495407, 40.661942>,  <36.616291, 40.535652, 40.623516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382832, 40.495407, 40.661942>,  <35.993732, 40.428329, 40.725983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382832, 40.495407, 40.661942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071476, 0.440018, 0.895140,
		0.220560, -0.882192, 0.416041,
		0.972751, 0.167695, -0.160106,
		36.674656, 40.545715, 40.613911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389263, 40.196930, 41.309113>,  <35.993732, 40.428329, 40.725983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389263, 40.196930, 41.309113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592628, 40.477791, 41.109711>,  <36.714649, 40.646305, 40.990070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592628, 40.477791, 41.109711>,  <36.389263, 40.196930, 41.309113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592628, 40.477791, 41.109711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067383, 0.544688, 0.835927,
		0.858472, -0.458587, 0.229614,
		0.508414, 0.702148, -0.498501,
		36.745152, 40.688435, 40.960159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921291, 40.274326, 41.742294>,  <36.389263, 40.196930, 41.309113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921291, 40.274326, 41.742294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935066, 40.604404, 41.516777>,  <36.943329, 40.802452, 41.381466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935066, 40.604404, 41.516777>,  <36.921291, 40.274326, 41.742294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935066, 40.604404, 41.516777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026414, 0.563182, 0.825911,
		0.999058, -0.043331, -0.002405,
		0.034433, 0.825196, -0.563796,
		36.945396, 40.851963, 41.347637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452499, 40.732204, 42.047699>,  <36.921291, 40.274326, 41.742294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452499, 40.732204, 42.047699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231255, 40.962685, 41.807014>,  <37.098507, 41.100975, 41.662605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231255, 40.962685, 41.807014>,  <37.452499, 40.732204, 42.047699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231255, 40.962685, 41.807014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082724, 0.680693, 0.727883,
		0.828988, 0.452378, -0.328835,
		-0.553114, 0.576204, -0.601708,
		37.065319, 41.135548, 41.626503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715374, 41.402802, 42.212509>,  <37.452499, 40.732204, 42.047699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715374, 41.402802, 42.212509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344028, 41.434921, 42.067345>,  <37.121223, 41.454193, 41.980247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344028, 41.434921, 42.067345>,  <37.715374, 41.402802, 42.212509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344028, 41.434921, 42.067345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183706, 0.749661, 0.635814,
		0.323112, 0.656932, -0.681203,
		-0.928359, 0.080298, -0.362907,
		37.065521, 41.459011, 41.958473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653149, 42.030743, 42.152203>,  <37.715374, 41.402802, 42.212509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653149, 42.030743, 42.152203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264809, 41.935017, 42.146755>,  <37.031807, 41.877579, 42.143486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264809, 41.935017, 42.146755>,  <37.653149, 42.030743, 42.152203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264809, 41.935017, 42.146755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206418, 0.805794, 0.555056,
		-0.121863, 0.541685, -0.831701,
		-0.970846, -0.239318, -0.013617,
		36.973557, 41.863220, 42.142670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283684, 42.674080, 42.018745>,  <37.653149, 42.030743, 42.152203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283684, 42.674080, 42.018745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055222, 42.420788, 42.227665>,  <36.918144, 42.268814, 42.353016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055222, 42.420788, 42.227665>,  <37.283684, 42.674080, 42.018745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055222, 42.420788, 42.227665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064245, 0.668831, 0.740633,
		-0.818322, 0.389464, -0.422691,
		-0.571159, -0.633232, 0.522298,
		36.883873, 42.230820, 42.384354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862598, 43.118320, 42.489971>,  <37.283684, 42.674080, 42.018745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862598, 43.118320, 42.489971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804592, 42.755405, 42.647854>,  <36.769787, 42.537655, 42.742584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804592, 42.755405, 42.647854>,  <36.862598, 43.118320, 42.489971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804592, 42.755405, 42.647854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086768, 0.409046, 0.908379,
		-0.985618, 0.097482, -0.138042,
		-0.145016, -0.907292, 0.394705,
		36.761086, 42.483219, 42.766266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260296, 43.156548, 42.950916>,  <36.862598, 43.118320, 42.489971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260296, 43.156548, 42.950916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462097, 42.830341, 43.064339>,  <36.583179, 42.634617, 43.132393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462097, 42.830341, 43.064339>,  <36.260296, 43.156548, 42.950916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462097, 42.830341, 43.064339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122538, 0.257463, 0.958487,
		-0.854670, -0.518307, 0.029959,
		0.504503, -0.815519, 0.283559,
		36.613449, 42.585686, 43.149406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.754223, 42.839111, 43.554062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097576, 42.638218, 43.595890>,  <36.303589, 42.517681, 43.620987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097576, 42.638218, 43.595890>,  <35.754223, 42.839111, 43.554062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097576, 42.638218, 43.595890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165127, -0.077511, 0.983222,
		-0.485706, -0.861249, -0.149467,
		0.858384, -0.502238, 0.104568,
		36.355091, 42.487545, 43.627262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635506, 42.227863, 43.911659>,  <35.754223, 42.839111, 43.554062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635506, 42.227863, 43.911659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025730, 42.300312, 43.961411>,  <36.259865, 42.343781, 43.991261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025730, 42.300312, 43.961411>,  <35.635506, 42.227863, 43.911659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025730, 42.300312, 43.961411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097513, -0.150388, 0.983806,
		0.196893, -0.971894, -0.129051,
		0.975563, 0.181121, 0.124383,
		36.318398, 42.354649, 43.998726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930496, 41.681461, 44.281303>,  <35.635506, 42.227863, 43.911659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930496, 41.681461, 44.281303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.145966, 42.009708, 44.357632>,  <36.275249, 42.206657, 44.403427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.145966, 42.009708, 44.357632>,  <35.930496, 41.681461, 44.281303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145966, 42.009708, 44.357632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139538, -0.136461, 0.980769,
		0.830876, -0.554945, 0.040999,
		0.538678, 0.820618, 0.190818,
		36.307568, 42.255894, 44.414879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184460, 41.536926, 44.891087>,  <35.930496, 41.681461, 44.281303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184460, 41.536926, 44.891087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289909, 41.922119, 44.868595>,  <36.353180, 42.153236, 44.855103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289909, 41.922119, 44.868595>,  <36.184460, 41.536926, 44.891087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289909, 41.922119, 44.868595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112598, 0.088607, 0.989682,
		0.958032, -0.254570, 0.131789,
		0.263621, 0.962987, -0.056224,
		36.368996, 42.211014, 44.851727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652328, 41.574772, 45.380886>,  <36.184460, 41.536926, 44.891087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652328, 41.574772, 45.380886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540226, 41.953716, 45.318974>,  <36.472965, 42.181084, 45.281826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540226, 41.953716, 45.318974>,  <36.652328, 41.574772, 45.380886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540226, 41.953716, 45.318974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050174, 0.146563, 0.987928,
		0.958612, 0.284643, 0.006457,
		-0.280260, 0.947363, -0.154779,
		36.456146, 42.237926, 45.272541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862366, 41.753799, 45.959297>,  <36.652328, 41.574772, 45.380886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862366, 41.753799, 45.959297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646370, 42.072853, 45.851826>,  <36.516773, 42.264286, 45.787342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646370, 42.072853, 45.851826>,  <36.862366, 41.753799, 45.959297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646370, 42.072853, 45.851826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139500, 0.229991, 0.963143,
		0.830028, 0.557571, -0.012923,
		-0.539993, 0.797633, -0.268680,
		36.484371, 42.312141, 45.771221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081604, 42.426189, 46.319954>,  <36.862366, 41.753799, 45.959297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081604, 42.426189, 46.319954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693680, 42.468609, 46.232113>,  <36.460926, 42.494061, 46.179409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693680, 42.468609, 46.232113>,  <37.081604, 42.426189, 46.319954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693680, 42.468609, 46.232113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186660, 0.256704, 0.948294,
		0.156943, 0.960654, -0.229158,
		-0.969808, 0.106053, -0.219603,
		36.402737, 42.500423, 46.166233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005974, 43.017124, 46.705280>,  <37.081604, 42.426189, 46.319954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005974, 43.017124, 46.705280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638233, 42.878250, 46.631248>,  <36.417587, 42.794926, 46.586830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638233, 42.878250, 46.631248>,  <37.005974, 43.017124, 46.705280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638233, 42.878250, 46.631248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278207, 0.241047, 0.929783,
		-0.278191, 0.906290, -0.318196,
		-0.919353, -0.347182, -0.185079,
		36.362427, 42.774097, 46.575726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588928, 43.599525, 46.835472>,  <37.005974, 43.017124, 46.705280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588928, 43.599525, 46.835472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348961, 43.279980, 46.852982>,  <36.204983, 43.088253, 46.863487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348961, 43.279980, 46.852982>,  <36.588928, 43.599525, 46.835472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348961, 43.279980, 46.852982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359230, 0.317852, 0.877453,
		-0.714880, 0.510672, -0.477661,
		-0.599917, -0.798864, 0.043777,
		36.168987, 43.040321, 46.866116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879955, 43.857880, 46.786076>,  <36.588928, 43.599525, 46.835472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879955, 43.857880, 46.786076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892326, 43.496479, 46.957066>,  <35.899750, 43.279640, 47.059658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892326, 43.496479, 46.957066>,  <35.879955, 43.857880, 46.786076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892326, 43.496479, 46.957066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280979, 0.402575, 0.871197,
		-0.959215, -0.147052, -0.241415,
		0.030923, -0.903498, 0.427475,
		35.901604, 43.225430, 47.085308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388123, 43.909531, 47.345116>,  <35.879955, 43.857880, 46.786076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388123, 43.909531, 47.345116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573837, 43.570263, 47.447128>,  <35.685265, 43.366703, 47.508335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573837, 43.570263, 47.447128>,  <35.388123, 43.909531, 47.345116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573837, 43.570263, 47.447128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153126, 0.206746, 0.966338,
		-0.872347, -0.487710, -0.033888,
		0.464287, -0.848171, 0.255036,
		35.713123, 43.315811, 47.523640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972855, 43.636707, 47.810196>,  <35.388123, 43.909531, 47.345116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972855, 43.636707, 47.810196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322411, 43.448936, 47.860710>,  <35.532143, 43.336273, 47.891018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322411, 43.448936, 47.860710>,  <34.972855, 43.636707, 47.810196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322411, 43.448936, 47.860710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084736, 0.108713, 0.990455,
		-0.478679, -0.876251, 0.055226,
		0.873891, -0.469431, 0.126289,
		35.584579, 43.308105, 47.898598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902958, 43.268425, 48.513699>,  <34.972855, 43.636707, 47.810196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902958, 43.268425, 48.513699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294792, 43.280491, 48.434204>,  <35.529892, 43.287731, 48.386509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294792, 43.280491, 48.434204>,  <34.902958, 43.268425, 48.513699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294792, 43.280491, 48.434204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198536, 0.009464, 0.980048,
		0.031448, -0.999500, 0.003281,
		0.979589, 0.030169, -0.198734,
		35.588669, 43.289539, 48.374584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201740, 42.864792, 49.011459>,  <34.902958, 43.268425, 48.513699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201740, 42.864792, 49.011459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517384, 43.074707, 48.883762>,  <35.706768, 43.200653, 48.807144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517384, 43.074707, 48.883762>,  <35.201740, 42.864792, 49.011459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517384, 43.074707, 48.883762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265259, 0.177628, 0.947674,
		0.554029, -0.832497, 0.000964,
		0.789107, 0.524784, -0.319238,
		35.754116, 43.232143, 48.787991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898884, 42.564693, 49.299202>,  <35.201740, 42.864792, 49.011459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898884, 42.564693, 49.299202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947796, 42.952099, 49.212448>,  <35.977142, 43.184540, 49.160397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947796, 42.952099, 49.212448>,  <35.898884, 42.564693, 49.299202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947796, 42.952099, 49.212448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334194, 0.165582, 0.927845,
		0.934538, -0.185939, -0.303422,
		0.122281, 0.968509, -0.216882,
		35.984482, 43.242653, 49.147385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421478, 42.693413, 49.750179>,  <35.898884, 42.564693, 49.299202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421478, 42.693413, 49.750179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312931, 43.049744, 49.604416>,  <36.247803, 43.263542, 49.516960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312931, 43.049744, 49.604416>,  <36.421478, 42.693413, 49.750179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312931, 43.049744, 49.604416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437581, 0.451413, 0.777656,
		0.857252, 0.051575, -0.512307,
		-0.271369, 0.890824, -0.364406,
		36.231522, 43.316990, 49.495094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064873, 43.102192, 49.665848>,  <36.421478, 42.693413, 49.750179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064873, 43.102192, 49.665848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749485, 43.341236, 49.724045>,  <36.560253, 43.484665, 49.758965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749485, 43.341236, 49.724045>,  <37.064873, 43.102192, 49.665848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749485, 43.341236, 49.724045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412660, 0.338581, 0.845621,
		0.456094, 0.726788, -0.513574,
		-0.788473, 0.597614, 0.145492,
		36.512943, 43.520519, 49.767693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303738, 43.743080, 49.932468>,  <37.064873, 43.102192, 49.665848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303738, 43.743080, 49.932468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923134, 43.742325, 50.055511>,  <36.694771, 43.741871, 50.129337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923134, 43.742325, 50.055511>,  <37.303738, 43.743080, 49.932468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923134, 43.742325, 50.055511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273033, 0.455476, 0.847345,
		-0.141710, 0.890246, -0.432875,
		-0.951510, -0.001888, 0.307612,
		36.637680, 43.741756, 50.147797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248745, 44.414299, 50.202229>,  <37.303738, 43.743080, 49.932468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248745, 44.414299, 50.202229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979336, 44.166813, 50.363995>,  <36.817692, 44.018322, 50.461056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979336, 44.166813, 50.363995>,  <37.248745, 44.414299, 50.202229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979336, 44.166813, 50.363995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240176, 0.334255, 0.911366,
		-0.699059, 0.710957, -0.076526,
		-0.673522, -0.618719, 0.404419,
		36.777279, 43.981197, 50.485321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965542, 44.761627, 50.744602>,  <37.248745, 44.414299, 50.202229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965542, 44.761627, 50.744602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.832409, 44.390461, 50.811775>,  <36.752529, 44.167763, 50.852077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.832409, 44.390461, 50.811775>,  <36.965542, 44.761627, 50.744602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832409, 44.390461, 50.811775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029153, 0.167873, 0.985377,
		-0.942536, 0.332858, -0.028822,
		-0.332829, -0.927914, 0.167930,
		36.732559, 44.112087, 50.862156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461937, 44.845676, 51.265846>,  <36.965542, 44.761627, 50.744602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461937, 44.845676, 51.265846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561314, 44.458447, 51.279198>,  <36.620937, 44.226109, 51.287209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561314, 44.458447, 51.279198>,  <36.461937, 44.845676, 51.265846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561314, 44.458447, 51.279198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200898, -0.017790, 0.979451,
		-0.947585, -0.250038, -0.198904,
		0.248439, -0.968073, 0.033374,
		36.635845, 44.168026, 51.289211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930649, 44.421101, 51.670105>,  <36.461937, 44.845676, 51.265846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930649, 44.421101, 51.670105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287895, 44.241211, 51.673988>,  <36.502243, 44.133278, 51.676319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287895, 44.241211, 51.673988>,  <35.930649, 44.421101, 51.670105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287895, 44.241211, 51.673988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013021, -0.004264, 0.999906,
		-0.449637, -0.893159, -0.009664,
		0.893116, -0.449721, 0.009713,
		36.555832, 44.106297, 51.676903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935070, 44.001343, 52.206165>,  <35.930649, 44.421101, 51.670105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935070, 44.001343, 52.206165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328884, 44.061050, 52.169479>,  <36.565174, 44.096874, 52.147469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328884, 44.061050, 52.169479>,  <35.935070, 44.001343, 52.206165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328884, 44.061050, 52.169479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086599, 0.040444, 0.995422,
		0.152293, -0.987970, 0.026892,
		0.984534, 0.149266, -0.091716,
		36.624245, 44.105831, 52.141964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501427, 43.545971, 52.571930>,  <35.935070, 44.001343, 52.206165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501427, 43.545971, 52.571930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332207, 43.198875, 52.676285>,  <35.230675, 42.990620, 52.738895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332207, 43.198875, 52.676285>,  <35.501427, 43.545971, 52.571930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332207, 43.198875, 52.676285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589939, 0.045236, -0.806180,
		0.687751, -0.494960, -0.531049,
		-0.423049, -0.867738, 0.260885,
		35.205292, 42.938553, 52.754551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572102, 42.976692, 52.190372>,  <35.501427, 43.545971, 52.571930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572102, 42.976692, 52.190372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.212700, 42.910053, 52.352821>,  <34.997059, 42.870071, 52.450291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.212700, 42.910053, 52.352821>,  <35.572102, 42.976692, 52.190372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212700, 42.910053, 52.352821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406325, -0.034461, -0.913078,
		0.166112, -0.985423, -0.036729,
		-0.898502, -0.166598, 0.406126,
		34.943150, 42.860073, 52.474659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338383, 42.360435, 51.989124>,  <35.572102, 42.976692, 52.190372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338383, 42.360435, 51.989124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998203, 42.546078, 52.088203>,  <34.794098, 42.657463, 52.147652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998203, 42.546078, 52.088203>,  <35.338383, 42.360435, 51.989124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998203, 42.546078, 52.088203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369703, -0.192296, -0.909034,
		-0.374254, -0.864656, 0.335117,
		-0.850443, 0.464103, 0.247698,
		34.743069, 42.685307, 52.162514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897099, 41.901119, 51.725925>,  <35.338383, 42.360435, 51.989124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897099, 41.901119, 51.725925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.679382, 42.231533, 51.784454>,  <34.548752, 42.429783, 51.819572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.679382, 42.231533, 51.784454>,  <34.897099, 41.901119, 51.725925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679382, 42.231533, 51.784454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483952, -0.166712, -0.859068,
		-0.685230, -0.538394, 0.490503,
		-0.544289, 0.826038, 0.146321,
		34.516094, 42.479343, 51.828350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338562, 41.670258, 51.524731>,  <34.897099, 41.901119, 51.725925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338562, 41.670258, 51.524731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319557, 42.068676, 51.494686>,  <34.308155, 42.307728, 51.476662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319557, 42.068676, 51.494686>,  <34.338562, 41.670258, 51.524731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319557, 42.068676, 51.494686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410742, -0.088020, -0.907493,
		-0.910513, -0.012263, 0.413299,
		-0.047507, 0.996043, -0.075107,
		34.305305, 42.367489, 51.472153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780739, 41.800575, 51.122589>,  <34.338562, 41.670258, 51.524731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780739, 41.800575, 51.122589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967682, 42.153893, 51.107769>,  <34.079849, 42.365883, 51.098877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967682, 42.153893, 51.107769>,  <33.780739, 41.800575, 51.122589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967682, 42.153893, 51.107769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263256, 0.099042, -0.959628,
		-0.843963, 0.458242, 0.278820,
		0.467357, 0.883292, -0.037047,
		34.107887, 42.418880, 51.096657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306633, 42.279602, 50.892017>,  <33.780739, 41.800575, 51.122589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306633, 42.279602, 50.892017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658474, 42.456917, 50.822971>,  <33.869579, 42.563305, 50.781544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658474, 42.456917, 50.822971>,  <33.306633, 42.279602, 50.892017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658474, 42.456917, 50.822971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243810, 0.108500, -0.963735,
		-0.408482, 0.889789, 0.203515,
		0.879602, 0.443287, -0.172619,
		33.922356, 42.589905, 50.771187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163227, 42.746796, 50.494545>,  <33.306633, 42.279602, 50.892017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163227, 42.746796, 50.494545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555965, 42.707306, 50.429760>,  <33.791607, 42.683613, 50.390888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.555965, 42.707306, 50.429760>,  <33.163227, 42.746796, 50.494545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555965, 42.707306, 50.429760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145861, 0.152886, -0.977420,
		0.121254, 0.983301, 0.135710,
		0.981846, -0.098722, -0.161963,
		33.850521, 42.677689, 50.381172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216812, 43.125874, 49.900723>,  <33.163227, 42.746796, 50.494545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216812, 43.125874, 49.900723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522720, 42.868153, 49.899715>,  <33.706264, 42.713520, 49.899109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522720, 42.868153, 49.899715>,  <33.216812, 43.125874, 49.900723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522720, 42.868153, 49.899715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052176, -0.058031, -0.996950,
		0.642189, 0.762568, -0.077998,
		0.764768, -0.644300, -0.002521,
		33.752151, 42.674862, 49.898960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605682, 43.356136, 49.360439>,  <33.216812, 43.125874, 49.900723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605682, 43.356136, 49.360439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723488, 42.979443, 49.425419>,  <33.794170, 42.753426, 49.464409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723488, 42.979443, 49.425419>,  <33.605682, 43.356136, 49.360439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723488, 42.979443, 49.425419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000463, -0.170133, -0.985421,
		0.955647, 0.290147, -0.050542,
		0.294516, -0.941738, 0.162453,
		33.811844, 42.696922, 49.474155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220825, 43.159645, 48.911606>,  <33.605682, 43.356136, 49.360439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220825, 43.159645, 48.911606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015793, 42.832794, 49.017113>,  <33.892773, 42.636684, 49.080418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015793, 42.832794, 49.017113>,  <34.220825, 43.159645, 48.911606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015793, 42.832794, 49.017113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085334, -0.257195, -0.962584,
		0.854390, -0.515908, 0.062104,
		-0.512578, -0.817123, 0.263769,
		33.862019, 42.587658, 49.096245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636307, 42.594540, 48.530670>,  <34.220825, 43.159645, 48.911606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636307, 42.594540, 48.530670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283466, 42.439621, 48.637928>,  <34.071762, 42.346672, 48.702282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283466, 42.439621, 48.637928>,  <34.636307, 42.594540, 48.530670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283466, 42.439621, 48.637928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200825, -0.205729, -0.957781,
		0.426108, -0.898710, 0.103696,
		-0.882100, -0.387294, 0.268146,
		34.018837, 42.323433, 48.718372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591179, 41.894939, 48.229160>,  <34.636307, 42.594540, 48.530670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591179, 41.894939, 48.229160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.214783, 42.010418, 48.299805>,  <33.988945, 42.079704, 48.342194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.214783, 42.010418, 48.299805>,  <34.591179, 41.894939, 48.229160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214783, 42.010418, 48.299805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266460, -0.310254, -0.912547,
		-0.208653, -0.905758, 0.368872,
		-0.940990, 0.288696, 0.176613,
		33.932487, 42.097027, 48.352787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223785, 41.434990, 47.757214>,  <34.591179, 41.894939, 48.229160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223785, 41.434990, 47.757214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996708, 41.752541, 47.844379>,  <33.860462, 41.943069, 47.896679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996708, 41.752541, 47.844379>,  <34.223785, 41.434990, 47.757214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996708, 41.752541, 47.844379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345002, 0.010919, -0.938539,
		-0.747460, -0.607986, 0.267689,
		-0.567695, 0.793872, 0.217918,
		33.826401, 41.990704, 47.909756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570267, 41.290424, 47.352840>,  <34.223785, 41.434990, 47.757214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570267, 41.290424, 47.352840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594788, 41.681206, 47.434631>,  <33.609501, 41.915672, 47.483704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594788, 41.681206, 47.434631>,  <33.570267, 41.290424, 47.352840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594788, 41.681206, 47.434631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210342, 0.212902, -0.954164,
		-0.975704, 0.015478, 0.218544,
		0.061297, 0.976951, 0.204474,
		33.613178, 41.974293, 47.495972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996784, 41.579178, 47.097275>,  <33.570267, 41.290424, 47.352840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996784, 41.579178, 47.097275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260849, 41.879509, 47.105679>,  <33.419289, 42.059708, 47.110722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260849, 41.879509, 47.105679>,  <32.996784, 41.579178, 47.097275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260849, 41.879509, 47.105679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109244, 0.123654, -0.986294,
		-0.743134, 0.648821, 0.163656,
		0.660164, 0.750827, 0.021012,
		33.458897, 42.104755, 47.111980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764172, 42.066505, 46.558414>,  <32.996784, 41.579178, 47.097275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764172, 42.066505, 46.558414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.133381, 42.201393, 46.632500>,  <33.354908, 42.282326, 46.676952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.133381, 42.201393, 46.632500>,  <32.764172, 42.066505, 46.558414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133381, 42.201393, 46.632500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109227, 0.231910, -0.966585,
		-0.368905, 0.912414, 0.177226,
		0.923027, 0.337220, 0.185213,
		33.410290, 42.302559, 46.688065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813488, 42.725266, 46.259312>,  <32.764172, 42.066505, 46.558414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813488, 42.725266, 46.259312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.171654, 42.551445, 46.298077>,  <33.386555, 42.447151, 46.321335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.171654, 42.551445, 46.298077>,  <32.813488, 42.725266, 46.259312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171654, 42.551445, 46.298077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186058, 0.167459, -0.968163,
		0.404487, 0.884942, 0.230797,
		0.895418, -0.434551, 0.096916,
		33.440281, 42.421082, 46.327152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257618, 43.209103, 46.038074>,  <32.813488, 42.725266, 46.259312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257618, 43.209103, 46.038074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443733, 42.855347, 46.023327>,  <33.555405, 42.643093, 46.014481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443733, 42.855347, 46.023327>,  <33.257618, 43.209103, 46.038074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443733, 42.855347, 46.023327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336619, 0.215312, -0.916694,
		0.818652, 0.414120, 0.397886,
		0.465291, -0.884390, -0.036865,
		33.583321, 42.590031, 46.012268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823139, 43.358494, 45.661949>,  <33.257618, 43.209103, 46.038074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823139, 43.358494, 45.661949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749886, 42.965675, 45.643826>,  <33.705933, 42.729984, 45.632950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749886, 42.965675, 45.643826>,  <33.823139, 43.358494, 45.661949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749886, 42.965675, 45.643826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086288, 0.029856, -0.995823,
		0.979294, -0.186275, 0.079271,
		-0.183131, -0.982044, -0.045311,
		33.694946, 42.671062, 45.630234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240532, 43.130623, 45.157566>,  <33.823139, 43.358494, 45.661949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240532, 43.130623, 45.157566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988514, 42.823322, 45.202877>,  <33.837303, 42.638943, 45.230064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988514, 42.823322, 45.202877>,  <34.240532, 43.130623, 45.157566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988514, 42.823322, 45.202877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137772, -0.254135, -0.957306,
		0.764243, -0.587535, 0.265960,
		-0.630041, -0.768256, 0.113275,
		33.799503, 42.592846, 45.236858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.458992, 34.447666, 43.030743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307201, 34.759159, 42.830917>,  <40.216125, 34.946056, 42.711021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307201, 34.759159, 42.830917>,  <40.458992, 34.447666, 43.030743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307201, 34.759159, 42.830917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614044, -0.191905, -0.765586,
		-0.692059, -0.597279, -0.405354,
		-0.379480, 0.778736, -0.499565,
		40.193359, 34.992779, 42.681049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324085, 34.229156, 42.417744>,  <40.458992, 34.447666, 43.030743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324085, 34.229156, 42.417744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312588, 34.620377, 42.335190>,  <40.305691, 34.855106, 42.285656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312588, 34.620377, 42.335190>,  <40.324085, 34.229156, 42.417744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312588, 34.620377, 42.335190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474827, -0.168330, -0.863831,
		-0.879609, -0.122828, -0.459566,
		-0.028744, 0.978048, -0.206387,
		40.303963, 34.913792, 42.273273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024097, 34.300472, 41.744240>,  <40.324085, 34.229156, 42.417744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024097, 34.300472, 41.744240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.229805, 34.637672, 41.807323>,  <40.353230, 34.839993, 41.845173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.229805, 34.637672, 41.807323>,  <40.024097, 34.300472, 41.744240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229805, 34.637672, 41.807323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418987, -0.086504, -0.903862,
		-0.748317, 0.530906, -0.397694,
		0.514268, 0.843004, 0.157710,
		40.384087, 34.890575, 41.854637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970749, 34.611282, 41.137081>,  <40.024097, 34.300472, 41.744240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970749, 34.611282, 41.137081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.273228, 34.838543, 41.266922>,  <40.454716, 34.974899, 41.344826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.273228, 34.838543, 41.266922>,  <39.970749, 34.611282, 41.137081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273228, 34.838543, 41.266922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477908, -0.140705, -0.867067,
		-0.446950, 0.810808, -0.377924,
		0.756201, 0.568149, 0.324604,
		40.500088, 35.008987, 41.364304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114643, 35.147156, 40.561657>,  <39.970749, 34.611282, 41.137081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114643, 35.147156, 40.561657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440487, 35.095047, 40.787735>,  <40.635994, 35.063782, 40.923382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440487, 35.095047, 40.787735>,  <40.114643, 35.147156, 40.561657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440487, 35.095047, 40.787735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552731, -0.120997, -0.824529,
		0.175801, 0.984067, -0.026558,
		0.814606, -0.130273, 0.565196,
		40.684868, 35.055965, 40.957294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627544, 35.512112, 40.181419>,  <40.114643, 35.147156, 40.561657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627544, 35.512112, 40.181419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.823421, 35.268589, 40.431076>,  <40.940948, 35.122475, 40.580872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.823421, 35.268589, 40.431076>,  <40.627544, 35.512112, 40.181419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823421, 35.268589, 40.431076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753228, -0.065153, -0.654525,
		0.439142, 0.790641, 0.426662,
		0.489696, -0.608803, 0.624144,
		40.970329, 35.085949, 40.618320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225616, 35.876530, 40.400993>,  <40.627544, 35.512112, 40.181419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225616, 35.876530, 40.400993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292603, 35.482906, 40.424953>,  <41.332794, 35.246731, 40.439327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292603, 35.482906, 40.424953>,  <41.225616, 35.876530, 40.400993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292603, 35.482906, 40.424953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824065, 0.106368, -0.556419,
		0.541177, 0.142540, 0.828740,
		0.167463, -0.984057, 0.059898,
		41.342842, 35.187691, 40.442924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942024, 35.884632, 40.270027>,  <41.225616, 35.876530, 40.400993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942024, 35.884632, 40.270027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860626, 35.493027, 40.274372>,  <41.811787, 35.258064, 40.276978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860626, 35.493027, 40.274372>,  <41.942024, 35.884632, 40.270027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860626, 35.493027, 40.274372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792479, -0.171215, -0.585374,
		0.574950, -0.110513, 0.810691,
		-0.203494, -0.979016, 0.010861,
		41.799580, 35.199322, 40.277630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598518, 35.574753, 40.472824>,  <41.942024, 35.884632, 40.270027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598518, 35.574753, 40.472824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363701, 35.322483, 40.269794>,  <42.222809, 35.171124, 40.147976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363701, 35.322483, 40.269794>,  <42.598518, 35.574753, 40.472824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363701, 35.322483, 40.269794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768537, -0.237121, -0.594243,
		0.254417, -0.738936, 0.623896,
		-0.587046, -0.630672, -0.507572,
		42.187588, 35.133282, 40.117523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005566, 34.964264, 40.294960>,  <42.598518, 35.574753, 40.472824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005566, 34.964264, 40.294960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695614, 34.956264, 40.042240>,  <42.509644, 34.951466, 39.890610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695614, 34.956264, 40.042240>,  <43.005566, 34.964264, 40.294960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695614, 34.956264, 40.042240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628163, -0.135922, -0.766118,
		-0.070555, -0.990518, 0.117884,
		-0.774877, -0.019997, -0.631796,
		42.463150, 34.950268, 39.852703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194023, 34.521500, 39.815865>,  <43.005566, 34.964264, 40.294960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194023, 34.521500, 39.815865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897820, 34.701122, 39.615871>,  <42.720097, 34.808895, 39.495872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897820, 34.701122, 39.615871>,  <43.194023, 34.521500, 39.815865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897820, 34.701122, 39.615871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586535, 0.068683, -0.807007,
		-0.328053, -0.890858, -0.314249,
		-0.740512, 0.449059, -0.499988,
		42.675667, 34.835838, 39.465874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286587, 34.408199, 39.129784>,  <43.194023, 34.521500, 39.815865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286587, 34.408199, 39.129784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.067841, 34.739178, 39.078762>,  <42.936592, 34.937767, 39.048149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.067841, 34.739178, 39.078762>,  <43.286587, 34.408199, 39.129784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067841, 34.739178, 39.078762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642925, 0.317457, -0.697042,
		-0.536274, -0.463194, -0.705593,
		-0.546861, 0.827450, -0.127555,
		42.903782, 34.987411, 39.040497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375000, 34.612957, 38.369480>,  <43.286587, 34.408199, 39.129784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375000, 34.612957, 38.369480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231304, 34.923653, 38.576408>,  <43.145088, 35.110069, 38.700565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231304, 34.923653, 38.576408>,  <43.375000, 34.612957, 38.369480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231304, 34.923653, 38.576408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373848, 0.627676, -0.682832,
		-0.855095, -0.051899, -0.515868,
		-0.359236, 0.776743, 0.517320,
		43.123535, 35.156677, 38.731606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951107, 34.860260, 37.943665>,  <43.375000, 34.612957, 38.369480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951107, 34.860260, 37.943665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.036549, 35.176743, 38.172874>,  <43.087814, 35.366634, 38.310402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.036549, 35.176743, 38.172874>,  <42.951107, 34.860260, 37.943665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036549, 35.176743, 38.172874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342606, 0.488640, -0.802404,
		-0.914874, 0.367720, -0.166697,
		0.213605, 0.791210, 0.573027,
		43.100632, 35.414104, 38.344784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562775, 35.544746, 37.725060>,  <42.951107, 34.860260, 37.943665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562775, 35.544746, 37.725060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891853, 35.665710, 37.917606>,  <43.089302, 35.738289, 38.033134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891853, 35.665710, 37.917606>,  <42.562775, 35.544746, 37.725060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891853, 35.665710, 37.917606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343214, 0.410803, -0.844657,
		-0.453178, 0.860111, 0.234177,
		0.822699, 0.302407, 0.481369,
		43.138664, 35.756432, 38.062016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700554, 36.199635, 37.548210>,  <42.562775, 35.544746, 37.725060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700554, 36.199635, 37.548210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.063946, 36.089043, 37.673576>,  <43.281979, 36.022690, 37.748798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.063946, 36.089043, 37.673576>,  <42.700554, 36.199635, 37.548210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063946, 36.089043, 37.673576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412076, 0.467411, -0.782125,
		0.069745, 0.839694, 0.538562,
		0.908476, -0.276478, 0.313418,
		43.336487, 36.006100, 37.767601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104195, 36.854687, 37.443813>,  <42.700554, 36.199635, 37.548210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104195, 36.854687, 37.443813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365532, 36.552502, 37.463478>,  <43.522335, 36.371189, 37.475277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365532, 36.552502, 37.463478>,  <43.104195, 36.854687, 37.443813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365532, 36.552502, 37.463478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432355, 0.319032, -0.843378,
		0.621456, 0.572273, 0.535066,
		0.653346, -0.755462, 0.049161,
		43.561535, 36.325863, 37.478226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759010, 37.138634, 37.244183>,  <43.104195, 36.854687, 37.443813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759010, 37.138634, 37.244183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793922, 36.745159, 37.181259>,  <43.814869, 36.509075, 37.143505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793922, 36.745159, 37.181259>,  <43.759010, 37.138634, 37.244183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793922, 36.745159, 37.181259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680570, 0.174197, -0.711674,
		0.727466, -0.044942, 0.684670,
		0.087283, -0.983685, -0.157309,
		43.820107, 36.450054, 37.134068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524479, 36.899010, 37.371368>,  <43.759010, 37.138634, 37.244183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524479, 36.899010, 37.371368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339836, 36.647812, 37.120754>,  <44.229050, 36.497093, 36.970387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339836, 36.647812, 37.120754>,  <44.524479, 36.899010, 37.371368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339836, 36.647812, 37.120754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758868, 0.086205, -0.645514,
		0.459389, -0.773428, 0.436772,
		-0.461607, -0.627995, -0.626532,
		44.201355, 36.459415, 36.932796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088921, 36.624855, 37.210213>,  <44.524479, 36.899010, 37.371368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088921, 36.624855, 37.210213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.819157, 36.521275, 36.933628>,  <44.657299, 36.459126, 36.767677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.819157, 36.521275, 36.933628>,  <45.088921, 36.624855, 37.210213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819157, 36.521275, 36.933628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722200, -0.036508, -0.690721,
		0.153621, -0.965200, 0.211637,
		-0.674410, -0.258954, -0.691459,
		44.616833, 36.443588, 36.726189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452259, 36.120323, 36.704716>,  <45.088921, 36.624855, 37.210213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452259, 36.120323, 36.704716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136902, 36.221172, 36.480263>,  <44.947685, 36.281681, 36.345592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136902, 36.221172, 36.480263>,  <45.452259, 36.120323, 36.704716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136902, 36.221172, 36.480263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603622, 0.141152, -0.784676,
		-0.118631, -0.957345, -0.263471,
		-0.788395, 0.252124, -0.561130,
		44.900383, 36.296810, 36.311924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510670, 35.827980, 36.076969>,  <45.452259, 36.120323, 36.704716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510670, 35.827980, 36.076969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.253063, 36.116974, 35.976360>,  <45.098499, 36.290371, 35.915997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.253063, 36.116974, 35.976360>,  <45.510670, 35.827980, 36.076969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.253063, 36.116974, 35.976360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569787, 0.233607, -0.787890,
		-0.510481, -0.650725, -0.562108,
		-0.644012, 0.722485, -0.251522,
		45.059860, 36.333721, 35.900902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792763, 35.236221, 35.503578>,  <45.510670, 35.827980, 36.076969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792763, 35.236221, 35.503578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.014984, 34.907578, 35.554684>,  <46.148315, 34.710392, 35.585346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.014984, 34.907578, 35.554684>,  <45.792763, 35.236221, 35.503578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014984, 34.907578, 35.554684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818704, -0.513688, 0.256608,
		-0.145199, -0.247162, -0.958034,
		0.555555, -0.821605, 0.127766,
		46.181652, 34.661095, 35.593014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447430, 34.613663, 35.172699>,  <45.792763, 35.236221, 35.503578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447430, 34.613663, 35.172699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.687260, 34.478668, 35.462971>,  <45.831158, 34.397671, 35.637135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.687260, 34.478668, 35.462971>,  <45.447430, 34.613663, 35.172699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.687260, 34.478668, 35.462971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708278, -0.645933, 0.284803,
		0.372623, -0.684744, -0.626321,
		0.599578, -0.337486, 0.725678,
		45.867134, 34.377422, 35.680676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212540, 33.939003, 35.169937>,  <45.447430, 34.613663, 35.172699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212540, 33.939003, 35.169937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395279, 33.985004, 35.522770>,  <45.504921, 34.012604, 35.734470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.395279, 33.985004, 35.522770>,  <45.212540, 33.939003, 35.169937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395279, 33.985004, 35.522770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727203, -0.522815, 0.444792,
		0.512318, -0.844653, -0.155215,
		0.456843, 0.115002, 0.882082,
		45.532333, 34.019505, 35.787395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299152, 33.203793, 35.426971>,  <45.212540, 33.939003, 35.169937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299152, 33.203793, 35.426971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.317913, 33.470421, 35.724556>,  <45.329170, 33.630398, 35.903107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.317913, 33.470421, 35.724556>,  <45.299152, 33.203793, 35.426971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.317913, 33.470421, 35.724556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661316, -0.537466, 0.523251,
		0.748639, -0.516539, 0.415605,
		0.046906, 0.666572, 0.743964,
		45.331985, 33.670391, 35.947746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333344, 32.819302, 36.116470>,  <45.299152, 33.203793, 35.426971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333344, 32.819302, 36.116470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.229214, 33.183388, 36.245308>,  <45.166737, 33.401840, 36.322609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.229214, 33.183388, 36.245308>,  <45.333344, 32.819302, 36.116470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229214, 33.183388, 36.245308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693665, -0.408358, 0.593357,
		0.671610, -0.068959, 0.737688,
		-0.260324, 0.910213, 0.322092,
		45.151115, 33.456451, 36.341934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337036, 32.851849, 36.828873>,  <45.333344, 32.819302, 36.116470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337036, 32.851849, 36.828873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.091991, 33.159275, 36.755112>,  <44.944962, 33.343731, 36.710854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.091991, 33.159275, 36.755112>,  <45.337036, 32.851849, 36.828873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.091991, 33.159275, 36.755112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656275, -0.364615, 0.660574,
		0.440458, 0.525700, 0.727761,
		-0.612616, 0.768567, -0.184406,
		44.908207, 33.389847, 36.699791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061100, 33.072205, 37.510345>,  <45.337036, 32.851849, 36.828873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061100, 33.072205, 37.510345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.805492, 33.231232, 37.246956>,  <44.652126, 33.326649, 37.088921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.805492, 33.231232, 37.246956>,  <45.061100, 33.072205, 37.510345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805492, 33.231232, 37.246956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752257, -0.144386, 0.642855,
		0.160503, 0.906142, 0.391339,
		-0.639021, 0.397568, -0.658477,
		44.613785, 33.350502, 37.049412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734917, 33.481533, 37.910606>,  <45.061100, 33.072205, 37.510345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734917, 33.481533, 37.910606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512787, 33.427349, 37.582394>,  <44.379509, 33.394836, 37.385468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512787, 33.427349, 37.582394>,  <44.734917, 33.481533, 37.910606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512787, 33.427349, 37.582394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780834, -0.254625, 0.570494,
		-0.286209, 0.957505, 0.035624,
		-0.555322, -0.135464, -0.820529,
		44.346191, 33.386711, 37.336235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088951, 33.852768, 38.016682>,  <44.734917, 33.481533, 37.910606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088951, 33.852768, 38.016682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007980, 33.571941, 37.743587>,  <43.959396, 33.403446, 37.579731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007980, 33.571941, 37.743587>,  <44.088951, 33.852768, 38.016682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007980, 33.571941, 37.743587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828243, -0.249253, 0.501883,
		-0.522529, 0.667065, -0.531025,
		-0.202429, -0.702066, -0.682734,
		43.947250, 33.361320, 37.538769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468189, 34.083694, 37.891846>,  <44.088951, 33.852768, 38.016682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468189, 34.083694, 37.891846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489655, 33.709702, 37.751602>,  <43.502533, 33.485306, 37.667458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489655, 33.709702, 37.751602>,  <43.468189, 34.083694, 37.891846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489655, 33.709702, 37.751602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893834, -0.201509, 0.400568,
		-0.445175, 0.291887, -0.846535,
		0.053664, -0.934984, -0.350605,
		43.505753, 33.429207, 37.646420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775070, 33.870018, 37.672565>,  <43.468189, 34.083694, 37.891846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775070, 33.870018, 37.672565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.958218, 33.517391, 37.718510>,  <43.068108, 33.305813, 37.746075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.958218, 33.517391, 37.718510>,  <42.775070, 33.870018, 37.672565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958218, 33.517391, 37.718510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836045, -0.383044, 0.392818,
		-0.302300, -0.275888, -0.912415,
		0.457869, -0.881569, 0.114860,
		43.095577, 33.252922, 37.752968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253403, 33.348232, 37.414604>,  <42.775070, 33.870018, 37.672565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253403, 33.348232, 37.414604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.513824, 33.175743, 37.664459>,  <42.670078, 33.072250, 37.814373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.513824, 33.175743, 37.664459>,  <42.253403, 33.348232, 37.414604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513824, 33.175743, 37.664459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757404, -0.422886, 0.497501,
		0.049615, -0.797003, -0.601934,
		0.651059, -0.431223, 0.624635,
		42.709141, 33.046375, 37.851849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976692, 32.711872, 37.549896>,  <42.253403, 33.348232, 37.414604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976692, 32.711872, 37.549896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223301, 32.804966, 37.850758>,  <42.371265, 32.860821, 38.031273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223301, 32.804966, 37.850758>,  <41.976692, 32.711872, 37.549896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223301, 32.804966, 37.850758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663235, -0.361282, 0.655435,
		0.424282, -0.902945, -0.068381,
		0.616526, 0.232737, 0.752150,
		42.408260, 32.874786, 38.076401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753601, 32.344765, 38.116005>,  <41.976692, 32.711872, 37.549896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753601, 32.344765, 38.116005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985676, 32.583893, 38.337273>,  <42.124920, 32.727367, 38.470036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985676, 32.583893, 38.337273>,  <41.753601, 32.344765, 38.116005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985676, 32.583893, 38.337273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701931, 0.022498, 0.711890,
		0.413136, -0.801316, 0.432680,
		0.580183, 0.597818, 0.553174,
		42.159729, 32.763237, 38.503223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755039, 32.032612, 38.775597>,  <41.753601, 32.344765, 38.116005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755039, 32.032612, 38.775597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853489, 32.414177, 38.844273>,  <41.912560, 32.643116, 38.885479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853489, 32.414177, 38.844273>,  <41.755039, 32.032612, 38.775597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853489, 32.414177, 38.844273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626605, 0.021462, 0.779041,
		0.739450, -0.299324, 0.603008,
		0.246127, 0.953910, 0.171688,
		41.927326, 32.700352, 38.895779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843864, 32.057972, 39.572281>,  <41.755039, 32.032612, 38.775597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843864, 32.057972, 39.572281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804134, 32.417759, 39.402058>,  <41.780296, 32.633629, 39.299923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804134, 32.417759, 39.402058>,  <41.843864, 32.057972, 39.572281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804134, 32.417759, 39.402058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674496, 0.253569, 0.693367,
		0.731567, 0.355904, 0.581500,
		-0.099322, 0.899464, -0.425558,
		41.774338, 32.687599, 39.274391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861439, 32.454868, 40.076694>,  <41.843864, 32.057972, 39.572281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861439, 32.454868, 40.076694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.699715, 32.683182, 39.790829>,  <41.602680, 32.820171, 39.619308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.699715, 32.683182, 39.790829>,  <41.861439, 32.454868, 40.076694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699715, 32.683182, 39.790829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816537, 0.126781, 0.563200,
		0.412071, 0.811253, 0.414809,
		-0.404307, 0.570785, -0.714661,
		41.578423, 32.854416, 39.576431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576347, 33.096836, 40.400761>,  <41.861439, 32.454868, 40.076694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576347, 33.096836, 40.400761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.394005, 33.016956, 40.053814>,  <41.284599, 32.969028, 39.845646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.394005, 33.016956, 40.053814>,  <41.576347, 33.096836, 40.400761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394005, 33.016956, 40.053814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879587, -0.047948, 0.473316,
		-0.136108, 0.978684, -0.153795,
		-0.455853, -0.199698, -0.867363,
		41.257248, 32.957047, 39.793606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984901, 33.435993, 40.442043>,  <41.576347, 33.096836, 40.400761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984901, 33.435993, 40.442043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.910374, 33.205395, 40.123814>,  <40.865658, 33.067036, 39.932877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.910374, 33.205395, 40.123814>,  <40.984901, 33.435993, 40.442043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910374, 33.205395, 40.123814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924251, -0.171795, 0.340949,
		-0.333231, 0.798834, -0.500820,
		-0.186323, -0.576498, -0.795571,
		40.854477, 33.032444, 39.885143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428696, 33.780018, 40.207623>,  <40.984901, 33.435993, 40.442043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428696, 33.780018, 40.207623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.430244, 33.410801, 40.053749>,  <40.431171, 33.189270, 39.961426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.430244, 33.410801, 40.053749>,  <40.428696, 33.780018, 40.207623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430244, 33.410801, 40.053749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950668, -0.122723, 0.284903,
		-0.310186, 0.364608, -0.877978,
		0.003870, -0.923039, -0.384688,
		40.431404, 33.133888, 39.938343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.954975, 41.953529, 40.646515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952374, 41.617931, 40.864159>,  <36.950813, 41.416573, 40.994743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952374, 41.617931, 40.864159>,  <36.954975, 41.953529, 40.646515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952374, 41.617931, 40.864159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289071, -0.522464, -0.802166,
		0.957286, 0.152072, 0.245923,
		-0.006499, -0.838991, 0.544107,
		36.950424, 41.366234, 41.027390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503677, 41.591984, 40.387592>,  <36.954975, 41.953529, 40.646515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503677, 41.591984, 40.387592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267818, 41.318672, 40.559845>,  <37.126301, 41.154686, 40.663197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267818, 41.318672, 40.559845>,  <37.503677, 41.591984, 40.387592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267818, 41.318672, 40.559845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170267, -0.626365, -0.760707,
		0.789507, -0.375229, 0.485676,
		-0.589650, -0.683279, 0.430631,
		37.090923, 41.113689, 40.689034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861858, 40.976753, 40.402939>,  <37.503677, 41.591984, 40.387592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861858, 40.976753, 40.402939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487099, 40.845142, 40.450195>,  <37.262241, 40.766178, 40.478550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487099, 40.845142, 40.450195>,  <37.861858, 40.976753, 40.402939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487099, 40.845142, 40.450195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162869, -0.709831, -0.685284,
		0.309332, -0.622803, 0.718630,
		-0.936903, -0.329023, 0.118138,
		37.206028, 40.746437, 40.485638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872204, 40.221188, 40.387264>,  <37.861858, 40.976753, 40.402939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872204, 40.221188, 40.387264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485577, 40.300179, 40.321842>,  <37.253601, 40.347572, 40.282589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485577, 40.300179, 40.321842>,  <37.872204, 40.221188, 40.387264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485577, 40.300179, 40.321842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051365, -0.774047, -0.631041,
		-0.251216, -0.601543, 0.758312,
		-0.966567, 0.197479, -0.163555,
		37.195606, 40.359421, 40.272778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532230, 39.576450, 40.439178>,  <37.872204, 40.221188, 40.387264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532230, 39.576450, 40.439178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277172, 39.817173, 40.246830>,  <37.124138, 39.961605, 40.131420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277172, 39.817173, 40.246830>,  <37.532230, 39.576450, 40.439178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277172, 39.817173, 40.246830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097001, -0.682000, -0.724891,
		-0.764200, -0.415577, 0.493248,
		-0.637643, 0.601807, -0.480873,
		37.085880, 39.997715, 40.102570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177792, 39.064358, 40.211460>,  <37.532230, 39.576450, 40.439178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177792, 39.064358, 40.211460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059246, 39.384884, 40.003590>,  <36.988121, 39.577198, 39.878868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059246, 39.384884, 40.003590>,  <37.177792, 39.064358, 40.211460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059246, 39.384884, 40.003590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310489, -0.595400, -0.741010,
		-0.903199, -0.058251, 0.425252,
		-0.296359, 0.801315, -0.519678,
		36.970337, 39.625278, 39.847687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455017, 38.974857, 40.062382>,  <37.177792, 39.064358, 40.211460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455017, 38.974857, 40.062382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644753, 39.198273, 39.790192>,  <36.758595, 39.332321, 39.626877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644753, 39.198273, 39.790192>,  <36.455017, 38.974857, 40.062382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644753, 39.198273, 39.790192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406922, -0.546330, -0.732078,
		-0.780655, 0.624150, -0.031864,
		0.474334, 0.558534, -0.680475,
		36.787052, 39.365833, 39.586048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029533, 38.907146, 39.442005>,  <36.455017, 38.974857, 40.062382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029533, 38.907146, 39.442005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363861, 39.077927, 39.303955>,  <36.564457, 39.180393, 39.221123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363861, 39.077927, 39.303955>,  <36.029533, 38.907146, 39.442005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363861, 39.077927, 39.303955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155695, -0.418497, -0.894773,
		-0.526459, 0.801607, -0.283315,
		0.835823, 0.426951, -0.345128,
		36.614609, 39.206013, 39.200417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842503, 39.155861, 38.694019>,  <36.029533, 38.907146, 39.442005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842503, 39.155861, 38.694019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231750, 39.072281, 38.732761>,  <36.465298, 39.022133, 38.756008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231750, 39.072281, 38.732761>,  <35.842503, 39.155861, 38.694019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231750, 39.072281, 38.732761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022442, -0.332519, -0.942830,
		0.229213, 0.919658, -0.318891,
		0.973118, -0.208952, 0.096856,
		36.523685, 39.009594, 38.761818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318741, 39.358784, 38.074284>,  <35.842503, 39.155861, 38.694019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318741, 39.358784, 38.074284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535324, 39.064632, 38.237278>,  <36.665276, 38.888142, 38.335075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535324, 39.064632, 38.237278>,  <36.318741, 39.358784, 38.074284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535324, 39.064632, 38.237278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159725, -0.385874, -0.908619,
		0.825415, 0.557065, -0.091477,
		0.541458, -0.735377, 0.407484,
		36.697762, 38.844021, 38.359524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784073, 39.242229, 37.528942>,  <36.318741, 39.358784, 38.074284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784073, 39.242229, 37.528942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813854, 38.928696, 37.775539>,  <36.831722, 38.740574, 37.923496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813854, 38.928696, 37.775539>,  <36.784073, 39.242229, 37.528942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813854, 38.928696, 37.775539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238272, -0.586317, -0.774247,
		0.968341, 0.204536, 0.143114,
		0.074451, -0.783835, 0.616490,
		36.836189, 38.693546, 37.960487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373287, 38.850475, 37.360447>,  <36.784073, 39.242229, 37.528942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373287, 38.850475, 37.360447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197365, 38.550667, 37.558350>,  <37.091812, 38.370781, 37.677094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197365, 38.550667, 37.558350>,  <37.373287, 38.850475, 37.360447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197365, 38.550667, 37.558350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040329, -0.566828, -0.822848,
		0.897186, -0.341943, 0.279523,
		-0.439809, -0.749520, 0.494760,
		37.065422, 38.325809, 37.706776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752594, 38.232681, 37.193863>,  <37.373287, 38.850475, 37.360447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752594, 38.232681, 37.193863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379498, 38.133194, 37.298275>,  <37.155640, 38.073502, 37.360924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379498, 38.133194, 37.298275>,  <37.752594, 38.232681, 37.193863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379498, 38.133194, 37.298275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077188, -0.569449, -0.818395,
		0.352192, -0.783498, 0.511950,
		-0.932739, -0.248715, 0.261032,
		37.099674, 38.058578, 37.376583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830181, 37.584999, 37.041607>,  <37.752594, 38.232681, 37.193863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830181, 37.584999, 37.041607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436760, 37.656277, 37.029861>,  <37.200706, 37.699043, 37.022812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436760, 37.656277, 37.029861>,  <37.830181, 37.584999, 37.041607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436760, 37.656277, 37.029861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079813, -0.574754, -0.814425,
		-0.162002, -0.798690, 0.579525,
		-0.983557, 0.178193, -0.029365,
		37.141693, 37.709736, 37.021053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532551, 37.234707, 36.846008>,  <37.830181, 37.584999, 37.041607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532551, 37.234707, 36.846008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486439, 37.614639, 36.729710>,  <38.458771, 37.842598, 36.659931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486439, 37.614639, 36.729710>,  <38.532551, 37.234707, 36.846008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486439, 37.614639, 36.729710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985308, 0.146469, 0.087831,
		0.126009, -0.276347, -0.952761,
		-0.115278, 0.949831, -0.290743,
		38.451855, 37.899590, 36.642487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110809, 36.744484, 36.918781>,  <38.532551, 37.234707, 36.846008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110809, 36.744484, 36.918781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450081, 36.765484, 37.129620>,  <39.653645, 36.778084, 37.256123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450081, 36.765484, 37.129620>,  <39.110809, 36.744484, 36.918781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450081, 36.765484, 37.129620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505142, 0.379657, 0.775044,
		-0.159426, -0.923637, 0.348538,
		0.848183, 0.052499, 0.527094,
		39.704536, 36.781235, 37.287746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059326, 36.387585, 37.516861>,  <39.110809, 36.744484, 36.918781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059326, 36.387585, 37.516861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318756, 36.681480, 37.596359>,  <39.474415, 36.857819, 37.644058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318756, 36.681480, 37.596359>,  <39.059326, 36.387585, 37.516861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318756, 36.681480, 37.596359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447333, 0.156694, 0.880534,
		0.615824, -0.659999, 0.430304,
		0.648578, 0.734743, 0.198744,
		39.513329, 36.901905, 37.655983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289116, 36.398048, 38.240253>,  <39.059326, 36.387585, 37.516861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289116, 36.398048, 38.240253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406872, 36.767033, 38.140335>,  <39.477524, 36.988422, 38.080383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406872, 36.767033, 38.140335>,  <39.289116, 36.398048, 38.240253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406872, 36.767033, 38.140335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304366, 0.338262, 0.890472,
		0.905924, -0.186114, 0.380347,
		0.294386, 0.922464, -0.249793,
		39.495186, 37.043774, 38.065395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813889, 36.721493, 38.790421>,  <39.289116, 36.398048, 38.240253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813889, 36.721493, 38.790421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631508, 37.017323, 38.592373>,  <39.522079, 37.194820, 38.473545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631508, 37.017323, 38.592373>,  <39.813889, 36.721493, 38.790421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631508, 37.017323, 38.592373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211769, 0.450176, 0.867465,
		0.864443, 0.500373, -0.048640,
		-0.455952, 0.739573, -0.495115,
		39.494720, 37.239193, 38.443840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900944, 37.158653, 39.286514>,  <39.813889, 36.721493, 38.790421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900944, 37.158653, 39.286514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668140, 37.341591, 39.017559>,  <39.528458, 37.451355, 38.856186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668140, 37.341591, 39.017559>,  <39.900944, 37.158653, 39.286514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668140, 37.341591, 39.017559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268711, 0.672243, 0.689843,
		0.767504, 0.582170, -0.268356,
		-0.582006, 0.457347, -0.672385,
		39.493538, 37.478794, 38.815842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906784, 37.950378, 39.429684>,  <39.900944, 37.158653, 39.286514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906784, 37.950378, 39.429684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560596, 37.891811, 39.238052>,  <39.352882, 37.856670, 39.123074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560596, 37.891811, 39.238052>,  <39.906784, 37.950378, 39.429684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560596, 37.891811, 39.238052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499720, 0.319451, 0.805128,
		0.035159, 0.936223, -0.349643,
		-0.865473, -0.146416, -0.479081,
		39.300953, 37.847885, 39.094330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529545, 38.461491, 39.628914>,  <39.906784, 37.950378, 39.429684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529545, 38.461491, 39.628914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263832, 38.201355, 39.481518>,  <39.104404, 38.045273, 39.393082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263832, 38.201355, 39.481518>,  <39.529545, 38.461491, 39.628914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263832, 38.201355, 39.481518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677185, 0.314883, 0.665034,
		-0.316469, 0.691305, -0.649573,
		-0.664280, -0.650344, -0.368490,
		39.064548, 38.006252, 39.370972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938438, 38.779316, 39.625473>,  <39.529545, 38.461491, 39.628914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938438, 38.779316, 39.625473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834343, 38.393116, 39.629280>,  <38.771885, 38.161396, 39.631565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834343, 38.393116, 39.629280>,  <38.938438, 38.779316, 39.625473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834343, 38.393116, 39.629280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708147, 0.197553, 0.677865,
		-0.656357, 0.169671, -0.735125,
		-0.260240, -0.965497, 0.009513,
		38.756271, 38.103466, 39.632133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166355, 38.790154, 39.650578>,  <38.938438, 38.779316, 39.625473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166355, 38.790154, 39.650578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303684, 38.443291, 39.794888>,  <38.386082, 38.235172, 39.881474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303684, 38.443291, 39.794888>,  <38.166355, 38.790154, 39.650578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303684, 38.443291, 39.794888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492674, 0.160761, 0.855236,
		-0.799626, -0.471368, -0.372035,
		0.343322, -0.867161, 0.360780,
		38.406681, 38.183144, 39.903122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639400, 38.454277, 39.870056>,  <38.166355, 38.790154, 39.650578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639400, 38.454277, 39.870056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926262, 38.268288, 40.077705>,  <38.098377, 38.156693, 40.202293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926262, 38.268288, 40.077705>,  <37.639400, 38.454277, 39.870056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926262, 38.268288, 40.077705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473381, 0.221670, 0.852509,
		-0.511469, -0.857124, -0.061138,
		0.717154, -0.464974, 0.519124,
		38.141407, 38.128796, 40.233444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275463, 38.034126, 40.360790>,  <37.639400, 38.454277, 39.870056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275463, 38.034126, 40.360790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645466, 38.071556, 40.508087>,  <37.867466, 38.094013, 40.596466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645466, 38.071556, 40.508087>,  <37.275463, 38.034126, 40.360790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645466, 38.071556, 40.508087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377476, 0.115919, 0.918735,
		0.043281, -0.988841, 0.142547,
		0.925007, 0.093572, 0.368247,
		37.922970, 38.099628, 40.618561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225513, 37.591625, 40.951801>,  <37.275463, 38.034126, 40.360790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225513, 37.591625, 40.951801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538502, 37.833065, 41.012993>,  <37.726295, 37.977928, 41.049709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538502, 37.833065, 41.012993>,  <37.225513, 37.591625, 40.951801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538502, 37.833065, 41.012993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308182, 0.161916, 0.937447,
		0.541076, -0.780670, 0.312714,
		0.782470, 0.603603, 0.152980,
		37.773243, 38.014145, 41.058887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319954, 37.539482, 41.655746>,  <37.225513, 37.591625, 40.951801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319954, 37.539482, 41.655746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545876, 37.853764, 41.554821>,  <37.681431, 38.042332, 41.494267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545876, 37.853764, 41.554821>,  <37.319954, 37.539482, 41.655746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545876, 37.853764, 41.554821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090873, 0.363114, 0.927303,
		0.820204, -0.500818, 0.276489,
		0.564806, 0.785703, -0.252317,
		37.715317, 38.089474, 41.479126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426838, 36.809547, 41.792133>,  <37.319954, 37.539482, 41.655746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426838, 36.809547, 41.792133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168598, 36.540287, 41.936398>,  <37.013657, 36.378731, 42.022957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168598, 36.540287, 41.936398>,  <37.426838, 36.809547, 41.792133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168598, 36.540287, 41.936398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053071, -0.510676, -0.858133,
		0.761834, -0.534865, 0.365415,
		-0.645595, -0.673148, 0.360665,
		36.974918, 36.338341, 42.044598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586918, 36.137188, 41.472565>,  <37.426838, 36.809547, 41.792133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586918, 36.137188, 41.472565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198433, 36.090347, 41.555550>,  <36.965343, 36.062241, 41.605339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198433, 36.090347, 41.555550>,  <37.586918, 36.137188, 41.472565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198433, 36.090347, 41.555550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160818, -0.320207, -0.933598,
		0.175759, -0.940082, 0.292156,
		-0.971208, -0.117105, 0.207462,
		36.907070, 36.055218, 41.617786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380009, 35.411568, 41.249226>,  <37.586918, 36.137188, 41.472565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380009, 35.411568, 41.249226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032650, 35.608749, 41.270706>,  <36.824234, 35.727058, 41.283596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032650, 35.608749, 41.270706>,  <37.380009, 35.411568, 41.249226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032650, 35.608749, 41.270706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247371, -0.336806, -0.908498,
		-0.429759, -0.802222, 0.414423,
		-0.868398, 0.492952, 0.053701,
		36.772129, 35.756634, 41.286816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850430, 34.987778, 41.011929>,  <37.380009, 35.411568, 41.249226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850430, 34.987778, 41.011929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678562, 35.345261, 40.960278>,  <36.575443, 35.559750, 40.929287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678562, 35.345261, 40.960278>,  <36.850430, 34.987778, 41.011929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678562, 35.345261, 40.960278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337278, -0.291492, -0.895140,
		-0.837633, -0.341060, 0.426672,
		-0.429669, 0.893706, -0.129131,
		36.549660, 35.613373, 40.921539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218666, 34.759708, 40.673367>,  <36.850430, 34.987778, 41.011929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218666, 34.759708, 40.673367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242126, 35.156715, 40.630535>,  <36.256203, 35.394920, 40.604836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242126, 35.156715, 40.630535>,  <36.218666, 34.759708, 40.673367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242126, 35.156715, 40.630535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459868, -0.068345, -0.885353,
		-0.886048, 0.101173, 0.452419,
		0.058653, 0.992519, -0.107083,
		36.259724, 35.454472, 40.598412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480408, 35.080009, 40.639122>,  <36.218666, 34.759708, 40.673367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480408, 35.080009, 40.639122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768543, 35.294086, 40.462631>,  <35.941425, 35.422535, 40.356735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768543, 35.294086, 40.462631>,  <35.480408, 35.080009, 40.639122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768543, 35.294086, 40.462631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473560, -0.085326, -0.876618,
		-0.506812, 0.840407, 0.191984,
		0.720335, 0.535197, -0.441228,
		35.984642, 35.454647, 40.330261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147915, 35.446415, 40.302525>,  <35.480408, 35.080009, 40.639122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147915, 35.446415, 40.302525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507065, 35.458447, 40.126839>,  <35.722557, 35.465668, 40.021427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507065, 35.458447, 40.126839>,  <35.147915, 35.446415, 40.302525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507065, 35.458447, 40.126839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440150, 0.040830, -0.896995,
		-0.009050, 0.998713, 0.049901,
		0.897879, 0.030082, -0.439215,
		35.776428, 35.467472, 39.995075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031738, 35.854519, 39.779346>,  <35.147915, 35.446415, 40.302525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031738, 35.854519, 39.779346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373608, 35.672897, 39.678654>,  <35.578728, 35.563923, 39.618240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373608, 35.672897, 39.678654>,  <35.031738, 35.854519, 39.779346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373608, 35.672897, 39.678654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283770, -0.002532, -0.958889,
		0.434751, 0.890970, -0.131012,
		0.854673, -0.454055, -0.251730,
		35.630009, 35.536682, 39.603134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326229, 36.286919, 39.287277>,  <35.031738, 35.854519, 39.779346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326229, 36.286919, 39.287277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465878, 35.912853, 39.263348>,  <35.549667, 35.688412, 39.248989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465878, 35.912853, 39.263348>,  <35.326229, 36.286919, 39.287277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465878, 35.912853, 39.263348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211830, -0.016567, -0.977166,
		0.912821, 0.353822, -0.203880,
		0.349120, -0.935166, -0.059827,
		35.570614, 35.632305, 39.245399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864090, 36.450283, 38.731300>,  <35.326229, 36.286919, 39.287277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864090, 36.450283, 38.731300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760525, 36.067253, 38.781925>,  <35.698387, 35.837437, 38.812302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760525, 36.067253, 38.781925>,  <35.864090, 36.450283, 38.731300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760525, 36.067253, 38.781925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356028, -0.027198, -0.934079,
		0.897892, -0.286903, -0.333881,
		-0.258909, -0.957574, 0.126567,
		35.682854, 35.779980, 38.819897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074612, 36.099258, 38.132874>,  <35.864090, 36.450283, 38.731300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074612, 36.099258, 38.132874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815418, 35.846653, 38.303196>,  <35.659904, 35.695087, 38.405388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815418, 35.846653, 38.303196>,  <36.074612, 36.099258, 38.132874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815418, 35.846653, 38.303196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496320, -0.073964, -0.864983,
		0.577746, -0.771826, -0.265508,
		-0.647979, -0.631517, 0.425805,
		35.621025, 35.657200, 38.430939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109516, 35.439255, 37.828285>,  <36.074612, 36.099258, 38.132874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109516, 35.439255, 37.828285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737698, 35.514305, 37.955242>,  <35.514606, 35.559334, 38.031414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737698, 35.514305, 37.955242>,  <36.109516, 35.439255, 37.828285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737698, 35.514305, 37.955242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347575, -0.158733, -0.924119,
		-0.122997, -0.969332, 0.212760,
		-0.929550, 0.187614, 0.317391,
		35.458832, 35.570591, 38.050457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.124969, 36.555649, 45.421040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733727, 36.579647, 45.500748>,  <37.498981, 36.594048, 45.548573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733727, 36.579647, 45.500748>,  <38.124969, 36.555649, 45.421040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733727, 36.579647, 45.500748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208084, -0.295139, -0.932520,
		0.002866, -0.953569, 0.301161,
		-0.978107, 0.059994, 0.199268,
		37.440296, 36.597645, 45.560528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841370, 35.941692, 45.031723>,  <38.124969, 36.555649, 45.421040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841370, 35.941692, 45.031723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545200, 36.201015, 45.102676>,  <37.367496, 36.356609, 45.145248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545200, 36.201015, 45.102676>,  <37.841370, 35.941692, 45.031723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545200, 36.201015, 45.102676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307139, -0.091613, -0.947245,
		-0.597857, -0.755845, 0.266954,
		-0.740427, 0.648309, 0.177379,
		37.323071, 36.395508, 45.155891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263466, 35.565929, 44.922070>,  <37.841370, 35.941692, 45.031723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263466, 35.565929, 44.922070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197849, 35.956619, 44.866783>,  <37.158482, 36.191032, 44.833611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197849, 35.956619, 44.866783>,  <37.263466, 35.565929, 44.922070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197849, 35.956619, 44.866783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653145, -0.212541, -0.726793,
		-0.739251, -0.028949, 0.672807,
		-0.164039, 0.976723, -0.138213,
		37.148636, 36.249638, 44.825317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680443, 35.545849, 44.594788>,  <37.263466, 35.565929, 44.922070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680443, 35.545849, 44.594788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806789, 35.923256, 44.554779>,  <36.882595, 36.149700, 44.530773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806789, 35.923256, 44.554779>,  <36.680443, 35.545849, 44.594788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806789, 35.923256, 44.554779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521000, 0.084376, -0.849376,
		-0.792962, 0.320398, 0.518224,
		0.315864, 0.943518, -0.100020,
		36.901550, 36.206310, 44.524773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072552, 36.029884, 44.283241>,  <36.680443, 35.545849, 44.594788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072552, 36.029884, 44.283241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.403778, 36.229500, 44.181053>,  <36.602516, 36.349270, 44.119740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.403778, 36.229500, 44.181053>,  <36.072552, 36.029884, 44.283241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403778, 36.229500, 44.181053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374918, 0.154134, -0.914155,
		-0.416818, 0.852764, 0.314731,
		0.828069, 0.499035, -0.255471,
		36.652199, 36.379211, 44.104412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855263, 36.579277, 43.861542>,  <36.072552, 36.029884, 44.283241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855263, 36.579277, 43.861542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.246254, 36.542030, 43.785786>,  <36.480846, 36.519680, 43.740330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.246254, 36.542030, 43.785786>,  <35.855263, 36.579277, 43.861542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246254, 36.542030, 43.785786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186367, 0.040275, -0.981654,
		0.099040, 0.994840, 0.022013,
		0.977476, -0.093120, -0.189394,
		36.539497, 36.514095, 43.728966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031269, 37.075737, 43.329891>,  <35.855263, 36.579277, 43.861542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031269, 37.075737, 43.329891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.302795, 36.782387, 43.344688>,  <36.465710, 36.606377, 43.353569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.302795, 36.782387, 43.344688>,  <36.031269, 37.075737, 43.329891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302795, 36.782387, 43.344688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035753, -0.017315, -0.999211,
		0.733442, 0.679598, 0.014467,
		0.678811, -0.733380, 0.036997,
		36.506439, 36.562374, 43.355789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477055, 37.238247, 42.825310>,  <36.031269, 37.075737, 43.329891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477055, 37.238247, 42.825310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.566128, 36.851765, 42.877235>,  <36.619572, 36.619873, 42.908390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.566128, 36.851765, 42.877235>,  <36.477055, 37.238247, 42.825310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566128, 36.851765, 42.877235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330427, -0.050468, -0.942481,
		0.917186, 0.252769, 0.308023,
		0.222685, -0.966209, 0.129810,
		36.632935, 36.561901, 42.916180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945549, 37.199902, 42.382046>,  <36.477055, 37.238247, 42.825310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945549, 37.199902, 42.382046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.893391, 36.808792, 42.447712>,  <36.862095, 36.574127, 42.487114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.893391, 36.808792, 42.447712>,  <36.945549, 37.199902, 42.382046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893391, 36.808792, 42.447712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189141, -0.187073, -0.963965,
		0.973254, -0.094646, 0.209331,
		-0.130395, -0.977776, 0.164168,
		36.854271, 36.515461, 42.496964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709316, 37.569736, 42.313881>,  <36.945549, 37.199902, 42.382046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709316, 37.569736, 42.313881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717148, 37.920849, 42.122417>,  <37.721848, 38.131516, 42.007538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717148, 37.920849, 42.122417>,  <37.709316, 37.569736, 42.313881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717148, 37.920849, 42.122417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052068, 0.478998, 0.876270,
		0.998452, 0.007766, 0.055082,
		0.019579, 0.877782, -0.478661,
		37.723022, 38.184185, 41.978821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169613, 37.911129, 42.661743>,  <37.709316, 37.569736, 42.313881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169613, 37.911129, 42.661743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939964, 38.187958, 42.486736>,  <37.802174, 38.354057, 42.381733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939964, 38.187958, 42.486736>,  <38.169613, 37.911129, 42.661743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939964, 38.187958, 42.486736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031558, 0.552661, 0.832808,
		0.818162, 0.464326, -0.339135,
		-0.574122, 0.692074, -0.437513,
		37.767727, 38.395580, 42.355484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548153, 38.618134, 42.789284>,  <38.169613, 37.911129, 42.661743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548153, 38.618134, 42.789284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170025, 38.718784, 42.706284>,  <37.943150, 38.779175, 42.656483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170025, 38.718784, 42.706284>,  <38.548153, 38.618134, 42.789284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170025, 38.718784, 42.706284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089569, 0.411467, 0.907013,
		0.313609, 0.876002, -0.366430,
		-0.945318, 0.251627, -0.207503,
		37.886429, 38.794273, 42.644032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432384, 39.241680, 43.059361>,  <38.548153, 38.618134, 42.789284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432384, 39.241680, 43.059361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.055756, 39.108307, 43.040325>,  <37.829777, 39.028282, 43.028904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.055756, 39.108307, 43.040325>,  <38.432384, 39.241680, 43.059361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055756, 39.108307, 43.040325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207016, 0.461454, 0.862673,
		-0.265686, 0.822120, -0.503518,
		-0.941571, -0.333436, -0.047590,
		37.773285, 39.008278, 43.026047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121288, 39.750431, 43.336792>,  <38.432384, 39.241680, 43.059361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121288, 39.750431, 43.336792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834869, 39.471359, 43.345917>,  <37.663017, 39.303917, 43.351391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834869, 39.471359, 43.345917>,  <38.121288, 39.750431, 43.336792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834869, 39.471359, 43.345917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382286, 0.419270, 0.823451,
		-0.584069, 0.580909, -0.566930,
		-0.716046, -0.697681, 0.022809,
		37.620056, 39.262054, 43.352760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508816, 40.119884, 43.510807>,  <38.121288, 39.750431, 43.336792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508816, 40.119884, 43.510807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395538, 39.741917, 43.576443>,  <37.327572, 39.515137, 43.615826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395538, 39.741917, 43.576443>,  <37.508816, 40.119884, 43.510807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395538, 39.741917, 43.576443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424139, 0.276848, 0.862242,
		-0.860180, 0.174580, -0.479179,
		-0.283190, -0.944921, 0.164093,
		37.310581, 39.458439, 43.625671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697060, 40.126316, 43.643517>,  <37.508816, 40.119884, 43.510807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697060, 40.126316, 43.643517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.829609, 39.781246, 43.796345>,  <36.909138, 39.574203, 43.888042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.829609, 39.781246, 43.796345>,  <36.697060, 40.126316, 43.643517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829609, 39.781246, 43.796345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417189, 0.229246, 0.879432,
		-0.846255, -0.450815, -0.283934,
		0.331370, -0.862678, 0.382075,
		36.929020, 39.522442, 43.910969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196651, 39.558495, 44.020027>,  <36.697060, 40.126316, 43.643517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196651, 39.558495, 44.020027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.557911, 39.516460, 44.186535>,  <36.774666, 39.491241, 44.286438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.557911, 39.516460, 44.186535>,  <36.196651, 39.558495, 44.020027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557911, 39.516460, 44.186535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403934, 0.120534, 0.906812,
		-0.145468, -0.987131, 0.066413,
		0.903148, -0.105086, 0.416270,
		36.828854, 39.484936, 44.311417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075371, 39.269707, 44.726189>,  <36.196651, 39.558495, 44.020027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075371, 39.269707, 44.726189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459190, 39.380028, 44.748833>,  <36.689480, 39.446220, 44.762421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459190, 39.380028, 44.748833>,  <36.075371, 39.269707, 44.726189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459190, 39.380028, 44.748833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095378, 0.129236, 0.987016,
		0.264911, -0.952486, 0.150313,
		0.959545, 0.275808, 0.056610,
		36.747055, 39.462769, 44.765816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380733, 38.974506, 45.208527>,  <36.075371, 39.269707, 44.726189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380733, 38.974506, 45.208527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633919, 39.282944, 45.180916>,  <36.785831, 39.468006, 45.164349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633919, 39.282944, 45.180916>,  <36.380733, 38.974506, 45.208527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633919, 39.282944, 45.180916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118131, 0.184316, 0.975742,
		0.765114, -0.609457, 0.207755,
		0.632966, 0.771096, -0.069027,
		36.823807, 39.514271, 45.160210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824158, 38.909424, 45.808704>,  <36.380733, 38.974506, 45.208527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824158, 38.909424, 45.808704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888985, 39.284309, 45.685184>,  <36.927883, 39.509243, 45.611073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888985, 39.284309, 45.685184>,  <36.824158, 38.909424, 45.808704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888985, 39.284309, 45.685184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025750, 0.308815, 0.950773,
		0.986443, -0.162044, 0.025917,
		0.162071, 0.937216, -0.308801,
		36.937607, 39.565475, 45.592545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420147, 39.113129, 46.293465>,  <36.824158, 38.909424, 45.808704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420147, 39.113129, 46.293465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280155, 39.449047, 46.127449>,  <37.196159, 39.650597, 46.027840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280155, 39.449047, 46.127449>,  <37.420147, 39.113129, 46.293465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280155, 39.449047, 46.127449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117739, 0.478978, 0.869895,
		0.929327, 0.255584, -0.266511,
		-0.349984, 0.839796, -0.415035,
		37.175159, 39.700985, 46.002937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996494, 39.685852, 46.225796>,  <37.420147, 39.113129, 46.293465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996494, 39.685852, 46.225796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.638111, 39.863052, 46.213028>,  <37.423080, 39.969372, 46.205368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.638111, 39.863052, 46.213028>,  <37.996494, 39.685852, 46.225796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638111, 39.863052, 46.213028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241895, 0.546977, 0.801438,
		0.372493, 0.710331, -0.597226,
		-0.895955, 0.442996, -0.031919,
		37.369324, 39.995953, 46.203453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210957, 40.325039, 46.323334>,  <37.996494, 39.685852, 46.225796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210957, 40.325039, 46.323334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829185, 40.300591, 46.440182>,  <37.600124, 40.285923, 46.510288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829185, 40.300591, 46.440182>,  <38.210957, 40.325039, 46.323334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829185, 40.300591, 46.440182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208448, 0.563960, 0.799061,
		-0.213582, 0.823537, -0.525519,
		-0.954428, -0.061122, 0.292116,
		37.542858, 40.282253, 46.527817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.380524, 39.444458, 47.640800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.778999, 39.409679, 47.643700>,  <32.018085, 39.388813, 47.645439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.778999, 39.409679, 47.643700>,  <31.380524, 39.444458, 47.640800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778999, 39.409679, 47.643700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011876, 0.052794, -0.998535,
		0.086433, 0.994814, 0.053625,
		0.996187, -0.086943, 0.007251,
		32.077854, 39.383598, 47.645874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763210, 40.102787, 47.416706>,  <31.380524, 39.444458, 47.640800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763210, 40.102787, 47.416706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004211, 39.795238, 47.331074>,  <32.148811, 39.610710, 47.279694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004211, 39.795238, 47.331074>,  <31.763210, 40.102787, 47.416706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004211, 39.795238, 47.331074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034720, 0.242723, -0.969474,
		0.797361, 0.591543, 0.119546,
		0.602502, -0.768871, -0.214076,
		32.184963, 39.564579, 47.266850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165234, 40.326321, 46.784863>,  <31.763210, 40.102787, 47.416706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165234, 40.326321, 46.784863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182899, 39.926727, 46.781219>,  <32.193501, 39.686970, 46.779034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182899, 39.926727, 46.781219>,  <32.165234, 40.326321, 46.784863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182899, 39.926727, 46.781219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195201, 0.000313, -0.980763,
		0.979768, 0.045094, -0.194988,
		0.044166, -0.998983, -0.009109,
		32.196148, 39.627033, 46.778488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831577, 40.231873, 46.351780>,  <32.165234, 40.326321, 46.784863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831577, 40.231873, 46.351780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.655209, 39.873013, 46.362484>,  <32.549389, 39.657696, 46.368904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.655209, 39.873013, 46.362484>,  <32.831577, 40.231873, 46.351780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655209, 39.873013, 46.362484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043405, -0.008461, -0.999022,
		0.896496, -0.441650, -0.035210,
		-0.440920, -0.897147, 0.026756,
		32.522934, 39.603867, 46.370510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131683, 39.829403, 45.777004>,  <32.831577, 40.231873, 46.351780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131683, 39.829403, 45.777004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825100, 39.583900, 45.852745>,  <32.641151, 39.436600, 45.898190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825100, 39.583900, 45.852745>,  <33.131683, 39.829403, 45.777004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825100, 39.583900, 45.852745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067595, -0.216084, -0.974032,
		0.638729, -0.759353, 0.124132,
		-0.766457, -0.613752, 0.189348,
		32.595161, 39.399776, 45.909550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278961, 39.267525, 45.374249>,  <33.131683, 39.829403, 45.777004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278961, 39.267525, 45.374249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886593, 39.272339, 45.451859>,  <32.651173, 39.275227, 45.498425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886593, 39.272339, 45.451859>,  <33.278961, 39.267525, 45.374249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886593, 39.272339, 45.451859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188453, -0.303849, -0.933896,
		0.047713, -0.952644, 0.300321,
		-0.980923, 0.012037, 0.194026,
		32.592316, 39.275951, 45.510067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028877, 38.651737, 45.318916>,  <33.278961, 39.267525, 45.374249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028877, 38.651737, 45.318916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730129, 38.903019, 45.231693>,  <32.550880, 39.053787, 45.179359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730129, 38.903019, 45.231693>,  <33.028877, 38.651737, 45.318916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730129, 38.903019, 45.231693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061224, -0.391486, -0.918145,
		-0.662148, -0.672382, 0.330850,
		-0.746867, 0.628204, -0.218056,
		32.506069, 39.091480, 45.166275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750568, 38.323750, 44.807419>,  <33.028877, 38.651737, 45.318916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750568, 38.323750, 44.807419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.576485, 38.679165, 44.749325>,  <32.472034, 38.892414, 44.714470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.576485, 38.679165, 44.749325>,  <32.750568, 38.323750, 44.807419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576485, 38.679165, 44.749325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170034, -0.239527, -0.955885,
		-0.884129, -0.391312, 0.255326,
		-0.435206, 0.888539, -0.145236,
		32.445923, 38.945728, 44.705753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395130, 38.237896, 44.219128>,  <32.750568, 38.323750, 44.807419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395130, 38.237896, 44.219128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.331875, 38.631512, 44.251774>,  <32.293922, 38.867680, 44.271362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.331875, 38.631512, 44.251774>,  <32.395130, 38.237896, 44.219128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331875, 38.631512, 44.251774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252718, 0.039569, -0.966731,
		-0.954530, -0.173500, 0.242427,
		-0.158135, 0.984039, 0.081617,
		32.284435, 38.926723, 44.276260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778246, 38.375233, 43.894367>,  <32.395130, 38.237896, 44.219128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778246, 38.375233, 43.894367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.986403, 38.716595, 43.906353>,  <32.111298, 38.921410, 43.913544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.986403, 38.716595, 43.906353>,  <31.778246, 38.375233, 43.894367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986403, 38.716595, 43.906353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022448, 0.048750, -0.998559,
		-0.853631, 0.518971, 0.044527,
		0.520394, 0.853400, 0.029965,
		32.142521, 38.972614, 43.915344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443121, 39.000164, 43.438637>,  <31.778246, 38.375233, 43.894367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443121, 39.000164, 43.438637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.835173, 39.075985, 43.462013>,  <32.070404, 39.121479, 43.476040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.835173, 39.075985, 43.462013>,  <31.443121, 39.000164, 43.438637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835173, 39.075985, 43.462013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074361, -0.078006, -0.994176,
		-0.183892, 0.978766, -0.090552,
		0.980130, 0.189555, 0.058438,
		32.129211, 39.132851, 43.479546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460123, 39.390381, 42.931313>,  <31.443121, 39.000164, 43.438637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460123, 39.390381, 42.931313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844456, 39.297646, 42.992046>,  <32.075054, 39.242004, 43.028488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844456, 39.297646, 42.992046>,  <31.460123, 39.390381, 42.931313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844456, 39.297646, 42.992046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093807, -0.243452, -0.965366,
		0.260776, 0.941796, -0.212168,
		0.960831, -0.231842, 0.151833,
		32.132706, 39.228092, 43.037598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791048, 39.857773, 42.542366>,  <31.460123, 39.390381, 42.931313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791048, 39.857773, 42.542366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021446, 39.533775, 42.586452>,  <32.159683, 39.339378, 42.612904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021446, 39.533775, 42.586452>,  <31.791048, 39.857773, 42.542366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021446, 39.533775, 42.586452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080005, -0.190038, -0.978512,
		0.813530, 0.554799, -0.174264,
		0.575994, -0.809990, 0.110214,
		32.194244, 39.290779, 42.619518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353420, 39.815552, 41.986301>,  <31.791048, 39.857773, 42.542366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353420, 39.815552, 41.986301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339252, 39.439308, 42.121361>,  <32.330753, 39.213562, 42.202396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339252, 39.439308, 42.121361>,  <32.353420, 39.815552, 41.986301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339252, 39.439308, 42.121361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132556, -0.339299, -0.931292,
		0.990543, 0.011776, 0.136699,
		-0.035415, -0.940605, 0.337651,
		32.328629, 39.157127, 42.222656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067207, 39.904510, 42.276340>,  <32.353420, 39.815552, 41.986301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067207, 39.904510, 42.276340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291004, 40.149757, 42.053249>,  <33.425282, 40.296906, 41.919395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291004, 40.149757, 42.053249>,  <33.067207, 39.904510, 42.276340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291004, 40.149757, 42.053249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171186, 0.572911, 0.801542,
		0.810965, -0.543931, 0.215582,
		0.559492, 0.613118, -0.557724,
		33.458851, 40.333691, 41.885933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687401, 40.035751, 42.675240>,  <33.067207, 39.904510, 42.276340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687401, 40.035751, 42.675240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668297, 40.338737, 42.414787>,  <33.656834, 40.520531, 42.258518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668297, 40.338737, 42.414787>,  <33.687401, 40.035751, 42.675240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668297, 40.338737, 42.414787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168148, 0.648664, 0.742268,
		0.984604, -0.074038, -0.158343,
		-0.047755, 0.757466, -0.651126,
		33.653969, 40.565979, 42.219448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327545, 40.499546, 42.803341>,  <33.687401, 40.035751, 42.675240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327545, 40.499546, 42.803341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017792, 40.690689, 42.637455>,  <33.831940, 40.805374, 42.537926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.017792, 40.690689, 42.637455>,  <34.327545, 40.499546, 42.803341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017792, 40.690689, 42.637455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057299, 0.705712, 0.706177,
		0.630122, 0.523086, -0.573870,
		-0.774379, 0.477860, -0.414712,
		33.785477, 40.834045, 42.513042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404610, 41.163120, 42.973240>,  <34.327545, 40.499546, 42.803341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404610, 41.163120, 42.973240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030270, 41.220306, 42.844398>,  <33.805668, 41.254616, 42.767094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030270, 41.220306, 42.844398>,  <34.404610, 41.163120, 42.973240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030270, 41.220306, 42.844398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105896, 0.757696, 0.643959,
		0.336121, 0.636757, -0.693948,
		-0.935846, 0.142962, -0.322108,
		33.749516, 41.263195, 42.747765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279743, 41.858059, 42.777962>,  <34.404610, 41.163120, 42.973240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279743, 41.858059, 42.777962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927761, 41.710876, 42.898155>,  <33.716572, 41.622566, 42.970272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927761, 41.710876, 42.898155>,  <34.279743, 41.858059, 42.777962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927761, 41.710876, 42.898155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012862, 0.613825, 0.789337,
		-0.474884, 0.698445, -0.535406,
		-0.879954, -0.367958, 0.300479,
		33.663776, 41.600491, 42.988300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014690, 42.462822, 43.231113>,  <34.279743, 41.858059, 42.777962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014690, 42.462822, 43.231113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768150, 42.160309, 43.318890>,  <33.620228, 41.978802, 43.371555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768150, 42.160309, 43.318890>,  <34.014690, 42.462822, 43.231113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768150, 42.160309, 43.318890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162404, 0.394753, 0.904320,
		-0.770543, 0.521740, -0.366129,
		-0.616350, -0.756279, 0.219441,
		33.583244, 41.933426, 43.384724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424347, 42.779118, 43.333134>,  <34.014690, 42.462822, 43.231113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424347, 42.779118, 43.333134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.427582, 42.426140, 43.521271>,  <33.429523, 42.214352, 43.634151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.427582, 42.426140, 43.521271>,  <33.424347, 42.779118, 43.333134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427582, 42.426140, 43.521271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181204, 0.461276, 0.868556,
		-0.983412, -0.092249, -0.156175,
		0.008084, -0.882448, 0.470341,
		33.430008, 42.161404, 43.662373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880627, 42.842808, 43.855972>,  <33.424347, 42.779118, 43.333134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880627, 42.842808, 43.855972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110573, 42.527149, 43.942493>,  <33.248539, 42.337753, 43.994408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110573, 42.527149, 43.942493>,  <32.880627, 42.842808, 43.855972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110573, 42.527149, 43.942493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096139, 0.327655, 0.939893,
		-0.812584, -0.519512, 0.264224,
		0.574861, -0.789145, 0.216302,
		33.283031, 42.290405, 44.007385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646225, 42.653870, 44.532520>,  <32.880627, 42.842808, 43.855972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646225, 42.653870, 44.532520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007450, 42.488377, 44.486382>,  <33.224186, 42.389080, 44.458698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007450, 42.488377, 44.486382>,  <32.646225, 42.653870, 44.532520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007450, 42.488377, 44.486382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142201, 0.034595, 0.989233,
		-0.405290, -0.909740, 0.090075,
		0.903061, -0.413735, -0.115345,
		33.278370, 42.364258, 44.451778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614136, 42.189442, 45.045017>,  <32.646225, 42.653870, 44.532520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614136, 42.189442, 45.045017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.000546, 42.268547, 44.978451>,  <33.232391, 42.316010, 44.938511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.000546, 42.268547, 44.978451>,  <32.614136, 42.189442, 45.045017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000546, 42.268547, 44.978451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190150, -0.107688, 0.975831,
		0.175065, -0.974316, -0.141634,
		0.966020, 0.197766, -0.166414,
		33.290352, 42.327877, 44.928528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948910, 41.612957, 45.267666>,  <32.614136, 42.189442, 45.045017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948910, 41.612957, 45.267666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202656, 41.921982, 45.278450>,  <33.354904, 42.107395, 45.284920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202656, 41.921982, 45.278450>,  <32.948910, 41.612957, 45.267666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202656, 41.921982, 45.278450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227302, -0.219748, 0.948707,
		0.738860, -0.595699, -0.315005,
		0.634366, 0.772563, 0.026959,
		33.392967, 42.153751, 45.286537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557713, 41.322514, 45.593407>,  <32.948910, 41.612957, 45.267666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557713, 41.322514, 45.593407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601219, 41.718735, 45.626827>,  <33.627323, 41.956467, 45.646881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601219, 41.718735, 45.626827>,  <33.557713, 41.322514, 45.593407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601219, 41.718735, 45.626827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295797, -0.112496, 0.948604,
		0.949038, -0.078466, -0.305238,
		0.108771, 0.990549, 0.083553,
		33.633850, 42.015900, 45.651894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132347, 41.397182, 46.076733>,  <33.557713, 41.322514, 45.593407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132347, 41.397182, 46.076733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990547, 41.768715, 46.033642>,  <33.905468, 41.991634, 46.007786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990547, 41.768715, 46.033642>,  <34.132347, 41.397182, 46.076733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990547, 41.768715, 46.033642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255049, 0.206889, 0.944535,
		0.899601, 0.307358, -0.310239,
		-0.354496, 0.928832, -0.107726,
		33.884197, 42.047363, 46.001324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621601, 41.864483, 46.389652>,  <34.132347, 41.397182, 46.076733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621601, 41.864483, 46.389652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254044, 42.022282, 46.390232>,  <34.033508, 42.116962, 46.390579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254044, 42.022282, 46.390232>,  <34.621601, 41.864483, 46.389652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254044, 42.022282, 46.390232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135196, 0.311447, 0.940597,
		0.370613, 0.864506, -0.339522,
		-0.918895, 0.394499, 0.001452,
		33.978374, 42.140633, 46.390667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253315, 42.151485, 46.179947>,  <34.621601, 41.864483, 46.389652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253315, 42.151485, 46.179947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.582405, 42.341122, 46.305393>,  <35.779861, 42.454903, 46.380661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.582405, 42.341122, 46.305393>,  <35.253315, 42.151485, 46.179947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582405, 42.341122, 46.305393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304236, 0.098783, -0.947461,
		-0.480163, 0.874916, -0.062964,
		0.822729, 0.474092, 0.313613,
		35.829224, 42.483349, 46.399479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234478, 42.814838, 45.761604>,  <35.253315, 42.151485, 46.179947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234478, 42.814838, 45.761604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599812, 42.726212, 45.898266>,  <35.819012, 42.673035, 45.980263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599812, 42.726212, 45.898266>,  <35.234478, 42.814838, 45.761604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599812, 42.726212, 45.898266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361071, 0.052736, -0.931046,
		0.188276, 0.973717, 0.128169,
		0.913334, -0.221572, 0.341652,
		35.873814, 42.659740, 46.000763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699524, 43.357975, 45.627159>,  <35.234478, 42.814838, 45.761604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699524, 43.357975, 45.627159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925369, 43.028538, 45.648708>,  <36.060879, 42.830875, 45.661640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925369, 43.028538, 45.648708>,  <35.699524, 43.357975, 45.627159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925369, 43.028538, 45.648708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133289, 0.026568, -0.990721,
		0.814519, 0.566559, 0.124777,
		0.564617, -0.823593, 0.053876,
		36.094753, 42.781460, 45.664871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055607, 43.463947, 45.064411>,  <35.699524, 43.357975, 45.627159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055607, 43.463947, 45.064411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193596, 43.096874, 45.143261>,  <36.276390, 42.876629, 45.190571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193596, 43.096874, 45.143261>,  <36.055607, 43.463947, 45.064411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193596, 43.096874, 45.143261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214326, -0.127449, -0.968412,
		0.913817, 0.376320, 0.152718,
		0.344969, -0.917682, 0.197120,
		36.297085, 42.821571, 45.202396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655972, 43.476871, 44.746582>,  <36.055607, 43.463947, 45.064411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655972, 43.476871, 44.746582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552433, 43.091820, 44.778431>,  <36.490311, 42.860790, 44.797539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552433, 43.091820, 44.778431>,  <36.655972, 43.476871, 44.746582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552433, 43.091820, 44.778431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354655, -0.171391, -0.919155,
		0.898452, -0.209685, 0.385766,
		-0.258850, -0.962630, 0.079621,
		36.474777, 42.803032, 44.802319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283108, 43.069748, 44.530697>,  <36.655972, 43.476871, 44.746582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283108, 43.069748, 44.530697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.957752, 42.841404, 44.485947>,  <36.762539, 42.704399, 44.459099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.957752, 42.841404, 44.485947>,  <37.283108, 43.069748, 44.530697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957752, 42.841404, 44.485947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210064, -0.108902, -0.971603,
		0.542467, -0.813793, 0.208497,
		-0.813390, -0.570860, -0.111873,
		36.713734, 42.670147, 44.452385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577335, 42.701118, 44.066051>,  <37.283108, 43.069748, 44.530697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577335, 42.701118, 44.066051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.191372, 42.596203, 44.061104>,  <36.959793, 42.533253, 44.058136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.191372, 42.596203, 44.061104>,  <37.577335, 42.701118, 44.066051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191372, 42.596203, 44.061104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067485, -0.202182, -0.977020,
		0.253765, -0.943570, 0.212788,
		-0.964909, -0.262293, -0.012371,
		36.901897, 42.517513, 44.057392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603268, 42.055416, 43.755219>,  <37.577335, 42.701118, 44.066051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603268, 42.055416, 43.755219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218529, 42.154411, 43.708557>,  <36.987686, 42.213810, 43.680561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218529, 42.154411, 43.708557>,  <37.603268, 42.055416, 43.755219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218529, 42.154411, 43.708557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055188, -0.242119, -0.968676,
		-0.267991, -0.938149, 0.219221,
		-0.961840, 0.247498, -0.116660,
		36.929977, 42.228657, 43.673561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293335, 41.478848, 43.488400>,  <37.603268, 42.055416, 43.755219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293335, 41.478848, 43.488400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.066948, 41.798588, 43.407684>,  <36.931114, 41.990433, 43.359257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.066948, 41.798588, 43.407684>,  <37.293335, 41.478848, 43.488400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066948, 41.798588, 43.407684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116525, -0.319860, -0.940272,
		-0.816152, -0.508650, 0.274174,
		-0.565967, 0.799353, -0.201784,
		36.897160, 42.038395, 43.347149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597202, 41.342232, 43.331146>,  <37.293335, 41.478848, 43.488400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597202, 41.342232, 43.331146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650375, 41.688923, 43.138851>,  <36.682278, 41.896938, 43.023476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650375, 41.688923, 43.138851>,  <36.597202, 41.342232, 43.331146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650375, 41.688923, 43.138851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241081, -0.442198, -0.863910,
		-0.961358, 0.230737, 0.150170,
		0.132931, 0.866730, -0.480737,
		36.690254, 41.948940, 42.994629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013786, 41.331467, 42.933388>,  <36.597202, 41.342232, 43.331146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013786, 41.331467, 42.933388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264259, 41.603668, 42.781178>,  <36.414543, 41.766991, 42.689850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264259, 41.603668, 42.781178>,  <36.013786, 41.331467, 42.933388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264259, 41.603668, 42.781178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147001, -0.376258, -0.914779,
		-0.765690, 0.628760, -0.135573,
		0.626186, 0.680508, -0.380525,
		36.452114, 41.807819, 42.667019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770466, 41.387775, 42.196373>,  <36.013786, 41.331467, 42.933388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770466, 41.387775, 42.196373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.137623, 41.544693, 42.172413>,  <36.357918, 41.638844, 42.158039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.137623, 41.544693, 42.172413>,  <35.770466, 41.387775, 42.196373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137623, 41.544693, 42.172413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111365, -0.399504, -0.909942,
		-0.380893, 0.828555, -0.410388,
		0.917888, 0.392293, -0.059896,
		36.412991, 41.662380, 42.154446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846863, 41.811768, 41.522968>,  <35.770466, 41.387775, 42.196373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846863, 41.811768, 41.522968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.198669, 41.669964, 41.649956>,  <36.409752, 41.584881, 41.726147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.198669, 41.669964, 41.649956>,  <35.846863, 41.811768, 41.522968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198669, 41.669964, 41.649956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159122, -0.409639, -0.898263,
		0.448485, 0.840549, -0.303873,
		0.879512, -0.354505, 0.317467,
		36.462524, 41.563614, 41.745197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309101, 41.991184, 41.019600>,  <35.846863, 41.811768, 41.522968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309101, 41.991184, 41.019600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524784, 41.713158, 41.209820>,  <36.654194, 41.546341, 41.323952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524784, 41.713158, 41.209820>,  <36.309101, 41.991184, 41.019600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524784, 41.713158, 41.209820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236458, -0.417003, -0.877608,
		0.808296, 0.585660, -0.060498,
		0.539208, -0.695062, 0.475546,
		36.686546, 41.504639, 41.352482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.224106, 29.887142, 34.506687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.035206, 29.777098, 34.841660>,  <31.921865, 29.711071, 35.042645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.035206, 29.777098, 34.841660>,  <32.224106, 29.887142, 34.506687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035206, 29.777098, 34.841660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830180, 0.458148, -0.317649,
		-0.296281, -0.845231, -0.444750,
		-0.472248, -0.275109, 0.837434,
		31.893532, 29.694565, 35.092892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598013, 29.497711, 34.340076>,  <32.224106, 29.887142, 34.506687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598013, 29.497711, 34.340076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.581301, 29.686157, 34.692509>,  <31.571274, 29.799225, 34.903969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.581301, 29.686157, 34.692509>,  <31.598013, 29.497711, 34.340076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581301, 29.686157, 34.692509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737079, 0.580809, -0.345508,
		-0.674514, -0.663863, 0.322982,
		-0.041779, 0.471113, 0.881083,
		31.568768, 29.827492, 34.956833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903030, 29.350325, 34.601093>,  <31.598013, 29.497711, 34.340076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903030, 29.350325, 34.601093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.034040, 29.679466, 34.786839>,  <31.112646, 29.876951, 34.898285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.034040, 29.679466, 34.786839>,  <30.903030, 29.350325, 34.601093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034040, 29.679466, 34.786839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845823, 0.474378, -0.244025,
		-0.421082, -0.312846, 0.851362,
		0.327525, 0.822856, 0.464365,
		31.132298, 29.926323, 34.926147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309685, 29.613949, 34.914982>,  <30.903030, 29.350325, 34.601093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309685, 29.613949, 34.914982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572983, 29.914328, 34.893845>,  <30.730961, 30.094555, 34.881161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572983, 29.914328, 34.893845>,  <30.309685, 29.613949, 34.914982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572983, 29.914328, 34.893845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752804, 0.656684, -0.045295,
		0.000686, 0.069596, 0.997575,
		0.658244, 0.750948, -0.052843,
		30.770456, 30.139612, 34.877991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074966, 30.175545, 35.420811>,  <30.309685, 29.613949, 34.914982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074966, 30.175545, 35.420811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329144, 30.352907, 35.167953>,  <30.481649, 30.459326, 35.016239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329144, 30.352907, 35.167953>,  <30.074966, 30.175545, 35.420811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329144, 30.352907, 35.167953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598199, 0.800352, -0.039923,
		0.488235, 0.403516, 0.773823,
		0.635440, 0.443408, -0.632143,
		30.519775, 30.485929, 34.978310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251556, 30.823830, 35.649967>,  <30.074966, 30.175545, 35.420811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251556, 30.823830, 35.649967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.319672, 30.840063, 35.256145>,  <30.360540, 30.849804, 35.019852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.319672, 30.840063, 35.256145>,  <30.251556, 30.823830, 35.649967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319672, 30.840063, 35.256145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559854, 0.826210, -0.062774,
		0.810904, 0.561899, 0.163413,
		0.170286, 0.040584, -0.984559,
		30.370758, 30.852238, 34.960777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559114, 31.497738, 35.403282>,  <30.251556, 30.823830, 35.649967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559114, 31.497738, 35.403282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371933, 31.330965, 35.091595>,  <30.259624, 31.230902, 34.904583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371933, 31.330965, 35.091595>,  <30.559114, 31.497738, 35.403282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371933, 31.330965, 35.091595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566137, 0.818471, -0.097944,
		0.678606, 0.395313, -0.619048,
		-0.467955, -0.416932, -0.779222,
		30.231546, 31.205885, 34.857830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364206, 32.035957, 34.978935>,  <30.559114, 31.497738, 35.403282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364206, 32.035957, 34.978935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.139938, 31.741209, 34.827847>,  <30.005377, 31.564362, 34.737194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.139938, 31.741209, 34.827847>,  <30.364206, 32.035957, 34.978935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139938, 31.741209, 34.827847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607713, 0.676025, -0.416744,
		0.562434, -0.004110, -0.826832,
		-0.560672, -0.736867, -0.377722,
		29.971737, 31.520149, 34.714531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173677, 32.284512, 34.361774>,  <30.364206, 32.035957, 34.978935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173677, 32.284512, 34.361774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896641, 32.020660, 34.478531>,  <29.730419, 31.862349, 34.548584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896641, 32.020660, 34.478531>,  <30.173677, 32.284512, 34.361774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896641, 32.020660, 34.478531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700439, 0.711693, -0.053658,
		-0.172343, -0.241616, -0.954945,
		-0.692592, -0.659633, 0.291892,
		29.688864, 31.822771, 34.566097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645798, 32.523434, 34.048817>,  <30.173677, 32.284512, 34.361774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645798, 32.523434, 34.048817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.480513, 32.267536, 34.308041>,  <29.381342, 32.113998, 34.463573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.480513, 32.267536, 34.308041>,  <29.645798, 32.523434, 34.048817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480513, 32.267536, 34.308041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830262, 0.556997, 0.020466,
		-0.374061, -0.529604, -0.761313,
		-0.413211, -0.639745, 0.648062,
		29.356550, 32.075611, 34.502460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924437, 32.341469, 33.831738>,  <29.645798, 32.523434, 34.048817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924437, 32.341469, 33.831738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930685, 32.264046, 34.224125>,  <28.934435, 32.217590, 34.459557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930685, 32.264046, 34.224125>,  <28.924437, 32.341469, 33.831738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930685, 32.264046, 34.224125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871385, 0.478499, 0.108292,
		-0.490352, -0.856489, -0.161189,
		0.015622, -0.193559, 0.980964,
		28.935371, 32.205978, 34.518414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272675, 32.098999, 34.031754>,  <28.924437, 32.341469, 33.831738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272675, 32.098999, 34.031754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422338, 32.227158, 34.379856>,  <28.512136, 32.304054, 34.588718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422338, 32.227158, 34.379856>,  <28.272675, 32.098999, 34.031754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422338, 32.227158, 34.379856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855570, 0.481305, 0.190646,
		-0.357778, -0.815899, 0.454206,
		0.374160, 0.320396, 0.870259,
		28.534586, 32.323277, 34.640934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769203, 31.974340, 34.513348>,  <28.272675, 32.098999, 34.031754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769203, 31.974340, 34.513348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994881, 32.253036, 34.690544>,  <28.130287, 32.420254, 34.796864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994881, 32.253036, 34.690544>,  <27.769203, 31.974340, 34.513348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994881, 32.253036, 34.690544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816687, 0.549757, 0.175469,
		-0.121282, -0.460784, 0.879186,
		0.564192, 0.696738, 0.442992,
		28.164139, 32.462059, 34.823441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390165, 32.201279, 35.047741>,  <27.769203, 31.974340, 34.513348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390165, 32.201279, 35.047741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650545, 32.504929, 35.047718>,  <27.806774, 32.687119, 35.047707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650545, 32.504929, 35.047718>,  <27.390165, 32.201279, 35.047741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650545, 32.504929, 35.047718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721301, 0.618543, 0.311656,
		0.236618, -0.202833, 0.950195,
		0.650951, 0.759120, -0.000054,
		27.845831, 32.732666, 35.047703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302670, 32.515179, 35.671848>,  <27.390165, 32.201279, 35.047741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302670, 32.515179, 35.671848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456501, 32.776417, 35.410904>,  <27.548800, 32.933159, 35.254337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456501, 32.776417, 35.410904>,  <27.302670, 32.515179, 35.671848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456501, 32.776417, 35.410904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493312, 0.742736, 0.452755,
		0.780220, 0.147696, 0.607818,
		0.384578, 0.653093, -0.652357,
		27.571875, 32.972343, 35.215199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563553, 33.027161, 36.085346>,  <27.302670, 32.515179, 35.671848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563553, 33.027161, 36.085346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541361, 33.205643, 35.728062>,  <27.528046, 33.312733, 35.513691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541361, 33.205643, 35.728062>,  <27.563553, 33.027161, 36.085346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541361, 33.205643, 35.728062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660363, 0.654587, 0.368017,
		0.748895, 0.610261, 0.258339,
		-0.055481, 0.446204, -0.893210,
		27.524717, 33.339504, 35.460098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598633, 33.816818, 36.135906>,  <27.563553, 33.027161, 36.085346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598633, 33.816818, 36.135906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.410633, 33.752995, 35.788654>,  <27.297834, 33.714703, 35.580303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.410633, 33.752995, 35.788654>,  <27.598633, 33.816818, 36.135906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410633, 33.752995, 35.788654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692612, 0.676355, 0.250665,
		0.547166, 0.719087, -0.428396,
		-0.469998, -0.159557, -0.868127,
		27.269634, 33.705128, 35.528217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342661, 34.536724, 35.807632>,  <27.598633, 33.816818, 36.135906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342661, 34.536724, 35.807632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109213, 34.280823, 35.607594>,  <26.969145, 34.127281, 35.487568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109213, 34.280823, 35.607594>,  <27.342661, 34.536724, 35.807632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109213, 34.280823, 35.607594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780480, 0.611938, 0.127997,
		0.224143, 0.465019, -0.856456,
		-0.583619, -0.639757, -0.500100,
		26.934128, 34.088898, 35.457565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984615, 34.923172, 35.368862>,  <27.342661, 34.536724, 35.807632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984615, 34.923172, 35.368862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781748, 34.578632, 35.380608>,  <26.660028, 34.371910, 35.387653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781748, 34.578632, 35.380608>,  <26.984615, 34.923172, 35.368862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781748, 34.578632, 35.380608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856601, 0.507541, 0.092933,
		-0.094951, 0.021979, -0.995239,
		-0.507167, -0.861347, 0.029364,
		26.629599, 34.320229, 35.389416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586504, 35.309425, 35.404060>,  <26.984615, 34.923172, 35.368862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586504, 35.309425, 35.404060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.734613, 35.669773, 35.494690>,  <27.823479, 35.885983, 35.549068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.734613, 35.669773, 35.494690>,  <27.586504, 35.309425, 35.404060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734613, 35.669773, 35.494690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919470, -0.320726, -0.227399,
		-0.132186, 0.292532, -0.947075,
		0.370273, 0.900866, 0.226578,
		27.845695, 35.940033, 35.562664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036320, 35.478432, 34.843803>,  <27.586504, 35.309425, 35.404060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036320, 35.478432, 34.843803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174538, 35.682281, 35.158985>,  <28.257469, 35.804592, 35.348095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174538, 35.682281, 35.158985>,  <28.036320, 35.478432, 34.843803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174538, 35.682281, 35.158985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900832, -0.415362, -0.126401,
		0.262871, 0.753496, -0.602614,
		0.345545, 0.509626, 0.787959,
		28.278202, 35.835171, 35.395374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645842, 35.863449, 34.631580>,  <28.036320, 35.478432, 34.843803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645842, 35.863449, 34.631580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644510, 35.788506, 35.024494>,  <28.643711, 35.743542, 35.260242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644510, 35.788506, 35.024494>,  <28.645842, 35.863449, 34.631580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644510, 35.788506, 35.024494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905765, -0.416831, -0.076437,
		0.423768, 0.889466, 0.171087,
		-0.003327, -0.187356, 0.982286,
		28.643513, 35.732300, 35.319180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244986, 36.198101, 34.882664>,  <28.645842, 35.863449, 34.631580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244986, 36.198101, 34.882664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154026, 35.937584, 35.172245>,  <29.099451, 35.781273, 35.345993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154026, 35.937584, 35.172245>,  <29.244986, 36.198101, 34.882664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154026, 35.937584, 35.172245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945325, -0.326110, 0.003553,
		0.233774, 0.685178, 0.689842,
		-0.227399, -0.651294, 0.723952,
		29.085806, 35.742195, 35.389431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750309, 36.282814, 35.356762>,  <29.244986, 36.198101, 34.882664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750309, 36.282814, 35.356762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588493, 35.921009, 35.410736>,  <29.491404, 35.703926, 35.443119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588493, 35.921009, 35.410736>,  <29.750309, 36.282814, 35.356762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588493, 35.921009, 35.410736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914142, -0.395697, 0.088133,
		-0.026324, 0.159002, 0.986927,
		-0.404537, -0.904512, 0.134934,
		29.467133, 35.649654, 35.451218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187811, 35.900745, 35.830170>,  <29.750309, 36.282814, 35.356762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187811, 35.900745, 35.830170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.973660, 35.592133, 35.692703>,  <29.845169, 35.406963, 35.610222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.973660, 35.592133, 35.692703>,  <30.187811, 35.900745, 35.830170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973660, 35.592133, 35.692703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818832, -0.573891, 0.012769,
		-0.207080, -0.274571, 0.939004,
		-0.535381, -0.771530, -0.343669,
		29.813046, 35.360672, 35.589603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289801, 35.265236, 36.245495>,  <30.187811, 35.900745, 35.830170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289801, 35.265236, 36.245495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160311, 35.093224, 35.908382>,  <30.082617, 34.990017, 35.706116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160311, 35.093224, 35.908382>,  <30.289801, 35.265236, 36.245495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160311, 35.093224, 35.908382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690635, -0.716232, 0.100174,
		-0.646703, -0.549623, 0.528857,
		-0.323727, -0.430030, -0.842778,
		30.063192, 34.964214, 35.655548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231747, 34.542126, 36.476410>,  <30.289801, 35.265236, 36.245495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231747, 34.542126, 36.476410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.251871, 34.573601, 36.078159>,  <30.263945, 34.592487, 35.839207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.251871, 34.573601, 36.078159>,  <30.231747, 34.542126, 36.476410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251871, 34.573601, 36.078159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791969, -0.610505, -0.008233,
		-0.608484, -0.788093, -0.093035,
		0.050310, 0.078691, -0.995629,
		30.266964, 34.597206, 35.779472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246334, 33.871922, 36.215168>,  <30.231747, 34.542126, 36.476410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246334, 33.871922, 36.215168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.400898, 34.097282, 35.923069>,  <30.493637, 34.232498, 35.747810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.400898, 34.097282, 35.923069>,  <30.246334, 33.871922, 36.215168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400898, 34.097282, 35.923069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798374, -0.600761, -0.041044,
		-0.461828, -0.567150, -0.681950,
		0.386411, 0.563406, -0.730247,
		30.516821, 34.266304, 35.703995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311787, 33.519840, 35.666309>,  <30.246334, 33.871922, 36.215168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311787, 33.519840, 35.666309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.569227, 33.816860, 35.592117>,  <30.723692, 33.995071, 35.547604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.569227, 33.816860, 35.592117>,  <30.311787, 33.519840, 35.666309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569227, 33.816860, 35.592117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698556, -0.668934, -0.254062,
		-0.312726, 0.033948, -0.949236,
		0.643601, 0.742546, -0.185479,
		30.762308, 34.039623, 35.536472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708323, 33.331482, 35.027142>,  <30.311787, 33.519840, 35.666309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708323, 33.331482, 35.027142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928778, 33.612438, 35.207317>,  <31.061050, 33.781013, 35.315422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928778, 33.612438, 35.207317>,  <30.708323, 33.331482, 35.027142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928778, 33.612438, 35.207317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798775, -0.600201, -0.041428,
		0.241256, 0.382632, -0.891845,
		0.551138, 0.702389, 0.450439,
		31.094120, 33.823154, 35.342449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264338, 33.412685, 34.540096>,  <30.708323, 33.331482, 35.027142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264338, 33.412685, 34.540096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379255, 33.562843, 34.892582>,  <31.448206, 33.652939, 35.104073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379255, 33.562843, 34.892582>,  <31.264338, 33.412685, 34.540096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379255, 33.562843, 34.892582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750404, -0.659971, 0.036500,
		0.595278, 0.650781, -0.471305,
		0.287294, 0.375397, 0.881215,
		31.465445, 33.675461, 35.156948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992821, 33.532646, 34.414600>,  <31.264338, 33.412685, 34.540096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992821, 33.532646, 34.414600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.914440, 33.505352, 34.805897>,  <31.867413, 33.488976, 35.040672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.914440, 33.505352, 34.805897>,  <31.992821, 33.532646, 34.414600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914440, 33.505352, 34.805897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839811, -0.526716, 0.131484,
		0.506281, 0.847298, 0.160515,
		-0.195952, -0.068234, 0.978237,
		31.855654, 33.484882, 35.099369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717453, 33.609062, 34.730873>,  <31.992821, 33.532646, 34.414600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717453, 33.609062, 34.730873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.493355, 33.441971, 35.016987>,  <32.358898, 33.341717, 35.188656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.493355, 33.441971, 35.016987>,  <32.717453, 33.609062, 34.730873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493355, 33.441971, 35.016987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780502, -0.555394, 0.286974,
		0.277390, 0.719057, 0.637191,
		-0.560243, -0.417725, 0.715286,
		32.325283, 33.316654, 35.231571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040764, 33.529236, 35.321674>,  <32.717453, 33.609062, 34.730873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040764, 33.529236, 35.321674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.762745, 33.258427, 35.418465>,  <32.595936, 33.095940, 35.476540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.762745, 33.258427, 35.418465>,  <33.040764, 33.529236, 35.321674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762745, 33.258427, 35.418465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705259, -0.576613, 0.412466,
		-0.139722, 0.457338, 0.878248,
		-0.695045, -0.677023, 0.241976,
		32.554230, 33.055321, 35.491058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201302, 33.254566, 36.068928>,  <33.040764, 33.529236, 35.321674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201302, 33.254566, 36.068928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.966236, 32.982571, 35.893536>,  <32.825199, 32.819374, 35.788300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.966236, 32.982571, 35.893536>,  <33.201302, 33.254566, 36.068928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966236, 32.982571, 35.893536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610511, -0.728298, 0.311220,
		-0.530972, -0.084806, 0.843135,
		-0.587660, -0.679992, -0.438481,
		32.789940, 32.778572, 35.761990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369896, 32.751785, 36.483284>,  <33.201302, 33.254566, 36.068928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369896, 32.751785, 36.483284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.158672, 32.564369, 36.199982>,  <33.031937, 32.451920, 36.030003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.158672, 32.564369, 36.199982>,  <33.369896, 32.751785, 36.483284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158672, 32.564369, 36.199982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476725, -0.853758, 0.209359,
		-0.702768, -0.227086, 0.674203,
		-0.528063, -0.468540, -0.708251,
		33.000252, 32.423805, 35.987507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027515, 32.125755, 36.755283>,  <33.369896, 32.751785, 36.483284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027515, 32.125755, 36.755283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.092491, 32.073635, 36.364052>,  <33.131477, 32.042362, 36.129314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.092491, 32.073635, 36.364052>,  <33.027515, 32.125755, 36.755283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092491, 32.073635, 36.364052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557987, -0.805397, 0.199966,
		-0.813797, -0.578236, -0.058119,
		0.162437, -0.130302, -0.978078,
		33.141224, 32.034546, 36.070629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033325, 31.387932, 36.655472>,  <33.027515, 32.125755, 36.755283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033325, 31.387932, 36.655472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.195225, 31.537586, 36.321716>,  <33.292362, 31.627378, 36.121464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.195225, 31.537586, 36.321716>,  <33.033325, 31.387932, 36.655472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195225, 31.537586, 36.321716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644095, -0.764346, -0.030290,
		-0.649093, -0.525166, -0.550344,
		0.404746, 0.374135, -0.834388,
		33.316647, 31.649826, 36.071400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091846, 30.875633, 36.104038>,  <33.033325, 31.387932, 36.655472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091846, 30.875633, 36.104038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.365089, 31.136944, 35.973438>,  <33.529034, 31.293730, 35.895077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.365089, 31.136944, 35.973438>,  <33.091846, 30.875633, 36.104038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365089, 31.136944, 35.973438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606845, -0.756465, -0.243926,
		-0.406336, -0.031508, -0.913180,
		0.683103, 0.653275, -0.326499,
		33.570019, 31.332926, 35.875488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336136, 30.606455, 35.483829>,  <33.091846, 30.875633, 36.104038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336136, 30.606455, 35.483829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.623348, 30.866253, 35.583897>,  <33.795677, 31.022131, 35.643936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.623348, 30.866253, 35.583897>,  <33.336136, 30.606455, 35.483829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623348, 30.866253, 35.583897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680599, -0.579992, -0.447653,
		-0.145651, 0.491696, -0.858499,
		0.718032, 0.649495, 0.250172,
		33.838757, 31.061102, 35.658947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785538, 30.587772, 34.764801>,  <33.336136, 30.606455, 35.483829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785538, 30.587772, 34.764801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.002560, 30.720644, 35.073421>,  <34.132774, 30.800367, 35.258595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.002560, 30.720644, 35.073421>,  <33.785538, 30.587772, 34.764801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002560, 30.720644, 35.073421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839704, -0.189364, -0.508958,
		-0.022962, 0.924012, -0.381673,
		0.542558, 0.332179, 0.771549,
		34.165329, 30.820297, 35.304886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383991, 31.023031, 34.520428>,  <33.785538, 30.587772, 34.764801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383991, 31.023031, 34.520428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.445568, 30.850344, 34.875938>,  <34.482513, 30.746731, 35.089245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.445568, 30.850344, 34.875938>,  <34.383991, 31.023031, 34.520428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445568, 30.850344, 34.875938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869776, -0.367579, -0.329202,
		0.468818, 0.823713, 0.318914,
		0.153942, -0.431720, 0.888774,
		34.491749, 30.720827, 35.142570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.973660, 41.051556, 46.273262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719921, 40.870338, 46.523815>,  <37.567677, 40.761608, 46.674149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719921, 40.870338, 46.523815>,  <37.973660, 41.051556, 46.273262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719921, 40.870338, 46.523815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334959, 0.569180, 0.750891,
		-0.696712, 0.686137, -0.209305,
		-0.634346, -0.453046, 0.626382,
		37.529617, 40.734425, 46.711731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715973, 41.558533, 46.615654>,  <37.973660, 41.051556, 46.273262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715973, 41.558533, 46.615654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654926, 41.239338, 46.848866>,  <37.618298, 41.047821, 46.988792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654926, 41.239338, 46.848866>,  <37.715973, 41.558533, 46.615654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654926, 41.239338, 46.848866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160893, 0.562013, 0.811330,
		-0.975101, 0.217625, 0.042620,
		-0.152613, -0.797986, 0.583033,
		37.609142, 40.999943, 47.023777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389233, 41.809196, 47.219391>,  <37.715973, 41.558533, 46.615654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389233, 41.809196, 47.219391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486378, 41.439758, 47.338043>,  <37.544662, 41.218094, 47.409237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486378, 41.439758, 47.338043>,  <37.389233, 41.809196, 47.219391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486378, 41.439758, 47.338043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199996, 0.346892, 0.916334,
		-0.949221, -0.163214, 0.268962,
		0.242859, -0.923595, 0.296635,
		37.559235, 41.162682, 47.427032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994289, 41.708145, 47.744854>,  <37.389233, 41.809196, 47.219391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994289, 41.708145, 47.744854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307476, 41.461655, 47.778854>,  <37.495388, 41.313759, 47.799255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307476, 41.461655, 47.778854>,  <36.994289, 41.708145, 47.744854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307476, 41.461655, 47.778854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143623, 0.312033, 0.939153,
		-0.605259, -0.723115, 0.332815,
		0.782965, -0.616230, 0.085005,
		37.542366, 41.276787, 47.804356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921967, 41.420387, 48.451412>,  <36.994289, 41.708145, 47.744854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921967, 41.420387, 48.451412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305962, 41.364540, 48.354317>,  <37.536358, 41.331032, 48.296059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305962, 41.364540, 48.354317>,  <36.921967, 41.420387, 48.451412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305962, 41.364540, 48.354317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266068, 0.184473, 0.946138,
		-0.087320, -0.972870, 0.214241,
		0.959991, -0.139620, -0.242742,
		37.593960, 41.322655, 48.281494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261963, 40.932323, 48.933887>,  <36.921967, 41.420387, 48.451412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261963, 40.932323, 48.933887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561886, 41.139950, 48.769756>,  <37.741840, 41.264526, 48.671280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561886, 41.139950, 48.769756>,  <37.261963, 40.932323, 48.933887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561886, 41.139950, 48.769756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342182, 0.226575, 0.911907,
		0.566308, -0.824158, -0.007728,
		0.749804, 0.519065, -0.410324,
		37.786827, 41.295670, 48.646660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813591, 40.761024, 49.314808>,  <37.261963, 40.932323, 48.933887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813591, 40.761024, 49.314808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941391, 41.099075, 49.143375>,  <38.018070, 41.301907, 49.040516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941391, 41.099075, 49.143375>,  <37.813591, 40.761024, 49.314808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941391, 41.099075, 49.143375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464904, 0.254306, 0.848052,
		0.825701, -0.470205, -0.311650,
		0.319504, 0.845125, -0.428581,
		38.037243, 41.352612, 49.014801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486435, 40.731209, 49.444618>,  <37.813591, 40.761024, 49.314808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486435, 40.731209, 49.444618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400028, 41.111347, 49.355022>,  <38.348186, 41.339432, 49.301266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400028, 41.111347, 49.355022>,  <38.486435, 40.731209, 49.444618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400028, 41.111347, 49.355022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532914, 0.306982, 0.788521,
		0.818133, 0.050962, -0.572767,
		-0.216013, 0.950350, -0.223994,
		38.335224, 41.396454, 49.287823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076267, 41.030678, 49.744606>,  <38.486435, 40.731209, 49.444618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076267, 41.030678, 49.744606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801926, 41.310299, 49.663689>,  <38.637321, 41.478073, 49.615139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801926, 41.310299, 49.663689>,  <39.076267, 41.030678, 49.744606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801926, 41.310299, 49.663689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366892, 0.572216, 0.733457,
		0.628486, 0.428824, -0.648935,
		-0.685854, 0.699056, -0.202297,
		38.596169, 41.520016, 49.603001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465137, 41.723690, 49.727997>,  <39.076267, 41.030678, 49.744606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465137, 41.723690, 49.727997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077106, 41.788368, 49.800457>,  <38.844288, 41.827175, 49.843933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077106, 41.788368, 49.800457>,  <39.465137, 41.723690, 49.727997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077106, 41.788368, 49.800457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238922, 0.502599, 0.830849,
		0.043299, 0.849264, -0.526190,
		-0.970073, 0.161693, 0.181146,
		38.786083, 41.836876, 49.854801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361153, 42.396896, 49.875484>,  <39.465137, 41.723690, 49.727997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361153, 42.396896, 49.875484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.036148, 42.248356, 50.055225>,  <38.841145, 42.159233, 50.163071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.036148, 42.248356, 50.055225>,  <39.361153, 42.396896, 49.875484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036148, 42.248356, 50.055225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199121, 0.547674, 0.812652,
		-0.547879, 0.749767, -0.371050,
		-0.812515, -0.371351, 0.449353,
		38.792393, 42.136951, 50.190033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799938, 42.909924, 50.089409>,  <39.361153, 42.396896, 49.875484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799938, 42.909924, 50.089409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.838039, 42.584969, 50.319527>,  <38.860901, 42.389996, 50.457596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.838039, 42.584969, 50.319527>,  <38.799938, 42.909924, 50.089409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838039, 42.584969, 50.319527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268459, 0.577471, 0.771010,
		-0.958570, 0.081003, 0.273096,
		0.095251, -0.812383, 0.575292,
		38.866615, 42.341255, 50.492115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404133, 42.974941, 50.673759>,  <38.799938, 42.909924, 50.089409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404133, 42.974941, 50.673759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441593, 43.027416, 51.068531>,  <38.464069, 43.058903, 51.305393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441593, 43.027416, 51.068531>,  <38.404133, 42.974941, 50.673759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441593, 43.027416, 51.068531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544169, 0.836855, -0.059604,
		-0.833732, -0.531473, 0.149756,
		0.093646, 0.131186, 0.986925,
		38.469688, 43.066772, 51.364609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747402, 42.934944, 51.046345>,  <38.404133, 42.974941, 50.673759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747402, 42.934944, 51.046345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040295, 43.171951, 51.180656>,  <38.216030, 43.314156, 51.261246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040295, 43.171951, 51.180656>,  <37.747402, 42.934944, 51.046345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040295, 43.171951, 51.180656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637403, 0.769889, 0.031426,
		-0.239895, -0.237041, 0.941415,
		0.732235, 0.592522, 0.335784,
		38.259964, 43.349709, 51.281391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570000, 43.343151, 51.637112>,  <37.747402, 42.934944, 51.046345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570000, 43.343151, 51.637112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.249733, 43.579266, 51.678097>,  <37.057575, 43.720936, 51.702690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.249733, 43.579266, 51.678097>,  <37.570000, 43.343151, 51.637112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249733, 43.579266, 51.678097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176776, -0.069352, -0.981805,
		-0.572439, -0.804210, 0.159876,
		-0.800664, 0.590286, 0.102465,
		37.009533, 43.756351, 51.708836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975651, 42.934578, 51.415306>,  <37.570000, 43.343151, 51.637112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975651, 42.934578, 51.415306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889854, 43.322128, 51.365868>,  <36.838375, 43.554657, 51.336205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889854, 43.322128, 51.365868>,  <36.975651, 42.934578, 51.415306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889854, 43.322128, 51.365868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403627, -0.203158, -0.892083,
		-0.889426, -0.141457, 0.434639,
		-0.214492, 0.968874, -0.123598,
		36.825508, 43.612789, 51.328789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320602, 42.933865, 51.104980>,  <36.975651, 42.934578, 51.415306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320602, 42.933865, 51.104980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419910, 43.315990, 51.040810>,  <36.479496, 43.545265, 51.002308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419910, 43.315990, 51.040810>,  <36.320602, 42.933865, 51.104980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419910, 43.315990, 51.040810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379383, -0.056489, -0.923514,
		-0.891309, 0.290142, 0.348405,
		0.248269, 0.955315, -0.160424,
		36.494392, 43.602585, 50.992683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758022, 43.195290, 50.805016>,  <36.320602, 42.933865, 51.104980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758022, 43.195290, 50.805016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063457, 43.435192, 50.709320>,  <36.246719, 43.579132, 50.651901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063457, 43.435192, 50.709320>,  <35.758022, 43.195290, 50.805016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063457, 43.435192, 50.709320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279986, -0.026332, -0.959643,
		-0.581848, 0.799753, 0.147815,
		0.763585, 0.599752, -0.239241,
		36.292534, 43.615116, 50.637547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401363, 43.736908, 50.497524>,  <35.758022, 43.195290, 50.805016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401363, 43.736908, 50.497524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785099, 43.746315, 50.385021>,  <36.015343, 43.751961, 50.317520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785099, 43.746315, 50.385021>,  <35.401363, 43.736908, 50.497524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785099, 43.746315, 50.385021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282156, 0.055225, -0.957778,
		-0.006993, 0.998197, 0.059616,
		0.959343, 0.023519, -0.281261,
		36.072903, 43.753372, 50.300644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428356, 44.207485, 49.967228>,  <35.401363, 43.736908, 50.497524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428356, 44.207485, 49.967228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758751, 43.990299, 49.906662>,  <35.956989, 43.859985, 49.870323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758751, 43.990299, 49.906662>,  <35.428356, 44.207485, 49.967228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758751, 43.990299, 49.906662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248993, -0.110452, -0.962187,
		0.505711, 0.832459, -0.226427,
		0.825990, -0.542967, -0.151419,
		36.006546, 43.827408, 49.861237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777973, 44.525196, 49.339256>,  <35.428356, 44.207485, 49.967228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777973, 44.525196, 49.339256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918446, 44.152802, 49.379105>,  <36.002731, 43.929363, 49.403015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918446, 44.152802, 49.379105>,  <35.777973, 44.525196, 49.339256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918446, 44.152802, 49.379105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160994, -0.164860, -0.973089,
		0.922361, 0.325696, -0.207780,
		0.351186, -0.930991, 0.099626,
		36.023800, 43.873505, 49.408993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167946, 44.494793, 48.771099>,  <35.777973, 44.525196, 49.339256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167946, 44.494793, 48.771099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125278, 44.116722, 48.894554>,  <36.099678, 43.889877, 48.968628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125278, 44.116722, 48.894554>,  <36.167946, 44.494793, 48.771099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125278, 44.116722, 48.894554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025840, -0.307668, -0.951143,
		0.993959, -0.109433, 0.008395,
		-0.106669, -0.945180, 0.308637,
		36.093277, 43.833168, 48.987144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698864, 44.081959, 48.435577>,  <36.167946, 44.494793, 48.771099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698864, 44.081959, 48.435577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419933, 43.824036, 48.560776>,  <36.252575, 43.669281, 48.635895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419933, 43.824036, 48.560776>,  <36.698864, 44.081959, 48.435577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419933, 43.824036, 48.560776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020125, -0.454122, -0.890712,
		0.716472, -0.614817, 0.329647,
		-0.697325, -0.644805, 0.312993,
		36.210735, 43.630592, 48.654675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866520, 43.333485, 48.255192>,  <36.698864, 44.081959, 48.435577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866520, 43.333485, 48.255192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467152, 43.317451, 48.270947>,  <36.227531, 43.307831, 48.280399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467152, 43.317451, 48.270947>,  <36.866520, 43.333485, 48.255192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467152, 43.317451, 48.270947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007618, -0.597915, -0.801523,
		0.055675, -0.800557, 0.596665,
		-0.998420, -0.040080, 0.039388,
		36.167625, 43.305428, 48.282764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643761, 42.682541, 48.229836>,  <36.866520, 43.333485, 48.255192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643761, 42.682541, 48.229836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.321072, 42.877678, 48.096443>,  <36.127460, 42.994759, 48.016407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.321072, 42.877678, 48.096443>,  <36.643761, 42.682541, 48.229836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321072, 42.877678, 48.096443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133053, -0.699794, -0.701844,
		-0.575759, -0.521822, 0.629448,
		-0.806721, 0.487842, -0.333483,
		36.079056, 43.024033, 47.996399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123577, 42.213604, 48.071335>,  <36.643761, 42.682541, 48.229836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123577, 42.213604, 48.071335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048450, 42.540905, 47.854008>,  <36.003376, 42.737286, 47.723610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048450, 42.540905, 47.854008>,  <36.123577, 42.213604, 48.071335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048450, 42.540905, 47.854008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176313, -0.572262, -0.800893,
		-0.966250, -0.054626, 0.251748,
		-0.187816, 0.818249, -0.543317,
		35.992107, 42.786381, 47.691013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699829, 42.030903, 47.540447>,  <36.123577, 42.213604, 48.071335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699829, 42.030903, 47.540447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764526, 42.396778, 47.392288>,  <35.803345, 42.616302, 47.303394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764526, 42.396778, 47.392288>,  <35.699829, 42.030903, 47.540447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764526, 42.396778, 47.392288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039307, -0.381010, -0.923735,
		-0.986050, 0.134845, -0.097578,
		0.161739, 0.914685, -0.370395,
		35.813049, 42.671185, 47.281170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233761, 42.094978, 46.889973>,  <35.699829, 42.030903, 47.540447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233761, 42.094978, 46.889973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535160, 42.357666, 46.877556>,  <35.716000, 42.515278, 46.870106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535160, 42.357666, 46.877556>,  <35.233761, 42.094978, 46.889973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535160, 42.357666, 46.877556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216530, -0.292469, -0.931438,
		-0.620770, 0.695115, -0.362573,
		0.753498, 0.656717, -0.031043,
		35.761208, 42.554680, 46.868244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677917, 42.562744, 46.931847>,  <35.233761, 42.094978, 46.889973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677917, 42.562744, 46.931847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292347, 42.481495, 46.863049>,  <34.061005, 42.432743, 46.821770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292347, 42.481495, 46.863049>,  <34.677917, 42.562744, 46.931847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292347, 42.481495, 46.863049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193628, 0.091772, 0.976773,
		-0.182623, 0.974842, -0.127793,
		-0.963928, -0.203126, -0.171997,
		34.003170, 42.420559, 46.811451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310261, 43.062870, 47.255497>,  <34.677917, 42.562744, 46.931847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310261, 43.062870, 47.255497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045246, 42.764793, 47.225208>,  <33.886238, 42.585949, 47.207035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045246, 42.764793, 47.225208>,  <34.310261, 43.062870, 47.255497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045246, 42.764793, 47.225208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161066, 0.043009, 0.986006,
		-0.731505, 0.665464, -0.148521,
		-0.662539, -0.745190, -0.075722,
		33.846485, 42.541237, 47.202492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714104, 43.232773, 47.726967>,  <34.310261, 43.062870, 47.255497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714104, 43.232773, 47.726967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640228, 42.843750, 47.670372>,  <33.595901, 42.610336, 47.636414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640228, 42.843750, 47.670372>,  <33.714104, 43.232773, 47.726967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640228, 42.843750, 47.670372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206733, -0.102300, 0.973035,
		-0.960808, 0.208959, -0.182166,
		-0.184689, -0.972559, -0.141489,
		33.584820, 42.551983, 47.627926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010601, 42.991241, 48.122086>,  <33.714104, 43.232773, 47.726967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010601, 42.991241, 48.122086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252449, 42.679695, 48.055393>,  <33.397556, 42.492767, 48.015377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252449, 42.679695, 48.055393>,  <33.010601, 42.991241, 48.122086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252449, 42.679695, 48.055393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054696, -0.168228, 0.984229,
		-0.794636, -0.604202, -0.059112,
		0.604618, -0.778870, -0.166727,
		33.433834, 42.446033, 48.005375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709991, 42.535267, 48.536949>,  <33.010601, 42.991241, 48.122086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709991, 42.535267, 48.536949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081303, 42.399471, 48.476234>,  <33.304089, 42.317993, 48.439808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081303, 42.399471, 48.476234>,  <32.709991, 42.535267, 48.536949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081303, 42.399471, 48.476234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097763, -0.171011, 0.980407,
		-0.358795, -0.924933, -0.125557,
		0.928282, -0.339490, -0.151782,
		33.359787, 42.297623, 48.430698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879192, 41.790531, 48.972805>,  <32.709991, 42.535267, 48.536949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879192, 41.790531, 48.972805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219521, 41.980331, 48.882511>,  <33.423717, 42.094212, 48.828335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219521, 41.980331, 48.882511>,  <32.879192, 41.790531, 48.972805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219521, 41.980331, 48.882511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249337, 0.013570, 0.968322,
		0.462529, -0.880152, -0.106764,
		0.850822, 0.474497, -0.225731,
		33.474766, 42.122681, 48.814793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267372, 41.499386, 49.433472>,  <32.879192, 41.790531, 48.972805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267372, 41.499386, 49.433472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455070, 41.835922, 49.326176>,  <33.567692, 42.037846, 49.261799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455070, 41.835922, 49.326176>,  <33.267372, 41.499386, 49.433472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455070, 41.835922, 49.326176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266995, 0.154369, 0.951254,
		0.841736, -0.517992, -0.152196,
		0.469248, 0.841341, -0.268240,
		33.595844, 42.088326, 49.245705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719475, 40.782097, 49.468662>,  <33.267372, 41.499386, 49.433472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719475, 40.782097, 49.468662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515835, 40.531303, 49.704529>,  <33.393650, 40.380829, 49.846050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515835, 40.531303, 49.704529>,  <33.719475, 40.782097, 49.468662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515835, 40.531303, 49.704529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442815, -0.396675, -0.804092,
		0.738057, -0.670479, -0.075688,
		-0.509104, -0.626982, 0.589667,
		33.363102, 40.343208, 49.881428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750103, 40.126797, 49.150352>,  <33.719475, 40.782097, 49.468662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750103, 40.126797, 49.150352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429527, 40.079765, 49.384911>,  <33.237183, 40.051548, 49.525646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429527, 40.079765, 49.384911>,  <33.750103, 40.126797, 49.150352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429527, 40.079765, 49.384911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446713, -0.534253, -0.717650,
		0.397663, -0.837108, 0.375651,
		-0.801444, -0.117575, 0.586400,
		33.189095, 40.044495, 49.560829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687149, 39.443317, 49.243408>,  <33.750103, 40.126797, 49.150352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687149, 39.443317, 49.243408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339989, 39.637341, 49.286243>,  <33.131691, 39.753754, 49.311943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339989, 39.637341, 49.286243>,  <33.687149, 39.443317, 49.243408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339989, 39.637341, 49.286243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432587, -0.632082, -0.642916,
		-0.244161, -0.604313, 0.758413,
		-0.867902, 0.485055, 0.107088,
		33.079617, 39.782856, 49.318371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175842, 38.953075, 49.201450>,  <33.687149, 39.443317, 49.243408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175842, 38.953075, 49.201450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.984333, 39.298183, 49.136467>,  <32.869427, 39.505249, 49.097477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.984333, 39.298183, 49.136467>,  <33.175842, 38.953075, 49.201450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984333, 39.298183, 49.136467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511102, -0.424371, -0.747451,
		-0.713826, -0.274828, 0.644145,
		-0.478777, 0.862774, -0.162462,
		32.840698, 39.557014, 49.087727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614094, 38.643211, 49.010090>,  <33.175842, 38.953075, 49.201450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614094, 38.643211, 49.010090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558018, 39.026688, 48.911083>,  <32.524372, 39.256775, 48.851681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558018, 39.026688, 48.911083>,  <32.614094, 38.643211, 49.010090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558018, 39.026688, 48.911083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543794, -0.283453, -0.789900,
		-0.827427, 0.023864, 0.561066,
		-0.140186, 0.958689, -0.247514,
		32.515961, 39.314293, 48.836830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929768, 38.797283, 48.739151>,  <32.614094, 38.643211, 49.010090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929768, 38.797283, 48.739151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106030, 39.127483, 48.598087>,  <32.211788, 39.325603, 48.513447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106030, 39.127483, 48.598087>,  <31.929768, 38.797283, 48.739151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106030, 39.127483, 48.598087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466589, -0.124999, -0.875597,
		-0.766889, 0.550384, 0.330089,
		0.440653, 0.825502, -0.352664,
		32.238224, 39.375134, 48.492287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458929, 39.249485, 48.326992>,  <31.929768, 38.797283, 48.739151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458929, 39.249485, 48.326992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830330, 39.336418, 48.206562>,  <32.053169, 39.388580, 48.134304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830330, 39.336418, 48.206562>,  <31.458929, 39.249485, 48.326992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830330, 39.336418, 48.206562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300530, -0.036378, -0.953079,
		-0.218089, 0.975419, 0.031538,
		0.928504, 0.217334, -0.301076,
		32.108879, 39.401619, 48.116238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.047417, 39.681961, 52.035015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.369976, 39.845078, 51.863705>,  <37.563511, 39.942947, 51.760918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.369976, 39.845078, 51.863705>,  <37.047417, 39.681961, 52.035015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369976, 39.845078, 51.863705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210102, -0.479397, -0.852078,
		-0.552785, 0.777099, -0.300908,
		0.806403, 0.407794, -0.428273,
		37.611897, 39.967415, 51.735222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706158, 39.866295, 51.470200>,  <37.047417, 39.681961, 52.035015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706158, 39.866295, 51.470200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101673, 39.880043, 51.412064>,  <37.338982, 39.888290, 51.377182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101673, 39.880043, 51.412064>,  <36.706158, 39.866295, 51.470200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101673, 39.880043, 51.412064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116358, -0.432747, -0.893975,
		-0.093619, 0.900860, -0.423895,
		0.988785, 0.034369, -0.145335,
		37.398308, 39.890354, 51.368462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916168, 40.213547, 50.973392>,  <36.706158, 39.866295, 51.470200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916168, 40.213547, 50.973392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.219883, 39.953251, 50.971405>,  <37.402111, 39.797073, 50.970211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.219883, 39.953251, 50.971405>,  <36.916168, 40.213547, 50.973392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219883, 39.953251, 50.971405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251796, -0.286730, -0.924329,
		0.600074, 0.703079, -0.381564,
		0.759283, -0.650742, -0.004973,
		37.447666, 39.758030, 50.969913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928761, 40.213085, 50.321995>,  <36.916168, 40.213547, 50.973392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928761, 40.213085, 50.321995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.176853, 39.918064, 50.428822>,  <37.325706, 39.741051, 50.492920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.176853, 39.918064, 50.428822>,  <36.928761, 40.213085, 50.321995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176853, 39.918064, 50.428822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146782, -0.443580, -0.884133,
		0.770566, 0.509163, -0.383381,
		0.620228, -0.737556, 0.267071,
		37.362923, 39.696796, 50.508942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467163, 40.081390, 49.783001>,  <36.928761, 40.213085, 50.321995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467163, 40.081390, 49.783001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.492176, 39.731403, 49.975052>,  <37.507183, 39.521412, 50.090282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.492176, 39.731403, 49.975052>,  <37.467163, 40.081390, 49.783001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492176, 39.731403, 49.975052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026872, -0.479417, -0.877176,
		0.997681, 0.067758, -0.006469,
		0.062537, -0.874967, 0.480126,
		37.510937, 39.468914, 50.119091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053265, 39.710548, 49.468254>,  <37.467163, 40.081390, 49.783001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053265, 39.710548, 49.468254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.798851, 39.446468, 49.628056>,  <37.646202, 39.288021, 49.723934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.798851, 39.446468, 49.628056>,  <38.053265, 39.710548, 49.468254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798851, 39.446468, 49.628056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148619, -0.612822, -0.776119,
		0.757217, -0.434263, 0.487892,
		-0.636031, -0.660201, 0.399499,
		37.608040, 39.248409, 49.747906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390789, 39.061222, 49.327549>,  <38.053265, 39.710548, 49.468254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390789, 39.061222, 49.327549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017395, 38.947205, 49.414589>,  <37.793358, 38.878796, 49.466812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017395, 38.947205, 49.414589>,  <38.390789, 39.061222, 49.327549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017395, 38.947205, 49.414589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013084, -0.633462, -0.773663,
		0.358369, -0.719358, 0.595059,
		-0.933488, -0.285043, 0.217601,
		37.737347, 38.861691, 49.479870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345142, 38.370590, 49.170315>,  <38.390789, 39.061222, 49.327549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345142, 38.370590, 49.170315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.955227, 38.458225, 49.187206>,  <37.721275, 38.510807, 49.197342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.955227, 38.458225, 49.187206>,  <38.345142, 38.370590, 49.170315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955227, 38.458225, 49.187206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179013, -0.654976, -0.734140,
		-0.133178, -0.723193, 0.677684,
		-0.974791, 0.219085, 0.042232,
		37.662788, 38.523952, 49.199875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016743, 37.725090, 49.155106>,  <38.345142, 38.370590, 49.170315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016743, 37.725090, 49.155106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.747986, 37.995094, 49.033176>,  <37.586731, 38.157097, 48.960018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.747986, 37.995094, 49.033176>,  <38.016743, 37.725090, 49.155106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747986, 37.995094, 49.033176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229222, -0.580870, -0.781056,
		-0.704286, -0.454913, 0.545009,
		-0.671892, 0.675015, -0.304823,
		37.546417, 38.197598, 48.941730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462128, 37.319527, 49.030685>,  <38.016743, 37.725090, 49.155106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462128, 37.319527, 49.030685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407440, 37.668530, 48.843052>,  <37.374626, 37.877930, 48.730473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407440, 37.668530, 48.843052>,  <37.462128, 37.319527, 49.030685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407440, 37.668530, 48.843052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193773, -0.487934, -0.851100,
		-0.971473, -0.025468, 0.235779,
		-0.136721, 0.872508, -0.469080,
		37.366425, 37.930283, 48.702328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883896, 37.129833, 48.586288>,  <37.462128, 37.319527, 49.030685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883896, 37.129833, 48.586288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.030533, 37.472126, 48.440231>,  <37.118515, 37.677502, 48.352596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.030533, 37.472126, 48.440231>,  <36.883896, 37.129833, 48.586288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030533, 37.472126, 48.440231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170288, -0.324119, -0.930564,
		-0.914665, 0.403316, 0.026903,
		0.366591, 0.855736, -0.365140,
		37.140511, 37.728848, 48.330688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428204, 37.394482, 48.225697>,  <36.883896, 37.129833, 48.586288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428204, 37.394482, 48.225697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746292, 37.568798, 48.057076>,  <36.937145, 37.673389, 47.955902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746292, 37.568798, 48.057076>,  <36.428204, 37.394482, 48.225697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746292, 37.568798, 48.057076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222195, -0.437435, -0.871367,
		-0.564135, 0.786598, -0.251028,
		0.795224, 0.435792, -0.421550,
		36.984859, 37.699535, 47.930611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929050, 37.890381, 48.065868>,  <36.428204, 37.394482, 48.225697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929050, 37.890381, 48.065868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.530464, 37.912491, 48.091171>,  <35.291313, 37.925755, 48.106354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.530464, 37.912491, 48.091171>,  <35.929050, 37.890381, 48.065868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530464, 37.912491, 48.091171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062660, -0.012430, 0.997958,
		0.055946, 0.998394, 0.008923,
		-0.996466, 0.055273, 0.063255,
		35.231525, 37.929073, 48.110149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794109, 38.372875, 48.501110>,  <35.929050, 37.890381, 48.065868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794109, 38.372875, 48.501110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.446075, 38.175735, 48.498215>,  <35.237255, 38.057449, 48.496479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.446075, 38.175735, 48.498215>,  <35.794109, 38.372875, 48.501110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446075, 38.175735, 48.498215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023203, -0.055620, 0.998182,
		-0.492361, 0.868333, 0.059829,
		-0.870082, -0.492854, -0.007237,
		35.185051, 38.027878, 48.496044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293552, 38.870308, 48.786491>,  <35.794109, 38.372875, 48.501110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293552, 38.870308, 48.786491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.136616, 38.502876, 48.805576>,  <35.042454, 38.282417, 48.817028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.136616, 38.502876, 48.805576>,  <35.293552, 38.870308, 48.786491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136616, 38.502876, 48.805576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149798, 0.114992, 0.982007,
		-0.907540, 0.378135, -0.182718,
		-0.392342, -0.918581, 0.047716,
		35.018913, 38.227303, 48.819893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664207, 38.910648, 49.214481>,  <35.293552, 38.870308, 48.786491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664207, 38.910648, 49.214481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764404, 38.523579, 49.226227>,  <34.824524, 38.291336, 49.233276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764404, 38.523579, 49.226227>,  <34.664207, 38.910648, 49.214481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764404, 38.523579, 49.226227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187371, -0.018699, 0.982111,
		-0.949813, -0.251515, -0.185998,
		0.250494, -0.967673, 0.029366,
		34.839554, 38.233276, 49.235035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171947, 38.587135, 49.545998>,  <34.664207, 38.910648, 49.214481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171947, 38.587135, 49.545998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.494015, 38.353706, 49.588226>,  <34.687256, 38.213650, 49.613564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.494015, 38.353706, 49.588226>,  <34.171947, 38.587135, 49.545998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494015, 38.353706, 49.588226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211890, -0.116812, 0.970287,
		-0.553902, -0.803614, -0.217707,
		0.805167, -0.583574, 0.105575,
		34.735565, 38.178635, 49.619900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933670, 38.111782, 50.007965>,  <34.171947, 38.587135, 49.545998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933670, 38.111782, 50.007965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.332672, 38.091450, 50.027561>,  <34.572075, 38.079250, 50.039318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.332672, 38.091450, 50.027561>,  <33.933670, 38.111782, 50.007965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332672, 38.091450, 50.027561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055723, -0.140848, 0.988462,
		-0.043345, -0.988726, -0.143329,
		0.997505, -0.050831, 0.048989,
		34.631924, 38.076199, 50.042259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012352, 37.737717, 50.673141>,  <33.933670, 38.111782, 50.007965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012352, 37.737717, 50.673141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.365292, 37.909046, 50.595165>,  <34.577057, 38.011845, 50.548378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.365292, 37.909046, 50.595165>,  <34.012352, 37.737717, 50.673141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365292, 37.909046, 50.595165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241580, -0.056764, 0.968719,
		0.403857, -0.901842, -0.153560,
		0.882349, 0.428320, -0.194942,
		34.629997, 38.037540, 50.536682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487793, 37.314217, 50.977390>,  <34.012352, 37.737717, 50.673141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487793, 37.314217, 50.977390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659382, 37.672871, 50.933521>,  <34.762337, 37.888062, 50.907200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659382, 37.672871, 50.933521>,  <34.487793, 37.314217, 50.977390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659382, 37.672871, 50.933521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214715, 0.016724, 0.976534,
		0.877428, -0.442457, -0.185346,
		0.428974, 0.896634, -0.109676,
		34.788074, 37.941860, 50.900620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020077, 37.185596, 51.381256>,  <34.487793, 37.314217, 50.977390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020077, 37.185596, 51.381256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.049068, 37.582104, 51.337185>,  <35.066463, 37.820007, 51.310741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.049068, 37.582104, 51.337185>,  <35.020077, 37.185596, 51.381256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049068, 37.582104, 51.337185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173397, 0.096267, 0.980136,
		0.982181, -0.090147, -0.164905,
		0.072481, 0.991265, -0.110183,
		35.070812, 37.879482, 51.304131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607437, 37.411373, 51.809792>,  <35.020077, 37.185596, 51.381256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607437, 37.411373, 51.809792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.441349, 37.773006, 51.769363>,  <35.341694, 37.989986, 51.745106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.441349, 37.773006, 51.769363>,  <35.607437, 37.411373, 51.809792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441349, 37.773006, 51.769363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260698, 0.224692, 0.938909,
		0.871565, 0.363509, -0.328992,
		-0.415223, 0.904088, -0.101067,
		35.316784, 38.044231, 51.739044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072571, 37.899803, 52.053452>,  <35.607437, 37.411373, 51.809792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072571, 37.899803, 52.053452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717262, 38.081799, 52.078598>,  <35.504078, 38.190994, 52.093685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717262, 38.081799, 52.078598>,  <36.072571, 37.899803, 52.053452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717262, 38.081799, 52.078598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235325, 0.333273, 0.912990,
		0.394447, 0.825782, -0.403108,
		-0.888276, 0.454988, 0.062868,
		35.450779, 38.218296, 52.097458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167030, 38.639027, 52.200253>,  <36.072571, 37.899803, 52.053452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167030, 38.639027, 52.200253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794220, 38.560654, 52.322193>,  <35.570534, 38.513630, 52.395355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794220, 38.560654, 52.322193>,  <36.167030, 38.639027, 52.200253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794220, 38.560654, 52.322193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135797, 0.591097, 0.795088,
		-0.335977, 0.782442, -0.524312,
		-0.932029, -0.195931, 0.304848,
		35.514610, 38.501873, 52.413647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792522, 39.308727, 52.438862>,  <36.167030, 38.639027, 52.200253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792522, 39.308727, 52.438862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.596939, 39.007717, 52.615330>,  <35.479591, 38.827110, 52.721210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.596939, 39.007717, 52.615330>,  <35.792522, 39.308727, 52.438862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596939, 39.007717, 52.615330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041876, 0.525414, 0.849816,
		-0.871303, 0.397047, -0.288416,
		-0.488955, -0.752525, 0.441168,
		35.450253, 38.781960, 52.747681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273399, 39.564991, 52.740425>,  <35.792522, 39.308727, 52.438862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273399, 39.564991, 52.740425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.321369, 39.216873, 52.931507>,  <35.350151, 39.008003, 53.046154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.321369, 39.216873, 52.931507>,  <35.273399, 39.564991, 52.740425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321369, 39.216873, 52.931507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091920, 0.469375, 0.878201,
		-0.988518, -0.149228, -0.023709,
		0.119924, -0.870297, 0.477703,
		35.357346, 38.955784, 53.074818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682240, 39.321396, 52.576393>,  <35.273399, 39.564991, 52.740425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682240, 39.321396, 52.576393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624119, 39.716835, 52.560596>,  <34.589249, 39.954098, 52.551117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624119, 39.716835, 52.560596>,  <34.682240, 39.321396, 52.576393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624119, 39.716835, 52.560596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508591, -0.108868, -0.854098,
		-0.848660, -0.104012, 0.518611,
		-0.145297, 0.988599, -0.039492,
		34.580528, 40.013416, 52.548748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037689, 39.449280, 52.432484>,  <34.682240, 39.321396, 52.576393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037689, 39.449280, 52.432484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.181984, 39.813412, 52.351318>,  <34.268559, 40.031891, 52.302620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.181984, 39.813412, 52.351318>,  <34.037689, 39.449280, 52.432484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181984, 39.813412, 52.351318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581819, 0.049603, -0.811804,
		-0.728943, 0.410903, 0.547540,
		0.360732, 0.910329, -0.202914,
		34.290203, 40.086510, 52.290443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513565, 39.714504, 52.178783>,  <34.037689, 39.449280, 52.432484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513565, 39.714504, 52.178783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784771, 39.975143, 52.042717>,  <33.947495, 40.131527, 51.961079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784771, 39.975143, 52.042717>,  <33.513565, 39.714504, 52.178783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784771, 39.975143, 52.042717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502899, 0.073702, -0.861197,
		-0.536081, 0.754978, 0.377658,
		0.678019, 0.651595, -0.340167,
		33.988178, 40.170624, 51.940666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144077, 40.206184, 51.823456>,  <33.513565, 39.714504, 52.178783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144077, 40.206184, 51.823456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.502293, 40.251015, 51.651203>,  <33.717224, 40.277912, 51.547852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.502293, 40.251015, 51.651203>,  <33.144077, 40.206184, 51.823456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502293, 40.251015, 51.651203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441240, 0.098470, -0.891970,
		-0.057562, 0.988809, 0.137635,
		0.895541, 0.112074, -0.430634,
		33.770954, 40.284637, 51.522015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138401, 40.902267, 51.460632>,  <33.144077, 40.206184, 51.823456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138401, 40.902267, 51.460632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397007, 40.635910, 51.311714>,  <33.552170, 40.476097, 51.222363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397007, 40.635910, 51.311714>,  <33.138401, 40.902267, 51.460632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397007, 40.635910, 51.311714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221973, 0.302701, -0.926876,
		0.729893, 0.681881, 0.047891,
		0.646516, -0.665890, -0.372299,
		33.590961, 40.436142, 51.200024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308979, 41.289684, 50.804024>,  <33.138401, 40.902267, 51.460632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308979, 41.289684, 50.804024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429516, 40.909019, 50.780266>,  <33.501839, 40.680618, 50.766010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429516, 40.909019, 50.780266>,  <33.308979, 41.289684, 50.804024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429516, 40.909019, 50.780266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343064, -0.050089, -0.937976,
		0.889664, 0.303023, -0.341576,
		0.301338, -0.951666, -0.059394,
		33.519917, 40.623520, 50.762447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502979, 41.188557, 50.110249>,  <33.308979, 41.289684, 50.804024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502979, 41.188557, 50.110249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.462208, 40.807365, 50.224400>,  <33.437744, 40.578651, 50.292892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.462208, 40.807365, 50.224400>,  <33.502979, 41.188557, 50.110249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462208, 40.807365, 50.224400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320281, -0.240164, -0.916374,
		0.941823, -0.184804, -0.280742,
		-0.101925, -0.952979, 0.285382,
		33.431629, 40.521473, 50.310013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051926, 41.420258, 49.705753>,  <33.502979, 41.188557, 50.110249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051926, 41.420258, 49.705753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.979706, 41.805622, 49.626522>,  <33.936375, 42.036842, 49.578983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.979706, 41.805622, 49.626522>,  <34.051926, 41.420258, 49.705753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979706, 41.805622, 49.626522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271665, 0.242402, 0.931364,
		0.945304, 0.114348, -0.305492,
		-0.180552, 0.963413, -0.198079,
		33.925541, 42.094646, 49.567097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724926, 41.842373, 49.876320>,  <34.051926, 41.420258, 49.705753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724926, 41.842373, 49.876320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.416649, 42.097137, 49.884129>,  <34.231682, 42.249996, 49.888813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.416649, 42.097137, 49.884129>,  <34.724926, 41.842373, 49.876320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416649, 42.097137, 49.884129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174970, 0.182062, 0.967594,
		0.612713, 0.749135, -0.251754,
		-0.770694, 0.636907, 0.019524,
		34.185440, 42.288208, 49.889984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074764, 42.362465, 50.244743>,  <34.724926, 41.842373, 49.876320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074764, 42.362465, 50.244743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.707104, 42.515862, 50.280746>,  <34.486507, 42.607899, 50.302349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.707104, 42.515862, 50.280746>,  <35.074764, 42.362465, 50.244743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707104, 42.515862, 50.280746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216967, 0.302166, 0.928236,
		0.328775, 0.872714, -0.360940,
		-0.919147, 0.383493, 0.090006,
		34.431358, 42.630909, 50.307747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066250, 43.082287, 50.432777>,  <35.074764, 42.362465, 50.244743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066250, 43.082287, 50.432777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.708549, 42.948547, 50.551792>,  <34.493931, 42.868305, 50.623203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.708549, 42.948547, 50.551792>,  <35.066250, 43.082287, 50.432777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708549, 42.948547, 50.551792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212196, 0.268611, 0.939586,
		-0.394068, 0.903361, -0.169258,
		-0.894250, -0.334345, 0.297541,
		34.440273, 42.848244, 50.641056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856110, 43.507038, 50.920254>,  <35.066250, 43.082287, 50.432777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856110, 43.507038, 50.920254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.617290, 43.192223, 50.982361>,  <34.473999, 43.003334, 51.019627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.617290, 43.192223, 50.982361>,  <34.856110, 43.507038, 50.920254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617290, 43.192223, 50.982361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083641, 0.131426, 0.987791,
		-0.797833, 0.602746, -0.012640,
		-0.597048, -0.787035, 0.155270,
		34.438175, 42.956112, 51.028942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293198, 43.686703, 51.403137>,  <34.856110, 43.507038, 50.920254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293198, 43.686703, 51.403137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308327, 43.287720, 51.427319>,  <34.317402, 43.048332, 51.441830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308327, 43.287720, 51.427319>,  <34.293198, 43.686703, 51.403137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308327, 43.287720, 51.427319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058100, 0.062591, 0.996347,
		-0.997594, -0.034169, 0.060319,
		0.037820, -0.997454, 0.060455,
		34.319672, 42.988483, 51.445454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744205, 43.490200, 51.871235>,  <34.293198, 43.686703, 51.403137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744205, 43.490200, 51.871235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.988525, 43.173645, 51.861145>,  <34.135117, 42.983711, 51.855091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.988525, 43.173645, 51.861145>,  <33.744205, 43.490200, 51.871235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988525, 43.173645, 51.861145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029944, -0.008751, 0.999513,
		-0.791222, -0.611254, 0.018352,
		0.610796, -0.791386, -0.025227,
		34.171764, 42.936230, 51.853577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666206, 43.364822, 52.516579>,  <33.744205, 43.490200, 51.871235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666206, 43.364822, 52.516579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.981670, 43.137501, 52.422741>,  <34.170948, 43.001106, 52.366436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.981670, 43.137501, 52.422741>,  <33.666206, 43.364822, 52.516579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981670, 43.137501, 52.422741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274176, -0.016439, 0.961539,
		-0.550306, -0.822652, 0.142851,
		0.788664, -0.568307, -0.234598,
		34.218269, 42.967010, 52.352360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710407, 42.777981, 52.977440>,  <33.666206, 43.364822, 52.516579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710407, 42.777981, 52.977440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.083508, 42.815159, 52.838104>,  <34.307369, 42.837467, 52.754501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.083508, 42.815159, 52.838104>,  <33.710407, 42.777981, 52.977440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083508, 42.815159, 52.838104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356019, -0.085173, 0.930589,
		0.056824, -0.992022, -0.112535,
		0.932750, 0.092945, -0.348339,
		34.363331, 42.843040, 52.733601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.012722, 37.507271, 38.096313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374722, 37.392689, 38.222122>,  <34.591923, 37.323940, 38.297607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374722, 37.392689, 38.222122>,  <34.012722, 37.507271, 38.096313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374722, 37.392689, 38.222122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104143, 0.567651, 0.816655,
		-0.412469, -0.771828, 0.483892,
		0.904999, -0.286451, 0.314519,
		34.646221, 37.306755, 38.316479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906380, 37.275948, 38.785889>,  <34.012722, 37.507271, 38.096313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906380, 37.275948, 38.785889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279041, 37.402695, 38.714771>,  <34.502640, 37.478741, 38.672100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279041, 37.402695, 38.714771>,  <33.906380, 37.275948, 38.785889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279041, 37.402695, 38.714771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016099, 0.524856, 0.851038,
		0.362981, -0.790014, 0.494088,
		0.931657, 0.316866, -0.177794,
		34.558540, 37.497753, 38.661434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370758, 37.144390, 39.431122>,  <33.906380, 37.275948, 38.785889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370758, 37.144390, 39.431122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538052, 37.431293, 39.208191>,  <34.638428, 37.603436, 39.074432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538052, 37.431293, 39.208191>,  <34.370758, 37.144390, 39.431122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538052, 37.431293, 39.208191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073066, 0.585014, 0.807725,
		0.905395, -0.378541, 0.192266,
		0.418235, 0.717263, -0.557327,
		34.663521, 37.646473, 39.040993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807957, 37.491631, 39.939133>,  <34.370758, 37.144390, 39.431122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807957, 37.491631, 39.939133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748856, 37.757458, 39.646145>,  <34.713394, 37.916954, 39.470352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748856, 37.757458, 39.646145>,  <34.807957, 37.491631, 39.939133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748856, 37.757458, 39.646145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228167, 0.697720, 0.679063,
		0.962345, 0.267462, 0.048540,
		-0.147756, 0.664568, -0.732473,
		34.704529, 37.956829, 39.426403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165390, 38.114922, 40.069008>,  <34.807957, 37.491631, 39.939133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165390, 38.114922, 40.069008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898472, 38.256645, 39.806957>,  <34.738323, 38.341679, 39.649727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898472, 38.256645, 39.806957>,  <35.165390, 38.114922, 40.069008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898472, 38.256645, 39.806957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231735, 0.737175, 0.634722,
		0.707827, 0.575361, -0.409806,
		-0.667293, 0.354307, -0.655124,
		34.698284, 38.362938, 39.610420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235817, 38.758976, 40.161812>,  <35.165390, 38.114922, 40.069008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235817, 38.758976, 40.161812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906822, 38.788177, 39.936180>,  <34.709427, 38.805698, 39.800800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906822, 38.788177, 39.936180>,  <35.235817, 38.758976, 40.161812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906822, 38.788177, 39.936180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282545, 0.808269, 0.516595,
		0.493642, 0.584270, -0.644163,
		-0.822487, 0.073008, -0.564078,
		34.660076, 38.810081, 39.766956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189316, 39.513889, 39.855312>,  <35.235817, 38.758976, 40.161812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189316, 39.513889, 39.855312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817432, 39.366707, 39.848999>,  <34.594303, 39.278397, 39.845211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817432, 39.366707, 39.848999>,  <35.189316, 39.513889, 39.855312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817432, 39.366707, 39.848999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324283, 0.797539, 0.508697,
		-0.174587, 0.478060, -0.860801,
		-0.929710, -0.367955, -0.015787,
		34.538521, 39.256321, 39.844261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723904, 40.087543, 39.686935>,  <35.189316, 39.513889, 39.855312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723904, 40.087543, 39.686935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505016, 39.805450, 39.867245>,  <34.373684, 39.636196, 39.975430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505016, 39.805450, 39.867245>,  <34.723904, 40.087543, 39.686935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505016, 39.805450, 39.867245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163602, 0.618301, 0.768725,
		-0.820844, 0.346914, -0.453725,
		-0.547220, -0.705234, 0.450773,
		34.340851, 39.593880, 40.002476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087738, 40.362881, 39.787674>,  <34.723904, 40.087543, 39.686935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087738, 40.362881, 39.787674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075180, 40.069107, 40.058857>,  <34.067646, 39.892845, 40.221565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075180, 40.069107, 40.058857>,  <34.087738, 40.362881, 39.787674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075180, 40.069107, 40.058857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475395, 0.607628, 0.636230,
		-0.879212, -0.302326, -0.368219,
		-0.031391, -0.734430, 0.677958,
		34.065762, 39.848778, 40.262245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432774, 40.412750, 40.097233>,  <34.087738, 40.362881, 39.787674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432774, 40.412750, 40.097233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624783, 40.194057, 40.371651>,  <33.739990, 40.062843, 40.536301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624783, 40.194057, 40.371651>,  <33.432774, 40.412750, 40.097233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624783, 40.194057, 40.371651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291103, 0.638452, 0.712487,
		-0.827547, -0.541723, 0.147319,
		0.480027, -0.546731, 0.686046,
		33.768791, 40.030037, 40.577465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937164, 40.266499, 40.680450>,  <33.432774, 40.412750, 40.097233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937164, 40.266499, 40.680450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277962, 40.203075, 40.880039>,  <33.482441, 40.165020, 40.999790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277962, 40.203075, 40.880039>,  <32.937164, 40.266499, 40.680450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277962, 40.203075, 40.880039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326761, 0.583597, 0.743399,
		-0.409072, -0.796413, 0.445407,
		0.851991, -0.158563, 0.498969,
		33.533558, 40.155506, 41.029732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623589, 40.028797, 41.247726>,  <32.937164, 40.266499, 40.680450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623589, 40.028797, 41.247726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008171, 40.125103, 41.300831>,  <33.238922, 40.182888, 41.332695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008171, 40.125103, 41.300831>,  <32.623589, 40.028797, 41.247726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008171, 40.125103, 41.300831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238476, 0.489974, 0.838484,
		0.136828, -0.837829, 0.528507,
		0.961461, 0.240764, 0.132760,
		33.296608, 40.197330, 41.340660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830402, 39.353340, 41.437805>,  <32.623589, 40.028797, 41.247726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830402, 39.353340, 41.437805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633324, 39.092491, 41.668278>,  <32.515076, 38.935982, 41.806561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633324, 39.092491, 41.668278>,  <32.830402, 39.353340, 41.437805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633324, 39.092491, 41.668278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126071, -0.601648, -0.788750,
		0.861019, -0.461256, 0.214218,
		-0.492699, -0.652122, 0.576181,
		32.485516, 38.896854, 41.841133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118282, 38.724937, 41.321968>,  <32.830402, 39.353340, 41.437805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118282, 38.724937, 41.321968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735607, 38.692440, 41.433788>,  <32.506001, 38.672939, 41.500881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735607, 38.692440, 41.433788>,  <33.118282, 38.724937, 41.321968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735607, 38.692440, 41.433788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195092, -0.533794, -0.822802,
		0.216071, -0.841702, 0.494824,
		-0.956688, -0.081247, 0.279547,
		32.448601, 38.668064, 41.517651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974602, 38.035732, 41.349514>,  <33.118282, 38.724937, 41.321968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974602, 38.035732, 41.349514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616539, 38.212944, 41.329861>,  <32.401699, 38.319271, 41.318069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616539, 38.212944, 41.329861>,  <32.974602, 38.035732, 41.349514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616539, 38.212944, 41.329861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275346, -0.636281, -0.720646,
		-0.350529, -0.631566, 0.691559,
		-0.895162, 0.443025, -0.049136,
		32.347992, 38.345852, 41.315121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501205, 37.603859, 41.020992>,  <32.974602, 38.035732, 41.349514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501205, 37.603859, 41.020992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234058, 37.900440, 41.046917>,  <32.073772, 38.078388, 41.062473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234058, 37.900440, 41.046917>,  <32.501205, 37.603859, 41.020992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234058, 37.900440, 41.046917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475435, -0.357997, -0.803616,
		-0.572643, -0.567521, 0.591608,
		-0.667863, 0.741456, 0.064815,
		32.033699, 38.122875, 41.066360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772558, 37.344223, 41.076408>,  <32.501205, 37.603859, 41.020992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772558, 37.344223, 41.076408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747587, 37.712234, 40.921673>,  <31.732605, 37.933041, 40.828831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747587, 37.712234, 40.921673>,  <31.772558, 37.344223, 41.076408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747587, 37.712234, 40.921673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575994, -0.349745, -0.738857,
		-0.815067, 0.176694, 0.551766,
		-0.062426, 0.920031, -0.386840,
		31.728859, 37.988243, 40.805622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072393, 37.585251, 40.882618>,  <31.772558, 37.344223, 41.076408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072393, 37.585251, 40.882618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297924, 37.817989, 40.648163>,  <31.433243, 37.957634, 40.507488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297924, 37.817989, 40.648163>,  <31.072393, 37.585251, 40.882618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297924, 37.817989, 40.648163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423554, -0.405557, -0.810016,
		-0.709016, 0.704968, 0.017779,
		0.563825, 0.581845, -0.586139,
		31.467072, 37.992542, 40.472321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583979, 37.858727, 40.325378>,  <31.072393, 37.585251, 40.882618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583979, 37.858727, 40.325378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956503, 37.887356, 40.182529>,  <31.180017, 37.904533, 40.096821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956503, 37.887356, 40.182529>,  <30.583979, 37.858727, 40.325378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956503, 37.887356, 40.182529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277422, -0.495924, -0.822859,
		-0.236004, 0.865411, -0.442003,
		0.931310, 0.071577, -0.357124,
		31.235895, 37.908829, 40.075394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518396, 37.958569, 39.629089>,  <30.583979, 37.858727, 40.325378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518396, 37.958569, 39.629089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911413, 37.888573, 39.603828>,  <31.147223, 37.846573, 39.588673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911413, 37.888573, 39.603828>,  <30.518396, 37.958569, 39.629089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911413, 37.888573, 39.603828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140564, -0.475909, -0.868189,
		0.121872, 0.861909, -0.492199,
		0.982542, -0.174993, -0.063153,
		31.206177, 37.836075, 39.584881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797331, 38.135025, 39.051693>,  <30.518396, 37.958569, 39.629089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797331, 38.135025, 39.051693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046467, 37.851059, 39.183197>,  <31.195950, 37.680679, 39.262100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046467, 37.851059, 39.183197>,  <30.797331, 38.135025, 39.051693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046467, 37.851059, 39.183197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235792, -0.571022, -0.786344,
		0.745969, 0.412249, -0.523050,
		0.622842, -0.709919, 0.328760,
		31.233320, 37.638084, 39.281826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191561, 37.910721, 38.542912>,  <30.797331, 38.135025, 39.051693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191561, 37.910721, 38.542912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220251, 37.596825, 38.789173>,  <31.237465, 37.408485, 38.936932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220251, 37.596825, 38.789173>,  <31.191561, 37.910721, 38.542912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220251, 37.596825, 38.789173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426507, -0.582098, -0.692282,
		0.901636, -0.212927, -0.376450,
		0.071725, -0.784745, 0.615655,
		31.241768, 37.361401, 38.973869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486774, 37.398727, 38.146854>,  <31.191561, 37.910721, 38.542912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486774, 37.398727, 38.146854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303131, 37.208080, 38.446735>,  <31.192945, 37.093693, 38.626663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303131, 37.208080, 38.446735>,  <31.486774, 37.398727, 38.146854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303131, 37.208080, 38.446735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362211, -0.670144, -0.647851,
		0.811187, -0.568983, 0.135032,
		-0.459107, -0.476618, 0.749704,
		31.165400, 37.065094, 38.671646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711805, 36.739201, 38.098434>,  <31.486774, 37.398727, 38.146854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711805, 36.739201, 38.098434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362934, 36.737946, 38.294106>,  <31.153612, 36.737194, 38.411507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362934, 36.737946, 38.294106>,  <31.711805, 36.739201, 38.098434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362934, 36.737946, 38.294106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353737, -0.686680, -0.635092,
		0.337900, -0.726954, 0.597798,
		-0.872178, -0.003134, 0.489179,
		31.101280, 36.737007, 38.440861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564955, 36.100315, 38.208408>,  <31.711805, 36.739201, 38.098434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564955, 36.100315, 38.208408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220512, 36.303684, 38.208157>,  <31.013847, 36.425705, 38.208004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220512, 36.303684, 38.208157>,  <31.564955, 36.100315, 38.208408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220512, 36.303684, 38.208157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410502, -0.695988, -0.589142,
		-0.299971, -0.507056, 0.808029,
		-0.861107, 0.508424, -0.000629,
		30.962181, 36.456211, 38.207970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103117, 35.602505, 38.217148>,  <31.564955, 36.100315, 38.208408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103117, 35.602505, 38.217148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897318, 35.902321, 38.050541>,  <30.773838, 36.082211, 37.950577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897318, 35.902321, 38.050541>,  <31.103117, 35.602505, 38.217148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897318, 35.902321, 38.050541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481704, -0.654487, -0.582759,
		-0.709405, -0.099189, 0.697786,
		-0.514495, 0.749539, -0.416517,
		30.742968, 36.127182, 37.925587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654488, 35.623108, 38.729820>,  <31.103117, 35.602505, 38.217148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654488, 35.623108, 38.729820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906435, 35.863552, 38.533073>,  <32.057602, 36.007820, 38.415024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906435, 35.863552, 38.533073>,  <31.654488, 35.623108, 38.729820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906435, 35.863552, 38.533073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775296, -0.524683, 0.351602,
		-0.046722, -0.602805, -0.796520,
		0.629868, 0.601111, -0.491866,
		32.095394, 36.043884, 38.385513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981007, 35.294685, 38.188267>,  <31.654488, 35.623108, 38.729820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981007, 35.294685, 38.188267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312828, 35.077564, 38.135792>,  <32.511921, 34.947292, 38.104305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312828, 35.077564, 38.135792>,  <31.981007, 35.294685, 38.188267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312828, 35.077564, 38.135792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084168, -0.110709, 0.990282,
		-0.552051, -0.832532, -0.046152,
		0.829551, -0.542801, -0.131190,
		32.561695, 34.914722, 38.096436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036854, 34.561764, 38.626305>,  <31.981007, 35.294685, 38.188267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036854, 34.561764, 38.626305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397499, 34.702129, 38.525146>,  <32.613884, 34.786350, 38.464451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397499, 34.702129, 38.525146>,  <32.036854, 34.561764, 38.626305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397499, 34.702129, 38.525146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303928, -0.097951, 0.947646,
		0.307775, -0.931269, -0.194968,
		0.901611, 0.350917, -0.252892,
		32.667984, 34.807404, 38.449280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498398, 34.143047, 38.848545>,  <32.036854, 34.561764, 38.626305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498398, 34.143047, 38.848545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681358, 34.498577, 38.837429>,  <32.791134, 34.711895, 38.830761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681358, 34.498577, 38.837429>,  <32.498398, 34.143047, 38.848545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681358, 34.498577, 38.837429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123873, -0.032740, 0.991758,
		0.880590, -0.457075, -0.125077,
		0.457403, 0.888825, -0.027789,
		32.818581, 34.765224, 38.829094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068249, 34.043854, 39.118080>,  <32.498398, 34.143047, 38.848545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068249, 34.043854, 39.118080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023266, 34.436703, 39.178455>,  <32.996277, 34.672413, 39.214680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023266, 34.436703, 39.178455>,  <33.068249, 34.043854, 39.118080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023266, 34.436703, 39.178455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365639, -0.100346, 0.925332,
		0.923938, 0.159248, -0.347820,
		-0.112455, 0.982126, 0.150941,
		32.989529, 34.731342, 39.223736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494698, 34.210949, 39.614254>,  <33.068249, 34.043854, 39.118080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494698, 34.210949, 39.614254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298786, 34.559456, 39.601547>,  <33.181240, 34.768562, 39.593925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298786, 34.559456, 39.601547>,  <33.494698, 34.210949, 39.614254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298786, 34.559456, 39.601547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229395, 0.163928, 0.959430,
		0.841129, 0.462619, -0.280153,
		-0.489775, 0.871270, -0.031762,
		33.151855, 34.820835, 39.592018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964218, 34.714661, 39.818768>,  <33.494698, 34.210949, 39.614254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964218, 34.714661, 39.818768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593555, 34.852856, 39.878029>,  <33.371159, 34.935772, 39.913586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593555, 34.852856, 39.878029>,  <33.964218, 34.714661, 39.818768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593555, 34.852856, 39.878029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186662, 0.080814, 0.979095,
		0.326289, 0.934938, -0.139375,
		-0.926657, 0.345484, 0.148149,
		33.315559, 34.956501, 39.922474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081142, 35.300858, 40.186897>,  <33.964218, 34.714661, 39.818768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081142, 35.300858, 40.186897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698784, 35.208073, 40.258953>,  <33.469368, 35.152401, 40.302189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698784, 35.208073, 40.258953>,  <34.081142, 35.300858, 40.186897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698784, 35.208073, 40.258953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148011, 0.149299, 0.977652,
		-0.253673, 0.961199, -0.108382,
		-0.955899, -0.231962, 0.180141,
		33.412014, 35.138485, 40.312996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855331, 35.789009, 40.572342>,  <34.081142, 35.300858, 40.186897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855331, 35.789009, 40.572342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596176, 35.492626, 40.643028>,  <33.440685, 35.314796, 40.685440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596176, 35.492626, 40.643028>,  <33.855331, 35.789009, 40.572342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596176, 35.492626, 40.643028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027460, 0.209115, 0.977506,
		-0.761243, 0.638164, -0.115136,
		-0.647885, -0.740958, 0.176711,
		33.401810, 35.270340, 40.696041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473560, 36.086617, 41.101139>,  <33.855331, 35.789009, 40.572342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473560, 36.086617, 41.101139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368073, 35.701061, 41.115959>,  <33.304779, 35.469727, 41.124851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368073, 35.701061, 41.115959>,  <33.473560, 36.086617, 41.101139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368073, 35.701061, 41.115959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087132, 0.014453, 0.996092,
		-0.960656, 0.265918, 0.080174,
		-0.263720, -0.963887, 0.037055,
		33.288956, 35.411896, 41.127075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863613, 36.030815, 41.550457>,  <33.473560, 36.086617, 41.101139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863613, 36.030815, 41.550457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063560, 35.684460, 41.542816>,  <33.183529, 35.476646, 41.538231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063560, 35.684460, 41.542816>,  <32.863613, 36.030815, 41.550457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063560, 35.684460, 41.542816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157778, 0.069352, 0.985036,
		-0.851609, -0.495401, 0.171286,
		0.499867, -0.865891, -0.019102,
		33.213520, 35.424694, 41.537086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609451, 35.764076, 42.139332>,  <32.863613, 36.030815, 41.550457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609451, 35.764076, 42.139332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944016, 35.567177, 42.042912>,  <33.144756, 35.449039, 41.985058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944016, 35.567177, 42.042912>,  <32.609451, 35.764076, 42.139332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944016, 35.567177, 42.042912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312177, 0.066357, 0.947704,
		-0.450509, -0.867923, 0.209170,
		0.836414, -0.492247, -0.241051,
		33.194939, 35.419502, 41.970596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568924, 35.303215, 42.570057>,  <32.609451, 35.764076, 42.139332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568924, 35.303215, 42.570057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951626, 35.340759, 42.459927>,  <33.181248, 35.363285, 42.393848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951626, 35.340759, 42.459927>,  <32.568924, 35.303215, 42.570057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951626, 35.340759, 42.459927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232517, 0.321953, 0.917759,
		0.174781, -0.942092, 0.286208,
		0.956759, 0.093859, -0.275323,
		33.238655, 35.368916, 42.377331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859455, 35.190971, 43.181782>,  <32.568924, 35.303215, 42.570057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859455, 35.190971, 43.181782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146042, 35.365112, 42.963737>,  <33.317993, 35.469597, 42.832909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146042, 35.365112, 42.963737>,  <32.859455, 35.190971, 43.181782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146042, 35.365112, 42.963737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365918, 0.430751, 0.824959,
		0.593955, -0.790520, 0.149314,
		0.716464, 0.435352, -0.545112,
		33.360981, 35.495716, 42.800205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510693, 35.165154, 43.520676>,  <32.859455, 35.190971, 43.181782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510693, 35.165154, 43.520676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551422, 35.481091, 43.278759>,  <33.575859, 35.670654, 43.133610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551422, 35.481091, 43.278759>,  <33.510693, 35.165154, 43.520676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551422, 35.481091, 43.278759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418460, 0.517545, 0.746350,
		0.902510, -0.329077, -0.277822,
		0.101821, 0.789845, -0.604795,
		33.581970, 35.718044, 43.097321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103916, 35.496658, 43.818558>,  <33.510693, 35.165154, 43.520676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103916, 35.496658, 43.818558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955006, 35.770390, 43.567764>,  <33.865662, 35.934628, 43.417286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955006, 35.770390, 43.567764>,  <34.103916, 35.496658, 43.818558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955006, 35.770390, 43.567764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427626, 0.726034, 0.538526,
		0.823741, -0.067638, -0.562917,
		-0.372272, 0.684324, -0.626988,
		33.843323, 35.975685, 43.379669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612892, 35.796665, 43.532162>,  <34.103916, 35.496658, 43.818558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612892, 35.796665, 43.532162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294838, 36.039230, 43.534416>,  <34.104008, 36.184769, 43.535770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294838, 36.039230, 43.534416>,  <34.612892, 35.796665, 43.532162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294838, 36.039230, 43.534416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446300, 0.578848, 0.682460,
		0.410588, 0.545161, -0.730902,
		-0.795131, 0.606411, 0.005637,
		34.056297, 36.221153, 43.536106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931793, 36.465683, 43.581329>,  <34.612892, 35.796665, 43.532162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931793, 36.465683, 43.581329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563103, 36.525471, 43.724480>,  <34.341888, 36.561344, 43.810371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563103, 36.525471, 43.724480>,  <34.931793, 36.465683, 43.581329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563103, 36.525471, 43.724480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353380, 0.703879, 0.616179,
		-0.159803, 0.694416, -0.701604,
		-0.921729, 0.149466, 0.357875,
		34.286583, 36.570309, 43.831841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012409, 37.086189, 43.653492>,  <34.931793, 36.465683, 43.581329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012409, 37.086189, 43.653492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705025, 36.980339, 43.886539>,  <34.520596, 36.916828, 44.026367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705025, 36.980339, 43.886539>,  <35.012409, 37.086189, 43.653492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705025, 36.980339, 43.886539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363390, 0.568952, 0.737727,
		-0.526702, 0.778631, -0.341055,
		-0.768461, -0.264626, 0.582615,
		34.474487, 36.900951, 44.061325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877464, 37.691536, 44.029953>,  <35.012409, 37.086189, 43.653492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877464, 37.691536, 44.029953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666862, 37.428402, 44.245377>,  <34.540501, 37.270523, 44.374630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666862, 37.428402, 44.245377>,  <34.877464, 37.691536, 44.029953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666862, 37.428402, 44.245377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217376, 0.508255, 0.833322,
		-0.821914, 0.555817, -0.124600,
		-0.526503, -0.657833, 0.538563,
		34.508911, 37.231052, 44.406944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360973, 38.085655, 44.425949>,  <34.877464, 37.691536, 44.029953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360973, 38.085655, 44.425949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380817, 37.739178, 44.624847>,  <34.392723, 37.531292, 44.744186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380817, 37.739178, 44.624847>,  <34.360973, 38.085655, 44.425949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380817, 37.739178, 44.624847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074883, 0.499680, 0.862967,
		-0.995958, -0.005575, 0.089652,
		0.049608, -0.866192, 0.497243,
		34.395699, 37.479321, 44.774021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903015, 38.101250, 45.017117>,  <34.360973, 38.085655, 44.425949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903015, 38.101250, 45.017117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183147, 37.829498, 45.104736>,  <34.351227, 37.666447, 45.157307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183147, 37.829498, 45.104736>,  <33.903015, 38.101250, 45.017117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183147, 37.829498, 45.104736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099075, 0.211388, 0.972368,
		-0.706909, -0.702682, 0.080732,
		0.700331, -0.679377, 0.219050,
		34.393246, 37.625687, 45.170452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642216, 37.956715, 45.659729>,  <33.903015, 38.101250, 45.017117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642216, 37.956715, 45.659729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005394, 37.789780, 45.675060>,  <34.223301, 37.689617, 45.684261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005394, 37.789780, 45.675060>,  <33.642216, 37.956715, 45.659729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005394, 37.789780, 45.675060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050831, 0.200451, 0.978384,
		-0.416001, -0.886368, 0.203211,
		0.907942, -0.417338, 0.038332,
		34.277779, 37.664577, 45.686562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596066, 37.355824, 46.175274>,  <33.642216, 37.956715, 45.659729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596066, 37.355824, 46.175274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972775, 37.483860, 46.134068>,  <34.198799, 37.560684, 46.109344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972775, 37.483860, 46.134068>,  <33.596066, 37.355824, 46.175274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972775, 37.483860, 46.134068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035933, 0.208800, 0.977298,
		0.334339, -0.924089, 0.185139,
		0.941767, 0.320096, -0.103015,
		34.255306, 37.579887, 46.103165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885803, 37.023594, 46.766151>,  <33.596066, 37.355824, 46.175274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885803, 37.023594, 46.766151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122402, 37.328300, 46.660442>,  <34.264362, 37.511124, 46.597015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122402, 37.328300, 46.660442>,  <33.885803, 37.023594, 46.766151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122402, 37.328300, 46.660442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225373, 0.158499, 0.961293,
		0.774171, -0.628161, -0.077931,
		0.591495, 0.761769, -0.264276,
		34.299850, 37.556831, 46.581161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531853, 36.837696, 47.142513>,  <33.885803, 37.023594, 46.766151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531853, 36.837696, 47.142513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571037, 37.225849, 47.054192>,  <34.594547, 37.458740, 47.001198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571037, 37.225849, 47.054192>,  <34.531853, 36.837696, 47.142513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571037, 37.225849, 47.054192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410673, 0.162682, 0.897152,
		0.906505, -0.178561, -0.382576,
		0.097958, 0.970387, -0.220802,
		34.600426, 37.516964, 46.987949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259224, 36.976517, 47.205803>,  <34.531853, 36.837696, 47.142513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259224, 36.976517, 47.205803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062180, 37.318459, 47.270988>,  <34.943954, 37.523624, 47.310101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062180, 37.318459, 47.270988>,  <35.259224, 36.976517, 47.205803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062180, 37.318459, 47.270988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483241, 0.112961, 0.868169,
		0.723752, 0.506418, -0.468747,
		-0.492607, 0.854857, 0.162966,
		34.914398, 37.574917, 47.319878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685963, 37.412094, 47.601055>,  <35.259224, 36.976517, 47.205803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685963, 37.412094, 47.601055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340977, 37.609241, 47.647068>,  <35.133984, 37.727528, 47.674675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340977, 37.609241, 47.647068>,  <35.685963, 37.412094, 47.601055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340977, 37.609241, 47.647068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246666, 0.210880, 0.945878,
		0.441931, 0.844165, -0.303451,
		-0.862469, 0.492864, 0.115032,
		35.082237, 37.757099, 47.681576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256691, 37.840961, 47.393322>,  <35.685963, 37.412094, 47.601055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256691, 37.840961, 47.393322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636486, 37.716305, 47.408066>,  <36.864361, 37.641510, 47.416912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636486, 37.716305, 47.408066>,  <36.256691, 37.840961, 47.393322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636486, 37.716305, 47.408066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079833, -0.353477, -0.932031,
		0.303486, 0.882007, -0.360500,
		0.949486, -0.311638, 0.036862,
		36.921333, 37.622814, 47.419125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642174, 38.212719, 46.834675>,  <36.256691, 37.840961, 47.393322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642174, 38.212719, 46.834675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857845, 37.884689, 46.911377>,  <36.987247, 37.687874, 46.957397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857845, 37.884689, 46.911377>,  <36.642174, 38.212719, 46.834675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857845, 37.884689, 46.911377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073114, -0.181246, -0.980716,
		0.839012, 0.542801, -0.037765,
		0.539179, -0.820071, 0.191754,
		37.019600, 37.638668, 46.968903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884216, 38.069355, 46.240803>,  <36.642174, 38.212719, 46.834675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884216, 38.069355, 46.240803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994396, 37.734814, 46.430386>,  <37.060505, 37.534088, 46.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994396, 37.734814, 46.430386>,  <36.884216, 38.069355, 46.240803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994396, 37.734814, 46.430386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092443, -0.467700, -0.879040,
		0.956861, 0.285944, -0.051512,
		0.275448, -0.836357, 0.473958,
		37.077030, 37.483906, 46.572575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524250, 37.894924, 46.009686>,  <36.884216, 38.069355, 46.240803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524250, 37.894924, 46.009686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359890, 37.554131, 46.139481>,  <37.261276, 37.349655, 46.217358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359890, 37.554131, 46.139481>,  <37.524250, 37.894924, 46.009686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359890, 37.554131, 46.139481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222650, -0.438921, -0.870503,
		0.884076, -0.285440, 0.370045,
		-0.410897, -0.851981, 0.324487,
		37.236622, 37.298534, 46.236828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990276, 37.335411, 45.794586>,  <37.524250, 37.894924, 46.009686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990276, 37.335411, 45.794586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653553, 37.132557, 45.868530>,  <37.451519, 37.010845, 45.912899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653553, 37.132557, 45.868530>,  <37.990276, 37.335411, 45.794586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653553, 37.132557, 45.868530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142274, -0.538839, -0.830308,
		0.520687, -0.672660, 0.525751,
		-0.841810, -0.507131, 0.184864,
		37.401009, 36.980419, 45.923988>
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
